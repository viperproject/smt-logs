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
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun Tagclass._module.NestedMatchExpr? () T@U)
(declare-fun Tagclass._module.NestedMatchExpr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$NestedMatchExpr () T@U)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.NestedMatchExpr.Cadr (T@U T@U T@U T@U) T@U)
(declare-fun |_module.NestedMatchExpr.Cadr#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.NestedMatchExpr () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun Tclass._module.NestedMatchExpr? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun _module.List._h0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| Tagclass._module.NestedMatchExpr? Tagclass._module.NestedMatchExpr tytagFamily$List tytagFamily$NestedMatchExpr)
)
(assert  (and (= (Ctor refType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.NestedMatchExpr.Cadr$T T@U) (this T@U) (|a#0| T@U) (|Default#0| T@U) ) (!  (=> (and (or (|_module.NestedMatchExpr.Cadr#canCall| _module.NestedMatchExpr.Cadr$T this |a#0| |Default#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($IsAlloc refType this Tclass._module.NestedMatchExpr $Heap)) (and ($Is DatatypeTypeType |a#0| (Tclass._module.List _module.NestedMatchExpr.Cadr$T)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.List _module.NestedMatchExpr.Cadr$T) $Heap))) (and ($IsBox |Default#0| _module.NestedMatchExpr.Cadr$T) ($IsAllocBox |Default#0| _module.NestedMatchExpr.Cadr$T $Heap))))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T this |a#0| |Default#0|) _module.NestedMatchExpr.Cadr$T $Heap))
 :qid |Datatypesdfy.98:18|
 :skolemid |2619|
 :pattern ( ($IsAllocBox (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T this |a#0| |Default#0|) _module.NestedMatchExpr.Cadr$T $Heap))
))))
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.NestedMatchExpr?)  (or (= $o null) (= (dtype $o) Tclass._module.NestedMatchExpr?)))
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( ($Is refType $o Tclass._module.NestedMatchExpr?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.NestedMatchExpr $h) ($IsAlloc refType |c#0| Tclass._module.NestedMatchExpr? $h))
 :qid |unknown.0:0|
 :skolemid |2637|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NestedMatchExpr $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NestedMatchExpr? $h))
)))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2550|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |2549|
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.NestedMatchExpr? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2616|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.NestedMatchExpr? $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1914|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1912|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |2555|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2547|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2552|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1923|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypesdfy.4:31|
 :skolemid |2553|
)))
 :qid |unknown.0:0|
 :skolemid |2554|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2548|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1936|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2479|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.NestedMatchExpr?) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.NestedMatchExpr?)))
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( ($IsBox bx Tclass._module.NestedMatchExpr?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.NestedMatchExpr) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.NestedMatchExpr)))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( ($IsBox bx@@0 Tclass._module.NestedMatchExpr))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.NestedMatchExpr)  (and ($Is refType |c#0@@0| Tclass._module.NestedMatchExpr?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2636|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.NestedMatchExpr))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.NestedMatchExpr?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.NestedMatchExpr.Cadr$T@@0 T@U) (this@@0 T@U) (|a#0@@0| T@U) (|Default#0@@0| T@U) ) (!  (=> (or (|_module.NestedMatchExpr.Cadr#canCall| _module.NestedMatchExpr.Cadr$T@@0 this@@0 |a#0@@0| |Default#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.NestedMatchExpr)) ($Is DatatypeTypeType |a#0@@0| (Tclass._module.List _module.NestedMatchExpr.Cadr$T@@0))) ($IsBox |Default#0@@0| _module.NestedMatchExpr.Cadr$T@@0)))) (= (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@0 this@@0 |a#0@@0| |Default#0@@0|) (ite (_module.List.Nil_q |a#0@@0|) |Default#0@@0| (let ((|t#0| (_module.List._h1 |a#0@@0|)))
(ite (_module.List.Nil_q |t#0|) |Default#0@@0| (let ((|y#0| (_module.List._h0 |t#0|)))
|y#0|))))))
 :qid |unknown.0:0|
 :skolemid |2621|
 :pattern ( (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@0 this@@0 |a#0@@0| |Default#0@@0|))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2565|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1924|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1935|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2551|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2560|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2562|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |2480|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1922|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2561|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2563|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (_module.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@2))) ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |2557|
 :pattern ( ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@5 $h@@2))
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
 :skolemid |2849|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.NestedMatchExpr.Cadr$T@@1 T@U) (this@@1 T@U) (|a#0@@1| T@U) (|Default#0@@1| T@U) ) (!  (=> (or (|_module.NestedMatchExpr.Cadr#canCall| _module.NestedMatchExpr.Cadr$T@@1 (Lit refType this@@1) (Lit DatatypeTypeType |a#0@@1|) (Lit BoxType |Default#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.NestedMatchExpr)) ($Is DatatypeTypeType |a#0@@1| (Tclass._module.List _module.NestedMatchExpr.Cadr$T@@1))) ($IsBox |Default#0@@1| _module.NestedMatchExpr.Cadr$T@@1)))) (= (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@1 (Lit refType this@@1) (Lit DatatypeTypeType |a#0@@1|) (Lit BoxType |Default#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |a#0@@1|)) |Default#0@@1| (let ((|t#4| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |a#0@@1|)))))
(ite (_module.List.Nil_q |t#4|) |Default#0@@1| (let ((|y#4| (Lit BoxType (_module.List._h0 |t#4|))))
|y#4|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2623|
 :pattern ( (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@1 (Lit refType this@@1) (Lit DatatypeTypeType |a#0@@1|) (Lit BoxType |Default#0@@1|)))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1981|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |2481|
 :pattern ( ($IsBox bx@@2 (Tclass._module.List _module.List$T@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.NestedMatchExpr.Cadr$T@@2 T@U) (this@@2 T@U) (|a#0@@2| T@U) (|Default#0@@2| T@U) ) (!  (=> (or (|_module.NestedMatchExpr.Cadr#canCall| _module.NestedMatchExpr.Cadr$T@@2 this@@2 |a#0@@2| |Default#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.NestedMatchExpr)) ($Is DatatypeTypeType |a#0@@2| (Tclass._module.List _module.NestedMatchExpr.Cadr$T@@2))) ($IsBox |Default#0@@2| _module.NestedMatchExpr.Cadr$T@@2)))) ($IsBox (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@2 this@@2 |a#0@@2| |Default#0@@2|) _module.NestedMatchExpr.Cadr$T@@2))
 :qid |unknown.0:0|
 :skolemid |2618|
 :pattern ( (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@2 this@@2 |a#0@@2| |Default#0@@2|))
))))
(assert (forall ((d@@6 T@U) (_module.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2558|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@7) $h@@3))
)))
(assert (= (Tag Tclass._module.NestedMatchExpr?) Tagclass._module.NestedMatchExpr?))
(assert (= (TagFamily Tclass._module.NestedMatchExpr?) tytagFamily$NestedMatchExpr))
(assert (= (Tag Tclass._module.NestedMatchExpr) Tagclass._module.NestedMatchExpr))
(assert (= (TagFamily Tclass._module.NestedMatchExpr) tytagFamily$NestedMatchExpr))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.NestedMatchExpr.Cadr$T@@3 T@U) (this@@3 T@U) (|a#0@@3| T@U) (|Default#0@@3| T@U) ) (!  (=> (or (|_module.NestedMatchExpr.Cadr#canCall| _module.NestedMatchExpr.Cadr$T@@3 this@@3 (Lit DatatypeTypeType |a#0@@3|) |Default#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.NestedMatchExpr)) ($Is DatatypeTypeType |a#0@@3| (Tclass._module.List _module.NestedMatchExpr.Cadr$T@@3))) ($IsBox |Default#0@@3| _module.NestedMatchExpr.Cadr$T@@3)))) (= (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@3 this@@3 (Lit DatatypeTypeType |a#0@@3|) |Default#0@@3|) (ite (_module.List.Nil_q (Lit DatatypeTypeType |a#0@@3|)) |Default#0@@3| (let ((|t#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |a#0@@3|)))))
(ite (_module.List.Nil_q |t#2|) |Default#0@@3| (let ((|y#2| (Lit BoxType (_module.List._h0 |t#2|))))
|y#2|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2622|
 :pattern ( (_module.NestedMatchExpr.Cadr _module.NestedMatchExpr.Cadr$T@@3 this@@3 (Lit DatatypeTypeType |a#0@@3|) |Default#0@@3|))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2559|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1915|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1913|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1958|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@4)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@4) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |2556|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@4))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1937|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |list#0@0| () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |t#0_0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |h#0_0@0| () Int)
(declare-fun this@@4 () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |list#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.NestedMatchExpr.TestNesting0)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct  (=> (and (and (and (and (= |list#0@0| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#0#0_0@0|)) |_mcc#1#0_0@0|)) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List TInt))) (and ($Is DatatypeTypeType |t#0_0@0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |t#0_0@0| (Tclass._module.List TInt) $Heap@@0))) (and (and (= |let#0_0#0#0| |_mcc#1#0_0@0|) ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List TInt))) (and (= |t#0_0@0| |let#0_0#0#0|) (= |let#0_1#0#0| |_mcc#0#0_0@0|)))) (and (and (and ($Is intType (int_2_U |let#0_1#0#0|) TInt) (= |h#0_0@0| |let#0_1#0#0|)) (and ($IsAllocBox ($Box refType this@@4) Tclass._module.NestedMatchExpr? $Heap@@0) ($IsAlloc DatatypeTypeType |t#0_0@0| (Tclass._module.List TInt) $Heap@@0))) (and (and ($IsAlloc intType (int_2_U |x#0@0|) TInt $Heap@@0) (|_module.NestedMatchExpr.Cadr#canCall| TInt this@@4 |t#0_0@0| ($Box intType (int_2_U |x#0@0|)))) (and (|_module.NestedMatchExpr.Cadr#canCall| TInt this@@4 |t#0_0@0| ($Box intType (int_2_U |x#0@0|))) (= (ControlFlow 0 4) (- 0 3)))))) (= (U_2_int ($Unbox intType (_module.NestedMatchExpr.Cadr TInt this@@4 |t#0_0@0| ($Box intType (int_2_U |x#0@0|))))) (LitInt 5)))))
(let ((anon4_Else_correct  (=> (or (not (= |list#0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon5_Then_correct) (=> (= (ControlFlow 0 6) 5) anon5_Else_correct)))))
(let ((anon4_Then_correct  (=> (and (= |list#0@0| |#_module.List.Nil|) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (= |x#0@0| (LitInt 5))) (and (= |list#0@0| (Lit DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 3))) (Lit DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 6))) (Lit DatatypeTypeType |#_module.List.Nil|)))))) ($IsAllocBox ($Box refType this@@4) Tclass._module.NestedMatchExpr? $Heap@@0))) (and (and ($IsAlloc DatatypeTypeType |list#0@0| (Tclass._module.List TInt) $Heap@@0) ($IsAlloc intType (int_2_U |x#0@0|) TInt $Heap@@0)) (and (|_module.NestedMatchExpr.Cadr#canCall| TInt this@@4 |list#0@0| ($Box intType (int_2_U |x#0@0|))) (|_module.NestedMatchExpr.Cadr#canCall| TInt this@@4 |list#0@0| ($Box intType (int_2_U |x#0@0|)))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (U_2_int ($Unbox intType (_module.NestedMatchExpr.Cadr TInt this@@4 |list#0@0| ($Box intType (int_2_U |x#0@0|))))) (LitInt 6))) (=> (= (U_2_int ($Unbox intType (_module.NestedMatchExpr.Cadr TInt this@@4 |list#0@0| ($Box intType (int_2_U |x#0@0|))))) (LitInt 6)) (and (=> (= (ControlFlow 0 7) 2) anon4_Then_correct) (=> (= (ControlFlow 0 7) 6) anon4_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.NestedMatchExpr) ($IsAlloc refType this@@4 Tclass._module.NestedMatchExpr $Heap@@0)))) (=> (and (and (and ($Is DatatypeTypeType |list#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |list#0| (Tclass._module.List TInt) $Heap@@0)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
