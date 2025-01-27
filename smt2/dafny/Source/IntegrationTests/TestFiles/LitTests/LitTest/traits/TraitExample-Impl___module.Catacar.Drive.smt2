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
(declare-fun Tagclass._module.Automobile () T@U)
(declare-fun Tagclass._module.Automobile? () T@U)
(declare-fun class._module.Automobile? () T@U)
(declare-fun Tagclass._module.Fiat? () T@U)
(declare-fun Tagclass._module.Fiat () T@U)
(declare-fun class._module.Volvo? () T@U)
(declare-fun Tagclass._module.Volvo? () T@U)
(declare-fun Tagclass._module.Odometer () T@U)
(declare-fun Tagclass._module.Volvo () T@U)
(declare-fun class._module.Odometer? () T@U)
(declare-fun Tagclass._module.Odometer? () T@U)
(declare-fun class._module.Catacar? () T@U)
(declare-fun Tagclass._module.Catacar? () T@U)
(declare-fun Tagclass._module.Catacar () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Automobile () T@U)
(declare-fun tytagFamily$Fiat () T@U)
(declare-fun tytagFamily$Volvo () T@U)
(declare-fun tytagFamily$Odometer () T@U)
(declare-fun tytagFamily$Catacar () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$position () T@U)
(declare-fun field$odometer () T@U)
(declare-fun field$value () T@U)
(declare-fun field$f () T@U)
(declare-fun field$v () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.Automobile (T@U) Bool)
(declare-fun Tclass._module.Fiat? () T@U)
(declare-fun Tclass._module.Volvo? () T@U)
(declare-fun Tclass._module.Catacar? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Odometer? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Automobile.position () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Automobile? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Automobile () T@U)
(declare-fun Tclass._module.Fiat () T@U)
(declare-fun Tclass._module.Volvo () T@U)
(declare-fun Tclass._module.Odometer () T@U)
(declare-fun Tclass._module.Catacar () T@U)
(declare-fun _module.Automobile.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Volvo.odometer () T@U)
(declare-fun _module.Odometer.value () T@U)
(declare-fun _module.Catacar.f () T@U)
(declare-fun _module.Catacar.v () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Catacar.Valid (T@U T@U) Bool)
(declare-fun |_module.Catacar.Valid#canCall| (T@U T@U) Bool)
(declare-fun |_module.Fiat.Valid#canCall| (T@U T@U) Bool)
(declare-fun _module.Fiat.Valid (T@U T@U) Bool)
(declare-fun |_module.Volvo.Valid#canCall| (T@U T@U) Bool)
(declare-fun _module.Volvo.Valid (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Automobile Tagclass._module.Automobile? class._module.Automobile? Tagclass._module.Fiat? Tagclass._module.Fiat class._module.Volvo? Tagclass._module.Volvo? Tagclass._module.Odometer Tagclass._module.Volvo class._module.Odometer? Tagclass._module.Odometer? class._module.Catacar? Tagclass._module.Catacar? Tagclass._module.Catacar tytagFamily$object tytagFamily$Automobile tytagFamily$Fiat tytagFamily$Volvo tytagFamily$Odometer tytagFamily$Catacar field$Repr field$position field$odometer field$value field$f field$v)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (implements$_module.Automobile Tclass._module.Fiat?))
(assert (implements$_module.Automobile Tclass._module.Volvo?))
(assert (implements$_module.Automobile Tclass._module.Catacar?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Fiat?)  (or (= $o null) (= (dtype $o) Tclass._module.Fiat?)))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType $o Tclass._module.Fiat?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Volvo?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Volvo?)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($Is refType $o@@0 Tclass._module.Volvo?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Odometer?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Odometer?)))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Is refType $o@@1 Tclass._module.Odometer?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Catacar?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Catacar?)))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Is refType $o@@2 Tclass._module.Catacar?))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o)  (and (|Set#IsMember| a@@3 o) (not (|Set#IsMember| b@@3 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o))
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
(assert (forall (($h T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.Automobile?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.Automobile.position)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |505|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.Automobile.position)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Fiat? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Automobile? $h@@0))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAllocBox bx Tclass._module.Fiat? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Volvo? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Automobile? $h@@1))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Volvo? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Catacar? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.Automobile? $h@@2))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Catacar? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@3) ($IsAlloc refType |c#0| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Automobile $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Automobile? $h@@4))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Automobile $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Automobile? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Fiat $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.Fiat? $h@@5))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Fiat $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Fiat? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Volvo $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.Volvo? $h@@6))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Volvo $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Volvo? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Odometer $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.Odometer? $h@@7))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Odometer $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Odometer? $h@@7))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Catacar $h@@8) ($IsAlloc refType |c#0@@4| Tclass._module.Catacar? $h@@8))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Catacar $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Catacar? $h@@8))
)))
(assert (= (FDim _module.Automobile.Repr) 0))
(assert (= (FieldOfDecl class._module.Automobile? field$Repr) _module.Automobile.Repr))
(assert ($IsGhostField _module.Automobile.Repr))
(assert (= (FDim _module.Automobile.position) 0))
(assert (= (FieldOfDecl class._module.Automobile? field$position) _module.Automobile.position))
(assert  (not ($IsGhostField _module.Automobile.position)))
(assert (= (FDim _module.Volvo.odometer) 0))
(assert (= (FieldOfDecl class._module.Volvo? field$odometer) _module.Volvo.odometer))
(assert  (not ($IsGhostField _module.Volvo.odometer)))
(assert (= (FDim _module.Odometer.value) 0))
(assert (= (FieldOfDecl class._module.Odometer? field$value) _module.Odometer.value))
(assert  (not ($IsGhostField _module.Odometer.value)))
(assert (= (FDim _module.Catacar.f) 0))
(assert (= (FieldOfDecl class._module.Catacar? field$f) _module.Catacar.f))
(assert  (not ($IsGhostField _module.Catacar.f)))
(assert (= (FDim _module.Catacar.v) 0))
(assert (= (FieldOfDecl class._module.Catacar? field$v) _module.Catacar.v))
(assert  (not ($IsGhostField _module.Catacar.v)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@9))
)))
(assert (forall (($o@@5 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Automobile? $h@@10)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Automobile? $h@@10))
)))
(assert (forall (($o@@6 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Fiat? $h@@11)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Fiat? $h@@11))
)))
(assert (forall (($o@@7 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Volvo? $h@@12)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Volvo? $h@@12))
)))
(assert (forall (($o@@8 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Odometer? $h@@13)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Odometer? $h@@13))
)))
(assert (forall (($o@@9 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.Catacar? $h@@14)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.Catacar? $h@@14))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@4 b@@4) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@1) (|Set#IsMember| b@@4 o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@1))
 :pattern ( (|Set#IsMember| b@@4 o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@4))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@5 b@@5) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@5 o@@2)) (not (|Set#IsMember| b@@5 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@5 b@@5))
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
(assert (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Odometer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Odometer.value)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |616|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Odometer.value)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@16 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Volvo?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.Volvo.odometer)) Tclass._module.Odometer))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |567|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.Volvo.odometer)))
)))
(assert (forall (($h@@17 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.Catacar?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.Catacar.f)) Tclass._module.Fiat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |628|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.Catacar.f)))
)))
(assert (forall (($h@@18 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Catacar?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@13) _module.Catacar.v)) Tclass._module.Volvo))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |630|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@13) _module.Catacar.v)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Automobile) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Automobile)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@6 Tclass._module.Automobile))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Automobile?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Automobile?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@7 Tclass._module.Automobile?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Fiat?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Fiat?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@8 Tclass._module.Fiat?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Fiat) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Fiat)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx@@9 Tclass._module.Fiat))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Volvo?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Volvo?)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsBox bx@@10 Tclass._module.Volvo?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Odometer) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Odometer)))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsBox bx@@11 Tclass._module.Odometer))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Volvo) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Volvo)))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsBox bx@@12 Tclass._module.Volvo))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Odometer?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Odometer?)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($IsBox bx@@13 Tclass._module.Odometer?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Catacar?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Catacar?)))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsBox bx@@14 Tclass._module.Catacar?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Catacar) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Catacar)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsBox bx@@15 Tclass._module.Catacar))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._System.object)  (and ($Is refType |c#0@@5| Tclass._System.object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@5| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@5| Tclass._System.object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Automobile)  (and ($Is refType |c#0@@6| Tclass._module.Automobile?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Automobile))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Automobile?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Fiat)  (and ($Is refType |c#0@@7| Tclass._module.Fiat?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Fiat))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Fiat?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Volvo)  (and ($Is refType |c#0@@8| Tclass._module.Volvo?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Volvo))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Volvo?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Odometer)  (and ($Is refType |c#0@@9| Tclass._module.Odometer?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Odometer))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Odometer?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.Catacar)  (and ($Is refType |c#0@@10| Tclass._module.Catacar?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Catacar))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Catacar?))
)))
(assert (forall (($h@@19 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Volvo?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) _module.Volvo.odometer)) Tclass._module.Odometer $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |568|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@14) _module.Volvo.odometer)))
)))
(assert (forall (($h@@20 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.Catacar?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) _module.Catacar.f)) Tclass._module.Fiat $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@15) _module.Catacar.f)))
)))
(assert (forall (($h@@21 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Catacar?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@16) _module.Catacar.v)) Tclass._module.Volvo $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |631|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@16) _module.Catacar.v)))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@3)  (or (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@3))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@7 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@7 b@@7) a@@7) b@@7) (= (|Set#Difference| (|Set#Union| a@@7 b@@7) b@@7) a@@7)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@7 b@@7))
)))
(assert (forall (($o@@17 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@17 Tclass._module.Fiat? $heap) ($IsAlloc refType $o@@17 Tclass._module.Automobile? $heap))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Fiat? $heap))
)))
(assert (forall (($o@@18 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass._module.Volvo? $heap@@0) ($IsAlloc refType $o@@18 Tclass._module.Automobile? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Volvo? $heap@@0))
)))
(assert (forall (($o@@19 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.Catacar? $heap@@1) ($IsAlloc refType $o@@19 Tclass._module.Automobile? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Catacar? $heap@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Catacar.Valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Catacar) ($IsAlloc refType this Tclass._module.Catacar $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) ($Box refType this)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType this))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr))) (and (|_module.Fiat.Valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) (=> (_module.Fiat.Valid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType this))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr))) (|_module.Volvo.Valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v)))))))))))) (= (_module.Catacar.Valid $Heap this)  (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) ($Box refType this)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType this)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)))) (_module.Fiat.Valid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType this)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)))) (_module.Volvo.Valid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.Repr)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.position))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.f))) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Catacar.v))) _module.Automobile.position)))))))))
 :qid |TraitExampledfy.93:19|
 :skolemid |637|
 :pattern ( (_module.Catacar.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@8 c)) (not true)) (=> (and ($HeapSucc a@@8 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@8 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@8 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 TInt) (and (= ($Box intType ($Unbox intType bx@@16)) bx@@16) ($Is intType ($Unbox intType bx@@16) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@16 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@17) ($IsAllocBox bx@@17 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@17))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@20 T@U) ) (! ($Is refType $o@@20 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@20 Tclass._System.object?))
)))
(assert (forall (($h@@22 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@21 null)) (not true)) ($Is refType $o@@21 Tclass._module.Automobile?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.Automobile.position)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |506|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.Automobile.position)))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@23 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Odometer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Odometer.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |615|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Odometer.value)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Fiat))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@23 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (or (= $o@@23 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.Automobile.Repr)) ($Box refType $o@@23)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@23) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@23) $f)))
 :qid |unknown.0:0|
 :skolemid |518|
)) (= (_module.Fiat.Valid $h0 this@@0) (_module.Fiat.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |520|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Fiat.Valid $h1 this@@0))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Volvo))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@24 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (or (= $o@@24 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@1) _module.Automobile.Repr)) ($Box refType $o@@24)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@24) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@24) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |569|
)) (= (_module.Volvo.Valid $h0@@0 this@@1) (_module.Volvo.Valid $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |571|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Volvo.Valid $h1@@0 this@@1))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Catacar))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@25 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (or (= $o@@25 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@2) _module.Automobile.Repr)) ($Box refType $o@@25)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@25) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@25) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |632|
)) (= (_module.Catacar.Valid $h0@@1 this@@2) (_module.Catacar.Valid $h1@@1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |634|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Catacar.Valid $h1@@1 this@@2))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)) (|Set#Union| a@@9 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)))
)))
(assert (forall ((x@@6 Int) (y@@2 Int) ) (! (= (Mod x@@6 y@@2) (mod x@@6 y@@2))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y@@2))
)))
(assert (forall ((bx@@18 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@18 (TSet t@@5)))
)))
(assert (forall (($o@@26 T@U) ) (!  (=> ($Is refType $o@@26 Tclass._module.Fiat?) ($Is refType $o@@26 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($Is refType $o@@26 Tclass._module.Fiat?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Fiat?) ($IsBox bx@@19 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsBox bx@@19 Tclass._module.Fiat?))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> ($Is refType $o@@27 Tclass._module.Volvo?) ($Is refType $o@@27 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($Is refType $o@@27 Tclass._module.Volvo?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Volvo?) ($IsBox bx@@20 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( ($IsBox bx@@20 Tclass._module.Volvo?))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> ($Is refType $o@@28 Tclass._module.Catacar?) ($Is refType $o@@28 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($Is refType $o@@28 Tclass._module.Catacar?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Catacar?) ($IsBox bx@@21 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsBox bx@@21 Tclass._module.Catacar?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Fiat.Valid#canCall| $Heap@@0 this@@3) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Fiat) ($IsAlloc refType this@@3 Tclass._module.Fiat $Heap@@0)))))) (=> (_module.Fiat.Valid $Heap@@0 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Automobile.Repr)) ($Box refType this@@3))))
 :qid |TraitExampledfy.18:19|
 :skolemid |521|
 :pattern ( (_module.Fiat.Valid $Heap@@0 this@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Volvo.Valid#canCall| $Heap@@1 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Volvo) ($IsAlloc refType this@@4 Tclass._module.Volvo $Heap@@1)))))) (=> (_module.Volvo.Valid $Heap@@1 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.Automobile.Repr)) ($Box refType this@@4))))
 :qid |TraitExampledfy.45:19|
 :skolemid |572|
 :pattern ( (_module.Volvo.Valid $Heap@@1 this@@4))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Catacar.Valid#canCall| $Heap@@2 this@@5) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Catacar) ($IsAlloc refType this@@5 Tclass._module.Catacar $Heap@@2)))))) (=> (_module.Catacar.Valid $Heap@@2 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Automobile.Repr)) ($Box refType this@@5))))
 :qid |TraitExampledfy.93:19|
 :skolemid |635|
 :pattern ( (_module.Catacar.Valid $Heap@@2 this@@5))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Automobile) Tagclass._module.Automobile))
(assert (= (TagFamily Tclass._module.Automobile) tytagFamily$Automobile))
(assert (= (Tag Tclass._module.Automobile?) Tagclass._module.Automobile?))
(assert (= (TagFamily Tclass._module.Automobile?) tytagFamily$Automobile))
(assert (= (Tag Tclass._module.Fiat?) Tagclass._module.Fiat?))
(assert (= (TagFamily Tclass._module.Fiat?) tytagFamily$Fiat))
(assert (= (Tag Tclass._module.Fiat) Tagclass._module.Fiat))
(assert (= (TagFamily Tclass._module.Fiat) tytagFamily$Fiat))
(assert (= (Tag Tclass._module.Volvo?) Tagclass._module.Volvo?))
(assert (= (TagFamily Tclass._module.Volvo?) tytagFamily$Volvo))
(assert (= (Tag Tclass._module.Odometer) Tagclass._module.Odometer))
(assert (= (TagFamily Tclass._module.Odometer) tytagFamily$Odometer))
(assert (= (Tag Tclass._module.Volvo) Tagclass._module.Volvo))
(assert (= (TagFamily Tclass._module.Volvo) tytagFamily$Volvo))
(assert (= (Tag Tclass._module.Odometer?) Tagclass._module.Odometer?))
(assert (= (TagFamily Tclass._module.Odometer?) tytagFamily$Odometer))
(assert (= (Tag Tclass._module.Catacar?) Tagclass._module.Catacar?))
(assert (= (TagFamily Tclass._module.Catacar?) tytagFamily$Catacar))
(assert (= (Tag Tclass._module.Catacar) Tagclass._module.Catacar))
(assert (= (TagFamily Tclass._module.Catacar) tytagFamily$Catacar))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Fiat.Valid#canCall| $Heap@@3 this@@6) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Fiat) ($IsAlloc refType this@@6 Tclass._module.Fiat $Heap@@3)))))) (= (_module.Fiat.Valid $Heap@@3 this@@6)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Automobile.Repr)) ($Box refType this@@6)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Automobile.position))) (LitInt 100)))))
 :qid |TraitExampledfy.18:19|
 :skolemid |523|
 :pattern ( (_module.Fiat.Valid $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Volvo.Valid#canCall| $Heap@@4 this@@7) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Volvo) ($IsAlloc refType this@@7 Tclass._module.Volvo $Heap@@4)))))) (= (_module.Volvo.Valid $Heap@@4 this@@7)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Automobile.Repr)) ($Box refType this@@7)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Volvo.odometer))) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Automobile.position))) (LitInt 10)) (LitInt 0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Automobile.position)))))))
 :qid |TraitExampledfy.45:19|
 :skolemid |574|
 :pattern ( (_module.Volvo.Valid $Heap@@4 this@@7) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.Automobile?)  (or (= $o@@29 null) (implements$_module.Automobile (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType $o@@29 Tclass._module.Automobile?))
)))
(assert (forall (($h@@24 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Automobile?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) _module.Automobile.Repr)) (TSet Tclass._System.object) $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |498|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@30) _module.Automobile.Repr)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@31 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@31 $f@@2))  (=> (and (or (not (= $o@@31 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@31) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@31))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |693|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@31 $f@@2))
)))
(assert (forall (($h@@25 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@32 null)) (not true)) ($Is refType $o@@32 Tclass._module.Automobile?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@32) _module.Automobile.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |497|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@32) _module.Automobile.Repr)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun this@@8 () T@U)
(declare-fun |pos##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call0formal@this@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call0formal@this@0@@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@5 () T@U)
(set-info :boogie-vc-id Impl$$_module.Catacar.Drive)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@5 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Catacar.f))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Catacar.f)) (and (=> (= (ControlFlow 0 2) (- 0 36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f)) null)) (not true)) (=> (= |pos##0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) _module.Automobile.position)))) (=> (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Fiat) ($IsAlloc refType call2formal@this Tclass._module.Fiat $Heap@@5))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (<= |pos##0@0| (LitInt 100))) (=> (<= |pos##0@0| (LitInt 100)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Fiat) ($IsAlloc refType call2formal@this@0 Tclass._module.Fiat $Heap@0))) (|_module.Fiat.Valid#canCall| $Heap@0 call2formal@this@0)) (and (|_module.Fiat.Valid#canCall| $Heap@0 call2formal@this@0) (and (_module.Fiat.Valid $Heap@0 call2formal@this@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.Repr)) ($Box refType call2formal@this@0)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.position))) (LitInt 100)))))) (and (and (and (forall (($o@@33 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@33)) (or (not (= $o@@33 null)) (not true)))
 :qid |TraitExampledfy.26:24|
 :skolemid |531|
 :pattern (  (or (not (= $o@@33 null)) (not true)))
)) (forall (($o@@34 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@34)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@34) alloc)))))
 :qid |TraitExampledfy.26:24|
 :skolemid |532|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@34)))
))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Automobile.position))) |pos##0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 call2formal@this@0) alloc)))))) (and (and (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@35)))
 :qid |TraitExampledfy.24:3|
 :skolemid |533|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@35))
)) ($HeapSucc $Heap@@5 $Heap@0)) (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@8 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@8) _module.Catacar.f ($Box refType call2formal@this@0)))) ($IsGoodHeap $Heap@1))))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@8) _module.Catacar.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@8) _module.Catacar.f)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (forall (($o@@36 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@36) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType $o@@36))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@36 $f@@3)))
 :qid |TraitExampledfy.122:12|
 :skolemid |676|
))) (=> (forall (($o@@37 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@37) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType $o@@37))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@37 $f@@4)))
 :qid |TraitExampledfy.122:12|
 :skolemid |676|
)) (=> (= call0formal@this@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@8) _module.Catacar.f))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (=> (|_module.Fiat.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Fiat.Valid $Heap@1 call0formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0))))) (=> (=> (|_module.Fiat.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Fiat.Valid $Heap@1 call0formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (=> (|_module.Fiat.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Fiat.Valid $Heap@1 call0formal@this@0) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.position))) (LitInt 100))))) (=> (=> (|_module.Fiat.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Fiat.Valid $Heap@1 call0formal@this@0) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.position))) (LitInt 100)))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.Fiat.Valid#canCall| $Heap@2 call0formal@this@0)) (and (|_module.Fiat.Valid#canCall| $Heap@2 call0formal@this@0) (and (_module.Fiat.Valid $Heap@2 call0formal@this@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Automobile.position))) (LitInt 100)))))) (and (and (and (forall (($o@@38 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@38)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@38)))) (or (not (= $o@@38 null)) (not true)))
 :qid |TraitExampledfy.36:24|
 :skolemid |555|
 :pattern (  (or (not (= $o@@38 null)) (not true)))
)) (forall (($o@@39 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@39)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@39)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39) alloc)))))
 :qid |TraitExampledfy.36:24|
 :skolemid |556|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39) alloc)))
))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Automobile.position))))) (and (forall (($o@@40 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@40) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@40) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@40)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Automobile.Repr)) ($Box refType $o@@40))))
 :qid |TraitExampledfy.33:10|
 :skolemid |557|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@40))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@8) _module.Catacar.v)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@8) _module.Catacar.v)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (forall (($o@@41 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@41) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType $o@@41))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@41 $f@@5)))
 :qid |TraitExampledfy.122:24|
 :skolemid |677|
))) (=> (forall (($o@@42 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@42) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType $o@@42))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@42 $f@@6)))
 :qid |TraitExampledfy.122:24|
 :skolemid |677|
)) (=> (= call0formal@this@0@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@8) _module.Catacar.v))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0@@0))))) (=> (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0@@0)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Volvo.odometer))))) (=> (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Volvo.odometer)))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.position))) (LitInt 10)) (LitInt 0))))) (=> (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.position))) (LitInt 10)) (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.position))))))) (=> (=> (|_module.Volvo.Valid#canCall| $Heap@2 call0formal@this@0@@0) (or (_module.Volvo.Valid $Heap@2 call0formal@this@0@@0) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.position)))))) (=> (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.Volvo.Valid#canCall| $Heap@3 call0formal@this@0@@0)) (and (|_module.Volvo.Valid#canCall| $Heap@3 call0formal@this@0@@0) (and (_module.Volvo.Valid $Heap@3 call0formal@this@0@@0) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType call0formal@this@0@@0)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Volvo.odometer))) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.position))) (LitInt 10)) (LitInt 0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.position)))))))) (and (and (and (forall (($o@@43 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType $o@@43)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType $o@@43)))) (or (not (= $o@@43 null)) (not true)))
 :qid |TraitExampledfy.66:24|
 :skolemid |603|
 :pattern (  (or (not (= $o@@43 null)) (not true)))
)) (forall (($o@@44 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType $o@@44)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType $o@@44)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@44) alloc)))))
 :qid |TraitExampledfy.66:24|
 :skolemid |604|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@44) alloc)))
))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) _module.Automobile.position))))) (and (forall (($o@@45 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@45) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@45) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@45)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0@@0) _module.Automobile.Repr)) ($Box refType $o@@45))))
 :qid |TraitExampledfy.63:10|
 :skolemid |605|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@45))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Automobile.Repr))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Automobile.Repr)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.v)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.v)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.f)) null)) (not true)) (=> (= |$rhs#1@0| (|Set#Union| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.v))) _module.Automobile.Repr))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Catacar.f))) _module.Automobile.Repr)))) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@8 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@8) _module.Automobile.Repr ($Box SetType |$rhs#1@0|)))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Automobile.position))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@8 _module.Automobile.position)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.f)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.v)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.v)) null)) (not true)) (=> (= |$rhs#2@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.f))) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Catacar.v))) _module.Automobile.position))))) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 this@@8 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@8) _module.Automobile.position ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType this@@8))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType this@@8)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType this@@8)))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType this@@8))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Fiat.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (or (_module.Fiat.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Fiat.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (or (_module.Fiat.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f)))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Fiat.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (or (_module.Fiat.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.position))) (LitInt 100))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Fiat.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (or (_module.Fiat.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.position))) (LitInt 100)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType this@@8)))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType this@@8))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Volvo.odometer))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Volvo.odometer)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position))) (LitInt 10)) (LitInt 0))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (= (Mod (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position))) (LitInt 10)) (LitInt 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position))))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (=> (|_module.Volvo.Valid#canCall| $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (or (_module.Volvo.Valid $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Volvo.odometer))) _module.Odometer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.position))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position)))))))) (=> (=> (|_module.Catacar.Valid#canCall| $Heap@5 this@@8) (or (_module.Catacar.Valid $Heap@5 this@@8) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.position))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.f))) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Catacar.v))) _module.Automobile.position))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (forall (($o@@46 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@46)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@46)))) (or (not (= $o@@46 null)) (not true)))
 :qid |TraitExampledfy.118:24|
 :skolemid |672|
 :pattern (  (or (not (= $o@@46 null)) (not true)))
)) (forall (($o@@47 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@47)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@47)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@47) alloc)))))
 :qid |TraitExampledfy.118:24|
 :skolemid |673|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@47) alloc)))
)))) (=> (and (forall (($o@@48 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@48)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@48)))) (or (not (= $o@@48 null)) (not true)))
 :qid |TraitExampledfy.118:24|
 :skolemid |672|
 :pattern (  (or (not (= $o@@48 null)) (not true)))
)) (forall (($o@@49 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@49)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) ($Box refType $o@@49)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@49) alloc)))))
 :qid |TraitExampledfy.118:24|
 :skolemid |673|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@49) alloc)))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@8) _module.Automobile.position))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (=> (and (and (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Catacar) ($IsAlloc refType this@@8 Tclass._module.Catacar $Heap@@5))) (= 2 $FunctionContextHeight)) (and (and (|_module.Catacar.Valid#canCall| $Heap@@5 this@@8) (and (_module.Catacar.Valid $Heap@@5 this@@8) (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) ($Box refType this@@8)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Box refType this@@8)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)))) (_module.Fiat.Valid $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Box refType this@@8)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.Repr)))) (_module.Volvo.Valid $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) _module.Automobile.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v))) _module.Automobile.Repr)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Automobile.position))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.f))) _module.Automobile.position))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@8) _module.Catacar.v))) _module.Automobile.position)))))))) (= (ControlFlow 0 38) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
