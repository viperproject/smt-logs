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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.G () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.M () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.N () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.B () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K? () T@U)
(declare-fun class.TraitsExtendingTraits.A? () T@U)
(declare-fun class.TraitsExtendingTraits.B? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.B? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.C? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.C () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.M? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.N? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.G? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$G () T@U)
(declare-fun tytagFamily$M () T@U)
(declare-fun tytagFamily$N () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$Odd () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$K () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$b () T@U)
(declare-fun field$y0 () T@U)
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
(declare-fun implements$TraitsExtendingTraits.K (T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.G? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.TraitsExtendingTraits.K (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K? (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.G (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.M (T@U) Bool)
(declare-fun implements$_System.object (T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.N (T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.C (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TraitsExtendingTraits.A.GetY (T@U T@U T@U T@U) T@U)
(declare-fun |TraitsExtendingTraits.A.GetY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun Tclass.TraitsExtendingTraits.A (T@U T@U) T@U)
(declare-fun TraitsExtendingTraits.A.GetY_k (T@U T@U T@U T@U) T@U)
(declare-fun |TraitsExtendingTraits.A.GetY_k#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun TraitsExtendingTraits.B.b () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.B? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.TraitsExtendingTraits.C? () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.M? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass.TraitsExtendingTraits.B () T@U)
(declare-fun Tclass.TraitsExtendingTraits.C () T@U)
(declare-fun Tclass.TraitsExtendingTraits.M () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TraitsExtendingTraits.K.GetY_k (T@U T@U T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TraitsExtendingTraits.A.y0 () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |TraitsExtendingTraits.K.GetY_k#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.A? (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_1 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_1 (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.A (T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.G_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K?_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.G?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.B (T@U) Bool)
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
(assert (distinct TBool TReal TagBool TagReal alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.TraitsExtendingTraits.G Tagclass.TraitsExtendingTraits.M Tagclass.TraitsExtendingTraits.N Tagclass.TraitsExtendingTraits.B Tagclass.TraitsExtendingTraits.Odd Tagclass.TraitsExtendingTraits.A Tagclass.TraitsExtendingTraits.A? Tagclass.TraitsExtendingTraits.K? class.TraitsExtendingTraits.A? class.TraitsExtendingTraits.B? Tagclass.TraitsExtendingTraits.B? Tagclass.TraitsExtendingTraits.C? Tagclass.TraitsExtendingTraits.C Tagclass.TraitsExtendingTraits.K Tagclass.TraitsExtendingTraits.M? Tagclass.TraitsExtendingTraits.N? Tagclass.TraitsExtendingTraits.G? tytagFamily$object tytagFamily$G tytagFamily$M tytagFamily$N tytagFamily$B tytagFamily$Odd tytagFamily$A tytagFamily$K tytagFamily$C field$b field$y0)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((TraitsExtendingTraits.G$X T@U) ) (! (implements$TraitsExtendingTraits.K (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X) TraitsExtendingTraits.G$X)
 :qid |unknown.0:0|
 :skolemid |3216|
)))
(assert (forall ((TraitsExtendingTraits.G$X@@0 T@U) ) (! (implements$TraitsExtendingTraits.K (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@0) TraitsExtendingTraits.G$X@@0)
 :qid |unknown.0:0|
 :skolemid |3217|
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h)
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TraitsExtendingTraits.K$Y T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0) ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
 :qid |unknown.0:0|
 :skolemid |3187|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@1 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@1) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |3226|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@1) $h@@1))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@2 T@U) ) (! (implements$TraitsExtendingTraits.M (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@2))
 :qid |unknown.0:0|
 :skolemid |3218|
)))
(assert (forall ((TraitsExtendingTraits.G$X@@3 T@U) ) (! (implements$_System.object (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@3))
 :qid |unknown.0:0|
 :skolemid |3219|
)))
(assert (forall ((TraitsExtendingTraits.G$X@@4 T@U) ) (! (implements$TraitsExtendingTraits.N (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@4))
 :qid |unknown.0:0|
 :skolemid |3220|
)))
(assert (forall ((TraitsExtendingTraits.G$X@@5 T@U) ) (! (implements$TraitsExtendingTraits.C (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@5))
 :qid |unknown.0:0|
 :skolemid |3221|
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0 T@U) (TraitsExtendingTraits.A$Y1 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (or (not (= this null)) (not true))) ($IsAlloc refType this (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1) $Heap)))) ($IsAllocBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) TraitsExtendingTraits.A$Y0 $Heap))
 :qid |unknown.0:0|
 :skolemid |3143|
 :pattern ( ($IsAllocBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) TraitsExtendingTraits.A$Y0 $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@0 T@U) (TraitsExtendingTraits.A$Y1@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY_k#canCall| TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0 $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (or (not (= this@@0 null)) (not true))) ($IsAlloc refType this@@0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0) $Heap@@0)))) ($IsAllocBox (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0 $Heap@@0 this@@0) TraitsExtendingTraits.A$Y0@@0 $Heap@@0))
 :qid |unknown.0:0|
 :skolemid |3149|
 :pattern ( ($IsAllocBox (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0 $Heap@@0 this@@0) TraitsExtendingTraits.A$Y0@@0 $Heap@@0))
))))
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
(assert (forall (($h@@2 T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o null)) (not true)) ($Is refType $o Tclass.TraitsExtendingTraits.B?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) TraitsExtendingTraits.B.b)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3156|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) TraitsExtendingTraits.B.b)))
)))
(assert (forall ((bx T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.TraitsExtendingTraits.C? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3228|
 :pattern ( ($IsAllocBox bx Tclass.TraitsExtendingTraits.C? $h@@3))
)))
(assert (forall ((bx@@0 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.M? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.B? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3236|
 :pattern ( ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.M? $h@@4))
)))
(assert (forall ((bx@@1 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.TraitsExtendingTraits.M? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@1 Tclass._System.object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3240|
 :pattern ( ($IsAllocBox bx@@1 Tclass.TraitsExtendingTraits.M? $h@@5))
)))
(assert (forall ((bx@@2 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.N? $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.B? $h@@6))
 :qid |unknown.0:0|
 :skolemid |3244|
 :pattern ( ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.N? $h@@6))
)))
(assert (forall ((bx@@3 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.N? $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.C? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.N? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@8) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2923|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B $h@@9) ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B? $h@@9))
 :qid |unknown.0:0|
 :skolemid |3163|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C $h@@10) ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C? $h@@10))
 :qid |unknown.0:0|
 :skolemid |3169|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M $h@@11) ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M? $h@@11))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N $h@@12) ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3210|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N? $h@@12))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |3178|
)) (= (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@0 $h0 this@@1) (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@0 $h1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |3179|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@0 $h1 this@@1))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@1 T@U) ($o@@1 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1) $h@@13)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3171|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1) $h@@13))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@6 T@U) ($o@@2 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@6) $h@@14)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3215|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@6) $h@@14))
)))
(assert (= (FDim TraitsExtendingTraits.B.b) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.B? field$b) TraitsExtendingTraits.B.b))
(assert  (not ($IsGhostField TraitsExtendingTraits.B.b)))
(assert (= (FDim TraitsExtendingTraits.A.y0) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.A? field$y0) TraitsExtendingTraits.A.y0))
(assert  (not ($IsGhostField TraitsExtendingTraits.A.y0)))
(assert (forall ((TraitsExtendingTraits.G$X@@7 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@7)) ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@7)))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@7)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@8 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@8)) ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@8)))
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@8)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@9 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@9)) ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@9)))
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@9)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@10)) ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@10)))
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@10)))
)))
(assert (forall (($o@@5 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@15)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2920|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@15))
)))
(assert (forall (($o@@6 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.TraitsExtendingTraits.B? $h@@16)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3155|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.TraitsExtendingTraits.B? $h@@16))
)))
(assert (forall (($o@@7 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.TraitsExtendingTraits.C? $h@@17)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3166|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.TraitsExtendingTraits.C? $h@@17))
)))
(assert (forall (($o@@8 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.TraitsExtendingTraits.M? $h@@18)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3190|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.TraitsExtendingTraits.M? $h@@18))
)))
(assert (forall (($o@@9 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass.TraitsExtendingTraits.N? $h@@19)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3201|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.TraitsExtendingTraits.N? $h@@19))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2674|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2675|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2573|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |2575|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2571|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@2 T@U) ($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@2 $Heap@@1 this@@2) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (or (not (= this@@2 null)) (not true))) ($IsAlloc refType this@@2 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@2) $Heap@@1)))) ($IsAllocBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@2 $Heap@@1 this@@2) TraitsExtendingTraits.K$Y@@2 $Heap@@1))
 :qid |unknown.0:0|
 :skolemid |3181|
 :pattern ( ($IsAllocBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@2 $Heap@@1 this@@2) TraitsExtendingTraits.K$Y@@2 $Heap@@1))
))))
(assert (forall ((TraitsExtendingTraits.A$Y0@@1 T@U) (TraitsExtendingTraits.A$Y1@@1 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1))  (and ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((TraitsExtendingTraits.K$Y@@3 T@U) (|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3))  (and ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@3)) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3186|
 :pattern ( ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3)))
 :pattern ( ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@3)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@11 T@U) (|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@11))  (and ($Is refType |c#0@@8| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@11)) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3225|
 :pattern ( ($Is refType |c#0@@8| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@11)))
 :pattern ( ($Is refType |c#0@@8| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@11)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2595|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@1) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2667|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@6 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2666|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@2 T@U) (TraitsExtendingTraits.A$Y1@@2 T@U) ($h@@20 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@10) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@2))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@10) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@12 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12)) Tagclass.TraitsExtendingTraits.G) (= (TagFamily (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12)) tytagFamily$G))
 :qid |unknown.0:0|
 :skolemid |3103|
 :pattern ( (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@4 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4)) Tagclass.TraitsExtendingTraits.K?) (= (TagFamily (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@5 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@5)) Tagclass.TraitsExtendingTraits.K) (= (TagFamily (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@5)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3173|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@5))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@13 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13)) Tagclass.TraitsExtendingTraits.G?) (= (TagFamily (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13)) tytagFamily$G))
 :qid |unknown.0:0|
 :skolemid |3211|
 :pattern ( (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@3 T@U) (TraitsExtendingTraits.A$Y1@@3 T@U) (|c#0@@9| T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@21) ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@21))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@21))
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@21))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2918|
 :pattern ( ($IsBox bx@@7 Tclass._System.object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2921|
 :pattern ( ($IsBox bx@@8 Tclass._System.object))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.TraitsExtendingTraits.M) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.TraitsExtendingTraits.M)))
 :qid |unknown.0:0|
 :skolemid |3107|
 :pattern ( ($IsBox bx@@9 Tclass.TraitsExtendingTraits.M))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.TraitsExtendingTraits.N) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.TraitsExtendingTraits.N)))
 :qid |unknown.0:0|
 :skolemid |3108|
 :pattern ( ($IsBox bx@@10 Tclass.TraitsExtendingTraits.N))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.TraitsExtendingTraits.B) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass.TraitsExtendingTraits.B)))
 :qid |unknown.0:0|
 :skolemid |3109|
 :pattern ( ($IsBox bx@@11 Tclass.TraitsExtendingTraits.B))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.TraitsExtendingTraits.Odd) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3110|
 :pattern ( ($IsBox bx@@12 Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.TraitsExtendingTraits.B?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass.TraitsExtendingTraits.B?)))
 :qid |unknown.0:0|
 :skolemid |3153|
 :pattern ( ($IsBox bx@@13 Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.TraitsExtendingTraits.C?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass.TraitsExtendingTraits.C?)))
 :qid |unknown.0:0|
 :skolemid |3164|
 :pattern ( ($IsBox bx@@14 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.TraitsExtendingTraits.C) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass.TraitsExtendingTraits.C)))
 :qid |unknown.0:0|
 :skolemid |3167|
 :pattern ( ($IsBox bx@@15 Tclass.TraitsExtendingTraits.C))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.TraitsExtendingTraits.M?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass.TraitsExtendingTraits.M?)))
 :qid |unknown.0:0|
 :skolemid |3188|
 :pattern ( ($IsBox bx@@16 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass.TraitsExtendingTraits.N?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass.TraitsExtendingTraits.N?)))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($IsBox bx@@17 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@14 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14))))
 :qid |unknown.0:0|
 :skolemid |3214|
 :pattern ( ($Is refType $o@@11 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14)))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._System.object)  (and ($Is refType |c#0@@10| Tclass._System.object?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2922|
 :pattern ( ($Is refType |c#0@@10| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@10| Tclass._System.object?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass.TraitsExtendingTraits.B)  (and ($Is refType |c#0@@11| Tclass.TraitsExtendingTraits.B?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3162|
 :pattern ( ($Is refType |c#0@@11| Tclass.TraitsExtendingTraits.B))
 :pattern ( ($Is refType |c#0@@11| Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass.TraitsExtendingTraits.C)  (and ($Is refType |c#0@@12| Tclass.TraitsExtendingTraits.C?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3168|
 :pattern ( ($Is refType |c#0@@12| Tclass.TraitsExtendingTraits.C))
 :pattern ( ($Is refType |c#0@@12| Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass.TraitsExtendingTraits.M)  (and ($Is refType |c#0@@13| Tclass.TraitsExtendingTraits.M?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($Is refType |c#0@@13| Tclass.TraitsExtendingTraits.M))
 :pattern ( ($Is refType |c#0@@13| Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass.TraitsExtendingTraits.N)  (and ($Is refType |c#0@@14| Tclass.TraitsExtendingTraits.N?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3209|
 :pattern ( ($Is refType |c#0@@14| Tclass.TraitsExtendingTraits.N))
 :pattern ( ($Is refType |c#0@@14| Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@15 T@U) (bx@@18 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@15) $h@@22) ($IsGoodHeap $h@@22)) ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@15) $h@@22))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@15) $h@@22))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@16 T@U) (bx@@19 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@16) $h@@23) ($IsGoodHeap $h@@23)) ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@16) $h@@23))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@16) $h@@23))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@17 T@U) ($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@17) $heap) ($IsAlloc refType $o@@12 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@17) $heap))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc refType $o@@12 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@17) $heap))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@18 T@U) ($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@18) $heap@@0) ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@18) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@18) $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@6 T@U) ($Heap@@2 T@U) (this@@3 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@6 $Heap@@2 this@@3) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@6))))) (= (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.K$Y@@6 Tclass.TraitsExtendingTraits.Odd $Heap@@2 this@@3) (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@6 $Heap@@2 this@@3)))
 :qid |unknown.0:0|
 :skolemid |3184|
 :pattern ( (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.K$Y@@6 Tclass.TraitsExtendingTraits.Odd $Heap@@2 this@@3) ($Is refType this@@3 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@6)) ($IsGoodHeap $Heap@@2))
 :pattern ( (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.K$Y@@6 Tclass.TraitsExtendingTraits.Odd $Heap@@2 this@@3) (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@6 $Heap@@2 this@@3) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@4 T@U) (TraitsExtendingTraits.A$Y1@@4 T@U) ($Heap@@3 T@U) (this@@4 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4 $Heap@@3 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4)) ($IsAlloc refType this@@4 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4) $Heap@@3)))))) (= (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4 $Heap@@3 this@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@4) TraitsExtendingTraits.A.y0)))
 :qid |unknown.0:0|
 :skolemid |3145|
 :pattern ( (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4 $Heap@@3 this@@4) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 1)))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@19 T@U) (bx@@20 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsAllocBox bx@@20 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@19) $h@@24) ($IsGoodHeap $h@@24)) ($IsAllocBox bx@@20 Tclass.TraitsExtendingTraits.M? $h@@24))
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( ($IsAllocBox bx@@20 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@19) $h@@24))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@20 T@U) (bx@@21 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsAllocBox bx@@21 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@20) $h@@25) ($IsGoodHeap $h@@25)) ($IsAllocBox bx@@21 Tclass._System.object? $h@@25))
 :qid |unknown.0:0|
 :skolemid |3264|
 :pattern ( ($IsAllocBox bx@@21 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@20) $h@@25))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@21 T@U) (bx@@22 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsAllocBox bx@@22 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@21) $h@@26) ($IsGoodHeap $h@@26)) ($IsAllocBox bx@@22 Tclass.TraitsExtendingTraits.N? $h@@26))
 :qid |unknown.0:0|
 :skolemid |3268|
 :pattern ( ($IsAllocBox bx@@22 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@21) $h@@26))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@22 T@U) (bx@@23 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsAllocBox bx@@23 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@22) $h@@27) ($IsGoodHeap $h@@27)) ($IsAllocBox bx@@23 Tclass.TraitsExtendingTraits.C? $h@@27))
 :qid |unknown.0:0|
 :skolemid |3272|
 :pattern ( ($IsAllocBox bx@@23 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@22) $h@@27))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@23 T@U) ($o@@14 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@14 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@23) $heap@@1) ($IsAlloc refType $o@@14 Tclass.TraitsExtendingTraits.M? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3262|
 :pattern ( ($IsAlloc refType $o@@14 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@23) $heap@@1))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@24 T@U) ($o@@15 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@15 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@24) $heap@@2) ($IsAlloc refType $o@@15 Tclass._System.object? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3266|
 :pattern ( ($IsAlloc refType $o@@15 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@24) $heap@@2))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@25 T@U) ($o@@16 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@16 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@25) $heap@@3) ($IsAlloc refType $o@@16 Tclass.TraitsExtendingTraits.N? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3270|
 :pattern ( ($IsAlloc refType $o@@16 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@25) $heap@@3))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@26 T@U) ($o@@17 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@17 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@26) $heap@@4) ($IsAlloc refType $o@@17 Tclass.TraitsExtendingTraits.C? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3274|
 :pattern ( ($IsAlloc refType $o@@17 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@26) $heap@@4))
)))
(assert (forall (($o@@18 T@U) ($heap@@5 T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass.TraitsExtendingTraits.C? $heap@@5) ($IsAlloc refType $o@@18 Tclass._System.object? $heap@@5))
 :qid |unknown.0:0|
 :skolemid |3230|
 :pattern ( ($IsAlloc refType $o@@18 Tclass.TraitsExtendingTraits.C? $heap@@5))
)))
(assert (forall (($o@@19 T@U) ($heap@@6 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass.TraitsExtendingTraits.M? $heap@@6) ($IsAlloc refType $o@@19 Tclass.TraitsExtendingTraits.B? $heap@@6))
 :qid |unknown.0:0|
 :skolemid |3238|
 :pattern ( ($IsAlloc refType $o@@19 Tclass.TraitsExtendingTraits.M? $heap@@6))
)))
(assert (forall (($o@@20 T@U) ($heap@@7 T@U) ) (!  (=> ($IsAlloc refType $o@@20 Tclass.TraitsExtendingTraits.M? $heap@@7) ($IsAlloc refType $o@@20 Tclass._System.object? $heap@@7))
 :qid |unknown.0:0|
 :skolemid |3242|
 :pattern ( ($IsAlloc refType $o@@20 Tclass.TraitsExtendingTraits.M? $heap@@7))
)))
(assert (forall (($o@@21 T@U) ($heap@@8 T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass.TraitsExtendingTraits.N? $heap@@8) ($IsAlloc refType $o@@21 Tclass.TraitsExtendingTraits.B? $heap@@8))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( ($IsAlloc refType $o@@21 Tclass.TraitsExtendingTraits.N? $heap@@8))
)))
(assert (forall (($o@@22 T@U) ($heap@@9 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.N? $heap@@9) ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.C? $heap@@9))
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.N? $heap@@9))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@5 T@U) (TraitsExtendingTraits.A$Y1@@5 T@U) ($o@@23 T@U) ($h@@28 T@U) ) (! (= ($IsAlloc refType $o@@23 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5) $h@@28)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsAlloc refType $o@@23 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5) $h@@28))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@7 T@U) (bx@@24 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@7) $h@@29) ($IsGoodHeap $h@@29)) ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@7 Tclass.TraitsExtendingTraits.Odd) $h@@29))
 :qid |unknown.0:0|
 :skolemid |3232|
 :pattern ( ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@7) $h@@29))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@8 T@U) ($o@@24 T@U) ($heap@@10 T@U) ) (!  (=> ($IsAlloc refType $o@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8) $heap@@10) ($IsAlloc refType $o@@24 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@8 Tclass.TraitsExtendingTraits.Odd) $heap@@10))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsAlloc refType $o@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8) $heap@@10))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@9 T@U) ($Heap@@4 T@U) (this@@5 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@9 $Heap@@4 this@@5) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9)) ($IsAlloc refType this@@5 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9) $Heap@@4)))))) (= (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@9 $Heap@@4 this@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@5) TraitsExtendingTraits.A.y0)))
 :qid |unknown.0:0|
 :skolemid |3183|
 :pattern ( (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@9 $Heap@@4 this@@5) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2673|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2663|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 TReal) (and (= ($Box realType ($Unbox realType bx@@25)) bx@@25) ($Is realType ($Unbox realType bx@@25) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |2584|
 :pattern ( ($IsBox bx@@25 TReal))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 TBool) (and (= ($Box boolType ($Unbox boolType bx@@26)) bx@@26) ($Is boolType ($Unbox boolType bx@@26) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2585|
 :pattern ( ($IsBox bx@@26 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2594|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@6 T@U) (TraitsExtendingTraits.A$Y1@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)) TraitsExtendingTraits.A$Y0@@6)
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@7 T@U) (TraitsExtendingTraits.A$Y1@@7 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)) TraitsExtendingTraits.A$Y1@@7)
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@8 T@U) (TraitsExtendingTraits.A$Y1@@8 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)) TraitsExtendingTraits.A$Y0@@8)
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@9 T@U) (TraitsExtendingTraits.A$Y1@@9 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)) TraitsExtendingTraits.A$Y1@@9)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9))
)))
(assert (forall (($o@@25 T@U) ) (! ($Is refType $o@@25 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2919|
 :pattern ( ($Is refType $o@@25 Tclass._System.object?))
)))
(assert (forall (($h@@30 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@26 null)) (not true)) ($Is refType $o@@26 Tclass.TraitsExtendingTraits.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@26) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@26) TraitsExtendingTraits.B.b)) TBool $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3157|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@26) TraitsExtendingTraits.B.b)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@10 T@U) (TraitsExtendingTraits.A$Y1@@10 T@U) ($o@@27 T@U) ) (! (= ($Is refType $o@@27 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10))  (or (= $o@@27 null) (implements$TraitsExtendingTraits.A (dtype $o@@27) TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( ($Is refType $o@@27 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@27 T@U) ) (! (= (Tclass.TraitsExtendingTraits.G_0 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@27)) TraitsExtendingTraits.G$X@@27)
 :qid |unknown.0:0|
 :skolemid |3104|
 :pattern ( (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@27))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@10 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K?_0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@10)) TraitsExtendingTraits.K$Y@@10)
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@10))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@11 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K_0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@11)) TraitsExtendingTraits.K$Y@@11)
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@11))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@28 T@U) ) (! (= (Tclass.TraitsExtendingTraits.G?_0 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@28)) TraitsExtendingTraits.G$X@@28)
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@28))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@11 T@U) (TraitsExtendingTraits.A$Y1@@11 T@U) ($h@@31 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@28) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@28) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@11 $h@@31))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@28) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@12 T@U) (TraitsExtendingTraits.A$Y1@@12 T@U) (bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)) (and (= ($Box refType ($Unbox refType bx@@27)) bx@@27) ($Is refType ($Unbox refType bx@@27) (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12))))
 :qid |unknown.0:0|
 :skolemid |3114|
 :pattern ( ($IsBox bx@@27 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@13 T@U) (TraitsExtendingTraits.A$Y1@@13 T@U) (bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)) (and (= ($Box refType ($Unbox refType bx@@28)) bx@@28) ($Is refType ($Unbox refType bx@@28) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13))))
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( ($IsBox bx@@28 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@12 T@U) ($o@@29 T@U) ) (! (= ($Is refType $o@@29 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@12))  (or (= $o@@29 null) (implements$TraitsExtendingTraits.K (dtype $o@@29) TraitsExtendingTraits.K$Y@@12)))
 :qid |unknown.0:0|
 :skolemid |3170|
 :pattern ( ($Is refType $o@@29 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@12)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@30 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@30 $f@@0))  (=> (and (or (not (= $o@@30 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@30) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8405|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@30 $f@@0))
)))
(assert (forall ((x@@7 Int) (y Int) ) (! (= (Mod x@@7 y) (mod x@@7 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2896|
 :pattern ( (Mod x@@7 y))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@29 T@U) ($o@@31 T@U) ) (!  (=> ($Is refType $o@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@29)) ($Is refType $o@@31 Tclass.TraitsExtendingTraits.M?))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( ($Is refType $o@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@29)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@30 T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@30)) ($IsBox bx@@29 Tclass.TraitsExtendingTraits.M?))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( ($IsBox bx@@29 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@30)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@31 T@U) ($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@31)) ($Is refType $o@@32 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( ($Is refType $o@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@31)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@32 T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@32)) ($IsBox bx@@30 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( ($IsBox bx@@30 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@32)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@33 T@U) ($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@33)) ($Is refType $o@@33 Tclass.TraitsExtendingTraits.N?))
 :qid |unknown.0:0|
 :skolemid |3269|
 :pattern ( ($Is refType $o@@33 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@33)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@34 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@34)) ($IsBox bx@@31 Tclass.TraitsExtendingTraits.N?))
 :qid |unknown.0:0|
 :skolemid |3267|
 :pattern ( ($IsBox bx@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@34)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@35 T@U) ($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@35)) ($Is refType $o@@34 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3273|
 :pattern ( ($Is refType $o@@34 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@35)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@36 T@U) (bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@36)) ($IsBox bx@@32 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3271|
 :pattern ( ($IsBox bx@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@36)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@14 T@U) (TraitsExtendingTraits.A$Y1@@14 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) Tagclass.TraitsExtendingTraits.A) (= (TagFamily (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@15 T@U) (TraitsExtendingTraits.A$Y1@@15 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15)) Tagclass.TraitsExtendingTraits.A?) (= (TagFamily (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3115|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@37 T@U) (bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37)) (and (= ($Box refType ($Unbox refType bx@@33)) bx@@33) ($Is refType ($Unbox refType bx@@33) (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37))))
 :qid |unknown.0:0|
 :skolemid |3105|
 :pattern ( ($IsBox bx@@33 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@13 T@U) (bx@@34 T@U) ) (!  (=> ($IsBox bx@@34 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@13)) (and (= ($Box refType ($Unbox refType bx@@34)) bx@@34) ($Is refType ($Unbox refType bx@@34) (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@13))))
 :qid |unknown.0:0|
 :skolemid |3121|
 :pattern ( ($IsBox bx@@34 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@13)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@14 T@U) (bx@@35 T@U) ) (!  (=> ($IsBox bx@@35 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@14)) (and (= ($Box refType ($Unbox refType bx@@35)) bx@@35) ($Is refType ($Unbox refType bx@@35) (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@14))))
 :qid |unknown.0:0|
 :skolemid |3175|
 :pattern ( ($IsBox bx@@35 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@14)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@38 T@U) (bx@@36 T@U) ) (!  (=> ($IsBox bx@@36 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38)) (and (= ($Box refType ($Unbox refType bx@@36)) bx@@36) ($Is refType ($Unbox refType bx@@36) (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38))))
 :qid |unknown.0:0|
 :skolemid |3213|
 :pattern ( ($IsBox bx@@36 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38)))
)))
(assert (forall (($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 Tclass.TraitsExtendingTraits.C?) ($Is refType $o@@35 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3229|
 :pattern ( ($Is refType $o@@35 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall ((bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 Tclass.TraitsExtendingTraits.C?) ($IsBox bx@@37 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3227|
 :pattern ( ($IsBox bx@@37 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@36 T@U) ) (!  (=> ($Is refType $o@@36 Tclass.TraitsExtendingTraits.M?) ($Is refType $o@@36 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3237|
 :pattern ( ($Is refType $o@@36 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 Tclass.TraitsExtendingTraits.M?) ($IsBox bx@@38 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3235|
 :pattern ( ($IsBox bx@@38 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@37 T@U) ) (!  (=> ($Is refType $o@@37 Tclass.TraitsExtendingTraits.M?) ($Is refType $o@@37 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3241|
 :pattern ( ($Is refType $o@@37 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 Tclass.TraitsExtendingTraits.M?) ($IsBox bx@@39 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3239|
 :pattern ( ($IsBox bx@@39 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@38 T@U) ) (!  (=> ($Is refType $o@@38 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@38 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( ($Is refType $o@@38 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 Tclass.TraitsExtendingTraits.N?) ($IsBox bx@@40 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3243|
 :pattern ( ($IsBox bx@@40 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall (($o@@39 T@U) ) (!  (=> ($Is refType $o@@39 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@39 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( ($Is refType $o@@39 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((bx@@41 T@U) ) (!  (=> ($IsBox bx@@41 Tclass.TraitsExtendingTraits.N?) ($IsBox bx@@41 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3247|
 :pattern ( ($IsBox bx@@41 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2672|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.TraitsExtendingTraits.M) Tagclass.TraitsExtendingTraits.M))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.M) tytagFamily$M))
(assert (= (Tag Tclass.TraitsExtendingTraits.N) Tagclass.TraitsExtendingTraits.N))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.N) tytagFamily$N))
(assert (= (Tag Tclass.TraitsExtendingTraits.B) Tagclass.TraitsExtendingTraits.B))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.B) tytagFamily$B))
(assert (= (Tag Tclass.TraitsExtendingTraits.Odd) Tagclass.TraitsExtendingTraits.Odd))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.Odd) tytagFamily$Odd))
(assert (= (Tag Tclass.TraitsExtendingTraits.B?) Tagclass.TraitsExtendingTraits.B?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.B?) tytagFamily$B))
(assert (= (Tag Tclass.TraitsExtendingTraits.C?) Tagclass.TraitsExtendingTraits.C?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.C?) tytagFamily$C))
(assert (= (Tag Tclass.TraitsExtendingTraits.C) Tagclass.TraitsExtendingTraits.C))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.C) tytagFamily$C))
(assert (= (Tag Tclass.TraitsExtendingTraits.M?) Tagclass.TraitsExtendingTraits.M?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.M?) tytagFamily$M))
(assert (= (Tag Tclass.TraitsExtendingTraits.N?) Tagclass.TraitsExtendingTraits.N?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.N?) tytagFamily$N))
(assert (forall ((TraitsExtendingTraits.K$Y@@15 T@U) ($o@@40 T@U) ) (!  (=> ($Is refType $o@@40 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@15)) ($Is refType $o@@40 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@15 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3233|
 :pattern ( ($Is refType $o@@40 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@15)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@16 T@U) (bx@@42 T@U) ) (!  (=> ($IsBox bx@@42 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@16)) ($IsBox bx@@42 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@16 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3231|
 :pattern ( ($IsBox bx@@42 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@16)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@16 T@U) (TraitsExtendingTraits.A$Y1@@16 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@41 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (= $o@@41 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@41) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@41) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |3140|
)) (= (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16 $h0@@0 this@@6) (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16 $h1@@0 this@@6))))
 :qid |unknown.0:0|
 :skolemid |3141|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16 $h1@@0 this@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@17 T@U) (TraitsExtendingTraits.A$Y1@@17 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@17 TraitsExtendingTraits.A$Y1@@17)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@42 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (= $o@@42 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@42) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@42) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |3146|
)) (= (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@17 TraitsExtendingTraits.A$Y1@@17 $h0@@1 this@@7) (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@17 TraitsExtendingTraits.A$Y1@@17 $h1@@1 this@@7))))
 :qid |unknown.0:0|
 :skolemid |3147|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@17 TraitsExtendingTraits.A$Y1@@17 $h1@@1 this@@7))
)))
(assert (forall (($o@@43 T@U) ) (! (= ($Is refType $o@@43 Tclass.TraitsExtendingTraits.B?)  (or (= $o@@43 null) (implements$TraitsExtendingTraits.B (dtype $o@@43))))
 :qid |unknown.0:0|
 :skolemid |3154|
 :pattern ( ($Is refType $o@@43 Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall (($o@@44 T@U) ) (! (= ($Is refType $o@@44 Tclass.TraitsExtendingTraits.C?)  (or (= $o@@44 null) (implements$TraitsExtendingTraits.C (dtype $o@@44))))
 :qid |unknown.0:0|
 :skolemid |3165|
 :pattern ( ($Is refType $o@@44 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@45 T@U) ) (! (= ($Is refType $o@@45 Tclass.TraitsExtendingTraits.M?)  (or (= $o@@45 null) (implements$TraitsExtendingTraits.M (dtype $o@@45))))
 :qid |unknown.0:0|
 :skolemid |3189|
 :pattern ( ($Is refType $o@@45 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@46 T@U) ) (! (= ($Is refType $o@@46 Tclass.TraitsExtendingTraits.N?)  (or (= $o@@46 null) (implements$TraitsExtendingTraits.N (dtype $o@@46))))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($Is refType $o@@46 Tclass.TraitsExtendingTraits.N?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@18 T@U) (TraitsExtendingTraits.A$Y1@@18 T@U) ($Heap@@5 T@U) (this@@8 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0@@18 TraitsExtendingTraits.A$Y1@@18 $Heap@@5 this@@8) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@18 TraitsExtendingTraits.A$Y1@@18)) ($IsAlloc refType this@@8 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@18 TraitsExtendingTraits.A$Y1@@18) $Heap@@5)))))) ($IsBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@18 TraitsExtendingTraits.A$Y1@@18 $Heap@@5 this@@8) TraitsExtendingTraits.A$Y0@@18))
 :qid |unknown.0:0|
 :skolemid |3142|
 :pattern ( (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@18 TraitsExtendingTraits.A$Y1@@18 $Heap@@5 this@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@19 T@U) (TraitsExtendingTraits.A$Y1@@19 T@U) ($Heap@@6 T@U) (this@@9 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY_k#canCall| TraitsExtendingTraits.A$Y0@@19 TraitsExtendingTraits.A$Y1@@19 $Heap@@6 this@@9) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@19 TraitsExtendingTraits.A$Y1@@19)) ($IsAlloc refType this@@9 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@19 TraitsExtendingTraits.A$Y1@@19) $Heap@@6)))))) ($IsBox (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@19 TraitsExtendingTraits.A$Y1@@19 $Heap@@6 this@@9) TraitsExtendingTraits.A$Y0@@19))
 :qid |unknown.0:0|
 :skolemid |3148|
 :pattern ( (TraitsExtendingTraits.A.GetY_k TraitsExtendingTraits.A$Y0@@19 TraitsExtendingTraits.A$Y1@@19 $Heap@@6 this@@9))
))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@10))) (Lit BoxType ($Box realType (real_2_U x@@10))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |2576|
 :pattern ( ($Box realType (real_2_U (LitReal x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2572|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@17 T@U) ($Heap@@7 T@U) (this@@10 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@17 $Heap@@7 this@@10) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@17)) ($IsAlloc refType this@@10 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@17) $Heap@@7)))))) ($IsBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@17 $Heap@@7 this@@10) TraitsExtendingTraits.K$Y@@17))
 :qid |unknown.0:0|
 :skolemid |3180|
 :pattern ( (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@17 $Heap@@7 this@@10))
))))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |2618|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2619|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |2597|
 :pattern ( ($Is realType v@@4 TReal))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2598|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@x#0@0| () Int)
