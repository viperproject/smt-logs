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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Comprehension.List () T@U)
(declare-fun |##Comprehension.List.Nil| () T@U)
(declare-fun |##Comprehension.List.Cons| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Comprehension.__default.ElementsContainedIn (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun SetType () T@T)
(declare-fun |Comprehension.__default.ElementsContainedIn#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Comprehension.List (T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun Comprehension.List.Nil_q (T@U) Bool)
(declare-fun Comprehension.List._h16 (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun Comprehension.List._h15 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Comprehension.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#Comprehension.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun Comprehension.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.Comprehension.List_0 (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass.Comprehension.List |##Comprehension.List.Nil| |##Comprehension.List.Cons| tytagFamily$List)
)
(assert (= (Tag TBool) TagBool))
(assert  (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SetType) 4)) (= (Ctor BoxType) 5)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Comprehension._default.ElementsContainedIn$X T@U) ($ly T@U) (|xs#0| T@U) (|S#0| T@U) ) (!  (=> (or (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X (Lit DatatypeTypeType |xs#0|) (Lit SetType |S#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X)) ($Is SetType |S#0| (TSet Comprehension._default.ElementsContainedIn$X))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Comprehension.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (Comprehension.List._h16 (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#3| (Lit BoxType (Comprehension.List._h15 (Lit DatatypeTypeType |xs#0|)))))
 (=> (|Set#IsMember| (Lit SetType |S#0|) |x#3|) (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X |tail#3| (Lit SetType |S#0|)))))) (= (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit SetType |S#0|)) (ite (Comprehension.List.Nil_q (Lit DatatypeTypeType |xs#0|)) true (let ((|tail#2| (Lit DatatypeTypeType (Comprehension.List._h16 (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit BoxType (Comprehension.List._h15 (Lit DatatypeTypeType |xs#0|)))))
 (and (|Set#IsMember| (Lit SetType |S#0|) |x#2|) (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X ($LS $ly) |tail#2| (Lit SetType |S#0|)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |5254|
 :pattern ( (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit SetType |S#0|)))
))))
(assert (= (DatatypeCtorId |#Comprehension.List.Nil|) |##Comprehension.List.Nil|))
(assert (forall ((Comprehension.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#Comprehension.List.Nil| (Tclass.Comprehension.List Comprehension.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |5275|
 :pattern ( ($IsAlloc DatatypeTypeType |#Comprehension.List.Nil| (Tclass.Comprehension.List Comprehension.List$T) $h))
)))
(assert (forall ((Comprehension.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#Comprehension.List.Nil| (Tclass.Comprehension.List Comprehension.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |5274|
 :pattern ( ($Is DatatypeTypeType |#Comprehension.List.Nil| (Tclass.Comprehension.List Comprehension.List$T@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4561|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((Comprehension.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Comprehension.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Comprehension.List Comprehension.List$T@@1))  (and ($IsBox |a#6#0#0| Comprehension.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.Comprehension.List Comprehension.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |5280|
 :pattern ( ($Is DatatypeTypeType (|#Comprehension.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Comprehension.List Comprehension.List$T@@1)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |4692|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |4693|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((d T@U) ) (! (= (Comprehension.List.Nil_q d) (= (DatatypeCtorId d) |##Comprehension.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |5272|
 :pattern ( (Comprehension.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Comprehension.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Comprehension.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |5277|
 :pattern ( (Comprehension.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4572|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Comprehension.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Comprehension.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5278|
)))
 :qid |unknown.0:0|
 :skolemid |5279|
 :pattern ( (Comprehension.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Comprehension.List.Nil_q d@@2) (= d@@2 |#Comprehension.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |5273|
 :pattern ( (Comprehension.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |4592|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |4593|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Comprehension._default.ElementsContainedIn$X@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X@@0 |xs#0@@0| |S#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@0)) ($Is SetType |S#0@@0| (TSet Comprehension._default.ElementsContainedIn$X@@0))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@0 $ly@@0 |xs#0@@0| |S#0@@0|) ($IsAlloc SetType |S#0@@0| (TSet Comprehension._default.ElementsContainedIn$X@@0) $olderHeap))) ($IsAlloc DatatypeTypeType |xs#0@@0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@0) $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5250|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |unknown.0:0|
 :skolemid |5251|
 :pattern ( (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@0 $ly@@0 |xs#0@@0| |S#0@@0|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4585|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((Comprehension.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.Comprehension.List Comprehension.List$T@@2)) Tagclass.Comprehension.List) (= (TagFamily (Tclass.Comprehension.List Comprehension.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |5247|
 :pattern ( (Tclass.Comprehension.List Comprehension.List$T@@2))
)))
(assert (forall ((Comprehension.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Comprehension.List Comprehension.List$T@@3)) (or (Comprehension.List.Nil_q d@@3) (Comprehension.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |5290|
 :pattern ( (Comprehension.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Comprehension.List Comprehension.List$T@@3)))
 :pattern ( (Comprehension.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Comprehension.List Comprehension.List$T@@3)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |4575|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4584|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |4613|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |4614|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Comprehension.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Comprehension.List.Cons|)
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5276|
 :pattern ( (|#Comprehension.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Comprehension.List._h15 (|#Comprehension.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5285|
 :pattern ( (|#Comprehension.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Comprehension.List._h16 (|#Comprehension.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5287|
 :pattern ( (|#Comprehension.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4547|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4548|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((Comprehension.List$T@@4 T@U) ) (! (= (Tclass.Comprehension.List_0 (Tclass.Comprehension.List Comprehension.List$T@@4)) Comprehension.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |5248|
 :pattern ( (Tclass.Comprehension.List Comprehension.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4571|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((Comprehension._default.ElementsContainedIn$X@@1 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|S#0@@1| T@U) ) (! (= (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@1 ($LS $ly@@1) |xs#0@@1| |S#0@@1|) (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@1 $ly@@1 |xs#0@@1| |S#0@@1|))
 :qid |unknown.0:0|
 :skolemid |5245|
 :pattern ( (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@1 ($LS $ly@@1) |xs#0@@1| |S#0@@1|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Comprehension.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5286|
 :pattern ( (|#Comprehension.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Comprehension.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5288|
 :pattern ( (|#Comprehension.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (Comprehension.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Comprehension.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Comprehension.List Comprehension.List$T@@5) $h@@0))) ($IsAllocBox (Comprehension.List._h15 d@@4) Comprehension.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |5282|
 :pattern ( ($IsAllocBox (Comprehension.List._h15 d@@4) Comprehension.List$T@@5 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |8035|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |4630|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4578|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((Comprehension.List$T@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.Comprehension.List Comprehension.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass.Comprehension.List Comprehension.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |5249|
 :pattern ( ($IsBox bx@@3 (Tclass.Comprehension.List Comprehension.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (Comprehension.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Comprehension.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Comprehension.List Comprehension.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (Comprehension.List._h16 d@@6) (Tclass.Comprehension.List Comprehension.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |5283|
 :pattern ( ($IsAlloc DatatypeTypeType (Comprehension.List._h16 d@@6) (Tclass.Comprehension.List Comprehension.List$T@@7) $h@@1))
)))
(assert (= |#Comprehension.List.Nil| (Lit DatatypeTypeType |#Comprehension.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Comprehension.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Comprehension.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |OlderVerificationdfy.217:33|
 :skolemid |5284|
 :pattern ( (|#Comprehension.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4562|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Comprehension._default.ElementsContainedIn$X@@2 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) (|S#0@@2| T@U) ) (!  (=> (or (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X@@2 |xs#0@@2| |S#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@2| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@2)) ($Is SetType |S#0@@2| (TSet Comprehension._default.ElementsContainedIn$X@@2))))) (and (=> (not (Comprehension.List.Nil_q |xs#0@@2|)) (let ((|tail#1| (Comprehension.List._h16 |xs#0@@2|)))
(let ((|x#1| (Comprehension.List._h15 |xs#0@@2|)))
 (=> (|Set#IsMember| |S#0@@2| |x#1|) (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X@@2 |tail#1| |S#0@@2|))))) (= (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@2 ($LS $ly@@2) |xs#0@@2| |S#0@@2|) (ite (Comprehension.List.Nil_q |xs#0@@2|) true (let ((|tail#0| (Comprehension.List._h16 |xs#0@@2|)))
(let ((|x#0| (Comprehension.List._h15 |xs#0@@2|)))
 (and (|Set#IsMember| |S#0@@2| |x#0|) (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@2 $ly@@2 |tail#0| |S#0@@2|))))))))
 :qid |unknown.0:0|
 :skolemid |5253|
 :pattern ( (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@2 ($LS $ly@@2) |xs#0@@2| |S#0@@2|))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |4609|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((Comprehension.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Comprehension.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Comprehension.List Comprehension.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| Comprehension.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Comprehension.List Comprehension.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |5281|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Comprehension.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Comprehension.List Comprehension.List$T@@8) $h@@2))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |4588|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Comprehension._default.ElementsContainedIn$X@@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |xs#0@@3| () T@U)
(declare-fun |S#0@@3| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |tail#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Comprehension.__default.ElementsContainedIn)
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
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall (($olderHeap@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap@@0) ($OlderTag $olderHeap@@0)) (and (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |xs#0@@3| |S#0@@3|) ($IsAlloc SetType |S#0@@3| (TSet Comprehension._default.ElementsContainedIn$X@@3) $olderHeap@@0))) ($IsAlloc DatatypeTypeType |xs#0@@3| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@3) $olderHeap@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5255|
 :pattern ( ($OlderTag $olderHeap@@0))
)))))
(let ((anon7_correct  (=> (and (and (= (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |xs#0@@3| |S#0@@3|)  (and (|Set#IsMember| |S#0@@3| |x#Z#0@0|) (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |tail#Z#0@0| |S#0@@3|))) (=> (|Set#IsMember| |S#0@@3| |x#Z#0@0|) (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X@@3 |tail#Z#0@0| |S#0@@3|))) (and ($Is boolType (bool_2_U (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |xs#0@@3| |S#0@@3|)) TBool) (= (ControlFlow 0 6) 4))) GeneratedUnifiedExit_correct)))
(let ((anon13_Else_correct  (=> (and (not (|Set#IsMember| |S#0@@3| |x#Z#0@0|)) (= (ControlFlow 0 9) 6)) anon7_correct)))
(let ((anon13_Then_correct  (=> (|Set#IsMember| |S#0@@3| |x#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |tail#Z#0@0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@3) $Heap) ($IsAlloc SetType |S#0@@3| (TSet Comprehension._default.ElementsContainedIn$X@@3) $Heap)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< (DtRank |tail#Z#0@0|) (DtRank |xs#0@@3|)) (and (= (DtRank |tail#Z#0@0|) (DtRank |xs#0@@3|)) (and (|Set#Subset| |S#0@@3| |S#0@@3|) (not (|Set#Subset| |S#0@@3| |S#0@@3|)))))) (=> (or (< (DtRank |tail#Z#0@0|) (DtRank |xs#0@@3|)) (and (= (DtRank |tail#Z#0@0|) (DtRank |xs#0@@3|)) (and (|Set#Subset| |S#0@@3| |S#0@@3|) (not (|Set#Subset| |S#0@@3| |S#0@@3|))))) (=> (and (|Comprehension.__default.ElementsContainedIn#canCall| Comprehension._default.ElementsContainedIn$X@@3 |tail#Z#0@0| |S#0@@3|) (= (ControlFlow 0 7) 6)) anon7_correct)))))))
(let ((anon12_Then_correct  (=> (= |xs#0@@3| (|#Comprehension.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($IsBox |_mcc#0#0| Comprehension._default.ElementsContainedIn$X@@3) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@3))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@3)))) (and (and (= |tail#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| Comprehension._default.ElementsContainedIn$X@@3) (= |x#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 10) 7) anon13_Then_correct) (=> (= (ControlFlow 0 10) 9) anon13_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (and (= |xs#0@@3| |#Comprehension.List.Nil|) (= (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |xs#0@@3| |S#0@@3|) (U_2_bool (Lit boolType (bool_2_U true))))) (and ($Is boolType (bool_2_U (Comprehension.__default.ElementsContainedIn Comprehension._default.ElementsContainedIn$X@@3 ($LS $LZ) |xs#0@@3| |S#0@@3|)) TBool) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct)))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |xs#0@@3| |#Comprehension.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon12_Then_correct) (=> (= (ControlFlow 0 11) 2) anon12_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon10_Then_correct) (=> (= (ControlFlow 0 12) 5) anon11_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |xs#0@@3| (Tclass.Comprehension.List Comprehension._default.ElementsContainedIn$X@@3)) ($Is SetType |S#0@@3| (TSet Comprehension._default.ElementsContainedIn$X@@3))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
