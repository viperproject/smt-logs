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
(declare-fun Tagclass.TraitDefinitions.SubTrait () T@U)
(declare-fun Tagclass.All.Y () T@U)
(declare-fun Tagclass.TraitDefinitions.SuperTrait () T@U)
(declare-fun Tagclass.All.Y? () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait2 () T@U)
(declare-fun class.All.Y? () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait? () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait2? () T@U)
(declare-fun Tagclass.TraitDefinitions.SuperTrait? () T@U)
(declare-fun Tagclass.TraitDefinitions.SubTrait? () T@U)
(declare-fun tytagFamily$SubTrait () T@U)
(declare-fun tytagFamily$Y () T@U)
(declare-fun tytagFamily$SuperTrait () T@U)
(declare-fun tytagFamily$NoMemberTrait () T@U)
(declare-fun tytagFamily$NoMemberTrait2 () T@U)
(declare-fun field$c () T@U)
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
(declare-fun implements$TraitDefinitions.SubTrait (T@U T@U T@U) Bool)
(declare-fun Tclass.All.Y? (T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.All.Y (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait? () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2 () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2? () T@U)
(declare-fun Tclass.TraitDefinitions.SuperTrait () T@U)
(declare-fun Tclass.TraitDefinitions.SuperTrait? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitDefinitions.SubTrait? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun All.Y.c () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_1 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_1 (T@U) T@U)
(declare-fun Tclass.All.Y_0 (T@U) T@U)
(declare-fun Tclass.All.Y?_0 (T@U) T@U)
(declare-fun implements$TraitDefinitions.NoMemberTrait (T@U) Bool)
(declare-fun implements$TraitDefinitions.NoMemberTrait2 (T@U) Bool)
(declare-fun implements$TraitDefinitions.SuperTrait (T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.TraitDefinitions.SubTrait Tagclass.All.Y Tagclass.TraitDefinitions.SuperTrait Tagclass.All.Y? Tagclass.TraitDefinitions.NoMemberTrait Tagclass.TraitDefinitions.NoMemberTrait2 class.All.Y? Tagclass.TraitDefinitions.NoMemberTrait? Tagclass.TraitDefinitions.NoMemberTrait2? Tagclass.TraitDefinitions.SuperTrait? Tagclass.TraitDefinitions.SubTrait? tytagFamily$SubTrait tytagFamily$Y tytagFamily$SuperTrait tytagFamily$NoMemberTrait tytagFamily$NoMemberTrait2 field$c)
)
(assert (forall ((All.Y$I T@U) ) (! (implements$TraitDefinitions.SubTrait (Tclass.All.Y? All.Y$I) TInt All.Y$I)
 :qid |unknown.0:0|
 :skolemid |2118|
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((All.Y$I@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h) ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2174|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.TraitDefinitions.NoMemberTrait $h@@0) ($IsAlloc refType |c#0@@0| Tclass.TraitDefinitions.NoMemberTrait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TraitDefinitions.NoMemberTrait $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TraitDefinitions.NoMemberTrait? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait2 $h@@1) ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait2? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait2 $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait2? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.SuperTrait $h@@2) ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.SuperTrait? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.SuperTrait $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.SuperTrait? $h@@2))
)))
(assert (forall ((All.Y$I@@1 T@U) ($o T@U) ) (!  (=> ($Is refType $o (Tclass.All.Y? All.Y$I@@1)) ($Is refType $o (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@1)))
 :qid |unknown.0:0|
 :skolemid |2286|
 :pattern ( ($Is refType $o (Tclass.All.Y? All.Y$I@@1)))
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
(assert (forall ((All.Y$I@@2 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.All.Y? All.Y$I@@2) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.All.Y? All.Y$I@@2) $h@@3))
)))
(assert (= (FDim All.Y.c) 0))
(assert (= (FieldOfDecl class.All.Y? field$c) All.Y.c))
(assert  (not ($IsGhostField All.Y.c)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.TraitDefinitions.NoMemberTrait? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.TraitDefinitions.NoMemberTrait? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.TraitDefinitions.NoMemberTrait2? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.TraitDefinitions.NoMemberTrait2? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.TraitDefinitions.SuperTrait? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.TraitDefinitions.SuperTrait? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1695|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1696|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1603|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((TraitDefinitions.SubTrait$T T@U) (TraitDefinitions.SubTrait$I T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I))  (and ($Is refType |c#0@@3| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($Is refType |c#0@@3| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
)))
(assert (forall ((All.Y$I@@3 T@U) ($h@@7 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.All.Y? All.Y$I@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) All.Y.c)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) All.Y.c)) (Tclass.All.Y? All.Y$I@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall ((All.Y$I@@4 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.All.Y All.Y$I@@4))  (and ($Is refType |c#0@@4| (Tclass.All.Y? All.Y$I@@4)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2173|
 :pattern ( ($Is refType |c#0@@4| (Tclass.All.Y All.Y$I@@4)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.All.Y? All.Y$I@@4)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1687|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((All.Y$I@@5 T@U) ) (!  (and (= (Tag (Tclass.All.Y All.Y$I@@5)) Tagclass.All.Y) (= (TagFamily (Tclass.All.Y All.Y$I@@5)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( (Tclass.All.Y All.Y$I@@5))
)))
(assert (forall ((All.Y$I@@6 T@U) ) (!  (and (= (Tag (Tclass.All.Y? All.Y$I@@6)) Tagclass.All.Y?) (= (TagFamily (Tclass.All.Y? All.Y$I@@6)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( (Tclass.All.Y? All.Y$I@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (= $o@@5 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2295|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@0 T@U) (TraitDefinitions.SubTrait$I@@0 T@U) (|c#0@@5| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@5| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@8) ($IsAlloc refType |c#0@@5| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@8))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($IsAlloc refType |c#0@@5| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@5| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@8))
)))
(assert (forall ((All.Y$I@@7 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.All.Y? All.Y$I@@7))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.All.Y? All.Y$I@@7))))
 :qid |unknown.0:0|
 :skolemid |2116|
 :pattern ( ($Is refType $o@@6 (Tclass.All.Y? All.Y$I@@7)))
)))
(assert (forall ((All.Y$I@@8 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.All.Y? All.Y$I@@8) $heap) ($IsAlloc refType $o@@7 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@8) $heap))
 :qid |unknown.0:0|
 :skolemid |2287|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.All.Y? All.Y$I@@8) $heap))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.TraitDefinitions.NoMemberTrait)  (and ($Is refType |c#0@@6| Tclass.TraitDefinitions.NoMemberTrait?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($Is refType |c#0@@6| Tclass.TraitDefinitions.NoMemberTrait))
 :pattern ( ($Is refType |c#0@@6| Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass.TraitDefinitions.NoMemberTrait2)  (and ($Is refType |c#0@@7| Tclass.TraitDefinitions.NoMemberTrait2?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($Is refType |c#0@@7| Tclass.TraitDefinitions.NoMemberTrait2))
 :pattern ( ($Is refType |c#0@@7| Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass.TraitDefinitions.SuperTrait)  (and ($Is refType |c#0@@8| Tclass.TraitDefinitions.SuperTrait?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($Is refType |c#0@@8| Tclass.TraitDefinitions.SuperTrait))
 :pattern ( ($Is refType |c#0@@8| Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall (($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass.TraitDefinitions.SuperTrait? $heap@@0) ($IsAlloc refType $o@@8 Tclass.TraitDefinitions.NoMemberTrait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2275|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.TraitDefinitions.SuperTrait? $heap@@0))
)))
(assert (forall (($o@@9 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@9 Tclass.TraitDefinitions.SuperTrait? $heap@@1) ($IsAlloc refType $o@@9 Tclass.TraitDefinitions.NoMemberTrait2? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2279|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.TraitDefinitions.SuperTrait? $heap@@1))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@1 T@U) (TraitDefinitions.SubTrait$I@@1 T@U) ($o@@10 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@10 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@9)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@10 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@9))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1694|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1684|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@2 T@U) (TraitDefinitions.SubTrait$I@@2 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait_0 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2)) TraitDefinitions.SubTrait$T@@2)
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@3 T@U) (TraitDefinitions.SubTrait$I@@3 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait_1 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@3 TraitDefinitions.SubTrait$I@@3)) TraitDefinitions.SubTrait$I@@3)
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@3 TraitDefinitions.SubTrait$I@@3))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@4 T@U) (TraitDefinitions.SubTrait$I@@4 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait?_0 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@4 TraitDefinitions.SubTrait$I@@4)) TraitDefinitions.SubTrait$T@@4)
 :qid |unknown.0:0|
 :skolemid |2260|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@4 TraitDefinitions.SubTrait$I@@4))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@5 T@U) (TraitDefinitions.SubTrait$I@@5 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait?_1 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@5 TraitDefinitions.SubTrait$I@@5)) TraitDefinitions.SubTrait$I@@5)
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@5 TraitDefinitions.SubTrait$I@@5))
)))
(assert (forall ((All.Y$I@@9 T@U) ($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.All.Y? All.Y$I@@9)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) All.Y.c)) TInt))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) All.Y.c)) (Tclass.All.Y? All.Y$I@@9))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@6 T@U) (TraitDefinitions.SubTrait$I@@6 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@6 TraitDefinitions.SubTrait$I@@6))  (or (= $o@@12 null) (implements$TraitDefinitions.SubTrait (dtype $o@@12) TraitDefinitions.SubTrait$T@@6 TraitDefinitions.SubTrait$I@@6)))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@12 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@6 TraitDefinitions.SubTrait$I@@6)))
)))
(assert (forall ((All.Y$I@@10 T@U) ) (! (= (Tclass.All.Y_0 (Tclass.All.Y All.Y$I@@10)) All.Y$I@@10)
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (Tclass.All.Y All.Y$I@@10))
)))
(assert (forall ((All.Y$I@@11 T@U) ) (! (= (Tclass.All.Y?_0 (Tclass.All.Y? All.Y$I@@11)) All.Y$I@@11)
 :qid |unknown.0:0|
 :skolemid |2091|
 :pattern ( (Tclass.All.Y? All.Y$I@@11))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1602|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@7 T@U) (TraitDefinitions.SubTrait$I@@7 T@U) ($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)) ($Is refType $o@@13 Tclass.TraitDefinitions.SuperTrait?))
 :qid |unknown.0:0|
 :skolemid |2282|
 :pattern ( ($Is refType $o@@13 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@8 T@U) (TraitDefinitions.SubTrait$I@@8 T@U) ) (!  (and (= (Tag (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)) Tagclass.TraitDefinitions.SubTrait) (= (TagFamily (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)) tytagFamily$SubTrait))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@9 T@U) (TraitDefinitions.SubTrait$I@@9 T@U) ) (!  (and (= (Tag (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)) Tagclass.TraitDefinitions.SubTrait?) (= (TagFamily (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)) tytagFamily$SubTrait))
 :qid |unknown.0:0|
 :skolemid |2259|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@14 Tclass.TraitDefinitions.NoMemberTrait?))
 :qid |unknown.0:0|
 :skolemid |2274|
 :pattern ( ($Is refType $o@@14 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@15 Tclass.TraitDefinitions.NoMemberTrait2?))
 :qid |unknown.0:0|
 :skolemid |2278|
 :pattern ( ($Is refType $o@@15 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1693|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4)))
)))
(assert (= (Tag Tclass.TraitDefinitions.SuperTrait) Tagclass.TraitDefinitions.SuperTrait))
(assert (= (TagFamily Tclass.TraitDefinitions.SuperTrait) tytagFamily$SuperTrait))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait) Tagclass.TraitDefinitions.NoMemberTrait))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait) tytagFamily$NoMemberTrait))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait2) Tagclass.TraitDefinitions.NoMemberTrait2))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait2) tytagFamily$NoMemberTrait2))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait?) Tagclass.TraitDefinitions.NoMemberTrait?))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait?) tytagFamily$NoMemberTrait))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait2?) Tagclass.TraitDefinitions.NoMemberTrait2?))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait2?) tytagFamily$NoMemberTrait2))
(assert (= (Tag Tclass.TraitDefinitions.SuperTrait?) Tagclass.TraitDefinitions.SuperTrait?))
(assert (= (TagFamily Tclass.TraitDefinitions.SuperTrait?) tytagFamily$SuperTrait))
(assert (forall (($o@@16 T@U) ) (! (= ($Is refType $o@@16 Tclass.TraitDefinitions.NoMemberTrait?)  (or (= $o@@16 null) (implements$TraitDefinitions.NoMemberTrait (dtype $o@@16))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType $o@@16 Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass.TraitDefinitions.NoMemberTrait2?)  (or (= $o@@17 null) (implements$TraitDefinitions.NoMemberTrait2 (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($Is refType $o@@17 Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall (($o@@18 T@U) ) (! (= ($Is refType $o@@18 Tclass.TraitDefinitions.SuperTrait?)  (or (= $o@@18 null) (implements$TraitDefinitions.SuperTrait (dtype $o@@18))))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($Is refType $o@@18 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@10 T@U) (TraitDefinitions.SubTrait$I@@10 T@U) ($o@@19 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@19 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10) $heap@@2) ($IsAlloc refType $o@@19 Tclass.TraitDefinitions.SuperTrait? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2283|
 :pattern ( ($IsAlloc refType $o@@19 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10) $heap@@2))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1638|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1617|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun All.Y$I@@12 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$All.Y.Add)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc this)) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this All.Y.c)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.All.Y All.Y$I@@12)) ($IsAlloc refType this (Tclass.All.Y All.Y$I@@12) $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
