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
(declare-fun TagISet () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.OtherBindersInExpressions.C () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun BoxType () T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |OtherBindersInExpressions.__default.MapComprehension3#canCall| () Bool)
(declare-fun OtherBindersInExpressions.__default.MapComprehension3 () Int)
(declare-fun Div (Int Int) Int)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |lambda#14| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#34| (T@U Bool Int) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagISet TagIMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|IMap#Domain| (|IMap#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1576:15|
 :skolemid |3317|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1579:15|
 :skolemid |3318|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)))
)))
(assert ($AlwaysAllocated Tclass.OtherBindersInExpressions.C))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |3469|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3457|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))) (= (Ctor BoxType) 5)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |3049|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |3050|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3018|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3016|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |3458|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3450|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3027|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3451|
)))
 :qid |unknown.0:0|
 :skolemid |3452|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3040|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |3316|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |OtherBindersInExpressions.__default.MapComprehension3#canCall| (< 1 $FunctionContextHeight)) (and (forall ((|a#1#0#0@@0| T@U) ) (!  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= (LitInt 20) (LitInt 20))))
 :qid |gitissue851dfy.271:19|
 :skolemid |3535|
)) (= OtherBindersInExpressions.__default.MapComprehension3 (LitInt (Div 40 (LitInt 0))))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |OtherBindersInExpressions.__default.MapComprehension3#canCall| (< 1 $FunctionContextHeight)) (and (forall ((|a#4#0#0| T@U) ) (!  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= (LitInt 20) (LitInt 20))))
 :qid |gitissue851dfy.271:19|
 :skolemid |3538|
)) (= OtherBindersInExpressions.__default.MapComprehension3 (LitInt (Div 40 (LitInt 0))))))))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |3304|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |3305|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@1 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@1))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |3306|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |3307|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((|l#0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#14| |l#0|) |$w#0|) |l#0|)
 :qid |gitissue851dfy.253:14|
 :skolemid |4112|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#14| |l#0|) |$w#0|))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@2 (TISet t0@@1) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@2 bx@@0)) ($IsAllocBox bx@@0 t0@@1 h@@0))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |3070|
 :pattern ( (MapType0Select BoxType boolType v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |3071|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@2 (TISet t0@@1) h@@0))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |3315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@3 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@3)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@3 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |3313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |3314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@3))
)))
(assert (= (Ctor IMapType) 6))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc IMapType v@@4 (TIMap t0@@2 t1@@0) h@@1) (forall ((bx@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@4) bx@@1)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@4) bx@@1) t1@@0 h@@1) ($IsAllocBox bx@@1 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |3078|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@4) bx@@1))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@4) bx@@1))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |3079|
 :pattern ( ($IsAlloc IMapType v@@4 (TIMap t0@@2 t1@@0) h@@1))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |3340|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |3310|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |3311|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |3312|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@0 T@U) (v@@5 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@5))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |3308|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |3309|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3028|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |3030|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@6 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@6) t@@2) ($Is T@@2 v@@6 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3039|
 :pattern ( ($IsBox ($Box T@@2 v@@6) t@@2))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@2 T@U) (v@@7 T@U) ) (!  (=> ($IsBox v@@7 ty) ($IsAllocBox v@@7 ty h@@2))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |3080|
 :pattern ( ($IsAllocBox v@@7 ty h@@2))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |3081|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TIMap (TIMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |3013|
 :pattern ( (TIMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TIMap (TIMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |3014|
 :pattern ( (TIMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TIMap t@@5 u@@3)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |3015|
 :pattern ( (TIMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3449|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3455|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0|)) |a#4#0#0@@0|)
 :qid |unknown.0:0|
 :skolemid |3464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TISet (TISet t@@6)) t@@6)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3004|
 :pattern ( (TISet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TISet t@@7)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |3005|
 :pattern ( (TISet t@@7))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3026|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) (t1@@1 T@U) ) (! (= ($Is IMapType v@@8 (TIMap t0@@3 t1@@1)) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@8) bx@@4)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@8) bx@@4) t1@@1) ($IsBox bx@@4 t0@@3)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |3059|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@8) bx@@4))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@8) bx@@4))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |3060|
 :pattern ( ($Is IMapType v@@8 (TIMap t0@@3 t1@@1)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3467|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TIMap s t@@8)) (and (= ($Box IMapType ($Unbox IMapType bx@@5)) bx@@5) ($Is IMapType ($Unbox IMapType bx@@5) (TIMap s t@@8))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |3038|
 :pattern ( ($IsBox bx@@5 (TIMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3456|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |3155|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o))
)))
(assert  (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4109|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> (forall ((bx@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@1 bx@@7)) (and ($IsBox bx@@7 t0@@5) ($IsBox (MapType0Select BoxType BoxType b@@1 bx@@7) t1@@3)))
 :qid |DafnyPreludebpl.1585:11|
 :skolemid |3319|
)) ($Is IMapType (|IMap#Glue| a@@1 b@@1 (TIMap t0@@5 t1@@3)) (TIMap t0@@5 t1@@3)))
 :qid |DafnyPreludebpl.1582:15|
 :skolemid |3320|
 :pattern ( (|IMap#Glue| a@@1 b@@1 (TIMap t0@@5 t1@@3)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |3085|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TISet t@@9)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8)) bx@@8) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8) (TISet t@@9))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |3034|
 :pattern ( ($IsBox bx@@8 (TISet t@@9)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |3459|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |3460|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |3461|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |3462|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3463|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3019|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3017|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| Bool) (|l#2@@0| Int) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#34| |l#0@@1| |l#1@@0| |l#2@@0|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@1|) (exists ((|a#0#0#0@@0| T@U) ) (!  (and |l#1@@0| (= (U_2_int ($Unbox intType |$w#0@@0|)) |l#2@@0|))
 :qid |gitissue851dfy.271:19|
 :skolemid |3534|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |4114|
 :pattern ( (MapType0Select BoxType boolType (|lambda#34| |l#0@@1| |l#1@@0| |l#2@@0|) |$w#0@@0|))
)))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3062|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc boolType v@@10 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3064|
 :pattern ( ($IsAlloc boolType v@@10 TBool h@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is IMapType v@@11 (TIMap t0@@6 t1@@4)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@11) (TISet t0@@6)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@11) (TISet t1@@4))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@11) (TISet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |3061|
 :pattern ( ($Is IMapType v@@11 (TIMap t0@@6 t1@@4)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3041|
 :pattern ( ($Is intType v@@12 TInt))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is boolType v@@13 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |3043|
 :pattern ( ($Is boolType v@@13 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b#Z#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |c#1@0| () T@U)
(declare-fun |c#prime#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$OtherBindersInExpressions.__default.MapComprehension3)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon10_correct  (=> (= |let#0#0#0| (|IMap#Glue| (|lambda#34| TInt (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 20)) (|lambda#14| ($Box boolType (bool_2_U (= (LitInt (Div 5 (LitInt 0))) (LitInt 19))))) (TIMap TInt TBool))) (=> (and (and (forall ((|a#8#0#0| T@U) ) (!  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= (LitInt 20) (LitInt 20))))
 :qid |gitissue851dfy.271:19|
 :skolemid |3543|
)) ($Is IMapType |let#0#0#0| (TIMap TInt TBool))) (and (= |b#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 3) (- 0 2)))) (or (not (= (LitInt 0) 0)) (not true))))))
(let ((anon16_Else_correct  (=> (and (not (and (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 7) 3)) anon10_correct)))
(let ((anon16_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (or (not (= (LitInt 20) (LitInt 20))) (not true)) (= (= (LitInt (Div 5 (LitInt 0))) (LitInt 19)) (= (LitInt (Div 5 (LitInt 0))) (LitInt 19))))) (=> (or (or (not (= (LitInt 20) (LitInt 20))) (not true)) (= (= (LitInt (Div 5 (LitInt 0))) (LitInt 19)) (= (LitInt (Div 5 (LitInt 0))) (LitInt 19)))) (=> (= (ControlFlow 0 5) 3) anon10_correct))))))
(let ((anon15_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 10) 5) anon16_Then_correct) (=> (= (ControlFlow 0 10) 7) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (U_2_bool (Lit boolType (bool_2_U false))) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= (LitInt 0) 0)) (not true))) (=> (or (not (= (LitInt 0) 0)) (not true)) (and (=> (= (ControlFlow 0 8) 5) anon16_Then_correct) (=> (= (ControlFlow 0 8) 7) anon16_Else_correct))))))))
(let ((anon14_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 12) 8) anon15_Then_correct) (=> (= (ControlFlow 0 12) 10) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 11) 8) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))
(let ((anon13_Then_correct  (=> (and (and ($IsBox |c#1@0| Tclass.OtherBindersInExpressions.C) ($IsAllocBox |c#1@0| Tclass.OtherBindersInExpressions.C $Heap)) (and ($IsBox |c#prime#0@0| Tclass.OtherBindersInExpressions.C) ($IsAllocBox |c#prime#0@0| Tclass.OtherBindersInExpressions.C $Heap))) (and (=> (= (ControlFlow 0 13) 11) anon14_Then_correct) (=> (= (ControlFlow 0 13) 12) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (not (and ($IsBox |c#1@0| Tclass.OtherBindersInExpressions.C) ($IsAllocBox |c#1@0| Tclass.OtherBindersInExpressions.C $Heap))) (= (ControlFlow 0 4) 3)) anon10_correct)))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 14) 1) anon12_Then_correct) (=> (= (ControlFlow 0 14) 13) anon13_Then_correct)) (=> (= (ControlFlow 0 14) 4) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
