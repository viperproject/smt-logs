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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun Tagclass._module.Remaining? () T@U)
(declare-fun Tagclass._module.Remaining () T@U)
(declare-fun class._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$Remaining () T@U)
(declare-fun tytagFamily$IncrementerMethod () T@U)
(declare-fun field$programCounter () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$remaining () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
(declare-fun field$i () T@U)
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
(declare-fun _module.IncrementerMethod.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.IncrementerMethod () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun _module.IncrementerMethod.programCounter () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun _module.IncrementerMethod.initial__value () T@U)
(declare-fun _module.IncrementerMethod.final__value () T@U)
(declare-fun _module.IncrementerMethod.i () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.OwnedObject Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
)
(assert (= (FDim alloc) 0))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.IncrementerMethod))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |2136|
)) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap $h0 this) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2138|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap $h1 this))
)))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.AtomicCounter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType $o@@0 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Remaining?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($Is refType $o@@1 Tclass._module.Remaining?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.IncrementerMethod?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($Is refType $o@@2 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3529|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3533|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3537|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Remaining $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.Remaining? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Remaining $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Remaining? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncrementerMethod $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.IncrementerMethod? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3515|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncrementerMethod $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncrementerMethod? $h@@7))
)))
(assert (= (FDim _module.IncrementerMethod.programCounter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$programCounter) _module.IncrementerMethod.programCounter))
(assert  (not ($IsGhostField _module.IncrementerMethod.programCounter)))
(assert (= (FDim _module.IncrementerMethod.counter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$counter) _module.IncrementerMethod.counter))
(assert  (not ($IsGhostField _module.IncrementerMethod.counter)))
(assert (= (FDim _module.IncrementerMethod.remaining) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$remaining) _module.IncrementerMethod.remaining))
(assert  (not ($IsGhostField _module.IncrementerMethod.remaining)))
(assert (= (FDim _module.IncrementerMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$initial_value) _module.IncrementerMethod.initial__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.initial__value)))
(assert (= (FDim _module.IncrementerMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$final_value) _module.IncrementerMethod.final__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.final__value)))
(assert (= (FDim _module.IncrementerMethod.i) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$i) _module.IncrementerMethod.i))
(assert  (not ($IsGhostField _module.IncrementerMethod.i)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall (($o@@5 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $h@@10)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $h@@10))
)))
(assert (forall (($o@@6 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Remaining? $h@@11)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Remaining? $h@@11))
)))
(assert (forall (($o@@7 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.IncrementerMethod? $h@@12)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.IncrementerMethod? $h@@12))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.IncrementerMethod.programCounter)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2125|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@14 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.IncrementerMethod.initial__value)) TInt $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2131|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.IncrementerMethod.final__value)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2133|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@16 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.IncrementerMethod.i)) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2135|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.IncrementerMethod.i)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall (($h@@17 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2126|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@18 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@13) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2128|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@13) _module.IncrementerMethod.remaining)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@5| Tclass._module.OwnedObject?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@6| Tclass._module.AtomicCounter?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Remaining)  (and ($Is refType |c#0@@7| Tclass._module.Remaining?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@8| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3514|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@19 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2127|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@20 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2129|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) _module.IncrementerMethod.remaining)))
)))
(assert (forall (($o@@16 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@16 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@17 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@17 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@17 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3531|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@18 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass._module.Remaining? $heap@@1) ($IsAlloc refType $o@@18 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3535|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Remaining? $heap@@1))
)))
(assert (forall (($o@@19 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.IncrementerMethod? $heap@@2) ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3539|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.IncrementerMethod? $heap@@2))
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
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall (($h@@21 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@20) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2124|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@20) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@22 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2130|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@23 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2132|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@24 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2134|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) _module.IncrementerMethod.i)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@24 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f@@0))  (=> (and (or (not (= $o@@24 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@24) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3540|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f@@0))
)))
(assert (forall (($o@@25 T@U) ) (!  (=> ($Is refType $o@@25 Tclass._module.OwnedObject?) ($Is refType $o@@25 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@25 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@26 T@U) ) (!  (=> ($Is refType $o@@26 Tclass._module.AtomicCounter?) ($Is refType $o@@26 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($Is refType $o@@26 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> ($Is refType $o@@27 Tclass._module.Remaining?) ($Is refType $o@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3534|
 :pattern ( ($Is refType $o@@27 Tclass._module.Remaining?))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> ($Is refType $o@@28 Tclass._module.IncrementerMethod?) ($Is refType $o@@28 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3538|
 :pattern ( ($Is refType $o@@28 Tclass._module.IncrementerMethod?))
)))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.AtomicCounter?) Tagclass._module.AtomicCounter?))
(assert (= (TagFamily Tclass._module.AtomicCounter?) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.AtomicCounter) Tagclass._module.AtomicCounter))
(assert (= (TagFamily Tclass._module.AtomicCounter) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.Remaining?) Tagclass._module.Remaining?))
(assert (= (TagFamily Tclass._module.Remaining?) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.Remaining) Tagclass._module.Remaining))
(assert (= (TagFamily Tclass._module.Remaining) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.IncrementerMethod?) Tagclass._module.IncrementerMethod?))
(assert (= (TagFamily Tclass._module.IncrementerMethod?) tytagFamily$IncrementerMethod))
(assert (= (Tag Tclass._module.IncrementerMethod) Tagclass._module.IncrementerMethod))
(assert (= (TagFamily Tclass._module.IncrementerMethod) tytagFamily$IncrementerMethod))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@0 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@0 Tclass._module.IncrementerMethod $prevHeap@@0)))))) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0)  (and (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.remaining)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.final__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.IncrementerMethod.i)))))))
 :qid |_07CounterThreadOwnershipdfy.640:22|
 :skolemid |2141|
 :pattern ( (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.Object?)  (or (= $o@@29 null) (implements$_module.Object (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@29 Tclass._module.Object?))
)))
(assert (forall (($o@@30 T@U) ) (! (= ($Is refType $o@@30 Tclass._module.OwnedObject?)  (or (= $o@@30 null) (implements$_module.OwnedObject (dtype $o@@30))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@30 Tclass._module.OwnedObject?))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.IncrementerMethod.ProveUnchangedNonvolatileUserFields)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@1 Tclass._module.IncrementerMethod $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.IncrementerMethod $Heap@@0) (=> (forall (($o@@31 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@31) $f@@1))))
 :qid |_07CounterThreadOwnershipdfy.648:65|
 :skolemid |2144|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@1))
)) (=> (and ($IsAllocBox ($Box refType this@@1) Tclass._module.IncrementerMethod? current$Heap) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@1 Tclass._module.IncrementerMethod $Heap@@0))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@1 Tclass._module.IncrementerMethod previous$Heap))) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
