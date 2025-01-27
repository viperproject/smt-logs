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
(declare-fun Tagclass._module.Bool () T@U)
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.Bool.False| () T@U)
(declare-fun |##_module.Bool.True| () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Suc| () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$Bool () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Bool.False| () T@U)
(declare-fun |#_module.Bool.True| () T@U)
(declare-fun |#_module.Nat.Zero| () T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun Tclass._module.Bool () T@U)
(declare-fun |_module.Bool#Equal| (T@U T@U) Bool)
(declare-fun |_module.Nat#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Bool.False_q (T@U) Bool)
(declare-fun _module.Bool.True_q (T@U) Bool)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Suc_q (T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Nat.Suc| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.len (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.len#canCall| (T@U) Bool)
(declare-fun _module.List._h2 (T@U) T@U)
(declare-fun _module.Nat._h0 (T@U) T@U)
(declare-fun _module.__default.leq (T@U T@U T@U) T@U)
(declare-fun |_module.__default.leq#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.insort (T@U T@U T@U) T@U)
(declare-fun |_module.__default.insort#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Bool| (T@U) Bool)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun _module.__default.sort (T@U T@U) T@U)
(declare-fun |_module.__default.sort#canCall| (T@U) Bool)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun $LZ () T@U)
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
(assert (distinct alloc Tagclass._module.Bool Tagclass._module.Nat Tagclass._module.List |##_module.Bool.False| |##_module.Bool.True| |##_module.Nat.Zero| |##_module.Nat.Suc| |##_module.List.Nil| |##_module.List.Cons| tytagFamily$Bool tytagFamily$Nat tytagFamily$List)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List)  (and ($Is DatatypeTypeType |a#24#0#0| Tclass._module.Nat) ($Is DatatypeTypeType |a#24#1#0| Tclass._module.List)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1245|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List))
)))
(assert (= (DatatypeCtorId |#_module.Bool.False|) |##_module.Bool.False|))
(assert (= (DatatypeCtorId |#_module.Bool.True|) |##_module.Bool.True|))
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert ($Is DatatypeTypeType |#_module.Bool.False| Tclass._module.Bool))
(assert ($Is DatatypeTypeType |#_module.Bool.True| Tclass._module.Bool))
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Bool#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1221|
 :pattern ( (|_module.Bool#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Nat#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( (|_module.Nat#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Bool.False_q d) (= (DatatypeCtorId d) |##_module.Bool.False|))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( (_module.Bool.False_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Bool.True_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Bool.True|))
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( (_module.Bool.True_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Nat.Zero_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Nat.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Nat.Suc_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Nat.Suc|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (_module.Nat.Suc_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.List.Nil_q d@@3) (= (DatatypeCtorId d@@3) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( (_module.List.Nil_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.List.Cons_q d@@4) (= (DatatypeCtorId d@@4) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Cons_q d@@5) (exists ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= d@@5 (|#_module.List.Cons| |a#23#0#0| |a#23#1#0|))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1243|
)))
 :qid |unknown.0:0|
 :skolemid |1244|
 :pattern ( (_module.List.Cons_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Bool.False_q d@@6) (= d@@6 |#_module.Bool.False|))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (_module.Bool.False_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Bool.True_q d@@7) (= d@@7 |#_module.Bool.True|))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (_module.Bool.True_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Nat.Zero_q d@@8) (= d@@8 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1223|
 :pattern ( (_module.Nat.Zero_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.List.Nil_q d@@9) (= d@@9 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1240|
 :pattern ( (_module.List.Nil_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Nat.Suc_q d@@10) (exists ((|a#13#0#0| T@U) ) (! (= d@@10 (|#_module.Nat.Suc| |a#13#0#0|))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (_module.Nat.Suc_q d@@10))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.len#canCall| |xs#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0|)) (let ((|ys#1| (_module.List._h2 |xs#0|)))
(|_module.__default.len#canCall| |ys#1|))) (= (_module.__default.len ($LS $ly) |xs#0|) (ite (_module.List.Nil_q |xs#0|) |#_module.Nat.Zero| (let ((|ys#0| (_module.List._h2 |xs#0|)))
(|#_module.Nat.Suc| (_module.__default.len $ly |ys#0|)))))))
 :qid |Ripplinglegacydfy.139:16|
 :skolemid |681|
 :pattern ( (_module.__default.len ($LS $ly) |xs#0|))
))))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#14#0#0| Tclass._module.Nat))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Nat.Suc_q a@@1) (_module.Nat.Suc_q b@@1)) (= (|_module.Nat#Equal| a@@1 b@@1) (|_module.Nat#Equal| (_module.Nat._h0 a@@1) (_module.Nat._h0 b@@1))))
 :qid |unknown.0:0|
 :skolemid |1237|
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Suc_q a@@1))
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Suc_q b@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|_module.__default.leq#canCall| |x#0| |y#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0| Tclass._module.Nat) ($Is DatatypeTypeType |y#0| Tclass._module.Nat)))) ($Is DatatypeTypeType (_module.__default.leq $ly@@0 |x#0| |y#0|) Tclass._module.Bool))
 :qid |Ripplinglegacydfy.61:16|
 :skolemid |614|
 :pattern ( (_module.__default.leq $ly@@0 |x#0| |y#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0| T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.insort#canCall| |n#0| |xs#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@0| Tclass._module.List)))) ($Is DatatypeTypeType (_module.__default.insort $ly@@1 |n#0| |xs#0@@0|) Tclass._module.List))
 :qid |Ripplinglegacydfy.203:16|
 :skolemid |734|
 :pattern ( (_module.__default.insort $ly@@1 |n#0| |xs#0@@0|))
))))
(assert (forall (($ly@@2 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) ) (! (= (_module.__default.leq ($LS $ly@@2) |x#0@@0| |y#0@@0|) (_module.__default.leq $ly@@2 |x#0@@0| |y#0@@0|))
 :qid |Ripplinglegacydfy.61:16|
 :skolemid |612|
 :pattern ( (_module.__default.leq ($LS $ly@@2) |x#0@@0| |y#0@@0|))
)))
(assert (forall (($ly@@3 T@U) (|n#0@@0| T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.insort ($LS $ly@@3) |n#0@@0| |xs#0@@1|) (_module.__default.insort $ly@@3 |n#0@@0| |xs#0@@1|))
 :qid |Ripplinglegacydfy.203:16|
 :skolemid |732|
 :pattern ( (_module.__default.insort ($LS $ly@@3) |n#0@@0| |xs#0@@1|))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#_module.Bool| d@@11) (or (_module.Bool.False_q d@@11) (_module.Bool.True_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (|$IsA#_module.Bool| d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@12) (or (_module.Nat.Zero_q d@@12) (_module.Nat.Suc_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |1234|
 :pattern ( (|$IsA#_module.Nat| d@@12))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| (Lit DatatypeTypeType |xs#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|y#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@2|)))))
 (and (|_module.__default.sort#canCall| |ys#3|) (|_module.__default.insort#canCall| |y#3| (_module.__default.sort ($LS $ly@@4) |ys#3|)))))) (= (_module.__default.sort ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |#_module.List.Nil| (let ((|ys#2| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|y#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@2|)))))
(Lit DatatypeTypeType (_module.__default.insort ($LS $LZ) |y#2| (Lit DatatypeTypeType (_module.__default.sort ($LS $ly@@4) |ys#2|))))))))))
 :qid |Ripplinglegacydfy.233:16|
 :weight 3
 :skolemid |760|
 :pattern ( (_module.__default.sort ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@2|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.len#canCall| |xs#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| Tclass._module.List))) ($Is DatatypeTypeType (_module.__default.len $ly@@5 |xs#0@@3|) Tclass._module.Nat))
 :qid |Ripplinglegacydfy.139:16|
 :skolemid |679|
 :pattern ( (_module.__default.len $ly@@5 |xs#0@@3|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| |xs#0@@4|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| Tclass._module.List))) ($Is DatatypeTypeType (_module.__default.sort $ly@@6 |xs#0@@4|) Tclass._module.List))
 :qid |Ripplinglegacydfy.233:16|
 :skolemid |757|
 :pattern ( (_module.__default.sort $ly@@6 |xs#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|_module.__default.leq#canCall| (Lit DatatypeTypeType |x#0@@1|) (Lit DatatypeTypeType |y#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@1| Tclass._module.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@1|)))))) (let ((|a#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@1|)))))
 (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |y#0@@1|)))))) (let ((|b#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |y#0@@1|)))))
(|_module.__default.leq#canCall| |a#3| |b#3|))))) (= (_module.__default.leq ($LS $ly@@7) (Lit DatatypeTypeType |x#0@@1|) (Lit DatatypeTypeType |y#0@@1|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@1|)) |#_module.Bool.True| (let ((|a#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@1|)))))
(ite (_module.Nat.Zero_q (Lit DatatypeTypeType |y#0@@1|)) |#_module.Bool.False| (let ((|b#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |y#0@@1|)))))
(Lit DatatypeTypeType (_module.__default.leq ($LS $ly@@7) |a#2| |b#2|)))))))))
 :qid |Ripplinglegacydfy.61:16|
 :weight 3
 :skolemid |617|
 :pattern ( (_module.__default.leq ($LS $ly@@7) (Lit DatatypeTypeType |x#0@@1|) (Lit DatatypeTypeType |y#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|x#0@@2| T@U) (|y#0@@2| T@U) ) (!  (=> (or (|_module.__default.leq#canCall| |x#0@@2| |y#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@2| Tclass._module.Nat)))) (and (=> (not (_module.Nat.Zero_q |x#0@@2|)) (let ((|a#1| (_module.Nat._h0 |x#0@@2|)))
 (=> (not (_module.Nat.Zero_q |y#0@@2|)) (let ((|b#1| (_module.Nat._h0 |y#0@@2|)))
(|_module.__default.leq#canCall| |a#1| |b#1|))))) (= (_module.__default.leq ($LS $ly@@8) |x#0@@2| |y#0@@2|) (ite (_module.Nat.Zero_q |x#0@@2|) |#_module.Bool.True| (let ((|a#0| (_module.Nat._h0 |x#0@@2|)))
(ite (_module.Nat.Zero_q |y#0@@2|) |#_module.Bool.False| (let ((|b#0| (_module.Nat._h0 |y#0@@2|)))
(_module.__default.leq $ly@@8 |a#0| |b#0|))))))))
 :qid |Ripplinglegacydfy.61:16|
 :skolemid |616|
 :pattern ( (_module.__default.leq ($LS $ly@@8) |x#0@@2| |y#0@@2|))
))))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass._module.Bool) (or (_module.Bool.False_q d@@13) (_module.Bool.True_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |1218|
 :pattern ( (_module.Bool.True_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Bool))
 :pattern ( (_module.Bool.False_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Bool))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@14) (_module.Nat.Suc_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |1235|
 :pattern ( (_module.Nat.Suc_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Nat))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass._module.List) (or (_module.List.Nil_q d@@15) (_module.List.Cons_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( (_module.List.Cons_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.List))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.len#canCall| (Lit DatatypeTypeType |xs#0@@5|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@5| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@5|)))))
(|_module.__default.len#canCall| |ys#3@@0|))) (= (_module.__default.len ($LS $ly@@9) (Lit DatatypeTypeType |xs#0@@5|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)) |#_module.Nat.Zero| (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@5|)))))
(Lit DatatypeTypeType (|#_module.Nat.Suc| (Lit DatatypeTypeType (_module.__default.len ($LS $ly@@9) |ys#2@@0|)))))))))
 :qid |Ripplinglegacydfy.139:16|
 :weight 3
 :skolemid |682|
 :pattern ( (_module.__default.len ($LS $ly@@9) (Lit DatatypeTypeType |xs#0@@5|)))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Bool.False_q a@@2) (_module.Bool.False_q b@@2)) (|_module.Bool#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1219|
 :pattern ( (|_module.Bool#Equal| a@@2 b@@2) (_module.Bool.False_q a@@2))
 :pattern ( (|_module.Bool#Equal| a@@2 b@@2) (_module.Bool.False_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Bool.True_q a@@3) (_module.Bool.True_q b@@3)) (|_module.Bool#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |1220|
 :pattern ( (|_module.Bool#Equal| a@@3 b@@3) (_module.Bool.True_q a@@3))
 :pattern ( (|_module.Bool#Equal| a@@3 b@@3) (_module.Bool.True_q b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.Nat.Zero_q a@@4) (_module.Nat.Zero_q b@@4)) (|_module.Nat#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |1236|
 :pattern ( (|_module.Nat#Equal| a@@4 b@@4) (_module.Nat.Zero_q a@@4))
 :pattern ( (|_module.Nat#Equal| a@@4 b@@4) (_module.Nat.Zero_q b@@4))
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
(assert (forall (($ly@@10 T@U) (|xs#0@@6| T@U) ) (! (= (_module.__default.len ($LS $ly@@10) |xs#0@@6|) (_module.__default.len $ly@@10 |xs#0@@6|))
 :qid |Ripplinglegacydfy.139:16|
 :skolemid |677|
 :pattern ( (_module.__default.len ($LS $ly@@10) |xs#0@@6|))
)))
(assert (forall (($ly@@11 T@U) (|xs#0@@7| T@U) ) (! (= (_module.__default.sort ($LS $ly@@11) |xs#0@@7|) (_module.__default.sort $ly@@11 |xs#0@@7|))
 :qid |Ripplinglegacydfy.233:16|
 :skolemid |755|
 :pattern ( (_module.__default.sort ($LS $ly@@11) |xs#0@@7|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) (|n#0@@1| T@U) (|xs#0@@8| T@U) ) (!  (=> (or (|_module.__default.insort#canCall| (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType |xs#0@@8|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@1| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@8| Tclass._module.List)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@8|)))))) (let ((|ys#3@@1| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@8|)))))
(let ((|y#3@@0| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@8|)))))
 (and (and (|$IsA#_module.Bool| (_module.__default.leq ($LS $LZ) (Lit DatatypeTypeType |n#0@@1|) |y#3@@0|)) (|_module.__default.leq#canCall| (Lit DatatypeTypeType |n#0@@1|) |y#3@@0|)) (=> (not (|_module.Bool#Equal| (_module.__default.leq ($LS $LZ) (Lit DatatypeTypeType |n#0@@1|) |y#3@@0|) |#_module.Bool.True|)) (|_module.__default.insort#canCall| (Lit DatatypeTypeType |n#0@@1|) |ys#3@@1|)))))) (= (_module.__default.insort ($LS $ly@@12) (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType |xs#0@@8|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@8|)) (|#_module.List.Cons| (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#2@@1| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@8|)))))
(let ((|y#2@@0| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@8|)))))
(ite (|_module.Bool#Equal| (_module.__default.leq ($LS $LZ) (Lit DatatypeTypeType |n#0@@1|) |y#2@@0|) |#_module.Bool.True|) (|#_module.List.Cons| (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType (|#_module.List.Cons| |y#2@@0| |ys#2@@1|))) (|#_module.List.Cons| |y#2@@0| (Lit DatatypeTypeType (_module.__default.insort ($LS $ly@@12) (Lit DatatypeTypeType |n#0@@1|) |ys#2@@1|))))))))))
 :qid |Ripplinglegacydfy.203:16|
 :weight 3
 :skolemid |737|
 :pattern ( (_module.__default.insort ($LS $ly@@12) (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType |xs#0@@8|)))
))))
(assert (forall ((d@@16 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@16 Tclass._module.Bool)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Bool $h))
 :qid |unknown.0:0|
 :skolemid |1216|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Bool $h))
)))
(assert (forall ((d@@17 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@17 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Nat $h@@0))
)))
(assert (forall ((d@@18 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@18 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.List $h@@1))
 :qid |unknown.0:0|
 :skolemid |1253|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 Tclass._module.List $h@@1))
)))
(assert (= (Tag Tclass._module.Bool) Tagclass._module.Bool))
(assert (= (TagFamily Tclass._module.Bool) tytagFamily$Bool))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_module.Bool.False| (Lit DatatypeTypeType |#_module.Bool.False|)))
(assert (= |#_module.Bool.True| (Lit DatatypeTypeType |#_module.Bool.True|)))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@19 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Nat.Suc_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Nat $h@@2))) ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@19) Tclass._module.Nat $h@@2))
 :qid |unknown.0:0|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@19) Tclass._module.Nat $h@@2))
)))
(assert (forall ((d@@20 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.List $h@@3))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@20) Tclass._module.Nat $h@@3))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@20) Tclass._module.Nat $h@@3))
)))
(assert (forall ((d@@21 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.List $h@@4))) ($IsAlloc DatatypeTypeType (_module.List._h2 d@@21) Tclass._module.List $h@@4))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h2 d@@21) Tclass._module.List $h@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@13 T@U) (|xs#0@@9| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| |xs#0@@9|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@9| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0@@9|)) (let ((|ys#1@@0| (_module.List._h2 |xs#0@@9|)))
(let ((|y#1| (_module.List._h1 |xs#0@@9|)))
 (and (|_module.__default.sort#canCall| |ys#1@@0|) (|_module.__default.insort#canCall| |y#1| (_module.__default.sort $ly@@13 |ys#1@@0|)))))) (= (_module.__default.sort ($LS $ly@@13) |xs#0@@9|) (ite (_module.List.Nil_q |xs#0@@9|) |#_module.List.Nil| (let ((|ys#0@@0| (_module.List._h2 |xs#0@@9|)))
(let ((|y#0@@3| (_module.List._h1 |xs#0@@9|)))
(_module.__default.insort ($LS $LZ) |y#0@@3| (_module.__default.sort $ly@@13 |ys#0@@0|))))))))
 :qid |Ripplinglegacydfy.233:16|
 :skolemid |759|
 :pattern ( (_module.__default.sort ($LS $ly@@13) |xs#0@@9|))
))))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#25#0#0| |a#25#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1248|
 :pattern ( (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) (|n#0@@2| T@U) (|xs#0@@10| T@U) ) (!  (=> (or (|_module.__default.insort#canCall| |n#0@@2| |xs#0@@10|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |xs#0@@10| Tclass._module.List)))) (and (=> (not (_module.List.Nil_q |xs#0@@10|)) (let ((|ys#1@@1| (_module.List._h2 |xs#0@@10|)))
(let ((|y#1@@0| (_module.List._h1 |xs#0@@10|)))
 (and (and (|$IsA#_module.Bool| (_module.__default.leq ($LS $LZ) |n#0@@2| |y#1@@0|)) (|_module.__default.leq#canCall| |n#0@@2| |y#1@@0|)) (=> (not (|_module.Bool#Equal| (_module.__default.leq ($LS $LZ) |n#0@@2| |y#1@@0|) |#_module.Bool.True|)) (|_module.__default.insort#canCall| |n#0@@2| |ys#1@@1|)))))) (= (_module.__default.insort ($LS $ly@@14) |n#0@@2| |xs#0@@10|) (ite (_module.List.Nil_q |xs#0@@10|) (|#_module.List.Cons| |n#0@@2| (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#0@@1| (_module.List._h2 |xs#0@@10|)))
(let ((|y#0@@4| (_module.List._h1 |xs#0@@10|)))
(ite (|_module.Bool#Equal| (_module.__default.leq ($LS $LZ) |n#0@@2| |y#0@@4|) |#_module.Bool.True|) (|#_module.List.Cons| |n#0@@2| (|#_module.List.Cons| |y#0@@4| |ys#0@@1|)) (|#_module.List.Cons| |y#0@@4| (_module.__default.insort $ly@@14 |n#0@@2| |ys#0@@1|)))))))))
 :qid |Ripplinglegacydfy.203:16|
 :skolemid |736|
 :pattern ( (_module.__default.insort ($LS $ly@@14) |n#0@@2| |xs#0@@10|))
))))
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
(declare-fun |x#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |xs#2@0| () T@U)
(declare-fun |##xs#3@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.P20)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct  (=> (forall ((|x#1| T@U) (|xs#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#1| Tclass._module.Nat) ($Is DatatypeTypeType |xs#3| Tclass._module.List)) (and (|$IsA#_module.Nat| (_module.__default.len ($LS $LZ) (_module.__default.insort ($LS $LZ) |x#1| |xs#3|))) (and (and (|_module.__default.insort#canCall| |x#1| |xs#3|) (|_module.__default.len#canCall| (_module.__default.insort ($LS $LZ) |x#1| |xs#3|))) (|_module.__default.len#canCall| |xs#3|))))
 :qid |Ripplinglegacydfy.403:17|
 :skolemid |952|
 :pattern ( (_module.__default.insort ($LS $LZ) |x#1| |xs#3|))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|x#1@@0| T@U) (|xs#3@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#1@@0| Tclass._module.Nat) ($Is DatatypeTypeType |xs#3@@0| Tclass._module.List)) (|_module.Nat#Equal| (_module.__default.len ($LS ($LS $LZ)) (_module.__default.insort ($LS ($LS $LZ)) |x#1@@0| |xs#3@@0|)) (|#_module.Nat.Suc| (_module.__default.len ($LS ($LS $LZ)) |xs#3@@0|))))
 :qid |Ripplinglegacydfy.403:17|
 :skolemid |953|
 :pattern ( (_module.__default.insort ($LS ($LS $LZ)) |x#1@@0| |xs#3@@0|))
))) (=> (and (forall ((|x#1@@1| T@U) (|xs#3@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#1@@1| Tclass._module.Nat) ($Is DatatypeTypeType |xs#3@@1| Tclass._module.List)) (|_module.Nat#Equal| (_module.__default.len ($LS $LZ) (_module.__default.insort ($LS $LZ) |x#1@@1| |xs#3@@1|)) (|#_module.Nat.Suc| (_module.__default.len ($LS $LZ) |xs#3@@1|))))
 :qid |Ripplinglegacydfy.403:17|
 :skolemid |955|
 :pattern ( (_module.__default.insort ($LS $LZ) |x#1@@1| |xs#3@@1|))
)) (= (ControlFlow 0 2) (- 0 1))) (forall ((|xs#1| T@U) ) (!  (=> ($Is DatatypeTypeType |xs#1| Tclass._module.List) (|_module.Nat#Equal| (_module.__default.len ($LS ($LS $LZ)) (_module.__default.sort ($LS ($LS $LZ)) |xs#1|)) (_module.__default.len ($LS ($LS $LZ)) |xs#1|)))
 :qid |Ripplinglegacydfy.400:18|
 :skolemid |950|
 :pattern ( (_module.__default.sort ($LS ($LS $LZ)) |xs#1|))
)))))))
(let ((anon3_Else_correct  (=> (and (not (and (and ($Is DatatypeTypeType |x#0@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |x#0@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |xs#2@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |xs#2@0| Tclass._module.List $Heap)))) (= (ControlFlow 0 5) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (and (and (and ($Is DatatypeTypeType |x#0@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |x#0@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |xs#2@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |xs#2@0| Tclass._module.List $Heap))) ($IsAlloc DatatypeTypeType |x#0@0| Tclass._module.Nat $Heap)) (and (and (and ($IsAlloc DatatypeTypeType |xs#2@0| Tclass._module.List $Heap) (|_module.__default.insort#canCall| |x#0@0| |xs#2@0|)) (and (= |##xs#3@0| (_module.__default.insort ($LS $LZ) |x#0@0| |xs#2@0|)) ($IsAlloc DatatypeTypeType |##xs#3@0| Tclass._module.List $Heap))) (and (and (|_module.__default.len#canCall| (_module.__default.insort ($LS $LZ) |x#0@0| |xs#2@0|)) ($IsAlloc DatatypeTypeType |xs#2@0| Tclass._module.List $Heap)) (and (|_module.__default.len#canCall| |xs#2@0|) (= (ControlFlow 0 4) 2))))) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
