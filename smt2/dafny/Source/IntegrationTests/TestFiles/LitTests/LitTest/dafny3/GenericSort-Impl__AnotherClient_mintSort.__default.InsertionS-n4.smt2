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
(declare-fun $FunctionContextHeight () Int)
(declare-fun AnotherClient_mintSort.__default.Sorted (T@U T@U Int Int) Bool)
(declare-fun |AnotherClient_mintSort.__default.Sorted#canCall| (T@U T@U Int Int) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun IndexField (Int) T@U)
(declare-fun intOrder.__default.Leq (Int Int) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun AnotherClient_mintSort.__default.NeighborSorted (T@U T@U Int Int) Bool)
(declare-fun |AnotherClient_mintSort.__default.NeighborSorted#canCall| (T@U T@U Int Int) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |intOrder.__default.Leq#canCall| (Int Int) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
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
 :skolemid |5225|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |5070|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|a#0| T@U) (|low#0| Int) (|high#0| Int) ) (!  (=> (or (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap |a#0| |low#0| |high#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap))) (and (and (<= (LitInt 0) |low#0|) (<= |low#0| |high#0|)) (<= |high#0| (_System.array.Length |a#0|)))))) (=> (AnotherClient_mintSort.__default.Sorted $Heap |a#0| |low#0| |high#0|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= |low#0| |i#0|) (< |i#0| |j#0|)) (< |j#0| |high#0|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#0|))))))
 :qid |GenericSortdfy.28:45|
 :skolemid |5449|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|))))
))))
 :qid |GenericSortdfy.22:19|
 :skolemid |5450|
 :pattern ( (AnotherClient_mintSort.__default.Sorted $Heap |a#0| |low#0| |high#0|))
))))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |5045|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |5231|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |5080|
 :pattern ( (|MultiSet#FromSeq| s))
)))
(assert (forall ((s@@0 T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s@@0))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) (|Seq#Index| s@@0 n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |5095|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v) n))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |5069|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |5066|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5224|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@0 T@U) (x@@2 T@U) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@1))) (= (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2) (|MultiSet#Multiplicity| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@1) (|MultiSet#Singleton| (|Seq#Index| s@@1 i@@0))) (|MultiSet#Singleton| v@@0)) x@@2)))
 :qid |DafnyPreludebpl.1098:15|
 :skolemid |5084|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2))
)))
(assert (forall ((|a#0@@0| Int) (|b#0| Int) ) (! (= (intOrder.__default.Leq |a#0@@0| |b#0|) (<= |a#0@@0| |b#0|))
 :qid |GenericSortdfy.6:17|
 :skolemid |5505|
 :pattern ( (intOrder.__default.Leq |a#0@@0| |b#0|))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4984|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4985|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |5046|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4883|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4881|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0) (|Math#min| (|MultiSet#Multiplicity| a@@4 o@@0) (|MultiSet#Multiplicity| b@@3 o@@0)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |5065|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |5222|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|a#0@@1| T@U) (|low#0@@0| Int) (|high#0@@0| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|AnotherClient_mintSort.__default.Sorted#canCall| $h0 |a#0@@1| |low#0@@0| |high#0@@0|) ($Is refType |a#0@@1| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 |a#0@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |5447|
)) (= (AnotherClient_mintSort.__default.Sorted $h0 |a#0@@1| |low#0@@0| |high#0@@0|) (AnotherClient_mintSort.__default.Sorted $h1 |a#0@@1| |low#0@@0| |high#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5448|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (AnotherClient_mintSort.__default.Sorted $h1 |a#0@@1| |low#0@@0| |high#0@@0|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|a#0@@2| T@U) (|low#0@@1| Int) (|high#0@@1| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $h0@@0 |a#0@@2| |low#0@@1| |high#0@@1|) ($Is refType |a#0@@2| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 |a#0@@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |5462|
)) (= (AnotherClient_mintSort.__default.NeighborSorted $h0@@0 |a#0@@2| |low#0@@1| |high#0@@1|) (AnotherClient_mintSort.__default.NeighborSorted $h1@@0 |a#0@@2| |low#0@@1| |high#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5463|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (AnotherClient_mintSort.__default.NeighborSorted $h1@@0 |a#0@@2| |low#0@@1| |high#0@@1|))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4892|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((a@@5 T@U) (x@@6 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@6 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@6) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |5061|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@6) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |5062|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5230|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4905|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4977|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4976|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5218|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5227|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@4 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@1))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (= $o@@4 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6803|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@1))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |5064|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |5223|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((s@@2 T@U) (x@@8 T@U) ) (! (= (exists ((i@@1 Int) ) (!  (and (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (= x@@8 (|Seq#Index| s@@2 i@@1)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |5085|
 :pattern ( (|Seq#Index| s@@2 i@@1))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@2) x@@8)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |5086|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@2) x@@8))
)))
(assert (forall ((|a#0@@3| Int) (|b#0@@0| Int) ) (! (= (intOrder.__default.Leq (LitInt |a#0@@3|) (LitInt |b#0@@0|)) (<= (LitInt |a#0@@3|) (LitInt |b#0@@0|)))
 :qid |GenericSortdfy.6:17|
 :weight 3
 :skolemid |5506|
 :pattern ( (intOrder.__default.Leq (LitInt |a#0@@3|) (LitInt |b#0@@0|)))
)))
(assert (forall ((h@@3 T@U) (a@@8 T@U) ) (! (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| (|Seq#FromArray| h@@3 a@@8)))) (= (|Seq#Index| (|Seq#FromArray| h@@3 a@@8) i@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@8) (IndexField i@@2))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |5128|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@8) (IndexField i@@2)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@3 a@@8) i@@2))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |5129|
 :pattern ( (|Seq#FromArray| h@@3 a@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|a#0@@4| T@U) (|low#0@@2| Int) (|high#0@@2| Int) ) (!  (=> (or (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@@0 |a#0@@4| |low#0@@2| |high#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is refType |a#0@@4| (Tclass._System.array TInt))) (and (and (<= (LitInt 0) |low#0@@2|) (<= |low#0@@2| |high#0@@2|)) (<= |high#0@@2| (_System.array.Length |a#0@@4|)))))) (and (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (<= |low#0@@2| |i#1|) (=> (< |i#1| |j#1|) (=> (< |j#1| |high#0@@2|) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#1|))))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |5453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#1|))))
)) (= (AnotherClient_mintSort.__default.Sorted $Heap@@0 |a#0@@4| |low#0@@2| |high#0@@2|) (forall ((|i#1@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (and (<= |low#0@@2| |i#1@@0|) (< |i#1@@0| |j#1@@0|)) (< |j#1@@0| |high#0@@2|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#1@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#1@@0|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |5452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |j#1@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@4|) (IndexField |i#1@@0|))))
)))))
 :qid |GenericSortdfy.22:19|
 :skolemid |5454|
 :pattern ( (AnotherClient_mintSort.__default.Sorted $Heap@@0 |a#0@@4| |low#0@@2| |high#0@@2|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@9 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@9 b@@5) (= a@@9 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |5075|
 :pattern ( (|MultiSet#Equal| a@@9 b@@5))
)))
(assert (forall ((|a#0@@5| Int) (|b#0@@1| Int) ) (!  (=> (intOrder.__default.Leq |a#0@@5| |b#0@@1|) (<= |a#0@@5| |b#0@@1|))
 :qid |GenericSortdfy.6:17|
 :skolemid |5503|
 :pattern ( (intOrder.__default.Leq |a#0@@5| |b#0@@1|))
)))
(assert (forall ((a@@10 T@U) (b@@6 T@U) (c T@U) ) (!  (=> (or (not (= a@@10 c)) (not true)) (=> (and ($HeapSucc a@@10 b@@6) ($HeapSucc b@@6 c)) ($HeapSucc a@@10 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4983|
 :pattern ( ($HeapSucc a@@10 b@@6) ($HeapSucc b@@6 c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4893|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4904|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |5049|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |5050|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |4978|
 :pattern ( (_System.array.Length o@@1))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|MultiSet#Card| s@@3))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |5051|
 :pattern ( (|MultiSet#Card| s@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5087|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |5053|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2))
)))
(assert (forall ((a@@11 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@11 x@@9) x@@9) (+ (|MultiSet#Multiplicity| a@@11 x@@9) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |5059|
 :pattern ( (|MultiSet#UnionOne| a@@11 x@@9))
)))
(assert (forall ((i@@3 Int) ) (! (= (FDim (IndexField i@@3)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |4969|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((i@@4 Int) ) (! (= (IndexField_Inverse (IndexField i@@4)) i@@4)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |4970|
 :pattern ( (IndexField i@@4))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |5219|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |5228|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4891|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall ((h@@4 T@U) (i@@5 Int) (v@@4 T@U) (a@@12 T@U) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (_System.array.Length a@@12))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 a@@12 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@12) (IndexField i@@5) v@@4)) a@@12) (|Seq#Update| (|Seq#FromArray| h@@4 a@@12) i@@5 v@@4)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |5131|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 a@@12 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@12) (IndexField i@@5) v@@4)) a@@12))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@6)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |5226|
 :pattern ( (_System.array.Length $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@6) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@7 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@7)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@7) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |5221|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@7) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@13 T@U) (b@@7 T@U) ) (! (= (|MultiSet#Intersection| a@@13 (|MultiSet#Intersection| a@@13 b@@7)) (|MultiSet#Intersection| a@@13 b@@7))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |5067|
 :pattern ( (|MultiSet#Intersection| a@@13 (|MultiSet#Intersection| a@@13 b@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@5) 0) (= s@@5 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@5) 0)) (not true)) (exists ((x@@11 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@5 x@@11))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |5054|
 :pattern ( (|MultiSet#Multiplicity| s@@5 x@@11))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |5055|
 :pattern ( (|MultiSet#Card| s@@5))
)))
(assert (forall ((r T@U) (o@@3 T@U) ) (!  (and (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3) 1) (= r o@@3)) (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3) 0)  (or (not (= r o@@3)) (not true))))
 :qid |DafnyPreludebpl.952:15|
 :skolemid |5056|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@3))
)))
(assert (forall ((a@@14 T@U) (b@@8 T@U) (o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@14 b@@8) o@@4) (+ (|MultiSet#Multiplicity| a@@14 o@@4) (|MultiSet#Multiplicity| b@@8 o@@4)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |5063|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@14 b@@8) o@@4))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@15) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@15))) (= (|Seq#FromArray| h0 a@@15) (|Seq#FromArray| h1 a@@15)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |5130|
 :pattern ( (|Seq#FromArray| h1 a@@15) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@6 T@U) (i@@6 Int) (v@@5 T@U) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Update| s@@6 i@@6 v@@5)) (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |5094|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@6 i@@6 v@@5)))
)))
(assert (forall ((h@@5 T@U) (a@@16 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@5 a@@16)) (_System.array.Length a@@16))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |5127|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@5 a@@16)))
)))
(assert (forall ((r@@0 T@U) ) (! (= (|MultiSet#Singleton| r@@0) (|MultiSet#UnionOne| |MultiSet#Empty| r@@0))
 :qid |DafnyPreludebpl.957:15|
 :skolemid |5057|
 :pattern ( (|MultiSet#Singleton| r@@0))
)))
(assert (forall ((s@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@7)) (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |5081|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@7)))
)))
(assert (forall ((a@@17 Int) (b@@9 Int) ) (! (= (<= a@@17 b@@9) (= (|Math#min| a@@17 b@@9) a@@17))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |5043|
 :pattern ( (|Math#min| a@@17 b@@9))
)))
(assert (forall ((a@@18 Int) (b@@10 Int) ) (! (= (<= b@@10 a@@18) (= (|Math#min| a@@18 b@@10) b@@10))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |5044|
 :pattern ( (|Math#min| a@@18 b@@10))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |5220|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |5229|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((h@@6 T@U) (r@@1 T@U) (f T@U) (x@@12 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |4982|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@1) f x@@12)))
)))
(assert (forall ((a@@19 T@U) (b@@11 T@U) (o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@19 b@@11) o@@5) (|Math#clip| (- (|MultiSet#Multiplicity| a@@19 o@@5) (|MultiSet#Multiplicity| b@@11 o@@5))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |5068|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@19 b@@11) o@@5))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (< a@@20 0) (= (|Math#clip| a@@20) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |5047|
 :pattern ( (|Math#clip| a@@20))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4884|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@14)) (Lit BoxType ($Box T@@5 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4882|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@14)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|a#0@@6| T@U) (|low#0@@3| Int) (|high#0@@3| Int) ) (!  (=> (or (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@@1 |a#0@@6| |low#0@@3| |high#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is refType |a#0@@6| (Tclass._System.array TInt))) (and (and (<= (LitInt 0) |low#0@@3|) (<= |low#0@@3| |high#0@@3|)) (<= |high#0@@3| (_System.array.Length |a#0@@6|)))))) (and (forall ((|i#0@@0| Int) (|_t#0#0| Int) ) (!  (=> (= |_t#0#0| (- |i#0@@0| 1)) (=> (< |low#0@@3| |i#0@@0|) (=> (< |i#0@@0| |high#0@@3|) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |_t#0#0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |i#0@@0|))))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5467|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |i#0@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |_t#0#0|))))
)) (= (AnotherClient_mintSort.__default.NeighborSorted $Heap@@1 |a#0@@6| |low#0@@3| |high#0@@3|) (forall ((|i#0@@1| Int) (|_t#0#0@@0| Int) ) (!  (=> (= |_t#0#0@@0| (- |i#0@@1| 1)) (=> (and (< |low#0@@3| |i#0@@1|) (< |i#0@@1| |high#0@@3|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |_t#0#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |i#0@@1|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5466|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |i#0@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@6|) (IndexField |_t#0#0@@0|))))
)))))
 :qid |GenericSortdfy.35:19|
 :skolemid |5468|
 :pattern ( (AnotherClient_mintSort.__default.NeighborSorted $Heap@@1 |a#0@@6| |low#0@@3| |high#0@@3|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@21 T@U) (x@@15 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@21 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@21 x@@15) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |5060|
 :pattern ( (|MultiSet#UnionOne| a@@21 x@@15) (|MultiSet#Multiplicity| a@@21 y@@1))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5088|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((a@@22 T@U) (x@@16 T@U) (o@@6 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@16) o@@6))  (or (= o@@6 x@@16) (< 0 (|MultiSet#Multiplicity| a@@22 o@@6))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |5058|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@22 x@@16) o@@6))
)))
(assert (forall ((a@@23 T@U) (b@@12 T@U) ) (! (= (|MultiSet#Equal| a@@23 b@@12) (forall ((o@@7 T@U) ) (! (= (|MultiSet#Multiplicity| a@@23 o@@7) (|MultiSet#Multiplicity| b@@12 o@@7))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |5073|
 :pattern ( (|MultiSet#Multiplicity| a@@23 o@@7))
 :pattern ( (|MultiSet#Multiplicity| b@@12 o@@7))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |5074|
 :pattern ( (|MultiSet#Equal| a@@23 b@@12))
)))
(assert (forall ((h@@7 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4927|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@7))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4906|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#2@1| () Int)
(declare-fun |a#0@@7| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |low##0@0| () Int)
(declare-fun |high##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |j#1_0@1| () Int)
(declare-fun |##a#1_2@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |##b#1_0@0| () Int)
(declare-fun |##low#1_0@0| () Int)
(declare-fun |##high#1_1@0| () Int)
(declare-fun |$w$loop#1_0@1| () Bool)
(declare-fun |$decr$loop#1_00@2| () Int)
(declare-fun |a##1_0_0@2| () Int)
(declare-fun |b##1_0_0@2| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $index0@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $index1@2 () T@U)
(declare-fun |$rhs#1_0_0@2| () Int)
(declare-fun |$rhs#1_0_1@2| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |j#1_0@2| () Int)
(declare-fun |i#2@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |##a#1_3@2| () Int)
(declare-fun |##b#1_1@2| () Int)
(declare-fun |$decr_init$loop#1_00@1| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |i#2@0| () Int)
(set-info :boogie-vc-id Impl$$AnotherClient_mintSort.__default.InsertionSort)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon8_correct true))
(let ((anon30_Else_correct  (=> (and (<= |i#2@1| 0) (= (ControlFlow 0 35) 33)) anon8_correct)))
(let ((anon30_Then_correct  (=> (< 0 |i#2@1|) (=> (and (or (not (= |a#0@@7| null)) (not true)) (= (ControlFlow 0 34) 33)) anon8_correct))))
(let ((anon29_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 36) 34) anon30_Then_correct) (=> (= (ControlFlow 0 36) 35) anon30_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (=> false (=> (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@6 |a#0@@7| (LitInt 0) (_System.array.Length |a#0@@7|)) (or (AnotherClient_mintSort.__default.Sorted $Heap@6 |a#0@@7| (LitInt 0) (_System.array.Length |a#0@@7|)) (forall ((|i#1@@1| Int) (|j#1@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| |j#1@@1|)) (< |j#1@@1| (_System.array.Length |a#0@@7|))) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |i#1@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |j#1@@1|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |5488|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |j#1@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |i#1@@1|))))
)))))) (=> (=> false (=> (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@6 |a#0@@7| (LitInt 0) (_System.array.Length |a#0@@7|)) (or (AnotherClient_mintSort.__default.Sorted $Heap@6 |a#0@@7| (LitInt 0) (_System.array.Length |a#0@@7|)) (forall ((|i#1@@2| Int) (|j#1@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1@@2|) (< |i#1@@2| |j#1@@2|)) (< |j#1@@2| (_System.array.Length |a#0@@7|))) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |i#1@@2|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |j#1@@2|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |5488|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |j#1@@2|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@7|) (IndexField |i#1@@2|))))
))))) (=> (= (ControlFlow 0 24) (- 0 23)) (=> false (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@6 |a#0@@7|)) (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@@2 |a#0@@7|)))))))))
(let ((anon31_Then_correct  (=> (and (and (<= (_System.array.Length |a#0@@7|) |i#2@1|) (= |low##0@0| (LitInt 0))) (and (or (not (= |a#0@@7| null)) (not true)) (= |high##0@0| (_System.array.Length |a#0@@7|)))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (<= (LitInt 0) |low##0@0|)) (=> (<= (LitInt 0) |low##0@0|) (and (=> (= (ControlFlow 0 27) (- 0 30)) (<= |low##0@0| |high##0@0|)) (=> (<= |low##0@0| |high##0@0|) (and (=> (= (ControlFlow 0 27) (- 0 29)) (<= |high##0@0| (_System.array.Length |a#0@@7|))) (=> (<= |high##0@0| (_System.array.Length |a#0@@7|)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@0 |a#0@@7| |low##0@0| |high##0@0|) (or (AnotherClient_mintSort.__default.NeighborSorted $Heap@0 |a#0@@7| |low##0@0| |high##0@0|) (forall ((|i#0@@2| Int) (|_t#0#0@@1| Int) ) (!  (=> (= |_t#0#0@@1| (- |i#0@@2| 1)) (=> (and (< |low##0@0| |i#0@@2|) (< |i#0@@2| |high##0@0|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#0@@2|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5473|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#0@@2|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@1|))))
))))) (=> (=> (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@0 |a#0@@7| |low##0@0| |high##0@0|) (or (AnotherClient_mintSort.__default.NeighborSorted $Heap@0 |a#0@@7| |low##0@0| |high##0@0|) (forall ((|i#0@@3| Int) (|_t#0#0@@2| Int) ) (!  (=> (= |_t#0#0@@2| (- |i#0@@3| 1)) (=> (and (< |low##0@0| |i#0@@3|) (< |i#0@@3| |high##0@0|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@2|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#0@@3|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5473|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#0@@3|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@2|))))
)))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@1 |a#0@@7| |low##0@0| |high##0@0|)) (=> (and (and (and (|AnotherClient_mintSort.__default.Sorted#canCall| $Heap@1 |a#0@@7| |low##0@0| |high##0@0|) (and (AnotherClient_mintSort.__default.Sorted $Heap@1 |a#0@@7| |low##0@0| |high##0@0|) (forall ((|i#1@@3| Int) (|j#0@@0| Int) ) (!  (=> (and (and (<= |low##0@0| |i#1@@3|) (< |i#1@@3| |j#0@@0|)) (< |j#0@@0| |high##0@0|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@7|) (IndexField |i#1@@3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@7|) (IndexField |j#0@@0|))))))
 :qid |GenericSortdfy.30:12|
 :skolemid |5476|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@7|) (IndexField |j#0@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@7|) (IndexField |i#1@@3|))))
)))) (= $Heap@0 $Heap@1)) (and (= $Heap@6 $Heap@1) (= (ControlFlow 0 27) 24))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon27_Then_correct  (=> (= (_System.array.Length |a#0@@7|) (LitInt 0)) (=> (and (= $Heap@6 $Heap@@2) (= (ControlFlow 0 26) 24)) GeneratedUnifiedExit_correct))))
(let ((anon19_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (< 0 |j#1_0@1|) (< |j#1_0@1| |i#2@1|))) (= (ControlFlow 0 13) 11)) anon19_correct)))
(let ((anon36_Then_correct  (=> (and (and (and (and (< 0 |j#1_0@1|) (< |j#1_0@1| |i#2@1|)) (or (not (= |a#0@@7| null)) (not true))) (and (and (<= 0 (- |j#1_0@1| 1)) (< (- |j#1_0@1| 1) (_System.array.Length |a#0@@7|))) (= |##a#1_2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1)))))))) (and (and (and ($IsAlloc intType (int_2_U |##a#1_2@0|) TInt $Heap@2) (or (not (= |a#0@@7| null)) (not true))) (and (<= 0 (+ |j#1_0@1| 1)) (< (+ |j#1_0@1| 1) (_System.array.Length |a#0@@7|)))) (and (and (= |##b#1_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (+ |j#1_0@1| 1)))))) ($IsAlloc intType (int_2_U |##b#1_0@0|) TInt $Heap@2)) (and (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (+ |j#1_0@1| 1)))))) (= (ControlFlow 0 12) 11))))) anon19_correct)))
(let ((anon35_Else_correct  (=> (<= |j#1_0@1| 0) (and (=> (= (ControlFlow 0 15) 12) anon36_Then_correct) (=> (= (ControlFlow 0 15) 13) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (< 0 |j#1_0@1|) (and (=> (= (ControlFlow 0 14) 12) anon36_Then_correct) (=> (= (ControlFlow 0 14) 13) anon36_Else_correct)))))
(let ((anon15_correct  (=> (and (<= (LitInt 0) |j#1_0@1|) (<= |j#1_0@1| |i#2@1|)) (=> (and (and ($IsAlloc refType |a#0@@7| (Tclass._System.array TInt) $Heap@2) (= |##low#1_0@0| (LitInt 0))) (and ($IsAlloc intType (int_2_U |##low#1_0@0|) TInt $Heap@2) ($IsAlloc intType (int_2_U |j#1_0@1|) TInt $Heap@2))) (=> (and (and (and (and (<= (LitInt 0) |##low#1_0@0|) (<= |##low#1_0@0| |j#1_0@1|)) (and (<= |j#1_0@1| (_System.array.Length |a#0@@7|)) (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|))) (and (and (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|) (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|)) (and ($IsAlloc refType |a#0@@7| (Tclass._System.array TInt) $Heap@2) ($IsAlloc intType (int_2_U |j#1_0@1|) TInt $Heap@2)))) (and (and (and (= |##high#1_1@0| (+ |i#2@1| 1)) ($IsAlloc intType (int_2_U |##high#1_1@0|) TInt $Heap@2)) (and (<= (LitInt 0) |j#1_0@1|) (<= |j#1_0@1| |##high#1_1@0|))) (and (and (<= |##high#1_1@0| (_System.array.Length |a#0@@7|)) (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1))) (and (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)) (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)))))) (and (=> (= (ControlFlow 0 16) 14) anon35_Then_correct) (=> (= (ControlFlow 0 16) 15) anon35_Else_correct)))))))
(let ((anon34_Else_correct  (=> (and (< |j#1_0@1| (LitInt 0)) (= (ControlFlow 0 18) 16)) anon15_correct)))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 0) |j#1_0@1|) (= (ControlFlow 0 17) 16)) anon15_correct)))
(let ((anon33_Then_correct  (=> (not |$w$loop#1_0@1|) (and (=> (= (ControlFlow 0 19) 17) anon34_Then_correct) (=> (= (ControlFlow 0 19) 18) anon34_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (and (< 0 |j#1_0@1|) (not (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|))))))) (and (= |$decr$loop#1_00@2| (- |j#1_0@1| 0)) (or (not (= |a#0@@7| null)) (not true)))) (and (and (<= 0 (- |j#1_0@1| 1)) (< (- |j#1_0@1| 1) (_System.array.Length |a#0@@7|))) (and (= |a##1_0_0@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1)))))) (or (not (= |a#0@@7| null)) (not true))))) (=> (and (and (and (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (_System.array.Length |a#0@@7|))) (= |b##1_0_0@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (and (|intOrder.__default.Leq#canCall| |a##1_0_0@2| |b##1_0_0@2|) (=> (not (intOrder.__default.Leq |a##1_0_0@2| |b##1_0_0@2|)) (|intOrder.__default.Leq#canCall| |b##1_0_0@2| |a##1_0_0@2|))) (or (intOrder.__default.Leq |a##1_0_0@2| |b##1_0_0@2|) (intOrder.__default.Leq |b##1_0_0@2| |a##1_0_0@2|))) (and (= $Heap@2 $Heap@3) (or (not (= |a#0@@7| null)) (not true))))) (=> (and (and (and (and (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (_System.array.Length |a#0@@7|))) (= $index0@2 (IndexField |j#1_0@1|))) (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0@@7| $index0@2)) (or (not (= |a#0@@7| null)) (not true)))) (and (and (and (<= 0 (- |j#1_0@1| 1)) (< (- |j#1_0@1| 1) (_System.array.Length |a#0@@7|))) (= $index1@2 (IndexField (- |j#1_0@1| 1)))) (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0@@7| $index1@2)) (or (not (= |a#0@@7| null)) (not true))))) (and (and (and (and (<= 0 (- |j#1_0@1| 1)) (< (- |j#1_0@1| 1) (_System.array.Length |a#0@@7|))) (and (= |$rhs#1_0_0@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@7|) (IndexField (- |j#1_0@1| 1)))))) (or (not (= |a#0@@7| null)) (not true)))) (and (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (_System.array.Length |a#0@@7|))) (= |$rhs#1_0_1@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@7|) (IndexField |j#1_0@1|))))))) (and (and (and (or (or (or (not (= |a#0@@7| |a#0@@7|)) (not true)) (or (not (= (- |j#1_0@1| 1) |j#1_0@1|)) (not true))) (= ($Box intType (int_2_U |$rhs#1_0_1@2|)) ($Box intType (int_2_U |$rhs#1_0_0@2|)))) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@7| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@7|) $index0@2 ($Box intType (int_2_U |$rhs#1_0_0@2|)))))) (and ($IsGoodHeap $Heap@4) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 |a#0@@7| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |a#0@@7|) $index1@2 ($Box intType (int_2_U |$rhs#1_0_1@2|))))))) (and (and ($IsGoodHeap $Heap@5) (= |j#1_0@2| (- |j#1_0@1| 1))) (and (or (<= 0 |$decr$loop#1_00@2|) (= (- |j#1_0@2| 0) |$decr$loop#1_00@2|)) (= (ControlFlow 0 6) (- 0 5))))))) (< (- |j#1_0@2| 0) |$decr$loop#1_00@2|))))))
(let ((anon38_Then_correct  (=> (and (and (not (and (< 0 |j#1_0@1|) (not (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|)))))))) (= |i#2@2| (+ |i#2@1| 1))) (and (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length |a#0@@7|) |i#2@2|) |$decr$loop#00@1|)) (= (ControlFlow 0 4) (- 0 3)))) (< (- (_System.array.Length |a#0@@7|) |i#2@2|) |$decr$loop#00@1|))))
(let ((anon22_correct  (=> (=> (< 0 |j#1_0@1|) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|)))))) (and (=> (= (ControlFlow 0 7) 4) anon38_Then_correct) (=> (= (ControlFlow 0 7) 6) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (<= |j#1_0@1| 0) (= (ControlFlow 0 9) 7)) anon22_correct)))
(let ((anon37_Then_correct  (=> (and (< 0 |j#1_0@1|) (or (not (= |a#0@@7| null)) (not true))) (=> (and (and (<= 0 (- |j#1_0@1| 1)) (< (- |j#1_0@1| 1) (_System.array.Length |a#0@@7|))) (= |##a#1_3@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))))) (=> (and (and (and ($IsAlloc intType (int_2_U |##a#1_3@2|) TInt $Heap@2) (or (not (= |a#0@@7| null)) (not true))) (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (_System.array.Length |a#0@@7|)))) (and (and (= |##b#1_1@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|))))) ($IsAlloc intType (int_2_U |##b#1_1@2|) TInt $Heap@2)) (and (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |j#1_0@1|))))) (= (ControlFlow 0 8) 7)))) anon22_correct)))))
(let ((anon33_Else_correct  (=> |$w$loop#1_0@1| (and (=> (= (ControlFlow 0 10) 8) anon37_Then_correct) (=> (= (ControlFlow 0 10) 9) anon37_Else_correct)))))
(let ((anon32_LoopBody_correct  (and (=> (= (ControlFlow 0 20) 19) anon33_Then_correct) (=> (= (ControlFlow 0 20) 10) anon33_Else_correct))))
(let ((anon32_LoopDone_correct true))
(let ((anon32_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (and (and (and (and (not false) (<= 1 |i#2@1|)) |$w$loop#0@0|) (<= 0 |j#1_0@1|)) (<= 1 |$decr_init$loop#1_00@1|)) (=> |$w$loop#1_0@1| (<= (LitInt 0) |j#1_0@1|))) (and (=> |$w$loop#1_0@1| (<= |j#1_0@1| |i#2@1|)) (=> |$w$loop#1_0@1| (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|)))) (and (and (=> |$w$loop#1_0@1| (=> (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|) (or (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|) (forall ((|i#1_0| Int) (|_t#0#1_0| Int) ) (!  (=> (= |_t#0#1_0| (- |i#1_0| 1)) (=> (and (< 0 |i#1_0|) (< |i#1_0| |j#1_0@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_0|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_0|))))
))))) (=> |$w$loop#1_0@1| (and (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|) (and (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| (LitInt 0) |j#1_0@1|) (forall ((|i#1_0@@0| Int) (|_t#0#1_0@@0| Int) ) (!  (=> (= |_t#0#1_0@@0| (- |i#1_0@@0| 1)) (=> (and (< 0 |i#1_0@@0|) (< |i#1_0@@0| |j#1_0@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_0@@0|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5496|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_0@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_0@@0|))))
)))))) (and (=> |$w$loop#1_0@1| (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1))) (=> |$w$loop#1_0@1| (=> (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)) (or (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)) (forall ((|i#1_1| Int) (|_t#0#1_1| Int) ) (!  (=> (= |_t#0#1_1| (- |i#1_1| 1)) (=> (and (< |j#1_0@1| |i#1_1|) (< |i#1_1| (+ |i#2@1| 1))) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_1|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5497|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_1|))))
)))))))) (and (and (and (=> |$w$loop#1_0@1| (and (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)) (and (AnotherClient_mintSort.__default.NeighborSorted $Heap@2 |a#0@@7| |j#1_0@1| (+ |i#2@1| 1)) (forall ((|i#1_1@@0| Int) (|_t#0#1_1@@0| Int) ) (!  (=> (= |_t#0#1_1@@0| (- |i#1_1@@0| 1)) (=> (and (< |j#1_0@1| |i#1_1@@0|) (< |i#1_1@@0| (+ |i#2@1| 1))) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_1@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_1@@0|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5498|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |i#1_1@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField |_t#0#1_1@@0|))))
))))) (=> |$w$loop#1_0@1| (=> (and (< 0 |j#1_0@1|) (< |j#1_0@1| |i#2@1|)) (|intOrder.__default.Leq#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (+ |j#1_0@1| 1))))))))) (and (=> |$w$loop#1_0@1| (=> (and (< 0 |j#1_0@1|) (< |j#1_0@1| |i#2@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (- |j#1_0@1| 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@7|) (IndexField (+ |j#1_0@1| 1)))))))) (=> |$w$loop#1_0@1| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@2 |a#0@@7|)) (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@@2 |a#0@@7|)))))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)) (= $o@@8 |a#0@@7|)))
 :qid |GenericSortdfy.72:7|
 :skolemid |5499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8))
)) ($HeapSucc $Heap@0 $Heap@2)) (and (forall (($o@@9 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@2))))
 :qid |GenericSortdfy.72:7|
 :skolemid |5500|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@2))
)) (<= (- |j#1_0@1| 0) |$decr_init$loop#1_00@1|))))) (and (=> (= (ControlFlow 0 21) 2) anon32_LoopDone_correct) (=> (= (ControlFlow 0 21) 20) anon32_LoopBody_correct))))))
(let ((anon31_Else_correct  (=> (and (and (< |i#2@1| (_System.array.Length |a#0@@7|)) (= |$decr$loop#00@1| (- (_System.array.Length |a#0@@7|) |i#2@1|))) (and (= |$decr_init$loop#1_00@1| (- |i#2@1| 0)) (= (ControlFlow 0 22) 21))) anon32_LoopHead_correct)))
(let ((anon29_Else_correct  (=> (and |$w$loop#0@0| (or (not (= |a#0@@7| null)) (not true))) (and (=> (= (ControlFlow 0 32) 27) anon31_Then_correct) (=> (= (ControlFlow 0 32) 22) anon31_Else_correct)))))
(let ((anon28_LoopBody_correct  (and (=> (= (ControlFlow 0 37) 36) anon29_Then_correct) (=> (= (ControlFlow 0 37) 32) anon29_Else_correct))))
(let ((anon28_LoopDone_correct true))
(let ((anon28_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (not false) (<= 1 |i#2@1|)) (and (=> |$w$loop#0@0| (< 0 |i#2@1|)) (=> |$w$loop#0@0| (<= |i#2@1| (_System.array.Length |a#0@@7|))))) (=> (and (and (and (=> |$w$loop#0@0| (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@0 |a#0@@7| (LitInt 0) |i#2@1|)) (=> |$w$loop#0@0| (=> (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@0 |a#0@@7| (LitInt 0) |i#2@1|) (or (AnotherClient_mintSort.__default.NeighborSorted $Heap@0 |a#0@@7| (LitInt 0) |i#2@1|) (forall ((|i#3| Int) (|_t#0#0@@3| Int) ) (!  (=> (= |_t#0#0@@3| (- |i#3| 1)) (=> (and (< 0 |i#3|) (< |i#3| |i#2@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#3|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5491|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#3|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@3|))))
)))))) (and (=> |$w$loop#0@0| (and (|AnotherClient_mintSort.__default.NeighborSorted#canCall| $Heap@0 |a#0@@7| (LitInt 0) |i#2@1|) (and (AnotherClient_mintSort.__default.NeighborSorted $Heap@0 |a#0@@7| (LitInt 0) |i#2@1|) (forall ((|i#3@@0| Int) (|_t#0#0@@4| Int) ) (!  (=> (= |_t#0#0@@4| (- |i#3@@0| 1)) (=> (and (< 0 |i#3@@0|) (< |i#3@@0| |i#2@1|)) (intOrder.__default.Leq (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@4|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#3@@0|)))))))
 :qid |GenericSortdfy.39:12|
 :skolemid |5492|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |i#3@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0@@7|) (IndexField |_t#0#0@@4|))))
))))) (=> |$w$loop#0@0| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@0 |a#0@@7|)) (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@@2 |a#0@@7|)))))) (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10)) (= $o@@10 |a#0@@7|)))
 :qid |GenericSortdfy.66:5|
 :skolemid |5493|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap@@2 $Heap@0)) (and (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11) $f@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@3))))
 :qid |GenericSortdfy.66:5|
 :skolemid |5494|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@3))
)) (<= (- (_System.array.Length |a#0@@7|) |i#2@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 38) 1) anon28_LoopDone_correct) (=> (= (ControlFlow 0 38) 37) anon28_LoopBody_correct)))))))
(let ((anon27_Else_correct  (=> (and (and (or (not (= (_System.array.Length |a#0@@7|) (LitInt 0))) (not true)) (= |i#2@0| (LitInt 1))) (and (= |$decr_init$loop#00@0| (- (_System.array.Length |a#0@@7|) |i#2@0|)) (= (ControlFlow 0 39) 38))) anon28_LoopHead_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@2 alloc |a#0@@7|)) (or (not (= |a#0@@7| null)) (not true))) (and (=> (= (ControlFlow 0 40) 26) anon27_Then_correct) (=> (= (ControlFlow 0 40) 39) anon27_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is refType |a#0@@7| (Tclass._System.array TInt)) ($IsAlloc refType |a#0@@7| (Tclass._System.array TInt) $Heap@@2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 41) 40))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
