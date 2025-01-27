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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun tytagFamily$array () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |204|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s@@0))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |203|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |200|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
)))
(assert (forall ((h T@U) (a@@3 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@3))) (= (|Seq#Take| (|Seq#FromArray| h a@@3) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a@@3) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a@@3) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a@@3) n0) (|Seq#Take| (|Seq#FromArray| h a@@3) n1))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert (forall ((a@@4 Int) ) (!  (=> (<= 0 a@@4) (= (|Math#clip| a@@4) a@@4))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@4))
)))
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
(assert (forall ((a@@5 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@5 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@5 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@5 b@@3) o))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@6 T@U) (x@@5 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@5 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@6 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@5) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@5) (|MultiSet#Multiplicity| a@@6 y@@0))
)))
(assert (forall ((a@@7 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@7 x@@6)) (+ (|MultiSet#Card| a@@7) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@7 x@@6)))
)))
(assert (forall ((s@@5 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@0)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@5 v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |658|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((a@@8 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@8 b@@4)) (+ (|MultiSet#Card| a@@8) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@8 b@@4)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@2) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@2) i))
)))
(assert (forall ((s@@8 T@U) (x@@7 T@U) ) (! (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@8))) (= x@@7 (|Seq#Index| s@@8 i@@0)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@8 i@@0))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@8) x@@7)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@8) x@@7))
)))
(assert (forall ((h@@1 T@U) (a@@9 T@U) ) (! (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| (|Seq#FromArray| h@@1 a@@9)))) (= (|Seq#Index| (|Seq#FromArray| h@@1 a@@9) i@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@9) (IndexField i@@1))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@9) (IndexField i@@1)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@1 a@@9) i@@1))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@1 a@@9))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@10 b@@5) (= a@@10 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@10 b@@5))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) ) (!  (=> (|Seq#Equal| a@@11 b@@6) (= a@@11 b@@6))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@11 b@@6))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@9))) (= (|Seq#Length| (|Seq#Take| s@@9 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@9 n@@5)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@0 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@0)) (<= (|MultiSet#Multiplicity| ms bx@@0) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@0))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s@@10 T@U) ) (! (<= 0 (|MultiSet#Card| s@@10))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@10))
)))
(assert (forall ((s@@11 T@U) ) (! (<= 0 (|Seq#Length| s@@11))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((a@@12 T@U) (x@@8 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@12 x@@8) x@@8) (+ (|MultiSet#Multiplicity| a@@12 x@@8) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@12 x@@8))
)))
(assert (forall ((i@@2 Int) ) (! (= (FDim (IndexField i@@2)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (IndexField_Inverse (IndexField i@@3)) i@@3)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@4)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@5 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@5)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@13 T@U) (b@@7 T@U) ) (! (= (|MultiSet#Intersection| a@@13 (|MultiSet#Intersection| a@@13 b@@7)) (|MultiSet#Intersection| a@@13 b@@7))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@13 (|MultiSet#Intersection| a@@13 b@@7)))
)))
(assert (forall ((s@@12 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@12) 0) (= s@@12 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@12) 0)) (not true)) (exists ((x@@10 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@12 x@@10))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@12 x@@10))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@12))
)))
(assert (forall ((a@@14 T@U) (b@@8 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@14 b@@8) o@@2) (+ (|MultiSet#Multiplicity| a@@14 o@@2) (|MultiSet#Multiplicity| b@@8 o@@2)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@14 b@@8) o@@2))
)))
(assert (forall ((h@@2 T@U) (a@@15 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@2 a@@15)) (_System.array.Length a@@15))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@2 a@@15)))
)))
(assert (forall ((s@@13 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@13 val@@4)) s@@13) (= (|Seq#Build_inv1| (|Seq#Build| s@@13 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@13 val@@4))
)))
(assert (forall ((s@@14 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@14)) (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@14)))
)))
(assert (forall ((a@@16 Int) (b@@9 Int) ) (! (= (<= a@@16 b@@9) (= (|Math#min| a@@16 b@@9) a@@16))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@16 b@@9))
)))
(assert (forall ((a@@17 Int) (b@@10 Int) ) (! (= (<= b@@10 a@@17) (= (|Math#min| a@@17 b@@10) b@@10))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@17 b@@10))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((s@@15 T@U) (v@@4 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Build| s@@15 v@@4)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@15) v@@4))
 :qid |DafnyPreludebpl.1089:15|
 :skolemid |216|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@15 v@@4)))
)))
(assert (forall ((s@@16 T@U) (n@@6 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k)) (< k (|Seq#Length| s@@16))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@6) (- k n@@6)) (|Seq#Index| s@@16 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@16 k) (|Seq#Drop| s@@16 n@@6))
)))
(assert (forall ((a@@18 T@U) (b@@11 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@18 b@@11) o@@3) (|Math#clip| (- (|MultiSet#Multiplicity| a@@18 o@@3) (|MultiSet#Multiplicity| b@@11 o@@3))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@18 b@@11) o@@3))
)))
(assert (forall ((s@@17 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@17))) (= (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@7) (|Seq#Drop| s@@17 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert (forall ((a@@20 T@U) (x@@13 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@20 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@20 x@@13) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@20 x@@13) (|MultiSet#Multiplicity| a@@20 y@@1))
)))
(assert (forall ((a@@21 T@U) (b@@12 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Append| a@@21 b@@12)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@21) (|MultiSet#FromSeq| b@@12)))
 :qid |DafnyPreludebpl.1093:15|
 :skolemid |217|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@21 b@@12)))
)))
(assert (forall ((s@@18 T@U) ) (!  (=> (= (|Seq#Length| s@@18) 0) (= s@@18 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@18))
)))
(assert (forall ((s@@19 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@19 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@19 n@@9))
)))
(assert (forall ((a@@22 T@U) (x@@14 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@14) o@@4))  (or (= o@@4 x@@14) (< 0 (|MultiSet#Multiplicity| a@@22 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@14) o@@4))
)))
(assert (forall ((a@@23 T@U) (b@@13 T@U) ) (! (= (|MultiSet#Equal| a@@23 b@@13) (forall ((o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| a@@23 o@@5) (|MultiSet#Multiplicity| b@@13 o@@5))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@23 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@13 o@@5))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@23 b@@13))
)))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@3))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |c#0@@1| () Int)
(declare-fun |n#0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.test11)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#6| null $Heap alloc |a#0|)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= 0 |c#0@@1|) (<= |c#0@@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= |c#0@@1| (- |n#0| 1)) (<= (- |n#0| 1) (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= 0 (- |n#0| 1)) (< (- |n#0| 1) (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 |c#0@@1|) (<= |c#0@@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= |c#0@@1| |n#0|) (<= |n#0| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (|Seq#Equal| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) (- |n#0| 1)) |c#0@@1|) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (- |n#0| 1))))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |n#0|) |c#0@@1|))) (=> (|Seq#Equal| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) (- |n#0| 1)) |c#0@@1|) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (- |n#0| 1))))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |n#0|) |c#0@@1|)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 |c#0@@1|) (<= |c#0@@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= |c#0@@1| (- |n#0| 1)) (<= (- |n#0| 1) (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (- |n#0| 1)) (< (- |n#0| 1) (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 |c#0@@1|) (<= |c#0@@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= |c#0@@1| |n#0|) (<= |n#0| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|MultiSet#Equal| (|MultiSet#Union| (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) (- |n#0| 1)) |c#0@@1|)) (|MultiSet#FromSeq| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (- |n#0| 1)))))) (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |n#0|) |c#0@@1|)))) (=> (|MultiSet#Equal| (|MultiSet#Union| (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) (- |n#0| 1)) |c#0@@1|)) (|MultiSet#FromSeq| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (- |n#0| 1)))))) (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |n#0|) |c#0@@1|))) (=> (= (ControlFlow 0 2) (- 0 1)) (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) (- |n#0| 1)) |c#0@@1|)) (|MultiSet#Difference| (|MultiSet#FromSeq| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |n#0|) |c#0@@1|)) (|MultiSet#UnionOne| |MultiSet#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (- |n#0| 1))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) (= 0 $FunctionContextHeight)) (and (and (<= (LitInt 0) |c#0@@1|) (< |c#0@@1| |n#0|)) (and (<= |n#0| (_System.array.Length |a#0|)) (= (ControlFlow 0 21) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
