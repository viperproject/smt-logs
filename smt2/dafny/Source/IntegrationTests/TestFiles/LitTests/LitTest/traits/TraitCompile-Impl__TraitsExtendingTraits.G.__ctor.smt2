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
(declare-fun $FunctionContextHeight () Int)
(declare-fun TraitsExtendingTraits.A.y1 (T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.A? (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.K (T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.G? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun Tclass.TraitsExtendingTraits.K (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K? (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.G (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.M (T@U) Bool)
(declare-fun implements$_System.object (T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.N (T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.C (T@U) Bool)
(declare-fun TraitsExtendingTraits.B.b () T@U)
(declare-fun Tclass.TraitsExtendingTraits.B? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.C? () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.M? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass.TraitsExtendingTraits.B () T@U)
(declare-fun Tclass.TraitsExtendingTraits.C () T@U)
(declare-fun Tclass.TraitsExtendingTraits.M () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TraitsExtendingTraits.A.y0 () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A (T@U T@U) T@U)
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
(assert (distinct TBool TagBool alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.TraitsExtendingTraits.G Tagclass.TraitsExtendingTraits.M Tagclass.TraitsExtendingTraits.N Tagclass.TraitsExtendingTraits.B Tagclass.TraitsExtendingTraits.Odd Tagclass.TraitsExtendingTraits.A Tagclass.TraitsExtendingTraits.A? Tagclass.TraitsExtendingTraits.K? class.TraitsExtendingTraits.A? class.TraitsExtendingTraits.B? Tagclass.TraitsExtendingTraits.B? Tagclass.TraitsExtendingTraits.C? Tagclass.TraitsExtendingTraits.C Tagclass.TraitsExtendingTraits.K Tagclass.TraitsExtendingTraits.M? Tagclass.TraitsExtendingTraits.N? Tagclass.TraitsExtendingTraits.G? tytagFamily$object tytagFamily$G tytagFamily$M tytagFamily$N tytagFamily$B tytagFamily$Odd tytagFamily$A tytagFamily$K tytagFamily$C field$b field$y0)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0 T@U) (TraitsExtendingTraits.A$Y1 T@U) ($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAllocBox (TraitsExtendingTraits.A.y1 TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $o) TraitsExtendingTraits.A$Y1 $h))
 :qid |unknown.0:0|
 :skolemid |3136|
 :pattern ( (TraitsExtendingTraits.A.y1 TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@0 T@U) (TraitsExtendingTraits.A$Y1@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0))) ($IsBox (TraitsExtendingTraits.A.y1 TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0 $o@@0) TraitsExtendingTraits.A$Y1@@0))
 :qid |unknown.0:0|
 :skolemid |3135|
 :pattern ( (TraitsExtendingTraits.A.y1 TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0 $o@@0))
))))
(assert (forall ((TraitsExtendingTraits.G$X T@U) ) (! (implements$TraitsExtendingTraits.K (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X) TraitsExtendingTraits.G$X)
 :qid |unknown.0:0|
 :skolemid |3216|
)))
(assert (forall ((TraitsExtendingTraits.G$X@@0 T@U) ) (! (implements$TraitsExtendingTraits.K (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@0) TraitsExtendingTraits.G$X@@0)
 :qid |unknown.0:0|
 :skolemid |3217|
)))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h@@0)
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h@@0))
)))
(assert (forall ((TraitsExtendingTraits.K$Y T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@1) ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@1))
 :qid |unknown.0:0|
 :skolemid |3187|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@1))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@1 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@1) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@1) $h@@2))
 :qid |unknown.0:0|
 :skolemid |3226|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@1) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@1) $h@@2))
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
(assert (forall (($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass.TraitsExtendingTraits.B?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) TraitsExtendingTraits.B.b)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3156|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) TraitsExtendingTraits.B.b)))
)))
(assert (forall ((bx T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.TraitsExtendingTraits.C? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx Tclass._System.object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3228|
 :pattern ( ($IsAllocBox bx Tclass.TraitsExtendingTraits.C? $h@@4))
)))
(assert (forall ((bx@@0 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.M? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.B? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3236|
 :pattern ( ($IsAllocBox bx@@0 Tclass.TraitsExtendingTraits.M? $h@@5))
)))
(assert (forall ((bx@@1 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.TraitsExtendingTraits.M? $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx@@1 Tclass._System.object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |3240|
 :pattern ( ($IsAllocBox bx@@1 Tclass.TraitsExtendingTraits.M? $h@@6))
)))
(assert (forall ((bx@@2 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.N? $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.B? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3244|
 :pattern ( ($IsAllocBox bx@@2 Tclass.TraitsExtendingTraits.N? $h@@7))
)))
(assert (forall ((bx@@3 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.N? $h@@8) ($IsGoodHeap $h@@8)) ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.C? $h@@8))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( ($IsAllocBox bx@@3 Tclass.TraitsExtendingTraits.N? $h@@8))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@9) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2923|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@9))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B $h@@10) ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B? $h@@10))
 :qid |unknown.0:0|
 :skolemid |3163|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.B? $h@@10))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C $h@@11) ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C? $h@@11))
 :qid |unknown.0:0|
 :skolemid |3169|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitsExtendingTraits.C? $h@@11))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M $h@@12) ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitsExtendingTraits.M? $h@@12))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N $h@@13) ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N? $h@@13))
 :qid |unknown.0:0|
 :skolemid |3210|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitsExtendingTraits.N? $h@@13))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@0 T@U) ($o@@2 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@0) $h@@14)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3171|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@0) $h@@14))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@6 T@U) ($o@@3 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@6) $h@@15)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3215|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@6) $h@@15))
)))
(assert (= (FDim TraitsExtendingTraits.B.b) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.B? field$b) TraitsExtendingTraits.B.b))
(assert  (not ($IsGhostField TraitsExtendingTraits.B.b)))
(assert (= (FDim TraitsExtendingTraits.A.y0) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.A? field$y0) TraitsExtendingTraits.A.y0))
(assert  (not ($IsGhostField TraitsExtendingTraits.A.y0)))
(assert (forall ((TraitsExtendingTraits.G$X@@7 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@7)) ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@7)))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@7)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@8 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@8)) ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@8)))
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@8)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@9 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@9)) ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@9)))
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@9)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@10)) ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@10)))
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@10)))
)))
(assert (forall (($o@@6 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@16)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2920|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@16))
)))
(assert (forall (($o@@7 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.TraitsExtendingTraits.B? $h@@17)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3155|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.TraitsExtendingTraits.B? $h@@17))
)))
(assert (forall (($o@@8 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.TraitsExtendingTraits.C? $h@@18)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3166|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.TraitsExtendingTraits.C? $h@@18))
)))
(assert (forall (($o@@9 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass.TraitsExtendingTraits.M? $h@@19)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3190|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.TraitsExtendingTraits.M? $h@@19))
)))
(assert (forall (($o@@10 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass.TraitsExtendingTraits.N? $h@@20)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3201|
 :pattern ( ($IsAlloc refType $o@@10 Tclass.TraitsExtendingTraits.N? $h@@20))
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
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2571|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@1 T@U) (TraitsExtendingTraits.A$Y1@@1 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1))  (and ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((TraitsExtendingTraits.K$Y@@1 T@U) (|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@1))  (and ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1)) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3186|
 :pattern ( ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@1)))
 :pattern ( ($Is refType |c#0@@7| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1)))
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
(assert (forall ((TraitsExtendingTraits.A$Y0@@2 T@U) (TraitsExtendingTraits.A$Y1@@2 T@U) ($h@@21 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@11) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@2))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@11) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@12 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12)) Tagclass.TraitsExtendingTraits.G) (= (TagFamily (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12)) tytagFamily$G))
 :qid |unknown.0:0|
 :skolemid |3103|
 :pattern ( (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@12))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@2 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)) Tagclass.TraitsExtendingTraits.K?) (= (TagFamily (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@3 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3)) Tagclass.TraitsExtendingTraits.K) (= (TagFamily (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3173|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@13 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13)) Tagclass.TraitsExtendingTraits.G?) (= (TagFamily (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13)) tytagFamily$G))
 :qid |unknown.0:0|
 :skolemid |3211|
 :pattern ( (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@13))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@3 T@U) (TraitsExtendingTraits.A$Y1@@3 T@U) (|c#0@@9| T@U) ($h@@22 T@U) ) (! (= ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@22) ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@22))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@22))
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $h@@22))
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
(assert (forall ((TraitsExtendingTraits.G$X@@14 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14))))
 :qid |unknown.0:0|
 :skolemid |3214|
 :pattern ( ($Is refType $o@@12 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@14)))
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
(assert (forall ((TraitsExtendingTraits.G$X@@15 T@U) (bx@@18 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@15) $h@@23) ($IsGoodHeap $h@@23)) ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@15) $h@@23))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsAllocBox bx@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@15) $h@@23))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@16 T@U) (bx@@19 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@16) $h@@24) ($IsGoodHeap $h@@24)) ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@16) $h@@24))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox bx@@19 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@16) $h@@24))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@17 T@U) ($o@@13 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@17) $heap) ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@17) $heap))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc refType $o@@13 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@17) $heap))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@18 T@U) ($o@@14 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@14 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@18) $heap@@0) ($IsAlloc refType $o@@14 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.G$X@@18) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAlloc refType $o@@14 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@18) $heap@@0))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 1)))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@19 T@U) (bx@@20 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsAllocBox bx@@20 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@19) $h@@25) ($IsGoodHeap $h@@25)) ($IsAllocBox bx@@20 Tclass.TraitsExtendingTraits.M? $h@@25))
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( ($IsAllocBox bx@@20 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@19) $h@@25))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@20 T@U) (bx@@21 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsAllocBox bx@@21 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@20) $h@@26) ($IsGoodHeap $h@@26)) ($IsAllocBox bx@@21 Tclass._System.object? $h@@26))
 :qid |unknown.0:0|
 :skolemid |3264|
 :pattern ( ($IsAllocBox bx@@21 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@20) $h@@26))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@21 T@U) (bx@@22 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsAllocBox bx@@22 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@21) $h@@27) ($IsGoodHeap $h@@27)) ($IsAllocBox bx@@22 Tclass.TraitsExtendingTraits.N? $h@@27))
 :qid |unknown.0:0|
 :skolemid |3268|
 :pattern ( ($IsAllocBox bx@@22 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@21) $h@@27))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@22 T@U) (bx@@23 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsAllocBox bx@@23 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@22) $h@@28) ($IsGoodHeap $h@@28)) ($IsAllocBox bx@@23 Tclass.TraitsExtendingTraits.C? $h@@28))
 :qid |unknown.0:0|
 :skolemid |3272|
 :pattern ( ($IsAllocBox bx@@23 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@22) $h@@28))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@23 T@U) ($o@@15 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@15 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@23) $heap@@1) ($IsAlloc refType $o@@15 Tclass.TraitsExtendingTraits.M? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3262|
 :pattern ( ($IsAlloc refType $o@@15 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@23) $heap@@1))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@24 T@U) ($o@@16 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@16 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@24) $heap@@2) ($IsAlloc refType $o@@16 Tclass._System.object? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3266|
 :pattern ( ($IsAlloc refType $o@@16 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@24) $heap@@2))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@25 T@U) ($o@@17 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@17 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@25) $heap@@3) ($IsAlloc refType $o@@17 Tclass.TraitsExtendingTraits.N? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3270|
 :pattern ( ($IsAlloc refType $o@@17 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@25) $heap@@3))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@26 T@U) ($o@@18 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@26) $heap@@4) ($IsAlloc refType $o@@18 Tclass.TraitsExtendingTraits.C? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3274|
 :pattern ( ($IsAlloc refType $o@@18 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@26) $heap@@4))
)))
(assert (forall (($o@@19 T@U) ($heap@@5 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass.TraitsExtendingTraits.C? $heap@@5) ($IsAlloc refType $o@@19 Tclass._System.object? $heap@@5))
 :qid |unknown.0:0|
 :skolemid |3230|
 :pattern ( ($IsAlloc refType $o@@19 Tclass.TraitsExtendingTraits.C? $heap@@5))
)))
(assert (forall (($o@@20 T@U) ($heap@@6 T@U) ) (!  (=> ($IsAlloc refType $o@@20 Tclass.TraitsExtendingTraits.M? $heap@@6) ($IsAlloc refType $o@@20 Tclass.TraitsExtendingTraits.B? $heap@@6))
 :qid |unknown.0:0|
 :skolemid |3238|
 :pattern ( ($IsAlloc refType $o@@20 Tclass.TraitsExtendingTraits.M? $heap@@6))
)))
(assert (forall (($o@@21 T@U) ($heap@@7 T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass.TraitsExtendingTraits.M? $heap@@7) ($IsAlloc refType $o@@21 Tclass._System.object? $heap@@7))
 :qid |unknown.0:0|
 :skolemid |3242|
 :pattern ( ($IsAlloc refType $o@@21 Tclass.TraitsExtendingTraits.M? $heap@@7))
)))
(assert (forall (($o@@22 T@U) ($heap@@8 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.N? $heap@@8) ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.B? $heap@@8))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( ($IsAlloc refType $o@@22 Tclass.TraitsExtendingTraits.N? $heap@@8))
)))
(assert (forall (($o@@23 T@U) ($heap@@9 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass.TraitsExtendingTraits.N? $heap@@9) ($IsAlloc refType $o@@23 Tclass.TraitsExtendingTraits.C? $heap@@9))
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( ($IsAlloc refType $o@@23 Tclass.TraitsExtendingTraits.N? $heap@@9))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@4 T@U) (TraitsExtendingTraits.A$Y1@@4 T@U) ($o@@24 T@U) ($h@@29 T@U) ) (! (= ($IsAlloc refType $o@@24 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4) $h@@29)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsAlloc refType $o@@24 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4) $h@@29))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@4 T@U) (bx@@24 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4) $h@@30) ($IsGoodHeap $h@@30)) ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@4 Tclass.TraitsExtendingTraits.Odd) $h@@30))
 :qid |unknown.0:0|
 :skolemid |3232|
 :pattern ( ($IsAllocBox bx@@24 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4) $h@@30))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@5 T@U) ($o@@25 T@U) ($heap@@10 T@U) ) (!  (=> ($IsAlloc refType $o@@25 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5) $heap@@10) ($IsAlloc refType $o@@25 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@5 Tclass.TraitsExtendingTraits.Odd) $heap@@10))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsAlloc refType $o@@25 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5) $heap@@10))
)))
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
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 TBool) (and (= ($Box boolType ($Unbox boolType bx@@25)) bx@@25) ($Is boolType ($Unbox boolType bx@@25) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2585|
 :pattern ( ($IsBox bx@@25 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2594|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@5 T@U) (TraitsExtendingTraits.A$Y1@@5 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5)) TraitsExtendingTraits.A$Y0@@5)
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@6 T@U) (TraitsExtendingTraits.A$Y1@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)) TraitsExtendingTraits.A$Y1@@6)
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@7 T@U) (TraitsExtendingTraits.A$Y1@@7 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)) TraitsExtendingTraits.A$Y0@@7)
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@8 T@U) (TraitsExtendingTraits.A$Y1@@8 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)) TraitsExtendingTraits.A$Y1@@8)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8))
)))
(assert (forall (($o@@26 T@U) ) (! ($Is refType $o@@26 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2919|
 :pattern ( ($Is refType $o@@26 Tclass._System.object?))
)))
(assert (forall (($h@@31 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass.TraitsExtendingTraits.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@27) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@27) TraitsExtendingTraits.B.b)) TBool $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3157|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@27) TraitsExtendingTraits.B.b)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@9 T@U) (TraitsExtendingTraits.A$Y1@@9 T@U) ($o@@28 T@U) ) (! (= ($Is refType $o@@28 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9))  (or (= $o@@28 null) (implements$TraitsExtendingTraits.A (dtype $o@@28) TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( ($Is refType $o@@28 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@27 T@U) ) (! (= (Tclass.TraitsExtendingTraits.G_0 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@27)) TraitsExtendingTraits.G$X@@27)
 :qid |unknown.0:0|
 :skolemid |3104|
 :pattern ( (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@27))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K?_0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@6)) TraitsExtendingTraits.K$Y@@6)
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@6))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@7 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K_0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@7)) TraitsExtendingTraits.K$Y@@7)
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@7))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@28 T@U) ) (! (= (Tclass.TraitsExtendingTraits.G?_0 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@28)) TraitsExtendingTraits.G$X@@28)
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@28))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@10 T@U) (TraitsExtendingTraits.A$Y1@@10 T@U) ($h@@32 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@29) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@29) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@10 $h@@32))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@29) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@11 T@U) (TraitsExtendingTraits.A$Y1@@11 T@U) (bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)) (and (= ($Box refType ($Unbox refType bx@@26)) bx@@26) ($Is refType ($Unbox refType bx@@26) (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11))))
 :qid |unknown.0:0|
 :skolemid |3114|
 :pattern ( ($IsBox bx@@26 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@12 T@U) (TraitsExtendingTraits.A$Y1@@12 T@U) (bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)) (and (= ($Box refType ($Unbox refType bx@@27)) bx@@27) ($Is refType ($Unbox refType bx@@27) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12))))
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( ($IsBox bx@@27 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@8 T@U) ($o@@30 T@U) ) (! (= ($Is refType $o@@30 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8))  (or (= $o@@30 null) (implements$TraitsExtendingTraits.K (dtype $o@@30) TraitsExtendingTraits.K$Y@@8)))
 :qid |unknown.0:0|
 :skolemid |3170|
 :pattern ( ($Is refType $o@@30 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@31 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@31 $f))  (=> (and (or (not (= $o@@31 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@31) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8402|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@31 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2896|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@29 T@U) ($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@29)) ($Is refType $o@@32 Tclass.TraitsExtendingTraits.M?))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( ($Is refType $o@@32 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@29)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@30 T@U) (bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@30)) ($IsBox bx@@28 Tclass.TraitsExtendingTraits.M?))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( ($IsBox bx@@28 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@30)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@31 T@U) ($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@31)) ($Is refType $o@@33 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( ($Is refType $o@@33 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@31)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@32 T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@32)) ($IsBox bx@@29 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( ($IsBox bx@@29 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@32)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@33 T@U) ($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@33)) ($Is refType $o@@34 Tclass.TraitsExtendingTraits.N?))
 :qid |unknown.0:0|
 :skolemid |3269|
 :pattern ( ($Is refType $o@@34 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@33)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@34 T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@34)) ($IsBox bx@@30 Tclass.TraitsExtendingTraits.N?))
 :qid |unknown.0:0|
 :skolemid |3267|
 :pattern ( ($IsBox bx@@30 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@34)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@35 T@U) ($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@35)) ($Is refType $o@@35 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3273|
 :pattern ( ($Is refType $o@@35 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@35)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@36 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@36)) ($IsBox bx@@31 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3271|
 :pattern ( ($IsBox bx@@31 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@36)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@13 T@U) (TraitsExtendingTraits.A$Y1@@13 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)) Tagclass.TraitsExtendingTraits.A) (= (TagFamily (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@14 T@U) (TraitsExtendingTraits.A$Y1@@14 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) Tagclass.TraitsExtendingTraits.A?) (= (TagFamily (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3115|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@37 T@U) (bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37)) (and (= ($Box refType ($Unbox refType bx@@32)) bx@@32) ($Is refType ($Unbox refType bx@@32) (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37))))
 :qid |unknown.0:0|
 :skolemid |3105|
 :pattern ( ($IsBox bx@@32 (Tclass.TraitsExtendingTraits.G TraitsExtendingTraits.G$X@@37)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@9 T@U) (bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@9)) (and (= ($Box refType ($Unbox refType bx@@33)) bx@@33) ($Is refType ($Unbox refType bx@@33) (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@9))))
 :qid |unknown.0:0|
 :skolemid |3121|
 :pattern ( ($IsBox bx@@33 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@9)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@10 T@U) (bx@@34 T@U) ) (!  (=> ($IsBox bx@@34 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@10)) (and (= ($Box refType ($Unbox refType bx@@34)) bx@@34) ($Is refType ($Unbox refType bx@@34) (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@10))))
 :qid |unknown.0:0|
 :skolemid |3175|
 :pattern ( ($IsBox bx@@34 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@10)))
)))
(assert (forall ((TraitsExtendingTraits.G$X@@38 T@U) (bx@@35 T@U) ) (!  (=> ($IsBox bx@@35 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38)) (and (= ($Box refType ($Unbox refType bx@@35)) bx@@35) ($Is refType ($Unbox refType bx@@35) (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38))))
 :qid |unknown.0:0|
 :skolemid |3213|
 :pattern ( ($IsBox bx@@35 (Tclass.TraitsExtendingTraits.G? TraitsExtendingTraits.G$X@@38)))
)))
(assert (forall (($o@@36 T@U) ) (!  (=> ($Is refType $o@@36 Tclass.TraitsExtendingTraits.C?) ($Is refType $o@@36 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3229|
 :pattern ( ($Is refType $o@@36 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall ((bx@@36 T@U) ) (!  (=> ($IsBox bx@@36 Tclass.TraitsExtendingTraits.C?) ($IsBox bx@@36 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3227|
 :pattern ( ($IsBox bx@@36 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@37 T@U) ) (!  (=> ($Is refType $o@@37 Tclass.TraitsExtendingTraits.M?) ($Is refType $o@@37 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3237|
 :pattern ( ($Is refType $o@@37 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 Tclass.TraitsExtendingTraits.M?) ($IsBox bx@@37 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3235|
 :pattern ( ($IsBox bx@@37 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@38 T@U) ) (!  (=> ($Is refType $o@@38 Tclass.TraitsExtendingTraits.M?) ($Is refType $o@@38 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3241|
 :pattern ( ($Is refType $o@@38 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall ((bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 Tclass.TraitsExtendingTraits.M?) ($IsBox bx@@38 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3239|
 :pattern ( ($IsBox bx@@38 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@39 T@U) ) (!  (=> ($Is refType $o@@39 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@39 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( ($Is refType $o@@39 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 Tclass.TraitsExtendingTraits.N?) ($IsBox bx@@39 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3243|
 :pattern ( ($IsBox bx@@39 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall (($o@@40 T@U) ) (!  (=> ($Is refType $o@@40 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@40 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( ($Is refType $o@@40 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 Tclass.TraitsExtendingTraits.N?) ($IsBox bx@@40 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3247|
 :pattern ( ($IsBox bx@@40 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2672|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7)))
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
(assert (forall ((TraitsExtendingTraits.K$Y@@11 T@U) ($o@@41 T@U) ) (!  (=> ($Is refType $o@@41 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@11)) ($Is refType $o@@41 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@11 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3233|
 :pattern ( ($Is refType $o@@41 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@11)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@12 T@U) (bx@@41 T@U) ) (!  (=> ($IsBox bx@@41 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@12)) ($IsBox bx@@41 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@12 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3231|
 :pattern ( ($IsBox bx@@41 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@12)))
)))
(assert (forall (($o@@42 T@U) ) (! (= ($Is refType $o@@42 Tclass.TraitsExtendingTraits.B?)  (or (= $o@@42 null) (implements$TraitsExtendingTraits.B (dtype $o@@42))))
 :qid |unknown.0:0|
 :skolemid |3154|
 :pattern ( ($Is refType $o@@42 Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall (($o@@43 T@U) ) (! (= ($Is refType $o@@43 Tclass.TraitsExtendingTraits.C?)  (or (= $o@@43 null) (implements$TraitsExtendingTraits.C (dtype $o@@43))))
 :qid |unknown.0:0|
 :skolemid |3165|
 :pattern ( ($Is refType $o@@43 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@44 T@U) ) (! (= ($Is refType $o@@44 Tclass.TraitsExtendingTraits.M?)  (or (= $o@@44 null) (implements$TraitsExtendingTraits.M (dtype $o@@44))))
 :qid |unknown.0:0|
 :skolemid |3189|
 :pattern ( ($Is refType $o@@44 Tclass.TraitsExtendingTraits.M?))
)))
(assert (forall (($o@@45 T@U) ) (! (= ($Is refType $o@@45 Tclass.TraitsExtendingTraits.N?)  (or (= $o@@45 null) (implements$TraitsExtendingTraits.N (dtype $o@@45))))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($Is refType $o@@45 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2572|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2619|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is boolType v@@3 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2598|
 :pattern ( ($Is boolType v@@3 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0@@1| () T@U)
(declare-fun TraitsExtendingTraits.G$X@@39 () T@U)
(set-info :boogie-vc-id Impl$$TraitsExtendingTraits.G.__ctor)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) true)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($IsBox |x#0@@1| TraitsExtendingTraits.G$X@@39) ($IsAllocBox |x#0@@1| TraitsExtendingTraits.G$X@@39 $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
