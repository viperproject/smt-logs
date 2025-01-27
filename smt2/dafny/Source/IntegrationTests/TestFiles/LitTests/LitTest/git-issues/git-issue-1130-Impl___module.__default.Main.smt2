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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.Issue.Foo () T@U)
(declare-fun Tagclass.Variation.Foo () T@U)
(declare-fun Tagclass.AnotherVariation.Foo () T@U)
(declare-fun Tagclass.Issue.Foo? () T@U)
(declare-fun Tagclass.Variation.Foo? () T@U)
(declare-fun Tagclass.AnotherVariation.Foo? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Foo () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Issue.Foo (T@U) T@U)
(declare-fun Tclass.Issue.Foo? (T@U) T@U)
(declare-fun Tclass.Variation.Foo (T@U) T@U)
(declare-fun Tclass.Variation.Foo? (T@U) T@U)
(declare-fun Tclass.AnotherVariation.Foo (T@U) T@U)
(declare-fun Tclass.AnotherVariation.Foo? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Issue.Foo.Repr (T@U T@U) T@U)
(declare-fun |Issue.Foo.Repr#canCall| (T@U T@U) Bool)
(declare-fun Variation.Foo.Repr (T@U T@U) T@U)
(declare-fun |Variation.Foo.Repr#canCall| (T@U T@U) Bool)
(declare-fun AnotherVariation.Foo.Repr (T@U T@U) T@U)
(declare-fun |AnotherVariation.Foo.Repr#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.Issue.Foo_0 (T@U) T@U)
(declare-fun Tclass.Variation.Foo_0 (T@U) T@U)
(declare-fun Tclass.AnotherVariation.Foo_0 (T@U) T@U)
(declare-fun Tclass.Issue.Foo?_0 (T@U) T@U)
(declare-fun Tclass.Variation.Foo?_0 (T@U) T@U)
(declare-fun Tclass.AnotherVariation.Foo?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass.Issue.Foo Tagclass.Variation.Foo Tagclass.AnotherVariation.Foo Tagclass.Issue.Foo? Tagclass.Variation.Foo? Tagclass.AnotherVariation.Foo? tytagFamily$object tytagFamily$Foo)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1657|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1658|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1656|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((Issue.Foo$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Issue.Foo Issue.Foo$T) $h) ($IsAlloc refType |c#0| (Tclass.Issue.Foo? Issue.Foo$T) $h))
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Issue.Foo Issue.Foo$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Issue.Foo? Issue.Foo$T) $h))
)))
(assert (forall ((Variation.Foo$T T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.Variation.Foo Variation.Foo$T) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.Variation.Foo? Variation.Foo$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2052|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Variation.Foo Variation.Foo$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Variation.Foo? Variation.Foo$T) $h@@0))
)))
(assert (forall ((AnotherVariation.Foo$T T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1653|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@2))
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
(assert (forall ((Issue.Foo$T@@0 T@U) ($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Issue.Foo? Issue.Foo$T@@0) $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( ($IsAlloc refType $o (Tclass.Issue.Foo? Issue.Foo$T@@0) $h@@3))
)))
(assert (forall ((Variation.Foo$T@@0 T@U) ($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.Variation.Foo? Variation.Foo$T@@0) $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2044|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.Variation.Foo? Variation.Foo$T@@0) $h@@4))
)))
(assert (forall ((AnotherVariation.Foo$T@@0 T@U) ($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@0) $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@0) $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1646|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1647|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1554|
 :pattern ( ($Unbox T x@@5))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1574|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1575|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((Issue.Foo$T@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Issue.Foo Issue.Foo$T@@1))  (and ($Is refType |c#0@@3| (Tclass.Issue.Foo? Issue.Foo$T@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Issue.Foo Issue.Foo$T@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Issue.Foo? Issue.Foo$T@@1)))
)))
(assert (forall ((Variation.Foo$T@@1 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.Variation.Foo Variation.Foo$T@@1))  (and ($Is refType |c#0@@4| (Tclass.Variation.Foo? Variation.Foo$T@@1)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2051|
 :pattern ( ($Is refType |c#0@@4| (Tclass.Variation.Foo Variation.Foo$T@@1)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.Variation.Foo? Variation.Foo$T@@1)))
)))
(assert (forall ((AnotherVariation.Foo$T@@1 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@1))  (and ($Is refType |c#0@@5| (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@1)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($Is refType |c#0@@5| (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@1)))
 :pattern ( ($Is refType |c#0@@5| (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1567|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((Issue.Foo$T@@2 T@U) (this T@U) ) (!  (=> (or (|Issue.Foo.Repr#canCall| Issue.Foo$T@@2 this) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.Issue.Foo Issue.Foo$T@@2)))) (= (Issue.Foo.Repr Issue.Foo$T@@2 this) (|Set#UnionOne| |Set#Empty| ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |2034|
 :pattern ( (Issue.Foo.Repr Issue.Foo$T@@2 this))
)))
(assert (forall ((Variation.Foo$T@@2 T@U) (this@@0 T@U) ) (!  (=> (or (|Variation.Foo.Repr#canCall| Variation.Foo$T@@2 this@@0) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.Variation.Foo Variation.Foo$T@@2)))) (= (Variation.Foo.Repr Variation.Foo$T@@2 this@@0) (|Set#UnionOne| |Set#Empty| ($Box refType this@@0))))
 :qid |unknown.0:0|
 :skolemid |2048|
 :pattern ( (Variation.Foo.Repr Variation.Foo$T@@2 this@@0))
)))
(assert (forall ((AnotherVariation.Foo$T@@2 T@U) (this@@1 T@U) ) (!  (=> (or (|AnotherVariation.Foo.Repr#canCall| AnotherVariation.Foo$T@@2 this@@1) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@2)))) (= (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@2 this@@1) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@2 this@@1))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1639|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1638|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((Issue.Foo$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Issue.Foo Issue.Foo$T@@3)) Tagclass.Issue.Foo) (= (TagFamily (Tclass.Issue.Foo Issue.Foo$T@@3)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2010|
 :pattern ( (Tclass.Issue.Foo Issue.Foo$T@@3))
)))
(assert (forall ((Variation.Foo$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Variation.Foo Variation.Foo$T@@3)) Tagclass.Variation.Foo) (= (TagFamily (Tclass.Variation.Foo Variation.Foo$T@@3)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2015|
 :pattern ( (Tclass.Variation.Foo Variation.Foo$T@@3))
)))
(assert (forall ((AnotherVariation.Foo$T@@3 T@U) ) (!  (and (= (Tag (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@3)) Tagclass.AnotherVariation.Foo) (= (TagFamily (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@3)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2020|
 :pattern ( (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@3))
)))
(assert (forall ((Issue.Foo$T@@4 T@U) ) (!  (and (= (Tag (Tclass.Issue.Foo? Issue.Foo$T@@4)) Tagclass.Issue.Foo?) (= (TagFamily (Tclass.Issue.Foo? Issue.Foo$T@@4)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2026|
 :pattern ( (Tclass.Issue.Foo? Issue.Foo$T@@4))
)))
(assert (forall ((Variation.Foo$T@@4 T@U) ) (!  (and (= (Tag (Tclass.Variation.Foo? Variation.Foo$T@@4)) Tagclass.Variation.Foo?) (= (TagFamily (Tclass.Variation.Foo? Variation.Foo$T@@4)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( (Tclass.Variation.Foo? Variation.Foo$T@@4))
)))
(assert (forall ((AnotherVariation.Foo$T@@4 T@U) ) (!  (and (= (Tag (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@4)) Tagclass.AnotherVariation.Foo?) (= (TagFamily (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@4)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@4))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1877|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((Issue.Foo$T@@5 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.Issue.Foo? Issue.Foo$T@@5))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass.Issue.Foo? Issue.Foo$T@@5))))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( ($Is refType $o@@3 (Tclass.Issue.Foo? Issue.Foo$T@@5)))
)))
(assert (forall ((Variation.Foo$T@@5 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.Variation.Foo? Variation.Foo$T@@5))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.Variation.Foo? Variation.Foo$T@@5))))
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( ($Is refType $o@@4 (Tclass.Variation.Foo? Variation.Foo$T@@5)))
)))
(assert (forall ((AnotherVariation.Foo$T@@5 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@5))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@5))))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( ($Is refType $o@@5 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@5)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1878|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1645|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1555|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1566|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1595|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1596|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1875|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1529|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1530|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((Issue.Foo$T@@6 T@U) ) (! (= (Tclass.Issue.Foo_0 (Tclass.Issue.Foo Issue.Foo$T@@6)) Issue.Foo$T@@6)
 :qid |unknown.0:0|
 :skolemid |2011|
 :pattern ( (Tclass.Issue.Foo Issue.Foo$T@@6))
)))
(assert (forall ((Variation.Foo$T@@6 T@U) ) (! (= (Tclass.Variation.Foo_0 (Tclass.Variation.Foo Variation.Foo$T@@6)) Variation.Foo$T@@6)
 :qid |unknown.0:0|
 :skolemid |2016|
 :pattern ( (Tclass.Variation.Foo Variation.Foo$T@@6))
)))
(assert (forall ((AnotherVariation.Foo$T@@6 T@U) ) (! (= (Tclass.AnotherVariation.Foo_0 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@6)) AnotherVariation.Foo$T@@6)
 :qid |unknown.0:0|
 :skolemid |2021|
 :pattern ( (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@6))
)))
(assert (forall ((Issue.Foo$T@@7 T@U) ) (! (= (Tclass.Issue.Foo?_0 (Tclass.Issue.Foo? Issue.Foo$T@@7)) Issue.Foo$T@@7)
 :qid |unknown.0:0|
 :skolemid |2027|
 :pattern ( (Tclass.Issue.Foo? Issue.Foo$T@@7))
)))
(assert (forall ((Variation.Foo$T@@7 T@U) ) (! (= (Tclass.Variation.Foo?_0 (Tclass.Variation.Foo? Variation.Foo$T@@7)) Variation.Foo$T@@7)
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( (Tclass.Variation.Foo? Variation.Foo$T@@7))
)))
(assert (forall ((AnotherVariation.Foo$T@@7 T@U) ) (! (= (Tclass.AnotherVariation.Foo?_0 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@7)) AnotherVariation.Foo$T@@7)
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@7))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1553|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((Issue.Foo$T@@8 T@U) (this@@2 T@U) ) (!  (=> (or (|Issue.Foo.Repr#canCall| Issue.Foo$T@@8 this@@2) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass.Issue.Foo Issue.Foo$T@@8)))) ($Is SetType (Issue.Foo.Repr Issue.Foo$T@@8 this@@2) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( (Issue.Foo.Repr Issue.Foo$T@@8 this@@2))
)))
(assert (forall ((Variation.Foo$T@@8 T@U) (this@@3 T@U) ) (!  (=> (or (|Variation.Foo.Repr#canCall| Variation.Foo$T@@8 this@@3) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass.Variation.Foo Variation.Foo$T@@8)))) ($Is SetType (Variation.Foo.Repr Variation.Foo$T@@8 this@@3) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2045|
 :pattern ( (Variation.Foo.Repr Variation.Foo$T@@8 this@@3))
)))
(assert (forall ((AnotherVariation.Foo$T@@8 T@U) (this@@4 T@U) ) (!  (=> (or (|AnotherVariation.Foo.Repr#canCall| AnotherVariation.Foo$T@@8 this@@4) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@8)))) ($Is SetType (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@8 this@@4) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@8 this@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2081|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1560|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((Issue.Foo$T@@9 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Issue.Foo Issue.Foo$T@@9)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.Issue.Foo Issue.Foo$T@@9))))
 :qid |unknown.0:0|
 :skolemid |2012|
 :pattern ( ($IsBox bx@@6 (Tclass.Issue.Foo Issue.Foo$T@@9)))
)))
(assert (forall ((Variation.Foo$T@@9 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.Variation.Foo Variation.Foo$T@@9)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.Variation.Foo Variation.Foo$T@@9))))
 :qid |unknown.0:0|
 :skolemid |2017|
 :pattern ( ($IsBox bx@@7 (Tclass.Variation.Foo Variation.Foo$T@@9)))
)))
(assert (forall ((AnotherVariation.Foo$T@@9 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@9)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@9))))
 :qid |unknown.0:0|
 :skolemid |2022|
 :pattern ( ($IsBox bx@@8 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@9)))
)))
(assert (forall ((Issue.Foo$T@@10 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Issue.Foo? Issue.Foo$T@@10)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.Issue.Foo? Issue.Foo$T@@10))))
 :qid |unknown.0:0|
 :skolemid |2028|
 :pattern ( ($IsBox bx@@9 (Tclass.Issue.Foo? Issue.Foo$T@@10)))
)))
(assert (forall ((Variation.Foo$T@@10 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.Variation.Foo? Variation.Foo$T@@10)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.Variation.Foo? Variation.Foo$T@@10))))
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( ($IsBox bx@@10 (Tclass.Variation.Foo? Variation.Foo$T@@10)))
)))
(assert (forall ((AnotherVariation.Foo$T@@10 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@10)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@10))))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($IsBox bx@@11 (Tclass.AnotherVariation.Foo? AnotherVariation.Foo$T@@10)))
)))
(assert (forall (($Heap T@U) (Issue.Foo$T@@11 T@U) (this@@5 T@U) ) (!  (=> (and (or (|Issue.Foo.Repr#canCall| Issue.Foo$T@@11 this@@5) (and (or (not (= this@@5 null)) (not true)) ($IsAlloc refType this@@5 (Tclass.Issue.Foo Issue.Foo$T@@11) $Heap))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (Issue.Foo.Repr Issue.Foo$T@@11 this@@5) (TSet Tclass._System.object) $Heap))
 :qid |gitissue1130dfy.19:20|
 :skolemid |2032|
 :pattern ( ($IsAlloc SetType (Issue.Foo.Repr Issue.Foo$T@@11 this@@5) (TSet Tclass._System.object) $Heap))
)))
(assert (forall (($Heap@@0 T@U) (Variation.Foo$T@@11 T@U) (this@@6 T@U) ) (!  (=> (and (or (|Variation.Foo.Repr#canCall| Variation.Foo$T@@11 this@@6) (and (or (not (= this@@6 null)) (not true)) ($IsAlloc refType this@@6 (Tclass.Variation.Foo Variation.Foo$T@@11) $Heap@@0))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (Variation.Foo.Repr Variation.Foo$T@@11 this@@6) (TSet Tclass._System.object) $Heap@@0))
 :qid |gitissue1130dfy.40:20|
 :skolemid |2046|
 :pattern ( ($IsAlloc SetType (Variation.Foo.Repr Variation.Foo$T@@11 this@@6) (TSet Tclass._System.object) $Heap@@0))
)))
(assert (forall (($Heap@@1 T@U) (AnotherVariation.Foo$T@@11 T@U) (this@@7 T@U) ) (!  (=> (and (or (|AnotherVariation.Foo.Repr#canCall| AnotherVariation.Foo$T@@11 this@@7) (and (or (not (= this@@7 null)) (not true)) ($IsAlloc refType this@@7 (Tclass.AnotherVariation.Foo AnotherVariation.Foo$T@@11) $Heap@@1))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@11 this@@7) (TSet Tclass._System.object) $Heap@@1))
 :qid |gitissue1130dfy.72:20|
 :skolemid |2072|
 :pattern ( ($IsAlloc SetType (AnotherVariation.Foo.Repr AnotherVariation.Foo$T@@11 this@@7) (TSet Tclass._System.object) $Heap@@1))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1589|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1568|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun call0formal@Issue.Foo$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun call0formal@Variation.Foo$T () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call2formal@this@@1 () T@U)
(declare-fun call0formal@AnotherVariation.Foo$T () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun call2formal@this@0@@1 () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@7| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this (Tclass.Issue.Foo call0formal@Issue.Foo$T)) ($IsAlloc refType call2formal@this (Tclass.Issue.Foo call0formal@Issue.Foo$T) $Heap@@2))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 (Tclass.Issue.Foo TInt)) ($IsAlloc refType call2formal@this@0 (Tclass.Issue.Foo TInt) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 call2formal@this@0) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@8)))
 :qid |gitissue1130dfy.20:5|
 :skolemid |2036|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@9 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (|Set#IsMember| (Issue.Foo.Repr TInt call2formal@this@0) ($Box refType $o@@9))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@0)))
 :qid |gitissue1130dfy.5:19|
 :skolemid |2014|
))) (=> (forall (($o@@10 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) alloc)))) (|Set#IsMember| (Issue.Foo.Repr TInt call2formal@this@0) ($Box refType $o@@10))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@1)))
 :qid |gitissue1130dfy.5:19|
 :skolemid |2014|
)) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11)) (|Set#IsMember| (Issue.Foo.Repr TInt call2formal@this@0) ($Box refType $o@@11))))
 :qid |gitissue1130dfy.29:10|
 :skolemid |2025|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 (Tclass.Variation.Foo call0formal@Variation.Foo$T)) ($IsAlloc refType call2formal@this@@0 (Tclass.Variation.Foo call0formal@Variation.Foo$T) $Heap@@2))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 (Tclass.Variation.Foo TInt)) ($IsAlloc refType call2formal@this@0@@0 (Tclass.Variation.Foo TInt) $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@0) alloc))))) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12)))
 :qid |gitissue1130dfy.41:5|
 :skolemid |2050|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@13 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) alloc)))) (|Set#IsMember| (Variation.Foo.Repr TInt call2formal@this@0@@0) ($Box refType $o@@13))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@2)))
 :qid |gitissue1130dfy.8:23|
 :skolemid |2019|
))) (=> (forall (($o@@14 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14) alloc)))) (|Set#IsMember| (Variation.Foo.Repr TInt call2formal@this@0@@0) ($Box refType $o@@14))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@3)))
 :qid |gitissue1130dfy.8:23|
 :skolemid |2019|
)) (=> (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15)) (|Set#IsMember| (Variation.Foo.Repr TInt call2formal@this@0@@0) ($Box refType $o@@15))))
 :qid |gitissue1130dfy.60:10|
 :skolemid |2039|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and (or (not (= call2formal@this@@1 null)) (not true)) (and ($Is refType call2formal@this@@1 (Tclass.AnotherVariation.Foo call0formal@AnotherVariation.Foo$T)) ($IsAlloc refType call2formal@this@@1 (Tclass.AnotherVariation.Foo call0formal@AnotherVariation.Foo$T) $Heap@@2))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (and (and (or (not (= call2formal@this@0@@1 null)) (not true)) (and ($Is refType call2formal@this@0@@1 (Tclass.AnotherVariation.Foo TInt)) ($IsAlloc refType call2formal@this@0@@1 (Tclass.AnotherVariation.Foo TInt) $Heap@4))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0@@1) alloc))))) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@16)))
 :qid |gitissue1130dfy.73:5|
 :skolemid |2076|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@16))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@17 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@17) alloc)))) (|Set#IsMember| (AnotherVariation.Foo.Repr TInt call2formal@this@0@@1) ($Box refType $o@@17))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@4)))
 :qid |gitissue1130dfy.11:30|
 :skolemid |2024|
)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (=> |defass#a#0| (and ($Is refType |a#0| (Tclass.Issue.Foo TInt)) ($IsAlloc refType |a#0| (Tclass.Issue.Foo TInt) $Heap@@2))) true) (and (=> |defass#b#0| (and ($Is refType |b#0| (Tclass.Variation.Foo TInt)) ($IsAlloc refType |b#0| (Tclass.Variation.Foo TInt) $Heap@@2))) true)) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@7| (Tclass.AnotherVariation.Foo TInt)) ($IsAlloc refType |c#0@@7| (Tclass.AnotherVariation.Foo TInt) $Heap@@2))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 8) 2)))) anon0_correct))))
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
