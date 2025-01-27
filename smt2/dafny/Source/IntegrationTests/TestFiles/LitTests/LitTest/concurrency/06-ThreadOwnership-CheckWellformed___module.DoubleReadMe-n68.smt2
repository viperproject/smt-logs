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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun class._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod? () T@U)
(declare-fun Tagclass._module.DoubleReadMethod () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$DoubleReadMethod () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
(declare-fun field$programCounter () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
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
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.DoubleReadMethod? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.DoubleReadMethod.localUserInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.DoubleReadMethod.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.DoubleReadMethod () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.DoubleReadMethod.counter () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.DoubleReadMethod.programCounter () T@U)
(declare-fun _module.DoubleReadMethod.initial__value () T@U)
(declare-fun _module.AtomicCounter.value () T@U)
(declare-fun _module.DoubleReadMethod.final__value () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.DoubleReadMethod.userInv (T@U T@U) Bool)
(declare-fun |_module.DoubleReadMethod.userInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName Tagclass._module.OwnedObject Tagclass._module.Object Tagclass._module.Object? class._module.OwnedObject? Tagclass._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod? Tagclass._module.DoubleReadMethod tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$DoubleReadMethod field$owner field$value field$programCounter field$counter field$initial_value field$final_value)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.DoubleReadMethod?))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.DoubleReadMethod.localUserInv#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.DoubleReadMethod) ($IsAlloc refType this Tclass._module.DoubleReadMethod $Heap)))))) (= (_module.DoubleReadMethod.localUserInv $Heap this)  (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.counter))) _module.OwnedObject.owner)) this) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.programCounter))) (LitInt 4)))) (=> (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.programCounter)))) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))))))
 :qid |_06ThreadOwnershipdfy.367:19|
 :skolemid |1737|
 :pattern ( (_module.DoubleReadMethod.localUserInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.AtomicCounter?)  (or (= $o null) (= (dtype $o) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.DoubleReadMethod?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.DoubleReadMethod?)))
 :qid |unknown.0:0|
 :skolemid |1701|
 :pattern ( ($Is refType $o@@0 Tclass._module.DoubleReadMethod?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.DoubleReadMethod? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.DoubleReadMethod? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.DoubleReadMethod $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.DoubleReadMethod? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.DoubleReadMethod $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.DoubleReadMethod? $h@@5))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.AtomicCounter.value) 0))
