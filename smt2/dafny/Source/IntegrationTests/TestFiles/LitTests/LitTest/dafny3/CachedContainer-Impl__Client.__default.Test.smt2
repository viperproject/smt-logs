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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Container () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Client.M.Abs.Container.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Client.M.Abs.Container (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun Client.M.Abs.Container.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Client.M.Abs.Container.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Client.M.Abs.Container? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun class.Client.M.Abs.Container? () T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Client.M.Abs.Container.Contents () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Client.M.Abs.Container.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |Client.M.Abs.Container.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.Client.M.Abs.Container_0 (T@U) T@U)
(declare-fun Tclass.Client.M.Abs.Container?_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object tytagFamily$object tytagFamily$Container field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2891|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2892|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2896|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2897|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2890|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2906|
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
(assert (forall ((Client.M.Abs.Container$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) Client.M.Abs.Container.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |3262|
)) (= (Client.M.Abs.Container.Valid Client.M.Abs.Container$T $h0 this) (Client.M.Abs.Container.Valid Client.M.Abs.Container$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Client.M.Abs.Container.Valid Client.M.Abs.Container$T $h1 this))
)))
(assert (forall ((Client.M.Abs.Container$T@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |3267|
)) (= (Client.M.Abs.Container.Valid_k Client.M.Abs.Container$T@@0 $h0@@0 this@@0) (Client.M.Abs.Container.Valid_k Client.M.Abs.Container$T@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |3268|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (Client.M.Abs.Container.Valid_k Client.M.Abs.Container$T@@0 $h1@@0 this@@0))
)))
(assert (forall ((Client.M.Abs.Container$T@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@1) $h) ($IsAlloc refType |c#0| (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@1) $h))
 :qid |unknown.0:0|
 :skolemid |3286|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@1) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2887|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2900|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2905|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim Client.M.Abs.Container.Repr) 0))
