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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |2576|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |2587|
 :pattern ( (|MultiSet#Equal| a@@8 b@@5))
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
(assert (forall ((a@@9 T@U) (b@@6 T@U) (c T@U) ) (!  (=> (or (not (= a@@9 c)) (not true)) (=> (and ($HeapSucc a@@9 b@@6) ($HeapSucc b@@6 c)) ($HeapSucc a@@9 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@9 b@@6) ($HeapSucc b@@6 c))
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
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |2565|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((a@@10 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@10 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@10 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |2571|
 :pattern ( (|MultiSet#UnionOne| a@@10 x@@7))
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
(assert (forall ((a@@11 T@U) (b@@7 T@U) ) (! (= (|MultiSet#Intersection| a@@11 (|MultiSet#Intersection| a@@11 b@@7)) (|MultiSet#Intersection| a@@11 b@@7))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |2579|
 :pattern ( (|MultiSet#Intersection| a@@11 (|MultiSet#Intersection| a@@11 b@@7)))
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
(assert (forall ((a@@12 T@U) (b@@8 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@12 b@@8) o@@2) (+ (|MultiSet#Multiplicity| a@@12 o@@2) (|MultiSet#Multiplicity| b@@8 o@@2)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |2575|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@12 b@@8) o@@2))
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
(assert (forall ((a@@13 Int) (b@@9 Int) ) (! (= (<= a@@13 b@@9) (= (|Math#min| a@@13 b@@9) a@@13))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |2555|
 :pattern ( (|Math#min| a@@13 b@@9))
)))
(assert (forall ((a@@14 Int) (b@@10 Int) ) (! (= (<= b@@10 a@@14) (= (|Math#min| a@@14 b@@10) b@@10))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |2556|
 :pattern ( (|Math#min| a@@14 b@@10))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@5)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@5))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |2412|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@5)))
)))
(assert (forall ((a@@15 T@U) (b@@11 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@11) o@@3) (|Math#clip| (- (|MultiSet#Multiplicity| a@@15 o@@3) (|MultiSet#Multiplicity| b@@11 o@@3))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |2580|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@11) o@@3))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (< a@@16 0) (= (|Math#clip| a@@16) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |2559|
 :pattern ( (|Math#clip| a@@16))
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
(assert (forall ((a@@17 T@U) (x@@12 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@17 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@12) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |2572|
 :pattern ( (|MultiSet#UnionOne| a@@17 x@@12) (|MultiSet#Multiplicity| a@@17 y@@1))
)))
(assert (forall ((a@@18 T@U) (x@@13 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@18 x@@13) o@@4))  (or (= o@@4 x@@13) (< 0 (|MultiSet#Multiplicity| a@@18 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |2570|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@18 x@@13) o@@4))
)))
(assert (forall ((a@@19 T@U) (b@@12 T@U) ) (! (= (|MultiSet#Equal| a@@19 b@@12) (forall ((o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| a@@19 o@@5) (|MultiSet#Multiplicity| b@@12 o@@5))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |2585|
 :pattern ( (|MultiSet#Multiplicity| a@@19 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@12 o@@5))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |2586|
 :pattern ( (|MultiSet#Equal| a@@19 b@@12))
)))
(assert (forall ((a@@20 T@U) (b@@13 T@U) ) (! (= (|MultiSet#Subset| a@@20 b@@13) (forall ((o@@6 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@20 o@@6) (|MultiSet#Multiplicity| b@@13 o@@6))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |2583|
 :pattern ( (|MultiSet#Multiplicity| a@@20 o@@6))
 :pattern ( (|MultiSet#Multiplicity| b@@13 o@@6))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |2584|
 :pattern ( (|MultiSet#Subset| a@@20 b@@13))
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
(declare-fun _module._default.MultisetsST0$Y () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |x#0_0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |x#0_1@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |defass#x#0_0@0| () Bool)
(declare-fun |x#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |S#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |defass#x#0_0| () Bool)
(declare-fun |x#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MultisetsST0)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon10_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (exists ((|$as#x0_0#0_0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0| _module._default.MultisetsST0$Y) (and (> (|MultiSet#Multiplicity| |s#0@0| |$as#x0_0#0_0|) 0) (or (or (not (= |$as#x0_0#0_0| |y#0|)) (not true)) (<= (LitInt 2) (|MultiSet#Multiplicity| |s#0@0| |y#0|)))))
 :qid |Terminationdfy.776:9|
 :skolemid |3231|
))) (=> (exists ((|$as#x0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0@@0| _module._default.MultisetsST0$Y) (and (> (|MultiSet#Multiplicity| |s#0@0| |$as#x0_0#0_0@@0|) 0) (or (or (not (= |$as#x0_0#0_0@@0| |y#0|)) (not true)) (<= (LitInt 2) (|MultiSet#Multiplicity| |s#0@0| |y#0|)))))
 :qid |Terminationdfy.776:9|
 :skolemid |3231|
)) (=> (=> true (and ($IsBox |x#0_0@1| _module._default.MultisetsST0$Y) ($IsAllocBox |x#0_0@1| _module._default.MultisetsST0$Y $Heap))) (=> (and (> (|MultiSet#Multiplicity| |s#0@0| |x#0_0@1|) 0) (or (or (not (= |x#0_0@1| |y#0|)) (not true)) (<= (LitInt 2) (|MultiSet#Multiplicity| |s#0@0| |y#0|)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (=> (= |s#0@1| (|MultiSet#Difference| |s#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| |x#0_0@1|))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (<= 0 |$decr$loop#00@1|) (= (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |t#0@0|)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |t#0@0|)) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 6) (- 0 5)) (< (|MultiSet#Card| (|MultiSet#Difference| |s#0@1| |t#0@0|)) |$decr$loop#00@1|))))))))))))
(let ((anon9_correct  (=> (= (ControlFlow 0 11) 6) anon10_correct)))
(let ((anon16_Else_correct  (=> (and (or (not (= |x#0_1@1| |y#0|)) (not true)) (= (ControlFlow 0 14) 11)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (= |x#0_1@1| |y#0|) (= (ControlFlow 0 13) 11)) anon9_correct)))
(let ((anon15_Then_correct  (=> (> (|MultiSet#Multiplicity| |s#0@0| |x#0_1@1|) 0) (and (=> (= (ControlFlow 0 15) 13) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |s#0@0| |x#0_1@1|)) (= (ControlFlow 0 12) 11)) anon9_correct)))
(let ((anon14_Then_correct  (=> (and ($IsBox |x#0_1@1| _module._default.MultisetsST0$Y) ($IsAllocBox |x#0_1@1| _module._default.MultisetsST0$Y $Heap)) (and (=> (= (ControlFlow 0 16) 15) anon15_Then_correct) (=> (= (ControlFlow 0 16) 12) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (and ($IsBox |x#0_1@1| _module._default.MultisetsST0$Y) ($IsAllocBox |x#0_1@1| _module._default.MultisetsST0$Y $Heap))) (= (ControlFlow 0 10) 6)) anon10_correct)))
(let ((anon13_Else_correct  (=> (and (and (|MultiSet#Subset| |t#0@0| |s#0@0|) (not (|MultiSet#Equal| |t#0@0| |s#0@0|))) (= |$decr$loop#00@1| (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@0|)))) (and (=> (= (ControlFlow 0 17) 16) anon14_Then_correct) (=> (= (ControlFlow 0 17) 10) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 18) 4) anon13_Then_correct) (=> (= (ControlFlow 0 18) 17) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (not |$w$loop#0@0|) (=> (and (= |newtype$check#0@0| (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@0|))) (= (ControlFlow 0 3) (- 0 2))) (<= (LitInt 0) |newtype$check#0@0|)))))
(let ((anon11_LoopBody_correct  (and (=> (= (ControlFlow 0 19) 3) anon12_Then_correct) (=> (= (ControlFlow 0 19) 18) anon12_Else_correct))))
(let ((anon11_LoopDone_correct true))
(let ((anon11_LoopHead_correct  (=> (=> |defass#x#0_0@0| (and ($IsBox |x#0_0@0| _module._default.MultisetsST0$Y) ($IsAllocBox |x#0_0@0| _module._default.MultisetsST0$Y $Heap))) (=> (and (and (and ($Is MultiSetType |s#0@0| (TMultiSet _module._default.MultisetsST0$Y)) ($IsAlloc MultiSetType |s#0@0| (TMultiSet _module._default.MultisetsST0$Y) $Heap)) (not false)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.775:3|
 :skolemid |3229|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.775:3|
 :skolemid |3230|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (|MultiSet#Card| (|MultiSet#Difference| |s#0@0| |t#0@0|)) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 20) 1) anon11_LoopDone_correct) (=> (= (ControlFlow 0 20) 19) anon11_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |t#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| |y#0|))) (and (= |$decr_init$loop#00@0| (|MultiSet#Card| (|MultiSet#Difference| |S#0| |t#0@0|))) (= (ControlFlow 0 21) 20))) anon11_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is MultiSetType |S#0| (TMultiSet _module._default.MultisetsST0$Y)) ($IsAlloc MultiSetType |S#0| (TMultiSet _module._default.MultisetsST0$Y) $Heap)) (and ($IsBox |y#0| _module._default.MultisetsST0$Y) ($IsAllocBox |y#0| _module._default.MultisetsST0$Y $Heap))) (and (and ($Is MultiSetType |s#0| (TMultiSet _module._default.MultisetsST0$Y)) ($IsAlloc MultiSetType |s#0| (TMultiSet _module._default.MultisetsST0$Y) $Heap)) true)) (and (and (and ($Is MultiSetType |t#0| (TMultiSet _module._default.MultisetsST0$Y)) ($IsAlloc MultiSetType |t#0| (TMultiSet _module._default.MultisetsST0$Y) $Heap)) true) (and (and (=> |defass#x#0_0| (and ($IsBox |x#0_0| _module._default.MultisetsST0$Y) ($IsAllocBox |x#0_0| _module._default.MultisetsST0$Y $Heap))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 22) 21))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
