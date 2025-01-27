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
(declare-fun Tagclass._System.___hFunc1 () T@U)
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
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.All.Y (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.TraitDefinitions.SuperTrait? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait? () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2 () T@U)
(declare-fun Tclass.TraitDefinitions.SuperTrait () T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun All.Y.c () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |lambda#12| (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun All.Y.d (T@U T@U) Int)
(declare-fun dtype (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Tclass.TraitDefinitions.SubTrait (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#14| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_1 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.All.Y_0 (T@U) T@U)
(declare-fun Tclass.All.Y?_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun implements$TraitDefinitions.NoMemberTrait (T@U) Bool)
(declare-fun implements$TraitDefinitions.NoMemberTrait2 (T@U) Bool)
(declare-fun implements$TraitDefinitions.SuperTrait (T@U) Bool)
(declare-fun |lambda#10| (T@U T@U Int) T@U)
(declare-fun |lambda#13| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass.TraitDefinitions.SubTrait Tagclass.All.Y Tagclass.TraitDefinitions.SuperTrait Tagclass.All.Y? Tagclass.TraitDefinitions.NoMemberTrait Tagclass.TraitDefinitions.NoMemberTrait2 class.All.Y? Tagclass.TraitDefinitions.NoMemberTrait? Tagclass.TraitDefinitions.NoMemberTrait2? Tagclass.TraitDefinitions.SuperTrait? Tagclass.TraitDefinitions.SubTrait? tytagFamily$object |tytagFamily$_#Func1| tytagFamily$SubTrait tytagFamily$Y tytagFamily$SuperTrait tytagFamily$NoMemberTrait tytagFamily$NoMemberTrait2 field$c)
)
(assert (forall ((All.Y$I T@U) ) (! (implements$TraitDefinitions.SubTrait (Tclass.All.Y? All.Y$I) TInt All.Y$I)
 :qid |unknown.0:0|
 :skolemid |2118|
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1706|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |1949|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#11| |l#0|) |$l#0#heap#0| |$l#0#i#0|)) ($IsBox |$l#0#i#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |2297|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#11| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1707|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1705|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((All.Y$I@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h) ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2174|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1702|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |1967|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |1968|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((bx@@2 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.TraitDefinitions.SuperTrait? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@2 Tclass.TraitDefinitions.NoMemberTrait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2273|
 :pattern ( ($IsAllocBox bx@@2 Tclass.TraitDefinitions.SuperTrait? $h@@0))
)))
(assert (forall ((bx@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.TraitDefinitions.SuperTrait? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@3 Tclass.TraitDefinitions.NoMemberTrait2? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2277|
 :pattern ( ($IsAllocBox bx@@3 Tclass.TraitDefinitions.SuperTrait? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait $h@@3) ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitDefinitions.NoMemberTrait? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.NoMemberTrait2 $h@@4) ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.NoMemberTrait2? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.NoMemberTrait2 $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitDefinitions.NoMemberTrait2? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.SuperTrait $h@@5) ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.SuperTrait? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.SuperTrait $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.SuperTrait? $h@@5))
)))
(assert (forall ((All.Y$I@@1 T@U) ($o T@U) ) (!  (=> ($Is refType $o (Tclass.All.Y? All.Y$I@@1)) ($Is refType $o (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@1)))
 :qid |unknown.0:0|
 :skolemid |2286|
 :pattern ( ($Is refType $o (Tclass.All.Y? All.Y$I@@1)))
)))
(assert (forall ((All.Y$I@@2 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.All.Y? All.Y$I@@2)) ($IsBox bx@@4 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@2)))
 :qid |unknown.0:0|
 :skolemid |2284|
 :pattern ( ($IsBox bx@@4 (Tclass.All.Y? All.Y$I@@2)))
)))
(assert (forall ((All.Y$I@@3 T@U) ($o@@0 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.All.Y? All.Y$I@@3) $h@@6)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.All.Y? All.Y$I@@3) $h@@6))
)))
(assert (= (FDim All.Y.c) 0))
(assert (= (FieldOfDecl class.All.Y? field$c) All.Y.c))
(assert  (not ($IsGhostField All.Y.c)))
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1925|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@7))
)))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.TraitDefinitions.NoMemberTrait? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.TraitDefinitions.NoMemberTrait? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.TraitDefinitions.NoMemberTrait2? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.TraitDefinitions.NoMemberTrait2? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.TraitDefinitions.SuperTrait? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.TraitDefinitions.SuperTrait? $h@@10))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1695|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1696|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#12| |l#0@@0|) |$l#0#o#0|)) (= |$l#0#o#0| |l#0@@0|))
 :qid |traitsdfy.115:12|
 :skolemid |2298|
 :pattern ( (MapType1Select refType boolType (|lambda#12| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1594|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1592|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1962|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((All.Y$I@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.All.Y? All.Y$I@@4))) ($Is intType (int_2_U (All.Y.d All.Y$I@@4 $o@@5)) TInt))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( (All.Y.d All.Y$I@@4 $o@@5))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1603|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((All.Y$I@@5 T@U) (this T@U) ) (! (= (All.Y.d All.Y$I@@5 this) (LitInt 2))
 :qid |unknown.0:0|
 :skolemid |2114|
 :pattern ( (All.Y.d All.Y$I@@5 this))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@2 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@2) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@2) fld)))
 :qid |unknown.0:0|
 :skolemid |1954|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |1955|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@3) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@3) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |1956|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |1957|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1623|
 :pattern ( (|Set#IsMember| v bx@@5))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1624|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((All.Y$I@@6 T@U) ($h@@11 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.All.Y? All.Y$I@@6)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (All.Y.d All.Y$I@@6 $o@@6)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |2124|
 :pattern ( (All.Y.d All.Y$I@@6 $o@@6) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@6) alloc)))
))))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |1678|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((TraitDefinitions.SubTrait$T T@U) (TraitDefinitions.SubTrait$I T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I))  (and ($Is refType |c#0@@4| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($Is refType |c#0@@4| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
)))
(assert (forall ((All.Y$I@@7 T@U) ($h@@12 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.All.Y? All.Y$I@@7)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@7) All.Y.c)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@7) All.Y.c)) (Tclass.All.Y? All.Y$I@@7))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((All.Y$I@@8 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass.All.Y All.Y$I@@8))  (and ($Is refType |c#0@@5| (Tclass.All.Y? All.Y$I@@8)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2173|
 :pattern ( ($Is refType |c#0@@5| (Tclass.All.Y All.Y$I@@8)))
 :pattern ( ($Is refType |c#0@@5| (Tclass.All.Y? All.Y$I@@8)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1616|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@2) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1688|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@6 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1687|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |1950|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1951|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |1952|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |1953|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |1958|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |1960|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |1961|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((All.Y$I@@9 T@U) ) (!  (and (= (Tag (Tclass.All.Y All.Y$I@@9)) Tagclass.All.Y) (= (TagFamily (Tclass.All.Y All.Y$I@@9)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( (Tclass.All.Y All.Y$I@@9))
)))
(assert (forall ((All.Y$I@@10 T@U) ) (!  (and (= (Tag (Tclass.All.Y? All.Y$I@@10)) Tagclass.All.Y?) (= (TagFamily (Tclass.All.Y? All.Y$I@@10)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( (Tclass.All.Y? All.Y$I@@10))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#2| |l#0@@1| |l#1| |l#2| |l#3|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) (= $o@@8 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2295|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#2| |l#0@@1| |l#1| |l#2| |l#3|) $o@@8 $f))
)))
(assert (forall ((s T@U) (bx@@7 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@7) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@7))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |1659|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@7))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@0 T@U) (TraitDefinitions.SubTrait$I@@0 T@U) (|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@13) ($IsAlloc refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@13))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($IsAlloc refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@13))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@1 T@U) (TraitDefinitions.SubTrait$I@@1 T@U) (bx@@8 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsAllocBox bx@@8 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@14) ($IsGoodHeap $h@@14)) ($IsAllocBox bx@@8 Tclass.TraitDefinitions.SuperTrait? $h@@14))
 :qid |unknown.0:0|
 :skolemid |2281|
 :pattern ( ($IsAllocBox bx@@8 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@14))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |1947|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1923|
 :pattern ( ($IsBox bx@@9 Tclass._System.object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1926|
 :pattern ( ($IsBox bx@@10 Tclass._System.object))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.TraitDefinitions.SuperTrait) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass.TraitDefinitions.SuperTrait)))
 :qid |unknown.0:0|
 :skolemid |2076|
 :pattern ( ($IsBox bx@@11 Tclass.TraitDefinitions.SuperTrait))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.TraitDefinitions.NoMemberTrait) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass.TraitDefinitions.NoMemberTrait)))
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( ($IsBox bx@@12 Tclass.TraitDefinitions.NoMemberTrait))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.TraitDefinitions.NoMemberTrait2) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass.TraitDefinitions.NoMemberTrait2)))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsBox bx@@13 Tclass.TraitDefinitions.NoMemberTrait2))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.TraitDefinitions.NoMemberTrait?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass.TraitDefinitions.NoMemberTrait?)))
 :qid |unknown.0:0|
 :skolemid |2242|
 :pattern ( ($IsBox bx@@14 Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.TraitDefinitions.NoMemberTrait2?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass.TraitDefinitions.NoMemberTrait2?)))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( ($IsBox bx@@15 Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.TraitDefinitions.SuperTrait?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass.TraitDefinitions.SuperTrait?)))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsBox bx@@16 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((All.Y$I@@11 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass.All.Y? All.Y$I@@11))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass.All.Y? All.Y$I@@11))))
 :qid |unknown.0:0|
 :skolemid |2116|
 :pattern ( ($Is refType $o@@9 (Tclass.All.Y? All.Y$I@@11)))
)))
(assert (forall ((All.Y$I@@12 T@U) (bx@@17 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsAllocBox bx@@17 (Tclass.All.Y? All.Y$I@@12) $h@@15) ($IsGoodHeap $h@@15)) ($IsAllocBox bx@@17 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@12) $h@@15))
 :qid |unknown.0:0|
 :skolemid |2285|
 :pattern ( ($IsAllocBox bx@@17 (Tclass.All.Y? All.Y$I@@12) $h@@15))
)))
(assert (forall ((All.Y$I@@13 T@U) ($o@@10 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@10 (Tclass.All.Y? All.Y$I@@13) $heap) ($IsAlloc refType $o@@10 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@13) $heap))
 :qid |unknown.0:0|
 :skolemid |2287|
 :pattern ( ($IsAlloc refType $o@@10 (Tclass.All.Y? All.Y$I@@13) $heap))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._System.object)  (and ($Is refType |c#0@@7| Tclass._System.object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1927|
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass.TraitDefinitions.NoMemberTrait)  (and ($Is refType |c#0@@8| Tclass.TraitDefinitions.NoMemberTrait?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($Is refType |c#0@@8| Tclass.TraitDefinitions.NoMemberTrait))
 :pattern ( ($Is refType |c#0@@8| Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass.TraitDefinitions.NoMemberTrait2)  (and ($Is refType |c#0@@9| Tclass.TraitDefinitions.NoMemberTrait2?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($Is refType |c#0@@9| Tclass.TraitDefinitions.NoMemberTrait2))
 :pattern ( ($Is refType |c#0@@9| Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass.TraitDefinitions.SuperTrait)  (and ($Is refType |c#0@@10| Tclass.TraitDefinitions.SuperTrait?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($Is refType |c#0@@10| Tclass.TraitDefinitions.SuperTrait))
 :pattern ( ($Is refType |c#0@@10| Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |1972|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |1973|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall (($o@@11 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass.TraitDefinitions.SuperTrait? $heap@@0) ($IsAlloc refType $o@@11 Tclass.TraitDefinitions.NoMemberTrait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2275|
 :pattern ( ($IsAlloc refType $o@@11 Tclass.TraitDefinitions.SuperTrait? $heap@@0))
)))
(assert (forall (($o@@12 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass.TraitDefinitions.SuperTrait? $heap@@1) ($IsAlloc refType $o@@12 Tclass.TraitDefinitions.NoMemberTrait2? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2279|
 :pattern ( ($IsAlloc refType $o@@12 Tclass.TraitDefinitions.SuperTrait? $heap@@1))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@2 T@U) (TraitDefinitions.SubTrait$I@@2 T@U) ($o@@13 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@13 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2) $h@@16)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@13 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2) $h@@16))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#14| |l#0@@2|) |$l#0#ly#0|) |l#0@@2|)
 :qid |traitsdfy.118:14|
 :skolemid |2300|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#14| |l#0@@2|) |$l#0#ly#0|))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1727|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1694|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1964|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |1965|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1684|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 TInt) (and (= ($Box intType ($Unbox intType bx@@18)) bx@@18) ($Is intType ($Unbox intType bx@@18) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1604|
 :pattern ( ($IsBox bx@@18 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1615|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@19 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@19) ($IsAllocBox bx@@19 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1644|
 :pattern ( (|Set#IsMember| v@@3 bx@@19))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1645|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |1944|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@3 T@U) (TraitDefinitions.SubTrait$I@@3 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait_0 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@3 TraitDefinitions.SubTrait$I@@3)) TraitDefinitions.SubTrait$T@@3)
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@3 TraitDefinitions.SubTrait$I@@3))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@4 T@U) (TraitDefinitions.SubTrait$I@@4 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait_1 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@4 TraitDefinitions.SubTrait$I@@4)) TraitDefinitions.SubTrait$I@@4)
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@4 TraitDefinitions.SubTrait$I@@4))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@5 T@U) (TraitDefinitions.SubTrait$I@@5 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait?_0 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@5 TraitDefinitions.SubTrait$I@@5)) TraitDefinitions.SubTrait$T@@5)
 :qid |unknown.0:0|
 :skolemid |2260|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@5 TraitDefinitions.SubTrait$I@@5))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@6 T@U) (TraitDefinitions.SubTrait$I@@6 T@U) ) (! (= (Tclass.TraitDefinitions.SubTrait?_1 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@6 TraitDefinitions.SubTrait$I@@6)) TraitDefinitions.SubTrait$I@@6)
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@6 TraitDefinitions.SubTrait$I@@6))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1924|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
)))
(assert (forall ((All.Y$I@@14 T@U) ($h@@17 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass.All.Y? All.Y$I@@14)))) ($Is intType ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@15) All.Y.c)) TInt))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@15) All.Y.c)) (Tclass.All.Y? All.Y$I@@14))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@7 T@U) (TraitDefinitions.SubTrait$I@@7 T@U) ($o@@16 T@U) ) (! (= ($Is refType $o@@16 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7))  (or (= $o@@16 null) (implements$TraitDefinitions.SubTrait (dtype $o@@16) TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@16 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1578|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1579|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((All.Y$I@@15 T@U) ) (! (= (Tclass.All.Y_0 (Tclass.All.Y All.Y$I@@15)) All.Y$I@@15)
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (Tclass.All.Y All.Y$I@@15))
)))
(assert (forall ((All.Y$I@@16 T@U) ) (! (= (Tclass.All.Y?_0 (Tclass.All.Y? All.Y$I@@16)) All.Y$I@@16)
 :qid |unknown.0:0|
 :skolemid |2091|
 :pattern ( (Tclass.All.Y? All.Y$I@@16))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1602|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |1679|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |1969|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |1970|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |1971|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@20)) bx@@20) ($Is HandleTypeType ($Unbox HandleTypeType bx@@20) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( ($IsBox bx@@20 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@8 T@U) (TraitDefinitions.SubTrait$I@@8 T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8))))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsBox bx@@21 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@9 T@U) (TraitDefinitions.SubTrait$I@@9 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9))))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsBox bx@@22 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@10 T@U) (TraitDefinitions.SubTrait$I@@10 T@U) ($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10)) ($Is refType $o@@17 Tclass.TraitDefinitions.SuperTrait?))
 :qid |unknown.0:0|
 :skolemid |2282|
 :pattern ( ($Is refType $o@@17 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@11 T@U) (TraitDefinitions.SubTrait$I@@11 T@U) (bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@11 TraitDefinitions.SubTrait$I@@11)) ($IsBox bx@@23 Tclass.TraitDefinitions.SuperTrait?))
 :qid |unknown.0:0|
 :skolemid |2280|
 :pattern ( ($IsBox bx@@23 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@11 TraitDefinitions.SubTrait$I@@11)))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@18 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@18 $f@@0))  (=> (and (or (not (= $o@@18 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@18) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2294|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@18 $f@@0))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1943|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@12 T@U) (TraitDefinitions.SubTrait$I@@12 T@U) ) (!  (and (= (Tag (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@12 TraitDefinitions.SubTrait$I@@12)) Tagclass.TraitDefinitions.SubTrait) (= (TagFamily (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@12 TraitDefinitions.SubTrait$I@@12)) tytagFamily$SubTrait))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@12 TraitDefinitions.SubTrait$I@@12))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@13 T@U) (TraitDefinitions.SubTrait$I@@13 T@U) ) (!  (and (= (Tag (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@13 TraitDefinitions.SubTrait$I@@13)) Tagclass.TraitDefinitions.SubTrait?) (= (TagFamily (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@13 TraitDefinitions.SubTrait$I@@13)) tytagFamily$SubTrait))
 :qid |unknown.0:0|
 :skolemid |2259|
 :pattern ( (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@13 TraitDefinitions.SubTrait$I@@13))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |1963|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@24 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@24 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@24)) bx@@24) ($Is SetType ($Unbox SetType bx@@24) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1609|
 :pattern ( ($IsBox bx@@24 (TSet t@@5)))
)))
(assert (forall ((All.Y$I@@17 T@U) (bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (Tclass.All.Y All.Y$I@@17)) (and (= ($Box refType ($Unbox refType bx@@25)) bx@@25) ($Is refType ($Unbox refType bx@@25) (Tclass.All.Y All.Y$I@@17))))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsBox bx@@25 (Tclass.All.Y All.Y$I@@17)))
)))
(assert (forall ((All.Y$I@@18 T@U) (bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 (Tclass.All.Y? All.Y$I@@18)) (and (= ($Box refType ($Unbox refType bx@@26)) bx@@26) ($Is refType ($Unbox refType bx@@26) (Tclass.All.Y? All.Y$I@@18))))
 :qid |unknown.0:0|
 :skolemid |2092|
 :pattern ( ($IsBox bx@@26 (Tclass.All.Y? All.Y$I@@18)))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> ($Is refType $o@@19 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@19 Tclass.TraitDefinitions.NoMemberTrait?))
 :qid |unknown.0:0|
 :skolemid |2274|
 :pattern ( ($Is refType $o@@19 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass.TraitDefinitions.SuperTrait?) ($IsBox bx@@27 Tclass.TraitDefinitions.NoMemberTrait?))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( ($IsBox bx@@27 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@20 Tclass.TraitDefinitions.NoMemberTrait2?))
 :qid |unknown.0:0|
 :skolemid |2278|
 :pattern ( ($Is refType $o@@20 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass.TraitDefinitions.SuperTrait?) ($IsBox bx@@28 Tclass.TraitDefinitions.NoMemberTrait2?))
 :qid |unknown.0:0|
 :skolemid |2276|
 :pattern ( ($IsBox bx@@28 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
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
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |1660|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall (($o@@21 T@U) ) (! (= ($Is refType $o@@21 Tclass.TraitDefinitions.NoMemberTrait?)  (or (= $o@@21 null) (implements$TraitDefinitions.NoMemberTrait (dtype $o@@21))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType $o@@21 Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass.TraitDefinitions.NoMemberTrait2?)  (or (= $o@@22 null) (implements$TraitDefinitions.NoMemberTrait2 (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($Is refType $o@@22 Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass.TraitDefinitions.SuperTrait?)  (or (= $o@@23 null) (implements$TraitDefinitions.SuperTrait (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($Is refType $o@@23 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@4 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1725|
 :pattern ( (|Set#IsMember| a@@4 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1726|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@1| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#10| |l#0@@4| |l#1@@1| |l#2@@1|) |$l#0#heap#0@@0| |$l#0#i#0@@0|) ($Box intType (int_2_U (+ (+ (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$l#0#heap#0@@0| |l#0@@4|) |l#1@@1|))) |l#2@@1|) (U_2_int ($Unbox intType |$l#0#i#0@@0|))))))
 :qid |traitsdfy.115:12|
 :skolemid |2296|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#10| |l#0@@4| |l#1@@1| |l#2@@1|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@14 T@U) (TraitDefinitions.SubTrait$I@@14 T@U) ($o@@24 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@24 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@14 TraitDefinitions.SubTrait$I@@14) $heap@@2) ($IsAlloc refType $o@@24 Tclass.TraitDefinitions.SuperTrait? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2283|
 :pattern ( ($IsAlloc refType $o@@24 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@14 TraitDefinitions.SubTrait$I@@14) $heap@@2))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1595|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1593|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1638|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#13| |l#0@@5|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@5|)
 :qid |traitsdfy.118:14|
 :skolemid |2299|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#13| |l#0@@5|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1617|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun this@@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |f#0@1| () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun All.Y$I@@19 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f#0| () T@U)
(set-info :boogie-vc-id Impl$$All.Y.ClosureConvert)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (= |$_Frame#l0@0| (|lambda#2| null |$lambdaHeap#0@0| alloc this@@0)) (= (ControlFlow 0 5) (- 0 4))) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| this@@0 All.Y.c)))))
(let ((anon5_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 7) 5) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|i#1| Int) ) (!  (and (= (Requires1 TInt TInt $Heap |f#0@1| ($Box intType (int_2_U |i#1|))) (U_2_bool (Lit boolType (bool_2_U true)))) (|Set#Equal| (Reads1 TInt TInt $Heap |f#0@1| ($Box intType (int_2_U |i#1|))) (|Set#UnionOne| |Set#Empty| ($Box refType this@@0))))
 :qid |traitsdfy.116:22|
 :skolemid |2165|
 :pattern ( (Reads1 TInt TInt $Heap |f#0@1| ($Box intType (int_2_U |i#1|))))
 :pattern ( (Requires1 TInt TInt $Heap |f#0@1| ($Box intType (int_2_U |i#1|))))
)))))
(let ((anon5_Else_correct  (=> (= |f#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#14| (Handle1 (|lambda#10| this@@0 All.Y.c (All.Y.d All.Y$I@@19 this@@0)) (|lambda#11| TInt) (|lambda#13| (SetRef_to_SetBox (|lambda#12| this@@0))))) ($LS $LZ)))) (=> (and (= |f#0@1| |f#0@0|) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 7) anon5_Then_correct) (=> (= (ControlFlow 0 8) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.All.Y All.Y$I@@19)) ($IsAlloc refType this@@0 (Tclass.All.Y All.Y$I@@19) $Heap)))) (and (and ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 TInt TInt) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
