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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.MixRecursiveAndCorecursive.Stream () T@U)
(declare-fun |##MixRecursiveAndCorecursive.Stream.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun MixRecursiveAndCorecursive.__default.G (T@U Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |MixRecursiveAndCorecursive.__default.G#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |MixRecursiveAndCorecursive.__default.H#canCall| (Int) Bool)
(declare-fun |#MixRecursiveAndCorecursive.Stream.Cons| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun MixRecursiveAndCorecursive.__default.H (T@U Int) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MixRecursiveAndCorecursive.Stream.Cons_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.MixRecursiveAndCorecursive.Stream (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MixRecursiveAndCorecursive.Stream.tail (T@U) T@U)
(declare-fun MixRecursiveAndCorecursive.Stream.head (T@U) T@U)
(declare-fun Tclass.MixRecursiveAndCorecursive.Stream_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass.MixRecursiveAndCorecursive.Stream |##MixRecursiveAndCorecursive.Stream.Cons| tytagFamily$nat tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.G#canCall| |n#0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) (and (and (=> (= |n#0| (LitInt 0)) (|MixRecursiveAndCorecursive.__default.H#canCall| (LitInt 5))) (=> (or (not (= |n#0| (LitInt 0))) (not true)) (|MixRecursiveAndCorecursive.__default.H#canCall| |n#0|))) (= (MixRecursiveAndCorecursive.__default.G ($LS $ly) |n#0|) (ite (= |n#0| (LitInt 0)) (|#MixRecursiveAndCorecursive.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (MixRecursiveAndCorecursive.__default.H $ly (LitInt 5)))) (MixRecursiveAndCorecursive.__default.H $ly |n#0|)))))
 :qid |Corecursiondfy.100:18|
 :skolemid |2298|
 :pattern ( (MixRecursiveAndCorecursive.__default.G ($LS $ly) |n#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2100|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T)) (MixRecursiveAndCorecursive.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |2333|
 :pattern ( (MixRecursiveAndCorecursive.Stream.Cons_q d) ($Is DatatypeTypeType d (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.H#canCall| |n#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) (or (not (= |n#0@@0| 0)) (not true))))) ($Is DatatypeTypeType (MixRecursiveAndCorecursive.__default.H $ly@@0 |n#0@@0|) (Tclass.MixRecursiveAndCorecursive.Stream TInt)))
 :qid |Corecursiondfy.107:18|
 :skolemid |2304|
 :pattern ( (MixRecursiveAndCorecursive.__default.H $ly@@0 |n#0@@0|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1772|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1770|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#MixRecursiveAndCorecursive.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@0))  (and ($IsBox |a#2#0#0| MixRecursiveAndCorecursive.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |2326|
 :pattern ( ($Is DatatypeTypeType (|#MixRecursiveAndCorecursive.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@0)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (MixRecursiveAndCorecursive.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##MixRecursiveAndCorecursive.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |2323|
 :pattern ( (MixRecursiveAndCorecursive.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1781|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (MixRecursiveAndCorecursive.Stream.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#MixRecursiveAndCorecursive.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Corecursiondfy.88:31|
 :skolemid |2324|
)))
 :qid |unknown.0:0|
 :skolemid |2325|
 :pattern ( (MixRecursiveAndCorecursive.Stream.Cons_q d@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2099|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1794|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@1)) Tagclass.MixRecursiveAndCorecursive.Stream) (= (TagFamily (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |2285|
 :pattern ( (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@1))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2098|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.G#canCall| |n#0@@1|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@1|))) ($Is DatatypeTypeType (MixRecursiveAndCorecursive.__default.G $ly@@1 |n#0@@1|) (Tclass.MixRecursiveAndCorecursive.Stream TInt)))
 :qid |Corecursiondfy.100:18|
 :skolemid |2296|
 :pattern ( (MixRecursiveAndCorecursive.__default.G $ly@@1 |n#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@2| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.G#canCall| (LitInt |n#0@@2|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@2|))) (and (and (=> (= (LitInt |n#0@@2|) (LitInt 0)) (|MixRecursiveAndCorecursive.__default.H#canCall| (LitInt 5))) (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (|MixRecursiveAndCorecursive.__default.H#canCall| (LitInt |n#0@@2|)))) (= (MixRecursiveAndCorecursive.__default.G ($LS $ly@@2) (LitInt |n#0@@2|)) (ite (= (LitInt |n#0@@2|) (LitInt 0)) (|#MixRecursiveAndCorecursive.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (MixRecursiveAndCorecursive.__default.H ($LS $ly@@2) (LitInt 5)))) (MixRecursiveAndCorecursive.__default.H ($LS $ly@@2) (LitInt |n#0@@2|))))))
 :qid |Corecursiondfy.100:18|
 :weight 3
 :skolemid |2299|
 :pattern ( (MixRecursiveAndCorecursive.__default.G ($LS $ly@@2) (LitInt |n#0@@2|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1782|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1793|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|n#0@@3| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.H#canCall| (LitInt |n#0@@3|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@3|) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |n#0@@3| 0)) (not true)))))))) (and (and (|MixRecursiveAndCorecursive.__default.G#canCall| (LitInt (- |n#0@@3| 1))) (MixRecursiveAndCorecursive.Stream.Cons_q (Lit DatatypeTypeType (MixRecursiveAndCorecursive.__default.G ($LS $ly@@3) (LitInt (- |n#0@@3| 1)))))) (= (MixRecursiveAndCorecursive.__default.H ($LS $ly@@3) (LitInt |n#0@@3|)) (Lit DatatypeTypeType (MixRecursiveAndCorecursive.Stream.tail (Lit DatatypeTypeType (MixRecursiveAndCorecursive.__default.G ($LS $ly@@3) (LitInt (- |n#0@@3| 1)))))))))
 :qid |Corecursiondfy.107:18|
 :weight 3
 :skolemid |2307|
 :pattern ( (MixRecursiveAndCorecursive.__default.H ($LS $ly@@3) (LitInt |n#0@@3|)))
))))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#MixRecursiveAndCorecursive.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##MixRecursiveAndCorecursive.Stream.Cons|)
 :qid |Corecursiondfy.88:31|
 :skolemid |2322|
 :pattern ( (|#MixRecursiveAndCorecursive.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (MixRecursiveAndCorecursive.Stream.head (|#MixRecursiveAndCorecursive.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Corecursiondfy.88:31|
 :skolemid |2330|
 :pattern ( (|#MixRecursiveAndCorecursive.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (MixRecursiveAndCorecursive.Stream.tail (|#MixRecursiveAndCorecursive.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Corecursiondfy.88:31|
 :skolemid |2331|
 :pattern ( (|#MixRecursiveAndCorecursive.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T@@2 T@U) ) (! (= (Tclass.MixRecursiveAndCorecursive.Stream_0 (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@2)) MixRecursiveAndCorecursive.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |2286|
 :pattern ( (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1780|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($ly@@4 T@U) (|n#0@@4| Int) ) (! (= (MixRecursiveAndCorecursive.__default.G ($LS $ly@@4) |n#0@@4|) (MixRecursiveAndCorecursive.__default.G $ly@@4 |n#0@@4|))
 :qid |Corecursiondfy.100:18|
 :skolemid |2294|
 :pattern ( (MixRecursiveAndCorecursive.__default.G ($LS $ly@@4) |n#0@@4|))
)))
(assert (forall (($ly@@5 T@U) (|n#0@@5| Int) ) (! (= (MixRecursiveAndCorecursive.__default.H ($LS $ly@@5) |n#0@@5|) (MixRecursiveAndCorecursive.__default.H $ly@@5 |n#0@@5|))
 :qid |Corecursiondfy.107:18|
 :skolemid |2302|
 :pattern ( (MixRecursiveAndCorecursive.__default.H ($LS $ly@@5) |n#0@@5|))
)))
(assert (forall ((d@@2 T@U) (MixRecursiveAndCorecursive.Stream$T@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (MixRecursiveAndCorecursive.Stream.Cons_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@3) $h@@0))) ($IsAllocBox (MixRecursiveAndCorecursive.Stream.head d@@2) MixRecursiveAndCorecursive.Stream$T@@3 $h@@0))
 :qid |unknown.0:0|
 :skolemid |2328|
 :pattern ( ($IsAllocBox (MixRecursiveAndCorecursive.Stream.head d@@2) MixRecursiveAndCorecursive.Stream$T@@3 $h@@0))
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
 :skolemid |3509|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T@@4 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |2287|
 :pattern ( ($IsBox bx@@1 (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@4)))
)))
(assert (forall ((d@@3 T@U) (MixRecursiveAndCorecursive.Stream$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (MixRecursiveAndCorecursive.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@5) $h@@1))) ($IsAlloc DatatypeTypeType (MixRecursiveAndCorecursive.Stream.tail d@@3) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@5) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2329|
 :pattern ( ($IsAlloc DatatypeTypeType (MixRecursiveAndCorecursive.Stream.tail d@@3) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@5) $h@@1))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|n#0@@6| Int) ) (!  (=> (or (|MixRecursiveAndCorecursive.__default.H#canCall| |n#0@@6|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@6|) (or (not (= |n#0@@6| 0)) (not true))))) (and (and (|MixRecursiveAndCorecursive.__default.G#canCall| (- |n#0@@6| 1)) (MixRecursiveAndCorecursive.Stream.Cons_q (MixRecursiveAndCorecursive.__default.G $ly@@6 (- |n#0@@6| 1)))) (= (MixRecursiveAndCorecursive.__default.H ($LS $ly@@6) |n#0@@6|) (MixRecursiveAndCorecursive.Stream.tail (MixRecursiveAndCorecursive.__default.G $ly@@6 (- |n#0@@6| 1))))))
 :qid |Corecursiondfy.107:18|
 :skolemid |2306|
 :pattern ( (MixRecursiveAndCorecursive.__default.H ($LS $ly@@6) |n#0@@6|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1773|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1771|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1816|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((MixRecursiveAndCorecursive.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#MixRecursiveAndCorecursive.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@6) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| MixRecursiveAndCorecursive.Stream$T@@6 $h@@2) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@6) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |2327|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MixRecursiveAndCorecursive.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.MixRecursiveAndCorecursive.Stream MixRecursiveAndCorecursive.Stream$T@@6) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1795|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@7| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$MixRecursiveAndCorecursive.__default.G)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon8_Else_correct  (=> (and (or (not (= |n#0@@7| (LitInt 0))) (not true)) ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (not (= |n#0@@7| 0)) (not true))) (=> (or (not (= |n#0@@7| 0)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (<= 0 |n#0@@7|) (= |n#0@@7| |n#0@@7|))) (=> (or (<= 0 |n#0@@7|) (= |n#0@@7| |n#0@@7|)) (=> (= (ControlFlow 0 8) (- 0 7)) (<= |n#0@@7| |n#0@@7|)))))))))
(let ((anon8_Then_correct  (=> (= |n#0@@7| (LitInt 0)) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (and (= |##n#0@0| (LitInt 5)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |##n#0@0| 0)) (not true))) (=> (or (not (= |##n#0@0| 0)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (<= 0 |n#0@@7|) (= |##n#0@0| |n#0@@7|))) (=> (or (<= 0 |n#0@@7|) (= |##n#0@0| |n#0@@7|)) (=> (= (ControlFlow 0 3) (- 0 2)) (<= |##n#0@0| |n#0@@7|))))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 11) 1) anon7_Then_correct) (=> (= (ControlFlow 0 11) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 11) 8) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0@@7|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
