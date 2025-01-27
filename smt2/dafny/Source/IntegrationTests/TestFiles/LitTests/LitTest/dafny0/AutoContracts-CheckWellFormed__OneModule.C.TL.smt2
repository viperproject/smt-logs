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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun class.OneModule.D? () T@U)
(declare-fun Tagclass.OneModule.D? () T@U)
(declare-fun Tagclass.OneModule.D () T@U)
(declare-fun class.OneModule.C? () T@U)
(declare-fun Tagclass.OneModule.C? () T@U)
(declare-fun Tagclass.OneModule.C () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$D () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$data () T@U)
(declare-fun field$anotherC () T@U)
(declare-fun field$dd () T@U)
(declare-fun field$arr () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun OneModule.D.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |OneModule.D.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.OneModule.D () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun OneModule.D.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun Tclass.OneModule.D? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.OneModule.C? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.OneModule.C () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun OneModule.C.Repr () T@U)
(declare-fun OneModule.C.data () T@U)
(declare-fun OneModule.C.anotherC () T@U)
(declare-fun OneModule.C.dd () T@U)
(declare-fun OneModule.C.arr () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun OneModule.C.Valid (T@U T@U) Bool)
(declare-fun |OneModule.C.Valid#canCall| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array class.OneModule.D? Tagclass.OneModule.D? Tagclass.OneModule.D class.OneModule.C? Tagclass.OneModule.C? Tagclass.OneModule.C tytagFamily$object tytagFamily$array tytagFamily$D tytagFamily$C field$Repr field$data field$anotherC field$dd field$arr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|OneModule.D.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.OneModule.D) ($IsAlloc refType this Tclass.OneModule.D $Heap)))))) (= (OneModule.D.Valid $Heap this)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) OneModule.D.Repr)) ($Box refType this)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) OneModule.D.Repr)) ($Box refType null)))) true)))
 :qid |AutoContractsdfy.5:26|
 :skolemid |489|
 :pattern ( (OneModule.D.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.OneModule.D?)  (or (= $o null) (= (dtype $o) Tclass.OneModule.D?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o Tclass.OneModule.D?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.OneModule.C?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.OneModule.C?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Is refType $o@@0 Tclass.OneModule.C?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.OneModule.D $h@@1) ($IsAlloc refType |c#0@@1| Tclass.OneModule.D? $h@@1))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.OneModule.D $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.OneModule.D? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.OneModule.C $h@@2) ($IsAlloc refType |c#0@@2| Tclass.OneModule.C? $h@@2))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.OneModule.C $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.OneModule.C? $h@@2))
)))
(assert (= (FDim OneModule.D.Repr) 0))
(assert (= (FieldOfDecl class.OneModule.D? field$Repr) OneModule.D.Repr))
(assert ($IsGhostField OneModule.D.Repr))
(assert (= (FDim OneModule.C.Repr) 0))
(assert (= (FieldOfDecl class.OneModule.C? field$Repr) OneModule.C.Repr))
(assert ($IsGhostField OneModule.C.Repr))
(assert (forall ((_System.array$arg@@0 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@0) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@0) $h@@3))
)))
(assert (= (FDim OneModule.C.data) 0))
(assert (= (FieldOfDecl class.OneModule.C? field$data) OneModule.C.data))
(assert  (not ($IsGhostField OneModule.C.data)))
(assert (= (FDim OneModule.C.anotherC) 0))
(assert (= (FieldOfDecl class.OneModule.C? field$anotherC) OneModule.C.anotherC))
(assert  (not ($IsGhostField OneModule.C.anotherC)))
(assert (= (FDim OneModule.C.dd) 0))
(assert (= (FieldOfDecl class.OneModule.C? field$dd) OneModule.C.dd))
(assert  (not ($IsGhostField OneModule.C.dd)))
(assert (= (FDim OneModule.C.arr) 0))
(assert (= (FieldOfDecl class.OneModule.C? field$arr) OneModule.C.arr))
(assert  (not ($IsGhostField OneModule.C.arr)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.OneModule.D? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.OneModule.D? $h@@5))
)))
(assert (forall (($o@@4 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.OneModule.C? $h@@6)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.OneModule.C? $h@@6))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|OneModule.C.Valid#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.OneModule.C) ($IsAlloc refType this@@0 Tclass.OneModule.C $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) ($Box refType this@@0)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) ($Box refType null))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Box refType this@@0))) (|OneModule.C.Valid#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Box refType this@@0))))) (OneModule.C.Valid $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))) OneModule.D.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))) OneModule.D.Repr)) ($Box refType this@@0))) (|OneModule.D.Valid#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))))))))))) (= (OneModule.C.Valid $Heap@@0 this@@0)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) ($Box refType this@@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) ($Box refType null)))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))) OneModule.C.Repr)) ($Box refType this@@0))))) (OneModule.C.Valid $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.anotherC))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))) OneModule.D.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))) OneModule.D.Repr)) ($Box refType this@@0))))) (OneModule.D.Valid $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.dd))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.arr)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.arr))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.data)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) OneModule.C.data))) 100)))))))))
 :qid |AutoContractsdfy.12:21|
 :skolemid |510|
 :pattern ( (OneModule.C.Valid $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.OneModule.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) OneModule.C.data)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |496|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) OneModule.C.data)))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@1))  (and ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@2)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@2)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@3)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@3))
)))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.OneModule.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) OneModule.C.anotherC)) Tclass.OneModule.C?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) OneModule.C.anotherC)))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.OneModule.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) OneModule.C.dd)) Tclass.OneModule.D?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |499|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) OneModule.C.dd)))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.OneModule.D?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.OneModule.D?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass.OneModule.D?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.OneModule.D) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.OneModule.D)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@4 Tclass.OneModule.D))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.OneModule.C?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.OneModule.C?)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@5 Tclass.OneModule.C?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.OneModule.C) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.OneModule.C)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsBox bx@@6 Tclass.OneModule.C))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@8 null) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@8 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.OneModule.D)  (and ($Is refType |c#0@@5| Tclass.OneModule.D?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType |c#0@@5| Tclass.OneModule.D))
 :pattern ( ($Is refType |c#0@@5| Tclass.OneModule.D?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.OneModule.C)  (and ($Is refType |c#0@@6| Tclass.OneModule.C?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is refType |c#0@@6| Tclass.OneModule.C))
 :pattern ( ($Is refType |c#0@@6| Tclass.OneModule.C?))
)))
(assert (forall (($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.OneModule.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) OneModule.C.anotherC)) Tclass.OneModule.C? $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |498|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) OneModule.C.anotherC)))
)))
(assert (forall (($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.OneModule.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) OneModule.C.dd)) Tclass.OneModule.D? $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |500|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) OneModule.C.dd)))
)))
(assert (forall (($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.OneModule.D?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) OneModule.D.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) OneModule.D.Repr)))
)))
(assert (forall (($h@@13 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.OneModule.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) OneModule.C.arr)) (Tclass._System.array? Tclass.OneModule.C?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) OneModule.C.arr)))
)))
(assert (forall (($h@@14 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.OneModule.C?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) OneModule.C.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |552|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) OneModule.C.Repr)))
)))
(assert (forall (($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.OneModule.D?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) OneModule.D.Repr)) (TSet Tclass._System.object?) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) OneModule.D.Repr)))
)))
(assert (forall (($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.OneModule.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) OneModule.C.arr)) (Tclass._System.array? Tclass.OneModule.C?) $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |504|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) OneModule.C.arr)))
)))
(assert (forall (($h@@17 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.OneModule.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) OneModule.C.Repr)) (TSet Tclass._System.object?) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |553|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) OneModule.C.Repr)))
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
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
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
(assert (forall ((_System.array$arg@@5 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@5)) _System.array$arg@@5)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.OneModule.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) OneModule.C.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) OneModule.C.data)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.OneModule.D))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@19 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (or (= $o@@19 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@1) OneModule.D.Repr)) ($Box refType $o@@19)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@19) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@19) $f)))
 :qid |unknown.0:0|
 :skolemid |484|
)) (= (OneModule.D.Valid $h0 this@@1) (OneModule.D.Valid $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |486|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (OneModule.D.Valid $h1 this@@1))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.OneModule.C))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@20 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (or (= $o@@20 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@2) OneModule.C.Repr)) ($Box refType $o@@20)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@20) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@20) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |505|
)) (= (OneModule.C.Valid $h0@@0 this@@2) (OneModule.C.Valid $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |507|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (OneModule.C.Valid $h1@@0 this@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@21 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f@@1))  (=> (and (or (not (= $o@@21 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2243|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f@@1))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@7 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array? _System.array$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array? _System.array$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array? _System.array$arg@@7)))
)))
(assert (forall ((_System.array$arg@@8 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.array _System.array$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._System.array _System.array$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@11 (Tclass._System.array _System.array$arg@@8)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|OneModule.D.Valid#canCall| $Heap@@1 this@@3) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.OneModule.D) ($IsAlloc refType this@@3 Tclass.OneModule.D $Heap@@1)))))) (=> (OneModule.D.Valid $Heap@@1 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) OneModule.D.Repr)) ($Box refType this@@3))))
 :qid |AutoContractsdfy.5:26|
 :skolemid |487|
 :pattern ( (OneModule.D.Valid $Heap@@1 this@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|OneModule.C.Valid#canCall| $Heap@@2 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.OneModule.C) ($IsAlloc refType this@@4 Tclass.OneModule.C $Heap@@2)))))) (=> (OneModule.C.Valid $Heap@@2 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) OneModule.C.Repr)) ($Box refType this@@4))))
 :qid |AutoContractsdfy.12:21|
 :skolemid |508|
 :pattern ( (OneModule.C.Valid $Heap@@2 this@@4))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.OneModule.D?) Tagclass.OneModule.D?))
(assert (= (TagFamily Tclass.OneModule.D?) tytagFamily$D))
(assert (= (Tag Tclass.OneModule.D) Tagclass.OneModule.D))
(assert (= (TagFamily Tclass.OneModule.D) tytagFamily$D))
(assert (= (Tag Tclass.OneModule.C?) Tagclass.OneModule.C?))
(assert (= (TagFamily Tclass.OneModule.C?) tytagFamily$C))
(assert (= (Tag Tclass.OneModule.C) Tagclass.OneModule.C))
(assert (= (TagFamily Tclass.OneModule.C) tytagFamily$C))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@5 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$OneModule.C.TL)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@5 Tclass.OneModule.C $Heap@@3)) (=> ($IsAlloc refType this@@5 Tclass.OneModule.C $Heap@@3) (=> (|OneModule.C.Valid#canCall| $Heap@@3 this@@5) (=> (and (OneModule.C.Valid $Heap@@3 this@@5) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@5 Tclass.OneModule.C $Heap@@3))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass.OneModule.C) ($IsAlloc refType this@@5 Tclass.OneModule.C previous$Heap))) (= 2 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@3) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
