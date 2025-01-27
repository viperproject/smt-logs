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
(declare-fun Tagclass.PrefixEquality.Stream () T@U)
(declare-fun |##PrefixEquality.Stream.Cons| () T@U)
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
(declare-fun |$PrefixEq#PrefixEquality.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.PrefixEquality.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun PrefixEquality.Stream.Cons_q (T@U) Bool)
(declare-fun PrefixEquality.Stream.head (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun PrefixEquality.Stream._h1 (T@U) T@U)
(declare-fun |$Eq#PrefixEquality.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#PrefixEquality.Stream| (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#PrefixEquality.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun Tclass.PrefixEquality.Stream_0 (T@U) T@U)
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
(assert (distinct alloc Tagclass.PrefixEquality.Stream |##PrefixEquality.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|PrefixEquality.Stream$T#l| T@U) (|PrefixEquality.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass.PrefixEquality.Stream |PrefixEquality.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass.PrefixEquality.Stream |PrefixEquality.Stream$T#r|))) (= (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l| |PrefixEquality.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (PrefixEquality.Stream.Cons_q d0) (PrefixEquality.Stream.Cons_q d1)) (=> (and (PrefixEquality.Stream.Cons_q d0) (PrefixEquality.Stream.Cons_q d1)) (and (= (PrefixEquality.Stream.head d0) (PrefixEquality.Stream.head d1)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l| |PrefixEquality.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (PrefixEquality.Stream._h1 d0) (PrefixEquality.Stream._h1 d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l| |PrefixEquality.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l| |PrefixEquality.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@0| T@U) (|PrefixEquality.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@0| |PrefixEquality.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@0| |PrefixEquality.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@0| |PrefixEquality.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |691|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#PrefixEquality.Stream| d) (PrefixEquality.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( (|$IsA#PrefixEquality.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |699|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((PrefixEquality.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T)) (PrefixEquality.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1198|
 :pattern ( (PrefixEquality.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T)))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@1| T@U) (|PrefixEquality.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@1| |PrefixEquality.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |1209|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@1| |PrefixEquality.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@2| T@U) (|PrefixEquality.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@2| |PrefixEquality.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@2| |PrefixEquality.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |616|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((PrefixEquality.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#PrefixEquality.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@0))  (and ($IsBox |a#2#0#0| PrefixEquality.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |1191|
 :pattern ( ($Is DatatypeTypeType (|#PrefixEquality.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (PrefixEquality.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##PrefixEquality.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( (PrefixEquality.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |627|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (PrefixEquality.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#PrefixEquality.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |CoPrefixdfy.197:31|
 :skolemid |1189|
)))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( (PrefixEquality.Stream.Cons_q d@@2))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@3| T@U) (|PrefixEquality.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass.PrefixEquality.Stream |PrefixEquality.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass.PrefixEquality.Stream |PrefixEquality.Stream$T#r@@3|))) (= (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@3| |PrefixEquality.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (PrefixEquality.Stream.Cons_q d0@@3) (PrefixEquality.Stream.Cons_q d1@@3)) (=> (and (PrefixEquality.Stream.Cons_q d0@@3) (PrefixEquality.Stream.Cons_q d1@@3)) (and (= (PrefixEquality.Stream.head d0@@3) (PrefixEquality.Stream.head d1@@3)) (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@3| |PrefixEquality.Stream$T#r@@3| ly@@3 (PrefixEquality.Stream._h1 d0@@3) (PrefixEquality.Stream._h1 d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@3| |PrefixEquality.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |640|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((PrefixEquality.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@1)) Tagclass.PrefixEquality.Stream) (= (TagFamily (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@1))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |696|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |687|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |690|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |639|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |686|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#PrefixEquality.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##PrefixEquality.Stream.Cons|)
 :qid |CoPrefixdfy.197:31|
 :skolemid |1187|
 :pattern ( (|#PrefixEquality.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (PrefixEquality.Stream.head (|#PrefixEquality.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |CoPrefixdfy.197:31|
 :skolemid |1195|
 :pattern ( (|#PrefixEquality.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (PrefixEquality.Stream._h1 (|#PrefixEquality.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |CoPrefixdfy.197:31|
 :skolemid |1196|
 :pattern ( (|#PrefixEquality.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((PrefixEquality.Stream$T@@2 T@U) ) (! (= (Tclass.PrefixEquality.Stream_0 (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@2)) PrefixEquality.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |626|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |689|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@4| T@U) (|PrefixEquality.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@4| |PrefixEquality.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@4| |PrefixEquality.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@4| |PrefixEquality.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@4| |PrefixEquality.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@3 T@U) (PrefixEquality.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (PrefixEquality.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@3) $h))) ($IsAllocBox (PrefixEquality.Stream.head d@@3) PrefixEquality.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |1193|
 :pattern ( ($IsAllocBox (PrefixEquality.Stream.head d@@3) PrefixEquality.Stream$T@@3 $h))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
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
 :skolemid |2060|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((PrefixEquality.Stream$T@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( ($IsBox bx (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@4)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |688|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) (PrefixEquality.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (PrefixEquality.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@5) $h@@0))) ($IsAlloc DatatypeTypeType (PrefixEquality.Stream._h1 d@@4) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1194|
 :pattern ( ($IsAlloc DatatypeTypeType (PrefixEquality.Stream._h1 d@@4) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@5) $h@@0))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |697|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@5| T@U) (|PrefixEquality.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@5| |PrefixEquality.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@5| |PrefixEquality.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |1208|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@5| |PrefixEquality.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@5| |PrefixEquality.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@6| T@U) (|PrefixEquality.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@6| |PrefixEquality.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@6| |PrefixEquality.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@6| |PrefixEquality.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |617|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|PrefixEquality.Stream$T#l@@7| T@U) (|PrefixEquality.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@7| |PrefixEquality.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1206|
 :pattern ( (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@7| |PrefixEquality.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@7| |PrefixEquality.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |1207|
 :pattern ( (|$Eq#PrefixEquality.Stream| |PrefixEquality.Stream$T#l@@7| |PrefixEquality.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((PrefixEquality.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#PrefixEquality.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| PrefixEquality.Stream$T@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( ($IsAlloc DatatypeTypeType (|#PrefixEquality.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.PrefixEquality.Stream PrefixEquality.Stream$T@@6) $h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |PrefixEquality._default.Test1#$_T0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |s#1| () T@U)
(declare-fun |t#1| () T@U)
(declare-fun |_k#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$PrefixEquality.__default.Test1_h)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon12_Else_correct true))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (Lit BoxType (|ORD#FromNat| 0)) ($LS ($LS $LZ)) |s#1| |t#1|) (=> (< 0 (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 0)))) (=> (PrefixEquality.Stream.Cons_q |s#1|) (and (PrefixEquality.Stream.Cons_q |t#1|) (and (= (PrefixEquality.Stream.head |s#1|) (PrefixEquality.Stream.head |t#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (Lit BoxType (|ORD#FromNat| 0)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |s#1|) (PrefixEquality.Stream._h1 |t#1|)))))))) (=> (= (ControlFlow 0 14) (- 0 13)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (Lit BoxType (|ORD#FromNat| 0)) ($LS ($LS $LZ)) |s#1| |t#1|) (or (=> (< 0 (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 0)))) (=> (PrefixEquality.Stream.Cons_q |s#1|) (and (PrefixEquality.Stream.Cons_q |t#1|) (and (= (PrefixEquality.Stream.head |s#1|) (PrefixEquality.Stream.head |t#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (Lit BoxType (|ORD#FromNat| 0)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |s#1|) (PrefixEquality.Stream._h1 |t#1|)))))) (=> (and (or (not (= (Lit BoxType (|ORD#FromNat| 0)) (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 0))) 0)) (|$Eq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| ($LS ($LS $LZ)) |s#1| |t#1|))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 12)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 2)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 2))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 2))) (|ORD#Offset| |_k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 2))) (|ORD#Offset| |_k#0|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)) ($LS ($LS $LZ)) |t#1| |s#1|) (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)))) (=> (PrefixEquality.Stream.Cons_q |t#1|) (and (PrefixEquality.Stream.Cons_q |s#1|) (and (= (PrefixEquality.Stream.head |t#1|) (PrefixEquality.Stream.head |s#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |t#1|) (PrefixEquality.Stream._h1 |s#1|)))))))) (=> (= (ControlFlow 0 9) (- 0 8)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)) ($LS ($LS $LZ)) |t#1| |s#1|) (or (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)))) (=> (PrefixEquality.Stream.Cons_q |t#1|) (and (PrefixEquality.Stream.Cons_q |s#1|) (and (= (PrefixEquality.Stream.head |t#1|) (PrefixEquality.Stream.head |s#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |t#1|) (PrefixEquality.Stream._h1 |s#1|)))))) (=> (and (or (not (= (|ORD#Minus| |_k#0| (|ORD#FromNat| 2)) (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 2))) 0)) (|$Eq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| ($LS ($LS $LZ)) |t#1| |s#1|))))))))))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 7)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) |s#1| |t#1|) (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (PrefixEquality.Stream.Cons_q |s#1|) (and (PrefixEquality.Stream.Cons_q |t#1|) (and (= (PrefixEquality.Stream.head |s#1|) (PrefixEquality.Stream.head |t#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |s#1|) (PrefixEquality.Stream._h1 |t#1|)))))))) (=> (= (ControlFlow 0 4) (- 0 3)) (or (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) |s#1| |t#1|) (or (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (PrefixEquality.Stream.Cons_q |s#1|) (and (PrefixEquality.Stream.Cons_q |t#1|) (and (= (PrefixEquality.Stream.head |s#1|) (PrefixEquality.Stream.head |t#1|)) (|$PrefixEq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (PrefixEquality.Stream._h1 |s#1|) (PrefixEquality.Stream._h1 |t#1|)))))) (=> (and (or (not (= (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1))) 0)) (|$Eq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| ($LS ($LS $LZ)) |s#1| |t#1|))))))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0|)) (and (and (and (and (=> (= (ControlFlow 0 17) 2) anon9_Then_correct) (=> (= (ControlFlow 0 17) 4) anon10_Then_correct)) (=> (= (ControlFlow 0 17) 9) anon11_Then_correct)) (=> (= (ControlFlow 0 17) 14) anon12_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon12_Else_correct)))))
(let ((anon8_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 18) 17) anon8_Then_correct) (=> (= (ControlFlow 0 18) 1) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |s#1| (Tclass.PrefixEquality.Stream |PrefixEquality._default.Test1#$_T0|)) ($IsAlloc DatatypeTypeType |s#1| (Tclass.PrefixEquality.Stream |PrefixEquality._default.Test1#$_T0|) $Heap)) (|$IsA#PrefixEquality.Stream| |s#1|)) (=> (and (and (and (and ($Is DatatypeTypeType |t#1| (Tclass.PrefixEquality.Stream |PrefixEquality._default.Test1#$_T0|)) ($IsAlloc DatatypeTypeType |t#1| (Tclass.PrefixEquality.Stream |PrefixEquality._default.Test1#$_T0|) $Heap)) (|$IsA#PrefixEquality.Stream| |t#1|)) (= 2 $FunctionContextHeight)) (and (|$Eq#PrefixEquality.Stream| |PrefixEquality._default.Test1#$_T0| |PrefixEquality._default.Test1#$_T0| ($LS ($LS $LZ)) |s#1| |t#1|) (= (ControlFlow 0 19) 18))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 9) (- 11))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
