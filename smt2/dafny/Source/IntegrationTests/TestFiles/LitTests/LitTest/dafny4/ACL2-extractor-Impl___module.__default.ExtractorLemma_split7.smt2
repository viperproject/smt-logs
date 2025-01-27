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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.xtr (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.xtr#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.__default.nth#canCall| (T@U Int T@U) Bool)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun _module.__default.nth (T@U Bool Int T@U) T@U)
(declare-fun reveal__module._default.nth () Bool)
(declare-fun _module.__default.nats (T@U Int) T@U)
(declare-fun |_module.__default.nats#canCall| (Int) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.append (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.append#canCall| (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.length#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.length (T@U T@U T@U) Int)
(declare-fun $LZ () T@U)
(declare-fun |_module.__default.nthWorker#canCall| (T@U Int T@U) Bool)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun _module.__default.nthWorker (T@U T@U Int T@U) T@U)
(declare-fun |$let#0_t| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.__default.rev (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun |_module.__default.rev#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat tytagFamily$List)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((_module._default.xtr$T T@U) ($ly T@U) (|mp#0| T@U) (|lst#0| T@U) ) (!  (=> (or (|_module.__default.xtr#canCall| _module._default.xtr$T (Lit DatatypeTypeType |mp#0|) (Lit DatatypeTypeType |lst#0|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |mp#0| (Tclass._module.List TInt)) ($Is DatatypeTypeType |lst#0| (Tclass._module.List _module._default.xtr$T))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |mp#0|)))))) (let ((|rest#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |mp#0|)))))
(let ((|n#3| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |mp#0|)))))))
 (and (|_module.__default.nth#canCall| _module._default.xtr$T |n#3| (Lit DatatypeTypeType |lst#0|)) (|_module.__default.xtr#canCall| _module._default.xtr$T |rest#3| (Lit DatatypeTypeType |lst#0|)))))) (= (_module.__default.xtr _module._default.xtr$T ($LS $ly) (Lit DatatypeTypeType |mp#0|) (Lit DatatypeTypeType |lst#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |mp#0|)) |#_module.List.Nil| (let ((|rest#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |mp#0|)))))
(let ((|n#2| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |mp#0|)))))))
(|#_module.List.Cons| (_module.__default.nth _module._default.xtr$T reveal__module._default.nth |n#2| (Lit DatatypeTypeType |lst#0|)) (Lit DatatypeTypeType (_module.__default.xtr _module._default.xtr$T ($LS $ly) |rest#2| (Lit DatatypeTypeType |lst#0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |585|
 :pattern ( (_module.__default.xtr _module._default.xtr$T ($LS $ly) (Lit DatatypeTypeType |mp#0|) (Lit DatatypeTypeType |lst#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.nats#canCall| |n#0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) (and (=> (or (not (= |n#0| (LitInt 0))) (not true)) (|_module.__default.nats#canCall| (- |n#0| 1))) (= (_module.__default.nats ($LS $ly@@0) |n#0|) (ite (= |n#0| (LitInt 0)) |#_module.List.Nil| (|#_module.List.Cons| ($Box intType (int_2_U (- |n#0| 1))) (_module.__default.nats $ly@@0 (- |n#0| 1)))))))
 :qid |ACL2extractordfy.47:16|
 :skolemid |576|
 :pattern ( (_module.__default.nats ($LS $ly@@0) |n#0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((_module._default.xtr$T@@0 T@U) ($ly@@1 T@U) (|mp#0@@0| T@U) (|lst#0@@0| T@U) ) (!  (=> (or (|_module.__default.xtr#canCall| _module._default.xtr$T@@0 |mp#0@@0| |lst#0@@0|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |mp#0@@0| (Tclass._module.List TInt)) ($Is DatatypeTypeType |lst#0@@0| (Tclass._module.List _module._default.xtr$T@@0))))) (and (=> (not (_module.List.Nil_q |mp#0@@0|)) (let ((|rest#1| (_module.List.tail |mp#0@@0|)))
(let ((|n#1| (U_2_int ($Unbox intType (_module.List.head |mp#0@@0|)))))
 (and (|_module.__default.nth#canCall| _module._default.xtr$T@@0 |n#1| |lst#0@@0|) (|_module.__default.xtr#canCall| _module._default.xtr$T@@0 |rest#1| |lst#0@@0|))))) (= (_module.__default.xtr _module._default.xtr$T@@0 ($LS $ly@@1) |mp#0@@0| |lst#0@@0|) (ite (_module.List.Nil_q |mp#0@@0|) |#_module.List.Nil| (let ((|rest#0| (_module.List.tail |mp#0@@0|)))
(let ((|n#0@@0| (U_2_int ($Unbox intType (_module.List.head |mp#0@@0|)))))
(|#_module.List.Cons| (_module.__default.nth _module._default.xtr$T@@0 reveal__module._default.nth |n#0@@0| |lst#0@@0|) (_module.__default.xtr _module._default.xtr$T@@0 $ly@@1 |rest#0| |lst#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.__default.xtr _module._default.xtr$T@@0 ($LS $ly@@1) |mp#0@@0| |lst#0@@0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0 T@U) ($ly@@2 T@U) (|xs#0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0 (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.append$_T0)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List _module._default.append$_T0))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|rest#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.append#canCall| _module._default.append$_T0 |rest#3@@0| (Lit DatatypeTypeType |ys#0|)))) (= (_module.__default.append _module._default.append$_T0 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |ys#0| (let ((|rest#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |x#2| (Lit DatatypeTypeType (_module.__default.append _module._default.append$_T0 ($LS $ly@@2) |rest#2@@0| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |561|
 :pattern ( (_module.__default.append _module._default.append$_T0 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.nth$T T@U) ($Heap T@U) (|n#0@@1| Int) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T |n#0@@1| |xs#0@@0|) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.nth$T))))) (and (and (and (=> (<= (LitInt 0) |n#0@@1|) (|_module.__default.length#canCall| _module._default.nth$T |xs#0@@0|)) (=> (and (<= (LitInt 0) |n#0@@1|) (< |n#0@@1| (_module.__default.length _module._default.nth$T ($LS $LZ) |xs#0@@0|))) (|_module.__default.nthWorker#canCall| _module._default.nth$T |n#0@@1| |xs#0@@0|))) (=> (not (and (<= (LitInt 0) |n#0@@1|) (< |n#0@@1| (_module.__default.length _module._default.nth$T ($LS $LZ) |xs#0@@0|)))) (|$let#0$canCall| _module._default.nth$T))) (= (_module.__default.nth _module._default.nth$T true |n#0@@1| |xs#0@@0|) (ite  (and (<= (LitInt 0) |n#0@@1|) (< |n#0@@1| (_module.__default.length _module._default.nth$T ($LS $LZ) |xs#0@@0|))) (_module.__default.nthWorker _module._default.nth$T ($LS $LZ) |n#0@@1| |xs#0@@0|) (let ((|t#0| (|$let#0_t| _module._default.nth$T)))
|t#0|)))))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.__default.nth _module._default.nth$T true |n#0@@1| |xs#0@@0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.nth$T@@0 T@U) ($reveal Bool) (|n#0@@2| Int) (|xs#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.nth#canCall| _module._default.nth$T@@0 |n#0@@2| |xs#0@@1|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.nth$T@@0)) ($IsAlloc DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.nth$T@@0) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (_module.__default.nth _module._default.nth$T@@0 $reveal |n#0@@2| |xs#0@@1|) _module._default.nth$T@@0 $Heap@@0))
 :qid |ACL2extractordfy.19:23|
 :skolemid |539|
 :pattern ( ($IsAllocBox (_module.__default.nth _module._default.nth$T@@0 $reveal |n#0@@2| |xs#0@@1|) _module._default.nth$T@@0 $Heap@@0))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((_module._default.nth$T@@1 T@U) ) (!  (=> (|$let#0$canCall| _module._default.nth$T@@1) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |ACL2extractordfy.24:5|
 :skolemid |541|
 :pattern ( (|$let#0_t| _module._default.nth$T@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0 T@U) ($ly@@3 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0 (Lit DatatypeTypeType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|rest#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.length#canCall| _module._default.length$_T0 |rest#3@@1|))) (= (_module.__default.length _module._default.length$_T0 ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) 0 (let ((|rest#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(LitInt (+ 1 (_module.__default.length _module._default.length$_T0 ($LS $ly@@3) |rest#2@@1|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |536|
 :pattern ( (_module.__default.length _module._default.length$_T0 ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@2|)))
))))
(assert (forall ((_module._default.length$_T0@@0 T@U) ($ly@@4 T@U) (|xs#0@@3| T@U) ) (! (= (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@4) |xs#0@@3|) (_module.__default.length _module._default.length$_T0@@0 $ly@@4 |xs#0@@3|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@4) |xs#0@@3|))
)))
(assert (forall ((_module._default.rev$_T0 T@U) ($ly@@5 T@U) (|xs#0@@4| T@U) ) (! (= (_module.__default.rev _module._default.rev$_T0 ($LS $ly@@5) |xs#0@@4|) (_module.__default.rev _module._default.rev$_T0 $ly@@5 |xs#0@@4|))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (_module.__default.rev _module._default.rev$_T0 ($LS $ly@@5) |xs#0@@4|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.nthWorker$T T@U) ($ly@@6 T@U) (|n#0@@3| Int) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T |n#0@@3| |xs#0@@5|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.nthWorker$T)) (and (<= (LitInt 0) |n#0@@3|) (< |n#0@@3| (_module.__default.length _module._default.nthWorker$T ($LS $LZ) |xs#0@@5|)))))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T (- |n#0@@3| 1) (_module.List.tail |xs#0@@5|))) (= (_module.__default.nthWorker _module._default.nthWorker$T ($LS $ly@@6) |n#0@@3| |xs#0@@5|) (ite (= |n#0@@3| (LitInt 0)) (_module.List.head |xs#0@@5|) (_module.__default.nthWorker _module._default.nthWorker$T $ly@@6 (- |n#0@@3| 1) (_module.List.tail |xs#0@@5|))))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.__default.nthWorker _module._default.nthWorker$T ($LS $ly@@6) |n#0@@3| |xs#0@@5|))
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
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@0 T@U) ($ly@@7 T@U) (|xs#0@@6| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs#0@@6| |ys#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.append$_T0@@0)) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List _module._default.append$_T0@@0))))) (and (=> (not (_module.List.Nil_q |xs#0@@6|)) (let ((|rest#1@@0| (_module.List.tail |xs#0@@6|)))
(|_module.__default.append#canCall| _module._default.append$_T0@@0 |rest#1@@0| |ys#0@@0|))) (= (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@7) |xs#0@@6| |ys#0@@0|) (ite (_module.List.Nil_q |xs#0@@6|) |ys#0@@0| (let ((|rest#0@@0| (_module.List.tail |xs#0@@6|)))
(let ((|x#0@@0| (_module.List.head |xs#0@@6|)))
(|#_module.List.Cons| |x#0@@0| (_module.__default.append _module._default.append$_T0@@0 $ly@@7 |rest#0@@0| |ys#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@7) |xs#0@@6| |ys#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.rev$_T0@@0 T@U) ($ly@@8 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.rev#canCall| _module._default.rev$_T0@@0 |xs#0@@7|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.rev$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@7|)) (let ((|rest#1@@1| (_module.List.tail |xs#0@@7|)))
(let ((|x#1| (_module.List.head |xs#0@@7|)))
 (and (|_module.__default.rev#canCall| _module._default.rev$_T0@@0 |rest#1@@1|) (|_module.__default.append#canCall| _module._default.rev$_T0@@0 (_module.__default.rev _module._default.rev$_T0@@0 $ly@@8 |rest#1@@1|) (|#_module.List.Cons| |x#1| (Lit DatatypeTypeType |#_module.List.Nil|))))))) (= (_module.__default.rev _module._default.rev$_T0@@0 ($LS $ly@@8) |xs#0@@7|) (ite (_module.List.Nil_q |xs#0@@7|) |#_module.List.Nil| (let ((|rest#0@@1| (_module.List.tail |xs#0@@7|)))
(let ((|x#0@@1| (_module.List.head |xs#0@@7|)))
(_module.__default.append _module._default.rev$_T0@@0 ($LS $LZ) (_module.__default.rev _module._default.rev$_T0@@0 $ly@@8 |rest#0@@1|) (|#_module.List.Cons| |x#0@@1| (Lit DatatypeTypeType |#_module.List.Nil|)))))))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (_module.__default.rev _module._default.rev$_T0@@0 ($LS $ly@@8) |xs#0@@7|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.nthWorker$T@@0 T@U) ($ly@@9 T@U) (|n#0@@4| Int) (|xs#0@@8| T@U) ) (!  (=> (or (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T@@0 (LitInt |n#0@@4|) (Lit DatatypeTypeType |xs#0@@8|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List _module._default.nthWorker$T@@0)) (and (<= (LitInt 0) (LitInt |n#0@@4|)) (< |n#0@@4| (_module.__default.length _module._default.nthWorker$T@@0 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@8|))))))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T@@0 (LitInt (- |n#0@@4| 1)) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@8|))))) (= (_module.__default.nthWorker _module._default.nthWorker$T@@0 ($LS $ly@@9) (LitInt |n#0@@4|) (Lit DatatypeTypeType |xs#0@@8|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) (_module.List.head (Lit DatatypeTypeType |xs#0@@8|)) (_module.__default.nthWorker _module._default.nthWorker$T@@0 ($LS $ly@@9) (LitInt (- |n#0@@4| 1)) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@8|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |552|
 :pattern ( (_module.__default.nthWorker _module._default.nthWorker$T@@0 ($LS $ly@@9) (LitInt |n#0@@4|) (Lit DatatypeTypeType |xs#0@@8|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |ACL2extractordfy.8:31|
 :skolemid |646|
)))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.nats#canCall| (LitInt |n#0@@5|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@5|))) (and (=> (or (not (= (LitInt |n#0@@5|) (LitInt 0))) (not true)) (|_module.__default.nats#canCall| (LitInt (- |n#0@@5| 1)))) (= (_module.__default.nats ($LS $ly@@10) (LitInt |n#0@@5|)) (ite (= (LitInt |n#0@@5|) (LitInt 0)) |#_module.List.Nil| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt (- |n#0@@5| 1)))) (Lit DatatypeTypeType (_module.__default.nats ($LS $ly@@10) (LitInt (- |n#0@@5| 1)))))))))
 :qid |ACL2extractordfy.47:16|
 :weight 3
 :skolemid |577|
 :pattern ( (_module.__default.nats ($LS $ly@@10) (LitInt |n#0@@5|)))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@1 T@U) ($ly@@11 T@U) (|xs#0@@9| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@1 |xs#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@9|)) (let ((|rest#1@@2| (_module.List.tail |xs#0@@9|)))
(|_module.__default.length#canCall| _module._default.length$_T0@@1 |rest#1@@2|))) (= (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@11) |xs#0@@9|) (ite (_module.List.Nil_q |xs#0@@9|) 0 (let ((|rest#0@@2| (_module.List.tail |xs#0@@9|)))
(+ 1 (_module.__default.length _module._default.length$_T0@@1 $ly@@11 |rest#0@@2|)))))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@11) |xs#0@@9|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@12 T@U) (|n#0@@6| Int) ) (!  (=> (or (|_module.__default.nats#canCall| |n#0@@6|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@6|))) ($Is DatatypeTypeType (_module.__default.nats $ly@@12 |n#0@@6|) (Tclass._module.List TInt)))
 :qid |ACL2extractordfy.47:16|
 :skolemid |574|
 :pattern ( (_module.__default.nats $ly@@12 |n#0@@6|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.nth$T@@2 T@U) ($reveal@@0 Bool) (|n#0@@7| Int) (|xs#0@@10| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T@@2 |n#0@@7| |xs#0@@10|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.nth$T@@2)))) ($IsBox (_module.__default.nth _module._default.nth$T@@2 $reveal@@0 |n#0@@7| |xs#0@@10|) _module._default.nth$T@@2))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.__default.nth _module._default.nth$T@@2 $reveal@@0 |n#0@@7| |xs#0@@10|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.rev$_T0@@1 T@U) ($ly@@13 T@U) (|xs#0@@11| T@U) ) (!  (=> (or (|_module.__default.rev#canCall| _module._default.rev$_T0@@1 (Lit DatatypeTypeType |xs#0@@11|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List _module._default.rev$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@11|)))))) (let ((|rest#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@11|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@11|)))))
 (and (|_module.__default.rev#canCall| _module._default.rev$_T0@@1 |rest#3@@2|) (|_module.__default.append#canCall| _module._default.rev$_T0@@1 (_module.__default.rev _module._default.rev$_T0@@1 ($LS $ly@@13) |rest#3@@2|) (|#_module.List.Cons| |x#3| (Lit DatatypeTypeType |#_module.List.Nil|))))))) (= (_module.__default.rev _module._default.rev$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |xs#0@@11|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@11|)) |#_module.List.Nil| (let ((|rest#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@11|)))))
(let ((|x#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@11|)))))
(Lit DatatypeTypeType (_module.__default.append _module._default.rev$_T0@@1 ($LS $LZ) (Lit DatatypeTypeType (_module.__default.rev _module._default.rev$_T0@@1 ($LS $ly@@13) |rest#2@@2|)) (Lit DatatypeTypeType (|#_module.List.Cons| |x#2@@0| (Lit DatatypeTypeType |#_module.List.Nil|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |569|
 :pattern ( (_module.__default.rev _module._default.rev$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |xs#0@@11|)))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |ACL2extractordfy.8:31|
 :skolemid |644|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |ACL2extractordfy.8:31|
 :skolemid |653|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |ACL2extractordfy.8:31|
 :skolemid |655|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@1 T@U) ($ly@@14 T@U) (|xs#0@@12| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@1 |xs#0@@12| |ys#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List _module._default.append$_T0@@1)) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List _module._default.append$_T0@@1))))) ($Is DatatypeTypeType (_module.__default.append _module._default.append$_T0@@1 $ly@@14 |xs#0@@12| |ys#0@@1|) (Tclass._module.List _module._default.append$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_module.__default.append _module._default.append$_T0@@1 $ly@@14 |xs#0@@12| |ys#0@@1|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((_module._default.xtr$T@@1 T@U) ($ly@@15 T@U) (|mp#0@@1| T@U) (|lst#0@@1| T@U) ) (!  (=> (or (|_module.__default.xtr#canCall| _module._default.xtr$T@@1 |mp#0@@1| |lst#0@@1|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |mp#0@@1| (Tclass._module.List TInt)) ($Is DatatypeTypeType |lst#0@@1| (Tclass._module.List _module._default.xtr$T@@1))))) ($Is DatatypeTypeType (_module.__default.xtr _module._default.xtr$T@@1 $ly@@15 |mp#0@@1| |lst#0@@1|) (Tclass._module.List _module._default.xtr$T@@1)))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.xtr _module._default.xtr$T@@1 $ly@@15 |mp#0@@1| |lst#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.rev$_T0@@2 T@U) ($ly@@16 T@U) (|xs#0@@13| T@U) ) (!  (=> (and (or (|_module.__default.rev#canCall| _module._default.rev$_T0@@2 |xs#0@@13|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.rev$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.rev$_T0@@2) $Heap@@1)))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.rev _module._default.rev$_T0@@2 $ly@@16 |xs#0@@13|) (Tclass._module.List _module._default.rev$_T0@@2) $Heap@@1))
 :qid |ACL2extractordfy.40:16|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.rev _module._default.rev$_T0@@2 $ly@@16 |xs#0@@13|) (Tclass._module.List _module._default.rev$_T0@@2) $Heap@@1))
))))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |ACL2extractordfy.8:31|
 :skolemid |654|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |ACL2extractordfy.8:31|
 :skolemid |656|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.rev$_T0@@3 T@U) ($ly@@17 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.rev#canCall| _module._default.rev$_T0@@3 |xs#0@@14|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List _module._default.rev$_T0@@3)))) ($Is DatatypeTypeType (_module.__default.rev _module._default.rev$_T0@@3 $ly@@17 |xs#0@@14|) (Tclass._module.List _module._default.rev$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (_module.__default.rev _module._default.rev$_T0@@3 $ly@@17 |xs#0@@14|))
))))
(assert (forall (($ly@@18 T@U) (|n#0@@8| Int) ) (! (= (_module.__default.nats ($LS $ly@@18) |n#0@@8|) (_module.__default.nats $ly@@18 |n#0@@8|))
 :qid |ACL2extractordfy.47:16|
 :skolemid |572|
 :pattern ( (_module.__default.nats ($LS $ly@@18) |n#0@@8|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.nthWorker$T@@1 T@U) ($ly@@19 T@U) (|n#0@@9| Int) (|xs#0@@15| T@U) ) (!  (=> (and (or (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T@@1 |n#0@@9| |xs#0@@15|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List _module._default.nthWorker$T@@1)) ($IsAlloc DatatypeTypeType |xs#0@@15| (Tclass._module.List _module._default.nthWorker$T@@1) $Heap@@2)) (and (<= (LitInt 0) |n#0@@9|) (< |n#0@@9| (_module.__default.length _module._default.nthWorker$T@@1 ($LS $LZ) |xs#0@@15|)))))) ($IsGoodHeap $Heap@@2)) ($IsAllocBox (_module.__default.nthWorker _module._default.nthWorker$T@@1 $ly@@19 |n#0@@9| |xs#0@@15|) _module._default.nthWorker$T@@1 $Heap@@2))
 :qid |ACL2extractordfy.27:16|
 :skolemid |549|
 :pattern ( ($IsAllocBox (_module.__default.nthWorker _module._default.nthWorker$T@@1 $ly@@19 |n#0@@9| |xs#0@@15|) _module._default.nthWorker$T@@1 $Heap@@2))
))))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@1))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@1))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
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
 :skolemid |662|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (_module._default.append$_T0@@2 T@U) ($ly@@20 T@U) (|xs#0@@16| T@U) (|ys#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.append#canCall| _module._default.append$_T0@@2 |xs#0@@16| |ys#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@16| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@16| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3)) (and ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |ys#0@@2| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@20 |xs#0@@16| |ys#0@@2|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))
 :qid |ACL2extractordfy.33:16|
 :skolemid |558|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@20 |xs#0@@16| |ys#0@@2|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (_module._default.xtr$T@@2 T@U) ($ly@@21 T@U) (|mp#0@@2| T@U) (|lst#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.xtr#canCall| _module._default.xtr$T@@2 |mp#0@@2| |lst#0@@2|) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |mp#0@@2| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |mp#0@@2| (Tclass._module.List TInt) $Heap@@4)) (and ($Is DatatypeTypeType |lst#0@@2| (Tclass._module.List _module._default.xtr$T@@2)) ($IsAlloc DatatypeTypeType |lst#0@@2| (Tclass._module.List _module._default.xtr$T@@2) $Heap@@4))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (_module.__default.xtr _module._default.xtr$T@@2 $ly@@21 |mp#0@@2| |lst#0@@2|) (Tclass._module.List _module._default.xtr$T@@2) $Heap@@4))
 :qid |ACL2extractordfy.52:16|
 :skolemid |582|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.xtr _module._default.xtr$T@@2 $ly@@21 |mp#0@@2| |lst#0@@2|) (Tclass._module.List _module._default.xtr$T@@2) $Heap@@4))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.nth$T@@3 T@U) ($Heap@@5 T@U) (|n#0@@10| Int) (|xs#0@@17| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T@@3 (LitInt |n#0@@10|) (Lit DatatypeTypeType |xs#0@@17|)) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) ($Is DatatypeTypeType |xs#0@@17| (Tclass._module.List _module._default.nth$T@@3))))) (and (and (and (=> (<= (LitInt 0) (LitInt |n#0@@10|)) (|_module.__default.length#canCall| _module._default.nth$T@@3 (Lit DatatypeTypeType |xs#0@@17|))) (=> (and (<= (LitInt 0) (LitInt |n#0@@10|)) (< |n#0@@10| (_module.__default.length _module._default.nth$T@@3 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@17|)))) (|_module.__default.nthWorker#canCall| _module._default.nth$T@@3 (LitInt |n#0@@10|) (Lit DatatypeTypeType |xs#0@@17|)))) (=> (not (and (<= (LitInt 0) (LitInt |n#0@@10|)) (< |n#0@@10| (_module.__default.length _module._default.nth$T@@3 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@17|))))) (|$let#0$canCall| _module._default.nth$T@@3))) (= (_module.__default.nth _module._default.nth$T@@3 true (LitInt |n#0@@10|) (Lit DatatypeTypeType |xs#0@@17|)) (ite  (and (<= (LitInt 0) (LitInt |n#0@@10|)) (< |n#0@@10| (_module.__default.length _module._default.nth$T@@3 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@17|)))) (_module.__default.nthWorker _module._default.nth$T@@3 ($LS $LZ) (LitInt |n#0@@10|) (Lit DatatypeTypeType |xs#0@@17|)) (let ((|t#1| (|$let#0_t| _module._default.nth$T@@3)))
|t#1|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |543|
 :pattern ( (_module.__default.nth _module._default.nth$T@@3 true (LitInt |n#0@@10|) (Lit DatatypeTypeType |xs#0@@17|)) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module._default.nthWorker$T@@2 T@U) ($ly@@22 T@U) (|n#0@@11| Int) (|xs#0@@18| T@U) ) (! (= (_module.__default.nthWorker _module._default.nthWorker$T@@2 ($LS $ly@@22) |n#0@@11| |xs#0@@18|) (_module.__default.nthWorker _module._default.nthWorker$T@@2 $ly@@22 |n#0@@11| |xs#0@@18|))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.__default.nthWorker _module._default.nthWorker$T@@2 ($LS $ly@@22) |n#0@@11| |xs#0@@18|))
)))
(assert (forall ((_module._default.append$_T0@@3 T@U) ($ly@@23 T@U) (|xs#0@@19| T@U) (|ys#0@@3| T@U) ) (! (= (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@23) |xs#0@@19| |ys#0@@3|) (_module.__default.append _module._default.append$_T0@@3 $ly@@23 |xs#0@@19| |ys#0@@3|))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@23) |xs#0@@19| |ys#0@@3|))
)))
(assert (forall ((_module._default.xtr$T@@3 T@U) ($ly@@24 T@U) (|mp#0@@3| T@U) (|lst#0@@3| T@U) ) (! (= (_module.__default.xtr _module._default.xtr$T@@3 ($LS $ly@@24) |mp#0@@3| |lst#0@@3|) (_module.__default.xtr _module._default.xtr$T@@3 $ly@@24 |mp#0@@3| |lst#0@@3|))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (_module.__default.xtr _module._default.xtr$T@@3 ($LS $ly@@24) |mp#0@@3| |lst#0@@3|))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@1 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@2))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@2))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@2))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |ACL2extractordfy.8:31|
 :skolemid |652|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@2 T@U) ($ly@@25 T@U) (|xs#0@@20| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@2 |xs#0@@20|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@20| (Tclass._module.List _module._default.length$_T0@@2)))) (<= (LitInt 0) (_module.__default.length _module._default.length$_T0@@2 $ly@@25 |xs#0@@20|)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.__default.length _module._default.length$_T0@@2 $ly@@25 |xs#0@@20|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.nthWorker$T@@3 T@U) ($ly@@26 T@U) (|n#0@@12| Int) (|xs#0@@21| T@U) ) (!  (=> (or (|_module.__default.nthWorker#canCall| _module._default.nthWorker$T@@3 |n#0@@12| |xs#0@@21|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@21| (Tclass._module.List _module._default.nthWorker$T@@3)) (and (<= (LitInt 0) |n#0@@12|) (< |n#0@@12| (_module.__default.length _module._default.nthWorker$T@@3 ($LS $LZ) |xs#0@@21|)))))) ($IsBox (_module.__default.nthWorker _module._default.nthWorker$T@@3 $ly@@26 |n#0@@12| |xs#0@@21|) _module._default.nthWorker$T@@3))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.__default.nthWorker _module._default.nthWorker$T@@3 $ly@@26 |n#0@@12| |xs#0@@21|))
))))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@3)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@3) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@6 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |xs#0@@22| () T@U)
(declare-fun _module._default.ExtractorLemma$T () T@U)
(declare-fun |i#0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##n#0_1_2@0| () Int)
(declare-fun |##xs#0_1_0@0| () T@U)
(declare-fun |##n#0_1_0@0| () Int)
(declare-fun |n##0_1_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |##n#0_1_3@0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ExtractorLemma_split7)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (and (and ($Is DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T)) ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@@6)) (|$IsA#_module.List| |xs#0@@22|)) (= 7 $FunctionContextHeight)) (and (and (<= (LitInt 0) |i#0|) (< |i#0| (_module.__default.length _module._default.ExtractorLemma$T ($LS ($LS $LZ)) |xs#0@@22|))) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (|$IsA#_module.List| |xs#0@@22|)))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@6 $Heap@0)) (and (forall ((|$ih#xs0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List _module._default.ExtractorLemma$T)) (and (<= (LitInt 0) |i#0|) (< |i#0| (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |$ih#xs0#0|)))) (or (and (<= 0 |i#0|) (< |i#0| |i#0|)) (and (= |i#0| |i#0|) (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@22|))))) (= (_module.__default.nth _module._default.ExtractorLemma$T reveal__module._default.nth |i#0| (_module.__default.xtr _module._default.ExtractorLemma$T ($LS $LZ) (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |$ih#xs0#0|)) |$ih#xs0#0|)) (_module.__default.nth _module._default.ExtractorLemma$T reveal__module._default.nth |i#0| (_module.__default.rev _module._default.ExtractorLemma$T ($LS $LZ) |$ih#xs0#0|))))
 :qid |ACL2extractordfy.144:59|
 :skolemid |610|
 :pattern ( (_module.__default.rev _module._default.ExtractorLemma$T ($LS $LZ) |$ih#xs0#0|))
 :pattern ( (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |$ih#xs0#0|))
)) ($IsAlloc intType (int_2_U |i#0|) TInt $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@0) (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|)) (and (= |##n#0_1_2@0| (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|)) ($IsAlloc intType (int_2_U |##n#0_1_2@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.nats#canCall| (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|)) (= |##xs#0_1_0@0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_1_0@0| (Tclass._module.List TInt) $Heap@0) (|_module.__default.nth#canCall| TInt |i#0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|))))) (and (and (= |##n#0_1_0@0| (U_2_int ($Unbox intType (_module.__default.nth TInt reveal__module._default.nth |i#0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|)))))) ($IsAlloc intType (int_2_U |##n#0_1_0@0|) TInt $Heap@0)) (and ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@0) (|_module.__default.nth#canCall| _module._default.ExtractorLemma$T (U_2_int ($Unbox intType (_module.__default.nth TInt reveal__module._default.nth |i#0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|))))) |xs#0@@22|))))) (=> (and (and (and (and (and (and (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|) (|_module.__default.nats#canCall| (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|))) (|_module.__default.nth#canCall| TInt |i#0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|)))) (|_module.__default.nth#canCall| _module._default.ExtractorLemma$T (U_2_int ($Unbox intType (_module.__default.nth TInt reveal__module._default.nth |i#0| (_module.__default.nats ($LS $LZ) (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|))))) |xs#0@@22|)) (and ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@0) (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|))) (and (and (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|) (= |n##0_1_0@0| (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|))) (and (<= (LitInt 0) |i#0|) (< |i#0| |n##0_1_0@0|)))) (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (|_module.__default.nats#canCall| |n##0_1_0@0|) (|_module.__default.nth#canCall| TInt |i#0| (_module.__default.nats ($LS $LZ) |n##0_1_0@0|)))) (and (and (= (U_2_int ($Unbox intType (_module.__default.nth TInt reveal__module._default.nth |i#0| (_module.__default.nats ($LS ($LS $LZ)) |n##0_1_0@0|)))) (- (- |n##0_1_0@0| 1) |i#0|)) (= $Heap@0 $Heap@3)) (and ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@3) (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|)))) (and (and (and (= |##n#0_1_3@0| (- (- (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|) 1) |i#0|)) ($IsAlloc intType (int_2_U |##n#0_1_3@0|) TInt $Heap@3)) (and ($IsAlloc DatatypeTypeType |xs#0@@22| (Tclass._module.List _module._default.ExtractorLemma$T) $Heap@3) (|_module.__default.nth#canCall| _module._default.ExtractorLemma$T (- (- (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|) 1) |i#0|) |xs#0@@22|))) (and (and (|_module.__default.length#canCall| _module._default.ExtractorLemma$T |xs#0@@22|) (|_module.__default.nth#canCall| _module._default.ExtractorLemma$T (- (- (_module.__default.length _module._default.ExtractorLemma$T ($LS $LZ) |xs#0@@22|) 1) |i#0|) |xs#0@@22|)) (= (ControlFlow 0 2) (- 0 1)))))) (= (_module.__default.nth _module._default.ExtractorLemma$T reveal__module._default.nth (U_2_int ($Unbox intType (_module.__default.nth TInt reveal__module._default.nth |i#0| (_module.__default.nats ($LS ($LS $LZ)) (_module.__default.length _module._default.ExtractorLemma$T ($LS ($LS $LZ)) |xs#0@@22|))))) |xs#0@@22|) (_module.__default.nth _module._default.ExtractorLemma$T reveal__module._default.nth (- (- (_module.__default.length _module._default.ExtractorLemma$T ($LS ($LS $LZ)) |xs#0@@22|) 1) |i#0|) |xs#0@@22|))))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
