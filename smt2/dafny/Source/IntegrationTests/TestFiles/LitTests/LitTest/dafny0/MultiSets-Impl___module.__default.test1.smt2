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
(declare-fun TagMultiSet () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#1| (T@U Int T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSet TagMultiSet alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a@@0 b)) (|MultiSet#Card| (|MultiSet#Difference| b a@@0))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a@@0 b)))) (|MultiSet#Card| (|MultiSet#Union| a@@0 b))) (= (|MultiSet#Card| (|MultiSet#Difference| a@@0 b)) (- (|MultiSet#Card| a@@0) (|MultiSet#Card| (|MultiSet#Intersection| a@@0 b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |204|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a@@0 b)))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| T@U) (|$y#3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#3|)) (exists ((|x#2| Int) ) (!  (and (> (|MultiSet#Multiplicity| |l#0| ($Box intType (int_2_U |x#2|))) |l#1|) (= |$y#3| ($Box intType (int_2_U |x#2|))))
 :qid |MultiSetsdfy.20:33|
 :skolemid |492|
 :pattern ( (|MultiSet#Multiplicity| |l#2| ($Box intType (int_2_U |x#2|))))
)))
 :qid |MultiSetsdfy.6:8|
 :skolemid |657|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#3|))
)))
(assert (forall ((a@@1 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@1 y) (|Set#IsMember| (|Set#UnionOne| a@@1 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@1 x@@3) (|Set#IsMember| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@2 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@2 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@2 x@@4) o))
)))
(assert (forall ((a@@3 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@3 b@@0) a@@3) (= (|Math#min| a@@3 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@3 b@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0@@0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0@@0)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@0 T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@4 y@@0) (|MultiSet#Multiplicity| b@@1 y@@0)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@4 b@@1) y@@0) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |203|
 :pattern ( (|MultiSet#Difference| a@@4 b@@1) (|MultiSet#Multiplicity| b@@1 y@@0) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@5 b@@2) b@@2) (|MultiSet#Intersection| a@@5 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |200|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@6))
)))
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
(assert (forall ((a@@7 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@7 b@@3) o@@1) (|Math#min| (|MultiSet#Multiplicity| a@@7 o@@1) (|MultiSet#Multiplicity| b@@3 o@@1)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@7 b@@3) o@@1))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (x@@8 T@U) (y@@1 T@U) ) (!  (=> (or (not (= x@@8 y@@1)) (not true)) (= (|MultiSet#Multiplicity| a@@8 y@@1) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@8) y@@1)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@8) (|MultiSet#Multiplicity| a@@8 y@@1))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((a@@9 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@9 x@@9)) (+ (|MultiSet#Card| a@@9) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@9 x@@9)))
)))
(assert (forall ((a@@10 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Disjoint| a@@10 b@@4) (forall ((o@@2 T@U) ) (!  (or (= (|MultiSet#Multiplicity| a@@10 o@@2) 0) (= (|MultiSet#Multiplicity| b@@4 o@@2) 0))
 :qid |DafnyPreludebpl.1063:19|
 :skolemid |210|
 :pattern ( (|MultiSet#Multiplicity| a@@10 o@@2))
 :pattern ( (|MultiSet#Multiplicity| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.1060:15|
 :skolemid |211|
 :pattern ( (|MultiSet#Disjoint| a@@10 b@@4))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h) ($IsAlloc T@@1 v@@1 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h))
)))
(assert (forall ((a@@11 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@5)) (+ (|MultiSet#Card| a@@11) (|MultiSet#Card| b@@5)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@5)))
)))
(assert (forall ((a@@12 T@U) (b@@6 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@6) (= a@@12 b@@6))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@6))
)))
(assert (forall ((a@@13 T@U) (b@@7 T@U) ) (!  (=> (|MultiSet#Equal| a@@13 b@@7) (= a@@13 b@@7))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@13 b@@7))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@2 (TMultiSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@2 bx@@1)) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@2 (TMultiSet t0@@2)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@0) ($Is T@@2 v@@3 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@3 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@3)) (<= (|MultiSet#Multiplicity| ms bx@@3) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@3))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@3) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@4) ($IsAllocBox bx@@4 t0@@3 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@3) h@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
)))
(assert (forall ((a@@14 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@14 x@@10) x@@10) (+ (|MultiSet#Multiplicity| a@@14 x@@10) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@14 x@@10))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TMultiSet t@@4)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@4))
)))
(assert (forall ((x@@11 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@11)) x@@11)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@11))
)))
(assert (forall ((a@@15 T@U) (b@@8 T@U) ) (! (= (|MultiSet#Intersection| a@@15 (|MultiSet#Intersection| a@@15 b@@8)) (|MultiSet#Intersection| a@@15 b@@8))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@15 (|MultiSet#Intersection| a@@15 b@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@12 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@12))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@12))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@16 T@U) (b@@9 T@U) (o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@16 b@@9) o@@4) (+ (|MultiSet#Multiplicity| a@@16 o@@4) (|MultiSet#Multiplicity| b@@9 o@@4)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@16 b@@9) o@@4))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@0 t2 (MapType1Store t0@@4 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |656|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((a@@17 Int) (b@@10 Int) ) (! (= (<= a@@17 b@@10) (= (|Math#min| a@@17 b@@10) a@@17))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@17 b@@10))
)))
(assert (forall ((a@@18 Int) (b@@11 Int) ) (! (= (<= b@@11 a@@18) (= (|Math#min| a@@18 b@@11) b@@11))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@18 b@@11))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TMultiSet t@@6)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@6)) bx@@6) ($Is MultiSetType ($Unbox MultiSetType bx@@6) (TMultiSet t@@6))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@6 (TMultiSet t@@6)))
)))
(assert (forall ((a@@19 T@U) (b@@12 T@U) (o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@19 b@@12) o@@5) (|Math#clip| (- (|MultiSet#Multiplicity| a@@19 o@@5) (|MultiSet#Multiplicity| b@@12 o@@5))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@19 b@@12) o@@5))
)))
(assert (forall ((a@@20 T@U) (b@@13 T@U) ) (! (= (|Set#Equal| a@@20 b@@13) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@20 o@@6) (|Set#IsMember| b@@13 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@20 o@@6))
 :pattern ( (|Set#IsMember| b@@13 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@20 b@@13))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@14)) (Lit BoxType ($Box T@@4 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@14)))
)))
(assert (forall ((a@@22 T@U) (x@@15 T@U) (y@@2 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@22 y@@2)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@15) y@@2)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@22 x@@15) (|MultiSet#Multiplicity| a@@22 y@@2))
)))
(assert (forall ((a@@23 T@U) (x@@16 T@U) (o@@7 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@23 x@@16) o@@7))  (or (= o@@7 x@@16) (< 0 (|MultiSet#Multiplicity| a@@23 o@@7))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@23 x@@16) o@@7))
)))
(assert (forall ((a@@24 T@U) (b@@14 T@U) ) (! (= (|MultiSet#Equal| a@@24 b@@14) (forall ((o@@8 T@U) ) (! (= (|MultiSet#Multiplicity| a@@24 o@@8) (|MultiSet#Multiplicity| b@@14 o@@8))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@24 o@@8))
 :pattern ( (|MultiSet#Multiplicity| b@@14 o@@8))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@24 b@@14))
)))
(assert (forall ((v@@5 T@U) (t0@@5 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MultiSetType v@@5 (TMultiSet t0@@5) h@@1) (forall ((bx@@7 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@7)) ($IsAllocBox bx@@7 t0@@5 h@@1))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@7))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@5 (TMultiSet t0@@5) h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@2))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ms#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |m#2@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |m#Z#0@0| () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |ms2#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |ms#0| () T@U)
(declare-fun |ms2#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.test1)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon19_Else_correct true))
(let ((anon13_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((|s#1| T@U) ) (!  (=> ($Is SetType |s#1| (TSet TInt)) (=> (|Set#Equal| |s#1| (|Set#FromBoogieMap| (|lambda#1| |ms#0@0| 0 |ms#0@0|))) (|Set#Equal| |s#1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))))))
 :qid |MultiSetsdfy.20:18|
 :skolemid |493|
)))))
(let ((anon21_Else_correct  (=> (and (not (|Set#Equal| |s#0@0| (|Set#FromBoogieMap| (|lambda#1| |ms#0@0| 0 |ms#0@0|)))) (= (ControlFlow 0 7) 3)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (|Set#Equal| |s#0@0| (|Set#FromBoogieMap| (|lambda#1| |ms#0@0| 0 |ms#0@0|))) (= (ControlFlow 0 6) 3)) anon13_correct)))
(let ((anon20_Else_correct  (=> (>= 0 (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U |x#0@0|)))) (and (=> (= (ControlFlow 0 9) 6) anon21_Then_correct) (=> (= (ControlFlow 0 9) 7) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (> (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U |x#0@0|))) 0) (and (=> (= (ControlFlow 0 8) 6) anon21_Then_correct) (=> (= (ControlFlow 0 8) 7) anon21_Else_correct)))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 10) 8) anon20_Then_correct) (=> (= (ControlFlow 0 10) 9) anon20_Else_correct))))
(let ((anon18_Then_correct  (=> (and ($Is SetType |s#0@0| (TSet TInt)) ($IsAlloc SetType |s#0@0| (TSet TInt) $Heap)) (and (=> (= (ControlFlow 0 11) 10) anon19_Then_correct) (=> (= (ControlFlow 0 11) 5) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (and ($Is SetType |s#0@0| (TSet TInt)) ($IsAlloc SetType |s#0@0| (TSet TInt) $Heap))) (= (ControlFlow 0 4) 3)) anon13_correct)))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((|m#3| T@U) ) (!  (=> ($Is MultiSetType |m#3| (TMultiSet TInt)) (|MultiSet#Disjoint| (let ((|m#4| |m#3|))
|m#4|) |MultiSet#Empty|))
 :qid |MultiSetsdfy.18:18|
 :skolemid |487|
))) (=> (forall ((|m#3@@0| T@U) ) (!  (=> ($Is MultiSetType |m#3@@0| (TMultiSet TInt)) (|MultiSet#Disjoint| (let ((|m#4@@0| |m#3@@0|))
|m#4@@0|) |MultiSet#Empty|))
 :qid |MultiSetsdfy.18:18|
 :skolemid |487|
)) (and (=> (= (ControlFlow 0 12) 11) anon18_Then_correct) (=> (= (ControlFlow 0 12) 4) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (and (not (and ($Is MultiSetType |m#2@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |m#2@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 15) 12)) anon7_correct)))
(let ((anon17_Then_correct  (=> (and ($Is MultiSetType |m#2@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |m#2@0| (TMultiSet TInt) $Heap)) (=> (and (and (= |let#0#0#0| |m#2@0|) ($Is MultiSetType |let#0#0#0| (TMultiSet TInt))) (and (= |m#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 14) 12))) anon7_correct))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (exists ((|m#1| T@U) ) (!  (and ($Is MultiSetType |m#1| (TMultiSet TInt)) (not (|MultiSet#Disjoint| |m#1| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))))))
 :qid |MultiSetsdfy.17:18|
 :skolemid |485|
))) (=> (exists ((|m#1@@0| T@U) ) (!  (and ($Is MultiSetType |m#1@@0| (TMultiSet TInt)) (not (|MultiSet#Disjoint| |m#1@@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))))))
 :qid |MultiSetsdfy.17:18|
 :skolemid |485|
)) (and (=> (= (ControlFlow 0 16) 14) anon17_Then_correct) (=> (= (ControlFlow 0 16) 15) anon17_Else_correct))))))
(let ((anon16_Else_correct  (=> (and (not (and ($Is MultiSetType |m#0@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |m#0@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 19) 16)) anon5_correct)))
(let ((anon16_Then_correct  (=> (and (and ($Is MultiSetType |m#0@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |m#0@0| (TMultiSet TInt) $Heap)) (= (ControlFlow 0 18) 16)) anon5_correct)))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 20) (- 0 26)) (forall ((|i#1| Int) ) (!  (=> (or (not (= |i#1| 1)) (not true)) (not (> (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U |i#1|))) 0)))
 :qid |MultiSetsdfy.9:18|
 :skolemid |483|
 :pattern ( (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U |i#1|))))
))) (=> (forall ((|i#1@@0| T@U) ) (!  (=> (or (not (= (U_2_int |i#1@@0|) 1)) (not true)) (not (> (|MultiSet#Multiplicity| |ms#0@0| ($Box intType |i#1@@0|)) 0)))
 :qid |MultiSetsdfy.9:18|
 :skolemid |483|
 :pattern ( (|MultiSet#Multiplicity| |ms#0@0| ($Box intType |i#1@@0|)))
)) (and (=> (= (ControlFlow 0 20) (- 0 25)) (not (|MultiSet#Equal| (|MultiSet#Difference| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) |MultiSet#Empty|))) (=> (not (|MultiSet#Equal| (|MultiSet#Difference| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) |MultiSet#Empty|)) (and (=> (= (ControlFlow 0 20) (- 0 24)) (|MultiSet#Equal| (|MultiSet#Difference| (|MultiSet#Difference| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) |MultiSet#Empty|)) (=> (|MultiSet#Equal| (|MultiSet#Difference| (|MultiSet#Difference| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) |MultiSet#Empty|) (and (=> (= (ControlFlow 0 20) (- 0 23)) (|MultiSet#Equal| (|MultiSet#Difference| |ms2#0@0| |ms#0@0|) |ms2#0@0|)) (=> (|MultiSet#Equal| (|MultiSet#Difference| |ms2#0@0| |ms#0@0|) |ms2#0@0|) (and (=> (= (ControlFlow 0 20) (- 0 22)) (|MultiSet#Equal| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))) (=> (|MultiSet#Equal| (|MultiSet#Difference| |ms#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (not (|MultiSet#Disjoint| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))))) (=> (not (|MultiSet#Disjoint| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))))) (and (=> (= (ControlFlow 0 20) 18) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct))))))))))))))))
(let ((anon15_Else_correct  (=> (and (= |i#0@0| 1) (= (ControlFlow 0 28) 20)) anon3_correct)))
(let ((anon15_Then_correct  (=> (and (or (not (= |i#0@0| 1)) (not true)) (= (ControlFlow 0 27) 20)) anon3_correct)))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 29) 27) anon15_Then_correct) (=> (= (ControlFlow 0 29) 28) anon15_Else_correct))))
(let ((anon14_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |ms#0@0| (Lit MultiSetType (|MultiSet#UnionOne| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))) (= |ms2#0@0| (Lit MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 3))))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (> (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U (LitInt 1)))) 0)) (=> (> (|MultiSet#Multiplicity| |ms#0@0| ($Box intType (int_2_U (LitInt 1)))) 0) (and (=> (= (ControlFlow 0 30) 29) anon14_Then_correct) (=> (= (ControlFlow 0 30) 1) anon14_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MultiSetType |ms#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms#0| (TMultiSet TInt) $Heap)) true) (=> (and (and (and ($Is MultiSetType |ms2#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms2#0| (TMultiSet TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 32) 30))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