(assert (= (FieldOfDecl class._module.AtomicCounter? field$value) _module.AtomicCounter.value))
(assert  (not ($IsGhostField _module.AtomicCounter.value)))
(assert (= (FDim _module.DoubleReadMethod.programCounter) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$programCounter) _module.DoubleReadMethod.programCounter))
(assert  (not ($IsGhostField _module.DoubleReadMethod.programCounter)))
(assert (= (FDim _module.DoubleReadMethod.counter) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$counter) _module.DoubleReadMethod.counter))
(assert  (not ($IsGhostField _module.DoubleReadMethod.counter)))
(assert (= (FDim _module.DoubleReadMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$initial_value) _module.DoubleReadMethod.initial__value))
(assert  (not ($IsGhostField _module.DoubleReadMethod.initial__value)))
(assert (= (FDim _module.DoubleReadMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.DoubleReadMethod? field$final_value) _module.DoubleReadMethod.final__value))
(assert  (not ($IsGhostField _module.DoubleReadMethod.final__value)))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.OwnedObject? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.OwnedObject? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.AtomicCounter? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.AtomicCounter? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.DoubleReadMethod? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1702|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.DoubleReadMethod? $h@@9))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@5) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2086|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@10 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) _module.AtomicCounter.value)) TInt $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@11 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) _module.DoubleReadMethod.programCounter)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1704|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) _module.DoubleReadMethod.programCounter)))
)))
(assert (forall (($h@@12 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.DoubleReadMethod.initial__value)) TInt $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1708|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.DoubleReadMethod.initial__value)))
)))
(assert (forall (($h@@13 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) _module.DoubleReadMethod.final__value)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1710|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) _module.DoubleReadMethod.final__value)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall (($h@@14 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.DoubleReadMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@10) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@10) _module.DoubleReadMethod.counter)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@5| Tclass._module.AtomicCounter?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.DoubleReadMethod)  (and ($Is refType |c#0@@6| Tclass._module.DoubleReadMethod?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.DoubleReadMethod))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.DoubleReadMethod?))
)))
(assert (forall (($h@@15 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.DoubleReadMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@11) _module.DoubleReadMethod.counter)) Tclass._module.AtomicCounter $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1706|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@11) _module.DoubleReadMethod.counter)))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@14 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.DoubleReadMethod? $heap@@1) ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.DoubleReadMethod? $heap@@1))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@0 Tclass._module.DoubleReadMethod $Heap@@0)))))) (=> (_module.DoubleReadMethod.userInv $Heap@@0 this@@0) (_module.DoubleReadMethod.localUserInv $Heap@@0 this@@0)))
 :qid |_06ThreadOwnershipdfy.376:19|
 :skolemid |1742|
 :pattern ( (_module.DoubleReadMethod.userInv $Heap@@0 this@@0))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@17 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) _module.DoubleReadMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1703|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) _module.DoubleReadMethod.programCounter)))
)))
(assert (forall (($h@@18 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) _module.DoubleReadMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1707|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) _module.DoubleReadMethod.initial__value)))
)))
(assert (forall (($h@@19 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.DoubleReadMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@18) _module.DoubleReadMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1709|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@18) _module.DoubleReadMethod.final__value)))
)))
(assert (forall (($h@@20 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@19) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@19) _module.OwnedObject.owner)) Tclass._module.Object $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |869|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@19) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.OwnedObject?) ($Is refType $o@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@20 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> ($Is refType $o@@21 Tclass._module.AtomicCounter?) ($Is refType $o@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($Is refType $o@@21 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.DoubleReadMethod?) ($Is refType $o@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($Is refType $o@@22 Tclass._module.DoubleReadMethod?))
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
(assert (= (Tag Tclass._module.DoubleReadMethod?) Tagclass._module.DoubleReadMethod?))
(assert (= (TagFamily Tclass._module.DoubleReadMethod?) tytagFamily$DoubleReadMethod))
(assert (= (Tag Tclass._module.DoubleReadMethod) Tagclass._module.DoubleReadMethod))
(assert (= (TagFamily Tclass._module.DoubleReadMethod) tytagFamily$DoubleReadMethod))
(assert (forall (($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) ($Is refType $o@@23 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |868|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@24 T@U) ) (! (= ($Is refType $o@@24 Tclass._module.Object?)  (or (= $o@@24 null) (implements$_module.Object (dtype $o@@24))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o@@24 Tclass._module.Object?))
)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass._module.OwnedObject?)  (or (= $o@@25 null) (implements$_module.OwnedObject (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( ($Is refType $o@@25 Tclass._module.OwnedObject?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.DoubleReadMethod.userInv#canCall| $Heap@@1 this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@1 Tclass._module.DoubleReadMethod $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@1 this@@1)) (= (_module.DoubleReadMethod.userInv $Heap@@1 this@@1)  (and true (_module.DoubleReadMethod.localUserInv $Heap@@1 this@@1)))))
 :qid |_06ThreadOwnershipdfy.376:19|
 :skolemid |1744|
 :pattern ( (_module.DoubleReadMethod.userInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is boolType v@@3 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@3 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun SetType () T@T)
(declare-fun $IsHeapAnchor (T@U) Bool)
(assert (= (Ctor SetType) 7))
(set-info :boogie-vc-id CheckWellformed$$_module.DoubleReadMethod.userInv)
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
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.counter))) _module.OwnedObject.owner)) this@@2))))) (=> (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.counter))) _module.OwnedObject.owner)) this@@2)))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))))))) (=> (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter))))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter))) (LitInt 4)))))) (=> (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter))) (LitInt 4))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (=> (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value))))))))) (=> (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (=> (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.final__value))))))))) (=> (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.final__value)))))))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (=> (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2) (or (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.DoubleReadMethod.counter))) _module.AtomicCounter.value)))))))))))))))))))))
(let ((anon8_correct  (=> (= (_module.DoubleReadMethod.userInv $Heap@@2 this@@2)  (and true (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2))) (=> (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2)) ($Is boolType (bool_2_U (_module.DoubleReadMethod.userInv $Heap@@2 this@@2)) TBool)) (and (=> (= (ControlFlow 0 12) (- 0 13)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (=> (= (ControlFlow 0 12) 6) GeneratedUnifiedExit_correct)))))))
(let ((anon12_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 15) 12)) anon8_correct))))
(let ((anon12_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) ($IsAllocBox ($Box refType this@@2) Tclass._module.DoubleReadMethod? $Heap@@2)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@26 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@26) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@26) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@26 $f@@0)))
 :qid |_06ThreadOwnershipdfy.377:8|
 :skolemid |1746|
))) (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 14) 12))) anon8_correct))))
(let ((anon5_correct true))
(let ((anon11_Else_correct  (=> (and (=> (_module.DoubleReadMethod.userInv $Heap@@2 this@@2) (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2)) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon11_Then_correct  (=> ($IsAllocBox ($Box refType this@@2) Tclass._module.DoubleReadMethod? $Heap@@2) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@2 this@@2) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@2 this@@2) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (and (or (= this@@2 this@@2) (|_module.DoubleReadMethod.userInv#canCall| $Heap@@2 this@@2)) (_module.DoubleReadMethod.userInv $Heap@@2 this@@2)) (=> (and (and ($IsAllocBox ($Box refType this@@2) Tclass._module.DoubleReadMethod? $Heap@@2) (|_module.DoubleReadMethod.localUserInv#canCall| $Heap@@2 this@@2)) (and (_module.DoubleReadMethod.localUserInv $Heap@@2 this@@2) (= (ControlFlow 0 2) 1))) anon5_correct)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null $Heap@@2 alloc $Heap@@2 alloc)) (and (and (and (=> (= (ControlFlow 0 16) 14) anon12_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Else_correct)) (=> (= (ControlFlow 0 16) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 16) 4) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.DoubleReadMethod) ($IsAlloc refType this@@2 Tclass._module.DoubleReadMethod $Heap@@2))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