(declare-fun call3formal@this@0 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call2formal@x#0@0@@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |y##0@0| () Real)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun call1formal@TraitsExtendingTraits.A$Y1@0 () T@U)
(declare-fun |call3formal@y#0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#4@0| () Real)
(declare-fun |$rhs#5@0| () Real)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#3@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#2@0| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#1@0| () Bool)
(declare-fun $Heap@@8 () T@U)
(declare-fun |x##0@0| () Real)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@TraitsExtendingTraits.G$X () T@U)
(declare-fun |call1formal@x#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#0@0| () Bool)
(declare-fun |defass#g#0| () Bool)
(declare-fun |g#0| () T@U)
(declare-fun |defass#m#0| () Bool)
(declare-fun |m#0| () T@U)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun |defass#bg#0| () Bool)
(declare-fun |bg#0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(set-info :boogie-vc-id Impl$$TraitsExtendingTraits.__default.Test)
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
 (=> (= (ControlFlow 0 0) 169) (let ((anon28_correct  (and (=> (= (ControlFlow 0 2) (- 0 9)) (<= (LitInt 0) |call2formal@x#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= |call2formal@x#0@0| (LitInt 20))) (=> (and (<= (LitInt 0) |call2formal@x#0@0|) (<= |call2formal@x#0@0| (LitInt 20))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@47) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@47)))
 :qid |TraitCompiledfy.417:12|
 :skolemid |3161|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@47))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@48) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@48) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@48)))
 :qid |TraitCompiledfy.416:12|
 :skolemid |3159|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@48))
)) ($HeapSucc $Heap@9 $Heap@10))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call3formal@this@0 null)) (not true)))))))))))))))))
(let ((anon42_Else_correct  (=> (and (< |call2formal@x#0@0| (LitInt 0)) (= (ControlFlow 0 11) 2)) anon28_correct)))
(let ((anon42_Then_correct  (=> (and (<= (LitInt 0) |call2formal@x#0@0|) (= (ControlFlow 0 10) 2)) anon28_correct)))
(let ((anon26_correct  (and (=> (= (ControlFlow 0 12) (- 0 18)) (<= (LitInt 0) |call2formal@x#0@0@@0|)) (and (=> (= (ControlFlow 0 12) (- 0 17)) (<= |call2formal@x#0@0@@0| (LitInt 20))) (=> (and (<= (LitInt 0) |call2formal@x#0@0@@0|) (<= |call2formal@x#0@0@@0| (LitInt 20))) (and (=> (= (ControlFlow 0 12) (- 0 16)) true) (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@49) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@49) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@49)))
 :qid |TraitCompiledfy.439:12|
 :skolemid |3206|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@49))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (<= (LitInt 0) |call2formal@x#0@0|) (<= |call2formal@x#0@0| (LitInt 20))) (and (forall (($o@@50 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@50) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@50) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@50)))
 :qid |TraitCompiledfy.432:12|
 :skolemid |3195|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@50))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (=> (= (ControlFlow 0 12) 10) anon42_Then_correct) (=> (= (ControlFlow 0 12) 11) anon42_Else_correct))))))))))))))))
