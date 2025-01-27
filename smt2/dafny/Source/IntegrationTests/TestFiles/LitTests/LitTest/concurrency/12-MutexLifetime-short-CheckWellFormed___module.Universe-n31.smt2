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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun field$content () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$mightPointFrom () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.outlivesThrough_h (T@U T@U T@U Int T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun _module.Universe.outlives_h (T@U T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#57| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.nat Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? class._module.Universe? Tagclass._module.Lifetime? class._module.Lifetime? tytagFamily$nat tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$Lifetime field$content field$mightPointTo field$mightPointFrom)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Lifetime?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($Is refType $o@@0 Tclass._module.Lifetime?))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3490|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Lifetime? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3498|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Lifetime? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1325|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1748|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Lifetime $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.Lifetime? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2357|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Lifetime $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Lifetime? $h@@5))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) (|_k#0| Int) (|a#0| T@U) (|x#0@@0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap this |_k#0| |a#0| |x#0@@0| |b#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))) (<= (LitInt 0) |_k#0|)) ($Is refType |a#0| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |a#0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |b#0|)))))) (and (=> (< 0 |_k#0|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives_h#canCall| $Heap this (- |_k#0| 1) |a#0| |x#0@@0|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap this (- |_k#0| 1) |a#0| |x#0@@0|) (|_module.Universe.outlives_h#canCall| $Heap this (- |_k#0| 1) |x#0@@0| |b#0|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly) $Heap this |_k#0| |a#0| |x#0@@0| |b#0|)  (and (< 0 |_k#0|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives_h ($LS $LZ) $Heap this (- |_k#0| 1) |a#0| |x#0@@0|)) (_module.Universe.outlives_h ($LS $LZ) $Heap this (- |_k#0| 1) |x#0@@0| |b#0|))))))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1258|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly) $Heap this |_k#0| |a#0| |x#0@@0| |b#0|) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Lifetime? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Lifetime? $h@@9))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|a#0@@0| T@U) (|x#0@@1| T@U) (|b#0@@0| T@U) (|_k#0@@0| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0@@1| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (= |_k#0@@0| 0)) (not (_module.Universe.outlivesThrough_h $ly@@0 $Heap@@0 this@@0 |_k#0@@0| |a#0@@0| |x#0@@1| |b#0@@0|)))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1249|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@0 $Heap@@0 this@@0 |_k#0@@0| |a#0@@0| |x#0@@1| |b#0@@0|))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|_k#0@@1| Int) (|a#0@@1| T@U) (|x#0@@2| T@U) (|b#0@@1| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@1) $Heap@@1 this@@1 |_k#0@@1| |a#0@@1| |x#0@@2| |b#0@@1|) (_module.Universe.outlivesThrough_h $ly@@1 $Heap@@1 this@@1 |_k#0@@1| |a#0@@1| |x#0@@2| |b#0@@1|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1252|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@1) $Heap@@1 this@@1 |_k#0@@1| |a#0@@1| |x#0@@2| |b#0@@1|))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($ly@@2 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) (|_k#0@@2| Int) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Universe))) (or (|_module.Universe.outlives_h#canCall| $h0 this@@2 |_k#0@@2| |a#0@@2| |b#0@@2|) (and (and (<= (LitInt 0) |_k#0@@2|) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (or (= $o@@5 this@@2) (and (and ($Is refType $o@@5 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@2) _module.Universe.content)) ($Box refType $o@@5))) (= $f _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@5 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@2) _module.Universe.content)) ($Box refType $o@@5))) (= $f _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Universe.outlives_h $ly@@2 $h0 this@@2 |_k#0@@2| |a#0@@2| |b#0@@2|) (_module.Universe.outlives_h $ly@@2 $h1 this@@2 |_k#0@@2| |a#0@@2| |b#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.outlives_h $ly@@2 $h1 this@@2 |_k#0@@2| |a#0@@2| |b#0@@2|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@2 T@U) (this@@3 T@U) (|_k#0@@3| Int) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@2 this@@3 |_k#0@@3| |a#0@@3| |b#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@2)))) (<= (LitInt 0) |_k#0@@3|)) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (< 0 |_k#0@@3|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@2 this@@3 (- |_k#0@@3| 1) |a#0@@3| |x#3| |b#0@@3|)))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1237|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@2 this@@3 (- |_k#0@@3| 1) |a#0@@3| |x#3| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@3) $Heap@@2 this@@3 |_k#0@@3| |a#0@@3| |b#0@@3|)  (and (< 0 |_k#0@@3|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@2 this@@3 (- |_k#0@@3| 1) |a#0@@3| |x#3@@0| |b#0@@3|))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1236|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@2 this@@3 (- |_k#0@@3| 1) |a#0@@3| |x#3@@0| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1238|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@3) $Heap@@2 this@@3 |_k#0@@3| |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@3 Tclass._System.nat))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@7 Tclass._module.Thread))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@9 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@11 Tclass._module.Lifetime?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Thread)  (and ($Is refType |c#0@@5| Tclass._module.Thread?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1747|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Lifetime)  (and ($Is refType |c#0@@6| Tclass._module.Lifetime?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2356|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Lifetime?))
)))
(assert (forall (($o@@6 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@6 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3492|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@7 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.Lifetime? $heap@@0) ($IsAlloc refType $o@@7 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Lifetime? $heap@@0))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1909|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($ly@@4 T@U) ($Heap@@3 T@U) (this@@4 T@U) (|_k#0@@4| Int) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@4) $Heap@@3 this@@4 |_k#0@@4| |a#0@@4| |b#0@@4|) (_module.Universe.outlives_h $ly@@4 $Heap@@3 this@@4 |_k#0@@4| |a#0@@4| |b#0@@4|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1230|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@4) $Heap@@3 this@@4 |_k#0@@4| |a#0@@4| |b#0@@4|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall (($ly@@5 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@5 T@U) (|_k#0@@5| Int) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough_h#canCall| $h0@@0 this@@5 |_k#0@@5| |a#0@@5| |x#0@@4| |b#0@@5|) (and (and (and (<= (LitInt 0) |_k#0@@5|) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (or (or (= $o@@12 this@@5) (and (and ($Is refType $o@@12 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@5) _module.Universe.content)) ($Box refType $o@@12))) (= $f@@0 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@12 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@5) _module.Universe.content)) ($Box refType $o@@12))) (= $f@@0 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@12) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1254|
)) (= (_module.Universe.outlivesThrough_h $ly@@5 $h0@@0 this@@5 |_k#0@@5| |a#0@@5| |x#0@@4| |b#0@@5|) (_module.Universe.outlivesThrough_h $ly@@5 $h1@@0 this@@5 |_k#0@@5| |a#0@@5| |x#0@@4| |b#0@@5|))))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.outlivesThrough_h $ly@@5 $h1@@0 this@@5 |_k#0@@5| |a#0@@5| |x#0@@4| |b#0@@5|))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@4 T@U) (this@@6 T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) (|_k#0@@6| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (= |_k#0@@6| 0)) (not (_module.Universe.outlives_h $ly@@6 $Heap@@4 this@@6 |_k#0@@6| |a#0@@6| |b#0@@6|)))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1225|
 :pattern ( (_module.Universe.outlives_h $ly@@6 $Heap@@4 this@@6 |_k#0@@6| |a#0@@6| |b#0@@6|))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@1))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3520|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@1))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass._module.Thread?) ($Is refType $o@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3491|
 :pattern ( ($Is refType $o@@14 Tclass._module.Thread?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) ($IsBox bx@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3489|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.Lifetime?) ($Is refType $o@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@15 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Lifetime?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3497|
 :pattern ( ($IsBox bx@@15 Tclass._module.Lifetime?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (forall (($o@@16 T@U) ) (! (= ($Is refType $o@@16 Tclass._module.Universe?)  (or (= $o@@16 null) (implements$_module.Universe (dtype $o@@16))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@16 Tclass._module.Universe?))
)))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.Object?)  (or (= $o@@17 null) (implements$_module.Object (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@17 Tclass._module.Object?))
)))
(assert (forall (($h@@14 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.Universe.content)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall (($h@@15 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) _module.Universe.content)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun current$Heap () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun this@@7 () T@U)
(declare-fun |k#0| () Int)
(declare-fun |a#0@@7| () T@U)
(declare-fun |b#0@@7| () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun |running#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Universe.FrameOutlivesHelper)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon8_correct  (=> (forall ((|l#1@@0| T@U) ) (!  (=> (and ($Is refType |l#1@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |l#1@@0|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#1@@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#1@@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimeshortdfy.217:21|
 :skolemid |1308|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#1@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#1@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |l#1@@0|)))
)) (=> (and (and ($IsAllocBox ($Box refType this@@7) Tclass._module.Universe? current$Heap) ($IsAlloc intType (int_2_U |k#0|) Tclass._System.nat current$Heap)) (and ($IsAlloc refType |a#0@@7| Tclass._module.Lifetime current$Heap) ($IsAlloc refType |b#0@@7| Tclass._module.Lifetime current$Heap))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@7) _module.Universe.content)) ($Box refType |a#0@@7|))) (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@7) _module.Universe.content)) ($Box refType |b#0@@7|))))))))
(let ((anon11_Else_correct  (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |l#0@0|)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#0@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#0@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointTo))))) (= (ControlFlow 0 12) 2)) anon8_correct)))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 11)) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5)) (=> ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |l#0@0|)) (and (=> (= (ControlFlow 0 4) (- 0 10)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 9)) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@5)) (=> ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@5) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#0@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointFrom))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@5)) (=> ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@5) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |l#0@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointTo))) (= (ControlFlow 0 4) 2)) anon8_correct)))))))))))))))))))
(let ((anon5_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |b#0@@7|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@5 this@@7 |k#0| |a#0@@7| |b#0@@7|)) (and (=> (= (ControlFlow 0 13) (- 0 14)) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5)) (=> ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@7) _module.Universe.content))) (=> (and ($Is refType |l#0@0| Tclass._module.Lifetime) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime current$Heap)) (and (=> (= (ControlFlow 0 13) 4) anon11_Then_correct) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |b#0@@7|)))) (= (ControlFlow 0 21) 13)) anon5_correct)))
(let ((anon10_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |b#0@@7|))) (and (=> (= (ControlFlow 0 15) (- 0 20)) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5)) (=> ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5) (and (=> (= (ControlFlow 0 15) (- 0 19)) ($IsAlloc refType |a#0@@7| Tclass._module.Lifetime $Heap@@5)) (=> ($IsAlloc refType |a#0@@7| Tclass._module.Lifetime $Heap@@5) (and (=> (= (ControlFlow 0 15) (- 0 18)) ($IsAlloc refType |b#0@@7| Tclass._module.Lifetime $Heap@@5)) (=> ($IsAlloc refType |b#0@@7| Tclass._module.Lifetime $Heap@@5) (and (=> (= (ControlFlow 0 15) (- 0 17)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |b#0@@7|))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |b#0@@7|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@5 this@@7 |k#0| |a#0@@7| |b#0@@7|) (= (ControlFlow 0 15) 13))) anon5_correct))))))))))))
(let ((anon9_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|))) (and (=> (= (ControlFlow 0 24) 15) anon10_Then_correct) (=> (= (ControlFlow 0 24) 21) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@7) _module.Universe.content)) ($Box refType |a#0@@7|)) (and (=> (= (ControlFlow 0 22) (- 0 23)) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5)) (=> ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5) (and (=> (= (ControlFlow 0 22) 15) anon10_Then_correct) (=> (= (ControlFlow 0 22) 21) anon10_Else_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#57| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5)) (=> ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@5) (and (=> (= (ControlFlow 0 25) 22) anon9_Then_correct) (=> (= (ControlFlow 0 25) 24) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe previous$Heap)))) (=> (and (and (and (and ($Is refType |a#0@@7| Tclass._module.Lifetime) ($IsAlloc refType |a#0@@7| Tclass._module.Lifetime previous$Heap)) (and ($Is refType |b#0@@7| Tclass._module.Lifetime) ($IsAlloc refType |b#0@@7| Tclass._module.Lifetime previous$Heap))) (and (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) previous$Heap)) (and (<= (LitInt 0) |k#0|) (= 3 $FunctionContextHeight)))) (and (and (and (= previous$Heap $Heap@@5) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) ($IsAlloc refType |a#0@@7| Tclass._module.Lifetime previous$Heap)) (and (and ($IsAlloc refType |b#0@@7| Tclass._module.Lifetime previous$Heap) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) previous$Heap)) (and ($IsAlloc intType (int_2_U |k#0|) Tclass._System.nat previous$Heap) (= (ControlFlow 0 27) 25))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
