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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Stream.Next| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun _module.__default.ToList (T@U T@U Int) T@U)
(declare-fun |_module.__default.ToList#canCall| (T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Tclass._module.List () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.Stream.Next_q (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (Int T@U) T@U)
(declare-fun |#_module.Stream.Next| (Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.Stream.stail (T@U) T@U)
(declare-fun _module.Stream.shead (T@U) Int)
(declare-fun _module.__default.CoUp (T@U Int Bool) T@U)
(declare-fun |_module.__default.CoUp#canCall| (Int Bool) Bool)
(declare-fun _module.List.head (T@U) Int)
(declare-fun _module.List.tail (T@U) T@U)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.nat Tagclass._module.List Tagclass._module.Stream |##_module.List.Nil| |##_module.List.Cons| |##_module.Stream.Next| tytagFamily$nat tytagFamily$List tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.ToList#canCall| |s#0| |n#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0| Tclass._module.Stream) (<= (LitInt 0) |n#0|)))) ($Is DatatypeTypeType (_module.__default.ToList $ly |s#0| |n#0|) Tclass._module.List))
 :qid |Datatypedfy.93:10|
 :skolemid |2013|
 :pattern ( (_module.__default.ToList $ly |s#0| |n#0|))
))))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Stream) (_module.Stream.Next_q d))
 :qid |unknown.0:0|
 :skolemid |2095|
 :pattern ( (_module.Stream.Next_q d) ($Is DatatypeTypeType d Tclass._module.Stream))
)))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1338|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1336|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( (_module.List.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Stream.Next_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Stream.Next|))
 :qid |unknown.0:0|
 :skolemid |2085|
 :pattern ( (_module.Stream.Next_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1347|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypedfy.4:28|
 :skolemid |2069|
)))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Stream.Next_q d@@4) (exists ((|a#12#0#0| Int) (|a#12#1#0| T@U) ) (! (= d@@4 (|#_module.Stream.Next| |a#12#0#0| |a#12#1#0|))
 :qid |Datatypedfy.83:26|
 :skolemid |2086|
)))
 :qid |unknown.0:0|
 :skolemid |2087|
 :pattern ( (_module.Stream.Next_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.ToList#canCall| |s#0@@0| |n#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| Tclass._module.Stream) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (and (_module.Stream.Next_q |s#0@@0|) (and (_module.Stream.Next_q |s#0@@0|) (|_module.__default.ToList#canCall| (_module.Stream.stail |s#0@@0|) (- |n#0@@0| 1))))) (= (_module.__default.ToList ($LS $ly@@0) |s#0@@0| |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |#_module.List.Nil| (|#_module.List.Cons| (_module.Stream.shead |s#0@@0|) (_module.__default.ToList $ly@@0 (_module.Stream.stail |s#0@@0|) (- |n#0@@0| 1)))))))
 :qid |Datatypedfy.93:10|
 :skolemid |2015|
 :pattern ( (_module.__default.ToList ($LS $ly@@0) |s#0@@0| |n#0@@0|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1665|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@1 T@U) (|n#0@@1| Int) (|b#0| Bool) ) (! (= (_module.__default.CoUp ($LS $ly@@1) |n#0@@1| |b#0|) (_module.__default.CoUp $ly@@1 |n#0@@1| |b#0|))
 :qid |Datatypedfy.85:10|
 :skolemid |2004|
 :pattern ( (_module.__default.CoUp ($LS $ly@@1) |n#0@@1| |b#0|))
)))
(assert (forall (($ly@@2 T@U) (|s#0@@1| T@U) (|n#0@@2| Int) ) (! (= (_module.__default.ToList ($LS $ly@@2) |s#0@@1| |n#0@@2|) (_module.__default.ToList $ly@@2 |s#0@@1| |n#0@@2|))
 :qid |Datatypedfy.93:10|
 :skolemid |2011|
 :pattern ( (_module.__default.ToList ($LS $ly@@2) |s#0@@1| |n#0@@2|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|n#0@@3| Int) (|b#0@@0| Bool) ) (!  (=> (or (|_module.__default.CoUp#canCall| |n#0@@3| |b#0@@0|) (< 1 $FunctionContextHeight)) (and (and (=> |b#0@@0| (|_module.__default.CoUp#canCall| |n#0@@3| (U_2_bool (Lit boolType (bool_2_U false))))) (=> (not |b#0@@0|) (|_module.__default.CoUp#canCall| (+ |n#0@@3| 1) (U_2_bool (Lit boolType (bool_2_U true)))))) (= (_module.__default.CoUp ($LS $ly@@3) |n#0@@3| |b#0@@0|) (ite |b#0@@0| (_module.__default.CoUp $ly@@3 |n#0@@3| (U_2_bool (Lit boolType (bool_2_U false)))) (|#_module.Stream.Next| |n#0@@3| (_module.__default.CoUp $ly@@3 (+ |n#0@@3| 1) (U_2_bool (Lit boolType (bool_2_U true)))))))))
 :qid |Datatypedfy.85:10|
 :skolemid |2008|
 :pattern ( (_module.__default.CoUp ($LS $ly@@3) |n#0@@3| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|n#0@@4| Int) (|b#0@@1| Bool) ) (!  (=> (or (|_module.__default.CoUp#canCall| |n#0@@4| |b#0@@1|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.CoUp $ly@@4 |n#0@@4| |b#0@@1|) Tclass._module.Stream))
 :qid |Datatypedfy.85:10|
 :skolemid |2006|
 :pattern ( (_module.__default.CoUp $ly@@4 |n#0@@4| |b#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|s#0@@2| T@U) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.ToList#canCall| |s#0@@2| (LitInt |n#0@@5|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@2| Tclass._module.Stream) (<= (LitInt 0) |n#0@@5|)))) (and (=> (or (not (= (LitInt |n#0@@5|) (LitInt 0))) (not true)) (and (_module.Stream.Next_q |s#0@@2|) (and (_module.Stream.Next_q |s#0@@2|) (|_module.__default.ToList#canCall| (_module.Stream.stail |s#0@@2|) (LitInt (- |n#0@@5| 1)))))) (= (_module.__default.ToList ($LS $ly@@5) |s#0@@2| (LitInt |n#0@@5|)) (ite (= (LitInt |n#0@@5|) (LitInt 0)) |#_module.List.Nil| (|#_module.List.Cons| (_module.Stream.shead |s#0@@2|) (_module.__default.ToList ($LS $ly@@5) (_module.Stream.stail |s#0@@2|) (LitInt (- |n#0@@5| 1))))))))
 :qid |Datatypedfy.93:10|
 :weight 3
 :skolemid |2016|
 :pattern ( (_module.__default.ToList ($LS $ly@@5) |s#0@@2| (LitInt |n#0@@5|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|s#0@@3| T@U) (|n#0@@6| Int) ) (!  (=> (or (|_module.__default.ToList#canCall| (Lit DatatypeTypeType |s#0@@3|) (LitInt |n#0@@6|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| Tclass._module.Stream) (<= (LitInt 0) |n#0@@6|)))) (and (=> (or (not (= (LitInt |n#0@@6|) (LitInt 0))) (not true)) (and (_module.Stream.Next_q (Lit DatatypeTypeType |s#0@@3|)) (and (_module.Stream.Next_q (Lit DatatypeTypeType |s#0@@3|)) (|_module.__default.ToList#canCall| (Lit DatatypeTypeType (_module.Stream.stail (Lit DatatypeTypeType |s#0@@3|))) (LitInt (- |n#0@@6| 1)))))) (= (_module.__default.ToList ($LS $ly@@6) (Lit DatatypeTypeType |s#0@@3|) (LitInt |n#0@@6|)) (ite (= (LitInt |n#0@@6|) (LitInt 0)) |#_module.List.Nil| (|#_module.List.Cons| (LitInt (_module.Stream.shead (Lit DatatypeTypeType |s#0@@3|))) (Lit DatatypeTypeType (_module.__default.ToList ($LS $ly@@6) (Lit DatatypeTypeType (_module.Stream.stail (Lit DatatypeTypeType |s#0@@3|))) (LitInt (- |n#0@@6| 1)))))))))
 :qid |Datatypedfy.93:10|
 :weight 3
 :skolemid |2017|
 :pattern ( (_module.__default.ToList ($LS $ly@@6) (Lit DatatypeTypeType |s#0@@3|) (LitInt |n#0@@6|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.List) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.List))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Datatypedfy.4:28|
 :skolemid |2067|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2075|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2076|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|)) |##_module.Stream.Next|)
 :qid |Datatypedfy.83:26|
 :skolemid |2084|
 :pattern ( (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| T@U) ) (! (= (_module.Stream.shead (|#_module.Stream.Next| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |Datatypedfy.83:26|
 :skolemid |2091|
 :pattern ( (|#_module.Stream.Next| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| T@U) ) (! (= (_module.Stream.stail (|#_module.Stream.Next| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Datatypedfy.83:26|
 :skolemid |2092|
 :pattern ( (|#_module.Stream.Next| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1346|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |Datatypedfy.4:28|
 :skolemid |2077|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
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
 :skolemid |2280|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.List $h@@0))) ($IsAlloc intType (int_2_U (_module.List.head d@@7)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( ($IsAlloc intType (int_2_U (_module.List.head d@@7)) TInt $h@@0))
)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Next_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Stream $h@@1))) ($IsAlloc intType (int_2_U (_module.Stream.shead d@@8)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |2089|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Stream.shead d@@8)) TInt $h@@1))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@9 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.List $h@@2))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.List $h@@2))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@10 Tclass._module.Stream)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Stream $h@@3))
 :qid |unknown.0:0|
 :skolemid |2093|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Stream $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= (Tag Tclass._module.Stream) Tagclass._module.Stream))
(assert (= (TagFamily Tclass._module.Stream) tytagFamily$Stream))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@11 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.List $h@@4))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@11) Tclass._module.List $h@@4))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@11) Tclass._module.List $h@@4))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Stream.Next_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Stream $h@@5))) ($IsAlloc DatatypeTypeType (_module.Stream.stail d@@12) Tclass._module.Stream $h@@5))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.stail d@@12) Tclass._module.Stream $h@@5))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Datatypedfy.4:28|
 :skolemid |2074|
 :pattern ( (|#_module.List.Cons| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1339|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1337|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List)  (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.List)))
 :qid |Datatypedfy.4:28|
 :skolemid |2071|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Next| |a#13#0#0| |a#13#1#0|) Tclass._module.Stream)  (and ($Is intType (int_2_U |a#13#0#0|) TInt) ($Is DatatypeTypeType |a#13#1#0| Tclass._module.Stream)))
 :qid |Datatypedfy.83:26|
 :skolemid |2088|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Next| |a#13#0#0| |a#13#1#0|) Tclass._module.Stream))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1382|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1384|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1361|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1363|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |##b#0@0| () Bool)
(declare-fun $LZ () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@@4| () T@U)
(declare-fun |l#0@@0| () T@U)
(declare-fun |s'#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.CoDt)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (not (_module.List.Cons_q |l#0@0|)) (= (ControlFlow 0 5) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (_module.List.Cons_q |l#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (_module.List.Cons_q |l#0@0|)) (=> (_module.List.Cons_q |l#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.List.Cons_q |l#0@0|)) (=> (_module.List.Cons_q |l#0@0|) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |##n#0@0| (LitInt 0))) (=> (and (and (and ($IsAlloc intType (int_2_U |##n#0@0|) TInt $Heap) (= |##b#0@0| (U_2_bool (Lit boolType (bool_2_U true))))) (and ($IsAlloc boolType (bool_2_U |##b#0@0|) TBool $Heap) (|_module.__default.CoUp#canCall| (LitInt 0) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (_module.Stream.Next_q (Lit DatatypeTypeType (_module.__default.CoUp ($LS $LZ) (LitInt 0) (U_2_bool (Lit boolType (bool_2_U true)))))) (|_module.__default.CoUp#canCall| (LitInt 0) (U_2_bool (Lit boolType (bool_2_U true))))) (and (= |s#0@0| (Lit DatatypeTypeType (_module.__default.CoUp ($LS $LZ) (LitInt 0) (U_2_bool (Lit boolType (bool_2_U true)))))) ($IsAlloc DatatypeTypeType |s#0@0| Tclass._module.Stream $Heap)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= |##n#1@0| (LitInt 4)) (=> (and (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap) (|_module.__default.ToList#canCall| |s#0@0| (LitInt 4))) (and (|_module.__default.ToList#canCall| |s#0@0| (LitInt 4)) (= |l#0@0| (_module.__default.ToList ($LS $LZ) |s#0@0| (LitInt 4))))) (and (=> (= (ControlFlow 0 6) 2) anon4_Then_correct) (=> (= (ControlFlow 0 6) 5) anon4_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |s#0@@4| Tclass._module.Stream) ($IsAlloc DatatypeTypeType |s#0@@4| Tclass._module.Stream $Heap)) true) (and (and ($Is DatatypeTypeType |l#0@@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |l#0@@0| Tclass._module.List $Heap)) true)) (and (and (and ($Is DatatypeTypeType |s'#0| Tclass._module.Stream) ($IsAlloc DatatypeTypeType |s'#0| Tclass._module.Stream $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 6)))) anon0_correct))))
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
