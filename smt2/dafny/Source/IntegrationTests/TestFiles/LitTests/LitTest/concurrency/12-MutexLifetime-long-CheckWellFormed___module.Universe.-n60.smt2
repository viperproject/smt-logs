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
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun field$content () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$mightPointTo () T@U)
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
(declare-fun _module.Universe.outlives (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.outlivesThrough (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun _module.Universe.outlivesThrough_h (T@U T@U T@U Int T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.Universe.outlivesThrough#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun |_module.Universe.outlives#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Universe.outlives_h (T@U T@U T@U Int T@U T@U) Bool)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Lifetime? class._module.Universe? class._module.Lifetime? tytagFamily$Universe tytagFamily$Object tytagFamily$Lifetime field$content field$mightPointFrom field$mightPointTo)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) (|a#0| T@U) (|b#0| T@U) ) (! (= (_module.Universe.outlives ($LS $ly) $Heap this |a#0| |b#0|) (_module.Universe.outlives $ly $Heap this |a#0| |b#0|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1568|
 :pattern ( (_module.Universe.outlives ($LS $ly) $Heap this |a#0| |b#0|))
)))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|a#0@@0| T@U) (|x#0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@0 this@@0 |a#0@@0| |x#0| |b#0@@0|)) (exists ((|_k#0| Int) ) (!  (and (<= (LitInt 0) |_k#0|) (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@0 this@@0 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@0 this@@0 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1602|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@0 this@@0 |a#0@@0| |x#0| |b#0@@0|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|a#0@@1| T@U) (|x#0@@0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough#canCall| $Heap@@1 this@@1 |a#0@@1| |x#0@@0| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@1)))) ($Is refType |a#0@@1| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0@@1| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |a#0@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |b#0@@1|)))))) (and (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives#canCall| $Heap@@1 this@@1 |a#0@@1| |x#0@@0|) (=> (_module.Universe.outlives $ly@@1 $Heap@@1 this@@1 |a#0@@1| |x#0@@0|) (|_module.Universe.outlives#canCall| $Heap@@1 this@@1 |x#0@@0| |b#0@@1|)))) (= (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@1 this@@1 |a#0@@1| |x#0@@0| |b#0@@1|)  (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives $ly@@1 $Heap@@1 this@@1 |a#0@@1| |x#0@@0|)) (_module.Universe.outlives $ly@@1 $Heap@@1 this@@1 |x#0@@0| |b#0@@1|)))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1600|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@1 this@@1 |a#0@@1| |x#0@@0| |b#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Lifetime?)  (or (= $o null) (= (dtype $o) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o Tclass._module.Lifetime?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Lifetime? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( ($IsAllocBox bx Tclass._module.Lifetime? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@0) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Lifetime? $h@@2))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@2 T@U) (this@@2 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Universe))) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)) (_module.Universe.outlives ($LS $ly@@2) $Heap@@2 this@@2 |a#0@@2| |b#0@@2|)) (exists ((|_k#0@@0| Int) ) (!  (and (<= (LitInt 0) |_k#0@@0|) (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@2 this@@2 |_k#0@@0| |a#0@@2| |b#0@@2|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@2 this@@2 |_k#0@@0| |a#0@@2| |b#0@@2|))
)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1578|
 :pattern ( (_module.Universe.outlives ($LS $ly@@2) $Heap@@2 this@@2 |a#0@@2| |b#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@3 T@U) (this@@3 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives#canCall| $Heap@@3 this@@3 |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@3)))) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#0@@1| T@U) ) (!  (=> ($Is refType |x#0@@1| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |x#0@@1|)) (|_module.Universe.outlivesThrough#canCall| $Heap@@3 this@@3 |a#0@@3| |x#0@@1| |b#0@@3|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1575|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@3 this@@3 |a#0@@3| |x#0@@1| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |x#0@@1|)))
))) (= (_module.Universe.outlives ($LS $ly@@3) $Heap@@3 this@@3 |a#0@@3| |b#0@@3|)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#0@@2| T@U) ) (!  (and (and ($Is refType |x#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |x#0@@2|))) (_module.Universe.outlivesThrough $ly@@3 $Heap@@3 this@@3 |a#0@@3| |x#0@@2| |b#0@@3|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1574|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@3 this@@3 |a#0@@3| |x#0@@2| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |x#0@@2|)))
))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1576|
 :pattern ( (_module.Universe.outlives ($LS $ly@@3) $Heap@@3 this@@3 |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@4 T@U) (this@@4 T@U) (|_k#0@@1| Int) (|a#0@@4| T@U) (|x#0@@3| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap@@4 this@@4 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Universe) ($IsAlloc refType this@@4 Tclass._module.Universe $Heap@@4)))) (<= (LitInt 0) |_k#0@@1|)) ($Is refType |a#0@@4| Tclass._module.Lifetime)) ($Is refType |x#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@4| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Universe.content)) ($Box refType |a#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Universe.content)) ($Box refType |x#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Universe.content)) ($Box refType |b#0@@4|)))))) (and (=> (< 0 |_k#0@@1|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@4 this@@4 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap@@4 this@@4 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (|_module.Universe.outlives_h#canCall| $Heap@@4 this@@4 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@4 this@@4 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|)  (and (< 0 |_k#0@@1|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@4 this@@4 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|)) (_module.Universe.outlives_h ($LS $LZ) $Heap@@4 this@@4 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1613|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@4 this@@4 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Universe? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Universe? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Lifetime? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Lifetime? $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@5 T@U) (this@@5 T@U) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) (|_k#0@@2| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Universe))) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)) (= |_k#0@@2| 0)) (not (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@5 this@@5 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1604|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@5 this@@5 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@6 T@U) (this@@6 T@U) (|a#0@@6| T@U) (|x#0@@5| T@U) (|b#0@@6| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |x#0@@5| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (exists ((|_k#0@@3| Int) ) (!  (and (<= (LitInt 0) |_k#0@@3|) (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@6 this@@6 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@6 this@@6 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
))) (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@6 this@@6 |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1603|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@6 this@@6 |a#0@@6| |x#0@@5| |b#0@@6|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@7 T@U) (this@@7 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Universe))) ($Is refType |a#0@@7| Tclass._module.Lifetime)) ($Is refType |b#0@@7| Tclass._module.Lifetime)) (exists ((|_k#0@@4| Int) ) (!  (and (<= (LitInt 0) |_k#0@@4|) (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@7 this@@7 |_k#0@@4| |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@7 this@@7 |_k#0@@4| |a#0@@7| |b#0@@7|))
))) (_module.Universe.outlives ($LS $ly@@7) $Heap@@7 this@@7 |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1579|
 :pattern ( (_module.Universe.outlives ($LS $ly@@7) $Heap@@7 this@@7 |a#0@@7| |b#0@@7|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@8 T@U) (this@@8 T@U) (|_k#0@@5| Int) (|a#0@@8| T@U) (|x#0@@6| T@U) (|b#0@@8| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@8 this@@8 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|) (_module.Universe.outlivesThrough_h $ly@@8 $Heap@@8 this@@8 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1607|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@8 this@@8 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($ly@@9 T@U) ($h0 T@U) ($h1 T@U) (this@@9 T@U) (|_k#0@@6| Int) (|a#0@@9| T@U) (|b#0@@9| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Universe))) (or (|_module.Universe.outlives_h#canCall| $h0 this@@9 |_k#0@@6| |a#0@@9| |b#0@@9|) (and (and (<= (LitInt 0) |_k#0@@6|) ($Is refType |a#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@9| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@3 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (or (or (= $o@@3 this@@9) (and (and ($Is refType $o@@3 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@9) _module.Universe.content)) ($Box refType $o@@3))) (= $f _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@3 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@9) _module.Universe.content)) ($Box refType $o@@3))) (= $f _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@3) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@3) $f)))
 :qid |unknown.0:0|
 :skolemid |1587|
)) (= (_module.Universe.outlives_h $ly@@9 $h0 this@@9 |_k#0@@6| |a#0@@9| |b#0@@9|) (_module.Universe.outlives_h $ly@@9 $h1 this@@9 |_k#0@@6| |a#0@@9| |b#0@@9|))))
 :qid |unknown.0:0|
 :skolemid |1588|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.outlives_h $ly@@9 $h1 this@@9 |_k#0@@6| |a#0@@9| |b#0@@9|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($Heap@@9 T@U) (this@@10 T@U) (|_k#0@@7| Int) (|a#0@@10| T@U) (|b#0@@10| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@9 this@@10 |_k#0@@7| |a#0@@10| |b#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Universe) ($IsAlloc refType this@@10 Tclass._module.Universe $Heap@@9)))) (<= (LitInt 0) |_k#0@@7|)) ($Is refType |a#0@@10| Tclass._module.Lifetime)) ($Is refType |b#0@@10| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |a#0@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |b#0@@10|)))))) (and (=> (< 0 |_k#0@@7|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@9 this@@10 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1592|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@9 this@@10 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@9 this@@10 |_k#0@@7| |a#0@@10| |b#0@@10|)  (and (< 0 |_k#0@@7|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@9 this@@10 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1591|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@9 this@@10 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@10) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1593|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@9 this@@10 |_k#0@@7| |a#0@@10| |b#0@@10|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@6 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsBox bx@@7 Tclass._module.Lifetime?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1679|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Lifetime)  (and ($Is refType |c#0@@4| Tclass._module.Lifetime?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2706|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Lifetime?))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.Lifetime? $heap) ($IsAlloc refType $o@@4 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Lifetime? $heap))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2260|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($ly@@11 T@U) ($Heap@@10 T@U) (this@@11 T@U) (|_k#0@@8| Int) (|a#0@@11| T@U) (|b#0@@11| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@10 this@@11 |_k#0@@8| |a#0@@11| |b#0@@11|) (_module.Universe.outlives_h $ly@@11 $Heap@@10 this@@11 |_k#0@@8| |a#0@@11| |b#0@@11|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1585|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@10 this@@11 |_k#0@@8| |a#0@@11| |b#0@@11|))
)))
(assert (forall (($ly@@12 T@U) ($Heap@@11 T@U) (this@@12 T@U) (|a#0@@12| T@U) (|x#0@@7| T@U) (|b#0@@12| T@U) ) (! (= (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@11 this@@12 |a#0@@12| |x#0@@7| |b#0@@12|) (_module.Universe.outlivesThrough $ly@@12 $Heap@@11 this@@12 |a#0@@12| |x#0@@7| |b#0@@12|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1594|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@11 this@@12 |a#0@@12| |x#0@@7| |b#0@@12|))
)))
(assert (forall (($ly@@13 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@13 T@U) (|a#0@@13| T@U) (|x#0@@8| T@U) (|b#0@@13| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough#canCall| $h0@@0 this@@13 |a#0@@13| |x#0@@8| |b#0@@13|) (and (and ($Is refType |a#0@@13| Tclass._module.Lifetime) ($Is refType |x#0@@8| Tclass._module.Lifetime)) ($Is refType |b#0@@13| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@9 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (or (or (= $o@@9 this@@13) (and (and ($Is refType $o@@9 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@13) _module.Universe.content)) ($Box refType $o@@9))) (= $f@@0 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@9 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@13) _module.Universe.content)) ($Box refType $o@@9))) (= $f@@0 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@9) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@9) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1596|
)) (= (_module.Universe.outlivesThrough $ly@@13 $h0@@0 this@@13 |a#0@@13| |x#0@@8| |b#0@@13|) (_module.Universe.outlivesThrough $ly@@13 $h1@@0 this@@13 |a#0@@13| |x#0@@8| |b#0@@13|))))
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.outlivesThrough $ly@@13 $h1@@0 this@@13 |a#0@@13| |x#0@@8| |b#0@@13|))
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
(assert (forall (($ly@@14 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@14 T@U) (|_k#0@@9| Int) (|a#0@@14| T@U) (|x#0@@9| T@U) (|b#0@@14| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough_h#canCall| $h0@@1 this@@14 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (and (and (and (<= (LitInt 0) |_k#0@@9|) ($Is refType |a#0@@14| Tclass._module.Lifetime)) ($Is refType |x#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@14| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@10 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (or (or (= $o@@10 this@@14) (and (and ($Is refType $o@@10 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@14) _module.Universe.content)) ($Box refType $o@@10))) (= $f@@1 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@10 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@14) _module.Universe.content)) ($Box refType $o@@10))) (= $f@@1 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@10) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@10) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1609|
)) (= (_module.Universe.outlivesThrough_h $ly@@14 $h0@@1 this@@14 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@1 this@@14 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))))
 :qid |unknown.0:0|
 :skolemid |1610|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@1 this@@14 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($ly@@15 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@15 T@U) (|a#0@@15| T@U) (|b#0@@15| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Universe))) (or (|_module.Universe.outlives#canCall| $h0@@2 this@@15 |a#0@@15| |b#0@@15|) (and ($Is refType |a#0@@15| Tclass._module.Lifetime) ($Is refType |b#0@@15| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@11 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (or (or (= $o@@11 this@@15) (and (and ($Is refType $o@@11 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 this@@15) _module.Universe.content)) ($Box refType $o@@11))) (= $f@@2 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@11 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 this@@15) _module.Universe.content)) ($Box refType $o@@11))) (= $f@@2 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@11) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@11) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1570|
)) (= (_module.Universe.outlives $ly@@15 $h0@@2 this@@15 |a#0@@15| |b#0@@15|) (_module.Universe.outlives $ly@@15 $h1@@2 this@@15 |a#0@@15| |b#0@@15|))))
 :qid |unknown.0:0|
 :skolemid |1571|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.outlives $ly@@15 $h1@@2 this@@15 |a#0@@15| |b#0@@15|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) ($Heap@@12 T@U) (this@@16 T@U) (|a#0@@16| T@U) (|b#0@@16| T@U) (|_k#0@@10| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Universe))) ($Is refType |a#0@@16| Tclass._module.Lifetime)) ($Is refType |b#0@@16| Tclass._module.Lifetime)) (= |_k#0@@10| 0)) (not (_module.Universe.outlives_h $ly@@16 $Heap@@12 this@@16 |_k#0@@10| |a#0@@16| |b#0@@16|)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1580|
 :pattern ( (_module.Universe.outlives_h $ly@@16 $Heap@@12 this@@16 |_k#0@@10| |a#0@@16| |b#0@@16|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@12 T@U) ($f@@3 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@3))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3866|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@3))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass._module.Lifetime?) ($Is refType $o@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3845|
 :pattern ( ($Is refType $o@@13 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Lifetime?) ($IsBox bx@@10 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3843|
 :pattern ( ($IsBox bx@@10 Tclass._module.Lifetime?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (forall (($o@@14 T@U) ) (! (= ($Is refType $o@@14 Tclass._module.Universe?)  (or (= $o@@14 null) (implements$_module.Universe (dtype $o@@14))))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( ($Is refType $o@@14 Tclass._module.Universe?))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass._module.Object?)  (or (= $o@@15 null) (implements$_module.Object (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@15 Tclass._module.Object?))
)))
(assert (forall (($h@@10 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) _module.Universe.content)) (TSet Tclass._module.Object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1173|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) _module.Universe.content)))
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
(assert (forall (($h@@11 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@17) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1172|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@17) _module.Universe.content)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@13 () T@U)
(declare-fun this@@17 () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun current$Heap () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Universe.FrameOutlives)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon9_correct true))
(let ((anon12_Else_correct  (=> (and (=> (_module.Universe.outlives ($LS $LZ) $Heap@@13 this@@17 |a#0@0| |b#0@0|) (_module.Universe.outlives ($LS $LZ) current$Heap this@@17 |a#0@0| |b#0@0|)) (= (ControlFlow 0 11) 1)) anon9_correct)))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 10)) ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13)) (=> ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13) (and (=> (= (ControlFlow 0 3) (- 0 9)) ($IsAlloc refType |a#0@0| Tclass._module.Lifetime $Heap@@13)) (=> ($IsAlloc refType |a#0@0| Tclass._module.Lifetime $Heap@@13) (and (=> (= (ControlFlow 0 3) (- 0 8)) ($IsAlloc refType |b#0@0| Tclass._module.Lifetime $Heap@@13)) (=> ($IsAlloc refType |b#0@0| Tclass._module.Lifetime $Heap@@13) (and (=> (= (ControlFlow 0 3) (- 0 7)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |a#0@0|))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |b#0@0|))) (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |a#0@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |b#0@0|))) (|_module.Universe.outlives#canCall| $Heap@@13 this@@17 |a#0@0| |b#0@0|)) (and (and (_module.Universe.outlives ($LS $LZ) $Heap@@13 this@@17 |a#0@0| |b#0@0|) ($IsAllocBox ($Box refType this@@17) Tclass._module.Universe? current$Heap)) (and ($IsAlloc refType |a#0@0| Tclass._module.Lifetime current$Heap) ($IsAlloc refType |b#0@0| Tclass._module.Lifetime current$Heap)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@17) _module.Universe.content)) ($Box refType |a#0@0|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@17) _module.Universe.content)) ($Box refType |b#0@0|))) (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@17) _module.Universe.content)) ($Box refType |a#0@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@17) _module.Universe.content)) ($Box refType |b#0@0|))) (|_module.Universe.outlives#canCall| current$Heap this@@17 |a#0@0| |b#0@0|)) (and (_module.Universe.outlives ($LS $LZ) current$Heap this@@17 |a#0@0| |b#0@0|) (= (ControlFlow 0 3) 1))) anon9_correct))))))))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13)) (=> ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |a#0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13)) (=> ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |b#0@0|)) (and (=> (= (ControlFlow 0 12) 3) anon12_Then_correct) (=> (= (ControlFlow 0 12) 11) anon12_Else_correct))))))))))
(let ((anon11_Else_correct  (=> (and (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |a#0@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |b#0@0|))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@@13 this@@17 |a#0@0| |b#0@0|) (_module.Universe.outlives ($LS $LZ) current$Heap this@@17 |a#0@0| |b#0@0|))) (= (ControlFlow 0 2) 1)) anon9_correct)))
(let ((anon4_correct  (=> (forall ((|l#1@@0| T@U) ) (!  (=> (and ($Is refType |l#1@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |l#1@@0|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#1@@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#1@@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1648|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#1@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#1@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#1@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |l#1@@0|)))
)) (=> (and (and ($Is refType |a#0@0| Tclass._module.Lifetime) ($IsAlloc refType |a#0@0| Tclass._module.Lifetime current$Heap)) (and ($Is refType |b#0@0| Tclass._module.Lifetime) ($IsAlloc refType |b#0@0| Tclass._module.Lifetime current$Heap))) (and (=> (= (ControlFlow 0 15) 12) anon11_Then_correct) (=> (= (ControlFlow 0 15) 2) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |l#0@0|)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#0@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#0@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointTo))))) (= (ControlFlow 0 24) 15)) anon4_correct)))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 23)) ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13)) (=> ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Box refType |l#0@0|)) (and (=> (= (ControlFlow 0 16) (- 0 22)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 21)) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@13)) (=> ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@13) (and (=> (= (ControlFlow 0 16) (- 0 20)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#0@0|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointFrom))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 18)) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@13)) (=> ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@13) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= |l#0@0| null)) (not true))) (=> (or (not (= |l#0@0| null)) (not true)) (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 |l#0@0|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |l#0@0|) _module.Lifetime.mightPointTo))) (= (ControlFlow 0 16) 15)) anon4_correct)))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#57| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13)) (=> ($IsAlloc refType this@@17 Tclass._module.Universe $Heap@@13) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@17) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@17) _module.Universe.content))) (=> (and ($Is refType |l#0@0| Tclass._module.Lifetime) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime current$Heap)) (and (=> (= (ControlFlow 0 25) 16) anon10_Then_correct) (=> (= (ControlFlow 0 25) 24) anon10_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@13) ($IsHeapAnchor $Heap@@13)) (=> (and (and (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Universe) ($IsAlloc refType this@@17 Tclass._module.Universe previous$Heap))) (= 4 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@13) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 27) 25))) anon0_correct))))
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
