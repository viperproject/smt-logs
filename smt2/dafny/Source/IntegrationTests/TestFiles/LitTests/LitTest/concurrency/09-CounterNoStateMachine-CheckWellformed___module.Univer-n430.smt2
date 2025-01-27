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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$nonvolatileVersion () T@U)
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
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.Universe? class._module.OwnedObject? tytagFamily$Universe tytagFamily$Object tytagFamily$OwnedObject field$content field$nonvolatileVersion)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) ($Is refType $o Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
)))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |688|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap $h0 this) (_module.Universe.baseLegalTransitionsSequence $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |689|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.baseLegalTransitionsSequence $prevHeap $h1 this))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1248|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@6))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f@@0))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@4) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3222|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f@@0))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@5 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@5 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $heap))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.OwnedObject.nonvolatileVersion)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1689|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.OwnedObject?) ($Is refType $o@@7 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@7 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject?) ($IsBox bx@@12 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Universe?)  (or (= $o@@8 null) (implements$_module.Universe (dtype $o@@8))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($Is refType $o@@8 Tclass._module.Universe?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Object?)  (or (= $o@@9 null) (implements$_module.Object (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($Is refType $o@@9 Tclass._module.Object?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.OwnedObject?)  (or (= $o@@10 null) (implements$_module.OwnedObject (dtype $o@@10))))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($Is refType $o@@10 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) _module.Universe.content)) (TSet Tclass._module.Object) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |647|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) _module.Universe.content)))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@0 $Heap this@@0) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $prevHeap@@0)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@0)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |692|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1|))) (or (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (= $o@@13 |o#1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@13) $f@@1))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |693|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) $f@@1))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |694|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1|)))
)))))
 :qid |_09CounterNoStateMachinedfy.52:22|
 :skolemid |697|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@3| () Bool)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |o#3@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#1@2| () Bool)
