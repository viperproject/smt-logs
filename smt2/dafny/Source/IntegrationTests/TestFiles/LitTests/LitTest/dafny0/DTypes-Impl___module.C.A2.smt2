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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.CP? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.CP () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$CP () T@U)
(declare-fun field$a2x () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun Tclass._module.Node () T@U)
(declare-fun _module.C.a2x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.CP (T@U T@U) T@U)
(declare-fun Tclass._module.CP? (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.CP?_0 (T@U) T@U)
(declare-fun Tclass._module.CP?_1 (T@U) T@U)
(declare-fun Tclass._module.CP_0 (T@U) T@U)
(declare-fun Tclass._module.CP_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.C? Tagclass._module.C? Tagclass._module.Node? Tagclass._module.C Tagclass._module.CP? Tagclass._module.Node Tagclass._module.CP tytagFamily$object tytagFamily$C tytagFamily$Node tytagFamily$CP field$a2x)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1620|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a T@U) (b T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a b) o@@0)  (and (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |1632|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a b) o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1983|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Node?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($Is refType $o@@0 Tclass._module.Node?))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@0 b@@0) b@@0) (|Set#Intersection| a@@0 b@@0))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |1635|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@0 b@@0) b@@0))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1846|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Node $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Node? $h@@1))
)))
(assert (= (FDim _module.C.a2x) 0))
(assert (= (FieldOfDecl class._module.C? field$a2x) _module.C.a2x))
(assert  (not ($IsGhostField _module.C.a2x)))
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
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.C? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1984|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.C? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Node? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Node? $h@@4))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1521|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1541|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1542|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((_module.CP$T T@U) (_module.CP$U T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.CP _module.CP$T _module.CP$U))  (and ($Is refType |c#0@@2| (Tclass._module.CP? _module.CP$T _module.CP$U)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.CP _module.CP$T _module.CP$U)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.CP? _module.CP$T _module.CP$U)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1534|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((_module.CP$T@@0 T@U) (_module.CP$U@@0 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.CP? _module.CP$T@@0 _module.CP$U@@0))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.CP? _module.CP$T@@0 _module.CP$U@@0))))
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( ($Is refType $o@@4 (Tclass._module.CP? _module.CP$T@@0 _module.CP$U@@0)))
)))
(assert (forall ((_module.CP$T@@1 T@U) (_module.CP$U@@1 T@U) (|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| (Tclass._module.CP _module.CP$T@@1 _module.CP$U@@1) $h@@5) ($IsAlloc refType |c#0@@3| (Tclass._module.CP? _module.CP$T@@1 _module.CP$U@@1) $h@@5))
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.CP _module.CP$T@@1 _module.CP$U@@1) $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.CP? _module.CP$T@@1 _module.CP$U@@1) $h@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1982|
 :pattern ( ($IsBox bx@@2 Tclass._module.C?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |1985|
 :pattern ( ($IsBox bx@@3 Tclass._module.Node?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |1988|
 :pattern ( ($IsBox bx@@4 Tclass._module.C))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |2009|
 :pattern ( ($IsBox bx@@5 Tclass._module.Node))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.C)  (and ($Is refType |c#0@@5| Tclass._module.C?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.C?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Node)  (and ($Is refType |c#0@@6| Tclass._module.Node?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Node?))
)))
(assert (forall ((_module.CP$T@@2 T@U) (_module.CP$U@@2 T@U) ($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass._module.CP? _module.CP$T@@2 _module.CP$U@@2) $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass._module.CP? _module.CP$T@@2 _module.CP$U@@2) $h@@6))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1645|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1602|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1533|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.C.a2x)) (TSet (Tclass._module.CP? Tclass._module.C Tclass._module.Node)) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2011|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.C.a2x)))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1562|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1563|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((_module.CP$T@@3 T@U) (_module.CP$U@@3 T@U) ) (! (= (Tclass._module.CP?_0 (Tclass._module.CP? _module.CP$T@@3 _module.CP$U@@3)) _module.CP$T@@3)
 :qid |unknown.0:0|
 :skolemid |1998|
 :pattern ( (Tclass._module.CP? _module.CP$T@@3 _module.CP$U@@3))
)))
(assert (forall ((_module.CP$T@@4 T@U) (_module.CP$U@@4 T@U) ) (! (= (Tclass._module.CP?_1 (Tclass._module.CP? _module.CP$T@@4 _module.CP$U@@4)) _module.CP$U@@4)
 :qid |unknown.0:0|
 :skolemid |1999|
 :pattern ( (Tclass._module.CP? _module.CP$T@@4 _module.CP$U@@4))
)))
(assert (forall ((_module.CP$T@@5 T@U) (_module.CP$U@@5 T@U) ) (! (= (Tclass._module.CP_0 (Tclass._module.CP _module.CP$T@@5 _module.CP$U@@5)) _module.CP$T@@5)
 :qid |unknown.0:0|
 :skolemid |2025|
 :pattern ( (Tclass._module.CP _module.CP$T@@5 _module.CP$U@@5))
)))
(assert (forall ((_module.CP$T@@6 T@U) (_module.CP$U@@6 T@U) ) (! (= (Tclass._module.CP_1 (Tclass._module.CP _module.CP$T@@6 _module.CP$U@@6)) _module.CP$U@@6)
 :qid |unknown.0:0|
 :skolemid |2026|
 :pattern ( (Tclass._module.CP _module.CP$T@@6 _module.CP$U@@6))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.C?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.C.a2x)) (TSet (Tclass._module.CP? Tclass._module.C Tclass._module.Node))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2010|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.C.a2x)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1496|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1497|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1520|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Intersection| a@@2 (|Set#Intersection| a@@2 b@@2)) (|Set#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |1636|
 :pattern ( (|Set#Intersection| a@@2 (|Set#Intersection| a@@2 b@@2)))
)))
(assert (forall ((_module.CP$T@@7 T@U) (_module.CP$U@@7 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.CP? _module.CP$T@@7 _module.CP$U@@7)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.CP? _module.CP$T@@7 _module.CP$U@@7))))
 :qid |unknown.0:0|
 :skolemid |2000|
 :pattern ( ($IsBox bx@@7 (Tclass._module.CP? _module.CP$T@@7 _module.CP$U@@7)))
)))
(assert (forall ((_module.CP$T@@8 T@U) (_module.CP$U@@8 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.CP _module.CP$T@@8 _module.CP$U@@8)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.CP _module.CP$T@@8 _module.CP$U@@8))))
 :qid |unknown.0:0|
 :skolemid |2027|
 :pattern ( ($IsBox bx@@8 (Tclass._module.CP _module.CP$T@@8 _module.CP$U@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2228|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((_module.CP$T@@9 T@U) (_module.CP$U@@9 T@U) ) (!  (and (= (Tag (Tclass._module.CP? _module.CP$T@@9 _module.CP$U@@9)) Tagclass._module.CP?) (= (TagFamily (Tclass._module.CP? _module.CP$T@@9 _module.CP$U@@9)) tytagFamily$CP))
 :qid |unknown.0:0|
 :skolemid |1997|
 :pattern ( (Tclass._module.CP? _module.CP$T@@9 _module.CP$U@@9))
)))
(assert (forall ((_module.CP$T@@10 T@U) (_module.CP$U@@10 T@U) ) (!  (and (= (Tag (Tclass._module.CP _module.CP$T@@10 _module.CP$U@@10)) Tagclass._module.CP) (= (TagFamily (Tclass._module.CP _module.CP$T@@10 _module.CP$U@@10)) tytagFamily$CP))
 :qid |unknown.0:0|
 :skolemid |2024|
 :pattern ( (Tclass._module.CP _module.CP$T@@10 _module.CP$U@@10))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1527|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@3 o@@1) (|Set#IsMember| b@@3 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1643|
 :pattern ( (|Set#IsMember| a@@3 o@@1))
 :pattern ( (|Set#IsMember| b@@3 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1644|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun this () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.C.A2)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |x#0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.a2x))) (= (ControlFlow 0 2) (- 0 1))) (|Set#Equal| (|Set#Intersection| |x#0@0| |b#0|) |Set#Empty|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap))) (and ($Is SetType |b#0| (TSet (Tclass._module.CP? Tclass._module.Node Tclass._module.C))) ($IsAlloc SetType |b#0| (TSet (Tclass._module.CP? Tclass._module.Node Tclass._module.C)) $Heap))) (and (and ($Is SetType |x#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |x#0| (TSet Tclass._System.object?) $Heap)) true)) (=> (and (and (and (and ($Is SetType |y#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |y#0| (TSet Tclass._System.object?) $Heap)) true) (= 1 $FunctionContextHeight)) (and (not (|Set#IsMember| |b#0| ($Box refType null))) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
