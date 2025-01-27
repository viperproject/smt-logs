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
(declare-fun Tagclass._module.Composite () T@U)
(declare-fun Tagclass._module.Composite? () T@U)
(declare-fun class._module.Composite? () T@U)
(declare-fun tytagFamily$Composite () T@U)
(declare-fun field$sum () T@U)
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
(declare-fun field$parent () T@U)
(declare-fun field$val () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Composite? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Composite () T@U)
(declare-fun _module.Composite.sum () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Composite.left () T@U)
(declare-fun _module.Composite.right () T@U)
(declare-fun _module.Composite.parent () T@U)
(declare-fun _module.Composite.val () T@U)
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
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Composite.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.Composite.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.Composite.Acyclic (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.Composite.Acyclic#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Composite Tagclass._module.Composite? class._module.Composite? tytagFamily$Composite field$sum field$left field$right field$parent field$val)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Composite?)  (or (= $o null) (= (dtype $o) Tclass._module.Composite?)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is refType $o Tclass._module.Composite?))
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
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Composite $h) ($IsAlloc refType |c#0| Tclass._module.Composite? $h))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Composite $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Composite? $h))
)))
(assert (= (FDim _module.Composite.sum) 0))
(assert (= (FieldOfDecl class._module.Composite? field$sum) _module.Composite.sum))
(assert  (not ($IsGhostField _module.Composite.sum)))
(assert (= (FDim _module.Composite.left) 0))
(assert (= (FieldOfDecl class._module.Composite? field$left) _module.Composite.left))
(assert  (not ($IsGhostField _module.Composite.left)))
(assert (= (FDim _module.Composite.right) 0))
(assert (= (FieldOfDecl class._module.Composite? field$right) _module.Composite.right))
(assert  (not ($IsGhostField _module.Composite.right)))
(assert (= (FDim _module.Composite.parent) 0))
(assert (= (FieldOfDecl class._module.Composite? field$parent) _module.Composite.parent))
(assert  (not ($IsGhostField _module.Composite.parent)))
(assert (= (FDim _module.Composite.val) 0))
(assert (= (FieldOfDecl class._module.Composite? field$val) _module.Composite.val))
(assert  (not ($IsGhostField _module.Composite.val)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Composite? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Composite? $h@@0))
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
(assert (= (Ctor SetType) 7))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (|Set#IsMember| |l#3| ($Box refType $o@@1)) (= $o@@1 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |630|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Composite?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Composite.val)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |515|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Composite.val)))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Composite?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Composite.sum)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |517|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Composite.sum)))
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
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Composite?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Composite.left)) Tclass._module.Composite?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Composite.left)))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Composite?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Composite.right)) Tclass._module.Composite?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |510|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Composite.right)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Composite?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Composite.parent)) Tclass._module.Composite?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |512|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Composite.parent)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Composite) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Composite)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@1 Tclass._module.Composite))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Composite?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Composite?)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@2 Tclass._module.Composite?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Composite)  (and ($Is refType |c#0@@0| Tclass._module.Composite?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Composite))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Composite?))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Composite?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Composite.left)) Tclass._module.Composite? $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |509|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Composite.left)))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Composite?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Composite.right)) Tclass._module.Composite? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |511|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Composite.right)))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Composite?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Composite.parent)) Tclass._module.Composite? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |513|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Composite.parent)))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|S#0| T@U) ) (!  (=> (or (|_module.Composite.Valid#canCall| $Heap this |S#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Composite) ($IsAlloc refType this Tclass._module.Composite $Heap)))) ($Is SetType |S#0| (TSet Tclass._module.Composite))))) (= (_module.Composite.Valid $Heap this |S#0|)  (and (and (and (and (|Set#IsMember| |S#0| ($Box refType this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.parent)) null)) (not true)) (and (|Set#IsMember| |S#0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.parent)) (or (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.parent))) _module.Composite.left)) this) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.parent))) _module.Composite.right)) this))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left)) null)) (not true)) (and (and (|Set#IsMember| |S#0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left))) _module.Composite.parent)) this)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right)))) (not true))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right)) null)) (not true)) (and (and (|Set#IsMember| |S#0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right))) _module.Composite.parent)) this)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right)))) (not true))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.sum))) (+ (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.val))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left)) null) 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.left))) _module.Composite.sum))))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right)) null) 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Composite.right))) _module.Composite.sum)))))))))
 :qid |Compositedfy.11:18|
 :skolemid |522|
 :pattern ( (_module.Composite.Valid $Heap this |S#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (c T@U) ) (!  (=> (or (not (= a@@10 c)) (not true)) (=> (and ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c)) ($HeapSucc a@@10 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall (($ly T@U) ($Heap@@0 T@U) (this@@0 T@U) (|S#0@@0| T@U) ) (! (= (_module.Composite.Acyclic ($LS $ly) $Heap@@0 this@@0 |S#0@@0|) (_module.Composite.Acyclic $ly $Heap@@0 this@@0 |S#0@@0|))
 :qid |Compositedfy.21:18|
 :skolemid |523|
 :pattern ( (_module.Composite.Acyclic ($LS $ly) $Heap@@0 this@@0 |S#0@@0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|S#0@@1| T@U) ) (!  (=> (or (|_module.Composite.Acyclic#canCall| $Heap@@1 this@@1 |S#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Composite) ($IsAlloc refType this@@1 Tclass._module.Composite $Heap@@1)))) ($Is SetType |S#0@@1| (TSet Tclass._module.Composite))))) (and (=> (|Set#IsMember| |S#0@@1| ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Composite.parent)) null)) (not true)) (|_module.Composite.Acyclic#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Composite.parent)) (|Set#Difference| |S#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))) (= (_module.Composite.Acyclic ($LS $ly@@0) $Heap@@1 this@@1 |S#0@@1|)  (and (|Set#IsMember| |S#0@@1| ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Composite.parent)) null)) (not true)) (_module.Composite.Acyclic $ly@@0 $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Composite.parent)) (|Set#Difference| |S#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))))))
 :qid |Compositedfy.21:18|
 :skolemid |529|
 :pattern ( (_module.Composite.Acyclic ($LS $ly@@0) $Heap@@1 this@@1 |S#0@@1|) ($IsGoodHeap $Heap@@1))
))))
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
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Composite?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Composite.val)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |514|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Composite.val)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Composite?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.Composite.sum)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.Composite.sum)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.Composite) Tagclass._module.Composite))
(assert (= (TagFamily Tclass._module.Composite) tytagFamily$Composite))
(assert (= (Tag Tclass._module.Composite?) Tagclass._module.Composite?))
(assert (= (TagFamily Tclass._module.Composite?) tytagFamily$Composite))
(assert (forall (($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) (|S#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Composite))) (or (|_module.Composite.Acyclic#canCall| $h0 this@@2 |S#0@@2|) ($Is SetType |S#0@@2| (TSet Tclass._module.Composite)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (|Set#IsMember| |S#0@@2| ($Box refType $o@@12))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@12) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |525|
)) (= (_module.Composite.Acyclic $ly@@1 $h0 this@@2 |S#0@@2|) (_module.Composite.Acyclic $ly@@1 $h1 this@@2 |S#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Composite.Acyclic $ly@@1 $h1 this@@2 |S#0@@2|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) (|S#0@@3| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Composite))) (or (|_module.Composite.Valid#canCall| $h0@@0 this@@3 |S#0@@3|) ($Is SetType |S#0@@3| (TSet Tclass._module.Composite)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (or (or (or (= $o@@13 this@@3) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@3) _module.Composite.parent)))) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@3) _module.Composite.left)))) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@3) _module.Composite.right))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@13) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |518|
)) (= (_module.Composite.Valid $h0@@0 this@@3 |S#0@@3|) (_module.Composite.Valid $h1@@0 this@@3 |S#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |519|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Composite.Valid $h1@@0 this@@3 |S#0@@3|))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |S#0@@4| () T@U)
(declare-fun |U#0| () T@U)
(declare-fun |c#8@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##S#3@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |child#0| () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |c#6@0| () T@U)
(declare-fun |c#4@0| () T@U)
(declare-fun |c#2@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $LZ () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Composite.Add)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon25_correct true))
(let ((anon33_Else_correct  (=> (and (=> (|Set#IsMember| (|Set#Union| |S#0@@4| |U#0|) ($Box refType |c#8@0|)) (_module.Composite.Valid $Heap@0 |c#8@0| (|Set#Union| |S#0@@4| |U#0|))) (= (ControlFlow 0 4) 1)) anon25_correct)))
(let ((anon33_Then_correct  (=> (|Set#IsMember| (|Set#Union| |S#0@@4| |U#0|) ($Box refType |c#8@0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |c#8@0| null)) (not true))) (=> (or (not (= |c#8@0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |c#8@0|) Tclass._module.Composite? $Heap@0) (= |##S#3@0| (|Set#Union| |S#0@@4| |U#0|))) (=> (and (and ($IsAlloc SetType |##S#3@0| (TSet Tclass._module.Composite) $Heap@0) (|_module.Composite.Valid#canCall| $Heap@0 |c#8@0| (|Set#Union| |S#0@@4| |U#0|))) (and (_module.Composite.Valid $Heap@0 |c#8@0| (|Set#Union| |S#0@@4| |U#0|)) (= (ControlFlow 0 2) 1))) anon25_correct)))))))
(let ((anon22_correct  (=> (forall ((|c#7| T@U) ) (!  (=> ($Is refType |c#7| Tclass._module.Composite) (and (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#7|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#7|) _module.Composite.parent)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#7|) _module.Composite.parent)))) (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#7|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#7|) _module.Composite.val))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#7|) _module.Composite.val)))))))
 :qid |Compositedfy.67:20|
 :skolemid |556|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#7|) _module.Composite.val)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#7|) _module.Composite.val)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#7|) _module.Composite.parent)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#7|) _module.Composite.parent)))
 :pattern ( (|Set#IsMember| |S#0@@4| ($Box refType |c#7|)))
)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |child#0|) _module.Composite.parent)) this@@4) (=> (and ($Is refType |c#8@0| Tclass._module.Composite) ($IsAlloc refType |c#8@0| Tclass._module.Composite $Heap@0)) (and (=> (= (ControlFlow 0 5) 2) anon33_Then_correct) (=> (= (ControlFlow 0 5) 4) anon33_Else_correct)))))))))
(let ((anon32_Else_correct  (=> (and (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#6@0|)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#6@0|) _module.Composite.parent)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#6@0|) _module.Composite.parent))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#6@0|) _module.Composite.val))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#6@0|) _module.Composite.val)))))) (= (ControlFlow 0 14) 5)) anon22_correct)))
(let ((anon32_Then_correct  (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#6@0|)) (and (=> (= (ControlFlow 0 7) (- 0 13)) (or (not (= |c#6@0| null)) (not true))) (=> (or (not (= |c#6@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (not (= |c#6@0| null)) (not true))) (=> (or (not (= |c#6@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 11)) ($IsAlloc refType |c#6@0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |c#6@0| Tclass._module.Composite $Heap@@2) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#6@0|) _module.Composite.parent)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#6@0|) _module.Composite.parent))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (not (= |c#6@0| null)) (not true))) (=> (or (not (= |c#6@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= |c#6@0| null)) (not true))) (=> (or (not (= |c#6@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($IsAlloc refType |c#6@0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |c#6@0| Tclass._module.Composite $Heap@@2) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#6@0|) _module.Composite.val))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#6@0|) _module.Composite.val)))) (= (ControlFlow 0 7) 5)) anon22_correct)))))))))))))))))
(let ((anon19_correct  (=> (and ($Is refType |c#6@0| Tclass._module.Composite) ($IsAlloc refType |c#6@0| Tclass._module.Composite $Heap@0)) (and (=> (= (ControlFlow 0 15) 7) anon32_Then_correct) (=> (= (ControlFlow 0 15) 14) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.right)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.right)))) (= (ControlFlow 0 19) 15)) anon19_correct)))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.right)) null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2) (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.right))) (= (ControlFlow 0 16) 15)) anon19_correct))))))))
(let ((anon30_Else_correct  (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left)))) (and (=> (= (ControlFlow 0 23) 16) anon31_Then_correct) (=> (= (ControlFlow 0 23) 19) anon31_Else_correct)))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left)) null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left))) (and (=> (= (ControlFlow 0 20) 16) anon31_Then_correct) (=> (= (ControlFlow 0 20) 19) anon31_Else_correct))))))))))
(let ((anon13_correct  (=> (forall ((|c#5| T@U) ) (!  (=> ($Is refType |c#5| Tclass._module.Composite) (and (=> (and (|Set#IsMember| |S#0@@4| ($Box refType |c#5|)) (or (not (= |c#5| this@@4)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#5|) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#5|) _module.Composite.left)))) (=> (and (|Set#IsMember| |S#0@@4| ($Box refType |c#5|)) (or (not (= |c#5| this@@4)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#5|) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#5|) _module.Composite.right))))))
 :qid |Compositedfy.64:20|
 :skolemid |555|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#5|) _module.Composite.right)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#5|) _module.Composite.right)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#5|) _module.Composite.left)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#5|) _module.Composite.left)))
 :pattern ( (|Set#IsMember| |S#0@@4| ($Box refType |c#5|)))
)) (and (=> (= (ControlFlow 0 24) 20) anon30_Then_correct) (=> (= (ControlFlow 0 24) 23) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (=> (and (|Set#IsMember| |S#0@@4| ($Box refType |c#4@0|)) (or (not (= |c#4@0| this@@4)) (not true))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#4@0|) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#4@0|) _module.Composite.left))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#4@0|) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#4@0|) _module.Composite.right))))) (= (ControlFlow 0 32) 24)) anon13_correct)))
(let ((anon29_Then_correct  (=> (and (|Set#IsMember| |S#0@@4| ($Box refType |c#4@0|)) (or (not (= |c#4@0| this@@4)) (not true))) (and (=> (= (ControlFlow 0 25) (- 0 31)) (or (not (= |c#4@0| null)) (not true))) (=> (or (not (= |c#4@0| null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 30)) (or (not (= |c#4@0| null)) (not true))) (=> (or (not (= |c#4@0| null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 29)) ($IsAlloc refType |c#4@0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |c#4@0| Tclass._module.Composite $Heap@@2) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#4@0|) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#4@0|) _module.Composite.left))) (and (=> (= (ControlFlow 0 25) (- 0 28)) (or (not (= |c#4@0| null)) (not true))) (=> (or (not (= |c#4@0| null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (or (not (= |c#4@0| null)) (not true))) (=> (or (not (= |c#4@0| null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($IsAlloc refType |c#4@0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |c#4@0| Tclass._module.Composite $Heap@@2) (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#4@0|) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#4@0|) _module.Composite.right))) (= (ControlFlow 0 25) 24)) anon13_correct)))))))))))))))))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 33) (- 0 43)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |child#0|) _module.Composite.parent)) null) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@14) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@14)) (or (|Set#IsMember| |S#0@@4| ($Box refType $o@@14)) (= $o@@14 |child#0|))))
 :qid |Compositedfy.53:10|
 :skolemid |554|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14))
)) ($HeapSucc $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 33) (- 0 42)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 41)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 40)) ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |child#0|) _module.Composite.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |child#0|) _module.Composite.left))) (and (=> (= (ControlFlow 0 33) (- 0 39)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 38)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 37)) ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |child#0|) _module.Composite.right)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |child#0|) _module.Composite.right))) (and (=> (= (ControlFlow 0 33) (- 0 36)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (or (not (= |child#0| null)) (not true))) (=> (or (not (= |child#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 34)) ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2)) (=> ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |child#0|) _module.Composite.val))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |child#0|) _module.Composite.val)))) (=> (and ($Is refType |c#4@0| Tclass._module.Composite) ($IsAlloc refType |c#4@0| Tclass._module.Composite $Heap@0)) (and (=> (= (ControlFlow 0 33) 25) anon29_Then_correct) (=> (= (ControlFlow 0 33) 32) anon29_Else_correct))))))))))))))))))))))))))))))
(let ((anon28_Else_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left)) null)) (not true)) (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.right)) null) (= (ControlFlow 0 45) 33)) anon10_correct))))
(let ((anon28_Then_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Composite.left)) null) (= (ControlFlow 0 44) 33)) anon10_correct)))
(let ((anon7_correct  (=> (and (forall ((|c#3| T@U) ) (!  (=> ($Is refType |c#3| Tclass._module.Composite) (=> (|Set#IsMember| |U#0| ($Box refType |c#3|)) (_module.Composite.Valid $Heap@@2 |c#3| |U#0|)))
 :qid |Compositedfy.57:21|
 :skolemid |553|
 :pattern ( (_module.Composite.Valid $Heap@@2 |c#3| |U#0|))
 :pattern ( (|Set#IsMember| |U#0| ($Box refType |c#3|)))
)) (|Set#Disjoint| |S#0@@4| |U#0|)) (and (=> (= (ControlFlow 0 46) 44) anon28_Then_correct) (=> (= (ControlFlow 0 46) 45) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (=> (|Set#IsMember| |U#0| ($Box refType |c#2@0|)) (_module.Composite.Valid $Heap@@2 |c#2@0| |U#0|)) (= (ControlFlow 0 49) 46)) anon7_correct)))
(let ((anon27_Then_correct  (=> (|Set#IsMember| |U#0| ($Box refType |c#2@0|)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (or (not (= |c#2@0| null)) (not true))) (=> (or (not (= |c#2@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |c#2@0|) Tclass._module.Composite? $Heap@@2) (=> (and (and ($IsAlloc SetType |U#0| (TSet Tclass._module.Composite) $Heap@@2) (|_module.Composite.Valid#canCall| $Heap@@2 |c#2@0| |U#0|)) (and (_module.Composite.Valid $Heap@@2 |c#2@0| |U#0|) (= (ControlFlow 0 47) 46))) anon7_correct)))))))
(let ((anon4_correct  (=> (and (and (forall ((|c#1| T@U) ) (!  (=> ($Is refType |c#1| Tclass._module.Composite) (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#1|)) (_module.Composite.Valid $Heap@@2 |c#1| |S#0@@4|)))
 :qid |Compositedfy.55:21|
 :skolemid |552|
 :pattern ( (_module.Composite.Valid $Heap@@2 |c#1| |S#0@@4|))
 :pattern ( (|Set#IsMember| |S#0@@4| ($Box refType |c#1|)))
)) (|Set#IsMember| |U#0| ($Box refType |child#0|))) (and ($Is refType |c#2@0| Tclass._module.Composite) ($IsAlloc refType |c#2@0| Tclass._module.Composite $Heap@@2))) (and (=> (= (ControlFlow 0 50) 47) anon27_Then_correct) (=> (= (ControlFlow 0 50) 49) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#0@0|)) (_module.Composite.Valid $Heap@@2 |c#0@0| |S#0@@4|)) (= (ControlFlow 0 53) 50)) anon4_correct)))
(let ((anon26_Then_correct  (=> (|Set#IsMember| |S#0@@4| ($Box refType |c#0@0|)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (not (= |c#0@0| null)) (not true))) (=> (or (not (= |c#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |c#0@0|) Tclass._module.Composite? $Heap@@2) (=> (and (and ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Composite) $Heap@@2) (|_module.Composite.Valid#canCall| $Heap@@2 |c#0@0| |S#0@@4|)) (and (_module.Composite.Valid $Heap@@2 |c#0@0| |S#0@@4|) (= (ControlFlow 0 51) 50))) anon4_correct)))))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#7| null $Heap@@2 alloc |S#0@@4| |child#0|)) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))) (and ($IsAllocBox ($Box refType this@@4) Tclass._module.Composite? $Heap@@2) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Composite) $Heap@@2))) (and (and (|_module.Composite.Acyclic#canCall| $Heap@@2 this@@4 |S#0@@4|) (_module.Composite.Acyclic ($LS $LZ) $Heap@@2 this@@4 |S#0@@4|)) (and ($Is refType |c#0@0| Tclass._module.Composite) ($IsAlloc refType |c#0@0| Tclass._module.Composite $Heap@@2)))) (and (=> (= (ControlFlow 0 54) 51) anon26_Then_correct) (=> (= (ControlFlow 0 54) 53) anon26_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Composite) ($IsAlloc refType this@@4 Tclass._module.Composite $Heap@@2)))) (=> (and (and (and ($Is SetType |S#0@@4| (TSet Tclass._module.Composite)) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Composite) $Heap@@2)) (and ($Is refType |child#0| Tclass._module.Composite) ($IsAlloc refType |child#0| Tclass._module.Composite $Heap@@2))) (and (and ($Is SetType |U#0| (TSet Tclass._module.Composite)) ($IsAlloc SetType |U#0| (TSet Tclass._module.Composite) $Heap@@2)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 55) 54)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
