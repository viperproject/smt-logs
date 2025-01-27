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
(declare-fun alloc () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X (Lit BoxType |s#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |s#0| _module._default.F$X))) (= (_module.__default.F _module._default.F$X (Lit BoxType |s#0|)) (Lit BoxType |s#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |508|
 :pattern ( (_module.__default.F _module._default.F$X (Lit BoxType |s#0|)))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |560|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X@@0 |s#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |s#0@@0| _module._default.F$X@@0))) ($IsBox (_module.__default.F _module._default.F$X@@0 |s#0@@0|) _module._default.F$X@@0))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_module.__default.F _module._default.F$X@@0 |s#0@@0|))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
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
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)) (|Set#Intersection| a@@14 b@@11))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$y#1|))  (and ($IsBox |$y#1| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#1|) (or (|Set#IsMember| |l#2| |$y#1|) (|Set#IsMember| |l#3| |$y#1|)))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |561|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$y#1|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |559|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.F$X@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.F#canCall| _module._default.F$X@@1 |s#0@@1|) (and (< 0 $FunctionContextHeight) ($IsBox |s#0@@1| _module._default.F$X@@1))) (= (_module.__default.F _module._default.F$X@@1 |s#0@@1|) |s#0@@1|))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (_module.__default.F _module._default.F$X@@1 |s#0@@1|))
))))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.F$X@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.F#canCall| _module._default.F$X@@2 |s#0@@2|) (and (< 0 $FunctionContextHeight) (and ($IsBox |s#0@@2| _module._default.F$X@@2) ($IsAllocBox |s#0@@2| _module._default.F$X@@2 $Heap)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.F _module._default.F$X@@2 |s#0@@2|) _module._default.F$X@@2 $Heap))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.63:16|
 :skolemid |505|
 :pattern ( ($IsAllocBox (_module.__default.F _module._default.F$X@@2 |s#0@@2|) _module._default.F$X@@2 $Heap))
))))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Equal| a@@15 b@@12) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@15 o@@5) (|Set#IsMember| b@@12 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@15 o@@5))
 :pattern ( (|Set#IsMember| b@@12 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@15 b@@12))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@3| () T@U)
(declare-fun |x#25@0| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |h3#0@0| () Bool)
(declare-fun |x#23@0| () Int)
(declare-fun |h2#0@0| () Bool)
(declare-fun |S#Z#1@0| () T@U)
(declare-fun |x#21@0| () Int)
(declare-fun |##s#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |y#5@0| () Int)
(declare-fun |h1#0@0| () Bool)
(declare-fun |h0#0@0| () Bool)
(declare-fun |S#Z#0@0| () T@U)
(declare-fun |x#19@0| () Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |y#2@0| () Int)
(declare-fun |x#17@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |c1#0_0@0| () Bool)
(declare-fun |c0#0_0@0| () Bool)
(declare-fun |x#0_3@0| () Int)
(declare-fun |x#0_1@0| () Int)
(declare-fun |c1#1_0@0| () Bool)
(declare-fun |s#1_0@0| () T@U)
(declare-fun |c0#1_0@0| () Bool)
(declare-fun |x#1_3@0| () Int)
(declare-fun |x#1_1@0| () Int)
(declare-fun |d1#0@0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |d0#0@0| () Bool)
(declare-fun |x#15@0| () Int)
(declare-fun |x#13@0| () Int)
(declare-fun |i1#0@0| () Bool)
(declare-fun |i0#0@0| () Bool)
(declare-fun |x#11@0| () Int)
(declare-fun |x#9@0| () Int)
(declare-fun |u0#0@0| () Bool)
(declare-fun |u1#0@0| () Bool)
(declare-fun |u2#0@0| () T@U)
(declare-fun |u3#0@0| () T@U)
(declare-fun |x#6@0| () Int)
(declare-fun |x#4@0| () Int)
(declare-fun |x#3@0| () Int)
(declare-fun |x#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |u2#0| () T@U)
(declare-fun |u3#0| () T@U)
(declare-fun |s#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.RewriteSet)
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
 (=> (= (ControlFlow 0 0) 128) (let ((anon106_Else_correct true))
(let ((anon104_Else_correct true))
(let ((anon78_correct true))
(let ((anon127_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (_module.__default.F (TSet TInt) ($Box SetType |s#0@@3|))) ($Box intType (int_2_U |x#25@0|)))) (= (ControlFlow 0 21) 19)) anon78_correct)))
(let ((anon127_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (_module.__default.F (TSet TInt) ($Box SetType |s#0@@3|))) ($Box intType (int_2_U |x#25@0|))) (= (ControlFlow 0 20) 19)) anon78_correct)))
(let ((anon126_Then_correct  (=> (and ($IsAlloc SetType |s#0@@3| (TSet TInt) $Heap@@0) (|_module.__default.F#canCall| (TSet TInt) ($Box SetType |s#0@@3|))) (and (=> (= (ControlFlow 0 22) 20) anon127_Then_correct) (=> (= (ControlFlow 0 22) 21) anon127_Else_correct)))))
(let ((anon126_Else_correct true))
(let ((anon75_correct  (=> (= |h3#0@0| (forall ((|x#22| Int) ) (!  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#22|))) (< |x#22| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.59:26|
 :skolemid |502|
 :pattern ( (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#22|))))
))) (and (=> (= (ControlFlow 0 23) 22) anon126_Then_correct) (=> (= (ControlFlow 0 23) 18) anon126_Else_correct)))))
(let ((anon125_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#23@0|)))) (= (ControlFlow 0 25) 23)) anon75_correct)))
(let ((anon125_Then_correct  (=> (and (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#23@0|))) (= (ControlFlow 0 24) 23)) anon75_correct)))
(let ((anon124_Then_correct  (and (=> (= (ControlFlow 0 26) 24) anon125_Then_correct) (=> (= (ControlFlow 0 26) 25) anon125_Else_correct))))
(let ((anon124_Else_correct true))
(let ((anon72_correct  (=> (and (|_module.__default.F#canCall| (TSet TInt) ($Box SetType (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|)))) (= |h2#0@0| (forall ((|x#20| Int) ) (! (let ((|S#1| ($Unbox SetType (_module.__default.F (TSet TInt) ($Box SetType (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|)))))))
 (=> (|Set#IsMember| |S#1| ($Box intType (int_2_U |x#20|))) (< |x#20| 200)))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.58:26|
 :skolemid |501|
)))) (and (=> (= (ControlFlow 0 27) 26) anon124_Then_correct) (=> (= (ControlFlow 0 27) 17) anon124_Else_correct)))))
(let ((anon123_Else_correct  (=> (and (not (|Set#IsMember| |S#Z#1@0| ($Box intType (int_2_U |x#21@0|)))) (= (ControlFlow 0 29) 27)) anon72_correct)))
(let ((anon123_Then_correct  (=> (and (|Set#IsMember| |S#Z#1@0| ($Box intType (int_2_U |x#21@0|))) (= (ControlFlow 0 28) 27)) anon72_correct)))
(let ((anon70_correct  (=> (= |##s#0@0| (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|))) (=> (and ($IsAlloc SetType |##s#0@0| (TSet TInt) $Heap@@0) (|_module.__default.F#canCall| (TSet TInt) ($Box SetType (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|))))) (=> (and (and (= |let#1#0#0| ($Unbox SetType (_module.__default.F (TSet TInt) ($Box SetType (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|)))))) (|_module.__default.F#canCall| (TSet TInt) ($Box SetType (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|))))) (and ($Is SetType |let#1#0#0| (TSet TInt)) (= |S#Z#1@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 30) 28) anon123_Then_correct) (=> (= (ControlFlow 0 30) 29) anon123_Else_correct)))))))
(let ((anon122_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#5@0|)))) (= (ControlFlow 0 32) 30)) anon70_correct)))
(let ((anon122_Then_correct  (=> (and (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#5@0|))) (= (ControlFlow 0 31) 30)) anon70_correct)))
(let ((anon121_Then_correct  (and (=> (= (ControlFlow 0 33) 31) anon122_Then_correct) (=> (= (ControlFlow 0 33) 32) anon122_Else_correct))))
(let ((anon121_Else_correct true))
(let ((anon120_Then_correct  (and (=> (= (ControlFlow 0 34) 33) anon121_Then_correct) (=> (= (ControlFlow 0 34) 16) anon121_Else_correct))))
(let ((anon120_Else_correct true))
(let ((anon66_correct  (=> (= |h1#0@0| (forall ((|x#18| Int) ) (! (let ((|S#0| (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|))))
 (=> (|Set#IsMember| |S#0| ($Box intType (int_2_U |x#18|))) (< |x#18| 200)))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.56:26|
 :skolemid |500|
))) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= |h0#0@0| |h1#0@0|)) (=> (= |h0#0@0| |h1#0@0|) (and (=> (= (ControlFlow 0 35) 34) anon120_Then_correct) (=> (= (ControlFlow 0 35) 15) anon120_Else_correct)))))))
(let ((anon119_Else_correct  (=> (and (not (|Set#IsMember| |S#Z#0@0| ($Box intType (int_2_U |x#19@0|)))) (= (ControlFlow 0 38) 35)) anon66_correct)))
(let ((anon119_Then_correct  (=> (and (|Set#IsMember| |S#Z#0@0| ($Box intType (int_2_U |x#19@0|))) (= (ControlFlow 0 37) 35)) anon66_correct)))
(let ((anon64_correct  (=> (= |let#0#0#0| (|Set#FromBoogieMap| (|lambda#1| TInt |s#0@@3|))) (=> (and ($Is SetType |let#0#0#0| (TSet TInt)) (= |S#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 39) 37) anon119_Then_correct) (=> (= (ControlFlow 0 39) 38) anon119_Else_correct))))))
(let ((anon118_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#2@0|)))) (= (ControlFlow 0 41) 39)) anon64_correct)))
(let ((anon118_Then_correct  (=> (and (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#2@0|))) (= (ControlFlow 0 40) 39)) anon64_correct)))
(let ((anon117_Then_correct  (and (=> (= (ControlFlow 0 42) 40) anon118_Then_correct) (=> (= (ControlFlow 0 42) 41) anon118_Else_correct))))
(let ((anon117_Else_correct true))
(let ((anon116_Then_correct  (and (=> (= (ControlFlow 0 43) 42) anon117_Then_correct) (=> (= (ControlFlow 0 43) 14) anon117_Else_correct))))
(let ((anon116_Else_correct true))
(let ((anon60_correct  (=> (= |h0#0@0| (forall ((|x#16| Int) ) (!  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#16|))) (< |x#16| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.55:26|
 :skolemid |499|
))) (and (=> (= (ControlFlow 0 44) 43) anon116_Then_correct) (=> (= (ControlFlow 0 44) 13) anon116_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#17@0|)))) (= (ControlFlow 0 46) 44)) anon60_correct)))
(let ((anon115_Then_correct  (=> (and (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#17@0|))) (= (ControlFlow 0 45) 44)) anon60_correct)))
(let ((anon114_Else_correct  (=> (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#0@0|)))) (and (=> (= (ControlFlow 0 48) 45) anon115_Then_correct) (=> (= (ControlFlow 0 48) 46) anon115_Else_correct)))))
(let ((anon114_Then_correct  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#0@0|))) (and (=> (= (ControlFlow 0 47) 45) anon115_Then_correct) (=> (= (ControlFlow 0 47) 46) anon115_Else_correct)))))
(let ((anon113_Then_correct  (and (=> (= (ControlFlow 0 49) 47) anon114_Then_correct) (=> (= (ControlFlow 0 49) 48) anon114_Else_correct))))
(let ((anon113_Else_correct true))
(let ((anon112_Then_correct  (and (=> (= (ControlFlow 0 50) 49) anon113_Then_correct) (=> (= (ControlFlow 0 50) 12) anon113_Else_correct))))
(let ((anon112_Else_correct true))
(let ((anon54_correct  (and (=> (= (ControlFlow 0 51) 50) anon112_Then_correct) (=> (= (ControlFlow 0 51) 11) anon112_Else_correct))))
(let ((anon46_correct  (=> (= |c1#0_0@0| (forall ((|x#0_2| Int) ) (!  (=> (or (or (= |x#0_2| (LitInt 2)) (= |x#0_2| (LitInt 3))) (= |x#0_2| (LitInt 5))) (< |x#0_2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.44:28|
 :skolemid |496|
))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (= |c0#0_0@0| |c1#0_0@0|)) (=> (= |c0#0_0@0| |c1#0_0@0|) (=> (= (ControlFlow 0 64) 51) anon54_correct))))))
(let ((anon107_Else_correct  (=> (and (not (or (or (= |x#0_3@0| (LitInt 2)) (= |x#0_3@0| (LitInt 3))) (= |x#0_3@0| (LitInt 5)))) (= (ControlFlow 0 67) 64)) anon46_correct)))
(let ((anon107_Then_correct  (=> (and (or (or (= |x#0_3@0| (LitInt 2)) (= |x#0_3@0| (LitInt 3))) (= |x#0_3@0| (LitInt 5))) (= (ControlFlow 0 66) 64)) anon46_correct)))
(let ((anon106_Then_correct  (and (=> (= (ControlFlow 0 68) 66) anon107_Then_correct) (=> (= (ControlFlow 0 68) 67) anon107_Else_correct))))
(let ((anon43_correct  (=> (= |c0#0_0@0| (forall ((|x#0_0| Int) ) (!  (=> (or (or (= |x#0_0| (LitInt 2)) (= |x#0_0| (LitInt 3))) (= |x#0_0| (LitInt 5))) (< |x#0_0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.43:28|
 :skolemid |495|
))) (and (=> (= (ControlFlow 0 69) 68) anon106_Then_correct) (=> (= (ControlFlow 0 69) 63) anon106_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (not (or (or (= |x#0_1@0| (LitInt 2)) (= |x#0_1@0| (LitInt 3))) (= |x#0_1@0| (LitInt 5)))) (= (ControlFlow 0 71) 69)) anon43_correct)))
(let ((anon105_Then_correct  (=> (and (or (or (= |x#0_1@0| (LitInt 2)) (= |x#0_1@0| (LitInt 3))) (= |x#0_1@0| (LitInt 5))) (= (ControlFlow 0 70) 69)) anon43_correct)))
(let ((anon104_Then_correct  (and (=> (= (ControlFlow 0 72) 70) anon105_Then_correct) (=> (= (ControlFlow 0 72) 71) anon105_Else_correct))))
(let ((anon103_Then_correct  (and (=> (= (ControlFlow 0 73) 72) anon104_Then_correct) (=> (= (ControlFlow 0 73) 62) anon104_Else_correct))))
(let ((anon53_correct  (=> (= |c1#1_0@0| (forall ((|x#1_2| Int) ) (!  (=> (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_2|))) (< |x#1_2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.50:28|
 :skolemid |498|
 :pattern ( (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_2|))))
))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= |c0#1_0@0| |c1#1_0@0|)) (=> (= |c0#1_0@0| |c1#1_0@0|) (=> (= (ControlFlow 0 52) 51) anon54_correct))))))
(let ((anon111_Else_correct  (=> (and (not (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_3@0|)))) (= (ControlFlow 0 55) 52)) anon53_correct)))
(let ((anon111_Then_correct  (=> (and (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_3@0|))) (= (ControlFlow 0 54) 52)) anon53_correct)))
(let ((anon110_Then_correct  (and (=> (= (ControlFlow 0 56) 54) anon111_Then_correct) (=> (= (ControlFlow 0 56) 55) anon111_Else_correct))))
(let ((anon110_Else_correct true))
(let ((anon50_correct  (=> (= |c0#1_0@0| (forall ((|x#1_0| Int) ) (!  (=> (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_0|))) (< |x#1_0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.49:28|
 :skolemid |497|
 :pattern ( (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_0|))))
))) (and (=> (= (ControlFlow 0 57) 56) anon110_Then_correct) (=> (= (ControlFlow 0 57) 10) anon110_Else_correct)))))
(let ((anon109_Else_correct  (=> (and (not (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_1@0|)))) (= (ControlFlow 0 59) 57)) anon50_correct)))
(let ((anon109_Then_correct  (=> (and (|Set#IsMember| |s#1_0@0| ($Box intType (int_2_U |x#1_1@0|))) (= (ControlFlow 0 58) 57)) anon50_correct)))
(let ((anon108_Then_correct  (and (=> (= (ControlFlow 0 60) 58) anon109_Then_correct) (=> (= (ControlFlow 0 60) 59) anon109_Else_correct))))
(let ((anon108_Else_correct true))
(let ((anon103_Else_correct  (=> (= |s#1_0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))))) (and (=> (= (ControlFlow 0 61) 60) anon108_Then_correct) (=> (= (ControlFlow 0 61) 9) anon108_Else_correct)))))
(let ((anon39_correct  (=> (= |d1#0@0| (forall ((|x#14| Int) ) (!  (=> (and (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#14|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#14|)))) (not (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#14|))))) (< |x#14| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.37:26|
 :skolemid |494|
 :pattern ( (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#14|))))
 :pattern ( (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#14|))))
 :pattern ( (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#14|))))
))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (= |d0#0@0| |d1#0@0|)) (=> (= |d0#0@0| |d1#0@0|) (and (=> (= (ControlFlow 0 74) 73) anon103_Then_correct) (=> (= (ControlFlow 0 74) 61) anon103_Else_correct)))))))
(let ((anon102_Else_correct  (=> (and (not (and (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#15@0|)))) (not (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#15@0|)))))) (= (ControlFlow 0 77) 74)) anon39_correct)))
(let ((anon102_Then_correct  (=> (and (and (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#15@0|)))) (not (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#15@0|))))) (= (ControlFlow 0 76) 74)) anon39_correct)))
(let ((anon101_Else_correct  (=> (not (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#15@0|))))) (and (=> (= (ControlFlow 0 79) 76) anon102_Then_correct) (=> (= (ControlFlow 0 79) 77) anon102_Else_correct)))))
(let ((anon101_Then_correct  (=> (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#15@0|)))) (and (=> (= (ControlFlow 0 78) 76) anon102_Then_correct) (=> (= (ControlFlow 0 78) 77) anon102_Else_correct)))))
(let ((anon100_Else_correct  (=> (not (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|)))) (and (=> (= (ControlFlow 0 81) 78) anon101_Then_correct) (=> (= (ControlFlow 0 81) 79) anon101_Else_correct)))))
(let ((anon100_Then_correct  (=> (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#15@0|))) (and (=> (= (ControlFlow 0 80) 78) anon101_Then_correct) (=> (= (ControlFlow 0 80) 79) anon101_Else_correct)))))
(let ((anon99_Then_correct  (and (=> (= (ControlFlow 0 82) 80) anon100_Then_correct) (=> (= (ControlFlow 0 82) 81) anon100_Else_correct))))
(let ((anon99_Else_correct true))
(let ((anon32_correct  (=> (= |d0#0@0| (forall ((|x#12| Int) ) (!  (=> (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#12|))) (< |x#12| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.36:26|
 :skolemid |493|
 :pattern ( (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#12|))))
))) (and (=> (= (ControlFlow 0 83) 82) anon99_Then_correct) (=> (= (ControlFlow 0 83) 8) anon99_Else_correct)))))
(let ((anon98_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#13@0|)))) (= (ControlFlow 0 85) 83)) anon32_correct)))
(let ((anon98_Then_correct  (=> (and (|Set#IsMember| (|Set#Difference| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#13@0|))) (= (ControlFlow 0 84) 83)) anon32_correct)))
(let ((anon97_Then_correct  (and (=> (= (ControlFlow 0 86) 84) anon98_Then_correct) (=> (= (ControlFlow 0 86) 85) anon98_Else_correct))))
(let ((anon97_Else_correct true))
(let ((anon29_correct  (=> (= |i1#0@0| (forall ((|x#10| Int) ) (!  (=> (and (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#10|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#10|)))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#10|)))) (< |x#10| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.32:26|
 :skolemid |492|
 :pattern ( (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#10|))))
 :pattern ( (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#10|))))
 :pattern ( (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#10|))))
))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (= |i0#0@0| |i1#0@0|)) (=> (= |i0#0@0| |i1#0@0|) (and (=> (= (ControlFlow 0 87) 86) anon97_Then_correct) (=> (= (ControlFlow 0 87) 7) anon97_Else_correct)))))))
(let ((anon96_Else_correct  (=> (and (not (and (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#11@0|)))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#11@0|))))) (= (ControlFlow 0 90) 87)) anon29_correct)))
(let ((anon96_Then_correct  (=> (and (and (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#11@0|)))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#11@0|)))) (= (ControlFlow 0 89) 87)) anon29_correct)))
(let ((anon95_Else_correct  (=> (not (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#11@0|))))) (and (=> (= (ControlFlow 0 92) 89) anon96_Then_correct) (=> (= (ControlFlow 0 92) 90) anon96_Else_correct)))))
(let ((anon95_Then_correct  (=> (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|))) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#11@0|)))) (and (=> (= (ControlFlow 0 91) 89) anon96_Then_correct) (=> (= (ControlFlow 0 91) 90) anon96_Else_correct)))))
(let ((anon94_Else_correct  (=> (not (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|)))) (and (=> (= (ControlFlow 0 94) 91) anon95_Then_correct) (=> (= (ControlFlow 0 94) 92) anon95_Else_correct)))))
(let ((anon94_Then_correct  (=> (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#11@0|))) (and (=> (= (ControlFlow 0 93) 91) anon95_Then_correct) (=> (= (ControlFlow 0 93) 92) anon95_Else_correct)))))
(let ((anon93_Then_correct  (and (=> (= (ControlFlow 0 95) 93) anon94_Then_correct) (=> (= (ControlFlow 0 95) 94) anon94_Else_correct))))
(let ((anon93_Else_correct true))
(let ((anon22_correct  (=> (= |i0#0@0| (forall ((|x#8| Int) ) (!  (=> (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#8|))) (< |x#8| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.31:26|
 :skolemid |491|
 :pattern ( (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#8|))))
))) (and (=> (= (ControlFlow 0 96) 95) anon93_Then_correct) (=> (= (ControlFlow 0 96) 6) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#9@0|)))) (= (ControlFlow 0 98) 96)) anon22_correct)))
(let ((anon92_Then_correct  (=> (and (|Set#IsMember| (|Set#Intersection| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#9@0|))) (= (ControlFlow 0 97) 96)) anon22_correct)))
(let ((anon91_Then_correct  (and (=> (= (ControlFlow 0 99) 97) anon92_Then_correct) (=> (= (ControlFlow 0 99) 98) anon92_Else_correct))))
(let ((anon91_Else_correct true))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 100) (- 0 102)) (= |u0#0@0| |u1#0@0|)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (|Set#Equal| |u2#0@0| |u3#0@0|)) (=> (and (= |u0#0@0| |u1#0@0|) (|Set#Equal| |u2#0@0| |u3#0@0|)) (and (=> (= (ControlFlow 0 100) 99) anon91_Then_correct) (=> (= (ControlFlow 0 100) 5) anon91_Else_correct)))))))
(let ((anon90_Else_correct  (=> (and (= |u0#0@0|  (not |u1#0@0|)) (= (ControlFlow 0 104) 100)) anon19_correct)))
(let ((anon90_Then_correct  (=> (and (= |u0#0@0| |u1#0@0|) (= (ControlFlow 0 103) 100)) anon19_correct)))
(let ((anon17_correct  (=> (= |u3#0@0| (|Set#FromBoogieMap| (|lambda#2| TInt (|Set#Union| |s#0@@3| |t#0|) |s#0@@3| |t#0|))) (and (=> (= (ControlFlow 0 105) 103) anon90_Then_correct) (=> (= (ControlFlow 0 105) 104) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (and (not (and (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#6@0|))) (or (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#6@0|))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#6@0|)))))) (= (ControlFlow 0 107) 105)) anon17_correct)))
(let ((anon89_Then_correct  (=> (and (and (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#6@0|))) (or (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#6@0|))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#6@0|))))) (= (ControlFlow 0 106) 105)) anon17_correct)))
(let ((anon88_Else_correct  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#6@0|))) (and (=> (= (ControlFlow 0 110) 106) anon89_Then_correct) (=> (= (ControlFlow 0 110) 107) anon89_Else_correct)))))
(let ((anon88_Then_correct  (=> (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#6@0|)))) (and (=> (= (ControlFlow 0 109) 106) anon89_Then_correct) (=> (= (ControlFlow 0 109) 107) anon89_Else_correct)))))
(let ((anon87_Then_correct  (=> (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#6@0|))) (and (=> (= (ControlFlow 0 111) 109) anon88_Then_correct) (=> (= (ControlFlow 0 111) 110) anon88_Else_correct)))))
(let ((anon87_Else_correct  (=> (not (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#6@0|)))) (and (=> (= (ControlFlow 0 108) 106) anon89_Then_correct) (=> (= (ControlFlow 0 108) 107) anon89_Else_correct)))))
(let ((anon86_Then_correct  (and (=> (= (ControlFlow 0 112) 111) anon87_Then_correct) (=> (= (ControlFlow 0 112) 108) anon87_Else_correct))))
(let ((anon86_Else_correct true))
(let ((anon11_correct  (=> (= |u2#0@0| (|Set#FromBoogieMap| (|lambda#1| TInt (|Set#Union| |s#0@@3| |t#0|)))) (and (=> (= (ControlFlow 0 113) 112) anon86_Then_correct) (=> (= (ControlFlow 0 113) 4) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#4@0|)))) (= (ControlFlow 0 115) 113)) anon11_correct)))
(let ((anon85_Then_correct  (=> (and (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#4@0|))) (= (ControlFlow 0 114) 113)) anon11_correct)))
(let ((anon84_Then_correct  (and (=> (= (ControlFlow 0 116) 114) anon85_Then_correct) (=> (= (ControlFlow 0 116) 115) anon85_Else_correct))))
(let ((anon84_Else_correct true))
(let ((anon8_correct  (=> (= |u1#0@0| (forall ((|x#2| Int) ) (!  (=> (or (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#2|))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#2|)))) (< |x#2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.25:26|
 :skolemid |490|
 :pattern ( (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#2|))))
 :pattern ( (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#2|))))
))) (and (=> (= (ControlFlow 0 117) 116) anon84_Then_correct) (=> (= (ControlFlow 0 117) 3) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (not (or (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#3@0|))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#3@0|))))) (= (ControlFlow 0 119) 117)) anon8_correct)))
(let ((anon83_Then_correct  (=> (and (or (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#3@0|))) (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#3@0|)))) (= (ControlFlow 0 118) 117)) anon8_correct)))
(let ((anon82_Else_correct  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#3@0|))) (and (=> (= (ControlFlow 0 121) 118) anon83_Then_correct) (=> (= (ControlFlow 0 121) 119) anon83_Else_correct)))))
(let ((anon82_Then_correct  (=> (not (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#3@0|)))) (and (=> (= (ControlFlow 0 120) 118) anon83_Then_correct) (=> (= (ControlFlow 0 120) 119) anon83_Else_correct)))))
(let ((anon81_Then_correct  (and (=> (= (ControlFlow 0 122) 120) anon82_Then_correct) (=> (= (ControlFlow 0 122) 121) anon82_Else_correct))))
(let ((anon81_Else_correct true))
(let ((anon3_correct  (=> (= |u0#0@0| (forall ((|x#0| Int) ) (!  (=> (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#0|))) (< |x#0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.24:26|
 :skolemid |489|
 :pattern ( (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#0|))))
))) (and (=> (= (ControlFlow 0 123) 122) anon81_Then_correct) (=> (= (ControlFlow 0 123) 2) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#1@0|)))) (= (ControlFlow 0 125) 123)) anon3_correct)))
(let ((anon80_Then_correct  (=> (and (|Set#IsMember| (|Set#Union| |s#0@@3| |t#0|) ($Box intType (int_2_U |x#1@0|))) (= (ControlFlow 0 124) 123)) anon3_correct)))
(let ((anon79_Then_correct  (and (=> (= (ControlFlow 0 126) 124) anon80_Then_correct) (=> (= (ControlFlow 0 126) 125) anon80_Else_correct))))
(let ((anon79_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 127) 126) anon79_Then_correct) (=> (= (ControlFlow 0 127) 1) anon79_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is SetType |s#0@@3| (TSet TInt)) ($IsAlloc SetType |s#0@@3| (TSet TInt) $Heap@@0)) (and ($Is SetType |t#0| (TSet TInt)) ($IsAlloc SetType |t#0| (TSet TInt) $Heap@@0))) (=> (and (and (and (and ($Is SetType |u2#0| (TSet TInt)) ($IsAlloc SetType |u2#0| (TSet TInt) $Heap@@0)) true) (and (and ($Is SetType |u3#0| (TSet TInt)) ($IsAlloc SetType |u3#0| (TSet TInt) $Heap@@0)) true)) (and (and (and ($Is SetType |s#1_0| (TSet TInt)) ($IsAlloc SetType |s#1_0| (TSet TInt) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 128) 127)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
