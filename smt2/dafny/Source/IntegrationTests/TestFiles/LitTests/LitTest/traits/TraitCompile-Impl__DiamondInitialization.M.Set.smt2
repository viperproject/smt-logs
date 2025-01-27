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
(declare-fun Tagclass.DiamondInitialization.M () T@U)
(declare-fun Tagclass.DiamondInitialization.M? () T@U)
(declare-fun class.DiamondInitialization.A? () T@U)
(declare-fun Tagclass.DiamondInitialization.A? () T@U)
(declare-fun Tagclass.DiamondInitialization.A () T@U)
(declare-fun Tagclass.DiamondInitialization.B? () T@U)
(declare-fun Tagclass.DiamondInitialization.B () T@U)
(declare-fun Tagclass.DiamondInitialization.C? () T@U)
(declare-fun Tagclass.DiamondInitialization.C () T@U)
(declare-fun Tagclass.DiamondInitialization.D? () T@U)
(declare-fun Tagclass.DiamondInitialization.D () T@U)
(declare-fun Tagclass.DiamondInitialization.E? () T@U)
(declare-fun Tagclass.DiamondInitialization.E () T@U)
(declare-fun tytagFamily$M () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$D () T@U)
(declare-fun tytagFamily$E () T@U)
(declare-fun field$x () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.DiamondInitialization.A (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.A? (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.B (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.B? (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.C (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.C? (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.E (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.E? (T@U) T@U)
(declare-fun implements$DiamondInitialization.D (T@U) Bool)
(declare-fun Tclass.DiamondInitialization.M? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.DiamondInitialization.D? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.D () T@U)
(declare-fun Tclass.DiamondInitialization.M () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun DiamondInitialization.A.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun implements$DiamondInitialization.B (T@U T@U) Bool)
(declare-fun implements$DiamondInitialization.E (T@U T@U) Bool)
(declare-fun implements$DiamondInitialization.C (T@U T@U) Bool)
(declare-fun implements$DiamondInitialization.A (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.A?_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.A_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.B?_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.B_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.C?_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.C_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.E?_0 (T@U) T@U)
(declare-fun Tclass.DiamondInitialization.E_0 (T@U) T@U)
(declare-fun Mod (Int Int) Int)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.DiamondInitialization.M Tagclass.DiamondInitialization.M? class.DiamondInitialization.A? Tagclass.DiamondInitialization.A? Tagclass.DiamondInitialization.A Tagclass.DiamondInitialization.B? Tagclass.DiamondInitialization.B Tagclass.DiamondInitialization.C? Tagclass.DiamondInitialization.C Tagclass.DiamondInitialization.D? Tagclass.DiamondInitialization.D Tagclass.DiamondInitialization.E? Tagclass.DiamondInitialization.E tytagFamily$M tytagFamily$A tytagFamily$B tytagFamily$C tytagFamily$D tytagFamily$E field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((DiamondInitialization.A$XA T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.DiamondInitialization.A DiamondInitialization.A$XA) $h) ($IsAlloc refType |c#0| (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA) $h))
 :qid |unknown.0:0|
 :skolemid |4586|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.DiamondInitialization.A DiamondInitialization.A$XA) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA) $h))
)))
(assert (forall ((DiamondInitialization.B$XB T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.DiamondInitialization.B DiamondInitialization.B$XB) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB) $h@@0))
 :qid |unknown.0:0|
 :skolemid |4596|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.DiamondInitialization.B DiamondInitialization.B$XB) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB) $h@@0))
)))
(assert (forall ((DiamondInitialization.C$XC T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.DiamondInitialization.C DiamondInitialization.C$XC) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC) $h@@1))
 :qid |unknown.0:0|
 :skolemid |4606|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.DiamondInitialization.C DiamondInitialization.C$XC) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC) $h@@1))
)))
(assert (forall ((DiamondInitialization.E$XE T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.DiamondInitialization.E DiamondInitialization.E$XE) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE) $h@@2))
 :qid |unknown.0:0|
 :skolemid |4622|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.DiamondInitialization.E DiamondInitialization.E$XE) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE) $h@@2))
)))
(assert (implements$DiamondInitialization.D Tclass.DiamondInitialization.M?))
(assert (forall ((bx T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.DiamondInitialization.D? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx (Tclass.DiamondInitialization.A? TInt) $h@@3))
 :qid |unknown.0:0|
 :skolemid |4642|
 :pattern ( ($IsAllocBox bx Tclass.DiamondInitialization.D? $h@@3))
)))
(assert (forall ((bx@@0 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.DiamondInitialization.M? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@0 (Tclass.DiamondInitialization.B? TInt) $h@@4))
 :qid |unknown.0:0|
 :skolemid |4654|
 :pattern ( ($IsAllocBox bx@@0 Tclass.DiamondInitialization.M? $h@@4))
)))
(assert (forall ((bx@@1 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.DiamondInitialization.M? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@1 (Tclass.DiamondInitialization.E? TInt) $h@@5))
 :qid |unknown.0:0|
 :skolemid |4658|
 :pattern ( ($IsAllocBox bx@@1 Tclass.DiamondInitialization.M? $h@@5))
)))
(assert (forall ((bx@@2 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.DiamondInitialization.M? $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx@@2 (Tclass.DiamondInitialization.C? TInt) $h@@6))
 :qid |unknown.0:0|
 :skolemid |4662|
 :pattern ( ($IsAllocBox bx@@2 Tclass.DiamondInitialization.M? $h@@6))
)))
(assert (forall ((bx@@3 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.DiamondInitialization.M? $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@3 (Tclass.DiamondInitialization.A? TInt) $h@@7))
 :qid |unknown.0:0|
 :skolemid |4670|
 :pattern ( ($IsAllocBox bx@@3 Tclass.DiamondInitialization.M? $h@@7))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.DiamondInitialization.M?)  (or (= $o null) (= (dtype $o) Tclass.DiamondInitialization.M?)))
 :qid |unknown.0:0|
 :skolemid |4623|
 :pattern ( ($Is refType $o Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@4 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass.DiamondInitialization.M? $h@@8) ($IsGoodHeap $h@@8)) ($IsAllocBox bx@@4 Tclass.DiamondInitialization.D? $h@@8))
 :qid |unknown.0:0|
 :skolemid |4666|
 :pattern ( ($IsAllocBox bx@@4 Tclass.DiamondInitialization.M? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.DiamondInitialization.D $h@@9) ($IsAlloc refType |c#0@@3| Tclass.DiamondInitialization.D? $h@@9))
 :qid |unknown.0:0|
 :skolemid |4612|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.DiamondInitialization.D $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.DiamondInitialization.D? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.DiamondInitialization.M $h@@10) ($IsAlloc refType |c#0@@4| Tclass.DiamondInitialization.M? $h@@10))
 :qid |unknown.0:0|
 :skolemid |4632|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.DiamondInitialization.M $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.DiamondInitialization.M? $h@@10))
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
(assert (forall ((DiamondInitialization.A$XA@@0 T@U) ($o@@0 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@0) $h@@11)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4579|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@0) $h@@11))
)))
(assert (forall ((DiamondInitialization.B$XB@@0 T@U) ($o@@1 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@0) $h@@12)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4591|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@0) $h@@12))
)))
(assert (forall ((DiamondInitialization.C$XC@@0 T@U) ($o@@2 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@0) $h@@13)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4601|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@0) $h@@13))
)))
(assert (forall ((DiamondInitialization.E$XE@@0 T@U) ($o@@3 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@0) $h@@14)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4617|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@0) $h@@14))
)))
(assert (= (FDim DiamondInitialization.A.x) 0))
(assert (= (FieldOfDecl class.DiamondInitialization.A? field$x) DiamondInitialization.A.x))
(assert  (not ($IsGhostField DiamondInitialization.A.x)))
(assert (forall ((DiamondInitialization.B$XB@@1 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@1)) ($Is refType $o@@4 (Tclass.DiamondInitialization.A? DiamondInitialization.B$XB@@1)))
 :qid |unknown.0:0|
 :skolemid |4635|
 :pattern ( ($Is refType $o@@4 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@1)))
)))
(assert (forall ((DiamondInitialization.B$XB@@2 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@2)) ($IsBox bx@@5 (Tclass.DiamondInitialization.A? DiamondInitialization.B$XB@@2)))
 :qid |unknown.0:0|
 :skolemid |4633|
 :pattern ( ($IsBox bx@@5 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@2)))
)))
(assert (forall ((DiamondInitialization.C$XC@@1 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@1)) ($Is refType $o@@5 (Tclass.DiamondInitialization.A? DiamondInitialization.C$XC@@1)))
 :qid |unknown.0:0|
 :skolemid |4639|
 :pattern ( ($Is refType $o@@5 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@1)))
)))
(assert (forall ((DiamondInitialization.C$XC@@2 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@2)) ($IsBox bx@@6 (Tclass.DiamondInitialization.A? DiamondInitialization.C$XC@@2)))
 :qid |unknown.0:0|
 :skolemid |4637|
 :pattern ( ($IsBox bx@@6 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@2)))
)))
(assert (forall ((DiamondInitialization.E$XE@@1 T@U) ($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@1)) ($Is refType $o@@6 (Tclass.DiamondInitialization.B? DiamondInitialization.E$XE@@1)))
 :qid |unknown.0:0|
 :skolemid |4647|
 :pattern ( ($Is refType $o@@6 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@1)))
)))
(assert (forall ((DiamondInitialization.E$XE@@2 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@2)) ($IsBox bx@@7 (Tclass.DiamondInitialization.B? DiamondInitialization.E$XE@@2)))
 :qid |unknown.0:0|
 :skolemid |4645|
 :pattern ( ($IsBox bx@@7 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@2)))
)))
(assert (forall ((DiamondInitialization.E$XE@@3 T@U) ($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@3)) ($Is refType $o@@7 (Tclass.DiamondInitialization.C? DiamondInitialization.E$XE@@3)))
 :qid |unknown.0:0|
 :skolemid |4651|
 :pattern ( ($Is refType $o@@7 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@3)))
)))
(assert (forall ((DiamondInitialization.E$XE@@4 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@4)) ($IsBox bx@@8 (Tclass.DiamondInitialization.C? DiamondInitialization.E$XE@@4)))
 :qid |unknown.0:0|
 :skolemid |4649|
 :pattern ( ($IsBox bx@@8 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@4)))
)))
(assert (forall (($o@@8 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.DiamondInitialization.D? $h@@15)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4609|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.DiamondInitialization.D? $h@@15))
)))
(assert (forall (($o@@9 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass.DiamondInitialization.M? $h@@16)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4624|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.DiamondInitialization.M? $h@@16))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass.DiamondInitialization.D?) ($Is refType $o@@10 (Tclass.DiamondInitialization.A? TInt)))
 :qid |unknown.0:0|
 :skolemid |4643|
 :pattern ( ($Is refType $o@@10 Tclass.DiamondInitialization.D?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.DiamondInitialization.D?) ($IsBox bx@@9 (Tclass.DiamondInitialization.A? TInt)))
 :qid |unknown.0:0|
 :skolemid |4641|
 :pattern ( ($IsBox bx@@9 Tclass.DiamondInitialization.D?))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass.DiamondInitialization.M?) ($Is refType $o@@11 (Tclass.DiamondInitialization.B? TInt)))
 :qid |unknown.0:0|
 :skolemid |4655|
 :pattern ( ($Is refType $o@@11 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.DiamondInitialization.M?) ($IsBox bx@@10 (Tclass.DiamondInitialization.B? TInt)))
 :qid |unknown.0:0|
 :skolemid |4653|
 :pattern ( ($IsBox bx@@10 Tclass.DiamondInitialization.M?))
)))
(assert (forall (($o@@12 T@U) ) (!  (=> ($Is refType $o@@12 Tclass.DiamondInitialization.M?) ($Is refType $o@@12 (Tclass.DiamondInitialization.E? TInt)))
 :qid |unknown.0:0|
 :skolemid |4659|
 :pattern ( ($Is refType $o@@12 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.DiamondInitialization.M?) ($IsBox bx@@11 (Tclass.DiamondInitialization.E? TInt)))
 :qid |unknown.0:0|
 :skolemid |4657|
 :pattern ( ($IsBox bx@@11 Tclass.DiamondInitialization.M?))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass.DiamondInitialization.M?) ($Is refType $o@@13 (Tclass.DiamondInitialization.C? TInt)))
 :qid |unknown.0:0|
 :skolemid |4663|
 :pattern ( ($Is refType $o@@13 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.DiamondInitialization.M?) ($IsBox bx@@12 (Tclass.DiamondInitialization.C? TInt)))
 :qid |unknown.0:0|
 :skolemid |4661|
 :pattern ( ($IsBox bx@@12 Tclass.DiamondInitialization.M?))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass.DiamondInitialization.M?) ($Is refType $o@@14 (Tclass.DiamondInitialization.A? TInt)))
 :qid |unknown.0:0|
 :skolemid |4671|
 :pattern ( ($Is refType $o@@14 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.DiamondInitialization.M?) ($IsBox bx@@13 (Tclass.DiamondInitialization.A? TInt)))
 :qid |unknown.0:0|
 :skolemid |4669|
 :pattern ( ($IsBox bx@@13 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4139|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4140|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4038|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4036|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4047|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((DiamondInitialization.A$XA@@1 T@U) ($h@@17 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) DiamondInitialization.A.x) DiamondInitialization.A$XA@@1 $h@@17))
 :qid |unknown.0:0|
 :skolemid |4581|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) DiamondInitialization.A.x) (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@1))
)))
(assert ($IsGhostField alloc))
(assert (forall ((DiamondInitialization.A$XA@@2 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@2))  (and ($Is refType |c#0@@5| (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@2)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4585|
 :pattern ( ($Is refType |c#0@@5| (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@2)))
 :pattern ( ($Is refType |c#0@@5| (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@2)))
)))
(assert (forall ((DiamondInitialization.B$XB@@3 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@3))  (and ($Is refType |c#0@@6| (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@3)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4595|
 :pattern ( ($Is refType |c#0@@6| (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@3)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@3)))
)))
(assert (forall ((DiamondInitialization.C$XC@@3 T@U) (|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@3))  (and ($Is refType |c#0@@7| (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@3)) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4605|
 :pattern ( ($Is refType |c#0@@7| (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@3)))
 :pattern ( ($Is refType |c#0@@7| (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@3)))
)))
(assert (forall ((DiamondInitialization.E$XE@@5 T@U) (|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@5))  (and ($Is refType |c#0@@8| (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@5)) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4621|
 :pattern ( ($Is refType |c#0@@8| (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@5)))
 :pattern ( ($Is refType |c#0@@8| (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@5)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4060|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@14 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@14 t@@0 h@@1) ($IsAllocBox bx@@14 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4132|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@14 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4131|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((DiamondInitialization.A$XA@@3 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@3)) Tagclass.DiamondInitialization.A?) (= (TagFamily (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@3)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |4575|
 :pattern ( (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@3))
)))
(assert (forall ((DiamondInitialization.A$XA@@4 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@4)) Tagclass.DiamondInitialization.A) (= (TagFamily (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@4)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |4582|
 :pattern ( (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@4))
)))
(assert (forall ((DiamondInitialization.B$XB@@4 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@4)) Tagclass.DiamondInitialization.B?) (= (TagFamily (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@4)) tytagFamily$B))
 :qid |unknown.0:0|
 :skolemid |4587|
 :pattern ( (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@4))
)))
(assert (forall ((DiamondInitialization.B$XB@@5 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@5)) Tagclass.DiamondInitialization.B) (= (TagFamily (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@5)) tytagFamily$B))
 :qid |unknown.0:0|
 :skolemid |4592|
 :pattern ( (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@5))
)))
(assert (forall ((DiamondInitialization.C$XC@@4 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@4)) Tagclass.DiamondInitialization.C?) (= (TagFamily (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@4)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |4597|
 :pattern ( (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@4))
)))
(assert (forall ((DiamondInitialization.C$XC@@5 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@5)) Tagclass.DiamondInitialization.C) (= (TagFamily (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@5)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |4602|
 :pattern ( (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@5))
)))
(assert (forall ((DiamondInitialization.E$XE@@6 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@6)) Tagclass.DiamondInitialization.E?) (= (TagFamily (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@6)) tytagFamily$E))
 :qid |unknown.0:0|
 :skolemid |4613|
 :pattern ( (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@6))
)))
(assert (forall ((DiamondInitialization.E$XE@@7 T@U) ) (!  (and (= (Tag (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@7)) Tagclass.DiamondInitialization.E) (= (TagFamily (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@7)) tytagFamily$E))
 :qid |unknown.0:0|
 :skolemid |4618|
 :pattern ( (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@7))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@16 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f))  (=> (and (or (not (= $o@@16 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@16) |l#2|)))) (= $o@@16 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8394|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f))
)))
(assert (forall ((DiamondInitialization.A$XA@@5 T@U) ($h@@18 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@5)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) DiamondInitialization.A.x) DiamondInitialization.A$XA@@5))
 :qid |unknown.0:0|
 :skolemid |4580|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) DiamondInitialization.A.x) (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@5))
)))
(assert (implements$DiamondInitialization.B Tclass.DiamondInitialization.M? TInt))
(assert (implements$DiamondInitialization.E Tclass.DiamondInitialization.M? TInt))
(assert (implements$DiamondInitialization.C Tclass.DiamondInitialization.M? TInt))
(assert (implements$DiamondInitialization.A Tclass.DiamondInitialization.M? TInt))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.DiamondInitialization.M) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass.DiamondInitialization.M)))
 :qid |unknown.0:0|
 :skolemid |4568|
 :pattern ( ($IsBox bx@@15 Tclass.DiamondInitialization.M))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.DiamondInitialization.M?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass.DiamondInitialization.M?)))
 :qid |unknown.0:0|
 :skolemid |4569|
 :pattern ( ($IsBox bx@@16 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass.DiamondInitialization.D?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass.DiamondInitialization.D?)))
 :qid |unknown.0:0|
 :skolemid |4607|
 :pattern ( ($IsBox bx@@17 Tclass.DiamondInitialization.D?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass.DiamondInitialization.D) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass.DiamondInitialization.D)))
 :qid |unknown.0:0|
 :skolemid |4610|
 :pattern ( ($IsBox bx@@18 Tclass.DiamondInitialization.D))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass.DiamondInitialization.D)  (and ($Is refType |c#0@@9| Tclass.DiamondInitialization.D?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4611|
 :pattern ( ($Is refType |c#0@@9| Tclass.DiamondInitialization.D))
 :pattern ( ($Is refType |c#0@@9| Tclass.DiamondInitialization.D?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass.DiamondInitialization.M)  (and ($Is refType |c#0@@10| Tclass.DiamondInitialization.M?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4631|
 :pattern ( ($Is refType |c#0@@10| Tclass.DiamondInitialization.M))
 :pattern ( ($Is refType |c#0@@10| Tclass.DiamondInitialization.M?))
)))
(assert (forall ((DiamondInitialization.B$XB@@6 T@U) (bx@@19 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsAllocBox bx@@19 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@6) $h@@19) ($IsGoodHeap $h@@19)) ($IsAllocBox bx@@19 (Tclass.DiamondInitialization.A? DiamondInitialization.B$XB@@6) $h@@19))
 :qid |unknown.0:0|
 :skolemid |4634|
 :pattern ( ($IsAllocBox bx@@19 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@6) $h@@19))
)))
(assert (forall ((DiamondInitialization.C$XC@@6 T@U) (bx@@20 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsAllocBox bx@@20 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@6) $h@@20) ($IsGoodHeap $h@@20)) ($IsAllocBox bx@@20 (Tclass.DiamondInitialization.A? DiamondInitialization.C$XC@@6) $h@@20))
 :qid |unknown.0:0|
 :skolemid |4638|
 :pattern ( ($IsAllocBox bx@@20 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@6) $h@@20))
)))
(assert (forall ((DiamondInitialization.E$XE@@8 T@U) (bx@@21 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsAllocBox bx@@21 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@8) $h@@21) ($IsGoodHeap $h@@21)) ($IsAllocBox bx@@21 (Tclass.DiamondInitialization.B? DiamondInitialization.E$XE@@8) $h@@21))
 :qid |unknown.0:0|
 :skolemid |4646|
 :pattern ( ($IsAllocBox bx@@21 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@8) $h@@21))
)))
(assert (forall ((DiamondInitialization.E$XE@@9 T@U) (bx@@22 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsAllocBox bx@@22 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@9) $h@@22) ($IsGoodHeap $h@@22)) ($IsAllocBox bx@@22 (Tclass.DiamondInitialization.C? DiamondInitialization.E$XE@@9) $h@@22))
 :qid |unknown.0:0|
 :skolemid |4650|
 :pattern ( ($IsAllocBox bx@@22 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@9) $h@@22))
)))
(assert (forall ((DiamondInitialization.B$XB@@7 T@U) ($o@@18 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@18 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@7) $heap) ($IsAlloc refType $o@@18 (Tclass.DiamondInitialization.A? DiamondInitialization.B$XB@@7) $heap))
 :qid |unknown.0:0|
 :skolemid |4636|
 :pattern ( ($IsAlloc refType $o@@18 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@7) $heap))
)))
(assert (forall ((DiamondInitialization.C$XC@@7 T@U) ($o@@19 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@19 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@7) $heap@@0) ($IsAlloc refType $o@@19 (Tclass.DiamondInitialization.A? DiamondInitialization.C$XC@@7) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |4640|
 :pattern ( ($IsAlloc refType $o@@19 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@7) $heap@@0))
)))
(assert (forall ((DiamondInitialization.E$XE@@10 T@U) ($o@@20 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@20 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@10) $heap@@1) ($IsAlloc refType $o@@20 (Tclass.DiamondInitialization.B? DiamondInitialization.E$XE@@10) $heap@@1))
 :qid |unknown.0:0|
 :skolemid |4648|
 :pattern ( ($IsAlloc refType $o@@20 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@10) $heap@@1))
)))
(assert (forall ((DiamondInitialization.E$XE@@11 T@U) ($o@@21 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@21 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@11) $heap@@2) ($IsAlloc refType $o@@21 (Tclass.DiamondInitialization.C? DiamondInitialization.E$XE@@11) $heap@@2))
 :qid |unknown.0:0|
 :skolemid |4652|
 :pattern ( ($IsAlloc refType $o@@21 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@11) $heap@@2))
)))
(assert (forall (($o@@22 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass.DiamondInitialization.D? $heap@@3) ($IsAlloc refType $o@@22 (Tclass.DiamondInitialization.A? TInt) $heap@@3))
 :qid |unknown.0:0|
 :skolemid |4644|
 :pattern ( ($IsAlloc refType $o@@22 Tclass.DiamondInitialization.D? $heap@@3))
)))
(assert (forall (($o@@23 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass.DiamondInitialization.M? $heap@@4) ($IsAlloc refType $o@@23 (Tclass.DiamondInitialization.B? TInt) $heap@@4))
 :qid |unknown.0:0|
 :skolemid |4656|
 :pattern ( ($IsAlloc refType $o@@23 Tclass.DiamondInitialization.M? $heap@@4))
)))
(assert (forall (($o@@24 T@U) ($heap@@5 T@U) ) (!  (=> ($IsAlloc refType $o@@24 Tclass.DiamondInitialization.M? $heap@@5) ($IsAlloc refType $o@@24 (Tclass.DiamondInitialization.E? TInt) $heap@@5))
 :qid |unknown.0:0|
 :skolemid |4660|
 :pattern ( ($IsAlloc refType $o@@24 Tclass.DiamondInitialization.M? $heap@@5))
)))
(assert (forall (($o@@25 T@U) ($heap@@6 T@U) ) (!  (=> ($IsAlloc refType $o@@25 Tclass.DiamondInitialization.M? $heap@@6) ($IsAlloc refType $o@@25 (Tclass.DiamondInitialization.C? TInt) $heap@@6))
 :qid |unknown.0:0|
 :skolemid |4664|
 :pattern ( ($IsAlloc refType $o@@25 Tclass.DiamondInitialization.M? $heap@@6))
)))
(assert (forall (($o@@26 T@U) ($heap@@7 T@U) ) (!  (=> ($IsAlloc refType $o@@26 Tclass.DiamondInitialization.M? $heap@@7) ($IsAlloc refType $o@@26 (Tclass.DiamondInitialization.A? TInt) $heap@@7))
 :qid |unknown.0:0|
 :skolemid |4672|
 :pattern ( ($IsAlloc refType $o@@26 Tclass.DiamondInitialization.M? $heap@@7))
)))
(assert (forall (($o@@27 T@U) ($heap@@8 T@U) ) (!  (=> ($IsAlloc refType $o@@27 Tclass.DiamondInitialization.M? $heap@@8) ($IsAlloc refType $o@@27 Tclass.DiamondInitialization.D? $heap@@8))
 :qid |unknown.0:0|
 :skolemid |4668|
 :pattern ( ($IsAlloc refType $o@@27 Tclass.DiamondInitialization.M? $heap@@8))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4138|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |4128|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 TInt) (and (= ($Box intType ($Unbox intType bx@@23)) bx@@23) ($Is intType ($Unbox intType bx@@23) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4048|
 :pattern ( ($IsBox bx@@23 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4059|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((DiamondInitialization.A$XA@@6 T@U) ) (! (= (Tclass.DiamondInitialization.A?_0 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@6)) DiamondInitialization.A$XA@@6)
 :qid |unknown.0:0|
 :skolemid |4576|
 :pattern ( (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@6))
)))
(assert (forall ((DiamondInitialization.A$XA@@7 T@U) ) (! (= (Tclass.DiamondInitialization.A_0 (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@7)) DiamondInitialization.A$XA@@7)
 :qid |unknown.0:0|
 :skolemid |4583|
 :pattern ( (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@7))
)))
(assert (forall ((DiamondInitialization.B$XB@@8 T@U) ) (! (= (Tclass.DiamondInitialization.B?_0 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@8)) DiamondInitialization.B$XB@@8)
 :qid |unknown.0:0|
 :skolemid |4588|
 :pattern ( (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@8))
)))
(assert (forall ((DiamondInitialization.B$XB@@9 T@U) ) (! (= (Tclass.DiamondInitialization.B_0 (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@9)) DiamondInitialization.B$XB@@9)
 :qid |unknown.0:0|
 :skolemid |4593|
 :pattern ( (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@9))
)))
(assert (forall ((DiamondInitialization.C$XC@@8 T@U) ) (! (= (Tclass.DiamondInitialization.C?_0 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@8)) DiamondInitialization.C$XC@@8)
 :qid |unknown.0:0|
 :skolemid |4598|
 :pattern ( (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@8))
)))
(assert (forall ((DiamondInitialization.C$XC@@9 T@U) ) (! (= (Tclass.DiamondInitialization.C_0 (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@9)) DiamondInitialization.C$XC@@9)
 :qid |unknown.0:0|
 :skolemid |4603|
 :pattern ( (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@9))
)))
(assert (forall ((DiamondInitialization.E$XE@@12 T@U) ) (! (= (Tclass.DiamondInitialization.E?_0 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@12)) DiamondInitialization.E$XE@@12)
 :qid |unknown.0:0|
 :skolemid |4614|
 :pattern ( (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@12))
)))
(assert (forall ((DiamondInitialization.E$XE@@13 T@U) ) (! (= (Tclass.DiamondInitialization.E_0 (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@13)) DiamondInitialization.E$XE@@13)
 :qid |unknown.0:0|
 :skolemid |4619|
 :pattern ( (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@13))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4046|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((DiamondInitialization.A$XA@@8 T@U) ($o@@28 T@U) ) (! (= ($Is refType $o@@28 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@8))  (or (= $o@@28 null) (implements$DiamondInitialization.A (dtype $o@@28) DiamondInitialization.A$XA@@8)))
 :qid |unknown.0:0|
 :skolemid |4578|
 :pattern ( ($Is refType $o@@28 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@8)))
)))
(assert (forall ((DiamondInitialization.B$XB@@10 T@U) ($o@@29 T@U) ) (! (= ($Is refType $o@@29 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@10))  (or (= $o@@29 null) (implements$DiamondInitialization.B (dtype $o@@29) DiamondInitialization.B$XB@@10)))
 :qid |unknown.0:0|
 :skolemid |4590|
 :pattern ( ($Is refType $o@@29 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@10)))
)))
(assert (forall ((DiamondInitialization.C$XC@@10 T@U) ($o@@30 T@U) ) (! (= ($Is refType $o@@30 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@10))  (or (= $o@@30 null) (implements$DiamondInitialization.C (dtype $o@@30) DiamondInitialization.C$XC@@10)))
 :qid |unknown.0:0|
 :skolemid |4600|
 :pattern ( ($Is refType $o@@30 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@10)))
)))
(assert (forall ((DiamondInitialization.E$XE@@14 T@U) ($o@@31 T@U) ) (! (= ($Is refType $o@@31 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@14))  (or (= $o@@31 null) (implements$DiamondInitialization.E (dtype $o@@31) DiamondInitialization.E$XE@@14)))
 :qid |unknown.0:0|
 :skolemid |4616|
 :pattern ( ($Is refType $o@@31 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@14)))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |4361|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((DiamondInitialization.A$XA@@9 T@U) (bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@9)) (and (= ($Box refType ($Unbox refType bx@@24)) bx@@24) ($Is refType ($Unbox refType bx@@24) (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@9))))
 :qid |unknown.0:0|
 :skolemid |4577|
 :pattern ( ($IsBox bx@@24 (Tclass.DiamondInitialization.A? DiamondInitialization.A$XA@@9)))
)))
(assert (forall ((DiamondInitialization.A$XA@@10 T@U) (bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@10)) (and (= ($Box refType ($Unbox refType bx@@25)) bx@@25) ($Is refType ($Unbox refType bx@@25) (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@10))))
 :qid |unknown.0:0|
 :skolemid |4584|
 :pattern ( ($IsBox bx@@25 (Tclass.DiamondInitialization.A DiamondInitialization.A$XA@@10)))
)))
(assert (forall ((DiamondInitialization.B$XB@@11 T@U) (bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@11)) (and (= ($Box refType ($Unbox refType bx@@26)) bx@@26) ($Is refType ($Unbox refType bx@@26) (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@11))))
 :qid |unknown.0:0|
 :skolemid |4589|
 :pattern ( ($IsBox bx@@26 (Tclass.DiamondInitialization.B? DiamondInitialization.B$XB@@11)))
)))
(assert (forall ((DiamondInitialization.B$XB@@12 T@U) (bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@12)) (and (= ($Box refType ($Unbox refType bx@@27)) bx@@27) ($Is refType ($Unbox refType bx@@27) (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@12))))
 :qid |unknown.0:0|
 :skolemid |4594|
 :pattern ( ($IsBox bx@@27 (Tclass.DiamondInitialization.B DiamondInitialization.B$XB@@12)))
)))
(assert (forall ((DiamondInitialization.C$XC@@11 T@U) (bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@11)) (and (= ($Box refType ($Unbox refType bx@@28)) bx@@28) ($Is refType ($Unbox refType bx@@28) (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@11))))
 :qid |unknown.0:0|
 :skolemid |4599|
 :pattern ( ($IsBox bx@@28 (Tclass.DiamondInitialization.C? DiamondInitialization.C$XC@@11)))
)))
(assert (forall ((DiamondInitialization.C$XC@@12 T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@12)) (and (= ($Box refType ($Unbox refType bx@@29)) bx@@29) ($Is refType ($Unbox refType bx@@29) (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@12))))
 :qid |unknown.0:0|
 :skolemid |4604|
 :pattern ( ($IsBox bx@@29 (Tclass.DiamondInitialization.C DiamondInitialization.C$XC@@12)))
)))
(assert (forall ((DiamondInitialization.E$XE@@15 T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@15)) (and (= ($Box refType ($Unbox refType bx@@30)) bx@@30) ($Is refType ($Unbox refType bx@@30) (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@15))))
 :qid |unknown.0:0|
 :skolemid |4615|
 :pattern ( ($IsBox bx@@30 (Tclass.DiamondInitialization.E? DiamondInitialization.E$XE@@15)))
)))
(assert (forall ((DiamondInitialization.E$XE@@16 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@16)) (and (= ($Box refType ($Unbox refType bx@@31)) bx@@31) ($Is refType ($Unbox refType bx@@31) (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@16))))
 :qid |unknown.0:0|
 :skolemid |4620|
 :pattern ( ($IsBox bx@@31 (Tclass.DiamondInitialization.E DiamondInitialization.E$XE@@16)))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass.DiamondInitialization.M?) ($Is refType $o@@32 Tclass.DiamondInitialization.D?))
 :qid |unknown.0:0|
 :skolemid |4667|
 :pattern ( ($Is refType $o@@32 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass.DiamondInitialization.M?) ($IsBox bx@@32 Tclass.DiamondInitialization.D?))
 :qid |unknown.0:0|
 :skolemid |4665|
 :pattern ( ($IsBox bx@@32 Tclass.DiamondInitialization.M?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |4137|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7)))
)))
(assert (= (Tag Tclass.DiamondInitialization.M) Tagclass.DiamondInitialization.M))
(assert (= (TagFamily Tclass.DiamondInitialization.M) tytagFamily$M))
(assert (= (Tag Tclass.DiamondInitialization.M?) Tagclass.DiamondInitialization.M?))
(assert (= (TagFamily Tclass.DiamondInitialization.M?) tytagFamily$M))
(assert (= (Tag Tclass.DiamondInitialization.D?) Tagclass.DiamondInitialization.D?))
(assert (= (TagFamily Tclass.DiamondInitialization.D?) tytagFamily$D))
(assert (= (Tag Tclass.DiamondInitialization.D) Tagclass.DiamondInitialization.D))
(assert (= (TagFamily Tclass.DiamondInitialization.D) tytagFamily$D))
(assert (forall (($o@@33 T@U) ) (! (= ($Is refType $o@@33 Tclass.DiamondInitialization.D?)  (or (= $o@@33 null) (implements$DiamondInitialization.D (dtype $o@@33))))
 :qid |unknown.0:0|
 :skolemid |4608|
 :pattern ( ($Is refType $o@@33 Tclass.DiamondInitialization.D?))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4039|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4037|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4082|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4061|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0| () Int)
(declare-fun this () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@11| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |defass#e#0| () Bool)
(declare-fun |e#0| () T@U)
(declare-fun |defass#a0#0| () Bool)
(declare-fun |a0#0| () T@U)
(declare-fun |defass#a1#0| () Bool)
(declare-fun |a1#0| () T@U)
(declare-fun |defass#a2#0| () Bool)
(declare-fun |a2#0| () T@U)
(declare-fun |defass#a3#0| () Bool)
(declare-fun |a3#0| () T@U)
(declare-fun |defass#b0#0| () Bool)
(declare-fun |b0#0| () T@U)
(declare-fun |defass#c0#0| () Bool)
(declare-fun |c0#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$DiamondInitialization.M.Set)
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
 (=> (= (ControlFlow 0 0) 77) (let ((anon33_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 10))) (not true)) (and (=> (= (ControlFlow 0 44) (- 0 48)) (or (not (= (LitInt 12) 0)) (not true))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (= (Mod |y#0| (LitInt 12)) (LitInt 11))) (=> (= (Mod |y#0| (LitInt 12)) (LitInt 11)) (and (=> (= (ControlFlow 0 44) (- 0 46)) true) (and (=> (= (ControlFlow 0 44) (- 0 45)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 44) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x))))))))))))
(let ((anon33_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 10)) (and (=> (= (ControlFlow 0 40) (- 0 42)) true) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 40) (- 0 39)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon32_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 9))) (not true)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 49) 40) anon33_Then_correct) (=> (= (ControlFlow 0 49) 44) anon33_Else_correct)))))))
(let ((anon32_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 9)) (and (=> (= (ControlFlow 0 36) (- 0 38)) true) (and (=> (= (ControlFlow 0 36) (- 0 37)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 36) (- 0 35)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon31_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 8))) (not true)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 51) 36) anon32_Then_correct) (=> (= (ControlFlow 0 51) 49) anon32_Else_correct)))))))
(let ((anon31_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 8)) (and (=> (= (ControlFlow 0 32) (- 0 34)) true) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 32) (- 0 31)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon30_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 7))) (not true)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 53) 32) anon31_Then_correct) (=> (= (ControlFlow 0 53) 51) anon31_Else_correct)))))))
(let ((anon30_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 7)) (and (=> (= (ControlFlow 0 28) (- 0 30)) true) (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 28) (- 0 27)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon29_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 6))) (not true)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 55) 28) anon30_Then_correct) (=> (= (ControlFlow 0 55) 53) anon30_Else_correct)))))))
(let ((anon29_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 6)) (and (=> (= (ControlFlow 0 24) (- 0 26)) true) (and (=> (= (ControlFlow 0 24) (- 0 25)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 24) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon28_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 57) 24) anon29_Then_correct) (=> (= (ControlFlow 0 57) 55) anon29_Else_correct)))))))
(let ((anon28_Then_correct  (=> (and (= (Mod |y#0| (LitInt 12)) (LitInt 5)) (= (ControlFlow 0 22) (- 0 21))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))
(let ((anon27_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 4))) (not true)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 59) 22) anon28_Then_correct) (=> (= (ControlFlow 0 59) 57) anon28_Else_correct)))))))
(let ((anon27_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 4)) (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 18) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon26_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 3))) (not true)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 61) 18) anon27_Then_correct) (=> (= (ControlFlow 0 61) 59) anon27_Else_correct)))))))
(let ((anon26_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 3)) (and (=> (= (ControlFlow 0 14) (- 0 16)) true) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 14) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon25_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 2))) (not true)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 63) 14) anon26_Then_correct) (=> (= (ControlFlow 0 63) 61) anon26_Else_correct)))))))
(let ((anon25_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 2)) (and (=> (= (ControlFlow 0 10) (- 0 12)) true) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 10) (- 0 9)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon24_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 65) 10) anon25_Then_correct) (=> (= (ControlFlow 0 65) 63) anon25_Else_correct)))))))
(let ((anon24_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 1)) (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 6) (- 0 5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon23_Else_correct  (=> (or (not (= (Mod |y#0| (LitInt 12)) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 67) 6) anon24_Then_correct) (=> (= (ControlFlow 0 67) 65) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (= (Mod |y#0| (LitInt 12)) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= this null)) (not true))) (=> (or (not (= this null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this DiamondInitialization.A.x)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc this)) (and (=> (= (ControlFlow 0 69) (- 0 76)) true) (and (=> (= (ControlFlow 0 69) (- 0 75)) true) (and (=> (= (ControlFlow 0 69) (- 0 74)) true) (and (=> (= (ControlFlow 0 69) (- 0 73)) true) (and (=> (= (ControlFlow 0 69) (- 0 72)) true) (and (=> (= (ControlFlow 0 69) (- 0 71)) true) (and (=> (= (ControlFlow 0 69) (- 0 70)) (or (not (= (LitInt 12) 0)) (not true))) (=> (or (not (= (LitInt 12) 0)) (not true)) (and (=> (= (ControlFlow 0 69) 2) anon23_Then_correct) (=> (= (ControlFlow 0 69) 67) anon23_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.DiamondInitialization.M) ($IsAlloc refType this Tclass.DiamondInitialization.M $Heap)))) (=> (and (and (and (=> |defass#a#0| (and ($Is refType |a#0| (Tclass.DiamondInitialization.A TInt)) ($IsAlloc refType |a#0| (Tclass.DiamondInitialization.A TInt) $Heap))) true) (and (=> |defass#b#0| (and ($Is refType |b#0| (Tclass.DiamondInitialization.B TInt)) ($IsAlloc refType |b#0| (Tclass.DiamondInitialization.B TInt) $Heap))) true)) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@11| (Tclass.DiamondInitialization.C TInt)) ($IsAlloc refType |c#0@@11| (Tclass.DiamondInitialization.C TInt) $Heap))) true) (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass.DiamondInitialization.D) ($IsAlloc refType |d#0| Tclass.DiamondInitialization.D $Heap))) true))) (=> (and (and (and (and (=> |defass#e#0| (and ($Is refType |e#0| (Tclass.DiamondInitialization.E TInt)) ($IsAlloc refType |e#0| (Tclass.DiamondInitialization.E TInt) $Heap))) true) (and (=> |defass#a0#0| (and ($Is refType |a0#0| (Tclass.DiamondInitialization.A TInt)) ($IsAlloc refType |a0#0| (Tclass.DiamondInitialization.A TInt) $Heap))) true)) (and (and (=> |defass#a1#0| (and ($Is refType |a1#0| (Tclass.DiamondInitialization.A TInt)) ($IsAlloc refType |a1#0| (Tclass.DiamondInitialization.A TInt) $Heap))) true) (and (=> |defass#a2#0| (and ($Is refType |a2#0| (Tclass.DiamondInitialization.A TInt)) ($IsAlloc refType |a2#0| (Tclass.DiamondInitialization.A TInt) $Heap))) true))) (and (and (and (=> |defass#a3#0| (and ($Is refType |a3#0| (Tclass.DiamondInitialization.A TInt)) ($IsAlloc refType |a3#0| (Tclass.DiamondInitialization.A TInt) $Heap))) true) (and (=> |defass#b0#0| (and ($Is refType |b0#0| (Tclass.DiamondInitialization.B TInt)) ($IsAlloc refType |b0#0| (Tclass.DiamondInitialization.B TInt) $Heap))) true)) (and (and (=> |defass#c0#0| (and ($Is refType |c0#0| (Tclass.DiamondInitialization.C TInt)) ($IsAlloc refType |c0#0| (Tclass.DiamondInitialization.C TInt) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 77) 69))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
