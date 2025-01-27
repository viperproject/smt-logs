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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSet alloc)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |3087|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |3088|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |3092|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |3093|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |3086|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |3102|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3083|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |3095|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |3096|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |3098|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |3101|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |3084|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |3085|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |3100|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3076|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3077|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2973|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@4 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |3104|
 :pattern ( (|Set#IsMember| a@@10 o@@4))
 :pattern ( (|Set#IsMember| b@@7 o@@4))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |3105|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2984|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@5 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@5)) (not (|Set#IsMember| b@@8 o@@5)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |3109|
 :pattern ( (|Set#IsMember| a@@11 o@@5))
 :pattern ( (|Set#IsMember| b@@8 o@@5))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |3110|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3004|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3005|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2997|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3069|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3068|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@6 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@6)  (or (|Set#IsMember| a@@12 o@@6) (|Set#IsMember| b@@9 o@@6)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |3091|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@6))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |3094|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Set#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3108|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) (c T@U) ) (!  (=> (or (not (= a@@15 c)) (not true)) (=> (and ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c)) ($HeapSucc a@@15 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3075|
 :pattern ( ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2988|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@16 b@@13)) (|Set#Card| (|Set#Difference| b@@13 a@@16))) (|Set#Card| (|Set#Intersection| a@@16 b@@13))) (|Set#Card| (|Set#Union| a@@16 b@@13))) (= (|Set#Card| (|Set#Difference| a@@16 b@@13)) (- (|Set#Card| a@@16) (|Set#Card| (|Set#Intersection| a@@16 b@@13)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |3103|
 :pattern ( (|Set#Card| (|Set#Difference| a@@16 b@@13)))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2996|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |3082|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3025|
 :pattern ( (|Set#IsMember| v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3026|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2959|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2960|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2983|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |3097|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)) (|Set#Intersection| a@@18 b@@15))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |3099|
 :pattern ( (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)))
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
 :skolemid |5160|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2990|
 :pattern ( ($IsBox bx@@3 (TSet t@@5)))
)))
(assert (forall ((a@@19 T@U) (x@@9 T@U) ) (!  (=> (|Set#IsMember| a@@19 x@@9) (= (|Set#Card| (|Set#UnionOne| a@@19 x@@9)) (|Set#Card| a@@19)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |3089|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@19 x@@9)))
)))
(assert (forall ((a@@20 T@U) (b@@16 T@U) ) (! (= (|Set#Equal| a@@20 b@@16) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@20 o@@7) (|Set#IsMember| b@@16 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3106|
 :pattern ( (|Set#IsMember| a@@20 o@@7))
 :pattern ( (|Set#IsMember| b@@16 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3107|
 :pattern ( (|Set#Equal| a@@20 b@@16))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2974|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |3022|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@4))
)))
(assert (forall ((a@@21 T@U) (x@@11 T@U) ) (!  (=> (not (|Set#IsMember| a@@21 x@@11)) (= (|Set#Card| (|Set#UnionOne| a@@21 x@@11)) (+ (|Set#Card| a@@21) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |3090|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@21 x@@11)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |3001|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |r#0@2| () T@U)
(declare-fun |ss#0@1| () T@U)
(declare-fun |r#0@1| () T@U)
(declare-fun |ss#0@2| () T@U)
(declare-fun |call3formal@r#0@0| () Bool)
(declare-fun |i#0_0@1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun |i#0_1@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |ss#0@0| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |r#1@0| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |ss#0| () T@U)
(declare-fun |i#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$CharSetSetPrinter.__default.Minimum)
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
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (=> false (|Set#IsMember| |s#0| ($Box SetType |r#0@2|))))))
(let ((anon16_Then_correct  (=> (|Set#Equal| |ss#0@1| |Set#Empty|) (=> (and (= |r#0@2| |r#0@1|) (= (ControlFlow 0 14) 13)) GeneratedUnifiedExit_correct))))
(let ((anon12_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (and (|Set#Subset| |ss#0@2| |ss#0@1|) (not (|Set#Subset| |ss#0@1| |ss#0@2|))))))
(let ((anon18_Else_correct  (=> (and (not |call3formal@r#0@0|) (= (ControlFlow 0 6) 4)) anon12_correct)))
(let ((anon18_Then_correct  (=> (and |call3formal@r#0@0| (= (ControlFlow 0 5) 4)) anon12_correct)))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet TChar)) (|Set#IsMember| |ss#0@1| ($Box SetType (Lit SetType |Set#Empty|)))) (exists ((|$as#i0_0#0_0| T@U) ) (!  (and ($Is SetType |$as#i0_0#0_0| (TSet TChar)) (|Set#IsMember| |ss#0@1| ($Box SetType |$as#i0_0#0_0|)))
 :qid |Collectionsdfy.101:11|
 :skolemid |3451|
)))) (=> (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet TChar)) (|Set#IsMember| |ss#0@1| ($Box SetType (Lit SetType |Set#Empty|)))) (exists ((|$as#i0_0#0_0@@0| T@U) ) (!  (and ($Is SetType |$as#i0_0#0_0@@0| (TSet TChar)) (|Set#IsMember| |ss#0@1| ($Box SetType |$as#i0_0#0_0@@0|)))
 :qid |Collectionsdfy.101:11|
 :skolemid |3451|
))) (=> (and (and (and ($Is SetType |i#0_0@1| (TSet TChar)) ($IsAlloc SetType |i#0_0@1| (TSet TChar) $Heap@0)) (and (|Set#IsMember| |ss#0@1| ($Box SetType |i#0_0@1|)) (= |ss#0@2| (|Set#Difference| |ss#0@1| (|Set#UnionOne| |Set#Empty| ($Box SetType |i#0_0@1|)))))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0)))
 :qid |Collectionsdfy.78:10|
 :skolemid |3466|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@0))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 7) 5) anon18_Then_correct) (=> (= (ControlFlow 0 7) 6) anon18_Else_correct)))))))
(let ((anon17_Else_correct  (=> (and (not (and ($Is SetType |i#0_1@1| (TSet TChar)) ($IsAlloc SetType |i#0_1@1| (TSet TChar) $Heap@0))) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon17_Then_correct  (=> (and (and ($Is SetType |i#0_1@1| (TSet TChar)) ($IsAlloc SetType |i#0_1@1| (TSet TChar) $Heap@0)) (= (ControlFlow 0 9) 7)) anon9_correct)))
(let ((anon16_Else_correct  (=> (not (|Set#Equal| |ss#0@1| |Set#Empty|)) (and (=> (= (ControlFlow 0 11) 9) anon17_Then_correct) (=> (= (ControlFlow 0 11) 10) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 15) 14) anon16_Then_correct) (=> (= (ControlFlow 0 15) 11) anon16_Else_correct)))))
(let ((anon15_Then_correct true))
(let ((anon14_LoopBody_correct  (and (=> (= (ControlFlow 0 16) 2) anon15_Then_correct) (=> (= (ControlFlow 0 16) 15) anon15_Else_correct))))
(let ((anon14_LoopDone_correct true))
(let ((anon14_LoopHead_correct  (=> (and ($Is SetType |r#0@1| (TSet TChar)) ($IsAlloc SetType |r#0@1| (TSet TChar) $Heap@0)) (=> (and (and ($Is SetType |i#0_0@0| (TSet TChar)) ($IsAlloc SetType |i#0_0@0| (TSet TChar) $Heap@0)) (and ($Is SetType |ss#0@1| (TSet (TSet TChar))) ($IsAlloc SetType |ss#0@1| (TSet (TSet TChar)) $Heap@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (not false)) (and (=> |$w$loop#0@0| (|Set#Subset| |ss#0@1| |s#0|)) (=> |$w$loop#0@0| (|Set#IsMember| |s#0| ($Box SetType |r#0@1|))))) (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1)))
 :qid |Collectionsdfy.97:5|
 :skolemid |3449|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@2 $f@@0))))
 :qid |Collectionsdfy.97:5|
 :skolemid |3450|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) $f@@0))
)) (|Set#Subset| |ss#0@1| |ss#0@0|)))) (and (=> (= (ControlFlow 0 17) 1) anon14_LoopDone_correct) (=> (= (ControlFlow 0 17) 16) anon14_LoopBody_correct)))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet TChar)) (|Set#IsMember| |s#0| ($Box SetType (Lit SetType |Set#Empty|)))) (exists ((|$as#r0#0| T@U) ) (!  (and ($Is SetType |$as#r0#0| (TSet TChar)) (|Set#IsMember| |s#0| ($Box SetType |$as#r0#0|)))
 :qid |Collectionsdfy.95:5|
 :skolemid |3448|
)))) (=> (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet TChar)) (|Set#IsMember| |s#0| ($Box SetType (Lit SetType |Set#Empty|)))) (exists ((|$as#r0#0@@0| T@U) ) (!  (and ($Is SetType |$as#r0#0@@0| (TSet TChar)) (|Set#IsMember| |s#0| ($Box SetType |$as#r0#0@@0|)))
 :qid |Collectionsdfy.95:5|
 :skolemid |3448|
))) (=> (and (and (and ($Is SetType |r#0@0| (TSet TChar)) ($IsAlloc SetType |r#0@0| (TSet TChar) $Heap)) (|Set#IsMember| |s#0| ($Box SetType |r#0@0|))) (and (= |ss#0@0| (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box SetType |r#0@0|)))) (= (ControlFlow 0 18) 17))) anon14_LoopHead_correct)))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is SetType |r#1@0| (TSet TChar)) ($IsAlloc SetType |r#1@0| (TSet TChar) $Heap))) (= (ControlFlow 0 21) 18)) anon2_correct)))
(let ((anon13_Then_correct  (=> (and (and ($Is SetType |r#1@0| (TSet TChar)) ($IsAlloc SetType |r#1@0| (TSet TChar) $Heap)) (= (ControlFlow 0 20) 18)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 22) 20) anon13_Then_correct) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SetType |s#0| (TSet (TSet TChar))) ($IsAlloc SetType |s#0| (TSet (TSet TChar)) $Heap)) (and ($Is SetType |r#0| (TSet TChar)) ($IsAlloc SetType |r#0| (TSet TChar) $Heap))) (and (and ($Is SetType |ss#0| (TSet (TSet TChar))) ($IsAlloc SetType |ss#0| (TSet (TSet TChar)) $Heap)) true)) (=> (and (and (and (and ($Is SetType |i#0_0| (TSet TChar)) ($IsAlloc SetType |i#0_0| (TSet TChar) $Heap)) true) (= 0 $FunctionContextHeight)) (and (> (|Set#Card| |s#0|) 0) (= (ControlFlow 0 23) 22))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
