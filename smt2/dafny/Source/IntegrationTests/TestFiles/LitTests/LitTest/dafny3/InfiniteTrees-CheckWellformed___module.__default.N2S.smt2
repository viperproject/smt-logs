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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.CoOption () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |##_module.CoOption.None| () T@U)
(declare-fun |##_module.CoOption.Some| () T@U)
(declare-fun |##_module.Number.Succ| () T@U)
(declare-fun |##_module.Number.Zero| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$Number () T@U)
(declare-fun tytagFamily$CoOption () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.N2S (T@U T@U) T@U)
(declare-fun |_module.__default.N2S#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.CoOption (T@U) T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun |#_module.CoOption.None| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.CoOption.None_q (T@U) Bool)
(declare-fun _module.CoOption.Some_q (T@U) Bool)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.CoOption.Some| (T@U) T@U)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun |#_module.Number.Zero| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.__default.N2S_k (T@U Int T@U) T@U)
(declare-fun |_module.__default.N2S_k#canCall| (Int T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.Number._h4 (T@U) T@U)
(declare-fun _module.Number._h5 (T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun Tclass._module.CoOption_0 (T@U) T@U)
(declare-fun _module.CoOption.get (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.Stream Tagclass._module.Number Tagclass._module.CoOption |##_module.Stream.Nil| |##_module.Stream.Cons| |##_module.CoOption.None| |##_module.CoOption.Some| |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$nat tytagFamily$Stream tytagFamily$Number tytagFamily$CoOption)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|r#0| T@U) ) (!  (=> (or (|_module.__default.N2S#canCall| |r#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |r#0| (Tclass._module.CoOption Tclass._module.Number)))) ($Is DatatypeTypeType (_module.__default.N2S $ly |r#0|) (Tclass._module.Stream TInt)))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1006|
 :pattern ( (_module.__default.N2S $ly |r#0|))
))))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (= (DatatypeCtorId |#_module.CoOption.None|) |##_module.CoOption.None|))
(assert (forall ((_module.Stream$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T) $h@@0))
)))
(assert (forall ((_module.CoOption$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T) $h@@1))
)))
(assert (forall ((_module.Stream$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((_module.CoOption$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T@@0))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($Is DatatypeTypeType |#_module.CoOption.None| (Tclass._module.CoOption _module.CoOption$T@@0)))
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
(assert (forall ((_module.Stream$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1))  (and ($IsBox |a#5#0#0| _module.Stream$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Stream.Nil_q d) (= (DatatypeCtorId d) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.Stream.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.CoOption.None_q d@@1) (= (DatatypeCtorId d@@1) |##_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1187|
 :pattern ( (_module.CoOption.None_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.CoOption.Some_q d@@2) (= (DatatypeCtorId d@@2) |##_module.CoOption.Some|))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( (_module.CoOption.Some_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Number.Succ_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Number.Succ|))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (_module.Number.Succ_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Number.Zero_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Number.Zero_q d@@4))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Stream.Cons_q d@@5) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@5 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1152|
)))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (_module.Stream.Cons_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Stream.Nil_q d@@6) (= d@@6 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (_module.Stream.Nil_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.CoOption.None_q d@@7) (= d@@7 |#_module.CoOption.None|))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( (_module.CoOption.None_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.CoOption.Some_q d@@8) (exists ((|a#18#0#0| T@U) ) (! (= d@@8 (|#_module.CoOption.Some| |a#18#0#0|))
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1193|
)))
 :qid |unknown.0:0|
 :skolemid |1194|
 :pattern ( (_module.CoOption.Some_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Number.Succ_q d@@9) (exists ((|a#22#0#0| T@U) ) (! (= d@@9 (|#_module.Number.Succ| |a#22#0#0|))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1214|
)))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (_module.Number.Succ_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Number.Zero_q d@@10) (exists ((|a#28#0#0| T@U) ) (! (= d@@10 (|#_module.Number.Zero| |a#28#0#0|))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1223|
)))
 :qid |unknown.0:0|
 :skolemid |1224|
 :pattern ( (_module.Number.Zero_q d@@10))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@2)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@2)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((_module.CoOption$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.CoOption _module.CoOption$T@@1)) Tagclass._module.CoOption) (= (TagFamily (Tclass._module.CoOption _module.CoOption$T@@1)) tytagFamily$CoOption))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( (Tclass._module.CoOption _module.CoOption$T@@1))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Number) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($IsBox bx@@0 Tclass._module.Number))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#23#0#0| Tclass._module.Number))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1216|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#23#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0| Int) (|num#0| T@U) ) (!  (=> (or (|_module.__default.N2S_k#canCall| |n#0| |num#0|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0|) ($Is DatatypeTypeType |num#0| Tclass._module.Number)))) ($Is DatatypeTypeType (_module.__default.N2S_k $ly@@0 |n#0| |num#0|) (Tclass._module.Stream TInt)))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1012|
 :pattern ( (_module.__default.N2S_k $ly@@0 |n#0| |num#0|))
))))
(assert (forall (($ly@@1 T@U) (|n#0@@0| Int) (|num#0@@0| T@U) ) (! (= (_module.__default.N2S_k ($LS $ly@@1) |n#0@@0| |num#0@@0|) (_module.__default.N2S_k $ly@@1 |n#0@@0| |num#0@@0|))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1010|
 :pattern ( (_module.__default.N2S_k ($LS $ly@@1) |n#0@@0| |num#0@@0|))
)))
(assert (forall ((_module.CoOption$T@@2 T@U) (|a#19#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0|) (Tclass._module.CoOption _module.CoOption$T@@2) $h@@2) ($IsAllocBox |a#19#0#0| _module.CoOption$T@@2 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1196|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0|) (Tclass._module.CoOption _module.CoOption$T@@2) $h@@2))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#29#0#0| (Tclass._module.CoOption Tclass._module.Number)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1225|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Zero| |a#29#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@1| Int) (|num#0@@1| T@U) ) (!  (=> (or (|_module.__default.N2S_k#canCall| |n#0@@1| |num#0@@1|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@1|) ($Is DatatypeTypeType |num#0@@1| Tclass._module.Number)))) (and (and (=> (_module.Number.Succ_q |num#0@@1|) (let ((|next#1| (_module.Number._h4 |num#0@@1|)))
(|_module.__default.N2S_k#canCall| (+ |n#0@@1| 1) |next#1|))) (=> (not (_module.Number.Succ_q |num#0@@1|)) (let ((|r#1| (_module.Number._h5 |num#0@@1|)))
(|_module.__default.N2S#canCall| |r#1|)))) (= (_module.__default.N2S_k ($LS $ly@@2) |n#0@@1| |num#0@@1|) (ite (_module.Number.Succ_q |num#0@@1|) (let ((|next#0| (_module.Number._h4 |num#0@@1|)))
(_module.__default.N2S_k $ly@@2 (+ |n#0@@1| 1) |next#0|)) (let ((|r#0@@0| (_module.Number._h5 |num#0@@1|)))
(|#_module.Stream.Cons| ($Box intType (int_2_U |n#0@@1|)) (_module.__default.N2S $ly@@2 |r#0@@0|)))))))
 :qid |InfiniteTreesdfy.494:16|
 :skolemid |1014|
 :pattern ( (_module.__default.N2S_k ($LS $ly@@2) |n#0@@1| |num#0@@1|))
))))
(assert (forall ((_module.Stream$T@@3 T@U) (d@@11 T@U) ) (!  (=> ($Is DatatypeTypeType d@@11 (Tclass._module.Stream _module.Stream$T@@3)) (or (_module.Stream.Nil_q d@@11) (_module.Stream.Cons_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (_module.Stream.Cons_q d@@11) ($Is DatatypeTypeType d@@11 (Tclass._module.Stream _module.Stream$T@@3)))
 :pattern ( (_module.Stream.Nil_q d@@11) ($Is DatatypeTypeType d@@11 (Tclass._module.Stream _module.Stream$T@@3)))
)))
(assert (forall ((_module.CoOption$T@@3 T@U) (d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 (Tclass._module.CoOption _module.CoOption$T@@3)) (or (_module.CoOption.None_q d@@12) (_module.CoOption.Some_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (_module.CoOption.Some_q d@@12) ($Is DatatypeTypeType d@@12 (Tclass._module.CoOption _module.CoOption$T@@3)))
 :pattern ( (_module.CoOption.None_q d@@12) ($Is DatatypeTypeType d@@12 (Tclass._module.CoOption _module.CoOption$T@@3)))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass._module.Number) (or (_module.Number.Succ_q d@@13) (_module.Number.Zero_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |1232|
 :pattern ( (_module.Number.Zero_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Number))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.Cons|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1150|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1158|
 :pattern ( (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |InfiniteTreesdfy.7:35|
 :skolemid |1159|
 :pattern ( (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@4)) _module.Stream$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@4))
)))
(assert (forall ((_module.CoOption$T@@4 T@U) ) (! (= (Tclass._module.CoOption_0 (Tclass._module.CoOption _module.CoOption$T@@4)) _module.CoOption$T@@4)
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( (Tclass._module.CoOption _module.CoOption$T@@4))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.CoOption.Some| |a#17#0#0|)) |##_module.CoOption.Some|)
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1191|
 :pattern ( (|#_module.CoOption.Some| |a#17#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (_module.CoOption.get (|#_module.CoOption.Some| |a#20#0#0|)) |a#20#0#0|)
 :qid |InfiniteTreesdfy.414:38|
 :skolemid |1198|
 :pattern ( (|#_module.CoOption.Some| |a#20#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Succ| |a#21#0#0|)) |##_module.Number.Succ|)
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1212|
 :pattern ( (|#_module.Number.Succ| |a#21#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (_module.Number._h4 (|#_module.Number.Succ| |a#25#0#0|)) |a#25#0#0|)
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1219|
 :pattern ( (|#_module.Number.Succ| |a#25#0#0|))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Zero| |a#27#0#0|)) |##_module.Number.Zero|)
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1221|
 :pattern ( (|#_module.Number.Zero| |a#27#0#0|))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= (_module.Number._h5 (|#_module.Number.Zero| |a#31#0#0|)) |a#31#0#0|)
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1228|
 :pattern ( (|#_module.Number.Zero| |a#31#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.CoOption$T@@5 T@U) (|a#19#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)) ($IsBox |a#19#0#0@@0| _module.CoOption$T@@5))
 :qid |unknown.0:0|
 :skolemid |1195|
 :pattern ( ($Is DatatypeTypeType (|#_module.CoOption.Some| |a#19#0#0@@0|) (Tclass._module.CoOption _module.CoOption$T@@5)))
)))
(assert (forall (($ly@@3 T@U) (|r#0@@1| T@U) ) (! (= (_module.__default.N2S ($LS $ly@@3) |r#0@@1|) (_module.__default.N2S $ly@@3 |r#0@@1|))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1004|
 :pattern ( (_module.__default.N2S ($LS $ly@@3) |r#0@@1|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (< (DtRank |a#26#0#0|) (DtRank (|#_module.Number.Succ| |a#26#0#0|)))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1220|
 :pattern ( (|#_module.Number.Succ| |a#26#0#0|))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (< (DtRank |a#32#0#0|) (DtRank (|#_module.Number.Zero| |a#32#0#0|)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1229|
 :pattern ( (|#_module.Number.Zero| |a#32#0#0|))
)))
(assert (forall ((d@@14 T@U) (_module.Stream$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Stream.Cons_q d@@14) ($IsAlloc DatatypeTypeType d@@14 (Tclass._module.Stream _module.Stream$T@@5) $h@@3))) ($IsAllocBox (_module.Stream.head d@@14) _module.Stream$T@@5 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@14) _module.Stream$T@@5 $h@@3))
)))
(assert (forall ((d@@15 T@U) (_module.CoOption$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.CoOption.Some_q d@@15) ($IsAlloc DatatypeTypeType d@@15 (Tclass._module.CoOption _module.CoOption$T@@6) $h@@4))) ($IsAllocBox (_module.CoOption.get d@@15) _module.CoOption$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( ($IsAllocBox (_module.CoOption.get d@@15) _module.CoOption$T@@6 $h@@4))
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
 :skolemid |1298|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|r#0@@2| T@U) ) (!  (=> (or (|_module.__default.N2S#canCall| |r#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |r#0@@2| (Tclass._module.CoOption Tclass._module.Number)))) (and (=> (not (_module.CoOption.None_q |r#0@@2|)) (let ((|num#1| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@2|))))
(|_module.__default.N2S_k#canCall| (LitInt 0) |num#1|))) (= (_module.__default.N2S ($LS $ly@@4) |r#0@@2|) (ite (_module.CoOption.None_q |r#0@@2|) |#_module.Stream.Nil| (let ((|num#0@@2| ($Unbox DatatypeTypeType (_module.CoOption.get |r#0@@2|))))
(_module.__default.N2S_k $ly@@4 (LitInt 0) |num#0@@2|))))))
 :qid |InfiniteTreesdfy.488:16|
 :skolemid |1008|
 :pattern ( (_module.__default.N2S ($LS $ly@@4) |r#0@@2|))
))))
(assert (forall ((_module.Stream$T@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Stream _module.Stream$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@6)))
)))
(assert (forall ((_module.CoOption$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.CoOption _module.CoOption$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.CoOption _module.CoOption$T@@7))))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsBox bx@@3 (Tclass._module.CoOption _module.CoOption$T@@7)))
)))
(assert (forall ((d@@16 T@U) (_module.Stream$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Stream.Cons_q d@@16) ($IsAlloc DatatypeTypeType d@@16 (Tclass._module.Stream _module.Stream$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@16) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@16) (Tclass._module.Stream _module.Stream$T@@7) $h@@5))
)))
(assert (forall ((d@@17 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@17 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Number $h@@6))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Number $h@@6))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (forall ((d@@18 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Number.Succ_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Number $h@@7))) ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@18) Tclass._module.Number $h@@7))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h4 d@@18) Tclass._module.Number $h@@7))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (|#_module.Number.Succ| (Lit DatatypeTypeType |a#24#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Succ| |a#24#0#0|)))
 :qid |InfiniteTreesdfy.415:24|
 :skolemid |1218|
 :pattern ( (|#_module.Number.Succ| (Lit DatatypeTypeType |a#24#0#0|)))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (|#_module.Number.Zero| (Lit DatatypeTypeType |a#30#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Zero| |a#30#0#0|)))
 :qid |InfiniteTreesdfy.415:39|
 :skolemid |1227|
 :pattern ( (|#_module.Number.Zero| (Lit DatatypeTypeType |a#30#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@19 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Number.Zero_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Number $h@@8))) ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@19) (Tclass._module.CoOption Tclass._module.Number) $h@@8))
 :qid |unknown.0:0|
 :skolemid |1226|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number._h5 d@@19) (Tclass._module.CoOption Tclass._module.Number) $h@@8))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@9)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$T@@8 $h@@9) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$T@@8) $h@@9))))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@8) $h@@9))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |r#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |num#Z#0@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.N2S)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= |r#0@@3| (|#_module.CoOption.Some| ($Box DatatypeTypeType |_mcc#0#0|))) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Number) (= |let#0#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Number) (= |num#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |##n#0@0| (LitInt 0)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap) ($IsAlloc DatatypeTypeType |num#Z#0@0| Tclass._module.Number $Heap)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 (LitInt 1)) (= (LitInt 0) (LitInt 1)))) (=> (or (<= 0 (LitInt 1)) (= (LitInt 0) (LitInt 1))) (=> (= (ControlFlow 0 4) (- 0 3)) (<= (LitInt 0) (LitInt 1)))))))))))))
(let ((anon9_Else_correct  (=> (or (not (= |r#0@@3| |#_module.CoOption.None|)) (not true)) (and (=> (= (ControlFlow 0 8) 4) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |r#0@@3| (Tclass._module.CoOption Tclass._module.Number))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
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
