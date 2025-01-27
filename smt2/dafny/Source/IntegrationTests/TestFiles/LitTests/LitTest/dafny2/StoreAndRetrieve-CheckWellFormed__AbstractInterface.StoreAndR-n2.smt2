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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.AbstractInterface.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.AbstractInterface.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.AbstractInterface.StoreAndRetrieve () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$StoreAndRetrieve () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun AbstractInterface.StoreAndRetrieve.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun AbstractInterface.StoreAndRetrieve.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun AbstractInterface.StoreAndRetrieve.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |AbstractInterface.StoreAndRetrieve.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun AbstractInterface.StoreAndRetrieve.Contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve?_0 (T@U) T@U)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |AbstractInterface.StoreAndRetrieve.Valid_k#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.AbstractInterface.StoreAndRetrieve? Tagclass.AbstractInterface.StoreAndRetrieve? Tagclass.AbstractInterface.StoreAndRetrieve tytagFamily$object tytagFamily$StoreAndRetrieve field$Contents field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |486|
)) (= (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing $h0 this) (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing $h1 this))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing $h1 this))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |495|
)) (= (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@0 $h0@@0 this@@0) (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@1) $h) ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@1) $h))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@1) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((AbstractInterface.StoreAndRetrieve$Thing@@2 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@2 $Heap this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@2)) ($IsAlloc refType this@@1 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@2) $Heap)))))) (=> (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@2 $Heap this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@2 $Heap this@@1))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim AbstractInterface.StoreAndRetrieve.Contents) 0))
(assert (= (FieldOfDecl class.AbstractInterface.StoreAndRetrieve? field$Contents) AbstractInterface.StoreAndRetrieve.Contents))
(assert ($IsGhostField AbstractInterface.StoreAndRetrieve.Contents))
(assert (= (FDim AbstractInterface.StoreAndRetrieve.Repr) 0))
(assert (= (FieldOfDecl class.AbstractInterface.StoreAndRetrieve? field$Repr) AbstractInterface.StoreAndRetrieve.Repr))
(assert ($IsGhostField AbstractInterface.StoreAndRetrieve.Repr))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@3 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@3) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@3) $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@4))  (and ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@5 T@U) ) (!  (and (= (Tag (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5)) Tagclass.AbstractInterface.StoreAndRetrieve?) (= (TagFamily (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@6 T@U) ) (!  (and (= (Tag (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@6)) Tagclass.AbstractInterface.StoreAndRetrieve) (= (TagFamily (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@6)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@6))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@7 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) AbstractInterface.StoreAndRetrieve.Contents)) (TSet AbstractInterface.StoreAndRetrieve$Thing@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) AbstractInterface.StoreAndRetrieve.Contents)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@7))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@8 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@8))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@8))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@4 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@8)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@9 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@9)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) AbstractInterface.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) AbstractInterface.StoreAndRetrieve.Repr)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@9))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@10 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) AbstractInterface.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?) $h@@5))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) AbstractInterface.StoreAndRetrieve.Repr)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@10))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
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
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@11 T@U) ) (! (= (Tclass.AbstractInterface.StoreAndRetrieve?_0 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@11)) AbstractInterface.StoreAndRetrieve$Thing@@11)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@11))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@12 T@U) ) (! (= (Tclass.AbstractInterface.StoreAndRetrieve_0 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@12)) AbstractInterface.StoreAndRetrieve$Thing@@12)
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@12))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@13 T@U) ($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@13)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) AbstractInterface.StoreAndRetrieve.Contents)) (TSet AbstractInterface.StoreAndRetrieve$Thing@@13)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) AbstractInterface.StoreAndRetrieve.Contents)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@13))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@14 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@14)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@14))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@14)))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@15 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@15)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@15))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@6 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@15)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@9 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@9))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3683|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((AbstractInterface.StoreAndRetrieve$Thing@@16 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@16 $Heap@@0 this@@2) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@16)) ($IsAlloc refType this@@2 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@16) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@2)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null))) (|AbstractInterface.StoreAndRetrieve.Valid_k#canCall| AbstractInterface.StoreAndRetrieve$Thing@@16 $Heap@@0 this@@2))) (= (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@16 $Heap@@0 this@@2)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@2)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@16 $Heap@@0 this@@2)))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@16 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun AbstractInterface.StoreAndRetrieve$Thing@@17 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$AbstractInterface.StoreAndRetrieve.Store)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) AbstractInterface.StoreAndRetrieve.Repr)))) ($IsAllocBox ($Box refType this@@3) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@@1)) (and (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@17 $Heap@@1 this@@3) (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@17 $Heap@@1 this@@3))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@10))))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
))) (and (and ($HeapSucc $Heap@@1 $Heap@0) ($IsAllocBox ($Box refType this@@3) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@0)) (and (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@17 $Heap@0 this@@3) (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@17 $Heap@0 this@@3)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@3 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@@1)) (=> ($IsAlloc refType this@@3 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@@1) (=> (and (and (forall (($o@@11 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@11)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@11)))) (or (not (= $o@@11 null)) (not true)))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |506|
 :pattern (  (or (not (= $o@@11 null)) (not true)))
)) (forall (($o@@12 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@12)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@12)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |507|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))
))) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@3 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@@1))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@17)) ($IsAlloc refType this@@3 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@17) $Heap@@1)))) (and (and ($IsBox |t#0| AbstractInterface.StoreAndRetrieve$Thing@@17) ($IsAllocBox |t#0| AbstractInterface.StoreAndRetrieve$Thing@@17 $Heap@@1)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))
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
