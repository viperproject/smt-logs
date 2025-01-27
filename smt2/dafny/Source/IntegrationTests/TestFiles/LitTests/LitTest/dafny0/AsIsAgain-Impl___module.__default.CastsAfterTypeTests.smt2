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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun Tagclass._module.B () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.K () T@U)
(declare-fun Tagclass._module.L () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun Tagclass._module.B? () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.K? () T@U)
(declare-fun Tagclass._module.L? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$K () T@U)
(declare-fun tytagFamily$L () T@U)
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
(declare-fun implements$_module.B (T@U T@U T@U) Bool)
(declare-fun Tclass._module.K? (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun implements$_module.C (T@U T@U) Bool)
(declare-fun Tclass._module.L? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.A (T@U) T@U)
(declare-fun Tclass._module.A? (T@U) T@U)
(declare-fun Tclass._module.C (T@U) T@U)
(declare-fun Tclass._module.C? (T@U) T@U)
(declare-fun Tclass._module.K (T@U) T@U)
(declare-fun Tclass._module.L (T@U) T@U)
(declare-fun implements$_System.object (T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.B? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.B (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.B_0 (T@U) T@U)
(declare-fun Tclass._module.B_1 (T@U) T@U)
(declare-fun Tclass._module.B?_0 (T@U) T@U)
(declare-fun Tclass._module.B?_1 (T@U) T@U)
(declare-fun Tclass._module.A_0 (T@U) T@U)
(declare-fun Tclass._module.C_0 (T@U) T@U)
(declare-fun Tclass._module.K_0 (T@U) T@U)
(declare-fun Tclass._module.L_0 (T@U) T@U)
(declare-fun Tclass._module.A?_0 (T@U) T@U)
(declare-fun Tclass._module.C?_0 (T@U) T@U)
(declare-fun Tclass._module.K?_0 (T@U) T@U)
(declare-fun Tclass._module.L?_0 (T@U) T@U)
(declare-fun implements$_module.A (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.A Tagclass._module.B Tagclass._module.C Tagclass._module.K Tagclass._module.L Tagclass._module.A? Tagclass._module.B? Tagclass._module.C? Tagclass._module.K? Tagclass._module.L? tytagFamily$object tytagFamily$A tytagFamily$B tytagFamily$C tytagFamily$K tytagFamily$L)
)
(assert (forall ((_module.K$U T@U) ) (! (implements$_module.B (Tclass._module.K? _module.K$U) TInt _module.K$U)
 :qid |unknown.0:0|
 :skolemid |556|
)))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((_module.L$V T@U) ) (! (implements$_module.C (Tclass._module.L? _module.L$V) _module.L$V)
 :qid |unknown.0:0|
 :skolemid |564|
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.A$X T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.A _module.A$X) $h) ($IsAlloc refType |c#0| (Tclass._module.A? _module.A$X) $h))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.A _module.A$X) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.A? _module.A$X) $h))
)))
(assert (forall ((_module.C$Z T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.C _module.C$Z) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.C? _module.C$Z) $h@@0))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.C _module.C$Z) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.C? _module.C$Z) $h@@0))
)))
(assert (forall ((_module.K$U@@0 T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._module.K _module.K$U@@0) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass._module.K? _module.K$U@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.K _module.K$U@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.K? _module.K$U@@0) $h@@1))
)))
(assert (forall ((_module.L$V@@0 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass._module.L _module.L$V@@0) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass._module.L? _module.L$V@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass._module.L _module.L$V@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass._module.L? _module.L$V@@0) $h@@2))
)))
(assert (forall ((_module.K$U@@1 T@U) ) (! (implements$_System.object (Tclass._module.K? _module.K$U@@1))
 :qid |unknown.0:0|
 :skolemid |555|
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@3| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._System.object? $h@@3))
)))
(assert (forall ((_module.C$Z@@0 T@U) ($o T@U) ) (!  (=> ($Is refType $o (Tclass._module.C? _module.C$Z@@0)) ($Is refType $o (Tclass._module.B? TInt _module.C$Z@@0)))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($Is refType $o (Tclass._module.C? _module.C$Z@@0)))
)))
(assert (forall ((_module.K$U@@2 T@U) ($o@@0 T@U) ) (!  (=> ($Is refType $o@@0 (Tclass._module.K? _module.K$U@@2)) ($Is refType $o@@0 (Tclass._module.B? TInt _module.K$U@@2)))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($Is refType $o@@0 (Tclass._module.K? _module.K$U@@2)))
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
(assert (forall ((_module.A$X@@0 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.A? _module.A$X@@0) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.A? _module.A$X@@0) $h@@4))
)))
(assert (forall ((_module.C$Z@@1 T@U) ($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.C? _module.C$Z@@1) $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.C? _module.C$Z@@1) $h@@5))
)))
(assert (forall ((_module.K$U@@3 T@U) ($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.K? _module.K$U@@3) $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.K? _module.K$U@@3) $h@@6))
)))
(assert (forall ((_module.L$V@@1 T@U) ($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.L? _module.L$V@@1) $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.L? _module.L$V@@1) $h@@7))
)))
(assert (forall ((_module.L$V@@2 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass._module.L? _module.L$V@@2)) ($Is refType $o@@5 (Tclass._module.C? _module.L$V@@2)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($Is refType $o@@5 (Tclass._module.L? _module.L$V@@2)))
)))
(assert (forall (($o@@6 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@8)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@8))
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
(assert (forall ((_module.B$Y0 T@U) (_module.B$Y1 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._module.B _module.B$Y0 _module.B$Y1))  (and ($Is refType |c#0@@4| (Tclass._module.B? _module.B$Y0 _module.B$Y1)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType |c#0@@4| (Tclass._module.B _module.B$Y0 _module.B$Y1)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._module.B? _module.B$Y0 _module.B$Y1)))
)))
(assert (forall ((_module.A$X@@1 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._module.A _module.A$X@@1))  (and ($Is refType |c#0@@5| (Tclass._module.A? _module.A$X@@1)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.A _module.A$X@@1)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.A? _module.A$X@@1)))
)))
(assert (forall ((_module.C$Z@@2 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass._module.C _module.C$Z@@2))  (and ($Is refType |c#0@@6| (Tclass._module.C? _module.C$Z@@2)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($Is refType |c#0@@6| (Tclass._module.C _module.C$Z@@2)))
 :pattern ( ($Is refType |c#0@@6| (Tclass._module.C? _module.C$Z@@2)))
)))
(assert (forall ((_module.K$U@@4 T@U) (|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| (Tclass._module.K _module.K$U@@4))  (and ($Is refType |c#0@@7| (Tclass._module.K? _module.K$U@@4)) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is refType |c#0@@7| (Tclass._module.K _module.K$U@@4)))
 :pattern ( ($Is refType |c#0@@7| (Tclass._module.K? _module.K$U@@4)))
)))
(assert (forall ((_module.L$V@@3 T@U) (|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| (Tclass._module.L _module.L$V@@3))  (and ($Is refType |c#0@@8| (Tclass._module.L? _module.L$V@@3)) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is refType |c#0@@8| (Tclass._module.L _module.L$V@@3)))
 :pattern ( ($Is refType |c#0@@8| (Tclass._module.L? _module.L$V@@3)))
)))
(assert (forall ((_module.A$X@@2 T@U) ) (!  (and (= (Tag (Tclass._module.A _module.A$X@@2)) Tagclass._module.A) (= (TagFamily (Tclass._module.A _module.A$X@@2)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.A _module.A$X@@2))
)))
(assert (forall ((_module.C$Z@@3 T@U) ) (!  (and (= (Tag (Tclass._module.C _module.C$Z@@3)) Tagclass._module.C) (= (TagFamily (Tclass._module.C _module.C$Z@@3)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.C _module.C$Z@@3))
)))
(assert (forall ((_module.K$U@@5 T@U) ) (!  (and (= (Tag (Tclass._module.K _module.K$U@@5)) Tagclass._module.K) (= (TagFamily (Tclass._module.K _module.K$U@@5)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (Tclass._module.K _module.K$U@@5))
)))
(assert (forall ((_module.L$V@@4 T@U) ) (!  (and (= (Tag (Tclass._module.L _module.L$V@@4)) Tagclass._module.L) (= (TagFamily (Tclass._module.L _module.L$V@@4)) tytagFamily$L))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.L _module.L$V@@4))
)))
(assert (forall ((_module.A$X@@3 T@U) ) (!  (and (= (Tag (Tclass._module.A? _module.A$X@@3)) Tagclass._module.A?) (= (TagFamily (Tclass._module.A? _module.A$X@@3)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (Tclass._module.A? _module.A$X@@3))
)))
(assert (forall ((_module.C$Z@@4 T@U) ) (!  (and (= (Tag (Tclass._module.C? _module.C$Z@@4)) Tagclass._module.C?) (= (TagFamily (Tclass._module.C? _module.C$Z@@4)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( (Tclass._module.C? _module.C$Z@@4))
)))
(assert (forall ((_module.K$U@@6 T@U) ) (!  (and (= (Tag (Tclass._module.K? _module.K$U@@6)) Tagclass._module.K?) (= (TagFamily (Tclass._module.K? _module.K$U@@6)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Tclass._module.K? _module.K$U@@6))
)))
(assert (forall ((_module.L$V@@5 T@U) ) (!  (and (= (Tag (Tclass._module.L? _module.L$V@@5)) Tagclass._module.L?) (= (TagFamily (Tclass._module.L? _module.L$V@@5)) tytagFamily$L))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (Tclass._module.L? _module.L$V@@5))
)))
(assert (forall ((_module.B$Y0@@0 T@U) (_module.B$Y1@@0 T@U) (|c#0@@9| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@9| (Tclass._module.B _module.B$Y0@@0 _module.B$Y1@@0) $h@@9) ($IsAlloc refType |c#0@@9| (Tclass._module.B? _module.B$Y0@@0 _module.B$Y1@@0) $h@@9))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass._module.B _module.B$Y0@@0 _module.B$Y1@@0) $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@9| (Tclass._module.B? _module.B$Y0@@0 _module.B$Y1@@0) $h@@9))
)))
(assert (forall ((_module.K$U@@7 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._module.K? _module.K$U@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._module.K? _module.K$U@@7))))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($Is refType $o@@7 (Tclass._module.K? _module.K$U@@7)))
)))
(assert (forall ((_module.L$V@@6 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._module.L? _module.L$V@@6))  (or (= $o@@8 null) (= (dtype $o@@8) (Tclass._module.L? _module.L$V@@6))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($Is refType $o@@8 (Tclass._module.L? _module.L$V@@6)))
)))
(assert (forall ((_module.C$Z@@5 T@U) ($o@@9 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@9 (Tclass._module.C? _module.C$Z@@5) $heap) ($IsAlloc refType $o@@9 (Tclass._module.B? TInt _module.C$Z@@5) $heap))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._module.C? _module.C$Z@@5) $heap))
)))
(assert (forall ((_module.K$U@@8 T@U) ($o@@10 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@10 (Tclass._module.K? _module.K$U@@8) $heap@@0) ($IsAlloc refType $o@@10 (Tclass._module.B? TInt _module.K$U@@8) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsAlloc refType $o@@10 (Tclass._module.K? _module.K$U@@8) $heap@@0))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._System.object)  (and ($Is refType |c#0@@10| Tclass._System.object?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@10| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@10| Tclass._System.object?))
)))
(assert (forall ((_module.L$V@@7 T@U) ($o@@11 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@11 (Tclass._module.L? _module.L$V@@7) $heap@@1) ($IsAlloc refType $o@@11 (Tclass._module.C? _module.L$V@@7) $heap@@1))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsAlloc refType $o@@11 (Tclass._module.L? _module.L$V@@7) $heap@@1))
)))
(assert (forall ((_module.K$U@@9 T@U) ($o@@12 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@12 (Tclass._module.K? _module.K$U@@9) $heap@@2) ($IsAlloc refType $o@@12 Tclass._System.object? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc refType $o@@12 (Tclass._module.K? _module.K$U@@9) $heap@@2))
)))
(assert (forall ((_module.B$Y0@@1 T@U) (_module.B$Y1@@1 T@U) ($o@@13 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@13 (Tclass._module.B? _module.B$Y0@@1 _module.B$Y1@@1) $h@@10)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc refType $o@@13 (Tclass._module.B? _module.B$Y0@@1 _module.B$Y1@@1) $h@@10))
)))
(assert (forall ((_module.B$Y0@@2 T@U) (_module.B$Y1@@2 T@U) ) (! (= (Tclass._module.B_0 (Tclass._module.B _module.B$Y0@@2 _module.B$Y1@@2)) _module.B$Y0@@2)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.B _module.B$Y0@@2 _module.B$Y1@@2))
)))
(assert (forall ((_module.B$Y0@@3 T@U) (_module.B$Y1@@3 T@U) ) (! (= (Tclass._module.B_1 (Tclass._module.B _module.B$Y0@@3 _module.B$Y1@@3)) _module.B$Y1@@3)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.B _module.B$Y0@@3 _module.B$Y1@@3))
)))
(assert (forall ((_module.B$Y0@@4 T@U) (_module.B$Y1@@4 T@U) ) (! (= (Tclass._module.B?_0 (Tclass._module.B? _module.B$Y0@@4 _module.B$Y1@@4)) _module.B$Y0@@4)
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._module.B? _module.B$Y0@@4 _module.B$Y1@@4))
)))
(assert (forall ((_module.B$Y0@@5 T@U) (_module.B$Y1@@5 T@U) ) (! (= (Tclass._module.B?_1 (Tclass._module.B? _module.B$Y0@@5 _module.B$Y1@@5)) _module.B$Y1@@5)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass._module.B? _module.B$Y0@@5 _module.B$Y1@@5))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
)))
(assert (forall ((_module.B$Y0@@6 T@U) (_module.B$Y1@@6 T@U) ($o@@15 T@U) ) (! (= ($Is refType $o@@15 (Tclass._module.B? _module.B$Y0@@6 _module.B$Y1@@6))  (or (= $o@@15 null) (implements$_module.B (dtype $o@@15) _module.B$Y0@@6 _module.B$Y1@@6)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is refType $o@@15 (Tclass._module.B? _module.B$Y0@@6 _module.B$Y1@@6)))
)))
(assert (forall ((_module.A$X@@4 T@U) ) (! (= (Tclass._module.A_0 (Tclass._module.A _module.A$X@@4)) _module.A$X@@4)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.A _module.A$X@@4))
)))
(assert (forall ((_module.C$Z@@6 T@U) ) (! (= (Tclass._module.C_0 (Tclass._module.C _module.C$Z@@6)) _module.C$Z@@6)
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.C _module.C$Z@@6))
)))
(assert (forall ((_module.K$U@@10 T@U) ) (! (= (Tclass._module.K_0 (Tclass._module.K _module.K$U@@10)) _module.K$U@@10)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (Tclass._module.K _module.K$U@@10))
)))
(assert (forall ((_module.L$V@@8 T@U) ) (! (= (Tclass._module.L_0 (Tclass._module.L _module.L$V@@8)) _module.L$V@@8)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._module.L _module.L$V@@8))
)))
(assert (forall ((_module.A$X@@5 T@U) ) (! (= (Tclass._module.A?_0 (Tclass._module.A? _module.A$X@@5)) _module.A$X@@5)
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (Tclass._module.A? _module.A$X@@5))
)))
(assert (forall ((_module.C$Z@@7 T@U) ) (! (= (Tclass._module.C?_0 (Tclass._module.C? _module.C$Z@@7)) _module.C$Z@@7)
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (Tclass._module.C? _module.C$Z@@7))
)))
(assert (forall ((_module.K$U@@11 T@U) ) (! (= (Tclass._module.K?_0 (Tclass._module.K? _module.K$U@@11)) _module.K$U@@11)
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (Tclass._module.K? _module.K$U@@11))
)))
(assert (forall ((_module.L$V@@9 T@U) ) (! (= (Tclass._module.L?_0 (Tclass._module.L? _module.L$V@@9)) _module.L$V@@9)
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (Tclass._module.L? _module.L$V@@9))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((_module.A$X@@6 T@U) ($o@@16 T@U) ) (! (= ($Is refType $o@@16 (Tclass._module.A? _module.A$X@@6))  (or (= $o@@16 null) (implements$_module.A (dtype $o@@16) _module.A$X@@6)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is refType $o@@16 (Tclass._module.A? _module.A$X@@6)))
)))
(assert (forall ((_module.C$Z@@8 T@U) ($o@@17 T@U) ) (! (= ($Is refType $o@@17 (Tclass._module.C? _module.C$Z@@8))  (or (= $o@@17 null) (implements$_module.C (dtype $o@@17) _module.C$Z@@8)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($Is refType $o@@17 (Tclass._module.C? _module.C$Z@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@18 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f))  (=> (and (or (not (= $o@@18 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@18) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |615|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f))
)))
(assert (forall ((_module.K$U@@12 T@U) ($o@@19 T@U) ) (!  (=> ($Is refType $o@@19 (Tclass._module.K? _module.K$U@@12)) ($Is refType $o@@19 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($Is refType $o@@19 (Tclass._module.K? _module.K$U@@12)))
)))
(assert (forall ((_module.B$Y0@@7 T@U) (_module.B$Y1@@7 T@U) ) (!  (and (= (Tag (Tclass._module.B _module.B$Y0@@7 _module.B$Y1@@7)) Tagclass._module.B) (= (TagFamily (Tclass._module.B _module.B$Y0@@7 _module.B$Y1@@7)) tytagFamily$B))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.B _module.B$Y0@@7 _module.B$Y1@@7))
)))
(assert (forall ((_module.B$Y0@@8 T@U) (_module.B$Y1@@8 T@U) ) (!  (and (= (Tag (Tclass._module.B? _module.B$Y0@@8 _module.B$Y1@@8)) Tagclass._module.B?) (= (TagFamily (Tclass._module.B? _module.B$Y0@@8 _module.B$Y1@@8)) tytagFamily$B))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._module.B? _module.B$Y0@@8 _module.B$Y1@@8))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc realType v@@0 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@0 TReal h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is realType v@@2 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@2 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0| () T@U)
(declare-fun _module._default.CastsAfterTypeTests$W () T@U)
(declare-fun |l#0@@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#o#0| () Bool)
(declare-fun |o#0| () T@U)
(declare-fun |defass#b#1_0| () Bool)
(declare-fun |b#1_0| () T@U)
(declare-fun |defass#b#2_0| () Bool)
(declare-fun |b#2_0| () T@U)
(declare-fun |defass#b#3_0| () Bool)
(declare-fun |b#3_0| () T@U)
(declare-fun |defass#b#4_0| () Bool)
(declare-fun |b#4_0| () T@U)
(declare-fun |defass#p'#5_0| () Bool)
(declare-fun |p'#5_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CastsAfterTypeTests)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon13_Else_correct true))
(let ((anon13_Then_correct  (=> (= (ControlFlow 0 19) (- 0 18)) (= |k#0| |k#0|))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) true) (=> ($Is refType |k#0| (Tclass._module.A _module._default.CastsAfterTypeTests$W)) (and (=> (= (ControlFlow 0 15) (- 0 16)) true) (=> (= (ControlFlow 0 15) (- 0 14)) ($Is refType |k#0| (Tclass._module.A _module._default.CastsAfterTypeTests$W))))))))
(let ((anon11_Then_correct  (=> (and ($Is refType |k#0| (Tclass._module.B TInt TInt)) (= (ControlFlow 0 13) (- 0 12))) ($Is refType |k#0| (Tclass._module.B TInt TInt)))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (=> ($Is refType |k#0| (Tclass._module.B _module._default.CastsAfterTypeTests$W TInt)) (and (=> (= (ControlFlow 0 9) (- 0 10)) true) (=> (= (ControlFlow 0 9) (- 0 8)) ($Is refType |k#0| (Tclass._module.B _module._default.CastsAfterTypeTests$W TInt))))))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) true) (=> ($Is refType |k#0| (Tclass._module.B TReal _module._default.CastsAfterTypeTests$W)) (and (=> (= (ControlFlow 0 5) (- 0 6)) true) (=> (= (ControlFlow 0 5) (- 0 4)) ($Is refType |k#0| (Tclass._module.B TReal _module._default.CastsAfterTypeTests$W))))))))
(let ((anon8_Then_correct  (=> ($Is refType |l#0@@0| (Tclass._module.K _module._default.CastsAfterTypeTests$W)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is refType |l#0@@0| (Tclass._module.K _module._default.CastsAfterTypeTests$W))) (=> ($Is refType |l#0@@0| (Tclass._module.K _module._default.CastsAfterTypeTests$W)) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (Lit boolType (bool_2_U false)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (=> (= (ControlFlow 0 22) 2) anon8_Then_correct) (=> (= (ControlFlow 0 22) 5) anon9_Then_correct)) (=> (= (ControlFlow 0 22) 9) anon10_Then_correct)) (=> (= (ControlFlow 0 22) 13) anon11_Then_correct)) (=> (= (ControlFlow 0 22) 15) anon12_Then_correct)) (=> (= (ControlFlow 0 22) 19) anon13_Then_correct)) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |k#0| (Tclass._module.K _module._default.CastsAfterTypeTests$W)) ($IsAlloc refType |k#0| (Tclass._module.K _module._default.CastsAfterTypeTests$W) $Heap))) (=> (and (and (and (and ($Is refType |l#0@@0| (Tclass._module.L _module._default.CastsAfterTypeTests$W)) ($IsAlloc refType |l#0@@0| (Tclass._module.L _module._default.CastsAfterTypeTests$W) $Heap)) (and (=> |defass#o#0| (and ($Is refType |o#0| Tclass._System.object) ($IsAlloc refType |o#0| Tclass._System.object $Heap))) true)) (and (and (=> |defass#b#1_0| (and ($Is refType |b#1_0| (Tclass._module.A _module._default.CastsAfterTypeTests$W)) ($IsAlloc refType |b#1_0| (Tclass._module.A _module._default.CastsAfterTypeTests$W) $Heap))) true) (and (=> |defass#b#2_0| (and ($Is refType |b#2_0| (Tclass._module.B TInt TInt)) ($IsAlloc refType |b#2_0| (Tclass._module.B TInt TInt) $Heap))) true))) (and (and (and (=> |defass#b#3_0| (and ($Is refType |b#3_0| (Tclass._module.B _module._default.CastsAfterTypeTests$W TInt)) ($IsAlloc refType |b#3_0| (Tclass._module.B _module._default.CastsAfterTypeTests$W TInt) $Heap))) true) (and (=> |defass#b#4_0| (and ($Is refType |b#4_0| (Tclass._module.B TReal _module._default.CastsAfterTypeTests$W)) ($IsAlloc refType |b#4_0| (Tclass._module.B TReal _module._default.CastsAfterTypeTests$W) $Heap))) true)) (and (and (=> |defass#p'#5_0| (and ($Is refType |p'#5_0| (Tclass._module.K _module._default.CastsAfterTypeTests$W)) ($IsAlloc refType |p'#5_0| (Tclass._module.K _module._default.CastsAfterTypeTests$W) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 23) 22))))) anon0_correct))))
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
