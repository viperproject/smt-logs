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
(declare-fun Tagclass.Regression.List () T@U)
(declare-fun |##Regression.List.Nil| () T@U)
(declare-fun |##Regression.List.Cons| () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Regression.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Regression.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Regression.List#Equal| (T@U T@U) Bool)
(declare-fun Regression.List.Cons_q (T@U) Bool)
(declare-fun Regression.List._h1 (T@U) T@U)
(declare-fun Regression.List.tl (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#Regression.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Regression.List.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Regression.__default.Length (T@U T@U Bool T@U) Int)
(declare-fun |Regression.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun reveal_Regression._default.Length () Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Tclass.Regression.List_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.Regression.List |##Regression.List.Nil| |##Regression.List.Cons| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#Regression.List.Nil|) |##Regression.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((Regression.List$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A) $h))
 :qid |unknown.0:0|
 :skolemid |7014|
 :pattern ( ($IsAlloc DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A) $h))
)))
(assert (forall ((Regression.List$A@@0 T@U) ) (! ($Is DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A@@0))
 :qid |unknown.0:0|
 :skolemid |7013|
 :pattern ( ($Is DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Regression.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |7032|
 :pattern ( (|Regression.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (Regression.List.Cons_q a@@0) (Regression.List.Cons_q b@@0)) (= (|Regression.List#Equal| a@@0 b@@0)  (and (= (Regression.List._h1 a@@0) (Regression.List._h1 b@@0)) (|Regression.List#Equal| (Regression.List.tl a@@0) (Regression.List.tl b@@0)))))
 :qid |unknown.0:0|
 :skolemid |7031|
 :pattern ( (|Regression.List#Equal| a@@0 b@@0) (Regression.List.Cons_q a@@0))
 :pattern ( (|Regression.List#Equal| a@@0 b@@0) (Regression.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6533|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6531|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Regression.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Regression.List Regression.List$A@@1))  (and ($IsBox |a#6#0#0| Regression.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.Regression.List Regression.List$A@@1))))
 :qid |unknown.0:0|
 :skolemid |7019|
 :pattern ( ($Is DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Regression.List Regression.List$A@@1)))
)))
(assert (forall ((d T@U) ) (! (= (Regression.List.Nil_q d) (= (DatatypeCtorId d) |##Regression.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |7011|
 :pattern ( (Regression.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Regression.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Regression.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |7016|
 :pattern ( (Regression.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6542|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A T@U) ($ly T@U) ($reveal Bool) (|s#0| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A |s#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass.Regression.List Regression._default.Length$A)))) (<= (LitInt 0) (Regression.__default.Length Regression._default.Length$A $ly reveal_Regression._default.Length |s#0|)))
 :qid |unknown.0:0|
 :skolemid |7005|
 :pattern ( (Regression.__default.Length Regression._default.Length$A $ly $reveal |s#0|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (Regression.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Regression.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7017|
)))
 :qid |unknown.0:0|
 :skolemid |7018|
 :pattern ( (Regression.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Regression.List.Nil_q d@@2) (= d@@2 |#Regression.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |7012|
 :pattern ( (Regression.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6555|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((Regression.List$A@@2 T@U) ) (!  (and (= (Tag (Tclass.Regression.List Regression.List$A@@2)) Tagclass.Regression.List) (= (TagFamily (Tclass.Regression.List Regression.List$A@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |6995|
 :pattern ( (Tclass.Regression.List Regression.List$A@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A@@0 T@U) ($ly@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A@@0 (Lit DatatypeTypeType |s#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| (Tclass.Regression.List Regression._default.Length$A@@0)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (Regression.List.Cons_q (Lit DatatypeTypeType |s#0@@0|))))) (|Regression.__default.Length#canCall| Regression._default.Length$A@@0 (Lit DatatypeTypeType (Regression.List.tl (Lit DatatypeTypeType |s#0@@0|))))) (= (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) true (Lit DatatypeTypeType |s#0@@0|)) (ite (Regression.List.Cons_q (Lit DatatypeTypeType |s#0@@0|)) (+ 1 (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) reveal_Regression._default.Length (Lit DatatypeTypeType (Regression.List.tl (Lit DatatypeTypeType |s#0@@0|))))) 0))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7008|
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) true (Lit DatatypeTypeType |s#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A@@1 T@U) ($ly@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A@@1 |s#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@1| (Tclass.Regression.List Regression._default.Length$A@@1)))) (and (=> (Regression.List.Cons_q |s#0@@1|) (|Regression.__default.Length#canCall| Regression._default.Length$A@@1 (Regression.List.tl |s#0@@1|))) (= (Regression.__default.Length Regression._default.Length$A@@1 ($LS $ly@@1) true |s#0@@1|) (ite (Regression.List.Cons_q |s#0@@1|) (+ 1 (Regression.__default.Length Regression._default.Length$A@@1 $ly@@1 reveal_Regression._default.Length (Regression.List.tl |s#0@@1|))) 0))))
 :qid |unknown.0:0|
 :skolemid |7007|
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@1 ($LS $ly@@1) true |s#0@@1|))
))))
(assert (forall ((Regression.List$A@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)) (or (Regression.List.Nil_q d@@3) (Regression.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |7029|
 :pattern ( (Regression.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)))
 :pattern ( (Regression.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6543|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6554|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Regression.List.Nil_q a@@1) (Regression.List.Nil_q b@@1)) (|Regression.List#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |7030|
 :pattern ( (|Regression.List#Equal| a@@1 b@@1) (Regression.List.Nil_q a@@1))
 :pattern ( (|Regression.List#Equal| a@@1 b@@1) (Regression.List.Nil_q b@@1))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Regression.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Regression.List.Cons|)
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7015|
 :pattern ( (|#Regression.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Regression.List._h1 (|#Regression.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7024|
 :pattern ( (|#Regression.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Regression.List.tl (|#Regression.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7026|
 :pattern ( (|#Regression.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((Regression.List$A@@4 T@U) ) (! (= (Tclass.Regression.List_0 (Tclass.Regression.List Regression.List$A@@4)) Regression.List$A@@4)
 :qid |unknown.0:0|
 :skolemid |6996|
 :pattern ( (Tclass.Regression.List Regression.List$A@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6541|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Regression.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7025|
 :pattern ( (|#Regression.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Regression.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7027|
 :pattern ( (|#Regression.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (Regression.List$A@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Regression.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Regression.List Regression.List$A@@5) $h@@0))) ($IsAllocBox (Regression.List._h1 d@@4) Regression.List$A@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |7021|
 :pattern ( ($IsAllocBox (Regression.List._h1 d@@4) Regression.List$A@@5 $h@@0))
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
 :skolemid |8292|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |6600|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((Regression._default.Length$A@@2 T@U) ($ly@@2 T@U) ($reveal@@0 Bool) (|s#0@@2| T@U) ) (! (= (Regression.__default.Length Regression._default.Length$A@@2 ($LS $ly@@2) $reveal@@0 |s#0@@2|) (Regression.__default.Length Regression._default.Length$A@@2 $ly@@2 $reveal@@0 |s#0@@2|))
 :qid |unknown.0:0|
 :skolemid |7003|
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@2 ($LS $ly@@2) $reveal@@0 |s#0@@2|))
)))
(assert (forall ((Regression.List$A@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Regression.List Regression.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.Regression.List Regression.List$A@@6))))
 :qid |unknown.0:0|
 :skolemid |6997|
 :pattern ( ($IsBox bx@@0 (Tclass.Regression.List Regression.List$A@@6)))
)))
(assert (forall ((d@@6 T@U) (Regression.List$A@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Regression.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Regression.List Regression.List$A@@7) $h@@1))) ($IsAlloc DatatypeTypeType (Regression.List.tl d@@6) (Tclass.Regression.List Regression.List$A@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |7022|
 :pattern ( ($IsAlloc DatatypeTypeType (Regression.List.tl d@@6) (Tclass.Regression.List Regression.List$A@@7) $h@@1))
)))
(assert (= |#Regression.List.Nil| (Lit DatatypeTypeType |#Regression.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Regression.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Regression.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |OpaqueFunctionsdfy.269:33|
 :skolemid |7023|
 :pattern ( (|#Regression.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6534|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6532|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6577|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((Regression.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Regression.List Regression.List$A@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| Regression.List$A@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Regression.List Regression.List$A@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |7020|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Regression.List Regression.List$A@@8) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6556|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Regression._default.Length$A@@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |s#0@@3| () T@U)
(declare-fun |##s#1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Regression.__default.Length)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (<= (LitInt 0) (Regression.__default.Length Regression._default.Length$A@@3 ($LS ($LS $LZ)) reveal_Regression._default.Length |s#0@@3|)))))
(let ((anon8_Else_correct  (=> (and (and (not (Regression.List.Cons_q |s#0@@3|)) (= (Regression.__default.Length Regression._default.Length$A@@3 ($LS $LZ) reveal_Regression._default.Length |s#0@@3|) (LitInt 0))) (and ($Is intType (int_2_U (Regression.__default.Length Regression._default.Length$A@@3 ($LS $LZ) reveal_Regression._default.Length |s#0@@3|)) TInt) (= (ControlFlow 0 8) 4))) GeneratedUnifiedExit_correct)))
(let ((anon8_Then_correct  (=> (Regression.List.Cons_q |s#0@@3|) (and (=> (= (ControlFlow 0 5) (- 0 7)) (Regression.List.Cons_q |s#0@@3|)) (=> (Regression.List.Cons_q |s#0@@3|) (=> (and (= |##s#1@0| (Regression.List.tl |s#0@@3|)) ($IsAlloc DatatypeTypeType |##s#1@0| (Tclass.Regression.List Regression._default.Length$A@@3) $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |##s#1@0|) (DtRank |s#0@@3|))) (=> (< (DtRank |##s#1@0|) (DtRank |s#0@@3|)) (=> (|Regression.__default.Length#canCall| Regression._default.Length$A@@3 (Regression.List.tl |s#0@@3|)) (=> (and (and (= (Regression.__default.Length Regression._default.Length$A@@3 ($LS $LZ) reveal_Regression._default.Length |s#0@@3|) (+ 1 (Regression.__default.Length Regression._default.Length$A@@3 ($LS $LZ) reveal_Regression._default.Length (Regression.List.tl |s#0@@3|)))) (|Regression.__default.Length#canCall| Regression._default.Length$A@@3 (Regression.List.tl |s#0@@3|))) (and ($Is intType (int_2_U (Regression.__default.Length Regression._default.Length$A@@3 ($LS $LZ) reveal_Regression._default.Length |s#0@@3|)) TInt) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct))))))))))
(let ((anon7_Then_correct  (=> (and ($IsAlloc DatatypeTypeType |s#0@@3| (Tclass.Regression.List Regression._default.Length$A@@3) $Heap) (= (ControlFlow 0 2) (- 0 1))) (or (|Regression.List#Equal| |s#0@@3| |s#0@@3|) (< (DtRank |s#0@@3|) (DtRank |s#0@@3|))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 2) anon7_Then_correct) (=> (= (ControlFlow 0 9) 5) anon8_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |s#0@@3| (Tclass.Regression.List Regression._default.Length$A@@3))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
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