(assert (= (FieldOfDecl class.Client.M.Abs.Container? field$Repr) Client.M.Abs.Container.Repr))
(assert ($IsGhostField Client.M.Abs.Container.Repr))
(assert (= (FDim Client.M.Abs.Container.Contents) 0))
(assert (= (FieldOfDecl class.Client.M.Abs.Container? field$Contents) Client.M.Abs.Container.Contents))
(assert ($IsGhostField Client.M.Abs.Container.Contents))
(assert (forall ((Client.M.Abs.Container$T@@2 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@2) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@2) $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3110|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2880|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2881|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2779|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2777|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2788|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2913|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2914|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2808|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2809|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((Client.M.Abs.Container$T@@3 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|Client.M.Abs.Container.Valid#canCall| Client.M.Abs.Container$T@@3 $Heap this@@1) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@3)) ($IsAlloc refType this@@1 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@3) $Heap))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) Client.M.Abs.Container.Repr)) ($Box refType this@@1)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) Client.M.Abs.Container.Repr)) ($Box refType null))) (|Client.M.Abs.Container.Valid_k#canCall| Client.M.Abs.Container$T@@3 $Heap this@@1))) (= (Client.M.Abs.Container.Valid Client.M.Abs.Container$T@@3 $Heap this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) Client.M.Abs.Container.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k Client.M.Abs.Container$T@@3 $Heap this@@1)))))
 :qid |unknown.0:0|
 :skolemid |3266|
 :pattern ( (Client.M.Abs.Container.Valid Client.M.Abs.Container$T@@3 $Heap this@@1) ($IsGoodHeap $Heap))
)))
(assert (forall ((Client.M.Abs.Container$T@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@4))  (and ($Is refType |c#0@@1| (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3285|
 :pattern ( ($Is refType |c#0@@1| (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2801|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2873|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2872|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((Client.M.Abs.Container$T@@5 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) Client.M.Abs.Container.Contents)) (TSet Client.M.Abs.Container$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) Client.M.Abs.Container.Contents)) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@5))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3108|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((Client.M.Abs.Container$T@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@6))))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($Is refType $o@@4 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2895|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((Client.M.Abs.Container$T@@7 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) Client.M.Abs.Container.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3283|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) Client.M.Abs.Container.Repr)) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@7))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2898|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((Client.M.Abs.Container$T@@8 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) Client.M.Abs.Container.Repr)) (TSet Tclass._System.object?) $h@@5))
 :qid |unknown.0:0|
 :skolemid |3284|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) Client.M.Abs.Container.Repr)) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@8))
)))
(assert (forall ((Client.M.Abs.Container$T@@9 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|Client.M.Abs.Container.Valid#canCall| Client.M.Abs.Container$T@@9 $Heap@@0 this@@2) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@9)) ($IsAlloc refType this@@2 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@9) $Heap@@0))))) (=> (Client.M.Abs.Container.Valid Client.M.Abs.Container$T@@9 $Heap@@0 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) Client.M.Abs.Container.Repr)) ($Box refType this@@2))))
 :qid |unknown.0:0|
 :skolemid |3264|
 :pattern ( (Client.M.Abs.Container.Valid Client.M.Abs.Container$T@@9 $Heap@@0 this@@2))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2912|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2879|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2869|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2789|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2800|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2829|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2830|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |3109|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2763|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2764|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((Client.M.Abs.Container$T@@10 T@U) ) (! (= (TagFamily (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@10)) tytagFamily$Container)
 :qid |unknown.0:0|
 :skolemid |3244|
 :pattern ( (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@10))
)))
(assert (forall ((Client.M.Abs.Container$T@@11 T@U) ) (! (= (Tclass.Client.M.Abs.Container_0 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@11)) Client.M.Abs.Container$T@@11)
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@11))
)))
(assert (forall ((Client.M.Abs.Container$T@@12 T@U) ) (! (= (TagFamily (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@12)) tytagFamily$Container)
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@12))
)))
(assert (forall ((Client.M.Abs.Container$T@@13 T@U) ) (! (= (Tclass.Client.M.Abs.Container?_0 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@13)) Client.M.Abs.Container$T@@13)
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@13))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2787|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2901|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@1))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3879|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@1))
)))
(assert (forall ((Client.M.Abs.Container$T@@14 T@U) ($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@14)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) Client.M.Abs.Container.Contents)) (TSet Client.M.Abs.Container$T@@14)))
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) Client.M.Abs.Container.Contents)) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@14))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2794|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((Client.M.Abs.Container$T@@15 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@15)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@15))))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( ($IsBox bx@@6 (Tclass.Client.M.Abs.Container Client.M.Abs.Container$T@@15)))
)))
(assert (forall ((Client.M.Abs.Container$T@@16 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@16)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@16))))
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($IsBox bx@@7 (Tclass.Client.M.Abs.Container? Client.M.Abs.Container$T@@16)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2910|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2911|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2780|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2778|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2823|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2802|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun call0formal@Client.M.Abs.Container$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |t##0@0| () Int)
(declare-fun |call2formal@t#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |t##1@0| () Int)
(declare-fun |call2formal@t#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |t##2@0| () Int)
(declare-fun |call2formal@t#0@0@@1| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call4formal@b#0@0| () Bool)
(declare-fun |t##3@0| () Int)
(declare-fun |call2formal@t#0@0@@2| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call4formal@b#0@0@@0| () Bool)
(declare-fun |t##4@0| () Int)
(declare-fun |call2formal@t#0@0@@3| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |t##5@0| () Int)
(declare-fun |call2formal@t#0@0@@4| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call4formal@b#0@0@@1| () Bool)
(declare-fun |t##6@0| () Int)
(declare-fun |call2formal@t#0@0@@5| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call4formal@b#0@0@@2| () Bool)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Client.__default.Test)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this (Tclass.Client.M.Abs.Container call0formal@Client.M.Abs.Container$T)) ($IsAlloc refType call2formal@this (Tclass.Client.M.Abs.Container call0formal@Client.M.Abs.Container$T) $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 (Tclass.Client.M.Abs.Container TInt)) ($IsAlloc refType call2formal@this@0 (Tclass.Client.M.Abs.Container TInt) $Heap@0))) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0))) (and (and (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@0 call2formal@this@0)))) (and (forall (($o@@10 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@10)) (or (not (= $o@@10 null)) (not true)))
 :qid |CachedContainerdfy.40:5|
 :skolemid |3271|
 :pattern (  (or (not (= $o@@10 null)) (not true)))
)) (forall (($o@@11 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@11)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))))
 :qid |CachedContainerdfy.40:5|
 :skolemid |3272|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@11)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Contents)) |Set#Empty|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call2formal@this@0) alloc))))) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12)))
 :qid |CachedContainerdfy.40:5|
 :skolemid |3273|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12))
)) ($HeapSucc $Heap@@1 $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 50)) true) (and (=> (= (ControlFlow 0 2) (- 0 49)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##0@0| (LitInt 56)) (and (=> (= (ControlFlow 0 2) (- 0 48)) (forall (($o@@13 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@13))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@2)))
 :qid |CachedContainerdfy.189:10|
 :skolemid |3248|
))) (=> (forall (($o@@14 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@14))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@3)))
 :qid |CachedContainerdfy.189:10|
 :skolemid |3248|
)) (=> (= |call2formal@t#0@0| ($Box intType (int_2_U |t##0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@0 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@0 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@0 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@0 call2formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0)) (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@1 call2formal@this@0))))) (and (and (and (forall (($o@@15 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@15)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@15)))) (or (not (= $o@@15 null)) (not true)))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3274|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@16)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) alloc)))))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3275|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) alloc)))
))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#UnionOne| |Set#Empty| |call2formal@t#0@0|)))) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@17))))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3276|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 44)) true) (and (=> (= (ControlFlow 0 2) (- 0 43)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##1@0| (LitInt 12)) (and (=> (= (ControlFlow 0 2) (- 0 42)) (forall (($o@@18 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@18))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@4)))
 :qid |CachedContainerdfy.190:10|
 :skolemid |3249|
))) (=> (forall (($o@@19 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@19))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@5)))
 :qid |CachedContainerdfy.190:10|
 :skolemid |3249|
)) (=> (= |call2formal@t#0@0@@0| ($Box intType (int_2_U |t##1@0|))) (and (=> (= (ControlFlow 0 2) (- 0 41)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@1 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@1 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@1 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@1 call2formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0)) (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@2 call2formal@this@0))))) (and (and (and (forall (($o@@20 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@20)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@20)))) (or (not (= $o@@20 null)) (not true)))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3274|
 :pattern (  (or (not (= $o@@20 null)) (not true)))
)) (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@21)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) alloc)))))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3275|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) alloc)))
))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#UnionOne| |Set#Empty| |call2formal@t#0@0@@0|)))) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@22))))
 :qid |CachedContainerdfy.42:12|
 :skolemid |3276|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 38)) true) (and (=> (= (ControlFlow 0 2) (- 0 37)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##2@0| (LitInt 17)) (and (=> (= (ControlFlow 0 2) (- 0 36)) (forall (($o@@23 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@23))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@23 $f@@6)))
 :qid |CachedContainerdfy.191:24|
 :skolemid |3250|
))) (=> (forall (($o@@24 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@24))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@24 $f@@7)))
 :qid |CachedContainerdfy.191:24|
 :skolemid |3250|
)) (=> (= |call2formal@t#0@0@@1| ($Box intType (int_2_U |t##2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@2 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@2 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@2 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@2 call2formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0)) (=> (and (and (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@3 call2formal@this@0)))) (and (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@25)))) (or (not (= $o@@25 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3280|
 :pattern (  (or (not (= $o@@25 null)) (not true)))
)) (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@26)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3281|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Contents))) (= |call4formal@b#0@0| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Contents)) |call2formal@t#0@0@@1|))) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@27))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3282|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@27))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (not |call4formal@b#0@0|)) (=> (not |call4formal@b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 31)) true) (and (=> (= (ControlFlow 0 2) (- 0 30)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##3@0| (LitInt 12)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (forall (($o@@28 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@28))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@28 $f@@8)))
 :qid |CachedContainerdfy.194:20|
 :skolemid |3251|
))) (=> (forall (($o@@29 T@U) ($f@@9 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@29))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@9)))
 :qid |CachedContainerdfy.194:20|
 :skolemid |3251|
)) (=> (= |call2formal@t#0@0@@2| ($Box intType (int_2_U |t##3@0|))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@3 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@3 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@3 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@3 call2formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0)) (=> (and (and (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@4 call2formal@this@0)))) (and (forall (($o@@30 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@30)))) (or (not (= $o@@30 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3280|
 :pattern (  (or (not (= $o@@30 null)) (not true)))
)) (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@31)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@31) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3281|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@31) alloc)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Contents))) (= |call4formal@b#0@0@@0| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Contents)) |call2formal@t#0@0@@2|))) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@32))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3282|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) |call4formal@b#0@0@@0|) (=> |call4formal@b#0@0@@0| (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##4@0| (LitInt 12)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (forall (($o@@33 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@33) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@33))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@33 $f@@10)))
 :qid |CachedContainerdfy.197:13|
 :skolemid |3252|
))) (=> (forall (($o@@34 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@34) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@34))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@34 $f@@11)))
 :qid |CachedContainerdfy.197:13|
 :skolemid |3252|
)) (=> (= |call2formal@t#0@0@@3| ($Box intType (int_2_U |t##4@0|))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@4 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@4 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@4 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@4 call2formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0)) (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@5 call2formal@this@0))))) (and (and (and (forall (($o@@35 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@35)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@35)))) (or (not (= $o@@35 null)) (not true)))
 :qid |CachedContainerdfy.44:12|
 :skolemid |3277|
 :pattern (  (or (not (= $o@@35 null)) (not true)))
)) (forall (($o@@36 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@36)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@36)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@36) alloc)))))
 :qid |CachedContainerdfy.44:12|
 :skolemid |3278|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@36) alloc)))
))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#UnionOne| |Set#Empty| |call2formal@t#0@0@@3|)))) (and (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@37) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@37) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@37)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@37))))
 :qid |CachedContainerdfy.44:12|
 :skolemid |3279|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@37))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##5@0| (LitInt 12)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (forall (($o@@38 T@U) ($f@@12 T@U) ) (!  (=> (and (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@38) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@38))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@38 $f@@12)))
 :qid |CachedContainerdfy.198:20|
 :skolemid |3253|
))) (=> (forall (($o@@39 T@U) ($f@@13 T@U) ) (!  (=> (and (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@39) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@39))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@39 $f@@13)))
 :qid |CachedContainerdfy.198:20|
 :skolemid |3253|
)) (=> (= |call2formal@t#0@0@@4| ($Box intType (int_2_U |t##5@0|))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@5 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@5 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@5 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@5 call2formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0)) (=> (and (and (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@6 call2formal@this@0)))) (and (forall (($o@@40 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@40)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@40)))) (or (not (= $o@@40 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3280|
 :pattern (  (or (not (= $o@@40 null)) (not true)))
)) (forall (($o@@41 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@41)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@41)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@41) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3281|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@41) alloc)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Contents))) (= |call4formal@b#0@0@@1| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Contents)) |call2formal@t#0@0@@4|))) (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@42) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@42)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@42))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3282|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@42))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (not |call4formal@b#0@0@@1|)) (=> (not |call4formal@b#0@0@@1|) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 56)))))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Contents)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 56))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##6@0| (LitInt 56)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@43 T@U) ($f@@14 T@U) ) (!  (=> (and (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@43) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@43))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@43 $f@@14)))
 :qid |CachedContainerdfy.202:20|
 :skolemid |3254|
))) (=> (forall (($o@@44 T@U) ($f@@15 T@U) ) (!  (=> (and (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@44) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@44))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@44 $f@@15)))
 :qid |CachedContainerdfy.202:20|
 :skolemid |3254|
)) (=> (= |call2formal@t#0@0@@5| ($Box intType (int_2_U |t##6@0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@6 call2formal@this@0)))) (=> (=> (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@6 call2formal@this@0) (or (Client.M.Abs.Container.Valid TInt $Heap@6 call2formal@this@0) (Client.M.Abs.Container.Valid_k TInt $Heap@6 call2formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@7 call2formal@this@0)) (and (|Client.M.Abs.Container.Valid#canCall| TInt $Heap@7 call2formal@this@0) (and (Client.M.Abs.Container.Valid TInt $Heap@7 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType null)))) (Client.M.Abs.Container.Valid_k TInt $Heap@7 call2formal@this@0))))) (and (and (and (forall (($o@@45 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@45)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@45)))) (or (not (= $o@@45 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3280|
 :pattern (  (or (not (= $o@@45 null)) (not true)))
)) (forall (($o@@46 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@46)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@46)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@46) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3281|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@46) alloc)))
))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Contents)))) (and (and (= |call4formal@b#0@0@@2| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) Client.M.Abs.Container.Contents)) |call2formal@t#0@0@@5|)) (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@47) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@47)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) Client.M.Abs.Container.Repr)) ($Box refType $o@@47))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |3282|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@47))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= (ControlFlow 0 2) (- 0 1)))))) |call4formal@b#0@0@@2|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@3| (Tclass.Client.M.Abs.Container TInt)) ($IsAlloc refType |c#0@@3| (Tclass.Client.M.Abs.Container TInt) $Heap@@1))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 51) 2))) anon0_correct))))
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
