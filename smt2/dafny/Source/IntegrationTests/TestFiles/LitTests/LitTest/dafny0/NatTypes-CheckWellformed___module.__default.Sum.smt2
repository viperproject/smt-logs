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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
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
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h4 (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.List._h2 (T@U) Int)
(declare-fun refType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |#_module.List.Cons| (Int T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.List._h3 (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat tytagFamily$object tytagFamily$List)
)
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|list#0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit DatatypeTypeType |list#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0| (Tclass._module.List Tclass._System.object)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |list#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List._h4 (Lit DatatypeTypeType |list#0|)))))
(|_module.__default.Sum#canCall| |tail#3|))) (= (_module.__default.Sum ($LS $ly) (Lit DatatypeTypeType |list#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |list#0|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List._h4 (Lit DatatypeTypeType |list#0|)))))
(let ((|x#2| (LitInt (_module.List._h2 (Lit DatatypeTypeType |list#0|)))))
(LitInt (+ |x#2| (_module.__default.Sum ($LS $ly) |tail#2|)))))))))
 :qid |NatTypesdfy.130:10|
 :weight 3
 :skolemid |576|
 :pattern ( (_module.__default.Sum ($LS $ly) (Lit DatatypeTypeType |list#0|)))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_module.List.Cons|)
 :qid |NatTypesdfy.95:31|
 :skolemid |636|
 :pattern ( (|#_module.List.Cons| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|a#16#0#0| Int) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_module.List._h2 (|#_module.List.Cons| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |NatTypesdfy.95:31|
 :skolemid |647|
 :pattern ( (|#_module.List.Cons| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#17#0#0| Int) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (= (_module.List._h3 (|#_module.List.Cons| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |a#17#1#0|)
 :qid |NatTypesdfy.95:31|
 :skolemid |648|
 :pattern ( (|#_module.List.Cons| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (= (_module.List._h4 (|#_module.List.Cons| |a#19#0#0| |a#19#1#0| |a#19#2#0|)) |a#19#2#0|)
 :qid |NatTypesdfy.95:31|
 :skolemid |650|
 :pattern ( (|#_module.List.Cons| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((_module.List$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#14#0#0| Int) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._module.List _module.List$T@@1) $h@@3)  (and (and ($IsAlloc intType (int_2_U |a#14#0#0|) Tclass._System.nat $h@@3) ($IsAllocBox |a#14#1#0| _module.List$T@@1 $h@@3)) ($IsAlloc DatatypeTypeType |a#14#2#0| (Tclass._module.List _module.List$T@@1) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._module.List _module.List$T@@1) $h@@3))
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
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#13#0#0| Int) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |NatTypesdfy.95:31|
 :skolemid |638|
)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((_module.List$T@@2 T@U) (|a#14#0#0@@0| Int) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._module.List _module.List$T@@2))  (and (and ($Is intType (int_2_U |a#14#0#0@@0|) Tclass._System.nat) ($IsBox |a#14#1#0@@0| _module.List$T@@2)) ($Is DatatypeTypeType |a#14#2#0@@0| (Tclass._module.List _module.List$T@@2))))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._module.List _module.List$T@@2)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (_module.List.Nil_q d@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|list#0@@0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |list#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@0| (Tclass._module.List Tclass._System.object)))) (and (=> (not (_module.List.Nil_q |list#0@@0|)) (let ((|tail#1| (_module.List._h4 |list#0@@0|)))
(|_module.__default.Sum#canCall| |tail#1|))) (= (_module.__default.Sum ($LS $ly@@0) |list#0@@0|) (ite (_module.List.Nil_q |list#0@@0|) 0 (let ((|tail#0| (_module.List._h4 |list#0@@0|)))
(let ((|x#0@@1| (_module.List._h2 |list#0@@0|)))
(+ |x#0@@1| (_module.__default.Sum $ly@@0 |tail#0|))))))))
 :qid |NatTypesdfy.130:10|
 :skolemid |575|
 :pattern ( (_module.__default.Sum ($LS $ly@@0) |list#0@@0|))
))))
(assert (forall ((_module.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@3)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Tclass._module.List _module.List$T@@3))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((_module.List$T@@4 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@4)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@4)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@4)))
)))
(assert (forall ((d@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@4) (exists ((_module.List$T@@5 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@4)
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@4))
)))) ($IsAlloc intType (int_2_U (_module.List._h2 d@@4)) Tclass._System.nat $h@@4))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAlloc intType (int_2_U (_module.List._h2 d@@4)) Tclass._System.nat $h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|list#0@@1| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |list#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@1| (Tclass._module.List Tclass._System.object)))) (<= (LitInt 0) (_module.__default.Sum $ly@@1 |list#0@@1|)))
 :qid |NatTypesdfy.130:10|
 :skolemid |573|
 :pattern ( (_module.__default.Sum $ly@@1 |list#0@@1|))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_module.List.Cons| (LitInt |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit DatatypeTypeType |a#15#2#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |NatTypesdfy.95:31|
 :skolemid |646|
 :pattern ( (|#_module.List.Cons| (LitInt |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit DatatypeTypeType |a#15#2#0|)))
)))
(assert (forall ((_module.List$T@@6 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@6)) _module.List$T@@6)
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (Tclass._module.List _module.List$T@@6))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#18#0#0| Int) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (< (BoxRank |a#18#1#0|) (DtRank (|#_module.List.Cons| |a#18#0#0| |a#18#1#0| |a#18#2#0|)))
 :qid |NatTypesdfy.95:31|
 :skolemid |649|
 :pattern ( (|#_module.List.Cons| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (< (DtRank |a#20#2#0|) (DtRank (|#_module.List.Cons| |a#20#0#0| |a#20#1#0| |a#20#2#0|)))
 :qid |NatTypesdfy.95:31|
 :skolemid |651|
 :pattern ( (|#_module.List.Cons| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall (($ly@@2 T@U) (|list#0@@2| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@2) |list#0@@2|) (_module.__default.Sum $ly@@2 |list#0@@2|))
 :qid |NatTypesdfy.130:10|
 :skolemid |571|
 :pattern ( (_module.__default.Sum ($LS $ly@@2) |list#0@@2|))
)))
(assert (forall ((d@@5 T@U) (_module.List$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@7) $h@@5))) ($IsAllocBox (_module.List._h3 d@@5) _module.List$T@@7 $h@@5))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($IsAllocBox (_module.List._h3 d@@5) _module.List$T@@7 $h@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |691|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module.List$T@@8 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.List _module.List$T@@8)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.List _module.List$T@@8))))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@2 (Tclass._module.List _module.List$T@@8)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@9 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@9) $h@@6))) ($IsAlloc DatatypeTypeType (_module.List._h4 d@@7) (Tclass._module.List _module.List$T@@9) $h@@6))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h4 d@@7) (Tclass._module.List _module.List$T@@9) $h@@6))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |list#0@@3| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |tail#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |y#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () Int)
(declare-fun |x#Z#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Sum)
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
(let ((anon10_Then_correct  (=> (and (= |list#0@@3| (|#_module.List.Cons| |_mcc#0#0| ($Box refType |_mcc#1#0|) |_mcc#2#0|)) (<= (LitInt 0) |_mcc#0#0|)) (=> (and (and ($Is refType |_mcc#1#0| Tclass._System.object) ($Is DatatypeTypeType |_mcc#2#0| (Tclass._module.List Tclass._System.object))) (and (= |let#0#0#0| |_mcc#2#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List Tclass._System.object)))) (=> (and (and (and (= |tail#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#1#0|)) (and ($Is refType |let#1#0#0| Tclass._System.object) (= |y#Z#0@0| |let#1#0#0|))) (and (and (= |let#2#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#2#0#0|) Tclass._System.nat)) (and (= |x#Z#0@0| |let#2#0#0|) ($IsAlloc DatatypeTypeType |tail#Z#0@0| (Tclass._module.List Tclass._System.object) $Heap)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |tail#Z#0@0|) (DtRank |list#0@@3|))) (=> (< (DtRank |tail#Z#0@0|) (DtRank |list#0@@3|)) (=> (and (|_module.__default.Sum#canCall| |tail#Z#0@0|) (= (ControlFlow 0 5) (- 0 4))) ($Is intType (int_2_U (+ |x#Z#0@0| (_module.__default.Sum ($LS $LZ) |tail#Z#0@0|))) Tclass._System.nat)))))))))
(let ((anon9_Else_correct  (=> (or (not (= |list#0@@3| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 8) 5) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (= |list#0@@3| |#_module.List.Nil|) (= (ControlFlow 0 3) (- 0 2))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |list#0@@3| (Tclass._module.List Tclass._System.object))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
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
