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
(declare-fun alloc () T@U)
(declare-fun Tagclass.Functions.Class () T@U)
(declare-fun Tagclass.Functions.Class? () T@U)
(declare-fun Tagclass.Functions.Trait () T@U)
(declare-fun Tagclass.Functions.UberTrait () T@U)
(declare-fun Tagclass.Functions.InBetween () T@U)
(declare-fun Tagclass.Functions.UberTrait? () T@U)
(declare-fun Tagclass.Functions.InBetween? () T@U)
(declare-fun Tagclass.Functions.Trait? () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$UberTrait () T@U)
(declare-fun tytagFamily$InBetween () T@U)
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
(declare-fun implements$Functions.Trait (T@U T@U) Bool)
(declare-fun Tclass.Functions.Class? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Functions.UberTrait (T@U) T@U)
(declare-fun Tclass.Functions.UberTrait? (T@U) T@U)
(declare-fun Tclass.Functions.InBetween (T@U) T@U)
(declare-fun Tclass.Functions.InBetween? (T@U) T@U)
(declare-fun Tclass.Functions.Trait (T@U) T@U)
(declare-fun Tclass.Functions.Trait? (T@U) T@U)
(declare-fun Tclass.Functions.Class (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Functions.Class_0 (T@U) T@U)
(declare-fun Tclass.Functions.Class?_0 (T@U) T@U)
(declare-fun Tclass.Functions.Trait_0 (T@U) T@U)
(declare-fun Tclass.Functions.UberTrait_0 (T@U) T@U)
(declare-fun Tclass.Functions.InBetween_0 (T@U) T@U)
(declare-fun Tclass.Functions.UberTrait?_0 (T@U) T@U)
(declare-fun Tclass.Functions.InBetween?_0 (T@U) T@U)
(declare-fun Tclass.Functions.Trait?_0 (T@U) T@U)
(declare-fun implements$Functions.UberTrait (T@U T@U) Bool)
(declare-fun implements$Functions.InBetween (T@U T@U) Bool)
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
(assert (distinct alloc Tagclass.Functions.Class Tagclass.Functions.Class? Tagclass.Functions.Trait Tagclass.Functions.UberTrait Tagclass.Functions.InBetween Tagclass.Functions.UberTrait? Tagclass.Functions.InBetween? Tagclass.Functions.Trait? tytagFamily$Class tytagFamily$Trait tytagFamily$UberTrait tytagFamily$InBetween)
)
(assert (forall ((Functions.Class$Ac T@U) ) (! (implements$Functions.Trait (Tclass.Functions.Class? Functions.Class$Ac) Functions.Class$Ac)
 :qid |unknown.0:0|
 :skolemid |1619|
)))
(assert (= (Ctor refType) 3))
(assert (forall ((Functions.UberTrait$Au T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Functions.UberTrait Functions.UberTrait$Au) $h) ($IsAlloc refType |c#0| (Tclass.Functions.UberTrait? Functions.UberTrait$Au) $h))
 :qid |unknown.0:0|
 :skolemid |1581|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Functions.UberTrait Functions.UberTrait$Au) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Functions.UberTrait? Functions.UberTrait$Au) $h))
)))
(assert (forall ((Functions.InBetween$Ai T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.Functions.InBetween Functions.InBetween$Ai) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.Functions.InBetween? Functions.InBetween$Ai) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1592|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Functions.InBetween Functions.InBetween$Ai) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Functions.InBetween? Functions.InBetween$Ai) $h@@0))
)))
(assert (forall ((Functions.Trait$At T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.Functions.Trait Functions.Trait$At) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.Functions.Trait? Functions.Trait$At) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1616|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Functions.Trait Functions.Trait$At) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Functions.Trait? Functions.Trait$At) $h@@1))
)))
(assert (forall ((Functions.Class$Ac@@0 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.Functions.Class Functions.Class$Ac@@0) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.Functions.Class? Functions.Class$Ac@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Functions.Class Functions.Class$Ac@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Functions.Class? Functions.Class$Ac@@0) $h@@2))
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
(assert (forall ((Functions.UberTrait$Au@@0 T@U) ($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@0) $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1565|
 :pattern ( ($IsAlloc refType $o (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@0) $h@@3))
)))
(assert (forall ((Functions.InBetween$Ai@@0 T@U) ($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@0) $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1583|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@0) $h@@4))
)))
(assert (forall ((Functions.Trait$At@@0 T@U) ($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Functions.Trait? Functions.Trait$At@@0) $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1594|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Functions.Trait? Functions.Trait$At@@0) $h@@5))
)))
(assert (forall ((Functions.Class$Ac@@1 T@U) ($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.Functions.Class? Functions.Class$Ac@@1) $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1618|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.Functions.Class? Functions.Class$Ac@@1) $h@@6))
)))
(assert (forall ((Functions.InBetween$Ai@@1 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@1)) ($Is refType $o@@3 (Tclass.Functions.UberTrait? Functions.InBetween$Ai@@1)))
 :qid |unknown.0:0|
 :skolemid |1655|
 :pattern ( ($Is refType $o@@3 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@1)))
)))
(assert (forall ((Functions.InBetween$Ai@@2 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.Functions.InBetween? Functions.InBetween$Ai@@2)) ($IsBox bx (Tclass.Functions.UberTrait? Functions.InBetween$Ai@@2)))
 :qid |unknown.0:0|
 :skolemid |1653|
 :pattern ( ($IsBox bx (Tclass.Functions.InBetween? Functions.InBetween$Ai@@2)))
)))
(assert (forall ((Functions.Trait$At@@1 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass.Functions.Trait? Functions.Trait$At@@1)) ($Is refType $o@@4 (Tclass.Functions.InBetween? Functions.Trait$At@@1)))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( ($Is refType $o@@4 (Tclass.Functions.Trait? Functions.Trait$At@@1)))
)))
(assert (forall ((Functions.Trait$At@@2 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Functions.Trait? Functions.Trait$At@@2)) ($IsBox bx@@0 (Tclass.Functions.InBetween? Functions.Trait$At@@2)))
 :qid |unknown.0:0|
 :skolemid |1657|
 :pattern ( ($IsBox bx@@0 (Tclass.Functions.Trait? Functions.Trait$At@@2)))
)))
(assert (forall ((Functions.Class$Ac@@2 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass.Functions.Class? Functions.Class$Ac@@2)) ($Is refType $o@@5 (Tclass.Functions.Trait? Functions.Class$Ac@@2)))
 :qid |unknown.0:0|
 :skolemid |1663|
 :pattern ( ($Is refType $o@@5 (Tclass.Functions.Class? Functions.Class$Ac@@2)))
)))
(assert (forall ((Functions.Class$Ac@@3 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.Functions.Class? Functions.Class$Ac@@3)) ($IsBox bx@@1 (Tclass.Functions.Trait? Functions.Class$Ac@@3)))
 :qid |unknown.0:0|
 :skolemid |1661|
 :pattern ( ($IsBox bx@@1 (Tclass.Functions.Class? Functions.Class$Ac@@3)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |858|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((Functions.UberTrait$Au@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Functions.UberTrait Functions.UberTrait$Au@@1))  (and ($Is refType |c#0@@3| (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1580|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Functions.UberTrait Functions.UberTrait$Au@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@1)))
)))
(assert (forall ((Functions.InBetween$Ai@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.Functions.InBetween Functions.InBetween$Ai@@3))  (and ($Is refType |c#0@@4| (Tclass.Functions.InBetween? Functions.InBetween$Ai@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1591|
 :pattern ( ($Is refType |c#0@@4| (Tclass.Functions.InBetween Functions.InBetween$Ai@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.Functions.InBetween? Functions.InBetween$Ai@@3)))
)))
(assert (forall ((Functions.Trait$At@@3 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass.Functions.Trait Functions.Trait$At@@3))  (and ($Is refType |c#0@@5| (Tclass.Functions.Trait? Functions.Trait$At@@3)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1615|
 :pattern ( ($Is refType |c#0@@5| (Tclass.Functions.Trait Functions.Trait$At@@3)))
 :pattern ( ($Is refType |c#0@@5| (Tclass.Functions.Trait? Functions.Trait$At@@3)))
)))
(assert (forall ((Functions.Class$Ac@@4 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.Functions.Class Functions.Class$Ac@@4))  (and ($Is refType |c#0@@6| (Tclass.Functions.Class? Functions.Class$Ac@@4)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( ($Is refType |c#0@@6| (Tclass.Functions.Class Functions.Class$Ac@@4)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.Functions.Class? Functions.Class$Ac@@4)))
)))
(assert (forall ((Functions.Class$Ac@@5 T@U) ) (!  (and (= (Tag (Tclass.Functions.Class Functions.Class$Ac@@5)) Tagclass.Functions.Class) (= (TagFamily (Tclass.Functions.Class Functions.Class$Ac@@5)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |1499|
 :pattern ( (Tclass.Functions.Class Functions.Class$Ac@@5))
)))
(assert (forall ((Functions.Class$Ac@@6 T@U) ) (!  (and (= (Tag (Tclass.Functions.Class? Functions.Class$Ac@@6)) Tagclass.Functions.Class?) (= (TagFamily (Tclass.Functions.Class? Functions.Class$Ac@@6)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (Tclass.Functions.Class? Functions.Class$Ac@@6))
)))
(assert (forall ((Functions.Trait$At@@4 T@U) ) (!  (and (= (Tag (Tclass.Functions.Trait Functions.Trait$At@@4)) Tagclass.Functions.Trait) (= (TagFamily (Tclass.Functions.Trait Functions.Trait$At@@4)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( (Tclass.Functions.Trait Functions.Trait$At@@4))
)))
(assert (forall ((Functions.UberTrait$Au@@2 T@U) ) (!  (and (= (Tag (Tclass.Functions.UberTrait Functions.UberTrait$Au@@2)) Tagclass.Functions.UberTrait) (= (TagFamily (Tclass.Functions.UberTrait Functions.UberTrait$Au@@2)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( (Tclass.Functions.UberTrait Functions.UberTrait$Au@@2))
)))
(assert (forall ((Functions.InBetween$Ai@@4 T@U) ) (!  (and (= (Tag (Tclass.Functions.InBetween Functions.InBetween$Ai@@4)) Tagclass.Functions.InBetween) (= (TagFamily (Tclass.Functions.InBetween Functions.InBetween$Ai@@4)) tytagFamily$InBetween))
 :qid |unknown.0:0|
 :skolemid |1511|
 :pattern ( (Tclass.Functions.InBetween Functions.InBetween$Ai@@4))
)))
(assert (forall ((Functions.UberTrait$Au@@3 T@U) ) (!  (and (= (Tag (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@3)) Tagclass.Functions.UberTrait?) (= (TagFamily (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@3)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |1518|
 :pattern ( (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@3))
)))
(assert (forall ((Functions.InBetween$Ai@@5 T@U) ) (!  (and (= (Tag (Tclass.Functions.InBetween? Functions.InBetween$Ai@@5)) Tagclass.Functions.InBetween?) (= (TagFamily (Tclass.Functions.InBetween? Functions.InBetween$Ai@@5)) tytagFamily$InBetween))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( (Tclass.Functions.InBetween? Functions.InBetween$Ai@@5))
)))
(assert (forall ((Functions.Trait$At@@5 T@U) ) (!  (and (= (Tag (Tclass.Functions.Trait? Functions.Trait$At@@5)) Tagclass.Functions.Trait?) (= (TagFamily (Tclass.Functions.Trait? Functions.Trait$At@@5)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( (Tclass.Functions.Trait? Functions.Trait$At@@5))
)))
(assert (forall ((Functions.Class$Ac@@7 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.Functions.Class? Functions.Class$Ac@@7))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.Functions.Class? Functions.Class$Ac@@7))))
 :qid |unknown.0:0|
 :skolemid |1617|
 :pattern ( ($Is refType $o@@6 (Tclass.Functions.Class? Functions.Class$Ac@@7)))
)))
(assert (forall ((Functions.InBetween$Ai@@6 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@6) $heap) ($IsAlloc refType $o@@7 (Tclass.Functions.UberTrait? Functions.InBetween$Ai@@6) $heap))
 :qid |unknown.0:0|
 :skolemid |1656|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@6) $heap))
)))
(assert (forall ((Functions.Trait$At@@6 T@U) ($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 (Tclass.Functions.Trait? Functions.Trait$At@@6) $heap@@0) ($IsAlloc refType $o@@8 (Tclass.Functions.InBetween? Functions.Trait$At@@6) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1660|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass.Functions.Trait? Functions.Trait$At@@6) $heap@@0))
)))
(assert (forall ((Functions.Class$Ac@@8 T@U) ($o@@9 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@9 (Tclass.Functions.Class? Functions.Class$Ac@@8) $heap@@1) ($IsAlloc refType $o@@9 (Tclass.Functions.Trait? Functions.Class$Ac@@8) $heap@@1))
 :qid |unknown.0:0|
 :skolemid |1664|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass.Functions.Class? Functions.Class$Ac@@8) $heap@@1))
)))
(assert (forall ((v T@U) (t T@U) (T@@0 T@T) ) (! (= ($IsBox ($Box T@@0 v) t) ($Is T@@0 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |870|
 :pattern ( ($IsBox ($Box T@@0 v) t))
)))
(assert (forall ((Functions.Class$Ac@@9 T@U) ) (! (= (Tclass.Functions.Class_0 (Tclass.Functions.Class Functions.Class$Ac@@9)) Functions.Class$Ac@@9)
 :qid |unknown.0:0|
 :skolemid |1500|
 :pattern ( (Tclass.Functions.Class Functions.Class$Ac@@9))
)))
(assert (forall ((Functions.Class$Ac@@10 T@U) ) (! (= (Tclass.Functions.Class?_0 (Tclass.Functions.Class? Functions.Class$Ac@@10)) Functions.Class$Ac@@10)
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( (Tclass.Functions.Class? Functions.Class$Ac@@10))
)))
(assert (forall ((Functions.Trait$At@@7 T@U) ) (! (= (Tclass.Functions.Trait_0 (Tclass.Functions.Trait Functions.Trait$At@@7)) Functions.Trait$At@@7)
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( (Tclass.Functions.Trait Functions.Trait$At@@7))
)))
(assert (forall ((Functions.UberTrait$Au@@4 T@U) ) (! (= (Tclass.Functions.UberTrait_0 (Tclass.Functions.UberTrait Functions.UberTrait$Au@@4)) Functions.UberTrait$Au@@4)
 :qid |unknown.0:0|
 :skolemid |1509|
 :pattern ( (Tclass.Functions.UberTrait Functions.UberTrait$Au@@4))
)))
(assert (forall ((Functions.InBetween$Ai@@7 T@U) ) (! (= (Tclass.Functions.InBetween_0 (Tclass.Functions.InBetween Functions.InBetween$Ai@@7)) Functions.InBetween$Ai@@7)
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( (Tclass.Functions.InBetween Functions.InBetween$Ai@@7))
)))
(assert (forall ((Functions.UberTrait$Au@@5 T@U) ) (! (= (Tclass.Functions.UberTrait?_0 (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@5)) Functions.UberTrait$Au@@5)
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@5))
)))
(assert (forall ((Functions.InBetween$Ai@@8 T@U) ) (! (= (Tclass.Functions.InBetween?_0 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@8)) Functions.InBetween$Ai@@8)
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( (Tclass.Functions.InBetween? Functions.InBetween$Ai@@8))
)))
(assert (forall ((Functions.Trait$At@@8 T@U) ) (! (= (Tclass.Functions.Trait?_0 (Tclass.Functions.Trait? Functions.Trait$At@@8)) Functions.Trait$At@@8)
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( (Tclass.Functions.Trait? Functions.Trait$At@@8))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |857|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall ((Functions.UberTrait$Au@@6 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@6))  (or (= $o@@10 null) (implements$Functions.UberTrait (dtype $o@@10) Functions.UberTrait$Au@@6)))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($Is refType $o@@10 (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@6)))
)))
(assert (forall ((Functions.InBetween$Ai@@9 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@9))  (or (= $o@@11 null) (implements$Functions.InBetween (dtype $o@@11) Functions.InBetween$Ai@@9)))
 :qid |unknown.0:0|
 :skolemid |1582|
 :pattern ( ($Is refType $o@@11 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@9)))
)))
(assert (forall ((Functions.Trait$At@@9 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass.Functions.Trait? Functions.Trait$At@@9))  (or (= $o@@12 null) (implements$Functions.Trait (dtype $o@@12) Functions.Trait$At@@9)))
 :qid |unknown.0:0|
 :skolemid |1593|
 :pattern ( ($Is refType $o@@12 (Tclass.Functions.Trait? Functions.Trait$At@@9)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5451|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((Functions.Class$Ac@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.Functions.Class Functions.Class$Ac@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass.Functions.Class Functions.Class$Ac@@11))))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( ($IsBox bx@@2 (Tclass.Functions.Class Functions.Class$Ac@@11)))
)))
(assert (forall ((Functions.Class$Ac@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.Functions.Class? Functions.Class$Ac@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.Functions.Class? Functions.Class$Ac@@12))))
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( ($IsBox bx@@3 (Tclass.Functions.Class? Functions.Class$Ac@@12)))
)))
(assert (forall ((Functions.Trait$At@@10 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Functions.Trait Functions.Trait$At@@10)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.Functions.Trait Functions.Trait$At@@10))))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( ($IsBox bx@@4 (Tclass.Functions.Trait Functions.Trait$At@@10)))
)))
(assert (forall ((Functions.UberTrait$Au@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.Functions.UberTrait Functions.UberTrait$Au@@7)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.Functions.UberTrait Functions.UberTrait$Au@@7))))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( ($IsBox bx@@5 (Tclass.Functions.UberTrait Functions.UberTrait$Au@@7)))
)))
(assert (forall ((Functions.InBetween$Ai@@10 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Functions.InBetween Functions.InBetween$Ai@@10)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.Functions.InBetween Functions.InBetween$Ai@@10))))
 :qid |unknown.0:0|
 :skolemid |1513|
 :pattern ( ($IsBox bx@@6 (Tclass.Functions.InBetween Functions.InBetween$Ai@@10)))
)))
(assert (forall ((Functions.UberTrait$Au@@8 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@8)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@8))))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsBox bx@@7 (Tclass.Functions.UberTrait? Functions.UberTrait$Au@@8)))
)))
(assert (forall ((Functions.InBetween$Ai@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.Functions.InBetween? Functions.InBetween$Ai@@11))))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsBox bx@@8 (Tclass.Functions.InBetween? Functions.InBetween$Ai@@11)))
)))
(assert (forall ((Functions.Trait$At@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Functions.Trait? Functions.Trait$At@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.Functions.Trait? Functions.Trait$At@@11))))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsBox bx@@9 (Tclass.Functions.Trait? Functions.Trait$At@@11)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Functions.UberTrait$Au@@9 () T@U)
(declare-fun Functions.Class$Ac@@13 () T@U)
(declare-fun Functions.UberTrait.InstanceU3$Bu () T@U)
(declare-fun Functions.Class.InstanceU3$Bc () T@U)
(declare-fun Class_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$Functions.Class.InstanceU3)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= Functions.UberTrait$Au@@9 Functions.Class$Ac@@13) (= Functions.UberTrait.InstanceU3$Bu Functions.Class.InstanceU3$Bc)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= Class_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (forall (($o@@14 T@U) ($f@@0 T@U) ) (! true
 :qid |MoreAutoInitdfy.155:14|
 :skolemid |1626|
)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.Functions.Class Functions.Class$Ac@@13)) ($IsAlloc refType this (Tclass.Functions.Class Functions.Class$Ac@@13) $Heap)))) (and (and ($IsBox |a#0| Functions.Class$Ac@@13) ($IsBox |b#0| Functions.Class.InstanceU3$Bc)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))
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
