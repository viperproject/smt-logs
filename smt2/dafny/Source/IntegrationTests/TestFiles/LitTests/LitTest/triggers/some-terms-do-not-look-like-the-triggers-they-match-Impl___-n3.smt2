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
(declare-fun TagSet () T@U)
(declare-fun TagMap () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.F (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.F#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X (Lit BoxType |s#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |s#0| _module._default.F$X))) (= (_module.__default.F _module._default.F$X (Lit BoxType |s#0|)) (Lit BoxType |s#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |508|
 :pattern ( (_module.__default.F _module._default.F$X (Lit BoxType |s#0|)))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o)  (and (|Set#IsMember| a@@3 o) (not (|Set#IsMember| b@@3 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X@@0 |s#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |s#0@@0| _module._default.F$X@@0))) ($IsBox (_module.__default.F _module._default.F$X@@0 |s#0@@0|) _module._default.F$X@@0))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_module.__default.F _module._default.F$X@@0 |s#0@@0|))
))))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert (forall ((m@@1 T@U) (s T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| m@@1 s)) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u)))
 :qid |DafnyPreludebpl.1489:15|
 :skolemid |296|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s)) u))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@4 b@@4) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@4 o@@0)) (not (|Set#IsMember| b@@4 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@4 o@@0))
 :pattern ( (|Set#IsMember| b@@4 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@4 b@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((m@@2 T@U) (n T@U) (u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@2 n)) u@@0) (and (=> (not (|Set#IsMember| (|Map#Domain| n) u@@0)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0))) (=> (|Set#IsMember| (|Map#Domain| n) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| n) u@@0)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n)) u@@0))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1)  (or (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@5 o@@1)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@6 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@6 b@@6) a@@6) b@@6) (= (|Set#Difference| (|Set#Union| a@@6 b@@6) b@@6) a@@6)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@6 b@@6))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (= (Ctor MapType) 6))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@2) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@2) t1@@0 h@@1) ($IsAllocBox bx@@2 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@2))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@2))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Union| a@@7 (|Set#Union| a@@7 b@@7)) (|Set#Union| a@@7 b@@7))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@7 (|Set#Union| a@@7 b@@7)))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@3 T@U) (s@@0 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@3 (TMap s@@0 t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@3)) bx@@3) ($Is MapType ($Unbox MapType bx@@3) (TMap s@@0 t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@3 (TMap s@@0 t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |559|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X@@1 |s#0@@1|) (and (< 0 $FunctionContextHeight) ($IsBox |s#0@@1| _module._default.F$X@@1))) (= (_module.__default.F _module._default.F$X@@1 |s#0@@1|) |s#0@@1|))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (_module.__default.F _module._default.F$X@@1 |s#0@@1|))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@5) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@5))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@6 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) v@@6))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@7)))
)))
(assert (forall ((m@@11 T@U) (s@@1 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@11 s@@1)) (|Set#Difference| (|Map#Domain| m@@11) s@@1))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |295|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@11 s@@1)))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@6) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@6) t1@@2) ($IsBox bx@@6 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@6))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.F$X@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.F#canCall| _module._default.F$X@@2 |s#0@@2|) (and (< 0 $FunctionContextHeight) (and ($IsBox |s#0@@2| _module._default.F$X@@2) ($IsAllocBox |s#0@@2| _module._default.F$X@@2 $Heap)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.F _module._default.F$X@@2 |s#0@@2|) _module._default.F$X@@2 $Heap))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.63:16|
 :skolemid |505|
 :pattern ( ($IsAllocBox (_module.__default.F _module._default.F$X@@2 |s#0@@2|) _module._default.F$X@@2 $Heap))
))))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((m@@12 T@U) (n@@0 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@12 n@@0)) (|Set#Union| (|Map#Domain| m@@12) (|Map#Domain| n@@0)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |293|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@12 n@@0)))
)))
(assert (forall ((h@@2 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@2))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((k@@0 T@U) (v@@9 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@13) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@9)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@13))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@10 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@10) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@10) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@10) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is intType v@@11 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@11 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@3| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |x#0_0_0_0@0| () Int)
(declare-fun |d1#0@0| () Bool)
(declare-fun |d0#0@0| () Bool)
(declare-fun |c1#0@0| () Bool)
(declare-fun |c0#0@0| () Bool)
(declare-fun |x#11@0| () Int)
(declare-fun |##s#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |x#9@0| () Int)
(declare-fun |x#7@0| () Int)
(declare-fun |x#5@0| () Int)
(declare-fun |u1#0@0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |u0#0@0| () Bool)
(declare-fun |x#3@0| () Int)
(declare-fun |x#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.RewriteMap)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon51_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#0_0_0_0@0|)))) (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#0_0_0_0@0|))) (=> (= (ControlFlow 0 28) (- 0 27)) (< |x#0_0_0_0@0| 200))))))
(let ((anon51_Then_correct true))
(let ((anon21_correct  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#0_0_0_0@0|))) (not (|Set#IsMember| |u#0| ($Box intType (int_2_U |x#0_0_0_0@0|))))) (and (=> (= (ControlFlow 0 30) 26) anon51_Then_correct) (=> (= (ControlFlow 0 30) 28) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#0_0_0_0@0|)))) (= (ControlFlow 0 32) 30)) anon21_correct)))
(let ((anon50_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#0_0_0_0@0|))) (= (ControlFlow 0 31) 30)) anon21_correct)))
(let ((anon49_Then_correct  (and (=> (= (ControlFlow 0 33) 31) anon50_Then_correct) (=> (= (ControlFlow 0 33) 32) anon50_Else_correct))))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> |d1#0@0| |d0#0@0|)) (=> (and (=> |d1#0@0| |d0#0@0|) (= (ControlFlow 0 19) (- 0 18))) (= |d0#0@0| |d1#0@0|)))))
(let ((anon52_Else_correct  (=> (and (not |d1#0@0|) (= (ControlFlow 0 22) 19)) anon29_correct)))
(let ((anon52_Then_correct  (=> (and |d1#0@0| (= (ControlFlow 0 21) 19)) anon29_correct)))
(let ((anon49_Else_correct  (=> (forall ((|x#0_0_0_1| T@U) ) (!  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType |x#0_0_0_1|)) (not (|Set#IsMember| |u#0| ($Box intType |x#0_0_0_1|)))) (< (U_2_int |x#0_0_0_1|) 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.137:14|
 :skolemid |543|
 :pattern ( (|Set#IsMember| |u#0| ($Box intType |x#0_0_0_1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType |x#0_0_0_1|)))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) |d1#0@0|) (=> |d1#0@0| (and (=> (= (ControlFlow 0 24) 21) anon52_Then_correct) (=> (= (ControlFlow 0 24) 22) anon52_Else_correct)))))))
(let ((anon48_Then_correct  (=> |d0#0@0| (and (=> (= (ControlFlow 0 34) 33) anon49_Then_correct) (=> (= (ControlFlow 0 34) 24) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (not |d0#0@0|) (and (=> (= (ControlFlow 0 23) 21) anon52_Then_correct) (=> (= (ControlFlow 0 23) 22) anon52_Else_correct)))))
(let ((anon47_Then_correct  (and (=> (= (ControlFlow 0 35) 34) anon48_Then_correct) (=> (= (ControlFlow 0 35) 23) anon48_Else_correct))))
(let ((anon36_correct  (=> (and (|_module.__default.F#canCall| (TMap TInt TInt) ($Box MapType (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))))) (= |c1#0@0| (forall ((|x#10| Int) ) (!  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (_module.__default.F (TMap TInt TInt) ($Box MapType (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))))))) ($Box intType (int_2_U |x#10|))) (< |x#10| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.149:26|
 :skolemid |545|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (_module.__default.F (TMap TInt TInt) ($Box MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U 2)) ($Box intType (int_2_U 20))) ($Box intType (int_2_U 3)) ($Box intType (int_2_U 30))) ($Box intType (int_2_U 5)) ($Box intType (int_2_U 50))))))) ($Box intType (int_2_U |x#10|))))
)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= |c0#0@0| |c1#0@0|)) (=> (= |c0#0@0| |c1#0@0|) (=> (= (ControlFlow 0 8) (- 0 7)) (U_2_bool (Lit boolType (bool_2_U false)))))))))
(let ((anon56_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (_module.__default.F (TMap TInt TInt) ($Box MapType (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))))))) ($Box intType (int_2_U |x#11@0|)))) (= (ControlFlow 0 11) 8)) anon36_correct)))
(let ((anon56_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (_module.__default.F (TMap TInt TInt) ($Box MapType (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))))))) ($Box intType (int_2_U |x#11@0|))) (= (ControlFlow 0 10) 8)) anon36_correct)))
(let ((anon55_Then_correct  (=> (= |##s#0@0| (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50)))))) (=> (and ($IsAlloc MapType |##s#0@0| (TMap TInt TInt) $Heap@@0) (|_module.__default.F#canCall| (TMap TInt TInt) ($Box MapType (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50)))))))) (and (=> (= (ControlFlow 0 12) 10) anon56_Then_correct) (=> (= (ControlFlow 0 12) 11) anon56_Else_correct))))))
(let ((anon55_Else_correct true))
(let ((anon33_correct  (=> (= |c0#0@0| (forall ((|x#8| Int) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))) ($Box intType (int_2_U |x#8|))) (< |x#8| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.148:26|
 :skolemid |544|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U 2)) ($Box intType (int_2_U 20))) ($Box intType (int_2_U 3)) ($Box intType (int_2_U 30))) ($Box intType (int_2_U 5)) ($Box intType (int_2_U 50)))) ($Box intType (int_2_U |x#8|))))
))) (and (=> (= (ControlFlow 0 13) 12) anon55_Then_correct) (=> (= (ControlFlow 0 13) 6) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))) ($Box intType (int_2_U |x#9@0|)))) (= (ControlFlow 0 15) 13)) anon33_correct)))
(let ((anon54_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 20)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 50))))) ($Box intType (int_2_U |x#9@0|))) (= (ControlFlow 0 14) 13)) anon33_correct)))
(let ((anon53_Then_correct  (and (=> (= (ControlFlow 0 16) 14) anon54_Then_correct) (=> (= (ControlFlow 0 16) 15) anon54_Else_correct))))
(let ((anon53_Else_correct true))
(let ((anon47_Else_correct  (=> (= |d0#0@0| |d1#0@0|) (and (=> (= (ControlFlow 0 17) 16) anon53_Then_correct) (=> (= (ControlFlow 0 17) 5) anon53_Else_correct)))))
(let ((anon16_correct  (=> (= |d1#0@0| (forall ((|x#6| Int) ) (!  (=> (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#6|))) (not (|Set#IsMember| |u#0| ($Box intType (int_2_U |x#6|))))) (< |x#6| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.134:26|
 :skolemid |542|
 :pattern ( (|Set#IsMember| |u#0| ($Box intType (int_2_U |x#6|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#6|))))
))) (and (=> (= (ControlFlow 0 36) 35) anon47_Then_correct) (=> (= (ControlFlow 0 36) 17) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#7@0|))) (not (|Set#IsMember| |u#0| ($Box intType (int_2_U |x#7@0|)))))) (= (ControlFlow 0 38) 36)) anon16_correct)))
(let ((anon46_Then_correct  (=> (and (and (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#7@0|))) (not (|Set#IsMember| |u#0| ($Box intType (int_2_U |x#7@0|))))) (= (ControlFlow 0 37) 36)) anon16_correct)))
(let ((anon45_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#7@0|)))) (and (=> (= (ControlFlow 0 40) 37) anon46_Then_correct) (=> (= (ControlFlow 0 40) 38) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#7@0|))) (and (=> (= (ControlFlow 0 39) 37) anon46_Then_correct) (=> (= (ControlFlow 0 39) 38) anon46_Else_correct)))))
(let ((anon44_Then_correct  (and (=> (= (ControlFlow 0 41) 39) anon45_Then_correct) (=> (= (ControlFlow 0 41) 40) anon45_Else_correct))))
(let ((anon44_Else_correct true))
(let ((anon11_correct  (=> (= |d0#0@0| (forall ((|x#4| Int) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#4|))) (< |x#4| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.133:26|
 :skolemid |541|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#4|))))
))) (and (=> (= (ControlFlow 0 42) 41) anon44_Then_correct) (=> (= (ControlFlow 0 42) 4) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#5@0|)))) (= (ControlFlow 0 44) 42)) anon11_correct)))
(let ((anon43_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| (|Map#Subtract| |s#0@@3| |u#0|)) ($Box intType (int_2_U |x#5@0|))) (= (ControlFlow 0 43) 42)) anon11_correct)))
(let ((anon42_Then_correct  (and (=> (= (ControlFlow 0 45) 43) anon43_Then_correct) (=> (= (ControlFlow 0 45) 44) anon43_Else_correct))))
(let ((anon42_Else_correct true))
(let ((anon8_correct  (=> (= |u1#0@0| (forall ((|x#2| Int) ) (!  (=> (or (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#2|))) (|Set#IsMember| (|Map#Domain| |t#0|) ($Box intType (int_2_U |x#2|)))) (< |x#2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.129:26|
 :skolemid |540|
 :pattern ( (|Set#IsMember| (|Map#Domain| |t#0|) ($Box intType (int_2_U |x#2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#2|))))
))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (= |u0#0@0| |u1#0@0|)) (=> (= |u0#0@0| |u1#0@0|) (and (=> (= (ControlFlow 0 46) 45) anon42_Then_correct) (=> (= (ControlFlow 0 46) 3) anon42_Else_correct)))))))
(let ((anon41_Else_correct  (=> (and (not (or (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#3@0|))) (|Set#IsMember| (|Map#Domain| |t#0|) ($Box intType (int_2_U |x#3@0|))))) (= (ControlFlow 0 49) 46)) anon8_correct)))
(let ((anon41_Then_correct  (=> (and (or (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#3@0|))) (|Set#IsMember| (|Map#Domain| |t#0|) ($Box intType (int_2_U |x#3@0|)))) (= (ControlFlow 0 48) 46)) anon8_correct)))
(let ((anon40_Else_correct  (=> (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#3@0|))) (and (=> (= (ControlFlow 0 51) 48) anon41_Then_correct) (=> (= (ControlFlow 0 51) 49) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (not (|Set#IsMember| (|Map#Domain| |s#0@@3|) ($Box intType (int_2_U |x#3@0|)))) (and (=> (= (ControlFlow 0 50) 48) anon41_Then_correct) (=> (= (ControlFlow 0 50) 49) anon41_Else_correct)))))
(let ((anon39_Then_correct  (and (=> (= (ControlFlow 0 52) 50) anon40_Then_correct) (=> (= (ControlFlow 0 52) 51) anon40_Else_correct))))
(let ((anon39_Else_correct true))
(let ((anon3_correct  (=> (= |u0#0@0| (forall ((|x#0| Int) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| |s#0@@3| |t#0|)) ($Box intType (int_2_U |x#0|))) (< |x#0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.128:26|
 :skolemid |539|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Merge| |s#0@@3| |t#0|)) ($Box intType (int_2_U |x#0|))))
))) (and (=> (= (ControlFlow 0 53) 52) anon39_Then_correct) (=> (= (ControlFlow 0 53) 2) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| (|Map#Merge| |s#0@@3| |t#0|)) ($Box intType (int_2_U |x#1@0|)))) (= (ControlFlow 0 55) 53)) anon3_correct)))
(let ((anon38_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| (|Map#Merge| |s#0@@3| |t#0|)) ($Box intType (int_2_U |x#1@0|))) (= (ControlFlow 0 54) 53)) anon3_correct)))
(let ((anon37_Then_correct  (and (=> (= (ControlFlow 0 56) 54) anon38_Then_correct) (=> (= (ControlFlow 0 56) 55) anon38_Else_correct))))
(let ((anon37_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 57) 56) anon37_Then_correct) (=> (= (ControlFlow 0 57) 1) anon37_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is MapType |s#0@@3| (TMap TInt TInt)) ($IsAlloc MapType |s#0@@3| (TMap TInt TInt) $Heap@@0)) (and ($Is MapType |t#0| (TMap TInt TInt)) ($IsAlloc MapType |t#0| (TMap TInt TInt) $Heap@@0))) (and (and ($Is SetType |u#0| (TSet TInt)) ($IsAlloc SetType |u#0| (TSet TInt) $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 58) 57)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