(let ((anon41_Else_correct  (=> (and (< |call2formal@x#0@0@@0| (LitInt 0)) (= (ControlFlow 0 20) 12)) anon26_correct)))
(let ((anon41_Then_correct  (=> (and (<= (LitInt 0) |call2formal@x#0@0@@0|) (= (ControlFlow 0 19) 12)) anon26_correct)))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 21) (- 0 50)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 21) (- 0 49)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 21) (- 0 48)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 21) (- 0 47)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 21) (- 0 46)) true) (and (=> (= (ControlFlow 0 21) (- 0 45)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 21) (- 0 44)) true) (and (=> (= (ControlFlow 0 21) (- 0 43)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 21) (- 0 42)) true) (and (=> (= (ControlFlow 0 21) (- 0 41)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 21) (- 0 40)) true) (and (=> (= (ControlFlow 0 21) (- 0 39)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 21) (- 0 38)) true) (and (=> (= (ControlFlow 0 21) (- 0 37)) (or (not (= call3formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.A? TReal Tclass.TraitsExtendingTraits.Odd) $Heap@4) (=> (and (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@4 call3formal@this@0) (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@4 call3formal@this@0)) (and (=> (= (ControlFlow 0 21) (- 0 36)) true) (and (=> (= (ControlFlow 0 21) (- 0 35)) (or (not (= call3formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.K? TReal) $Heap@4) (=> (and (|TraitsExtendingTraits.K.GetY_k#canCall| TReal $Heap@4 call3formal@this@0) (|TraitsExtendingTraits.K.GetY_k#canCall| TReal $Heap@4 call3formal@this@0)) (and (=> (= (ControlFlow 0 21) (- 0 34)) true) (and (=> (= (ControlFlow 0 21) (- 0 33)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (= |y##0@0| (LitReal 1.2)) (and (=> (= (ControlFlow 0 21) (- 0 32)) (forall (($o@@51 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@51) alloc)))) (= $o@@51 call3formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@51 $f@@3)))
 :qid |TraitCompiledfy.473:11|
 :skolemid |3122|
))) (=> (forall (($o@@52 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@52) alloc)))) (= $o@@52 call3formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@52 $f@@4)))
 :qid |TraitCompiledfy.473:11|
 :skolemid |3122|
)) (=> (and (= call1formal@TraitsExtendingTraits.A$Y1@0 Tclass.TraitsExtendingTraits.Odd) (= |call3formal@y#0@0| ($Box realType (real_2_U |y##0@0|)))) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@53 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@53) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@53) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@53)) (= $o@@53 call3formal@this@0)))
 :qid |TraitCompiledfy.401:12|
 :skolemid |3138|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@53))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 21) (- 0 31)) true) (and (=> (= (ControlFlow 0 21) (- 0 30)) (or (not (= call3formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.A? TReal Tclass.TraitsExtendingTraits.Odd) $Heap@5) (=> (and (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0) (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0)) (and (=> (= (ControlFlow 0 21) (- 0 29)) true) (and (=> (= (ControlFlow 0 21) (- 0 28)) (or (not (= call3formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.K? TReal) $Heap@5) (=> (and (|TraitsExtendingTraits.K.GetY_k#canCall| TReal $Heap@5 call3formal@this@0) (|TraitsExtendingTraits.K.GetY_k#canCall| TReal $Heap@5 call3formal@this@0)) (and (=> (= (ControlFlow 0 21) (- 0 27)) true) (and (=> (= (ControlFlow 0 21) (- 0 26)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.A? TReal Tclass.TraitsExtendingTraits.Odd) $Heap@5) (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0)) (and (|TraitsExtendingTraits.A.GetY#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0) (= |$rhs#4@0| (U_2_real ($Unbox realType (TraitsExtendingTraits.A.GetY TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0)))))) (and (=> (= (ControlFlow 0 21) (- 0 25)) true) (and (=> (= (ControlFlow 0 21) (- 0 24)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.TraitsExtendingTraits.A? TReal Tclass.TraitsExtendingTraits.Odd) $Heap@5) (|TraitsExtendingTraits.A.GetY_k#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0)) (and (|TraitsExtendingTraits.A.GetY_k#canCall| TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0) (= |$rhs#5@0| (U_2_real ($Unbox realType (TraitsExtendingTraits.A.GetY_k TReal Tclass.TraitsExtendingTraits.Odd $Heap@5 call3formal@this@0)))))) (and (=> (= (ControlFlow 0 21) (- 0 23)) true) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (<= (LitInt 0) |call2formal@x#0@0@@0|) (<= |call2formal@x#0@0@@0| (LitInt 20))) (and (forall (($o@@54 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@54) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@54) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@54)))
 :qid |TraitCompiledfy.432:12|
 :skolemid |3195|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@54))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 21) 19) anon41_Then_correct) (=> (= (ControlFlow 0 21) 20) anon41_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon40_Else_correct  (=> (and (not (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))))) (= (ControlFlow 0 54) 21)) anon24_correct)))
(let ((anon40_Then_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 51) (- 0 53)) true) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 51) 21) anon24_correct))))))
(let ((anon39_Else_correct  (=> (not (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))))) (and (=> (= (ControlFlow 0 58) 51) anon40_Then_correct) (=> (= (ControlFlow 0 58) 54) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 55) (- 0 57)) true) (and (=> (= (ControlFlow 0 55) (- 0 56)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 55) 51) anon40_Then_correct) (=> (= (ControlFlow 0 55) 54) anon40_Else_correct)))))))
(let ((anon38_Else_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b))) (and (=> (= (ControlFlow 0 62) 55) anon39_Then_correct) (=> (= (ControlFlow 0 62) 58) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 59) (- 0 61)) true) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 59) 55) anon39_Then_correct) (=> (= (ControlFlow 0 59) 58) anon39_Else_correct)))))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 63) (- 0 80)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 63) (- 0 79)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 63) (- 0 78)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 63) (- 0 77)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (=> (and (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 63) (- 0 76)) true) (and (=> (= (ControlFlow 0 63) (- 0 75)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 63) (- 0 74)) true) (and (=> (= (ControlFlow 0 63) (- 0 73)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 63) (- 0 72)) true) (and (=> (= (ControlFlow 0 63) (- 0 71)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 63) (- 0 70)) true) (and (=> (= (ControlFlow 0 63) (- 0 69)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 63) (- 0 68)) true) (and (=> (= (ControlFlow 0 63) (- 0 67)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 63) (- 0 66)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b)) (=> (= |$rhs#3@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b ($Box boolType (bool_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 63) (- 0 65)) true) (and (=> (= (ControlFlow 0 63) (- 0 64)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 63) 59) anon38_Then_correct) (=> (= (ControlFlow 0 63) 62) anon38_Else_correct))))))))))))))))))))))))))
(let ((anon37_Else_correct  (=> (and (not (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))))) (= (ControlFlow 0 84) 63)) anon18_correct)))
(let ((anon37_Then_correct  (=> (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 81) (- 0 83)) true) (and (=> (= (ControlFlow 0 81) (- 0 82)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 81) 63) anon18_correct))))))
(let ((anon36_Else_correct  (=> (not (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 88) 81) anon37_Then_correct) (=> (= (ControlFlow 0 88) 84) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 85) (- 0 87)) true) (and (=> (= (ControlFlow 0 85) (- 0 86)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 85) 81) anon37_Then_correct) (=> (= (ControlFlow 0 85) 84) anon37_Else_correct)))))))
(let ((anon35_Else_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 92) 85) anon36_Then_correct) (=> (= (ControlFlow 0 92) 88) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) TraitsExtendingTraits.B.b))) (and (=> (= (ControlFlow 0 89) (- 0 91)) true) (and (=> (= (ControlFlow 0 89) (- 0 90)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 89) 85) anon36_Then_correct) (=> (= (ControlFlow 0 89) 88) anon36_Else_correct)))))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 93) (- 0 110)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 93) (- 0 109)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 93) (- 0 108)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 93) (- 0 107)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 93) (- 0 106)) true) (and (=> (= (ControlFlow 0 93) (- 0 105)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 93) (- 0 104)) true) (and (=> (= (ControlFlow 0 93) (- 0 103)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 93) (- 0 102)) true) (and (=> (= (ControlFlow 0 93) (- 0 101)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 93) (- 0 100)) true) (and (=> (= (ControlFlow 0 93) (- 0 99)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 93) (- 0 98)) true) (and (=> (= (ControlFlow 0 93) (- 0 97)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 93) (- 0 96)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b)) (=> (= |$rhs#2@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b ($Box boolType (bool_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 93) (- 0 95)) true) (and (=> (= (ControlFlow 0 93) (- 0 94)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 93) 89) anon35_Then_correct) (=> (= (ControlFlow 0 93) 92) anon35_Else_correct))))))))))))))))))))))))))
(let ((anon34_Else_correct  (=> (and (not (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))))) (= (ControlFlow 0 114) 93)) anon12_correct)))
(let ((anon34_Then_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 111) (- 0 113)) true) (and (=> (= (ControlFlow 0 111) (- 0 112)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 111) 93) anon12_correct))))))
(let ((anon33_Else_correct  (=> (not (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))))) (and (=> (= (ControlFlow 0 118) 111) anon34_Then_correct) (=> (= (ControlFlow 0 118) 114) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 115) (- 0 117)) true) (and (=> (= (ControlFlow 0 115) (- 0 116)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 115) 111) anon34_Then_correct) (=> (= (ControlFlow 0 115) 114) anon34_Else_correct)))))))
(let ((anon32_Else_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b))) (and (=> (= (ControlFlow 0 122) 115) anon33_Then_correct) (=> (= (ControlFlow 0 122) 118) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 119) (- 0 121)) true) (and (=> (= (ControlFlow 0 119) (- 0 120)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 119) 115) anon33_Then_correct) (=> (= (ControlFlow 0 119) 118) anon33_Else_correct)))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 123) (- 0 140)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 123) (- 0 139)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 123) (- 0 138)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 123) (- 0 137)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (=> (and (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 123) (- 0 136)) true) (and (=> (= (ControlFlow 0 123) (- 0 135)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 123) (- 0 134)) true) (and (=> (= (ControlFlow 0 123) (- 0 133)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 123) (- 0 132)) true) (and (=> (= (ControlFlow 0 123) (- 0 131)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 123) (- 0 130)) true) (and (=> (= (ControlFlow 0 123) (- 0 129)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 123) (- 0 128)) true) (and (=> (= (ControlFlow 0 123) (- 0 127)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 123) (- 0 126)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b)) (=> (= |$rhs#1@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b ($Box boolType (bool_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 123) (- 0 125)) true) (and (=> (= (ControlFlow 0 123) (- 0 124)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 123) 119) anon32_Then_correct) (=> (= (ControlFlow 0 123) 122) anon32_Else_correct))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (not (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))))) (= (ControlFlow 0 144) 123)) anon6_correct)))
(let ((anon31_Then_correct  (=> (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 141) (- 0 143)) true) (and (=> (= (ControlFlow 0 141) (- 0 142)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 141) 123) anon6_correct))))))
(let ((anon30_Else_correct  (=> (not (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))))) (and (=> (= (ControlFlow 0 148) 141) anon31_Then_correct) (=> (= (ControlFlow 0 148) 144) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 145) (- 0 147)) true) (and (=> (= (ControlFlow 0 145) (- 0 146)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 145) 141) anon31_Then_correct) (=> (= (ControlFlow 0 145) 144) anon31_Else_correct)))))))
(let ((anon29_Else_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b)))) (and (=> (= (ControlFlow 0 152) 145) anon30_Then_correct) (=> (= (ControlFlow 0 152) 148) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) TraitsExtendingTraits.B.b))) (and (=> (= (ControlFlow 0 149) (- 0 151)) true) (and (=> (= (ControlFlow 0 149) (- 0 150)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 149) 145) anon30_Then_correct) (=> (= (ControlFlow 0 149) 148) anon30_Else_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@8 alloc false)) (= |x##0@0| (LitReal 5.2))) (=> (and (and (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass.TraitsExtendingTraits.G call0formal@TraitsExtendingTraits.G$X)) ($IsAlloc refType call3formal@this (Tclass.TraitsExtendingTraits.G call0formal@TraitsExtendingTraits.G$X) $Heap@@8))) (= |call1formal@x#0@0| ($Box realType (real_2_U |x##0@0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass.TraitsExtendingTraits.G TReal)) ($IsAlloc refType call3formal@this@0 (Tclass.TraitsExtendingTraits.G TReal) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 call3formal@this@0) alloc))))) (and (forall (($o@@55 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@55) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@55) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@55)))
 :qid |TraitCompiledfy.446:5|
 :skolemid |3223|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@55))
)) ($HeapSucc $Heap@@8 $Heap@0)))) (and (=> (= (ControlFlow 0 153) (- 0 168)) true) (and (=> (= (ControlFlow 0 153) (- 0 167)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 153) (- 0 166)) true) (and (=> (= (ControlFlow 0 153) (- 0 165)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 153) (- 0 164)) true) (and (=> (= (ControlFlow 0 153) (- 0 163)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 153) (- 0 162)) true) (and (=> (= (ControlFlow 0 153) (- 0 161)) true) (and (=> (= (ControlFlow 0 153) (- 0 160)) true) (and (=> (= (ControlFlow 0 153) (- 0 159)) true) (and (=> (= (ControlFlow 0 153) (- 0 158)) true) (and (=> (= (ControlFlow 0 153) (- 0 157)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 153) (- 0 156)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call3formal@this@0 TraitsExtendingTraits.B.b)) (=> (= |$rhs#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) TraitsExtendingTraits.B.b ($Box boolType (bool_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 153) (- 0 155)) true) (and (=> (= (ControlFlow 0 153) (- 0 154)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 153) 149) anon29_Then_correct) (=> (= (ControlFlow 0 153) 152) anon29_Else_correct)))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@8) ($IsHeapAnchor $Heap@@8)) (=> (and (and (=> |defass#g#0| (and ($Is refType |g#0| (Tclass.TraitsExtendingTraits.G TReal)) ($IsAlloc refType |g#0| (Tclass.TraitsExtendingTraits.G TReal) $Heap@@8))) true) (and (=> |defass#m#0| (and ($Is refType |m#0| Tclass.TraitsExtendingTraits.M) ($IsAlloc refType |m#0| Tclass.TraitsExtendingTraits.M $Heap@@8))) true)) (=> (and (and (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass.TraitsExtendingTraits.N) ($IsAlloc refType |n#0| Tclass.TraitsExtendingTraits.N $Heap@@8))) true) (and (=> |defass#bg#0| (and ($Is refType |bg#0| Tclass.TraitsExtendingTraits.B) ($IsAlloc refType |bg#0| Tclass.TraitsExtendingTraits.B $Heap@@8))) true)) (and (and (=> |defass#a#0| (and ($Is refType |a#0| (Tclass.TraitsExtendingTraits.A TReal Tclass.TraitsExtendingTraits.Odd)) ($IsAlloc refType |a#0| (Tclass.TraitsExtendingTraits.A TReal Tclass.TraitsExtendingTraits.Odd) $Heap@@8))) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 169) 153)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
