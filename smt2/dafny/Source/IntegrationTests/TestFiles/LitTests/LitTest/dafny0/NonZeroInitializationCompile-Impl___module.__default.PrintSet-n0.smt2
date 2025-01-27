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
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |673|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |674|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |678|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |679|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |672|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |688|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |669|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |681|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |682|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |684|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |687|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |670|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |671|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |686|
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
 :skolemid |662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |663|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |561|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |559|
 :pattern ( (Lit T x@@7))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |802|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |570|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@10 b@@7) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@10 o@@4)) (not (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |695|
 :pattern ( (|Set#IsMember| a@@10 o@@4))
 :pattern ( (|Set#IsMember| b@@7 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |696|
 :pattern ( (|Set#Disjoint| a@@10 b@@7))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |590|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |591|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |768|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |583|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |655|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |654|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |769|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@5)  (or (|Set#IsMember| a@@11 o@@5) (|Set#IsMember| b@@8 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |677|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@5))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@9) a@@12) b@@9) (= (|Set#Difference| (|Set#Union| a@@12 b@@9) b@@9) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |680|
 :pattern ( (|Set#Union| a@@12 b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Equal| a@@13 b@@10) (= a@@13 b@@10))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |694|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) (c T@U) ) (!  (=> (or (not (= a@@14 c)) (not true)) (=> (and ($HeapSucc a@@14 b@@11) ($HeapSucc b@@11 c)) ($HeapSucc a@@14 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |661|
 :pattern ( ($HeapSucc a@@14 b@@11) ($HeapSucc b@@11 c))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |571|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |574|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@15 b@@12)) (|Set#Card| (|Set#Difference| b@@12 a@@15))) (|Set#Card| (|Set#Intersection| a@@15 b@@12))) (|Set#Card| (|Set#Union| a@@15 b@@12))) (= (|Set#Card| (|Set#Difference| a@@15 b@@12)) (- (|Set#Card| a@@15) (|Set#Card| (|Set#Intersection| a@@15 b@@12)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |689|
 :pattern ( (|Set#Card| (|Set#Difference| a@@15 b@@12)))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |582|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Set#Card| s@@3))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |668|
 :pattern ( (|Set#Card| s@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |765|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |611|
 :pattern ( (|Set#IsMember| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |612|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |617|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |618|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |545|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |546|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |551|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |552|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |569|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)) (|Set#Union| a@@16 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |683|
 :pattern ( (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Intersection| a@@17 (|Set#Intersection| a@@17 b@@14)) (|Set#Intersection| a@@17 b@@14))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |685|
 :pattern ( (|Set#Intersection| a@@17 (|Set#Intersection| a@@17 b@@14)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |565|
 :pattern ( (|char#FromInt| n))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |1185|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |767|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@5 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |576|
 :pattern ( ($IsBox bx@@5 (TSet t@@8)))
)))
(assert (forall ((bx@@6 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |579|
 :pattern ( ($IsBox bx@@6 (TSeq t@@9)))
)))
(assert (forall ((a@@18 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@18 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@18 x@@10)) (|Set#Card| a@@18)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |675|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@18 x@@10)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |566|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((a@@19 T@U) (b@@15 T@U) ) (! (= (|Set#Equal| a@@19 b@@15) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@19 o@@6) (|Set#IsMember| b@@15 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |692|
 :pattern ( (|Set#IsMember| a@@19 o@@6))
 :pattern ( (|Set#IsMember| b@@15 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |693|
 :pattern ( (|Set#Equal| a@@19 b@@15))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |562|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |560|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |766|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |605|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@8 T@U) ) (! ($IsAlloc charType v@@8 TChar h@@6)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |608|
 :pattern ( ($IsAlloc charType v@@8 TChar h@@6))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |597|
 :pattern ( (|Seq#Index| v@@9 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |598|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@4)))
)))
(assert (forall ((a@@20 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@20 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@20 x@@13)) (+ (|Set#Card| a@@20) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |676|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@20 x@@13)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |584|
 :pattern ( ($Is intType v@@10 TInt))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |587|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |x#0_0@1| () Int)
(declare-fun |$rhs#0_0@1| () T@U)
(declare-fun |$rhs#0_1@1| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |y#0_0@1| () Int)
(declare-fun |x#0_1@1| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@m#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |sep#0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |sep#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.PrintSet)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon5_correct true))
(let ((anon19_Else_correct  (=> (and (< (LitInt 0) (|Set#Card| |s#0@0|)) (= (ControlFlow 0 20) 18)) anon5_correct)))
(let ((anon19_Then_correct  (=> (and (<= (|Set#Card| |s#0@0|) (LitInt 0)) (= (ControlFlow 0 19) 18)) anon5_correct)))
(let ((anon18_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 21) 19) anon19_Then_correct) (=> (= (ControlFlow 0 21) 20) anon19_Else_correct)))))
(let ((anon23_Else_correct true))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U (LitInt 0)))) (forall ((|y#0_3| Int) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_3|))) (<= (LitInt 0) |y#0_3|))
 :qid |NonZeroInitializationCompiledfy.130:31|
 :skolemid |1049|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_3|))))
)))) (exists ((|$as#x0_0#0_0| T@U) ) (!  (and (|Set#IsMember| |s#0@0| ($Box intType |$as#x0_0#0_0|)) (forall ((|y#0_2| Int) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_2|))) (<= (U_2_int |$as#x0_0#0_0|) |y#0_2|))
 :qid |NonZeroInitializationCompiledfy.130:31|
 :skolemid |1047|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_2|))))
)))
 :qid |NonZeroInitializationCompiledfy.130:9|
 :skolemid |1048|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U (LitInt 0)))) (forall ((|y#0_3@@0| T@U) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType |y#0_3@@0|)) (<= (LitInt 0) (U_2_int |y#0_3@@0|)))
 :qid |NonZeroInitializationCompiledfy.130:31|
 :skolemid |1049|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |y#0_3@@0|)))
)))) (exists ((|$as#x0_0#0_0@@0| Int) ) (!  (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |$as#x0_0#0_0@@0|))) (forall ((|y#0_2@@0| T@U) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType |y#0_2@@0|)) (<= |$as#x0_0#0_0@@0| (U_2_int |y#0_2@@0|)))
 :qid |NonZeroInitializationCompiledfy.130:31|
 :skolemid |1047|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |y#0_2@@0|)))
)))
 :qid |NonZeroInitializationCompiledfy.130:9|
 :skolemid |1048|
))) (=> (and (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#0_0@1|))) (forall ((|y#0_4| T@U) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType |y#0_4|)) (<= |x#0_0@1| (U_2_int |y#0_4|)))
 :qid |NonZeroInitializationCompiledfy.130:31|
 :skolemid |1050|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |y#0_4|)))
))) (and (= |$rhs#0_0@1| (|Set#Difference| |s#0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0_0@1|))))) (= |$rhs#0_1@1| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (ite (<= (|Set#Card| |$rhs#0_0@1|) (LitInt 0)) (- 0 (|Set#Card| |$rhs#0_0@1|)) (- (|Set#Card| |$rhs#0_0@1|) 0)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (ite (<= (|Set#Card| |$rhs#0_0@1|) (LitInt 0)) (- 0 (|Set#Card| |$rhs#0_0@1|)) (- (|Set#Card| |$rhs#0_0@1|) 0)) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (ite (<= (|Set#Card| |$rhs#0_0@1|) (LitInt 0)) (- 0 (|Set#Card| |$rhs#0_0@1|)) (- (|Set#Card| |$rhs#0_0@1|) 0)) |$decr$loop#00@1|)))))))))
(let ((anon24_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_0@1|)))) (= (ControlFlow 0 11) 5)) anon14_correct)))
(let ((anon24_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |y#0_0@1|))) (= (ControlFlow 0 10) 5)) anon14_correct)))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon24_Then_correct) (=> (= (ControlFlow 0 12) 11) anon24_Else_correct))))
(let ((anon22_Then_correct  (=> (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#0_1@1|))) (and (=> (= (ControlFlow 0 13) 12) anon23_Then_correct) (=> (= (ControlFlow 0 13) 9) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#0_1@1|)))) (= (ControlFlow 0 8) 5)) anon14_correct)))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 14) 13) anon22_Then_correct) (=> (= (ControlFlow 0 14) 8) anon22_Else_correct))))
(let ((anon21_Else_correct true))
(let ((anon20_Else_correct  (=> (and (or (not (= (|Set#Card| |s#0@0|) 0)) (not true)) (= |$decr$loop#00@1| (ite (<= (|Set#Card| |s#0@0|) (LitInt 0)) (- 0 (|Set#Card| |s#0@0|)) (- (|Set#Card| |s#0@0|) 0)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (|Set#Equal| |s#0@0| |Set#Empty|))) (=> (not (|Set#Equal| |s#0@0| |Set#Empty|)) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |call2formal@m#0@0|)))) (and (forall ((|y#1| T@U) ) (!  (=> (|Set#IsMember| |s#0@0| ($Box intType |y#1|)) (<= |call2formal@m#0@0| (U_2_int |y#1|)))
 :qid |NonZeroInitializationCompiledfy.139:28|
 :skolemid |1052|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |y#1|)))
)) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 15) 14) anon21_Then_correct) (=> (= (ControlFlow 0 15) 3) anon21_Else_correct))))))))
(let ((anon20_Then_correct true))
(let ((anon18_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 17) 2) anon20_Then_correct) (=> (= (ControlFlow 0 17) 15) anon20_Else_correct)))))
(let ((anon17_LoopBody_correct  (and (=> (= (ControlFlow 0 22) 21) anon18_Then_correct) (=> (= (ControlFlow 0 22) 17) anon18_Else_correct))))
(let ((anon17_LoopDone_correct true))
(let ((anon17_LoopHead_correct  (=> (and (and ($Is SetType |s#0@0| (TSet TInt)) ($IsAlloc SetType |s#0@0| (TSet TInt) $Heap@0)) (and ($Is SeqType |sep#0@0| (TSeq TChar)) ($IsAlloc SeqType |sep#0@0| (TSeq TChar) $Heap@0))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (not false)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |NonZeroInitializationCompiledfy.126:3|
 :skolemid |1044|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |NonZeroInitializationCompiledfy.126:3|
 :skolemid |1045|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0))
)) (<= (ite (<= (|Set#Card| |s#0@0|) (LitInt 0)) (- 0 (|Set#Card| |s#0@0|)) (- (|Set#Card| |s#0@0|) 0)) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 23) 1) anon17_LoopDone_correct) (=> (= (ControlFlow 0 23) 22) anon17_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#1@0| (Lit SeqType |Seq#Empty|))) (and (= |$decr_init$loop#00@0| (ite (<= (|Set#Card| |S#0|) (LitInt 0)) (- 0 (|Set#Card| |S#0|)) (- (|Set#Card| |S#0|) 0))) (= (ControlFlow 0 24) 23))) anon17_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |S#0| (TSet TInt)) ($IsAlloc SetType |S#0| (TSet TInt) $Heap))) (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) true)) (and (and (and ($Is SeqType |sep#0| (TSeq TChar)) ($IsAlloc SeqType |sep#0| (TSeq TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 25) 24)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
