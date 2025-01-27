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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.SMN_k_k (T@U T@U Int Int) Int)
(declare-fun |_module.__default.SMN_k_k#canCall| (T@U Int Int) Bool)
(declare-fun $LZ () T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun |_module.__default.Split#canCall| (T@U Int) Bool)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.__default.Split (T@U Bool T@U Int) T@U)
(declare-fun reveal__module._default.Split () Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0 T@U) ($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0 (Lit DatatypeTypeType |xs#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.Length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.Length#canCall| _module._default.Length$_T0 |tail#3|))) (= (_module.__default.Length _module._default.Length$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(LitInt (+ 1 (_module.__default.Length _module._default.Length$_T0 ($LS $ly) |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |592|
 :pattern ( (_module.__default.Length _module._default.Length$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|)))
))))
(assert (forall ((_module._default.Length$_T0@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) ) (! (= (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@0) |xs#0@@0|) (_module.__default.Length _module._default.Length$_T0@@0 $ly@@0 |xs#0@@0|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@0) |xs#0@@0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.List$X T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X) $h@@0))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X) $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((_module.List$X@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (|_module.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.List.Cons_q a@@0) (_module.List.Cons_q b@@0)) (= (|_module.List#Equal| a@@0 b@@0)  (and (= (_module.List.head a@@0) (_module.List.head b@@0)) (|_module.List#Equal| (_module.List.tail a@@0) (_module.List.tail b@@0)))))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q a@@0))
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q b@@0))
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
(assert (forall ((_module.List$X@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$X@@1))  (and ($IsBox |a#6#0#0| _module.List$X@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$X@@1))))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$X@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |762|
)))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|xs#0@@1| T@U) (|n#0| Int) (|len#0| Int) ) (!  (=> (or (|_module.__default.SMN_k_k#canCall| (Lit DatatypeTypeType |xs#0@@1|) (LitInt |n#0|) (LitInt |len#0|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0|)) (<= (LitInt 0) |len#0|)) (= (LitInt |len#0|) (LitInt (_module.__default.Length Tclass._System.nat ($LS $LZ) (Lit DatatypeTypeType |xs#0@@1|))))))) (and (and (|$IsA#_module.List| (Lit DatatypeTypeType |xs#0@@1|)) (=> (not (|_module.List#Equal| |xs#0@@1| |#_module.List.Nil|)) (let ((|half#2| (LitInt (+ (Div |len#0| (LitInt 2)) 1))))
 (and (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@1|) (+ |n#0| |half#2|)) (let ((|R#2| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@1|) (+ |n#0| |half#2|))))))
(let ((|L#2| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@1|) (+ |n#0| |half#2|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#2|) (let ((|llen#2| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2|)))
 (and (=> (< |llen#2| |half#2|) (|_module.__default.SMN_k_k#canCall| |L#2| (LitInt |n#0|) |llen#2|)) (=> (<= |half#2| |llen#2|) (|_module.__default.SMN_k_k#canCall| |R#2| (+ |n#0| |llen#2|) (- |len#0| |llen#2|)))))))))))) (= (_module.__default.SMN_k_k ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|) (LitInt |n#0|) (LitInt |len#0|)) (ite (|_module.List#Equal| |xs#0@@1| |#_module.List.Nil|) |n#0| (let ((|half#2@@0| (LitInt (+ (Div |len#0| (LitInt 2)) 1))))
(let ((|R#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@1|) (LitInt (+ |n#0| |half#2@@0|)))))))
(let ((|L#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@1|) (LitInt (+ |n#0| |half#2@@0|)))))))
(let ((|llen#2@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2@@0|)))
(ite (< |llen#2@@0| |half#2@@0|) (_module.__default.SMN_k_k ($LS $ly@@1) |L#2@@0| (LitInt |n#0|) |llen#2@@0|) (_module.__default.SMN_k_k ($LS $ly@@1) |R#2@@0| (+ |n#0| |llen#2@@0|) (- |len#0| |llen#2@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.77:10|
 :weight 3
 :skolemid |630|
 :pattern ( (_module.__default.SMN_k_k ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|) (LitInt |n#0|) (LitInt |len#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@1 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |xs#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.Length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@2|)) (let ((|tail#1| (_module.List.tail |xs#0@@2|)))
(|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |tail#1|))) (= (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@2) |xs#0@@2|) (ite (_module.List.Nil_q |xs#0@@2|) 0 (let ((|tail#0| (_module.List.tail |xs#0@@2|)))
(+ 1 (_module.__default.Length _module._default.Length$_T0@@1 $ly@@2 |tail#0|)))))))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@2) |xs#0@@2|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$X@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$X@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$X@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$X@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) ($reveal Bool) (|xs#0@@3| T@U) (|b#0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@3| |b#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0|)))) (and (let ((|r#0| (_module.__default.Split $ly@@3 reveal__module._default.Split |xs#0@@3| |b#0|)))
(= (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@3|) (+ (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0|))) (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0|)))))) ($Is DatatypeTypeType (_module.__default.Split $ly@@3 $reveal |xs#0@@3| |b#0|) (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |638|
 :pattern ( (_module.__default.Split $ly@@3 $reveal |xs#0@@3| |b#0|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|xs#0@@4| T@U) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@4|) (LitInt |b#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@0|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(|_module.__default.Split#canCall| |tail#3@@0| (LitInt |b#0@@0|)))) (= (_module.__default.Split ($LS $ly@@4) true (Lit DatatypeTypeType |xs#0@@4|) (LitInt |b#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(let ((|x#2| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |xs#0@@4|)))))))
(let ((|R#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $ly@@4) reveal__module._default.Split |tail#2@@0| (LitInt |b#0@@0|))))))
(let ((|L#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $ly@@4) reveal__module._default.Split |tail#2@@0| (LitInt |b#0@@0|))))))
(ite (< |x#2| |b#0@@0|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2|)) |L#2@@1|)) ($Box DatatypeTypeType |R#2@@1|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#2@@1|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2|)) |R#2@@1|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :weight 3
 :skolemid |641|
 :pattern ( (_module.__default.Split ($LS $ly@@4) true (Lit DatatypeTypeType |xs#0@@4|) (LitInt |b#0@@0|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.List| d@@6) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (|$IsA#_module.List| d@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|xs#0@@5| T@U) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@5| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@1|)))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|tail#1@@0| (_module.List.tail |xs#0@@5|)))
(|_module.__default.Split#canCall| |tail#1@@0| |b#0@@1|))) (= (_module.__default.Split ($LS $ly@@5) true |xs#0@@5| |b#0@@1|) (ite (_module.List.Nil_q |xs#0@@5|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#0@@0| (_module.List.tail |xs#0@@5|)))
(let ((|x#0@@1| (U_2_int ($Unbox intType (_module.List.head |xs#0@@5|)))))
(let ((|R#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split $ly@@5 reveal__module._default.Split |tail#0@@0| |b#0@@1|)))))
(let ((|L#0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split $ly@@5 reveal__module._default.Split |tail#0@@0| |b#0@@1|)))))
(ite (< |x#0@@1| |b#0@@1|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@1|)) |L#0|)) ($Box DatatypeTypeType |R#0|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@1|)) |R#0|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |640|
 :pattern ( (_module.__default.Split ($LS $ly@@5) true |xs#0@@5| |b#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|xs#0@@6| T@U) (|n#0@@0| Int) (|len#0@@0| Int) ) (!  (=> (or (|_module.__default.SMN_k_k#canCall| |xs#0@@6| |n#0@@0| |len#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@0|)) (<= (LitInt 0) |len#0@@0|)) (= |len#0@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@6|))))) (<= (LitInt 0) (_module.__default.SMN_k_k $ly@@6 |xs#0@@6| |n#0@@0| |len#0@@0|)))
 :qid |SmallestMissingNumberfunctionaldfy.77:10|
 :skolemid |626|
 :pattern ( (_module.__default.SMN_k_k $ly@@6 |xs#0@@6| |n#0@@0| |len#0@@0|))
))))
(assert (forall ((_module.List$X@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)) (or (_module.List.Nil_q d@@7) (_module.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( (_module.List.Cons_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
 :pattern ( (_module.List.Nil_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
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
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.List.Nil_q a@@1) (_module.List.Nil_q b@@1)) (|_module.List#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (|_module.List#Equal| a@@1 b@@1) (_module.List.Nil_q a@@1))
 :pattern ( (|_module.List#Equal| a@@1 b@@1) (_module.List.Nil_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |760|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |769|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |771|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((_module.List$X@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$X@@4)) _module.List$X@@4)
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (Tclass._module.List _module.List$X@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |770|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |772|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall (($ly@@7 T@U) (|xs#0@@7| T@U) (|n#0@@1| Int) (|len#0@@1| Int) ) (! (= (_module.__default.SMN_k_k ($LS $ly@@7) |xs#0@@7| |n#0@@1| |len#0@@1|) (_module.__default.SMN_k_k $ly@@7 |xs#0@@7| |n#0@@1| |len#0@@1|))
 :qid |SmallestMissingNumberfunctionaldfy.77:10|
 :skolemid |624|
 :pattern ( (_module.__default.SMN_k_k ($LS $ly@@7) |xs#0@@7| |n#0@@1| |len#0@@1|))
)))
(assert (forall (($ly@@8 T@U) ($reveal@@0 Bool) (|xs#0@@8| T@U) (|b#0@@2| Int) ) (! (= (_module.__default.Split ($LS $ly@@8) $reveal@@0 |xs#0@@8| |b#0@@2|) (_module.__default.Split $ly@@8 $reveal@@0 |xs#0@@8| |b#0@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |636|
 :pattern ( (_module.__default.Split ($LS $ly@@8) $reveal@@0 |xs#0@@8| |b#0@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@8 T@U) (_module.List$X@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
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
 :skolemid |778|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|xs#0@@9| T@U) (|n#0@@2| Int) (|len#0@@2| Int) ) (!  (=> (or (|_module.__default.SMN_k_k#canCall| |xs#0@@9| |n#0@@2| (LitInt |len#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@2|)) (<= (LitInt 0) |len#0@@2|)) (= (LitInt |len#0@@2|) (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@9|))))) (and (and (|$IsA#_module.List| |xs#0@@9|) (=> (not (|_module.List#Equal| |xs#0@@9| |#_module.List.Nil|)) (let ((|half#1| (LitInt (+ (Div |len#0@@2| (LitInt 2)) 1))))
 (and (|_module.__default.Split#canCall| |xs#0@@9| (+ |n#0@@2| |half#1|)) (let ((|R#1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@2| |half#1|))))))
(let ((|L#1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@2| |half#1|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#1|) (let ((|llen#1| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1|)))
 (and (=> (< |llen#1| |half#1|) (|_module.__default.SMN_k_k#canCall| |L#1| |n#0@@2| |llen#1|)) (=> (<= |half#1| |llen#1|) (|_module.__default.SMN_k_k#canCall| |R#1| (+ |n#0@@2| |llen#1|) (- |len#0@@2| |llen#1|)))))))))))) (= (_module.__default.SMN_k_k ($LS $ly@@9) |xs#0@@9| |n#0@@2| (LitInt |len#0@@2|)) (ite (|_module.List#Equal| |xs#0@@9| |#_module.List.Nil|) |n#0@@2| (let ((|half#1@@0| (LitInt (+ (Div |len#0@@2| (LitInt 2)) 1))))
(let ((|R#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@2| |half#1@@0|))))))
(let ((|L#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@2| |half#1@@0|))))))
(let ((|llen#1@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1@@0|)))
(ite (< |llen#1@@0| |half#1@@0|) (_module.__default.SMN_k_k ($LS $ly@@9) |L#1@@0| |n#0@@2| |llen#1@@0|) (_module.__default.SMN_k_k ($LS $ly@@9) |R#1@@0| (+ |n#0@@2| |llen#1@@0|) (- |len#0@@2| |llen#1@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.77:10|
 :weight 3
 :skolemid |629|
 :pattern ( (_module.__default.SMN_k_k ($LS $ly@@9) |xs#0@@9| |n#0@@2| (LitInt |len#0@@2|)))
))))
(assert (forall ((_module.List$X@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.List _module.List$X@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.List _module.List$X@@6))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsBox bx@@2 (Tclass._module.List _module.List$X@@6)))
)))
(assert (forall ((d@@10 T@U) (_module.List$X@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$X@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |768|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@2 T@U) ($ly@@10 T@U) (|xs#0@@10| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@2 |xs#0@@10|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.Length$_T0@@2)))) (<= (LitInt 0) (_module.__default.Length _module._default.Length$_T0@@2 $ly@@10 |xs#0@@10|)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@2 $ly@@10 |xs#0@@10|))
))))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.List$X@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$X@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$X@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|xs#0@@11| T@U) (|n#0@@3| Int) (|len#0@@3| Int) ) (!  (=> (or (|_module.__default.SMN_k_k#canCall| |xs#0@@11| |n#0@@3| |len#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@3|)) (<= (LitInt 0) |len#0@@3|)) (= |len#0@@3| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@11|))))) (and (and (|$IsA#_module.List| |xs#0@@11|) (=> (not (|_module.List#Equal| |xs#0@@11| |#_module.List.Nil|)) (let ((|half#0| (+ (Div |len#0@@3| (LitInt 2)) 1)))
 (and (|_module.__default.Split#canCall| |xs#0@@11| (+ |n#0@@3| |half#0|)) (let ((|R#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@11| (+ |n#0@@3| |half#0|))))))
(let ((|L#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@11| (+ |n#0@@3| |half#0|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#0@@0|) (let ((|llen#0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0@@0|)))
 (and (=> (< |llen#0| |half#0|) (|_module.__default.SMN_k_k#canCall| |L#0@@0| |n#0@@3| |llen#0|)) (=> (<= |half#0| |llen#0|) (|_module.__default.SMN_k_k#canCall| |R#0@@0| (+ |n#0@@3| |llen#0|) (- |len#0@@3| |llen#0|)))))))))))) (= (_module.__default.SMN_k_k ($LS $ly@@11) |xs#0@@11| |n#0@@3| |len#0@@3|) (ite (|_module.List#Equal| |xs#0@@11| |#_module.List.Nil|) |n#0@@3| (let ((|half#0@@0| (+ (Div |len#0@@3| (LitInt 2)) 1)))
(let ((|R#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@11| (+ |n#0@@3| |half#0@@0|))))))
(let ((|L#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@11| (+ |n#0@@3| |half#0@@0|))))))
(let ((|llen#0@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0@@1|)))
(ite (< |llen#0@@0| |half#0@@0|) (_module.__default.SMN_k_k $ly@@11 |L#0@@1| |n#0@@3| |llen#0@@0|) (_module.__default.SMN_k_k $ly@@11 |R#0@@1| (+ |n#0@@3| |llen#0@@0|) (- |len#0@@3| |llen#0@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.77:10|
 :skolemid |628|
 :pattern ( (_module.__default.SMN_k_k ($LS $ly@@11) |xs#0@@11| |n#0@@3| |len#0@@3|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |half#Z#0@0| () Int)
(declare-fun |llen#Z#0@0| () Int)
(declare-fun |R#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n#0@@4| () Int)
(declare-fun |##n#1@0| () Int)
(declare-fun |len#0@@4| () Int)
(declare-fun |##len#1@0| () Int)
(declare-fun |L#Z#0@0| () T@U)
(declare-fun |xs#0@@12| () T@U)
(declare-fun |let#0#0#0| () Int)
(declare-fun |##b#0@0| () Int)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |let#2#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.SMN_k_k)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon11_Else_correct  (=> (and (<= |half#Z#0@0| |llen#Z#0@0|) ($IsAlloc DatatypeTypeType |R#Z#0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 12)) ($Is intType (int_2_U (+ |n#0@@4| |llen#Z#0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |llen#Z#0@0|)) Tclass._System.nat) (=> (and (= |##n#1@0| (+ |n#0@@4| |llen#Z#0@0|)) ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 11)) ($Is intType (int_2_U (- |len#0@@4| |llen#Z#0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |len#0@@4| |llen#Z#0@0|)) Tclass._System.nat) (=> (and (= |##len#1@0| (- |len#0@@4| |llen#Z#0@0|)) ($IsAlloc intType (int_2_U |##len#1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (= |##len#1@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |R#Z#0@0|))) (=> (= |##len#1@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |R#Z#0@0|)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (<= 0 |len#0@@4|) (= |##len#1@0| |len#0@@4|))) (=> (or (<= 0 |len#0@@4|) (= |##len#1@0| |len#0@@4|)) (=> (= (ControlFlow 0 8) (- 0 7)) (< |##len#1@0| |len#0@@4|)))))))))))))))
(let ((anon11_Then_correct  (=> (and (and (< |llen#Z#0@0| |half#Z#0@0|) ($IsAlloc DatatypeTypeType |L#Z#0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (and ($IsAlloc intType (int_2_U |n#0@@4|) Tclass._System.nat $Heap) ($IsAlloc intType (int_2_U |llen#Z#0@0|) Tclass._System.nat $Heap))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (= |llen#Z#0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |L#Z#0@0|))) (=> (= |llen#Z#0@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#Z#0@0|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 |len#0@@4|) (= |llen#Z#0@0| |len#0@@4|))) (=> (or (<= 0 |len#0@@4|) (= |llen#Z#0@0| |len#0@@4|)) (=> (= (ControlFlow 0 4) (- 0 3)) (< |llen#Z#0@0| |len#0@@4|)))))))))
(let ((anon10_Else_correct  (=> (not (|_module.List#Equal| |xs#0@@12| |#_module.List.Nil|)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (and (and (= |let#0#0#0| (+ (Div |len#0@@4| (LitInt 2)) 1)) ($Is intType (int_2_U |let#0#0#0|) TInt)) (and (= |half#Z#0@0| |let#0#0#0|) ($IsAlloc DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._System.nat) $Heap))) (and (=> (= (ControlFlow 0 13) (- 0 14)) ($Is intType (int_2_U (+ |n#0@@4| |half#Z#0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |half#Z#0@0|)) Tclass._System.nat) (=> (= |##b#0@0| (+ |n#0@@4| |half#Z#0@0|)) (=> (and ($IsAlloc intType (int_2_U |##b#0@0|) Tclass._System.nat $Heap) (|_module.__default.Split#canCall| |xs#0@@12| (+ |n#0@@4| |half#Z#0@0|))) (=> (and (and (_System.Tuple2.___hMake2_q (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@12| (+ |n#0@@4| |half#Z#0@0|))) (= |let#1#0#0| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@12| (+ |n#0@@4| |half#Z#0@0|)))) (and (|_module.__default.Split#canCall| |xs#0@@12| (+ |n#0@@4| |half#Z#0@0|)) ($Is DatatypeTypeType |let#1#0#0| (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat))))) (=> (and (and (and (_System.Tuple2.___hMake2_q |let#1#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#Z#0@0|) ($Box DatatypeTypeType |R#Z#0@0|)) |let#1#0#0|)) (and ($IsAlloc DatatypeTypeType |L#Z#0@0| (Tclass._module.List Tclass._System.nat) $Heap) (|_module.__default.Length#canCall| Tclass._System.nat |L#Z#0@0|))) (and (and (= |let#2#0#0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#Z#0@0|)) (|_module.__default.Length#canCall| Tclass._System.nat |L#Z#0@0|)) (and ($Is intType (int_2_U |let#2#0#0|) Tclass._System.nat) (= |llen#Z#0@0| |let#2#0#0|)))) (and (=> (= (ControlFlow 0 13) 4) anon11_Then_correct) (=> (= (ControlFlow 0 13) 8) anon11_Else_correct))))))))))))))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAlloc DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._System.nat) $Heap)) (and (|_module.__default.Length#canCall| Tclass._System.nat |xs#0@@12|) (= |len#0@@4| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@12|)))) (and (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 16) 13) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._System.nat))) (and (and (<= (LitInt 0) |n#0@@4|) (<= (LitInt 0) |len#0@@4|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 16)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
