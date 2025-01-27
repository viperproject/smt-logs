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
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert (distinct TagMultiSet alloc)
)
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |2582|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |2557|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |2430|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |2581|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |2578|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |2558|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0) (|Math#min| (|MultiSet#Multiplicity| a@@4 o@@0) (|MultiSet#Multiplicity| b@@3 o@@0)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |2577|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@5 T@U) (x@@5 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@5 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@5) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |2573|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@5) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |2574|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Disjoint| a@@7 b@@4) (forall ((o@@1 T@U) ) (!  (or (= (|MultiSet#Multiplicity| a@@7 o@@1) 0) (= (|MultiSet#Multiplicity| b@@4 o@@1) 0))
 :qid |DafnyPreludebpl.1063:19|
 :skolemid |2588|
 :pattern ( (|MultiSet#Multiplicity| a@@7 o@@1))
 :pattern ( (|MultiSet#Multiplicity| b@@4 o@@1))
)))
 :qid |DafnyPreludebpl.1060:15|
 :skolemid |2589|
 :pattern ( (|MultiSet#Disjoint| a@@7 b@@4))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@8 b@@5)) (+ (|MultiSet#Card| a@@8) (|MultiSet#Card| b@@5)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |2576|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@8 b@@5)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|MultiSet#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |2587|
 :pattern ( (|MultiSet#Equal| a@@9 b@@6))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) ) (! (= ($Is MultiSetType v@@2 (TMultiSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@2 bx@@0)) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |2428|
 :pattern ( (|MultiSet#Multiplicity| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |2429|
 :pattern ( ($Is MultiSetType v@@2 (TMultiSet t0@@1)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (c T@U) ) (!  (=> (or (not (= a@@10 c)) (not true)) (=> (and ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c)) ($HeapSucc a@@10 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |2561|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |2562|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |2563|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |2565|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2))
)))
(assert (forall ((a@@11 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@11 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@11 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |2571|
 :pattern ( (|MultiSet#UnionOne| a@@11 x@@7))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |2383|
 :pattern ( (TMultiSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TMultiSet t@@4)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |2384|
 :pattern ( (TMultiSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@12 T@U) (b@@8 T@U) ) (! (= (|MultiSet#Intersection| a@@12 (|MultiSet#Intersection| a@@12 b@@8)) (|MultiSet#Intersection| a@@12 b@@8))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |2579|
 :pattern ( (|MultiSet#Intersection| a@@12 (|MultiSet#Intersection| a@@12 b@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |2566|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |2567|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@13 T@U) (b@@9 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@13 b@@9) o@@3) (+ (|MultiSet#Multiplicity| a@@13 o@@3) (|MultiSet#Multiplicity| b@@9 o@@3)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |2575|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@13 b@@9) o@@3))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@14 Int) (b@@10 Int) ) (! (= (<= a@@14 b@@10) (= (|Math#min| a@@14 b@@10) a@@14))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |2555|
 :pattern ( (|Math#min| a@@14 b@@10))
)))
(assert (forall ((a@@15 Int) (b@@11 Int) ) (! (= (<= b@@11 a@@15) (= (|Math#min| a@@15 b@@11) b@@11))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |2556|
 :pattern ( (|Math#min| a@@15 b@@11))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@5)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@5))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |2412|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@5)))
)))
(assert (forall ((a@@16 T@U) (b@@12 T@U) (o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@16 b@@12) o@@4) (|Math#clip| (- (|MultiSet#Multiplicity| a@@16 o@@4) (|MultiSet#Multiplicity| b@@12 o@@4))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |2580|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@16 b@@12) o@@4))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (< a@@17 0) (= (|Math#clip| a@@17) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |2559|
 :pattern ( (|Math#clip| a@@17))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((a@@18 T@U) (x@@12 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@18 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@18 x@@12) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |2572|
 :pattern ( (|MultiSet#UnionOne| a@@18 x@@12) (|MultiSet#Multiplicity| a@@18 y@@1))
)))
(assert (forall ((a@@19 T@U) (x@@13 T@U) (o@@5 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@19 x@@13) o@@5))  (or (= o@@5 x@@13) (< 0 (|MultiSet#Multiplicity| a@@19 o@@5))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |2570|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@19 x@@13) o@@5))
)))
(assert (forall ((a@@20 T@U) (b@@13 T@U) ) (! (= (|MultiSet#Equal| a@@20 b@@13) (forall ((o@@6 T@U) ) (! (= (|MultiSet#Multiplicity| a@@20 o@@6) (|MultiSet#Multiplicity| b@@13 o@@6))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |2585|
 :pattern ( (|MultiSet#Multiplicity| a@@20 o@@6))
 :pattern ( (|MultiSet#Multiplicity| b@@13 o@@6))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |2586|
 :pattern ( (|MultiSet#Equal| a@@20 b@@13))
)))
(assert (forall ((a@@21 T@U) (b@@14 T@U) ) (! (= (|MultiSet#Subset| a@@21 b@@14) (forall ((o@@7 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@21 o@@7) (|MultiSet#Multiplicity| b@@14 o@@7))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |2583|
 :pattern ( (|MultiSet#Multiplicity| a@@21 o@@7))
 :pattern ( (|MultiSet#Multiplicity| b@@14 o@@7))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |2584|
 :pattern ( (|MultiSet#Subset| a@@21 b@@14))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@4 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@3))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |2449|
 :pattern ( (|MultiSet#Multiplicity| v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |2450|
 :pattern ( ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |P#0| () T@U)
(declare-fun |t#0@1| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun _module._default.MultisetsST5$Y () T@U)
(declare-fun |$rhs#0_0@1| () T@U)
(declare-fun |$rhs#0_1@1| () T@U)
(declare-fun |x#0_0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |x#0_1@1| () T@U)
(declare-fun |z#0_0@1| () T@U)
(declare-fun |z#0_1@1| () T@U)
(declare-fun |defass#x#0_0@0| () Bool)
(declare-fun |x#0_0@0| () T@U)
(declare-fun |defass#z#0_0@0| () Bool)
(declare-fun |z#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |S#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |defass#z#0_0| () Bool)
(declare-fun |z#0_0| () T@U)
(declare-fun |defass#x#0_0| () Bool)
(declare-fun |x#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MultisetsST5)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon6_correct  (=> (and (and (and (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|) (|MultiSet#Subset| |t#0@1| |s#0@0|)) (<= (|MultiSet#Multiplicity| |s#0@0| |y#0|) (|MultiSet#Multiplicity| |t#0@1| |y#0|))) (= |newtype$check#0@0| (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@1|)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= (LitInt 0) |newtype$check#0@0|)) (=> (<= (LitInt 0) |newtype$check#0@0|) (=> (and (= |newtype$check#1@0| (|MultiSet#Card| (|MultiSet#Difference| |t#0@1| |s#0@0|))) (= (ControlFlow 0 25) (- 0 24))) (<= (LitInt 0) |newtype$check#1@0|)))))))
(let ((anon19_Else_correct  (=> (and (not (and (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|) (|MultiSet#Subset| |t#0@1| |s#0@0|))) (= (ControlFlow 0 28) 25)) anon6_correct)))
(let ((anon19_Then_correct  (=> (and (and (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|) (|MultiSet#Subset| |t#0@1| |s#0@0|)) (= (ControlFlow 0 27) 25)) anon6_correct)))
(let ((anon18_Else_correct  (=> (not (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|)) (and (=> (= (ControlFlow 0 30) 27) anon19_Then_correct) (=> (= (ControlFlow 0 30) 28) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|) (and (=> (= (ControlFlow 0 29) 27) anon19_Then_correct) (=> (= (ControlFlow 0 29) 28) anon19_Else_correct)))))
(let ((anon17_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 31) 29) anon18_Then_correct) (=> (= (ControlFlow 0 31) 30) anon18_Else_correct)))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 4) (- 0 10)) (exists ((|$as#x0_0#0_0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0| _module._default.MultisetsST5$Y) (and (> (|MultiSet#Multiplicity| |$rhs#0_0@1| |$as#x0_0#0_0|) 0) (< (|MultiSet#Multiplicity| |$rhs#0_1@1| |$as#x0_0#0_0|) (|MultiSet#Multiplicity| |$rhs#0_0@1| |$as#x0_0#0_0|))))
 :qid |Terminationdfy.838:9|
 :skolemid |3262|
))) (=> (exists ((|$as#x0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0@@0| _module._default.MultisetsST5$Y) (and (> (|MultiSet#Multiplicity| |$rhs#0_0@1| |$as#x0_0#0_0@@0|) 0) (< (|MultiSet#Multiplicity| |$rhs#0_1@1| |$as#x0_0#0_0@@0|) (|MultiSet#Multiplicity| |$rhs#0_0@1| |$as#x0_0#0_0@@0|))))
 :qid |Terminationdfy.838:9|
 :skolemid |3262|
)) (=> (=> true (and ($IsBox |x#0_0@1| _module._default.MultisetsST5$Y) ($IsAllocBox |x#0_0@1| _module._default.MultisetsST5$Y $Heap))) (=> (and (> (|MultiSet#Multiplicity| |$rhs#0_0@1| |x#0_0@1|) 0) (< (|MultiSet#Multiplicity| |$rhs#0_1@1| |x#0_0@1|) (|MultiSet#Multiplicity| |$rhs#0_0@1| |x#0_0@1|))) (and (=> (= (ControlFlow 0 4) (- 0 9)) true) (=> (= |s#0@1| (|MultiSet#Difference| |$rhs#0_0@1| (|MultiSet#UnionOne| |MultiSet#Empty| |x#0_0@1|))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |$rhs#0_1@1|)) (|MultiSet#Card| (|MultiSet#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |$rhs#0_1@1|)) (|MultiSet#Card| (|MultiSet#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (< (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |$rhs#0_1@1|)) (|MultiSet#Card| (|MultiSet#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|)) (=> (< (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |$rhs#0_1@1|)) (|MultiSet#Card| (|MultiSet#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0@0| (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@1| |P#0|) |$rhs#0_1@1|))) (=> (=> |$w$loop#0@0| (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@1| |P#0|) |$rhs#0_1@1|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0@0| (|MultiSet#Subset| |$rhs#0_1@1| |s#0@1|))) (=> (=> |$w$loop#0@0| (|MultiSet#Subset| |$rhs#0_1@1| |s#0@1|)) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (<= (|MultiSet#Multiplicity| |s#0@1| |y#0|) (|MultiSet#Multiplicity| |$rhs#0_1@1| |y#0|))))))))))))))))))))
(let ((anon14_correct  (=> (= (ControlFlow 0 12) 4) anon15_correct)))
(let ((anon23_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |$rhs#0_0@1| |x#0_1@1|)) (= (ControlFlow 0 14) 12)) anon14_correct)))
(let ((anon23_Then_correct  (=> (and (> (|MultiSet#Multiplicity| |$rhs#0_0@1| |x#0_1@1|) 0) (= (ControlFlow 0 13) 12)) anon14_correct)))
(let ((anon22_Then_correct  (=> (and ($IsBox |x#0_1@1| _module._default.MultisetsST5$Y) ($IsAllocBox |x#0_1@1| _module._default.MultisetsST5$Y $Heap)) (and (=> (= (ControlFlow 0 15) 13) anon23_Then_correct) (=> (= (ControlFlow 0 15) 14) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and ($IsBox |x#0_1@1| _module._default.MultisetsST5$Y) ($IsAllocBox |x#0_1@1| _module._default.MultisetsST5$Y $Heap))) (= (ControlFlow 0 11) 4)) anon15_correct)))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 16) (- 0 19)) (exists ((|$as#z0_0#0_0| T@U) ) (!  (and ($IsBox |$as#z0_0#0_0| _module._default.MultisetsST5$Y) (> (|MultiSet#Multiplicity| |P#0| |$as#z0_0#0_0|) 0))
 :qid |Terminationdfy.835:9|
 :skolemid |3261|
))) (=> (exists ((|$as#z0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#z0_0#0_0@@0| _module._default.MultisetsST5$Y) (> (|MultiSet#Multiplicity| |P#0| |$as#z0_0#0_0@@0|) 0))
 :qid |Terminationdfy.835:9|
 :skolemid |3261|
)) (=> (and (=> true (and ($IsBox |z#0_0@1| _module._default.MultisetsST5$Y) ($IsAllocBox |z#0_0@1| _module._default.MultisetsST5$Y $Heap))) (> (|MultiSet#Multiplicity| |P#0| |z#0_0@1|) 0)) (and (=> (= (ControlFlow 0 16) (- 0 18)) true) (=> (= |$rhs#0_0@1| (|MultiSet#Union| |s#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| |z#0_0@1|))) (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (=> (= |$rhs#0_1@1| (|MultiSet#Union| |t#0@1| (|MultiSet#UnionOne| |MultiSet#Empty| |z#0_0@1|))) (and (=> (= (ControlFlow 0 16) 15) anon22_Then_correct) (=> (= (ControlFlow 0 16) 11) anon22_Else_correct)))))))))))
(let ((anon21_Else_correct  (=> (and (not (and ($IsBox |z#0_1@1| _module._default.MultisetsST5$Y) ($IsAllocBox |z#0_1@1| _module._default.MultisetsST5$Y $Heap))) (= (ControlFlow 0 21) 16)) anon11_correct)))
(let ((anon21_Then_correct  (=> (and (and ($IsBox |z#0_1@1| _module._default.MultisetsST5$Y) ($IsAllocBox |z#0_1@1| _module._default.MultisetsST5$Y $Heap)) (= (ControlFlow 0 20) 16)) anon11_correct)))
(let ((anon20_Else_correct  (=> (and (not (|MultiSet#Equal| |s#0@0| |t#0@1|)) (= |$decr$loop#00@1| (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@1|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0@1| |s#0@0|))))) (and (=> (= (ControlFlow 0 22) 20) anon21_Then_correct) (=> (= (ControlFlow 0 22) 21) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon17_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 23) 2) anon20_Then_correct) (=> (= (ControlFlow 0 23) 22) anon20_Else_correct)))))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 32) 31) anon17_Then_correct) (=> (= (ControlFlow 0 32) 23) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (=> |defass#x#0_0@0| (and ($IsBox |x#0_0@0| _module._default.MultisetsST5$Y) ($IsAllocBox |x#0_0@0| _module._default.MultisetsST5$Y $Heap))) (=> (and (and (and (and ($Is MultiSetType |s#0@0| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |s#0@0| (TMultiSet _module._default.MultisetsST5$Y) $Heap)) (=> |defass#z#0_0@0| (and ($IsBox |z#0_0@0| _module._default.MultisetsST5$Y) ($IsAllocBox |z#0_0@0| _module._default.MultisetsST5$Y $Heap)))) (and ($Is MultiSetType |t#0@1| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |t#0@1| (TMultiSet _module._default.MultisetsST5$Y) $Heap))) (and (and (and (not false) (=> |$w$loop#0@0| (|MultiSet#Subset| (|MultiSet#Intersection| |s#0@0| |P#0|) |t#0@1|))) (and (=> |$w$loop#0@0| (|MultiSet#Subset| |t#0@1| |s#0@0|)) (=> |$w$loop#0@0| (<= (|MultiSet#Multiplicity| |s#0@0| |y#0|) (|MultiSet#Multiplicity| |t#0@1| |y#0|))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.832:3|
 :skolemid |3259|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.832:3|
 :skolemid |3260|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (+ (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@1|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0@1| |s#0@0|))) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 33) 1) anon16_LoopDone_correct) (=> (= (ControlFlow 0 33) 32) anon16_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |t#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| |y#0|)) (= |$decr_init$loop#00@0| (+ (|MultiSet#Card| (|MultiSet#Difference| |S#0| |t#0@0|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0@0| |S#0|))))) (and (=> (= (ControlFlow 0 34) (- 0 37)) (=> |$w$loop#0@0| (|MultiSet#Subset| (|MultiSet#Intersection| |S#0| |P#0|) |t#0@0|))) (=> (=> |$w$loop#0@0| (|MultiSet#Subset| (|MultiSet#Intersection| |S#0| |P#0|) |t#0@0|)) (and (=> (= (ControlFlow 0 34) (- 0 36)) (=> |$w$loop#0@0| (|MultiSet#Subset| |t#0@0| |S#0|))) (=> (=> |$w$loop#0@0| (|MultiSet#Subset| |t#0@0| |S#0|)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (=> |$w$loop#0@0| (<= (|MultiSet#Multiplicity| |S#0| |y#0|) (|MultiSet#Multiplicity| |t#0@0| |y#0|)))) (=> (=> |$w$loop#0@0| (<= (|MultiSet#Multiplicity| |S#0| |y#0|) (|MultiSet#Multiplicity| |t#0@0| |y#0|))) (=> (= (ControlFlow 0 34) 33) anon16_LoopHead_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is MultiSetType |S#0| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |S#0| (TMultiSet _module._default.MultisetsST5$Y) $Heap))) (=> (and (and (and ($IsBox |y#0| _module._default.MultisetsST5$Y) ($IsAllocBox |y#0| _module._default.MultisetsST5$Y $Heap)) (and ($Is MultiSetType |P#0| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |P#0| (TMultiSet _module._default.MultisetsST5$Y) $Heap))) (and (and ($Is MultiSetType |s#0| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |s#0| (TMultiSet _module._default.MultisetsST5$Y) $Heap)) true)) (=> (and (and (and (and ($Is MultiSetType |t#0| (TMultiSet _module._default.MultisetsST5$Y)) ($IsAlloc MultiSetType |t#0| (TMultiSet _module._default.MultisetsST5$Y) $Heap)) true) (and (=> |defass#z#0_0| (and ($IsBox |z#0_0| _module._default.MultisetsST5$Y) ($IsAllocBox |z#0_0| _module._default.MultisetsST5$Y $Heap))) true)) (and (and (and (=> |defass#x#0_0| (and ($IsBox |x#0_0| _module._default.MultisetsST5$Y) ($IsAllocBox |x#0_0| _module._default.MultisetsST5$Y $Heap))) true) (= 0 $FunctionContextHeight)) (and (and (= (|MultiSet#Multiplicity| |S#0| |y#0|) (LitInt 1)) (not (|MultiSet#Equal| |P#0| |MultiSet#Empty|))) (and (|MultiSet#Disjoint| |S#0| |P#0|) (= (ControlFlow 0 38) 34))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
