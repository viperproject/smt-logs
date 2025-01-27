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
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun |##LinkedList.List.Cons| () T@U)
(declare-fun |##LinkedList.List.Nil| () T@U)
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
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#LinkedList.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LinkedList.List.Cons_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun LinkedList.__default.Concat (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |LinkedList.__default.Concat#canCall| (T@U T@U T@U) Bool)
(declare-fun LinkedList.List.tl (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun LinkedList.List.hd (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
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
(assert (distinct alloc Tagclass.LinkedList.List |##LinkedList.List.Cons| |##LinkedList.List.Nil| tytagFamily$List)
)
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((LinkedList.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |2155|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |2154|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1534|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |2143|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (LinkedList.List.Cons_q d) (= (DatatypeCtorId d) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2140|
 :pattern ( (LinkedList.List.Cons_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (LinkedList.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2152|
 :pattern ( (LinkedList.List.Nil_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1545|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#LinkedList.List.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Compilerdfy.168:12|
 :skolemid |2141|
)))
 :qid |unknown.0:0|
 :skolemid |2142|
 :pattern ( (LinkedList.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@2) (= d@@2 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2153|
 :pattern ( (LinkedList.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1558|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((LinkedList.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@2)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2130|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@2))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((LinkedList._default.Concat$T T@U) ($ly T@U) (|l1#0| T@U) (|l2#0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |l1#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)) ($Is DatatypeTypeType |l2#0| (Tclass.LinkedList.List LinkedList._default.Concat$T))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|))))) (let ((|t#3| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T |t#3| (Lit DatatypeTypeType |l2#0|)))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|)) (let ((|t#2| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(let ((|h#2| (Lit BoxType (LinkedList.List.hd (Lit DatatypeTypeType |l1#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| |h#2| (Lit DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) |t#2| (Lit DatatypeTypeType |l2#0|))))))) |l2#0|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2137|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((LinkedList._default.Concat$T@@0 T@U) ($ly@@0 T@U) (|l1#0@@0| T@U) (|l2#0@@0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |l1#0@@0| |l2#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |l1#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)) ($Is DatatypeTypeType |l2#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0))))) (and (=> (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#1| (LinkedList.List.tl |l1#0@@0|)))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |t#1| |l2#0@@0|))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|) (ite (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#0| (LinkedList.List.tl |l1#0@@0|)))
(let ((|h#0| (LinkedList.List.hd |l1#0@@0|)))
(|#LinkedList.List.Cons| |h#0| (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 $ly@@0 |t#0| |l2#0@@0|)))) |l2#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |2136|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|))
))))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@3) (LinkedList.List.Nil_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2157|
 :pattern ( (LinkedList.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1557|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |2139|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |2148|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |2150|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((LinkedList._default.Concat$T@@1 T@U) ($ly@@1 T@U) (|l1#0@@1| T@U) (|l2#0@@1| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@1 |l1#0@@1| |l2#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |l1#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)) ($Is DatatypeTypeType |l2#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1))))) ($Is DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |2133|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|))
))))
(assert (forall ((LinkedList.List$T@@4 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@4)) LinkedList.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |2131|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1544|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0| |a#5#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2149|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2151|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((d@@4 T@U) (LinkedList.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (LinkedList.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@0))) ($IsAllocBox (LinkedList.List.hd d@@4) LinkedList.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |2145|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@4) LinkedList.List$T@@5 $h@@0))
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
 :skolemid |9867|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (LinkedList._default.Concat$T@@2 T@U) ($ly@@2 T@U) (|l1#0@@2| T@U) (|l2#0@@2| T@U) ) (!  (=> (and (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@2 |l1#0@@2| |l2#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)) (and ($Is DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@2 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
 :qid |Compilerdfy.171:12|
 :skolemid |2134|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@2 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1603|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((LinkedList._default.Concat$T@@3 T@U) ($ly@@3 T@U) (|l1#0@@3| T@U) (|l2#0@@3| T@U) ) (! (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@3) |l1#0@@3| |l2#0@@3|) (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 $ly@@3 |l1#0@@3| |l2#0@@3|))
 :qid |unknown.0:0|
 :skolemid |2128|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@3) |l1#0@@3| |l2#0@@3|))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |2132|
 :pattern ( ($IsBox bx (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (LinkedList.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (LinkedList.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@6) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2146|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@6) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@1))
)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2147|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1535|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| LinkedList.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |2144|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l1#0@@4| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun LinkedList._default.Concat$T@@4 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |h#Z#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |l2#0@@4| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$LinkedList.__default.Concat)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (=> (or (not (= |l1#0@@4| (|#LinkedList.List.Cons| |_mcc#0#0| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (and (= |l1#0@@4| (|#LinkedList.List.Cons| |_mcc#0#0| |_mcc#1#0|)) ($IsBox |_mcc#0#0| LinkedList._default.Concat$T@@4)) (and ($Is DatatypeTypeType |_mcc#1#0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4)) (= |let#0#0#0| |_mcc#1#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4)) (= |t#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#0#0|) ($IsBox |let#1#0#0| LinkedList._default.Concat$T@@4))) (and (and (= |h#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |t#Z#0@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4) $Heap@@0)) (and ($IsAlloc DatatypeTypeType |l2#0@@4| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4) $Heap@@0) (= (ControlFlow 0 3) (- 0 2))))) (or (< (DtRank |t#Z#0@0|) (DtRank |l1#0@@4|)) (and (= (DtRank |t#Z#0@0|) (DtRank |l1#0@@4|)) (< (DtRank |l2#0@@4|) (DtRank |l2#0@@4|))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is DatatypeTypeType |l1#0@@4| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4)) ($Is DatatypeTypeType |l2#0@@4| (Tclass.LinkedList.List LinkedList._default.Concat$T@@4))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
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
