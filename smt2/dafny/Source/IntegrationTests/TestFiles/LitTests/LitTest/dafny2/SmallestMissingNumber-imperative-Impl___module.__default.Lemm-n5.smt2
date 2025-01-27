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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Has (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Has#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array tytagFamily$nat tytagFamily$array)
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s))
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
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@3))
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
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@4 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Has$T T@U) ($Heap T@U) (|a#0| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.Has#canCall| _module._default.Has$T $Heap |a#0| |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is refType |a#0| (Tclass._System.array _module._default.Has$T))) ($IsBox |x#0@@0| _module._default.Has$T)))) (= (_module.__default.Has _module._default.Has$T $Heap |a#0| |x#0@@0|) (exists ((|i#0| Int) ) (!  (and (and (<= (LitInt 0) |i#0|) (< |i#0| (_System.array.Length |a#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|)) |x#0@@0|))
 :qid |SmallestMissingNumberimperativedfy.26:10|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|)))
))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.__default.Has _module._default.Has$T $Heap |a#0| |x#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@5 T@U) (x@@5 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@5 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@5) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@5) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((s@@0 T@U) (x@@7 T@U) ) (! (= (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s@@0))) (= x@@7 (|Seq#Index| s@@0 i)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@0 i))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@0) x@@7)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@0) x@@7))
)))
(assert (forall ((h@@0 T@U) (a@@8 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@0 a@@8)))) (= (|Seq#Index| (|Seq#FromArray| h@@0 a@@8) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 a@@8) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 a@@8) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@0 a@@8) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@0 a@@8))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx@@0)) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
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
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|MultiSet#Card| s@@1))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((a@@9 T@U) (x@@8 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@8) x@@8) (+ (|MultiSet#Multiplicity| a@@9 x@@8) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@9 x@@8))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@2))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@4 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@5)) (|MultiSet#Intersection| a@@10 b@@5))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@5)))
)))
(assert (forall ((s@@3 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@3) 0) (= s@@3 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@3) 0)) (not true)) (exists ((x@@10 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@3 x@@10))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@3 x@@10))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@3))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@6) o@@2) (+ (|MultiSet#Multiplicity| a@@11 o@@2) (|MultiSet#Multiplicity| b@@6 o@@2)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@6) o@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |616|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h@@1 T@U) (a@@12 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@1 a@@12)) (_System.array.Length a@@12))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@1 a@@12)))
)))
(assert (forall ((s@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@4)) (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@4)))
)))
(assert (forall ((a@@13 Int) (b@@7 Int) ) (! (= (<= a@@13 b@@7) (= (|Math#min| a@@13 b@@7) a@@13))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@13 b@@7))
)))
(assert (forall ((a@@14 Int) (b@@8 Int) ) (! (= (<= b@@8 a@@14) (= (|Math#min| a@@14 b@@8) b@@8))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@14 b@@8))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@3)) bx@@3) ($Is MultiSetType ($Unbox MultiSetType bx@@3) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@3 (TMultiSet t@@3)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@15 T@U) (b@@9 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@9) o@@3) (|Math#clip| (- (|MultiSet#Multiplicity| a@@15 o@@3) (|MultiSet#Multiplicity| b@@9 o@@3))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@9) o@@3))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (< a@@16 0) (= (|Math#clip| a@@16) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@16))
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
(assert (forall ((a@@17 T@U) (x@@13 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@17 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@13) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@17 x@@13) (|MultiSet#Multiplicity| a@@17 y@@1))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((a@@18 T@U) (x@@14 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@18 x@@14) o@@4))  (or (= o@@4 x@@14) (< 0 (|MultiSet#Multiplicity| a@@18 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@18 x@@14) o@@4))
)))
(assert (forall ((a@@19 T@U) (b@@10 T@U) ) (! (= (|MultiSet#Subset| a@@19 b@@10) (forall ((o@@5 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@19 o@@5) (|MultiSet#Multiplicity| b@@10 o@@5))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |205|
 :pattern ( (|MultiSet#Multiplicity| a@@19 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |206|
 :pattern ( (|MultiSet#Subset| a@@19 b@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@6)) ($IsAllocBox bx@@6 t0@@3 h@@2))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@3))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ns#0@0| () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun |ms#0@0| () T@U)
(declare-fun |a#0@@0| () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#1_0@0| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |ns#0@1| () T@U)
(declare-fun |i#2@1| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |ms#0| () T@U)
(declare-fun |ns#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Lemma)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon10_correct  (=> (and (and (= (|MultiSet#Card| |ns#0@0|) |i#2@0|) (|MultiSet#Subset| |ns#0@0| |ms#0@0|)) (= (ControlFlow 0 35) (- 0 34))) (or (not (= |a#0@@0| null)) (not true)))))
(let ((anon27_Else_correct  (=> (and (or (not (= (|MultiSet#Card| |ns#0@0|) |i#2@0|)) (not true)) (= (ControlFlow 0 37) 35)) anon10_correct)))
(let ((anon27_Then_correct  (=> (and (= (|MultiSet#Card| |ns#0@0|) |i#2@0|) (= (ControlFlow 0 36) 35)) anon10_correct)))
(let ((anon8_correct  (=> (forall ((|x#3| T@U) ) (!  (and (=> (> (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3|)) 0) (<= (LitInt 0) (U_2_int |x#3|))) (=> (> (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3|)) 0) (< (U_2_int |x#3|) |i#2@0|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |574|
 :pattern ( (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3|)))
)) (and (=> (= (ControlFlow 0 38) 36) anon27_Then_correct) (=> (= (ControlFlow 0 38) 37) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (< |x#2@0| (LitInt 0)) (= (ControlFlow 0 41) 38)) anon8_correct)))
(let ((anon26_Then_correct  (=> (and (<= (LitInt 0) |x#2@0|) (= (ControlFlow 0 40) 38)) anon8_correct)))
(let ((anon25_Then_correct  (=> (> (|MultiSet#Multiplicity| |ns#0@0| ($Box intType (int_2_U |x#2@0|))) 0) (and (=> (= (ControlFlow 0 42) 40) anon26_Then_correct) (=> (= (ControlFlow 0 42) 41) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |ns#0@0| ($Box intType (int_2_U |x#2@0|)))) (= (ControlFlow 0 39) 38)) anon8_correct)))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 43) 42) anon25_Then_correct) (=> (= (ControlFlow 0 43) 39) anon25_Else_correct))))
(let ((anon24_Else_correct true))
(let ((anon4_correct  (=> (and (<= (LitInt 0) |i#2@0|) (<= |i#2@0| (_System.array.Length |a#0@@0|))) (and (=> (= (ControlFlow 0 44) 43) anon24_Then_correct) (=> (= (ControlFlow 0 44) 33) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (< |i#2@0| (LitInt 0)) (= (ControlFlow 0 47) 44)) anon4_correct)))
(let ((anon23_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 45) (- 0 46)) (or (not (= |a#0@@0| null)) (not true))) (=> (= (ControlFlow 0 45) 44) anon4_correct)))))
(let ((anon22_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 48) 45) anon23_Then_correct) (=> (= (ControlFlow 0 48) 47) anon23_Else_correct)))))
(let ((anon31_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 23)) (or (not (= |a#0@@0| null)) (not true))) (=> (or (not (= |a#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (_System.array.Length |a#0@@0|)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (> (|MultiSet#Multiplicity| |ms#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1_0@0|))) 0)) (=> (> (|MultiSet#Multiplicity| |ms#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1_0@0|))) 0) (=> (= (ControlFlow 0 20) (- 0 19)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1_0@0|)))) (_System.array.Length |a#0@@0|))))))))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= |a#0@@0| null)) (not true))) (=> (or (not (= |a#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (_System.array.Length |a#0@@0|)))) (=> (= (ControlFlow 0 16) (- 0 15)) (or (not (= |a#0@@0| null)) (not true))))))))
(let ((anon17_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (< |i#1_0@0| (_System.array.Length |a#0@@0|))) (and (=> (= (ControlFlow 0 24) 16) anon31_Then_correct) (=> (= (ControlFlow 0 24) 20) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (< |i#1_0@0| (LitInt 0)) (= (ControlFlow 0 27) 24)) anon17_correct)))
(let ((anon30_Then_correct  (=> (<= (LitInt 0) |i#1_0@0|) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |a#0@@0| null)) (not true))) (=> (= (ControlFlow 0 25) 24) anon17_correct)))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 28) 25) anon30_Then_correct) (=> (= (ControlFlow 0 28) 27) anon30_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array.Length |a#0@@0|))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1|)))) (_System.array.Length |a#0@@0|)))
 :qid |SmallestMissingNumberimperativedfy.58:18|
 :skolemid |573|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1|))))
)))))
(let ((anon29_Else_correct  (=> (and (forall ((|i#1_1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1_1|) (< |i#1_1| (_System.array.Length |a#0@@0|))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1_1|)))) (_System.array.Length |a#0@@0|)))
 :qid |SmallestMissingNumberimperativedfy.72:10|
 :skolemid |581|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#1_1|))))
)) (= (ControlFlow 0 14) 13)) GeneratedUnifiedExit_correct)))
(let ((anon28_Then_correct  (=> (<= (_System.array.Length |a#0@@0|) |i#2@0|) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= (|MultiSet#Card| (|MultiSet#Difference| |ms#0@0| |ns#0@0|)) (LitInt 0))) (=> (= (|MultiSet#Card| (|MultiSet#Difference| |ms#0@0| |ns#0@0|)) (LitInt 0)) (and (=> (= (ControlFlow 0 29) 28) anon29_Then_correct) (=> (= (ControlFlow 0 29) 14) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (< |i#2@0| (_System.array.Length |a#0@@0|)) (=> (and (= |$decr$loop#00@1| (- (_System.array.Length |a#0@@0|) |i#2@0|)) ($IsAlloc refType |a#0@@0| (Tclass._System.array Tclass._System.nat) $Heap@@0)) (and (=> (= (ControlFlow 0 3) (- 0 11)) ($Is intType (int_2_U |i#2@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |i#2@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |i#2@0|) Tclass._System.nat $Heap@@0) (=> (and (|_module.__default.Has#canCall| Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType (int_2_U |i#2@0|))) (|_module.__default.Has#canCall| Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType (int_2_U |i#2@0|)))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> (|_module.__default.Has#canCall| Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType (int_2_U |i#2@0|))) (or (_module.__default.Has Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType (int_2_U |i#2@0|))) (exists ((|i#0_0| Int) ) (!  (and (and (<= (LitInt 0) |i#0_0|) (< |i#0_0| (_System.array.Length |a#0@@0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#0_0|)))) |i#2@0|))
 :qid |SmallestMissingNumberimperativedfy.26:10|
 :skolemid |578|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |a#0@@0|) (IndexField |i#0_0|))))
))))) (=> (_module.__default.Has Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType (int_2_U |i#2@0|))) (=> (and (= |ns#0@1| (|MultiSet#Union| |ns#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |i#2@0|))))) (= |i#2@1| (+ |i#2@0| 1))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length |a#0@@0|) |i#2@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length |a#0@@0|) |i#2@1|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (< (- (_System.array.Length |a#0@@0|) |i#2@1|) |$decr$loop#00@1|)) (=> (< (- (_System.array.Length |a#0@@0|) |i#2@1|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> |$w$loop#0@0| (<= (LitInt 0) |i#2@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |i#2@1|)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (<= |i#2@1| (_System.array.Length |a#0@@0|)))) (=> (=> |$w$loop#0@0| (<= |i#2@1| (_System.array.Length |a#0@@0|))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (forall ((|x#3@@0| Int) ) (!  (and (=> (> (|MultiSet#Multiplicity| |ns#0@1| ($Box intType (int_2_U |x#3@@0|))) 0) (<= (LitInt 0) |x#3@@0|)) (=> (> (|MultiSet#Multiplicity| |ns#0@1| ($Box intType (int_2_U |x#3@@0|))) 0) (< |x#3@@0| |i#2@1|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |576|
 :pattern ( (|MultiSet#Multiplicity| |ns#0@1| ($Box intType (int_2_U |x#3@@0|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|x#3@@1| T@U) ) (!  (and (=> (> (|MultiSet#Multiplicity| |ns#0@1| ($Box intType |x#3@@1|)) 0) (<= (LitInt 0) (U_2_int |x#3@@1|))) (=> (> (|MultiSet#Multiplicity| |ns#0@1| ($Box intType |x#3@@1|)) 0) (< (U_2_int |x#3@@1|) |i#2@1|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |576|
 :pattern ( (|MultiSet#Multiplicity| |ns#0@1| ($Box intType |x#3@@1|)))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (= (|MultiSet#Card| |ns#0@1|) |i#2@1|))) (=> (=> |$w$loop#0@0| (= (|MultiSet#Card| |ns#0@1|) |i#2@1|)) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (|MultiSet#Subset| |ns#0@1| |ms#0@0|))))))))))))))))))))))))))
(let ((anon22_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= |a#0@@0| null)) (not true))) (=> (or (not (= |a#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 31) 29) anon28_Then_correct) (=> (= (ControlFlow 0 31) 3) anon28_Else_correct)))))))
(let ((anon21_LoopBody_correct  (and (=> (= (ControlFlow 0 49) 48) anon22_Then_correct) (=> (= (ControlFlow 0 49) 31) anon22_Else_correct))))
(let ((anon21_LoopDone_correct true))
(let ((anon21_LoopHead_correct  (=> (and ($Is MultiSetType |ns#0@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ns#0@0| (TMultiSet TInt) $Heap@@0)) (=> (and (and (not false) (<= 0 |i#2@0|)) (= |$rhs#0@0| 0)) (=> (and (and (and (=> |$w$loop#0@0| (<= (LitInt 0) |i#2@0|)) (=> |$w$loop#0@0| (<= |i#2@0| (_System.array.Length |a#0@@0|)))) (and (=> |$w$loop#0@0| (forall ((|x#3@@2| T@U) ) (!  (and (=> (> (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3@@2|)) 0) (<= (LitInt 0) (U_2_int |x#3@@2|))) (=> (> (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3@@2|)) 0) (< (U_2_int |x#3@@2|) |i#2@0|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |576|
 :pattern ( (|MultiSet#Multiplicity| |ns#0@0| ($Box intType |x#3@@2|)))
))) (=> |$w$loop#0@0| (= (|MultiSet#Card| |ns#0@0|) |i#2@0|)))) (and (and (=> |$w$loop#0@0| (|MultiSet#Subset| |ns#0@0| |ms#0@0|)) (= $Heap@@0 $Heap@@0)) (and (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@0))))
 :qid |SmallestMissingNumberimperativedfy.62:3|
 :skolemid |577|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) $f@@0))
)) (<= (- (_System.array.Length |a#0@@0|) |i#2@0|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 50) 1) anon21_LoopDone_correct) (=> (= (ControlFlow 0 50) 49) anon21_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 51) (- 0 57)) (or (not (= |a#0@@0| null)) (not true))) (=> (or (not (= |a#0@@0| null)) (not true)) (=> (and (and (= |ms#0@0| (|MultiSet#FromSeq| (|Seq#FromArray| $Heap@@0 |a#0@@0|))) (= |$rhs#0@0| (LitInt 0))) (and (= |$rhs#1@0| (Lit MultiSetType |MultiSet#Empty|)) (= |$decr_init$loop#00@0| (- (_System.array.Length |a#0@@0|) |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 51) (- 0 56)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (=> |$w$loop#0@0| (<= |$rhs#0@0| (_System.array.Length |a#0@@0|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#0@0| (_System.array.Length |a#0@@0|))) (and (=> (= (ControlFlow 0 51) (- 0 54)) (=> |$w$loop#0@0| (forall ((|x#3@@3| Int) ) (!  (and (=> (> (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType (int_2_U |x#3@@3|))) 0) (<= (LitInt 0) |x#3@@3|)) (=> (> (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType (int_2_U |x#3@@3|))) 0) (< |x#3@@3| |$rhs#0@0|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |576|
 :pattern ( (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType (int_2_U |x#3@@3|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|x#3@@4| T@U) ) (!  (and (=> (> (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType |x#3@@4|)) 0) (<= (LitInt 0) (U_2_int |x#3@@4|))) (=> (> (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType |x#3@@4|)) 0) (< (U_2_int |x#3@@4|) |$rhs#0@0|)))
 :qid |SmallestMissingNumberimperativedfy.64:22|
 :skolemid |576|
 :pattern ( (|MultiSet#Multiplicity| |$rhs#1@0| ($Box intType |x#3@@4|)))
))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (=> |$w$loop#0@0| (= (|MultiSet#Card| |$rhs#1@0|) |$rhs#0@0|))) (=> (=> |$w$loop#0@0| (= (|MultiSet#Card| |$rhs#1@0|) |$rhs#0@0|)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (=> |$w$loop#0@0| (|MultiSet#Subset| |$rhs#1@0| |ms#0@0|))) (=> (=> |$w$loop#0@0| (|MultiSet#Subset| |$rhs#1@0| |ms#0@0|)) (=> (= (ControlFlow 0 51) 50) anon21_LoopHead_correct)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($Is refType |a#0@@0| (Tclass._System.array Tclass._System.nat)) ($IsAlloc refType |a#0@@0| (Tclass._System.array Tclass._System.nat) $Heap@@0))) (and (and ($Is MultiSetType |ms#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms#0| (TMultiSet TInt) $Heap@@0)) true)) (=> (and (and (and (and ($Is MultiSetType |ns#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ns#0| (TMultiSet TInt) $Heap@@0)) true) (= 1 $FunctionContextHeight)) (and (forall ((|x#1| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1|)) (< (U_2_int |x#1|) (_System.array.Length |a#0@@0|))) (_module.__default.Has Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType |x#1|)))
 :qid |SmallestMissingNumberimperativedfy.57:19|
 :skolemid |572|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@@0 |a#0@@0| ($Box intType |x#1|)))
)) (= (ControlFlow 0 58) 51))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
