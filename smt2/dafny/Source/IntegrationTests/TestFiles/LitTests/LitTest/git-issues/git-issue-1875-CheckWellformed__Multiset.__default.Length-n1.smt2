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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Multiset.List () T@U)
(declare-fun Tagclass.Multiset.Box () T@U)
(declare-fun |##Multiset.List.Nil| () T@U)
(declare-fun |##Multiset.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Box () T@U)
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
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#Multiset.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass.Multiset.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun Tclass.Multiset.Box (T@U) T@U)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun Multiset.__default.Length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Multiset.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |$let#0_l| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Multiset.List.Nil_q (T@U) Bool)
(declare-fun Multiset.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Multiset.List.t (T@U) T@U)
(declare-fun Multiset.List._h3 (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Tclass.Multiset.List_0 (T@U) T@U)
(declare-fun Tclass.Multiset.Box_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Multiset.__default.Length#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass.Multiset.List Tagclass.Multiset.Box |##Multiset.List.Nil| |##Multiset.List.Cons| tytagFamily$List tytagFamily$Box)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor MultiSetType) 4)))
(assert (forall ((Multiset.List$T T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#Multiset.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Multiset.List Multiset.List$T) $h)  (and ($IsAllocBox |a#6#0#0| Multiset.List$T $h) ($IsAlloc MultiSetType |a#6#1#0| (Tclass.Multiset.Box (Tclass.Multiset.List Multiset.List$T)) $h))))
 :qid |unknown.0:0|
 :skolemid |2075|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Multiset.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Multiset.List Multiset.List$T) $h))
)))
(assert (forall ((Multiset.Box$T T@U) (|b#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc MultiSetType |b#0| (Tclass.Multiset.Box Multiset.Box$T) $h@@0) ($IsAlloc MultiSetType |b#0| (TMultiSet Multiset.Box$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsAlloc MultiSetType |b#0| (Tclass.Multiset.Box Multiset.Box$T) $h@@0))
)))
(assert (forall ((Multiset._default.Length$T T@U) ($ly T@U) (|l#0| T@U) ) (! (= (Multiset.__default.Length Multiset._default.Length$T ($LS $ly) |l#0|) (Multiset.__default.Length Multiset._default.Length$T $ly |l#0|))
 :qid |unknown.0:0|
 :skolemid |2049|
 :pattern ( (Multiset.__default.Length Multiset._default.Length$T ($LS $ly) |l#0|))
)))
(assert (= (DatatypeCtorId |#Multiset.List.Nil|) |##Multiset.List.Nil|))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |1622|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((Multiset.List$T@@0 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Multiset.List.Nil| (Tclass.Multiset.List Multiset.List$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( ($IsAlloc DatatypeTypeType |#Multiset.List.Nil| (Tclass.Multiset.List Multiset.List$T@@0) $h@@1))
)))
(assert (forall ((Multiset.List$T@@1 T@U) ) (! ($Is DatatypeTypeType |#Multiset.List.Nil| (Tclass.Multiset.List Multiset.List$T@@1))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($Is DatatypeTypeType |#Multiset.List.Nil| (Tclass.Multiset.List Multiset.List$T@@1)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1587|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1585|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Multiset._default.Length$T@@0 T@U) (q T@U) ) (!  (=> (|$let#0$canCall| Multiset._default.Length$T@@0 q) (and ($Is DatatypeTypeType (|$let#0_l| Multiset._default.Length$T@@0 q) (Tclass.Multiset.List Multiset._default.Length$T@@0)) (> (|MultiSet#Multiplicity| q ($Box DatatypeTypeType (|$let#0_l| Multiset._default.Length$T@@0 q))) 0)))
 :qid |gitissue1875dfy.64:9|
 :skolemid |2059|
 :pattern ( (|$let#0_l| Multiset._default.Length$T@@0 q))
)))
(assert (forall ((d T@U) ) (! (= (Multiset.List.Nil_q d) (= (DatatypeCtorId d) |##Multiset.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (Multiset.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Multiset.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Multiset.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( (Multiset.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1596|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Multiset.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Multiset.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |gitissue1875dfy.58:37|
 :skolemid |2072|
)))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( (Multiset.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Multiset.List.Nil_q d@@2) (= d@@2 |#Multiset.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( (Multiset.List.Nil_q d@@2))
)))
(assert (forall ((Multiset.List$T@@2 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Multiset.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Multiset.List Multiset.List$T@@2))  (and ($IsBox |a#6#0#0@@0| Multiset.List$T@@2) ($Is MultiSetType |a#6#1#0@@0| (Tclass.Multiset.Box (Tclass.Multiset.List Multiset.List$T@@2)))))
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( ($Is DatatypeTypeType (|#Multiset.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Multiset.List Multiset.List$T@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1609|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((Multiset.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Multiset.List Multiset.List$T@@3)) Tagclass.Multiset.List) (= (TagFamily (Tclass.Multiset.List Multiset.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2051|
 :pattern ( (Tclass.Multiset.List Multiset.List$T@@3))
)))
(assert (forall ((Multiset.Box$T@@0 T@U) ) (!  (and (= (Tag (Tclass.Multiset.Box Multiset.Box$T@@0)) Tagclass.Multiset.Box) (= (TagFamily (Tclass.Multiset.Box Multiset.Box$T@@0)) tytagFamily$Box))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( (Tclass.Multiset.Box Multiset.Box$T@@0))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (d@@3 T@U) ) (!  (=> (> (|MultiSet#Multiplicity| |a#11#1#0| ($Box DatatypeTypeType d@@3)) 0) (< (DtRank d@@3) (DtRank (|#Multiset.List.Cons| |a#11#0#0| |a#11#1#0|))))
 :qid |gitissue1875dfy.58:37|
 :skolemid |2082|
 :pattern ( (|MultiSet#Multiplicity| |a#11#1#0| ($Box DatatypeTypeType d@@3)) (|#Multiset.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((Multiset.Box$T@@1 T@U) (|b#0@@0| T@U) ) (! (= ($Is MultiSetType |b#0@@0| (Tclass.Multiset.Box Multiset.Box$T@@1))  (and ($Is MultiSetType |b#0@@0| (TMultiSet Multiset.Box$T@@1)) (= (|MultiSet#Card| |b#0@@0|) (LitInt 1))))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($Is MultiSetType |b#0@@0| (Tclass.Multiset.Box Multiset.Box$T@@1)))
)))
(assert (forall ((Multiset.List$T@@4 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass.Multiset.List Multiset.List$T@@4)) (or (Multiset.List.Nil_q d@@4) (Multiset.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2084|
 :pattern ( (Multiset.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.Multiset.List Multiset.List$T@@4)))
 :pattern ( (Multiset.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.Multiset.List Multiset.List$T@@4)))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |1620|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |1621|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1597|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1608|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |1753|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |1754|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |1755|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |1757|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Multiset.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Multiset.List.Cons|)
 :qid |gitissue1875dfy.58:37|
 :skolemid |2070|
 :pattern ( (|#Multiset.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Multiset.List.t (|#Multiset.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |gitissue1875dfy.58:37|
 :skolemid |2079|
 :pattern ( (|#Multiset.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Multiset.List._h3 (|#Multiset.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue1875dfy.58:37|
 :skolemid |2081|
 :pattern ( (|#Multiset.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |1575|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |1576|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((Multiset.List$T@@5 T@U) ) (! (= (Tclass.Multiset.List_0 (Tclass.Multiset.List Multiset.List$T@@5)) Multiset.List$T@@5)
 :qid |unknown.0:0|
 :skolemid |2052|
 :pattern ( (Tclass.Multiset.List Multiset.List$T@@5))
)))
(assert (forall ((Multiset.Box$T@@2 T@U) ) (! (= (Tclass.Multiset.Box_0 (Tclass.Multiset.Box Multiset.Box$T@@2)) Multiset.Box$T@@2)
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( (Tclass.Multiset.Box Multiset.Box$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1595|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Multiset.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |gitissue1875dfy.58:37|
 :skolemid |2080|
 :pattern ( (|#Multiset.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |1758|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |1759|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((d@@5 T@U) (Multiset.List$T@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Multiset.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.Multiset.List Multiset.List$T@@6) $h@@2))) ($IsAllocBox (Multiset.List.t d@@5) Multiset.List$T@@6 $h@@2))
 :qid |unknown.0:0|
 :skolemid |2076|
 :pattern ( ($IsAllocBox (Multiset.List.t d@@5) Multiset.List$T@@6 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2609|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1654|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Multiset._default.Length$T@@1 T@U) ($ly@@0 T@U) ($Heap T@U) (|l#0@@1| T@U) ) (!  (=> (or (|Multiset.__default.Length#canCall| Multiset._default.Length$T@@1 |l#0@@1|) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |l#0@@1| (Tclass.Multiset.List Multiset._default.Length$T@@1))))) (and (=> (not (Multiset.List.Nil_q |l#0@@1|)) (let ((|q#2| (Multiset.List._h3 |l#0@@1|)))
 (and (|$let#0$canCall| Multiset._default.Length$T@@1 |q#2|) (|Multiset.__default.Length#canCall| Multiset._default.Length$T@@1 (|$let#0_l| Multiset._default.Length$T@@1 |q#2|))))) (= (Multiset.__default.Length Multiset._default.Length$T@@1 ($LS $ly@@0) |l#0@@1|) (ite (Multiset.List.Nil_q |l#0@@1|) 0 (let ((|q#0| (Multiset.List._h3 |l#0@@1|)))
(let ((|l#1@@0| (|$let#0_l| Multiset._default.Length$T@@1 |q#0|)))
(Multiset.__default.Length Multiset._default.Length$T@@1 $ly@@0 |l#1@@0|)))))))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( (Multiset.__default.Length Multiset._default.Length$T@@1 ($LS $ly@@0) |l#0@@1|) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |1604|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((Multiset.List$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.Multiset.List Multiset.List$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass.Multiset.List Multiset.List$T@@7))))
 :qid |unknown.0:0|
 :skolemid |2053|
 :pattern ( ($IsBox bx@@3 (Tclass.Multiset.List Multiset.List$T@@7)))
)))
(assert (forall ((Multiset.Box$T@@3 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Multiset.Box Multiset.Box$T@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@4)) bx@@4) ($Is MultiSetType ($Unbox MultiSetType bx@@4) (Tclass.Multiset.Box Multiset.Box$T@@3))))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($IsBox bx@@4 (Tclass.Multiset.Box Multiset.Box$T@@3)))
)))
(assert (= |#Multiset.List.Nil| (Lit DatatypeTypeType |#Multiset.List.Nil|)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Multiset._default.Length$T@@2 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|l#0@@2| T@U) ) (!  (=> (or (|Multiset.__default.Length#canCall| Multiset._default.Length$T@@2 (Lit DatatypeTypeType |l#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |l#0@@2| (Tclass.Multiset.List Multiset._default.Length$T@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Multiset.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)))))) (let ((|q#4| (Lit MultiSetType (Multiset.List._h3 (Lit DatatypeTypeType |l#0@@2|)))))
 (and (|$let#0$canCall| Multiset._default.Length$T@@2 |q#4|) (|Multiset.__default.Length#canCall| Multiset._default.Length$T@@2 (|$let#0_l| Multiset._default.Length$T@@2 |q#4|))))) (= (Multiset.__default.Length Multiset._default.Length$T@@2 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)) (ite (Multiset.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)) 0 (let ((|q#3| (Lit MultiSetType (Multiset.List._h3 (Lit DatatypeTypeType |l#0@@2|)))))
(let ((|l#2@@0| (|$let#0_l| Multiset._default.Length$T@@2 |q#3|)))
(Multiset.__default.Length Multiset._default.Length$T@@2 ($LS $ly@@1) |l#2@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2061|
 :pattern ( (Multiset.__default.Length Multiset._default.Length$T@@2 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Multiset.List.Cons| (Lit BoxType |a#7#0#0|) (Lit MultiSetType |a#7#1#0|)) (Lit DatatypeTypeType (|#Multiset.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |gitissue1875dfy.58:37|
 :skolemid |2078|
 :pattern ( (|#Multiset.List.Cons| (Lit BoxType |a#7#0#0|) (Lit MultiSetType |a#7#1#0|)))
)))
(assert (forall ((d@@7 T@U) (Multiset.List$T@@8 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Multiset.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.Multiset.List Multiset.List$T@@8) $h@@3))) ($IsAlloc MultiSetType (Multiset.List._h3 d@@7) (Tclass.Multiset.Box (Tclass.Multiset.List Multiset.List$T@@8)) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($IsAlloc MultiSetType (Multiset.List._h3 d@@7) (Tclass.Multiset.Box (Tclass.Multiset.List Multiset.List$T@@8)) $h@@3))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1588|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1586|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@5)) ($IsAllocBox bx@@5 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |1641|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |1642|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1631|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1610|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Multiset._default.Length$T@@3 () T@U)
(declare-fun |q#Z#0@0| () T@U)
(declare-fun |l#3@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |l#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Multiset.__default.Length)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon7_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#Multiset.List.Nil|) (Tclass.Multiset.List Multiset._default.Length$T@@3)) (> (|MultiSet#Multiplicity| |q#Z#0@0| ($Box DatatypeTypeType (Lit DatatypeTypeType |#Multiset.List.Nil|))) 0)) (exists ((|l#4| T@U) ) (!  (and ($Is DatatypeTypeType |l#4| (Tclass.Multiset.List Multiset._default.Length$T@@3)) (> (|MultiSet#Multiplicity| |q#Z#0@0| ($Box DatatypeTypeType |l#4|)) 0))
 :qid |gitissue1875dfy.64:13|
 :skolemid |2062|
)))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#Multiset.List.Nil|) (Tclass.Multiset.List Multiset._default.Length$T@@3)) (> (|MultiSet#Multiplicity| |q#Z#0@0| ($Box DatatypeTypeType (Lit DatatypeTypeType |#Multiset.List.Nil|))) 0)) (exists ((|l#4@@0| T@U) ) (!  (and ($Is DatatypeTypeType |l#4@@0| (Tclass.Multiset.List Multiset._default.Length$T@@3)) (> (|MultiSet#Multiplicity| |q#Z#0@0| ($Box DatatypeTypeType |l#4@@0|)) 0))
 :qid |gitissue1875dfy.64:13|
 :skolemid |2062|
))) (=> (and (and (and ($Is DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3) $Heap@@1)) (> (|MultiSet#Multiplicity| |q#Z#0@0| ($Box DatatypeTypeType |l#3@0|)) 0)) (and ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3) $Heap@@1) (= (ControlFlow 0 5) (- 0 4)))) (< (DtRank |l#3@0|) (DtRank |l#0@@3|)))))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3) $Heap@@1))) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (and ($Is DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Multiset.List Multiset._default.Length$T@@3) $Heap@@1)) (= (ControlFlow 0 7) 5)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= |l#0@@3| (|#Multiset.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($IsBox |_mcc#0#0| Multiset._default.Length$T@@3) ($Is MultiSetType |_mcc#1#0| (Tclass.Multiset.Box (Tclass.Multiset.List Multiset._default.Length$T@@3)))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is MultiSetType |let#0#0#0| (Tclass.Multiset.Box (Tclass.Multiset.List Multiset._default.Length$T@@3))))) (and (and (= |q#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| Multiset._default.Length$T@@3) (= |t#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 9) 7) anon13_Then_correct) (=> (= (ControlFlow 0 9) 8) anon13_Else_correct))))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |l#0@@3| |#Multiset.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 10) 9) anon12_Then_correct) (=> (= (ControlFlow 0 10) 3) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 11) 1) anon10_Then_correct) (=> (= (ControlFlow 0 11) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is DatatypeTypeType |l#0@@3| (Tclass.Multiset.List Multiset._default.Length$T@@3))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
