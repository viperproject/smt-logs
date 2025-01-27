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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$owner () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? class._module.OwnedObject? tytagFamily$Object tytagFamily$OwnedObject field$owner field$nonvolatileVersion)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1434|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1435|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1535|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1536|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@0))
)))
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1424|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2408|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@2))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.OwnedObject) ($IsAlloc refType this@@1 Tclass._module.OwnedObject $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1490|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h0@@1 this@@1) (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h1@@1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1491|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h1@@1 this@@1))
)))
(assert (forall (($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3))
)))
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@4))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@5 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f@@2))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@5) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2428|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Object)  (and ($Is refType |c#0@@1| Tclass._module.Object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@2| Tclass._module.OwnedObject?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@6 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@6 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2410|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@2 T@U) ($Heap T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@2 $Heap this@@2) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@2) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@2 $Heap)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedObject) ($IsAlloc refType this@@2 Tclass._module.OwnedObject $prevHeap@@2)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 this@@2) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@2) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@2 $Heap this@@2)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $Heap this@@2)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 this@@2) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@2) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $Heap this@@2)))))
 :qid |_10SequenceInvariantdfy.312:22|
 :skolemid |1438|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $Heap this@@2) ($IsGoodHeap $Heap))
))))
(assert (forall (($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) _module.OwnedObject.nonvolatileVersion)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1425|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@3 $Heap@@0 this@@3) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@3 $Heap@@0)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.OwnedObject) ($IsAlloc refType this@@3 Tclass._module.OwnedObject $prevHeap@@3)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@3 $Heap@@0 this@@3)))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@3 $Heap@@0 this@@3)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@3 $Heap@@0 this@@3)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@3) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_10SequenceInvariantdfy.338:22|
 :skolemid |1494|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@3 $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.OwnedObject.owner)) Tclass._module.Object $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass._module.OwnedObject?) ($Is refType $o@@9 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($Is refType $o@@9 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1426|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.Object?)  (or (= $o@@11 null) (implements$_module.Object (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Is refType $o@@11 Tclass._module.Object?))
)))
(assert (forall (($o@@12 T@U) ) (! (= ($Is refType $o@@12 Tclass._module.OwnedObject?)  (or (= $o@@12 null) (implements$_module.OwnedObject (dtype $o@@12))))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( ($Is refType $o@@12 Tclass._module.OwnedObject?))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |oldOwner#Z#0@0| () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |newtype$check#0@0| () T@U)
(declare-fun |newtype$check#1@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.OwnedObject.sequenceInv2)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon11_correct  (=> (= (_module.OwnedObject.sequenceInv2 $Heap@@1 current$Heap this@@4)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $Heap@@1 current$Heap this@@4)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |oldOwner#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |oldOwner#1|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion))))))))) (=> (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@1 current$Heap this@@4)))) ($Is boolType (bool_2_U (_module.OwnedObject.sequenceInv2 $Heap@@1 current$Heap this@@4)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#4@1|)))))))))))))
(let ((anon19_Else_correct  (=> (and (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |oldOwner#Z#0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |oldOwner#Z#0@0|) _module.OwnedObject.nonvolatileVersion))))) (not true)) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 12) 3))) anon11_correct)))
(let ((anon19_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |oldOwner#Z#0@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |oldOwner#Z#0@0|) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (=> (and (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 _module.OwnedObject.nonvolatileVersion))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 10) 3))) anon11_correct))))))
(let ((anon18_Then_correct  (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (and (=> (= (ControlFlow 0 13) (- 0 18)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (=> (= |newtype$check#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 13) (- 0 17)) ($Is refType |newtype$check#0@0| Tclass._module.OwnedObject)) (=> ($Is refType |newtype$check#0@0| Tclass._module.OwnedObject) (=> (and (and (= |newtype$check#1@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner))) (= |let#0#0#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner)))) (and ($Is refType |let#0#0#0| Tclass._module.OwnedObject) (= |oldOwner#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (not (= |oldOwner#Z#0@0| null)) (not true))) (=> (or (not (= |oldOwner#Z#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 15)) ($IsAlloc refType |oldOwner#Z#0@0| Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType |oldOwner#Z#0@0| Tclass._module.OwnedObject $Heap@@1) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |oldOwner#Z#0@0| null)) (not true))) (=> (or (not (= |oldOwner#Z#0@0| null)) (not true)) (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |oldOwner#Z#0@0| _module.OwnedObject.nonvolatileVersion))) (and (=> (= (ControlFlow 0 13) 10) anon19_Then_correct) (=> (= (ControlFlow 0 13) 12) anon19_Else_correct))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (and (not ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.owner)) Tclass._module.OwnedObject)) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 9) 3))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $Heap@@1 current$Heap this@@4)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (and (=> (= (ControlFlow 0 19) 13) anon18_Then_correct) (=> (= (ControlFlow 0 19) 9) anon18_Else_correct)))))))
(let ((anon17_Else_correct  (=> (and (and (not (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $Heap@@1 current$Heap this@@4))))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 8) 3))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 25) 19) anon17_Then_correct) (=> (= (ControlFlow 0 25) 8) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) ($IsAllocBox ($Box refType this@@4) Tclass._module.OwnedObject? current$Heap)) (and (=> (= (ControlFlow 0 23) (- 0 24)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (=> (and (and (= |b$reqreads#2@0| (forall (($o@@13 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@13) alloc)))) (= $o@@13 this@@4)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@13 $f@@3)))
 :qid |_10SequenceInvariantdfy.343:10|
 :skolemid |1496|
))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@1 current$Heap this@@4)) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|))) (and (=> (= (ControlFlow 0 23) 19) anon17_Then_correct) (=> (= (ControlFlow 0 23) 8) anon17_Else_correct))))))))
(let ((anon15_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 26) 23) anon16_Then_correct) (=> (= (ControlFlow 0 26) 25) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion))))) (not true)) (=> (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 22) 19) anon17_Then_correct) (=> (= (ControlFlow 0 22) 8) anon17_Else_correct))))))
(let ((anon14_Then_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 _module.OwnedObject.nonvolatileVersion))) (and (=> (= (ControlFlow 0 27) 26) anon15_Then_correct) (=> (= (ControlFlow 0 27) 22) anon15_Else_correct))))))))
(let ((anon14_Else_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@4) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.OwnedObject.nonvolatileVersion)))) (=> (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 21) 19) anon17_Then_correct) (=> (= (ControlFlow 0 21) 8) anon17_Else_correct))))))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1)) (=> ($IsAlloc refType this@@4 Tclass._module.OwnedObject $Heap@@1) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 _module.OwnedObject.nonvolatileVersion))) (and (=> (= (ControlFlow 0 29) 27) anon14_Then_correct) (=> (= (ControlFlow 0 29) 21) anon14_Else_correct)))))))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 31) 1) anon13_Then_correct) (=> (= (ControlFlow 0 31) 29) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.OwnedObject) ($IsAlloc refType this@@4 Tclass._module.OwnedObject previous$Heap))) (= 3 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@1) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 32) 31))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
