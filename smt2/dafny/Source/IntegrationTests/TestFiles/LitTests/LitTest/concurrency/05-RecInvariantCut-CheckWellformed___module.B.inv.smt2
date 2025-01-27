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
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.A? () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun Tagclass._module.B () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun Tagclass._module.B? () T@U)
(declare-fun class._module.B? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun field$content () T@U)
(declare-fun field$valid () T@U)
(declare-fun field$b () T@U)
(declare-fun field$a () T@U)
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
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.upCast (T@U) T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.__default.upCast#canCall| (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.A? () T@U)
(declare-fun Tclass._module.B? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.A () T@U)
(declare-fun Tclass._module.B () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.A.valid () T@U)
(declare-fun _module.A.b () T@U)
(declare-fun _module.B.valid () T@U)
(declare-fun _module.B.a () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.A.localInv (T@U T@U) Bool)
(declare-fun |_module.A.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun _module.B.localInv (T@U T@U) Bool)
(declare-fun |_module.B.localInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun _module.A.inv (T@U T@U) Bool)
(declare-fun |_module.A.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.B.inv (T@U T@U) Bool)
(declare-fun |_module.B.inv#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? class._module.A? Tagclass._module.A? Tagclass._module.B Tagclass._module.A Tagclass._module.B? class._module.B? tytagFamily$object tytagFamily$Universe tytagFamily$Object tytagFamily$A tytagFamily$B field$content field$valid field$b field$a)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (|_module.__default.upCast#canCall| |o#0|))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |496|
 :pattern ( (_module.__default.upCast |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
)) (= (_module.Universe.globalBaseInv $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= (_module.__default.upCast |o#0@@0|) this)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |495|
 :pattern ( (_module.__default.upCast |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))))
 :qid |_05RecInvariantCutdfy.19:19|
 :skolemid |497|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.Object Tclass._module.A?))
