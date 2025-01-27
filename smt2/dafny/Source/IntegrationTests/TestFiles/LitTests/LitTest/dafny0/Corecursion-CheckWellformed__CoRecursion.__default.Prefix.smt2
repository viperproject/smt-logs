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
(declare-fun Tagclass.CoRecursion.Stream () T@U)
(declare-fun Tagclass.CoRecursion.List () T@U)
(declare-fun |##CoRecursion.Stream.More| () T@U)
(declare-fun |##CoRecursion.List.Nil| () T@U)
(declare-fun |##CoRecursion.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#CoRecursion.List.Nil| () T@U)
(declare-fun CoRecursion.Stream.More_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.CoRecursion.Stream (T@U) T@U)
(declare-fun Tclass.CoRecursion.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun CoRecursion.__default.Prefix (T@U T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |CoRecursion.__default.Prefix#canCall| (T@U Int T@U) Bool)
(declare-fun CoRecursion.Stream.rest (T@U) T@U)
(declare-fun |#CoRecursion.List.Cons| (T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun CoRecursion.Stream.head (T@U) T@U)
(declare-fun |#CoRecursion.Stream.More| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun CoRecursion.List.Nil_q (T@U) Bool)
(declare-fun CoRecursion.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun CoRecursion.List._h0 (T@U) T@U)
(declare-fun CoRecursion.List._h1 (T@U) T@U)
(declare-fun Tclass.CoRecursion.Stream_0 (T@U) T@U)
(declare-fun Tclass.CoRecursion.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.CoRecursion.Stream Tagclass.CoRecursion.List |##CoRecursion.Stream.More| |##CoRecursion.List.Nil| |##CoRecursion.List.Cons| tytagFamily$nat tytagFamily$Stream tytagFamily$List)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#CoRecursion.List.Nil|) |##CoRecursion.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((CoRecursion.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.CoRecursion.Stream CoRecursion.Stream$T)) (CoRecursion.Stream.More_q d))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (CoRecursion.Stream.More_q d) ($Is DatatypeTypeType d (Tclass.CoRecursion.Stream CoRecursion.Stream$T)))
)))
(assert (forall ((CoRecursion.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T) $h@@0))
)))
(assert (forall ((CoRecursion.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($Is DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T@@0)))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0 T@U) ($ly T@U) (|n#0| Int) (|s#0| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0 (LitInt |n#0|) (Lit DatatypeTypeType |s#0|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0|) ($Is DatatypeTypeType |s#0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q (Lit DatatypeTypeType |s#0|)) (and (CoRecursion.Stream.More_q (Lit DatatypeTypeType |s#0|)) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0 (LitInt (- |n#0| 1)) (Lit DatatypeTypeType (CoRecursion.Stream.rest (Lit DatatypeTypeType |s#0|))))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly) (LitInt |n#0|) (Lit DatatypeTypeType |s#0|)) (ite (= (LitInt |n#0|) (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (Lit BoxType (CoRecursion.Stream.head (Lit DatatypeTypeType |s#0|))) (Lit DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly) (LitInt (- |n#0| 1)) (Lit DatatypeTypeType (CoRecursion.Stream.rest (Lit DatatypeTypeType |s#0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |562|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly) (LitInt |n#0|) (Lit DatatypeTypeType |s#0|)))
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
(assert (forall ((CoRecursion.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0| |a#2#1#0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0))  (and ($IsBox |a#2#0#0| CoRecursion.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0| |a#2#1#0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0)))
)))
(assert (forall ((CoRecursion.List$T@@1 T@U) (|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0| |a#11#1#0|) (Tclass.CoRecursion.List CoRecursion.List$T@@1))  (and ($IsBox |a#11#0#0| CoRecursion.List$T@@1) ($Is DatatypeTypeType |a#11#1#0| (Tclass.CoRecursion.List CoRecursion.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($Is DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0| |a#11#1#0|) (Tclass.CoRecursion.List CoRecursion.List$T@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (CoRecursion.Stream.More_q d@@0) (= (DatatypeCtorId d@@0) |##CoRecursion.Stream.More|))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (CoRecursion.Stream.More_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (CoRecursion.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##CoRecursion.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (CoRecursion.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (CoRecursion.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##CoRecursion.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (CoRecursion.List.Cons_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (CoRecursion.Stream.More_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#CoRecursion.Stream.More| |a#1#0#0| |a#1#1#0|))
 :qid |Corecursiondfy.7:31|
 :skolemid |566|
)))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (CoRecursion.Stream.More_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (CoRecursion.List.Cons_q d@@4) (exists ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= d@@4 (|#CoRecursion.List.Cons| |a#10#0#0| |a#10#1#0|))
 :qid |Corecursiondfy.26:33|
 :skolemid |593|
)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (CoRecursion.List.Cons_q d@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (CoRecursion._default.Prefix$_T0@@0 T@U) ($ly@@0 T@U) (|n#0@@0| Int) (|s#0@@0| T@U) ) (!  (=> (and (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@0 |n#0@@0| |s#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) (and ($Is DatatypeTypeType |s#0@@0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@0)) ($IsAlloc DatatypeTypeType |s#0@@0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@0) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@0 $ly@@0 |n#0@@0| |s#0@@0|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@0) $Heap))
 :qid |Corecursiondfy.28:18|
 :skolemid |558|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@0 $ly@@0 |n#0@@0| |s#0@@0|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@0) $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@1 T@U) ($ly@@1 T@U) (|n#0@@1| Int) (|s#0@@1| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@1 |n#0@@1| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@1|) ($Is DatatypeTypeType |s#0@@1| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@1))))) ($Is DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@1 $ly@@1 |n#0@@1| |s#0@@1|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@1 $ly@@1 |n#0@@1| |s#0@@1|))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (CoRecursion.List.Nil_q d@@5) (= d@@5 |#CoRecursion.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (CoRecursion.List.Nil_q d@@5))
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
(assert (forall ((CoRecursion.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1)) Tagclass.CoRecursion.Stream) (= (TagFamily (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1))
)))
(assert (forall ((CoRecursion.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.CoRecursion.List CoRecursion.List$T@@2)) Tagclass.CoRecursion.List) (= (TagFamily (Tclass.CoRecursion.List CoRecursion.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Tclass.CoRecursion.List CoRecursion.List$T@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@2 T@U) ($ly@@2 T@U) (|n#0@@2| Int) (|s#0@@2| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@2 (LitInt |n#0@@2|) |s#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |s#0@@2| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@2))))) (and (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q |s#0@@2|) (and (CoRecursion.Stream.More_q |s#0@@2|) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@2 (LitInt (- |n#0@@2| 1)) (CoRecursion.Stream.rest |s#0@@2|))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@2) (LitInt |n#0@@2|) |s#0@@2|) (ite (= (LitInt |n#0@@2|) (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (CoRecursion.Stream.head |s#0@@2|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@2) (LitInt (- |n#0@@2| 1)) (CoRecursion.Stream.rest |s#0@@2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |561|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@2) (LitInt |n#0@@2|) |s#0@@2|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((CoRecursion.List$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.CoRecursion.List CoRecursion.List$T@@3)) (or (CoRecursion.List.Nil_q d@@6) (CoRecursion.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (CoRecursion.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.CoRecursion.List CoRecursion.List$T@@3)))
 :pattern ( (CoRecursion.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.CoRecursion.List CoRecursion.List$T@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#CoRecursion.Stream.More| |a#0#0#0| |a#0#1#0|)) |##CoRecursion.Stream.More|)
 :qid |Corecursiondfy.7:31|
 :skolemid |564|
 :pattern ( (|#CoRecursion.Stream.More| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (CoRecursion.Stream.head (|#CoRecursion.Stream.More| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Corecursiondfy.7:31|
 :skolemid |572|
 :pattern ( (|#CoRecursion.Stream.More| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (CoRecursion.Stream.rest (|#CoRecursion.Stream.More| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Corecursiondfy.7:31|
 :skolemid |573|
 :pattern ( (|#CoRecursion.Stream.More| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (DatatypeCtorId (|#CoRecursion.List.Cons| |a#9#0#0| |a#9#1#0|)) |##CoRecursion.List.Cons|)
 :qid |Corecursiondfy.26:33|
 :skolemid |591|
 :pattern ( (|#CoRecursion.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= (CoRecursion.List._h0 (|#CoRecursion.List.Cons| |a#13#0#0| |a#13#1#0|)) |a#13#0#0|)
 :qid |Corecursiondfy.26:33|
 :skolemid |600|
 :pattern ( (|#CoRecursion.List.Cons| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (CoRecursion.List._h1 (|#CoRecursion.List.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Corecursiondfy.26:33|
 :skolemid |602|
 :pattern ( (|#CoRecursion.List.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((CoRecursion.Stream$T@@2 T@U) ) (! (= (Tclass.CoRecursion.Stream_0 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@2)) CoRecursion.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@2))
)))
(assert (forall ((CoRecursion.List$T@@4 T@U) ) (! (= (Tclass.CoRecursion.List_0 (Tclass.CoRecursion.List CoRecursion.List$T@@4)) CoRecursion.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (Tclass.CoRecursion.List CoRecursion.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (< (BoxRank |a#14#0#0|) (DtRank (|#CoRecursion.List.Cons| |a#14#0#0| |a#14#1#0|)))
 :qid |Corecursiondfy.26:33|
 :skolemid |601|
 :pattern ( (|#CoRecursion.List.Cons| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (< (DtRank |a#16#1#0|) (DtRank (|#CoRecursion.List.Cons| |a#16#0#0| |a#16#1#0|)))
 :qid |Corecursiondfy.26:33|
 :skolemid |603|
 :pattern ( (|#CoRecursion.List.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((d@@7 T@U) (CoRecursion.Stream$T@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (CoRecursion.Stream.More_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@3) $h@@1))) ($IsAllocBox (CoRecursion.Stream.head d@@7) CoRecursion.Stream$T@@3 $h@@1))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAllocBox (CoRecursion.Stream.head d@@7) CoRecursion.Stream$T@@3 $h@@1))
)))
(assert (forall ((d@@8 T@U) (CoRecursion.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (CoRecursion.List.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.CoRecursion.List CoRecursion.List$T@@5) $h@@2))) ($IsAllocBox (CoRecursion.List._h0 d@@8) CoRecursion.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAllocBox (CoRecursion.List._h0 d@@8) CoRecursion.List$T@@5 $h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3513|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((CoRecursion._default.Prefix$_T0@@3 T@U) ($ly@@3 T@U) (|n#0@@3| Int) (|s#0@@3| T@U) ) (! (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 ($LS $ly@@3) |n#0@@3| |s#0@@3|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 $ly@@3 |n#0@@3| |s#0@@3|))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 ($LS $ly@@3) |n#0@@3| |s#0@@3|))
)))
(assert (forall ((CoRecursion.Stream$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4)))
)))
(assert (forall ((CoRecursion.List$T@@6 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.CoRecursion.List CoRecursion.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.CoRecursion.List CoRecursion.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@1 (Tclass.CoRecursion.List CoRecursion.List$T@@6)))
)))
(assert (forall ((d@@10 T@U) (CoRecursion.Stream$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (CoRecursion.Stream.More_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@3))) ($IsAlloc DatatypeTypeType (CoRecursion.Stream.rest d@@10) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.Stream.rest d@@10) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@3))
)))
(assert (forall ((d@@11 T@U) (CoRecursion.List$T@@7 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (CoRecursion.List.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@4))) ($IsAlloc DatatypeTypeType (CoRecursion.List._h1 d@@11) (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@4))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.List._h1 d@@11) (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@4))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#CoRecursion.List.Nil| (Lit DatatypeTypeType |#CoRecursion.List.Nil|)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (|#CoRecursion.List.Cons| (Lit BoxType |a#12#0#0|) (Lit DatatypeTypeType |a#12#1#0|)) (Lit DatatypeTypeType (|#CoRecursion.List.Cons| |a#12#0#0| |a#12#1#0|)))
 :qid |Corecursiondfy.26:33|
 :skolemid |599|
 :pattern ( (|#CoRecursion.List.Cons| (Lit BoxType |a#12#0#0|) (Lit DatatypeTypeType |a#12#1#0|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@4 T@U) ($ly@@4 T@U) (|n#0@@4| Int) (|s#0@@4| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@4 |n#0@@4| |s#0@@4|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@4|) ($Is DatatypeTypeType |s#0@@4| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@4))))) (and (=> (or (not (= |n#0@@4| (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q |s#0@@4|) (and (CoRecursion.Stream.More_q |s#0@@4|) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@4 (- |n#0@@4| 1) (CoRecursion.Stream.rest |s#0@@4|))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 ($LS $ly@@4) |n#0@@4| |s#0@@4|) (ite (= |n#0@@4| (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (CoRecursion.Stream.head |s#0@@4|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 $ly@@4 (- |n#0@@4| 1) (CoRecursion.Stream.rest |s#0@@4|)))))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 ($LS $ly@@4) |n#0@@4| |s#0@@4|))
))))
(assert (forall ((CoRecursion.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@5)  (and ($IsAllocBox |a#2#0#0@@0| CoRecursion.Stream$T@@6 $h@@5) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@5))
)))
(assert (forall ((CoRecursion.List$T@@8 T@U) (|a#11#0#0@@0| T@U) (|a#11#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@6)  (and ($IsAllocBox |a#11#0#0@@0| CoRecursion.List$T@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#11#1#0@@0| (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsAlloc DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@6))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@5| () Int)
(declare-fun |s#0@@5| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun CoRecursion._default.Prefix$_T0@@5 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$CoRecursion.__default.Prefix)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Else_correct  (=> (and (or (not (= |n#0@@5| (LitInt 0))) (not true)) (CoRecursion.Stream.More_q |s#0@@5|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($Is intType (int_2_U (- |n#0@@5| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@5| 1)) Tclass._System.nat) (=> (= |##n#0@0| (- |n#0@@5| 1)) (=> (and (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@0) (CoRecursion.Stream.More_q |s#0@@5|)) (and (= |##s#0@0| (CoRecursion.Stream.rest |s#0@@5|)) ($IsAlloc DatatypeTypeType |##s#0@0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@5) $Heap@@0))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 |n#0@@5|) (= |##n#0@0| |n#0@@5|))) (=> (or (<= 0 |n#0@@5|) (= |##n#0@0| |n#0@@5|)) (=> (= (ControlFlow 0 4) (- 0 3)) (< |##n#0@0| |n#0@@5|)))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (<= (LitInt 0) |n#0@@5|) ($Is DatatypeTypeType |s#0@@5| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@5))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
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
