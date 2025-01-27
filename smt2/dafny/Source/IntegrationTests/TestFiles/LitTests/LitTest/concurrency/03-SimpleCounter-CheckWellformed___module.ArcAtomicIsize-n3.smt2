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
(declare-fun Tagclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ArcAtomicIsize () T@U)
(declare-fun field$content () T@U)
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
(declare-fun _module.Universe.i0 (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.i0#canCall| (T@U T@U) Bool)
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
(declare-fun Tclass._module.ArcAtomicIsize? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.ArcAtomicIsize () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.Object.i0 (T@U T@U) Bool)
(declare-fun |_module.Object.i0#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun _module.ArcAtomicIsize.i (T@U T@U) Bool)
(declare-fun |_module.ArcAtomicIsize.i#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? Tagclass._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize tytagFamily$object tytagFamily$Universe tytagFamily$Object tytagFamily$ArcAtomicIsize field$content)
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.i0#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (|_module.__default.upCast#canCall| |o#0|))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |496|
 :pattern ( (_module.__default.upCast |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
)) (= (_module.Universe.i0 $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= (_module.__default.upCast |o#0@@0|) this)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |495|
 :pattern ( (_module.__default.upCast |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))))
 :qid |_03SimpleCounterdfy.28:19|
 :skolemid |497|
 :pattern ( (_module.Universe.i0 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.Object Tclass._module.ArcAtomicIsize?))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ArcAtomicIsize?)  (or (= $o null) (= (dtype $o) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($Is refType $o Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@3) ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@3))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@3))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Universe? $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@6))
)))
(assert (forall (($o@@3 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.ArcAtomicIsize? $h@@7)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.ArcAtomicIsize? $h@@7))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@4) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1119|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@8 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@5) Tclass._module.Universe $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |618|
 :pattern ( (_module.Object.universe $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@6) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (_module.Object.universe $o@@6))
))))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.ArcAtomicIsize?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsBox bx@@7 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ArcAtomicIsize) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ArcAtomicIsize)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsBox bx@@8 Tclass._module.ArcAtomicIsize))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize)  (and ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@1| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@1|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@1| Tclass._System.object))) (= (_module.__default.upCast |o#0@@1|) |o#0@@1|))
 :qid |_03SimpleCounterdfy.17:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Object.i0#canCall| $Heap@@0 this@@0) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Object) ($IsAlloc refType this@@0 Tclass._module.Object $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) ($Box refType this@@0)) (|_module.Universe.i0#canCall| $Heap@@0 (_module.Object.universe this@@0))) (= (_module.Object.i0 $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) ($Box refType this@@0)) (_module.Universe.i0 $Heap@@0 (_module.Object.universe this@@0))))))
 :qid |_03SimpleCounterdfy.74:19|
 :skolemid |623|
 :pattern ( (_module.Object.i0 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.ArcAtomicIsize? $heap) ($IsAlloc refType $o@@7 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1113|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.ArcAtomicIsize? $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@2| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@2|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@2| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@2|) Tclass._System.object))
 :qid |_03SimpleCounterdfy.17:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@2|))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|o#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@3|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@3| Tclass._System.object) ($IsAlloc refType |o#0@@3| Tclass._System.object $Heap@@1)))) ($IsGoodHeap $Heap@@1)) ($IsAlloc refType (_module.__default.upCast |o#0@@3|) Tclass._System.object $Heap@@1))
 :qid |_03SimpleCounterdfy.17:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@3|) Tclass._System.object $Heap@@1))
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
 :qid |_03SimpleCounterdfy.17:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@4|)))
))))
(assert (forall ((bx@@11 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@3)))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass._module.ArcAtomicIsize?) ($Is refType $o@@9 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( ($Is refType $o@@9 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.ArcAtomicIsize?) ($IsBox bx@@12 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($IsBox bx@@12 Tclass._module.ArcAtomicIsize?))
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
(assert (= (Tag Tclass._module.ArcAtomicIsize?) Tagclass._module.ArcAtomicIsize?))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize?) tytagFamily$ArcAtomicIsize))
(assert (= (Tag Tclass._module.ArcAtomicIsize) Tagclass._module.ArcAtomicIsize))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize) tytagFamily$ArcAtomicIsize))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.Universe?)  (or (= $o@@10 null) (implements$_module.Universe (dtype $o@@10))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@10 Tclass._module.Universe?))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.Object?)  (or (= $o@@11 null) (implements$_module.Object (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($Is refType $o@@11 Tclass._module.Object?))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)) (TSet Tclass._module.Object) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i#canCall| $Heap@@2 this@@1) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@1 Tclass._module.ArcAtomicIsize $Heap@@2)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.i0#canCall| $Heap@@2 this@@1)) (= (_module.ArcAtomicIsize.i $Heap@@2 this@@1)  (and true (_module.Object.i0 $Heap@@2 this@@1)))))
 :qid |_03SimpleCounterdfy.106:19|
 :skolemid |708|
 :pattern ( (_module.ArcAtomicIsize.i $Heap@@2 this@@1) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) _module.Universe.content)))
)))
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
(declare-fun $Heap@@3 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.ArcAtomicIsize.i)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_correct  (=> (and (and (= (_module.ArcAtomicIsize.i $Heap@@3 this@@2)  (and true (_module.Object.i0 $Heap@@3 this@@2))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.i0#canCall| $Heap@@3 this@@2))) (and ($Is boolType (bool_2_U (_module.ArcAtomicIsize.i $Heap@@3 this@@2)) TBool) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@1|)))
(let ((anon8_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 5) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) ($IsAllocBox ($Box refType this@@2) Tclass._module.Object? $Heap@@3)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@14) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@14) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@14 $f@@0)))
 :qid |_03SimpleCounterdfy.108:8|
 :skolemid |710|
))) (|_module.Object.i0#canCall| $Heap@@3 this@@2)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 4) 3))) anon5_correct))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null $Heap@@3 alloc $Heap@@3 alloc)) (and (and (=> (= (ControlFlow 0 6) 1) anon7_Then_correct) (=> (= (ControlFlow 0 6) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@2 Tclass._module.ArcAtomicIsize $Heap@@3))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
