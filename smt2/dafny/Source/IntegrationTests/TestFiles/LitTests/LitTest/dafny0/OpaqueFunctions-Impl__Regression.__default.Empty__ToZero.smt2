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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Regression.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Regression.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Regression.__default.Empty (T@U) T@U)
(declare-fun |Regression.__default.Empty#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#Regression.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Regression.List.Nil_q (T@U) Bool)
(declare-fun Regression.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Regression.__default.Length (T@U T@U Bool T@U) Int)
(declare-fun |Regression.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun reveal_Regression._default.Length () Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Regression.List.tl (T@U) T@U)
(declare-fun Regression.List._h1 (T@U) T@U)
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
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct alloc Tagclass.Regression.List |##Regression.List.Nil| |##Regression.List.Cons| tytagFamily$List)
)
(assert (= (DatatypeCtorId |#Regression.List.Nil|) |##Regression.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((Regression.List$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A) $h))
 :pattern ( ($IsAlloc DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A) $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Empty$A T@U) ) (!  (=> (or (|Regression.__default.Empty#canCall| Regression._default.Empty$A) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (Regression.__default.Empty Regression._default.Empty$A) (Tclass.Regression.List Regression._default.Empty$A)))
 :pattern ( (Regression.__default.Empty Regression._default.Empty$A))
))))
(assert (forall ((Regression.List$A@@0 T@U) ) (! ($Is DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A@@0))
 :pattern ( ($Is DatatypeTypeType |#Regression.List.Nil| (Tclass.Regression.List Regression.List$A@@0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Regression.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Regression.List Regression.List$A@@1))  (and ($IsBox |a#6#0#0| Regression.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.Regression.List Regression.List$A@@1))))
 :pattern ( ($Is DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Regression.List Regression.List$A@@1)))
)))
(assert (forall ((d T@U) ) (! (= (Regression.List.Nil_q d) (= (DatatypeCtorId d) |##Regression.List.Nil|))
 :pattern ( (Regression.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Regression.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Regression.List.Cons|))
 :pattern ( (Regression.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A T@U) ($ly T@U) ($reveal Bool) (|s#0| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A |s#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass.Regression.List Regression._default.Length$A)))) (<= (LitInt 0) (Regression.__default.Length Regression._default.Length$A $ly reveal_Regression._default.Length |s#0|)))
 :pattern ( (Regression.__default.Length Regression._default.Length$A $ly $reveal |s#0|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (Regression.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (= d@@1 (|#Regression.List.Cons| |a#5#0#0| |a#5#1#0|))))
 :pattern ( (Regression.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Regression.List.Nil_q d@@2) (= d@@2 |#Regression.List.Nil|))
 :pattern ( (Regression.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((Regression.List$A@@2 T@U) ) (!  (and (= (Tag (Tclass.Regression.List Regression.List$A@@2)) Tagclass.Regression.List) (= (TagFamily (Tclass.Regression.List Regression.List$A@@2)) tytagFamily$List))
 :pattern ( (Tclass.Regression.List Regression.List$A@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Empty$A@@0 T@U) ) (!  (=> (or (|Regression.__default.Empty#canCall| Regression._default.Empty$A@@0) (< 1 $FunctionContextHeight)) (= (Regression.__default.Empty Regression._default.Empty$A@@0) (Lit DatatypeTypeType |#Regression.List.Nil|)))
 :pattern ( (Regression.__default.Empty Regression._default.Empty$A@@0))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Empty$A@@1 T@U) ) (!  (=> (or (|Regression.__default.Empty#canCall| Regression._default.Empty$A@@1) (< 1 $FunctionContextHeight)) (= (Regression.__default.Empty Regression._default.Empty$A@@1) (Lit DatatypeTypeType |#Regression.List.Nil|)))
 :weight 3
 :pattern ( (Regression.__default.Empty Regression._default.Empty$A@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A@@0 T@U) ($ly@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A@@0 (Lit DatatypeTypeType |s#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| (Tclass.Regression.List Regression._default.Length$A@@0)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (Regression.List.Cons_q (Lit DatatypeTypeType |s#0@@0|))))) (|Regression.__default.Length#canCall| Regression._default.Length$A@@0 (Lit DatatypeTypeType (Regression.List.tl (Lit DatatypeTypeType |s#0@@0|))))) (= (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) true (Lit DatatypeTypeType |s#0@@0|)) (ite (Regression.List.Cons_q (Lit DatatypeTypeType |s#0@@0|)) (+ 1 (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) reveal_Regression._default.Length (Lit DatatypeTypeType (Regression.List.tl (Lit DatatypeTypeType |s#0@@0|))))) 0))))
 :weight 3
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@0 ($LS $ly@@0) true (Lit DatatypeTypeType |s#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression._default.Length$A@@1 T@U) ($ly@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|Regression.__default.Length#canCall| Regression._default.Length$A@@1 |s#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@1| (Tclass.Regression.List Regression._default.Length$A@@1)))) (and (=> (Regression.List.Cons_q |s#0@@1|) (|Regression.__default.Length#canCall| Regression._default.Length$A@@1 (Regression.List.tl |s#0@@1|))) (= (Regression.__default.Length Regression._default.Length$A@@1 ($LS $ly@@1) true |s#0@@1|) (ite (Regression.List.Cons_q |s#0@@1|) (+ 1 (Regression.__default.Length Regression._default.Length$A@@1 $ly@@1 reveal_Regression._default.Length (Regression.List.tl |s#0@@1|))) 0))))
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@1 ($LS $ly@@1) true |s#0@@1|))
))))
(assert (forall ((Regression.List$A@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)) (or (Regression.List.Nil_q d@@3) (Regression.List.Cons_q d@@3)))
 :pattern ( (Regression.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)))
 :pattern ( (Regression.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Regression.List Regression.List$A@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Regression.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Regression.List.Cons|)
 :pattern ( (|#Regression.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Regression.List._h1 (|#Regression.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :pattern ( (|#Regression.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Regression.List.tl (|#Regression.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :pattern ( (|#Regression.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((Regression.List$A@@4 T@U) ) (! (= (Tclass.Regression.List_0 (Tclass.Regression.List Regression.List$A@@4)) Regression.List$A@@4)
 :pattern ( (Tclass.Regression.List Regression.List$A@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Regression.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :pattern ( (|#Regression.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Regression.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :pattern ( (|#Regression.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (Regression.List$A@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Regression.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Regression.List Regression.List$A@@5) $h@@0))) ($IsAllocBox (Regression.List._h1 d@@4) Regression.List$A@@5 $h@@0))
 :pattern ( ($IsAllocBox (Regression.List._h1 d@@4) Regression.List$A@@5 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (= (Ctor (MapType1Type arg0@@2 arg1)) 7))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((Regression._default.Length$A@@2 T@U) ($ly@@2 T@U) ($reveal@@0 Bool) (|s#0@@2| T@U) ) (! (= (Regression.__default.Length Regression._default.Length$A@@2 ($LS $ly@@2) $reveal@@0 |s#0@@2|) (Regression.__default.Length Regression._default.Length$A@@2 $ly@@2 $reveal@@0 |s#0@@2|))
 :pattern ( (Regression.__default.Length Regression._default.Length$A@@2 ($LS $ly@@2) $reveal@@0 |s#0@@2|))
)))
(assert (forall ((Regression.List$A@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.Regression.List Regression.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.Regression.List Regression.List$A@@6))))
 :pattern ( ($IsBox bx (Tclass.Regression.List Regression.List$A@@6)))
)))
(assert (forall ((d@@6 T@U) (Regression.List$A@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Regression.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Regression.List Regression.List$A@@7) $h@@1))) ($IsAlloc DatatypeTypeType (Regression.List.tl d@@6) (Tclass.Regression.List Regression.List$A@@7) $h@@1))
 :pattern ( ($IsAlloc DatatypeTypeType (Regression.List.tl d@@6) (Tclass.Regression.List Regression.List$A@@7) $h@@1))
)))
(assert (= |#Regression.List.Nil| (Lit DatatypeTypeType |#Regression.List.Nil|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (Regression._default.Empty$A@@2 T@U) ) (!  (=> (and (or (|Regression.__default.Empty#canCall| Regression._default.Empty$A@@2) (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Regression.__default.Empty Regression._default.Empty$A@@2) (Tclass.Regression.List Regression._default.Empty$A@@2) $Heap))
 :pattern ( ($IsAlloc DatatypeTypeType (Regression.__default.Empty Regression._default.Empty$A@@2) (Tclass.Regression.List Regression._default.Empty$A@@2) $Heap))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Regression.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Regression.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :pattern ( (|#Regression.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((Regression.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Regression.List Regression.List$A@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| Regression.List$A@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Regression.List Regression.List$A@@8) $h@@2))))
 :pattern ( ($IsAlloc DatatypeTypeType (|#Regression.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Regression.List Regression.List$A@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Regression._default.Empty_ToZero$A () T@U)
(declare-fun $LZ () T@U)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@0 $Heap@0)) (and reveal_Regression._default.Length (= (ControlFlow 0 2) (- 0 1)))) (= (Regression.__default.Length Regression._default.Empty_ToZero$A ($LS ($LS $LZ)) reveal_Regression._default.Length (Lit DatatypeTypeType (Regression.__default.Empty Regression._default.Empty_ToZero$A))) (LitInt 0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