(declare-fun |o#2@0| () T@U)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Universe.baseLegalTransitionsSequence)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon16_correct  (=> (and (= (_module.Universe.baseLegalTransitionsSequence $Heap@@0 current$Heap this@@1)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content))) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4|)))) (not ($IsAllocBox ($Box refType |o#4|) Tclass._module.Object $Heap@@0)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |704|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4|)))
))) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#5|))) (or (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 |o#5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@14) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@14) $f@@2))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |705|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@14) $f@@2))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |o#5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#5|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |706|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |o#5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#5|)))
)))) ($Is boolType (bool_2_U (_module.Universe.baseLegalTransitionsSequence $Heap@@0 current$Heap this@@1)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#1@3|) (=> |b$reqreads#1@3| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#2@2|) (=> |b$reqreads#2@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#3@2|))))))))))
(let ((anon15_correct  (=> (= |b$reqreads#3@2| |b$reqreads#3@1|) (=> (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 8) 3)) anon16_correct))))
(let ((anon26_Else_correct  (=> (and (and (forall (($o@@15 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |o#3@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@15) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@15) $f@@3))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |699|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@15) $f@@3))
)) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 15) 8))) anon15_correct)))
(let ((anon26_Then_correct  (=> (not (forall (($o@@16 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@16 null)) (not true)) (=> (= $o@@16 |o#3@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@16) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@16) $f@@4))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |699|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@16) $f@@4))
))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |o#3@0| null)) (not true))) (=> (or (not (= |o#3@0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 13)) ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject $Heap@@0)) (=> ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject $Heap@@0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |o#3@0| null)) (not true))) (=> (or (not (= |o#3@0| null)) (not true)) (=> (and (and (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |o#3@0| _module.OwnedObject.nonvolatileVersion))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 11) 8))) anon15_correct))))))))))
(let ((anon25_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#3@0|)) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject $Heap@@0)) (=> ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject $Heap@@0) (=> (= |b$reqreads#2@0| (forall (($o@@17 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@17) alloc)))) (= $o@@17 |o#3@0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@17 $f@@5)))
 :qid |_09CounterNoStateMachinedfy.60:64|
 :skolemid |698|
))) (and (=> (= (ControlFlow 0 16) 11) anon26_Then_correct) (=> (= (ControlFlow 0 16) 15) anon26_Else_correct))))))))
(let ((anon25_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#3@0|))) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 10) 8))) anon15_correct)))
(let ((anon24_Then_correct  (=> (and ($Is refType |o#3@0| Tclass._module.OwnedObject) ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject current$Heap)) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0) (and (=> (= (ControlFlow 0 18) 16) anon25_Then_correct) (=> (= (ControlFlow 0 18) 10) anon25_Else_correct)))))))
(let ((anon24_Else_correct  (=> (and (and (not (and ($Is refType |o#3@0| Tclass._module.OwnedObject) ($IsAlloc refType |o#3@0| Tclass._module.OwnedObject current$Heap))) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 9) 8))) anon15_correct)))
(let ((anon23_Then_correct  (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content))) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4@@0|)))) (not ($IsAllocBox ($Box refType |o#4@@0|) Tclass._module.Object $Heap@@0)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4@@0|)))
))) (and (=> (= (ControlFlow 0 20) 18) anon24_Then_correct) (=> (= (ControlFlow 0 20) 9) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (and (not (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content))) (forall ((|o#4@@1| T@U) ) (!  (=> (and ($Is refType |o#4@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4@@1|)))) (not ($IsAllocBox ($Box refType |o#4@@1|) Tclass._module.Object $Heap@@0)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#4@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#4@@1|)))
)))) (= |b$reqreads#3@2| true)) (and (= |b$reqreads#2@2| true) (= (ControlFlow 0 7) 3))) anon16_correct)))
(let ((anon9_correct  (=> (= |b$reqreads#1@3| |b$reqreads#1@2|) (and (=> (= (ControlFlow 0 22) 20) anon23_Then_correct) (=> (= (ControlFlow 0 22) 7) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#2@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#2@0|)))) (=> (and (= |b$reqreads#1@2| |b$reqreads#1@1|) (= (ControlFlow 0 25) 22)) anon9_correct))))
(let ((anon22_Then_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#2@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)) ($Box refType |o#2@0|))) (and (= |b$reqreads#1@2| |b$reqreads#1@1|) (= (ControlFlow 0 24) 22))) anon9_correct)))
(let ((anon21_Else_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#2@0|)) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 27) 24) anon22_Then_correct) (=> (= (ControlFlow 0 27) 25) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#2@0|))) (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Universe.content))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 26) 24) anon22_Then_correct) (=> (= (ControlFlow 0 26) 25) anon22_Else_correct))))))
(let ((anon20_Then_correct  (=> (and ($Is refType |o#2@0| Tclass._module.Object) ($IsAlloc refType |o#2@0| Tclass._module.Object current$Heap)) (and (=> (= (ControlFlow 0 28) (- 0 29)) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0) (and (=> (= (ControlFlow 0 28) 26) anon21_Then_correct) (=> (= (ControlFlow 0 28) 27) anon21_Else_correct)))))))
(let ((anon20_Else_correct  (=> (not (and ($Is refType |o#2@0| Tclass._module.Object) ($IsAlloc refType |o#2@0| Tclass._module.Object current$Heap))) (=> (and (= |b$reqreads#1@2| true) (= (ControlFlow 0 23) 22)) anon9_correct))))
(let ((anon19_Then_correct  (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content))) (and (=> (= (ControlFlow 0 30) 28) anon20_Then_correct) (=> (= (ControlFlow 0 30) 23) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@1) _module.Universe.content)))) (= |b$reqreads#1@3| true)) (and (=> (= (ControlFlow 0 21) 20) anon23_Then_correct) (=> (= (ControlFlow 0 21) 7) anon23_Else_correct)))))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Universe.content))) (and (=> (= (ControlFlow 0 31) 30) anon19_Then_correct) (=> (= (ControlFlow 0 31) 21) anon19_Else_correct)))))))
(let ((anon18_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 33) 1) anon18_Then_correct) (=> (= (ControlFlow 0 33) 31) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe previous$Heap))) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 34) 33))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
