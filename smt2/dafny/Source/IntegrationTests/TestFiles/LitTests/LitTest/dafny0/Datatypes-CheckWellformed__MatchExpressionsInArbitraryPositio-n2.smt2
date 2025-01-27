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
(declare-fun Tagclass.MatchExpressionsInArbitraryPositions.List () T@U)
(declare-fun |##MatchExpressionsInArbitraryPositions.List.Nil| () T@U)
(declare-fun |##MatchExpressionsInArbitraryPositions.List.Cons| () T@U)
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
(declare-fun |#MatchExpressionsInArbitraryPositions.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.MatchExpressionsInArbitraryPositions.List (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#MatchExpressionsInArbitraryPositions.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.List.Nil_q (T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun MatchExpressionsInArbitraryPositions.__default.K (T@U) Int)
(declare-fun |MatchExpressionsInArbitraryPositions.__default.K#canCall| (T@U) Bool)
(declare-fun $ArbitraryBoxValue () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MatchExpressionsInArbitraryPositions.List.head (T@U) T@U)
(declare-fun MatchExpressionsInArbitraryPositions.List.tail (T@U) T@U)
(declare-fun Tclass.MatchExpressionsInArbitraryPositions.List_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.MatchExpressionsInArbitraryPositions.List |##MatchExpressionsInArbitraryPositions.List.Nil| |##MatchExpressionsInArbitraryPositions.List.Cons| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#MatchExpressionsInArbitraryPositions.List.Nil|) |##MatchExpressionsInArbitraryPositions.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T T@U) ) (! ($Is DatatypeTypeType |#MatchExpressionsInArbitraryPositions.List.Nil| (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Is DatatypeTypeType |#MatchExpressionsInArbitraryPositions.List.Nil| (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T)))
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
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T@@0 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@0))  (and ($IsBox |a#6#0#0| MatchExpressionsInArbitraryPositions.List$T@@0) ($Is DatatypeTypeType |a#6#1#0| (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@0))))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@0)))
)))
(assert (forall ((d T@U) ) (! (= (MatchExpressionsInArbitraryPositions.List.Nil_q d) (= (DatatypeCtorId d) |##MatchExpressionsInArbitraryPositions.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (MatchExpressionsInArbitraryPositions.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##MatchExpressionsInArbitraryPositions.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|xs#0| T@U) ) (!  (=> (or (|MatchExpressionsInArbitraryPositions.__default.K#canCall| (Lit DatatypeTypeType |xs#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| (Tclass.MatchExpressionsInArbitraryPositions.List TInt)))) (= (MatchExpressionsInArbitraryPositions.__default.K (Lit DatatypeTypeType |xs#0|)) (ite (MatchExpressionsInArbitraryPositions.List.Nil_q (Lit DatatypeTypeType |xs#0|)) 0 (U_2_int ($Unbox intType $ArbitraryBoxValue)))))
 :qid |Datatypesdfy.352:20|
 :weight 3
 :skolemid |610|
 :pattern ( (MatchExpressionsInArbitraryPositions.__default.K (Lit DatatypeTypeType |xs#0|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (MatchExpressionsInArbitraryPositions.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypesdfy.291:33|
 :skolemid |617|
)))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (MatchExpressionsInArbitraryPositions.List.Nil_q d@@2) (= d@@2 |#MatchExpressionsInArbitraryPositions.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Nil_q d@@2))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T@@1 T@U) ) (!  (and (= (Tag (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@1)) Tagclass.MatchExpressionsInArbitraryPositions.List) (= (TagFamily (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@1)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@1))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T@@2 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@2)) (or (MatchExpressionsInArbitraryPositions.List.Nil_q d@@3) (MatchExpressionsInArbitraryPositions.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@2)))
 :pattern ( (MatchExpressionsInArbitraryPositions.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@2)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#4#0#0| |a#4#1#0|)) |##MatchExpressionsInArbitraryPositions.List.Cons|)
 :qid |Datatypesdfy.291:33|
 :skolemid |615|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (MatchExpressionsInArbitraryPositions.List.head (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypesdfy.291:33|
 :skolemid |624|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (MatchExpressionsInArbitraryPositions.List.tail (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Datatypesdfy.291:33|
 :skolemid |626|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T@@3 T@U) ) (! (= (Tclass.MatchExpressionsInArbitraryPositions.List_0 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@3)) MatchExpressionsInArbitraryPositions.List$T@@3)
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@3))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Datatypesdfy.291:33|
 :skolemid |625|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Datatypesdfy.291:33|
 :skolemid |627|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#11#0#0| |a#11#1#0|))
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
 :skolemid |2848|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.List$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@0 (Tclass.MatchExpressionsInArbitraryPositions.List MatchExpressionsInArbitraryPositions.List$T@@4)))
)))
(assert (= |#MatchExpressionsInArbitraryPositions.List.Nil| (Lit DatatypeTypeType |#MatchExpressionsInArbitraryPositions.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#MatchExpressionsInArbitraryPositions.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Datatypesdfy.291:33|
 :skolemid |623|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|xs#0@@0| T@U) ) (!  (=> (or (|MatchExpressionsInArbitraryPositions.__default.K#canCall| |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass.MatchExpressionsInArbitraryPositions.List TInt)))) (= (MatchExpressionsInArbitraryPositions.__default.K |xs#0@@0|) (ite (MatchExpressionsInArbitraryPositions.List.Nil_q |xs#0@@0|) 0 (U_2_int ($Unbox intType $ArbitraryBoxValue)))))
 :qid |Datatypesdfy.352:20|
 :skolemid |609|
 :pattern ( (MatchExpressionsInArbitraryPositions.__default.K |xs#0@@0|))
))))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ys#Z#0@0| () T@U)
(declare-fun |a#1#0#0@0| () T@U)
(declare-fun |a#1#1#0@0| () T@U)
(declare-fun |xs#0@@1| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$MatchExpressionsInArbitraryPositions.__default.K)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct  (=> (and (= |ys#Z#0@0| |#MatchExpressionsInArbitraryPositions.List.Nil|) (= (ControlFlow 0 7) (- 0 6))) false)))
(let ((anon14_Else_correct  (=> (or (not (= |ys#Z#0@0| (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#1#0#0@0| |a#1#1#0@0|))) (not true)) (and (=> (= (ControlFlow 0 9) 7) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (= |ys#Z#0@0| (|#MatchExpressionsInArbitraryPositions.List.Cons| |a#1#0#0@0| |a#1#1#0@0|)) (= (ControlFlow 0 5) (- 0 4))) false)))
(let ((anon13_Then_correct  (=> (= |xs#0@@1| (|#MatchExpressionsInArbitraryPositions.List.Cons| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#1#0| (Tclass.MatchExpressionsInArbitraryPositions.List TInt)) (= |let#0#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.MatchExpressionsInArbitraryPositions.List TInt)) (= |ys#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 10) 5) anon14_Then_correct) (=> (= (ControlFlow 0 10) 9) anon14_Else_correct))))))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |xs#0@@1| |#MatchExpressionsInArbitraryPositions.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon13_Then_correct) (=> (= (ControlFlow 0 11) 3) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon11_Then_correct) (=> (= (ControlFlow 0 12) 2) anon12_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |xs#0@@1| (Tclass.MatchExpressionsInArbitraryPositions.List TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
