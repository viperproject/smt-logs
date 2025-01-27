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
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun intOrder.__default.Leq (Int Int) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun AnotherClient_mintSort.__default.Sorted (T@U T@U Int Int) Bool)
(declare-fun |AnotherClient_mintSort.__default.Sorted#canCall| (T@U T@U Int Int) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |intOrder.__default.Leq#canCall| (Int Int) Bool)
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
 :skolemid |5866|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |5711|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |5686|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |5872|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |5721|
 :pattern ( (|MultiSet#FromSeq| s))
)))
(assert (forall ((s@@0 T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s@@0))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) (|Seq#Index| s@@0 n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |5736|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v) n))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |5710|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |5707|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
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
 :skolemid |5865|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@0 T@U) (x@@2 T@U) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@1))) (= (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2) (|MultiSet#Multiplicity| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@1) (|MultiSet#Singleton| (|Seq#Index| s@@1 i@@0))) (|MultiSet#Singleton| v@@0)) x@@2)))
 :qid |DafnyPreludebpl.1098:15|
 :skolemid |5725|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2))
)))
(assert (forall ((|a#0| Int) (|b#0| Int) ) (! (= (intOrder.__default.Leq |a#0| |b#0|) (<= |a#0| |b#0|))
 :qid |GenericSortdfy.6:17|
 :skolemid |6094|
 :pattern ( (intOrder.__default.Leq |a#0| |b#0|))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |5625|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |5626|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |5687|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5524|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5522|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0) (|Math#min| (|MultiSet#Multiplicity| a@@4 o@@0) (|MultiSet#Multiplicity| b@@3 o@@0)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |5706|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |5863|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|a#0@@0| T@U) (|low#0| Int) (|high#0| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|AnotherClient_mintSort.__default.Sorted#canCall| $h0 |a#0@@0| |low#0| |high#0|) ($Is refType |a#0@@0| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 |a#0@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |6096|
)) (= (AnotherClient_mintSort.__default.Sorted $h0 |a#0@@0| |low#0| |high#0|) (AnotherClient_mintSort.__default.Sorted $h1 |a#0@@0| |low#0| |high#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6097|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (AnotherClient_mintSort.__default.Sorted $h1 |a#0@@0| |low#0| |high#0|))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |5746|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |5747|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5533|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((a@@5 T@U) (x@@6 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@6 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@6) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |5702|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@6) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |5703|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)))
)))
(assert (forall ((s@@2 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@2 v@@1)) (+ 1 (|Seq#Length| s@@2)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |5731|
 :pattern ( (|Seq#Build| s@@2 v@@1))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5871|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@0) ($IsAlloc T@@1 v@@2 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5546|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |5618|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@2) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |5617|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5859|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5868|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |5705|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |5864|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall (($Heap T@U) (|a#0@@1| T@U) (|low#0@@0| Int) (|high#0@@0| Int) ) (!  (=> (or (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap |a#0@@1| |low#0@@0| |high#0@@0|) (and (and ($IsGoodHeap $Heap) (and ($Is refType |a#0@@1| (Tclass._System.array TInt)) ($IsAlloc refType |a#0@@1| (Tclass._System.array TInt) $Heap))) (and (and (<= (LitInt 0) |low#0@@0|) (<= |low#0@@0| |high#0@@0|)) (<= |high#0@@0| (_System.array.Length |a#0@@1|))))) (=> (AnotherClient_mintSort.__default.Sorted $Heap |a#0@@1| |low#0@@0| |high#0@@0|) (forall ((|i#6| Int) (|j#6| Int) ) (!  (=> (and (and (<= |low#0@@0| |i#6|) (< |i#6| |j#6|)) (< |j#6| |high#0@@0|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0@@1|) (IndexField |i#6|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0@@1|) (IndexField |j#6|))))))
 :qid |GenericSortdfy.28:45|
 :skolemid |6098|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0@@1|) (IndexField |j#6|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0@@1|) (IndexField |i#6|))))
))))
 :qid |GenericSortdfy.22:19|
 :skolemid |6099|
 :pattern ( (AnotherClient_mintSort.__default.Sorted $Heap |a#0@@1| |low#0@@0| |high#0@@0|))
)))
(assert (forall ((s@@3 T@U) (i@@1 Int) (v@@4 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i@@1) v@@4)) (=> (or (not (= i@@1 (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i@@1) (|Seq#Index| s@@3 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |5732|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@4) i@@1))
)))
(assert (forall ((s@@4 T@U) (x@@8 T@U) ) (! (= (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@4))) (= x@@8 (|Seq#Index| s@@4 i@@2)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |5726|
 :pattern ( (|Seq#Index| s@@4 i@@2))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@4) x@@8)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |5727|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@4) x@@8))
)))
(assert (forall ((|a#0@@2| Int) (|b#0@@0| Int) ) (! (= (intOrder.__default.Leq (LitInt |a#0@@2|) (LitInt |b#0@@0|)) (<= (LitInt |a#0@@2|) (LitInt |b#0@@0|)))
 :qid |GenericSortdfy.6:17|
 :weight 3
 :skolemid |6095|
 :pattern ( (intOrder.__default.Leq (LitInt |a#0@@2|) (LitInt |b#0@@0|)))
)))
(assert (forall ((h@@3 T@U) (a@@8 T@U) ) (! (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| (|Seq#FromArray| h@@3 a@@8)))) (= (|Seq#Index| (|Seq#FromArray| h@@3 a@@8) i@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@8) (IndexField i@@3))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |5769|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@8) (IndexField i@@3)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@3 a@@8) i@@3))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |5770|
 :pattern ( (|Seq#FromArray| h@@3 a@@8))
)))
(assert (forall ((a@@9 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@9 b@@5) (= a@@9 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |5716|
 :pattern ( (|MultiSet#Equal| a@@9 b@@5))
)))
(assert (forall ((a@@10 T@U) (b@@6 T@U) ) (!  (=> (|Seq#Equal| a@@10 b@@6) (= a@@10 b@@6))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5748|
 :pattern ( (|Seq#Equal| a@@10 b@@6))
)))
(assert (forall ((|a#0@@3| Int) (|b#0@@1| Int) ) (!  (=> (intOrder.__default.Leq |a#0@@3| |b#0@@1|) (<= |a#0@@3| |b#0@@1|))
 :qid |GenericSortdfy.6:17|
 :skolemid |6092|
 :pattern ( (intOrder.__default.Leq |a#0@@3| |b#0@@1|))
)))
(assert (forall ((a@@11 T@U) (b@@7 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@7) ($HeapSucc b@@7 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |5624|
 :pattern ( ($HeapSucc a@@11 b@@7) ($HeapSucc b@@7 c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5534|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@2) ($Is T@@3 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5545|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |5690|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |5691|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |5619|
 :pattern ( (_System.array.Length o@@1))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|MultiSet#Card| s@@5))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |5692|
 :pattern ( (|MultiSet#Card| s@@5))
)))
(assert (forall ((s@@6 T@U) ) (! (<= 0 (|Seq#Length| s@@6))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5728|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |5694|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2))
)))
(assert (forall ((a@@12 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@12 x@@9) x@@9) (+ (|MultiSet#Multiplicity| a@@12 x@@9) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |5700|
 :pattern ( (|MultiSet#UnionOne| a@@12 x@@9))
)))
(assert (forall ((i@@4 Int) ) (! (= (FDim (IndexField i@@4)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |5610|
 :pattern ( (IndexField i@@4))
)))
(assert (forall ((i@@5 Int) ) (! (= (IndexField_Inverse (IndexField i@@5)) i@@5)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |5611|
 :pattern ( (IndexField i@@5))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |5860|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |5869|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5532|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall ((h@@4 T@U) (i@@6 Int) (v@@6 T@U) (a@@13 T@U) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (_System.array.Length a@@13))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 a@@13 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@13) (IndexField i@@6) v@@6)) a@@13) (|Seq#Update| (|Seq#FromArray| h@@4 a@@13) i@@6 v@@6)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |5772|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 a@@13 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@13) (IndexField i@@6) v@@6)) a@@13))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@4)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |5867|
 :pattern ( (_System.array.Length $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@5 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@5)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |5862|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@14 T@U) (b@@8 T@U) ) (! (= (|MultiSet#Intersection| a@@14 (|MultiSet#Intersection| a@@14 b@@8)) (|MultiSet#Intersection| a@@14 b@@8))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |5708|
 :pattern ( (|MultiSet#Intersection| a@@14 (|MultiSet#Intersection| a@@14 b@@8)))
)))
(assert (forall ((s@@7 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@7) 0) (= s@@7 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@7) 0)) (not true)) (exists ((x@@11 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@7 x@@11))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |5695|
 :pattern ( (|MultiSet#Multiplicity| s@@7 x@@11))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |5696|
 :pattern ( (|MultiSet#Card| s@@7))
)))
(assert (forall ((r T@U) (o@@3 T@U) ) (!  (and (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3) 1) (= r o@@3)) (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3) 0)  (or (not (= r o@@3)) (not true))))
 :qid |DafnyPreludebpl.952:15|
 :skolemid |5697|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3))
)))
(assert (forall ((a@@15 T@U) (b@@9 T@U) (o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@15 b@@9) o@@4) (+ (|MultiSet#Multiplicity| a@@15 o@@4) (|MultiSet#Multiplicity| b@@9 o@@4)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |5704|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@15 b@@9) o@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@0))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6801|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@16) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@16))) (= (|Seq#FromArray| h0 a@@16) (|Seq#FromArray| h1 a@@16)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |5771|
 :pattern ( (|Seq#FromArray| h1 a@@16) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@8 T@U) (i@@7 Int) (v@@7 T@U) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Update| s@@8 i@@7 v@@7)) (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |5735|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@8 i@@7 v@@7)))
)))
(assert (forall ((h@@5 T@U) (a@@17 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@5 a@@17)) (_System.array.Length a@@17))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |5768|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@5 a@@17)))
)))
(assert (forall ((s@@9 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@9 val@@4)) s@@9) (= (|Seq#Build_inv1| (|Seq#Build| s@@9 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |5730|
 :pattern ( (|Seq#Build| s@@9 val@@4))
)))
(assert (forall ((r@@0 T@U) ) (! (= (|MultiSet#Singleton| r@@0) (|MultiSet#UnionOne| |MultiSet#Empty| r@@0))
 :qid |DafnyPreludebpl.957:15|
 :skolemid |5698|
 :pattern ( (|MultiSet#Singleton| r@@0))
)))
(assert (forall ((s@@10 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@10)) (|Seq#Length| s@@10))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |5722|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@10)))
)))
(assert (forall ((a@@18 Int) (b@@10 Int) ) (! (= (<= a@@18 b@@10) (= (|Math#min| a@@18 b@@10) a@@18))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |5684|
 :pattern ( (|Math#min| a@@18 b@@10))
)))
(assert (forall ((a@@19 Int) (b@@11 Int) ) (! (= (<= b@@11 a@@19) (= (|Math#min| a@@19 b@@11) b@@11))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |5685|
 :pattern ( (|Math#min| a@@19 b@@11))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |5861|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |5870|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((s@@11 T@U) (v@@8 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Build| s@@11 v@@8)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@11) v@@8))
 :qid |DafnyPreludebpl.1089:15|
 :skolemid |5723|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@11 v@@8)))
)))
(assert (forall ((h@@6 T@U) (r@@1 T@U) (f T@U) (x@@12 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |5623|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12)))
)))
(assert (forall ((a@@20 T@U) (b@@12 T@U) (o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@20 b@@12) o@@5) (|Math#clip| (- (|MultiSet#Multiplicity| a@@20 o@@5) (|MultiSet#Multiplicity| b@@12 o@@5))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |5709|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@20 b@@12) o@@5))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |5688|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5525|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@14)) (Lit BoxType ($Box T@@5 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5523|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@14)))
)))
(assert (forall ((a@@22 T@U) (x@@15 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@22 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@15) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |5701|
 :pattern ( (|MultiSet#UnionOne| a@@22 x@@15) (|MultiSet#Multiplicity| a@@22 y@@1))
)))
(assert (forall ((s@@12 T@U) ) (!  (=> (= (|Seq#Length| s@@12) 0) (= s@@12 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5729|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((a@@23 T@U) (x@@16 T@U) (o@@6 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@23 x@@16) o@@6))  (or (= o@@6 x@@16) (< 0 (|MultiSet#Multiplicity| a@@23 o@@6))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |5699|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@23 x@@16) o@@6))
)))
(assert (forall (($Heap@@0 T@U) (|a#0@@4| T@U) (|low#0@@1| Int) (|high#0@@1| Int) ) (!  (=> (or (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@@0 |a#0@@4| |low#0@@1| |high#0@@1|) (and (and ($IsGoodHeap $Heap@@0) ($Is refType |a#0@@4| (Tclass._System.array TInt))) (and (and (<= (LitInt 0) |low#0@@1|) (<= |low#0@@1| |high#0@@1|)) (<= |high#0@@1| (_System.array.Length |a#0@@4|))))) (and (forall ((|i#7| Int) (|j#7| Int) ) (!  (=> (<= |low#0@@1| |i#7|) (=> (< |i#7| |j#7|) (=> (< |j#7| |high#0@@1|) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#7|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#7|))))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |6102|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#7|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#7|))))
)) (= (AnotherClient_mintSort.__default.Sorted $Heap@@0 |a#0@@4| |low#0@@1| |high#0@@1|) (forall ((|i#7@@0| Int) (|j#7@@0| Int) ) (!  (=> (and (and (<= |low#0@@1| |i#7@@0|) (< |i#7@@0| |j#7@@0|)) (< |j#7@@0| |high#0@@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#7@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#7@@0|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |6101|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#7@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#7@@0|))))
)))))
 :qid |GenericSortdfy.22:19|
 :skolemid |6103|
 :pattern ( (AnotherClient_mintSort.__default.Sorted $Heap@@0 |a#0@@4| |low#0@@1| |high#0@@1|) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((a@@24 T@U) (b@@13 T@U) ) (! (= (|MultiSet#Equal| a@@24 b@@13) (forall ((o@@7 T@U) ) (! (= (|MultiSet#Multiplicity| a@@24 o@@7) (|MultiSet#Multiplicity| b@@13 o@@7))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |5714|
 :pattern ( (|MultiSet#Multiplicity| a@@24 o@@7))
 :pattern ( (|MultiSet#Multiplicity| b@@13 o@@7))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |5715|
 :pattern ( (|MultiSet#Equal| a@@24 b@@13))
)))
(assert (forall ((h@@7 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5568|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@7))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5547|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#3@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |##a#0@0| () Int)
(declare-fun |##b#0@0| () Int)
(declare-fun |##a#1@0| () Int)
(declare-fun |##b#1@0| () Int)
(declare-fun |##a#2@0| () Int)
(declare-fun |##b#2@0| () Int)
(declare-fun |a#0@@5| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$AnotherClient.__default.TheMain)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 4)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0)))) (=> (= |$rhs#0@0| (LitInt 6)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 1)))) (=> (= |$rhs#1@0| (LitInt 1)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (LitInt 1)) ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 2)))) (=> (= |$rhs#2@0| (LitInt 0)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (LitInt 2)) ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 3))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 3)))) (=> (= |$rhs#3@0| (LitInt 4)) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 3)) ($Box intType (int_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (|Seq#Equal| (|Seq#FromArray| $Heap@4 $nw@0) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 4)))))) (=> (|Seq#Equal| (|Seq#FromArray| $Heap@4 $nw@0) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 4))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (= $o@@7 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@1)))
 :qid |GenericSortdfy.183:26|
 :skolemid |6091|
))) (=> (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) alloc)))) (= $o@@8 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@2)))
 :qid |GenericSortdfy.183:26|
 :skolemid |6091|
)) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@5 $nw@0 (LitInt 0) (_System.array.Length $nw@0))) (=> (and (and (and (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@5 $nw@0 (LitInt 0) (_System.array.Length $nw@0)) (and (AnotherClient_mintSort.__default.Sorted $Heap@5 $nw@0 (LitInt 0) (_System.array.Length $nw@0)) (forall ((|i#4| Int) (|j#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#4|) (< |i#4| |j#2|)) (< |j#2| (_System.array.Length $nw@0))) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#2|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |6112|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#2|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4|))))
)))) (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@5 $nw@0)) (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@4 $nw@0)))) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9)) (= $o@@9 $nw@0)))
 :qid |GenericSortdfy.59:10|
 :skolemid |6113|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (= |##a#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0)))))) ($IsAlloc intType (int_2_U |##a#0@0|) TInt $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (and (= |##b#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) ($IsAlloc intType (int_2_U |##b#0@0|) TInt $Heap@5)) (and (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) (or (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))))))) (=> (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 0))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (= |##a#1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1)))))) ($IsAlloc intType (int_2_U |##a#1@0|) TInt $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (and (= |##b#1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) ($IsAlloc intType (int_2_U |##b#1@0|) TInt $Heap@5)) (and (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) (or (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))))))) (=> (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (= |##a#2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2)))))) ($IsAlloc intType (int_2_U |##a#2@0|) TInt $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (and (= |##b#2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))) ($IsAlloc intType (int_2_U |##b#2@0|) TInt $Heap@5)) (and (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))) (or (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3))))))))) (=> (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (LitInt 3)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Seq#Equal| (|Seq#FromArray| $Heap@5 $nw@0) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 6)))))) (=> (|Seq#Equal| (|Seq#FromArray| $Heap@5 $nw@0) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 6))))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is refType |a#0@@5| (Tclass._System.array TInt)) ($IsAlloc refType |a#0@@5| (Tclass._System.array TInt) $Heap@@1)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 36) 2))) anon0_correct))))
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