(assert (implements$_module.Object Tclass._module.B?))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.A?)  (or (= $o null) (= (dtype $o) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType $o Tclass._module.A?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.B?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.B?)))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($Is refType $o@@0 Tclass._module.B?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.A? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( ($IsAllocBox bx Tclass._module.A? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.B? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.B? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.A $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.A? $h@@4))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.A $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.A? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.B $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.B? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.B $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.B? $h@@5))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.A.valid) 0))
(assert (= (FieldOfDecl class._module.A? field$valid) _module.A.valid))
(assert ($IsGhostField _module.A.valid))
(assert (= (FDim _module.A.b) 0))
(assert (= (FieldOfDecl class._module.A? field$b) _module.A.b))
(assert ($IsGhostField _module.A.b))
(assert (= (FDim _module.B.valid) 0))
(assert (= (FieldOfDecl class._module.B? field$valid) _module.B.valid))
(assert ($IsGhostField _module.B.valid))
(assert (= (FDim _module.B.a) 0))
(assert (= (FieldOfDecl class._module.B? field$a) _module.B.a))
(assert ($IsGhostField _module.B.a))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.A? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.A? $h@@9))
)))
(assert (forall (($o@@5 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.B? $h@@10)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.B? $h@@10))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@6) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1030|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@11 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) _module.A.valid)) TBool $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) _module.A.valid)))
)))
(assert (forall (($h@@12 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.B.valid)) TBool $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |862|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.B.valid)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@9) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |615|
 :pattern ( (_module.Object.universe $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@9) alloc)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.A.localInv#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.A) ($IsAlloc refType this@@0 Tclass._module.A $Heap@@0)))))) (and (|_module.Object.baseInv#canCall| $Heap@@0 this@@0) (= (_module.A.localInv $Heap@@0 this@@0)  (and (and (_module.Object.baseInv $Heap@@0 this@@0) (= (_module.Object.universe this@@0) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.A.b))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.A.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.A.b))) _module.B.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.A.b))) _module.B.a)) this@@0)))))))
 :qid |_05RecInvariantCutdfy.101:19|
 :skolemid |718|
 :pattern ( (_module.A.localInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.B.localInv#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.B) ($IsAlloc refType this@@1 Tclass._module.B $Heap@@1)))))) (and (|_module.Object.baseInv#canCall| $Heap@@1 this@@1) (= (_module.B.localInv $Heap@@1 this@@1)  (and (and (_module.Object.baseInv $Heap@@1 this@@1) (= (_module.Object.universe this@@1) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.B.a))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.B.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.B.a))) _module.A.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.B.a))) _module.A.b)) this@@1)))))))
 :qid |_05RecInvariantCutdfy.149:19|
 :skolemid |878|
 :pattern ( (_module.B.localInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@10) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.Object.universe $o@@10))
))))
(assert (forall (($h@@14 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.A?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) _module.A.b)) Tclass._module.B))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |701|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) _module.A.b)))
)))
(assert (forall (($h@@15 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.B?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@12) _module.B.a)) Tclass._module.A))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |863|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@12) _module.B.a)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.A?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsBox bx@@8 Tclass._module.A?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.B) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.B)))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsBox bx@@9 Tclass._module.B))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.A) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.A)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsBox bx@@10 Tclass._module.A))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.B?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.B?)))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($IsBox bx@@11 Tclass._module.B?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.A)  (and ($Is refType |c#0@@7| Tclass._module.A?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.A))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.A?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.B)  (and ($Is refType |c#0@@8| Tclass._module.B?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.B))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.B?))
)))
(assert (forall (($h@@16 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@13) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@13) _module.A.b)) Tclass._module.B $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@13) _module.A.b)))
)))
(assert (forall (($h@@17 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) _module.B.a)) Tclass._module.A $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |864|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) _module.B.a)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@1| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@1|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@1| Tclass._System.object))) (= (_module.__default.upCast |o#0@@1|) |o#0@@1|))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@2 this@@2) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Object) ($IsAlloc refType this@@2 Tclass._module.Object $Heap@@2)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe this@@2)) _module.Universe.content)) ($Box refType this@@2)) (|_module.Universe.globalBaseInv#canCall| $Heap@@2 (_module.Object.universe this@@2))) (= (_module.Object.baseInv $Heap@@2 this@@2)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe this@@2)) _module.Universe.content)) ($Box refType this@@2)) (_module.Universe.globalBaseInv $Heap@@2 (_module.Object.universe this@@2))))))
 :qid |_05RecInvariantCutdfy.61:19|
 :skolemid |620|
 :pattern ( (_module.Object.baseInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@15 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.A? $heap) ($IsAlloc refType $o@@15 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.A? $heap))
)))
(assert (forall (($o@@16 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass._module.B? $heap@@0) ($IsAlloc refType $o@@16 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.B? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@2| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@2|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@2| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@2|) Tclass._System.object))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@2|))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TBool) (and (= ($Box boolType ($Unbox boolType bx@@12)) bx@@12) ($Is boolType ($Unbox boolType bx@@12) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@12 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@13) ($IsAllocBox bx@@13 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|o#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@3|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@3| Tclass._System.object) ($IsAlloc refType |o#0@@3| Tclass._System.object $Heap@@3)))) ($IsGoodHeap $Heap@@3)) ($IsAlloc refType (_module.__default.upCast |o#0@@3|) Tclass._System.object $Heap@@3))
 :qid |_05RecInvariantCutdfy.8:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@3|) Tclass._System.object $Heap@@3))
))))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@4| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| (Lit refType |o#0@@4|)) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@4| Tclass._System.object))) (= (_module.__default.upCast (Lit refType |o#0@@4|)) (Lit refType |o#0@@4|)))
 :qid |_05RecInvariantCutdfy.8:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@4|)))
))))
(assert (forall (($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.A?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.A.valid)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |698|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.A.valid)))
)))
(assert (forall (($h@@19 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.B?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.B.valid)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |861|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.B.valid)))
)))
(assert (forall ((bx@@14 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@3)))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.A?) ($Is refType $o@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($Is refType $o@@20 Tclass._module.A?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.A?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($IsBox bx@@15 Tclass._module.A?))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> ($Is refType $o@@21 Tclass._module.B?) ($Is refType $o@@21 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($Is refType $o@@21 Tclass._module.B?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.B?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( ($IsBox bx@@16 Tclass._module.B?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (= (Tag Tclass._module.B) Tagclass._module.B))
(assert (= (TagFamily Tclass._module.B) tytagFamily$B))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (= (Tag Tclass._module.B?) Tagclass._module.B?))
(assert (= (TagFamily Tclass._module.B?) tytagFamily$B))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass._module.Universe?)  (or (= $o@@22 null) (implements$_module.Universe (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@22 Tclass._module.Universe?))
)))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass._module.Object?)  (or (= $o@@23 null) (implements$_module.Object (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Is refType $o@@23 Tclass._module.Object?))
)))
(assert (forall (($h@@20 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) _module.Universe.content)) (TSet Tclass._module.Object) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall (($h@@21 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@25 null)) (not true)) ($Is refType $o@@25 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) _module.Universe.content)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.A.inv#canCall| $Heap@@4 this@@3) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.A) ($IsAlloc refType this@@3 Tclass._module.A $Heap@@4)))))) (and (and (|_module.A.localInv#canCall| $Heap@@4 this@@3) (=> (_module.A.localInv $Heap@@4 this@@3) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@3) _module.A.valid))) (|_module.B.localInv#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@3) _module.A.b)))))) (= (_module.A.inv $Heap@@4 this@@3)  (and (_module.A.localInv $Heap@@4 this@@3) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@3) _module.A.valid))) (_module.B.localInv $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@3) _module.A.b))))))))
 :qid |_05RecInvariantCutdfy.97:19|
 :skolemid |708|
 :pattern ( (_module.A.inv $Heap@@4 this@@3) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.B.inv#canCall| $Heap@@5 this@@4) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.B) ($IsAlloc refType this@@4 Tclass._module.B $Heap@@5)))))) (and (and (|_module.B.localInv#canCall| $Heap@@5 this@@4) (=> (_module.B.localInv $Heap@@5 this@@4) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@4) _module.B.valid))) (|_module.A.inv#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@4) _module.B.a)))))) (= (_module.B.inv $Heap@@5 this@@4)  (and (_module.B.localInv $Heap@@5 this@@4) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@4) _module.B.valid))) (_module.A.inv $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@4) _module.B.a))))))))
 :qid |_05RecInvariantCutdfy.145:19|
 :skolemid |869|
 :pattern ( (_module.B.inv $Heap@@5 this@@4) ($IsGoodHeap $Heap@@5))
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
(declare-fun $Heap@@6 () T@U)
(declare-fun this@@5 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.B.inv)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon6_correct  (=> (= (_module.B.inv $Heap@@6 this@@5)  (and (_module.B.localInv $Heap@@6 this@@5) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.valid))) (_module.A.inv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a)))))) (=> (and (and (|_module.B.localInv#canCall| $Heap@@6 this@@5) (=> (_module.B.localInv $Heap@@6 this@@5) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.valid))) (|_module.A.inv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a)))))) ($Is boolType (bool_2_U (_module.B.inv $Heap@@6 this@@5)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#3@1|)))))))))))
(let ((anon10_Else_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.valid)))) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 10) 3))) anon6_correct))))
(let ((anon10_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.valid))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 _module.B.a)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a) Tclass._module.A? $Heap@@6) (=> (and (= |b$reqreads#3@0| (forall (($o@@26 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@26) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@26) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@26 $f@@0)))
 :qid |_05RecInvariantCutdfy.147:21|
 :skolemid |872|
))) (|_module.A.inv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@5) _module.B.a)))) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 8) 3))) anon6_correct))))))))
(let ((anon9_Then_correct  (=> (and (_module.B.localInv $Heap@@6 this@@5) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 _module.B.valid)))) (and (=> (= (ControlFlow 0 11) 8) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not (_module.B.localInv $Heap@@6 this@@5)) (=> (and (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 7) 3))) anon6_correct))))
(let ((anon8_Else_correct  (=> ($IsAllocBox ($Box refType this@@5) Tclass._module.B? $Heap@@6) (=> (and (= |b$reqreads#0@0| (forall (($o@@27 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@27) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@27) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@27 $f@@1)))
 :qid |_05RecInvariantCutdfy.146:8|
 :skolemid |871|
))) (|_module.B.localInv#canCall| $Heap@@6 this@@5)) (and (=> (= (ControlFlow 0 12) 11) anon9_Then_correct) (=> (= (ControlFlow 0 12) 7) anon9_Else_correct))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null $Heap@@6 alloc $Heap@@6 alloc)) (and (=> (= (ControlFlow 0 13) 1) anon8_Then_correct) (=> (= (ControlFlow 0 13) 12) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.B) ($IsAlloc refType this@@5 Tclass._module.B $Heap@@6))) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
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
