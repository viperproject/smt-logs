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
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
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
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Lifetime.owner () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.elements () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Lifetime.baseFieldsInv (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun |_module.Lifetime.baseFieldsInv#canCall| (T@U T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? class._module.Universe? Tagclass._module.Lifetime? Tagclass._module.OwnedObject? class._module.Lifetime? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime field$content field$owner field$mightPointTo field$mightPointFrom field$elements)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
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
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3490|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3494|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3498|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1))
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
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@6) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2357|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@6))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.Lifetime.owner) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$owner) _module.Lifetime.owner))
(assert ($IsGhostField _module.Lifetime.owner))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert (= (FDim _module.Lifetime.elements) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$elements) _module.Lifetime.elements))
(assert ($IsGhostField _module.Lifetime.elements))
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
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Thread? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Lifetime? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Lifetime? $h@@11))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@12 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@6) Tclass._module.Universe $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1343|
 :pattern ( (_module.Object.universe $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@7) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (_module.Object.universe $o@@7))
))))
(assert (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1903|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.Lifetime.owner)))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@10 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@11 Tclass._module.Thread?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@12 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( ($IsBox bx@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Thread)  (and ($Is refType |c#0@@6| Tclass._module.Thread?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1747|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Lifetime)  (and ($Is refType |c#0@@8| Tclass._module.Lifetime?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2356|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime?))
)))
(assert (forall (($h@@14 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.Lifetime.owner)) Tclass._module.Thread? $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.Lifetime.owner)))
)))
(assert (forall (($o@@10 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@10 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3492|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@11 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@11 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@12 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($h@@15 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1905|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) _module.Lifetime.elements)))
)))
(assert (forall (($h@@16 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@17 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1909|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1906|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) _module.Lifetime.elements)))
)))
(assert (forall (($h@@19 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@20 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@19 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (or (= $o@@19 this) (= $o@@19 (_module.Object.universe this)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@19) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@19) $f)))
 :qid |unknown.0:0|
 :skolemid |1947|
)) (= (_module.Lifetime.baseFieldsInv $h0 this) (_module.Lifetime.baseFieldsInv $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1948|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Lifetime.baseFieldsInv $h1 this))
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
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@14) ($IsAllocBox bx@@14 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@14))
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
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.Thread?) ($Is refType $o@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3491|
 :pattern ( ($Is refType $o@@20 Tclass._module.Thread?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Thread?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3489|
 :pattern ( ($IsBox bx@@16 Tclass._module.Thread?))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> ($Is refType $o@@21 Tclass._module.OwnedObject?) ($Is refType $o@@21 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@21 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.OwnedObject?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3493|
 :pattern ( ($IsBox bx@@17 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.Lifetime?) ($Is refType $o@@22 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@22 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Lifetime?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3497|
 :pattern ( ($IsBox bx@@18 Tclass._module.Lifetime?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass._module.Universe?)  (or (= $o@@23 null) (implements$_module.Universe (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@23 Tclass._module.Universe?))
)))
(assert (forall (($o@@24 T@U) ) (! (= ($Is refType $o@@24 Tclass._module.Object?)  (or (= $o@@24 null) (implements$_module.Object (dtype $o@@24))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@24 Tclass._module.Object?))
)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass._module.OwnedObject?)  (or (= $o@@25 null) (implements$_module.OwnedObject (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@25 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@21 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@26 null)) (not true)) ($Is refType $o@@26 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) _module.Universe.content)) (TSet Tclass._module.Object) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) _module.Universe.content)))
)))
(assert (forall (($h@@22 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@27) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@27) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Lifetime) ($IsAlloc refType this@@0 Tclass._module.Lifetime $Heap)))))) (= (_module.Lifetime.baseFieldsInv $Heap this@@0)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this@@0)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this@@0)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this@@0)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.563:19|
 :skolemid |1951|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap this@@0) ($IsGoodHeap $Heap))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id OverrideCheck$$_module.Lifetime.baseFieldsInvMonotonicity)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon0_correct  (=> (and (and (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)))) (forall (($o@@28 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@28) $f@@0))))
 :qid |_12MutexLifetimeshortdfy.349:124|
 :skolemid |1955|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@0))
))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.owner)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.owner))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@0 this@@1) (or (_module.Lifetime.baseFieldsInv $Heap@@0 this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (forall (($o@@29 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@29) $f@@1))))
 :qid |_12MutexLifetimeshortdfy.569:124|
 :skolemid |1956|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@1))
))) (=> (forall (($o@@30 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@30) $f@@2))))
 :qid |_12MutexLifetimeshortdfy.569:124|
 :skolemid |1956|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@2))
)) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall (($o@@31 T@U) ($f@@3 T@U) ) (! true
 :qid |_12MutexLifetimeshortdfy.569:18|
 :skolemid |1957|
))) (=> (forall (($o@@32 T@U) ($f@@4 T@U) ) (! true
 :qid |_12MutexLifetimeshortdfy.569:18|
 :skolemid |1957|
)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@33 T@U) ($f@@5 T@U) ) (! true
 :qid |_12MutexLifetimeshortdfy.569:18|
 :skolemid |1958|
))) (=> (forall (($o@@34 T@U) ($f@@6 T@U) ) (! true
 :qid |_12MutexLifetimeshortdfy.569:18|
 :skolemid |1958|
)) (=> (_module.Lifetime.baseFieldsInv current$Heap this@@1) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.owner)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.owner))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)))))) (=> (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Lifetime.baseFieldsInv#canCall| current$Heap this@@1) (or (_module.Lifetime.baseFieldsInv current$Heap this@@1) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@1)) _module.Universe.content)))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Lifetime) ($IsAlloc refType this@@1 Tclass._module.Lifetime previous$Heap))) (= 3 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 15) 2))) anon0_correct))))
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
