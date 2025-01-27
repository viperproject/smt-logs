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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve (T@U) T@U)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun AbstractInterface.StoreAndRetrieve.Valid (T@U T@U T@U) Bool)
(declare-fun |AbstractInterface.StoreAndRetrieve.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve?_0 (T@U) T@U)
(declare-fun Tclass.AbstractInterface.StoreAndRetrieve_0 (T@U) T@U)
(declare-fun |AbstractInterface.StoreAndRetrieve.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun AbstractInterface.StoreAndRetrieve.Valid_k (T@U T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.AbstractInterface.StoreAndRetrieve? Tagclass.AbstractInterface.StoreAndRetrieve? Tagclass.AbstractInterface.StoreAndRetrieve tytagFamily$object tytagFamily$StoreAndRetrieve field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (= (Ctor refType) 3))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing) $h) ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing) $h))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing) $h))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((AbstractInterface.StoreAndRetrieve$Thing@@0 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@0 $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@0)) ($IsAlloc refType this (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@0) $Heap)))))) (=> (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@0 $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@0 $Heap this))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim AbstractInterface.StoreAndRetrieve.Repr) 0))
(assert (= (FieldOfDecl class.AbstractInterface.StoreAndRetrieve? field$Repr) AbstractInterface.StoreAndRetrieve.Repr))
(assert ($IsGhostField AbstractInterface.StoreAndRetrieve.Repr))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@1) $h@@1))
)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
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
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (= $o@@1 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@1)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3682|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@2))  (and ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@3 T@U) ) (!  (and (= (Tag (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@3)) Tagclass.AbstractInterface.StoreAndRetrieve?) (= (TagFamily (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@3)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@3))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@4 T@U) ) (!  (and (= (Tag (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@4)) Tagclass.AbstractInterface.StoreAndRetrieve) (= (TagFamily (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@4)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@4))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@5 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@2 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@5)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@6 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@6)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) AbstractInterface.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) AbstractInterface.StoreAndRetrieve.Repr)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@7 T@U) ($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) AbstractInterface.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?) $h@@4))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) AbstractInterface.StoreAndRetrieve.Repr)) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@7))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@8 T@U) ) (! (= (Tclass.AbstractInterface.StoreAndRetrieve?_0 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@8)) AbstractInterface.StoreAndRetrieve$Thing@@8)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@8))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@9 T@U) ) (! (= (Tclass.AbstractInterface.StoreAndRetrieve_0 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@9)) AbstractInterface.StoreAndRetrieve$Thing@@9)
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@9))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@10)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@10))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@10)))
)))
(assert (forall ((AbstractInterface.StoreAndRetrieve$Thing@@11 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@11)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@11))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@6 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@11)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((AbstractInterface.StoreAndRetrieve$Thing@@12 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@12 $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@12)) ($IsAlloc refType this@@0 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@12) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@0)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null))) (|AbstractInterface.StoreAndRetrieve.Valid_k#canCall| AbstractInterface.StoreAndRetrieve$Thing@@12 $Heap@@0 this@@0))) (= (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@12 $Heap@@0 this@@0)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@12 $Heap@@0 this@@0)))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@12 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun AbstractInterface.StoreAndRetrieve$Thing@@13 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$AbstractInterface.StoreAndRetrieve.Valid)
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
 (=> (= (ControlFlow 0 0) 18) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1))))))
(let ((anon10_correct  (=> (= (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractInterface.StoreAndRetrieve.Valid_k AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1))) (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null))) (|AbstractInterface.StoreAndRetrieve.Valid_k#canCall| AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1))) ($Is boolType (bool_2_U (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1)) TBool)) (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 7) (- 0 9)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct)))))))))))
(let ((anon15_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null))))) (=> (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 12) 7)) anon10_correct))))
(let ((anon15_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType null)))) ($IsAllocBox ($Box refType this@@1) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@13) $Heap@@1)) (and (and (= |b$reqreads#3@0| (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (or (= $o@@6 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType $o@@6)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@0)))
 :qid |StoreAndRetrievedfy.12:7|
 :skolemid |494|
))) (|AbstractInterface.StoreAndRetrieve.Valid_k#canCall| AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 11) 7)))) anon10_correct)))
(let ((anon14_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1))) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 14) 11) anon15_Then_correct) (=> (= (ControlFlow 0 14) 12) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (=> (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 AbstractInterface.StoreAndRetrieve.Repr))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct))))))
(let ((anon12_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 AbstractInterface.StoreAndRetrieve.Repr))) (and (=> (= (ControlFlow 0 15) 13) anon14_Then_correct) (=> (= (ControlFlow 0 15) 14) anon14_Else_correct)))))
(let ((anon5_correct true))
(let ((anon13_Else_correct  (=> (and (=> (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1))) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon13_Then_correct  (=> ($IsAllocBox ($Box refType this@@1) (Tclass.AbstractInterface.StoreAndRetrieve? AbstractInterface.StoreAndRetrieve$Thing@@13) $Heap@@1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))))) (=> (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))))) (=> (and (and (or (= this@@1 this@@1) (|AbstractInterface.StoreAndRetrieve.Valid#canCall| AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1)) (AbstractInterface.StoreAndRetrieve.Valid AbstractInterface.StoreAndRetrieve$Thing@@13 $Heap@@1 this@@1)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (= (ControlFlow 0 2) 1))) anon5_correct))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) AbstractInterface.StoreAndRetrieve.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 AbstractInterface.StoreAndRetrieve.Repr)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 16) 15) anon12_Else_correct) (=> (= (ControlFlow 0 16) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 16) 4) anon13_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@13)) ($IsAlloc refType this@@1 (Tclass.AbstractInterface.StoreAndRetrieve AbstractInterface.StoreAndRetrieve$Thing@@13) $Heap@@1))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
