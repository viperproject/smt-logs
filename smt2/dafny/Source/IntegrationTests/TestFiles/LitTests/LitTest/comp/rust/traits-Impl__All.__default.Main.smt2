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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.TraitDefinitions.Option () T@U)
(declare-fun Tagclass.TraitDefinitions.SubTrait () T@U)
(declare-fun Tagclass.All.Y () T@U)
(declare-fun Tagclass.TraitDefinitions.SuperTrait () T@U)
(declare-fun Tagclass.All.ClassNoArgs () T@U)
(declare-fun Tagclass.All.Y? () T@U)
(declare-fun Tagclass.All.TraitNoArgs () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait2 () T@U)
(declare-fun class.All.Y? () T@U)
(declare-fun Tagclass.All.TraitNoArgs? () T@U)
(declare-fun Tagclass.All.ClassNoArgs? () T@U)
(declare-fun |##TraitDefinitions.Option.Some| () T@U)
(declare-fun |##TraitDefinitions.Option.None| () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait? () T@U)
(declare-fun Tagclass.TraitDefinitions.NoMemberTrait2? () T@U)
(declare-fun Tagclass.TraitDefinitions.SuperTrait? () T@U)
(declare-fun Tagclass.TraitDefinitions.SubTrait? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$SubTrait () T@U)
(declare-fun tytagFamily$Y () T@U)
(declare-fun tytagFamily$SuperTrait () T@U)
(declare-fun tytagFamily$ClassNoArgs () T@U)
(declare-fun tytagFamily$TraitNoArgs () T@U)
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
(declare-fun |TraitDefinitions.Option#Equal| (T@U T@U) Bool)
(declare-fun TraitDefinitions.Option.Some_q (T@U) Bool)
(declare-fun TraitDefinitions.Option.value (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.All.Y (T@U) T@U)
(declare-fun implements$All.TraitNoArgs (T@U) Bool)
(declare-fun Tclass.All.ClassNoArgs? () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#TraitDefinitions.Option.None| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.TraitDefinitions.SuperTrait? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait? () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2? () T@U)
(declare-fun Tclass.All.TraitNoArgs? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.All.TraitNoArgs () T@U)
(declare-fun Tclass.All.ClassNoArgs () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait () T@U)
(declare-fun Tclass.TraitDefinitions.NoMemberTrait2 () T@U)
(declare-fun Tclass.TraitDefinitions.SuperTrait () T@U)
(declare-fun Tclass.TraitDefinitions.Option (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait? (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun All.Y.GetDFunc (T@U T@U) Int)
(declare-fun |All.Y.GetDFunc#canCall| (T@U T@U) Bool)
(declare-fun All.Y.d (T@U T@U) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun TraitDefinitions.Option.None_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |#TraitDefinitions.Option.Some| (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun |$IsA#TraitDefinitions.Option| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait_1 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_0 (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.SubTrait?_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.TraitDefinitions.Option_0 (T@U) T@U)
(declare-fun Tclass.All.Y_0 (T@U) T@U)
(declare-fun Tclass.All.Y?_0 (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun implements$TraitDefinitions.NoMemberTrait (T@U) Bool)
(declare-fun implements$TraitDefinitions.NoMemberTrait2 (T@U) Bool)
(declare-fun implements$TraitDefinitions.SuperTrait (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagMultiSet TagSeq TagMap alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.TraitDefinitions.Option Tagclass.TraitDefinitions.SubTrait Tagclass.All.Y Tagclass.TraitDefinitions.SuperTrait Tagclass.All.ClassNoArgs Tagclass.All.Y? Tagclass.All.TraitNoArgs Tagclass.TraitDefinitions.NoMemberTrait Tagclass.TraitDefinitions.NoMemberTrait2 class.All.Y? Tagclass.All.TraitNoArgs? Tagclass.All.ClassNoArgs? |##TraitDefinitions.Option.Some| |##TraitDefinitions.Option.None| Tagclass.TraitDefinitions.NoMemberTrait? Tagclass.TraitDefinitions.NoMemberTrait2? Tagclass.TraitDefinitions.SuperTrait? Tagclass.TraitDefinitions.SubTrait? tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_tuple#2| tytagFamily$Option tytagFamily$SubTrait tytagFamily$Y tytagFamily$SuperTrait tytagFamily$ClassNoArgs tytagFamily$TraitNoArgs tytagFamily$NoMemberTrait tytagFamily$NoMemberTrait2 field$c)
)
(assert (forall ((All.Y$I T@U) ) (! (implements$TraitDefinitions.SubTrait (Tclass.All.Y? All.Y$I) TInt All.Y$I)
 :qid |unknown.0:0|
 :skolemid |2118|
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1706|
 :pattern ( (|Set#UnionOne| a x@@2))
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
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (and (TraitDefinitions.Option.Some_q a@@2) (TraitDefinitions.Option.Some_q b)) (= (|TraitDefinitions.Option#Equal| a@@2 b) (= (TraitDefinitions.Option.value a@@2) (TraitDefinitions.Option.value b))))
 :qid |unknown.0:0|
 :skolemid |2219|
 :pattern ( (|TraitDefinitions.Option#Equal| a@@2 b) (TraitDefinitions.Option.Some_q a@@2))
 :pattern ( (|TraitDefinitions.Option#Equal| a@@2 b) (TraitDefinitions.Option.Some_q b))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((All.Y$I@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h) ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2174|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y All.Y$I@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.All.Y? All.Y$I@@0) $h))
)))
(assert (implements$All.TraitNoArgs Tclass.All.ClassNoArgs?))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2045|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1702|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#TraitDefinitions.Option.None|) |##TraitDefinitions.Option.None|))
(assert (= (Ctor MultiSetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |1629|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.All.ClassNoArgs?)  (or (= $o null) (= (dtype $o) Tclass.All.ClassNoArgs?)))
 :qid |unknown.0:0|
 :skolemid |2194|
 :pattern ( ($Is refType $o Tclass.All.ClassNoArgs?))
)))
(assert (= (Ctor HandleTypeType) 6))
(assert (forall ((f T@U) (t0@@0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0@@0))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0@@0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |1967|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |1968|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((bx@@1 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.TraitDefinitions.SuperTrait? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@1 Tclass.TraitDefinitions.NoMemberTrait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2273|
 :pattern ( ($IsAllocBox bx@@1 Tclass.TraitDefinitions.SuperTrait? $h@@0))
)))
(assert (forall ((bx@@2 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.TraitDefinitions.SuperTrait? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@2 Tclass.TraitDefinitions.NoMemberTrait2? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2277|
 :pattern ( ($IsAllocBox bx@@2 Tclass.TraitDefinitions.SuperTrait? $h@@1))
)))
(assert (forall ((bx@@3 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.All.ClassNoArgs? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@3 Tclass.All.TraitNoArgs? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2289|
 :pattern ( ($IsAllocBox bx@@3 Tclass.All.ClassNoArgs? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.All.TraitNoArgs $h@@4) ($IsAlloc refType |c#0@@1| Tclass.All.TraitNoArgs? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2192|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.All.TraitNoArgs $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.All.TraitNoArgs? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.All.ClassNoArgs $h@@5) ($IsAlloc refType |c#0@@2| Tclass.All.ClassNoArgs? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2202|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.All.ClassNoArgs $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.All.ClassNoArgs? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.NoMemberTrait $h@@6) ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.NoMemberTrait? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.NoMemberTrait $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.TraitDefinitions.NoMemberTrait? $h@@6))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.TraitDefinitions.NoMemberTrait2 $h@@7) ($IsAlloc refType |c#0@@4| Tclass.TraitDefinitions.NoMemberTrait2? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitDefinitions.NoMemberTrait2 $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.TraitDefinitions.NoMemberTrait2? $h@@7))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass.TraitDefinitions.SuperTrait $h@@8) ($IsAlloc refType |c#0@@5| Tclass.TraitDefinitions.SuperTrait? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitDefinitions.SuperTrait $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.TraitDefinitions.SuperTrait? $h@@8))
)))
(assert (forall ((TraitDefinitions.Option$T T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) ($IsAlloc DatatypeTypeType |#TraitDefinitions.Option.None| (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T) $h@@9))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( ($IsAlloc DatatypeTypeType |#TraitDefinitions.Option.None| (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T) $h@@9))
)))
(assert (forall ((All.Y$I@@1 T@U) ($o@@0 T@U) ) (!  (=> ($Is refType $o@@0 (Tclass.All.Y? All.Y$I@@1)) ($Is refType $o@@0 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@1)))
 :qid |unknown.0:0|
 :skolemid |2286|
 :pattern ( ($Is refType $o@@0 (Tclass.All.Y? All.Y$I@@1)))
)))
(assert (forall ((All.Y$I@@2 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.All.Y? All.Y$I@@2)) ($IsBox bx@@4 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@2)))
 :qid |unknown.0:0|
 :skolemid |2284|
 :pattern ( ($IsBox bx@@4 (Tclass.All.Y? All.Y$I@@2)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |1703|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |1704|
 :pattern ( (|Set#Card| s))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@1 t1@@0 (MapType0Store t0@@1 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((All.Y$I@@3 T@U) ($o@@1 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.All.Y? All.Y$I@@3) $h@@10)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.All.Y? All.Y$I@@3) $h@@10))
)))
(assert (= (FDim All.Y.c) 0))
(assert (= (FieldOfDecl class.All.Y? field$c) All.Y.c))
(assert  (not ($IsGhostField All.Y.c)))
(assert (forall ((TraitDefinitions.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#TraitDefinitions.Option.None| (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |2215|
 :pattern ( ($Is DatatypeTypeType |#TraitDefinitions.Option.None| (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@0)))
)))
(assert (forall (($o@@2 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@11)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1925|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@11))
)))
(assert (forall (($o@@3 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.All.TraitNoArgs? $h@@12)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2190|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.All.TraitNoArgs? $h@@12))
)))
(assert (forall (($o@@4 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.All.ClassNoArgs? $h@@13)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2195|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.All.ClassNoArgs? $h@@13))
)))
(assert (forall (($o@@5 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.TraitDefinitions.NoMemberTrait? $h@@14)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.TraitDefinitions.NoMemberTrait? $h@@14))
)))
(assert (forall (($o@@6 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.TraitDefinitions.NoMemberTrait2? $h@@15)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.TraitDefinitions.NoMemberTrait2? $h@@15))
)))
(assert (forall (($o@@7 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.TraitDefinitions.SuperTrait? $h@@16)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.TraitDefinitions.SuperTrait? $h@@16))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((All.Y$I@@4 T@U) (this T@U) ) (!  (=> (or (|All.Y.GetDFunc#canCall| All.Y$I@@4 this) (and (< 1 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.All.Y All.Y$I@@4))))) (= (All.Y.GetDFunc All.Y$I@@4 this) (All.Y.d All.Y$I@@4 this)))
 :qid |unknown.0:0|
 :skolemid |2169|
 :pattern ( (All.Y.GetDFunc All.Y$I@@4 this))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (! (= (|TraitDefinitions.Option#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |unknown.0:0|
 :skolemid |2221|
 :pattern ( (|TraitDefinitions.Option#Equal| a@@3 b@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1695|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1696|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1594|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1592|
 :pattern ( (Lit T x@@7))
)))
(assert (= (Ctor SeqType) 10))
(assert (forall ((s@@0 T@U) (bx@@5 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx@@5 t)) ($Is SeqType (|Seq#Build| s@@0 bx@@5) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1835|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx@@5) (TSeq t)))
)))
(assert (forall ((t0@@2 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@2) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@2 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@2 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@2 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1962|
 :pattern ( (Reads1 t0@@2 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@2 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((m@@1 T@U) (u T@U) (v@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u) (= (|Map#Card| (|Map#Build| m@@1 u v@@0)) (|Map#Card| m@@1)))
 :qid |DafnyPreludebpl.1469:15|
 :skolemid |1868|
 :pattern ( (|Map#Card| (|Map#Build| m@@1 u v@@0)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((All.Y$I@@5 T@U) ($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.All.Y? All.Y$I@@5))) ($Is intType (int_2_U (All.Y.d All.Y$I@@5 $o@@8)) TInt))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( (All.Y.d All.Y$I@@5 $o@@8))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@17)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@17) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@17))))
 :qid |unknown.0:0|
 :skolemid |2034|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@17))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2026|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (TraitDefinitions.Option.Some_q d@@1) (= (DatatypeCtorId d@@1) |##TraitDefinitions.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |2204|
 :pattern ( (TraitDefinitions.Option.Some_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (TraitDefinitions.Option.None_q d@@2) (= (DatatypeCtorId d@@2) |##TraitDefinitions.Option.None|))
 :qid |unknown.0:0|
 :skolemid |2213|
 :pattern ( (TraitDefinitions.Option.None_q d@@2))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1603|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((All.Y$I@@6 T@U) (this@@0 T@U) ) (! (= (All.Y.d All.Y$I@@6 this@@0) (LitInt 2))
 :qid |unknown.0:0|
 :skolemid |2114|
 :pattern ( (All.Y.d All.Y$I@@6 this@@0))
)))
(assert (forall ((a@@4 T@U) (x@@9 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@9 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@4 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@9) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |1772|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@9) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2027|
)))
 :qid |unknown.0:0|
 :skolemid |2028|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2)))) (forall ((o@@2 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@2) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@2) fld)))
 :qid |unknown.0:0|
 :skolemid |1954|
))) (= (Requires1 t0@@3 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@3 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |1955|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@3 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@4 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@3) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@3) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |1956|
))) (= (Requires1 t0@@4 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |1957|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (TraitDefinitions.Option.None_q d@@4) (= d@@4 |#TraitDefinitions.Option.None|))
 :qid |unknown.0:0|
 :skolemid |2214|
 :pattern ( (TraitDefinitions.Option.None_q d@@4))
)))
(assert (= (Ctor SetType) 11))
(assert (forall ((v@@1 T@U) (t0@@5 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@5)) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@6) ($IsBox bx@@6 t0@@5))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1623|
 :pattern ( (|Set#IsMember| v@@1 bx@@6))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1624|
 :pattern ( ($Is SetType v@@1 (TSet t0@@5)))
)))
(assert (forall ((a@@5 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@5 x@@10)) (+ (|MultiSet#Card| a@@5) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |1773|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@5 x@@10)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((All.Y$I@@7 T@U) ($h@@18 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.All.Y? All.Y$I@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (All.Y.d All.Y$I@@7 $o@@9)) TInt $h@@18))
 :qid |unknown.0:0|
 :skolemid |2124|
 :pattern ( (All.Y.d All.Y$I@@7 $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@9) alloc)))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (TraitDefinitions.Option.Some_q d@@5) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@5 (|#TraitDefinitions.Option.Some| |a#1#0#0@@0|))
 :qid |traitsdfy.26:30|
 :skolemid |2205|
)))
 :qid |unknown.0:0|
 :skolemid |2206|
 :pattern ( (TraitDefinitions.Option.Some_q d@@5))
)))
(assert (forall ((TraitDefinitions.SubTrait$T T@U) (TraitDefinitions.SubTrait$I T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I))  (and ($Is refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T TraitDefinitions.SubTrait$I)))
)))
(assert (forall ((All.Y$I@@8 T@U) ($h@@19 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.All.Y? All.Y$I@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@10) All.Y.c)) TInt $h@@19))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@10) All.Y.c)) (Tclass.All.Y? All.Y$I@@8))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@1 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@2)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1801|
 :pattern ( (|Seq#Build| s@@1 v@@2))
)))
(assert (forall ((m@@2 T@U) (u@@0 T@U) (v@@3 T@U) ) (!  (=> (not (|Set#IsMember| (|Map#Domain| m@@2) u@@0)) (= (|Map#Card| (|Map#Build| m@@2 u@@0 v@@3)) (+ (|Map#Card| m@@2) 1)))
 :qid |DafnyPreludebpl.1471:15|
 :skolemid |1869|
 :pattern ( (|Map#Card| (|Map#Build| m@@2 u@@0 v@@3)))
)))
(assert (forall ((All.Y$I@@9 T@U) (|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| (Tclass.All.Y All.Y$I@@9))  (and ($Is refType |c#0@@7| (Tclass.All.Y? All.Y$I@@9)) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2173|
 :pattern ( ($Is refType |c#0@@7| (Tclass.All.Y All.Y$I@@9)))
 :pattern ( ($Is refType |c#0@@7| (Tclass.All.Y? All.Y$I@@9)))
)))
(assert (forall ((v@@4 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@4) t@@0 h@@0) ($IsAlloc T@@1 v@@4 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1616|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@4) t@@0 h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((All.Y$I@@10 T@U) (this@@1 T@U) ) (!  (=> (or (|All.Y.GetDFunc#canCall| All.Y$I@@10 (Lit refType this@@1)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.All.Y All.Y$I@@10))))) (= (All.Y.GetDFunc All.Y$I@@10 (Lit refType this@@1)) (All.Y.d All.Y$I@@10 (Lit refType this@@1))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2170|
 :pattern ( (All.Y.GetDFunc All.Y$I@@10 (Lit refType this@@1)))
))))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@7 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@7 t@@1 h@@1) ($IsAllocBox bx@@7 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1688|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@7 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@5 t@@2 h@@2) ($IsAlloc T@@2 v@@5 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1687|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@5 t@@2 h@@2))
)))
(assert (forall ((t0@@6 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@6) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@4)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |1950|
))) (= (Reads1 t0@@6 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@6 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |1951|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@6 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@7 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@5)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |1952|
))) (= (Reads1 t0@@7 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@7 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1953|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@7 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@6)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |1958|
))) (= (Apply1 t0@@8 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@8 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@8 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@7)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |1960|
))) (= (Apply1 t0@@9 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@9 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |1961|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@9 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall ((TraitDefinitions.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@1)) Tagclass.TraitDefinitions.Option) (= (TagFamily (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@1))
)))
(assert (forall ((All.Y$I@@11 T@U) ) (!  (and (= (Tag (Tclass.All.Y All.Y$I@@11)) Tagclass.All.Y) (= (TagFamily (Tclass.All.Y All.Y$I@@11)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( (Tclass.All.Y All.Y$I@@11))
)))
(assert (forall ((All.Y$I@@12 T@U) ) (!  (and (= (Tag (Tclass.All.Y? All.Y$I@@12)) Tagclass.All.Y?) (= (TagFamily (Tclass.All.Y? All.Y$I@@12)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( (Tclass.All.Y? All.Y$I@@12))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@0 T@U) (TraitDefinitions.SubTrait$I@@0 T@U) (|c#0@@8| T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType |c#0@@8| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@20) ($IsAlloc refType |c#0@@8| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@20))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($IsAlloc refType |c#0@@8| (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@20))
 :pattern ( ($IsAlloc refType |c#0@@8| (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@0 TraitDefinitions.SubTrait$I@@0) $h@@20))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@1 T@U) (TraitDefinitions.SubTrait$I@@1 T@U) (bx@@8 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsAllocBox bx@@8 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@21) ($IsGoodHeap $h@@21)) ($IsAllocBox bx@@8 Tclass.TraitDefinitions.SuperTrait? $h@@21))
 :qid |unknown.0:0|
 :skolemid |2281|
 :pattern ( ($IsAllocBox bx@@8 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@1 TraitDefinitions.SubTrait$I@@1) $h@@21))
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
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.All.ClassNoArgs) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass.All.ClassNoArgs)))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($IsBox bx@@12 Tclass.All.ClassNoArgs))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.All.TraitNoArgs) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass.All.TraitNoArgs)))
 :qid |unknown.0:0|
 :skolemid |2107|
 :pattern ( ($IsBox bx@@13 Tclass.All.TraitNoArgs))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.TraitDefinitions.NoMemberTrait) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass.TraitDefinitions.NoMemberTrait)))
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( ($IsBox bx@@14 Tclass.TraitDefinitions.NoMemberTrait))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.TraitDefinitions.NoMemberTrait2) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass.TraitDefinitions.NoMemberTrait2)))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsBox bx@@15 Tclass.TraitDefinitions.NoMemberTrait2))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.All.TraitNoArgs?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass.All.TraitNoArgs?)))
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( ($IsBox bx@@16 Tclass.All.TraitNoArgs?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass.All.ClassNoArgs?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass.All.ClassNoArgs?)))
 :qid |unknown.0:0|
 :skolemid |2193|
 :pattern ( ($IsBox bx@@17 Tclass.All.ClassNoArgs?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass.TraitDefinitions.NoMemberTrait?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass.TraitDefinitions.NoMemberTrait?)))
 :qid |unknown.0:0|
 :skolemid |2242|
 :pattern ( ($IsBox bx@@18 Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass.TraitDefinitions.NoMemberTrait2?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass.TraitDefinitions.NoMemberTrait2?)))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( ($IsBox bx@@19 Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass.TraitDefinitions.SuperTrait?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass.TraitDefinitions.SuperTrait?)))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsBox bx@@20 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((All.Y$I@@13 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass.All.Y? All.Y$I@@13))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass.All.Y? All.Y$I@@13))))
 :qid |unknown.0:0|
 :skolemid |2116|
 :pattern ( ($Is refType $o@@11 (Tclass.All.Y? All.Y$I@@13)))
)))
(assert (forall ((All.Y$I@@14 T@U) (bx@@21 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsAllocBox bx@@21 (Tclass.All.Y? All.Y$I@@14) $h@@22) ($IsGoodHeap $h@@22)) ($IsAllocBox bx@@21 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@14) $h@@22))
 :qid |unknown.0:0|
 :skolemid |2285|
 :pattern ( ($IsAllocBox bx@@21 (Tclass.All.Y? All.Y$I@@14) $h@@22))
)))
(assert (forall ((All.Y$I@@15 T@U) ($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 (Tclass.All.Y? All.Y$I@@15) $heap) ($IsAlloc refType $o@@12 (Tclass.TraitDefinitions.SubTrait? TInt All.Y$I@@15) $heap))
 :qid |unknown.0:0|
 :skolemid |2287|
 :pattern ( ($IsAlloc refType $o@@12 (Tclass.All.Y? All.Y$I@@15) $heap))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._System.object)  (and ($Is refType |c#0@@9| Tclass._System.object?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1927|
 :pattern ( ($Is refType |c#0@@9| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@9| Tclass._System.object?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass.All.TraitNoArgs)  (and ($Is refType |c#0@@10| Tclass.All.TraitNoArgs?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2191|
 :pattern ( ($Is refType |c#0@@10| Tclass.All.TraitNoArgs))
 :pattern ( ($Is refType |c#0@@10| Tclass.All.TraitNoArgs?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass.All.ClassNoArgs)  (and ($Is refType |c#0@@11| Tclass.All.ClassNoArgs?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2201|
 :pattern ( ($Is refType |c#0@@11| Tclass.All.ClassNoArgs))
 :pattern ( ($Is refType |c#0@@11| Tclass.All.ClassNoArgs?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass.TraitDefinitions.NoMemberTrait)  (and ($Is refType |c#0@@12| Tclass.TraitDefinitions.NoMemberTrait?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($Is refType |c#0@@12| Tclass.TraitDefinitions.NoMemberTrait))
 :pattern ( ($Is refType |c#0@@12| Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass.TraitDefinitions.NoMemberTrait2)  (and ($Is refType |c#0@@13| Tclass.TraitDefinitions.NoMemberTrait2?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($Is refType |c#0@@13| Tclass.TraitDefinitions.NoMemberTrait2))
 :pattern ( ($Is refType |c#0@@13| Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass.TraitDefinitions.SuperTrait)  (and ($Is refType |c#0@@14| Tclass.TraitDefinitions.SuperTrait?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($Is refType |c#0@@14| Tclass.TraitDefinitions.SuperTrait))
 :pattern ( ($Is refType |c#0@@14| Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@6 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@6) i) v@@6)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@6) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1802|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@6) i))
)))
(assert (forall ((TraitDefinitions.Option$T@@2 T@U) (|a#2#0#0@@1| T@U) ($h@@23 T@U) ) (!  (=> ($IsGoodHeap $h@@23) (= ($IsAlloc DatatypeTypeType (|#TraitDefinitions.Option.Some| |a#2#0#0@@1|) (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@2) $h@@23) ($IsAllocBox |a#2#0#0@@1| TraitDefinitions.Option$T@@2 $h@@23)))
 :qid |unknown.0:0|
 :skolemid |2208|
 :pattern ( ($IsAlloc DatatypeTypeType (|#TraitDefinitions.Option.Some| |a#2#0#0@@1|) (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@2) $h@@23))
)))
(assert (forall ((f@@7 T@U) (t0@@10 T@U) (t1@@8 T@U) (h@@3 T@U) ) (!  (=> (and ($IsGoodHeap h@@3) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@3)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@10 h@@3) (Requires1 t0@@10 t1@@8 h@@3 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@10 t1@@8 h@@3 f@@7 bx0@@6) t1@@8 h@@3))
 :qid |unknown.0:0|
 :skolemid |1972|
 :pattern ( (Apply1 t0@@10 t1@@8 h@@3 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |1973|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@3))
)))
(assert (forall ((m@@3 T@U) ) (! (= (= (|Map#Card| m@@3) 0) (= m@@3 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |1849|
 :pattern ( (|Map#Card| m@@3))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass.TraitDefinitions.SuperTrait? $heap@@0) ($IsAlloc refType $o@@13 Tclass.TraitDefinitions.NoMemberTrait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2275|
 :pattern ( ($IsAlloc refType $o@@13 Tclass.TraitDefinitions.SuperTrait? $heap@@0))
)))
(assert (forall (($o@@14 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass.TraitDefinitions.SuperTrait? $heap@@1) ($IsAlloc refType $o@@14 Tclass.TraitDefinitions.NoMemberTrait2? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2279|
 :pattern ( ($IsAlloc refType $o@@14 Tclass.TraitDefinitions.SuperTrait? $heap@@1))
)))
(assert (forall (($o@@15 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass.All.ClassNoArgs? $heap@@2) ($IsAlloc refType $o@@15 Tclass.All.TraitNoArgs? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2291|
 :pattern ( ($IsAlloc refType $o@@15 Tclass.All.ClassNoArgs? $heap@@2))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@2 T@U) (TraitDefinitions.SubTrait$I@@2 T@U) ($o@@16 T@U) ($h@@24 T@U) ) (! (= ($IsAlloc refType $o@@16 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2) $h@@24)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@16 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@2 TraitDefinitions.SubTrait$I@@2) $h@@24))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#TraitDefinitions.Option| d@@6) (or (TraitDefinitions.Option.Some_q d@@6) (TraitDefinitions.Option.None_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |2217|
 :pattern ( (|$IsA#TraitDefinitions.Option| d@@6))
)))
(assert (forall ((TraitDefinitions.Option$T@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@3)) (or (TraitDefinitions.Option.Some_q d@@7) (TraitDefinitions.Option.None_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |2218|
 :pattern ( (TraitDefinitions.Option.None_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@3)))
 :pattern ( (TraitDefinitions.Option.Some_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@3)))
)))
(assert (forall ((a@@6 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@6 b@@1) (= a@@6 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1727|
 :pattern ( (|Set#Equal| a@@6 b@@1))
)))
(assert (forall ((v@@7 T@U) (t0@@11 T@U) ) (! (= ($Is MultiSetType v@@7 (TMultiSet t0@@11)) (forall ((bx@@22 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@7 bx@@22)) ($IsBox bx@@22 t0@@11))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |1627|
 :pattern ( (|MultiSet#Multiplicity| v@@7 bx@@22))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |1628|
 :pattern ( ($Is MultiSetType v@@7 (TMultiSet t0@@11)))
)))
(assert (forall ((a@@7 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@7 c)) (not true)) (=> (and ($HeapSucc a@@7 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@7 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1694|
 :pattern ( ($HeapSucc a@@7 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@9 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@9)) (forall ((h@@4 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) ($IsBox bx0@@7 t0@@12)) (Requires1 t0@@12 t1@@9 h@@4 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@12 t1@@9 h@@4 f@@8 bx0@@7) t1@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1964|
 :pattern ( (Apply1 t0@@12 t1@@9 h@@4 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |1965|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@9)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1684|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 TInt) (and (= ($Box intType ($Unbox intType bx@@23)) bx@@23) ($Is intType ($Unbox intType bx@@23) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1604|
 :pattern ( ($IsBox bx@@23 TInt))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 TBool) (and (= ($Box boolType ($Unbox boolType bx@@24)) bx@@24) ($Is boolType ($Unbox boolType bx@@24) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1606|
 :pattern ( ($IsBox bx@@24 TBool))
)))
(assert (forall ((v@@8 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@8) t@@3) ($Is T@@3 v@@8 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1615|
 :pattern ( ($IsBox ($Box T@@3 v@@8) t@@3))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@25 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@25)) (<= (|MultiSet#Multiplicity| ms bx@@25) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |1760|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@25))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |1761|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Set#Card| s@@3))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |1701|
 :pattern ( (|Set#Card| s@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|MultiSet#Card| s@@4))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |1762|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1798|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((m@@4 T@U) ) (! (<= 0 (|Map#Card| m@@4))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |1848|
 :pattern ( (|Map#Card| m@@4))
)))
(assert (forall ((a@@8 T@U) (b@@3 T@U) ) (!  (=> (and (TraitDefinitions.Option.None_q a@@8) (TraitDefinitions.Option.None_q b@@3)) (|TraitDefinitions.Option#Equal| a@@8 b@@3))
 :qid |unknown.0:0|
 :skolemid |2220|
 :pattern ( (|TraitDefinitions.Option#Equal| a@@8 b@@3) (TraitDefinitions.Option.None_q a@@8))
 :pattern ( (|TraitDefinitions.Option#Equal| a@@8 b@@3) (TraitDefinitions.Option.None_q b@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@13 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@9 (TSet t0@@13) h@@5) (forall ((bx@@26 T@U) ) (!  (=> (|Set#IsMember| v@@9 bx@@26) ($IsAllocBox bx@@26 t0@@13 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1644|
 :pattern ( (|Set#IsMember| v@@9 bx@@26))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1645|
 :pattern ( ($IsAlloc SetType v@@9 (TSet t0@@13) h@@5))
)))
(assert (forall ((o@@8 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@8) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |1764|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@8))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@4 u@@1)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1586|
 :pattern ( (TMap t@@4 u@@1))
)))
(assert (forall ((t@@5 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1587|
 :pattern ( (TMap t@@5 u@@2))
)))
(assert (forall ((t@@6 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@6 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1588|
 :pattern ( (TMap t@@6 u@@3))
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
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2025|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
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
(assert (forall ((a@@9 T@U) (x@@11 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@11) x@@11) (+ (|MultiSet#Multiplicity| a@@9 x@@11) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |1770|
 :pattern ( (|MultiSet#UnionOne| a@@9 x@@11))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1924|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert (forall ((v@@10 T@U) (t0@@14 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@10 (TSeq t0@@14) h@@6) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@10))) ($IsAllocBox (|Seq#Index| v@@10 i@@0) t0@@14 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1650|
 :pattern ( (|Seq#Index| v@@10 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1651|
 :pattern ( ($IsAlloc SeqType v@@10 (TSeq t0@@14) h@@6))
)))
(assert (forall ((All.Y$I@@16 T@U) ($h@@25 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass.All.Y? All.Y$I@@16)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@18) All.Y.c)) TInt))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@18) All.Y.c)) (Tclass.All.Y? All.Y$I@@16))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@7 T@U) (TraitDefinitions.SubTrait$I@@7 T@U) ($o@@19 T@U) ) (! (= ($Is refType $o@@19 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7))  (or (= $o@@19 null) (implements$TraitDefinitions.SubTrait (dtype $o@@19) TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@19 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@7 TraitDefinitions.SubTrait$I@@7)))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1578|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1579|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |1582|
 :pattern ( (TMultiSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TMultiSet t@@10)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |1583|
 :pattern ( (TMultiSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1584|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1585|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((TraitDefinitions.Option$T@@4 T@U) ) (! (= (Tclass.TraitDefinitions.Option_0 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@4)) TraitDefinitions.Option$T@@4)
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@4))
)))
(assert (forall ((All.Y$I@@17 T@U) ) (! (= (Tclass.All.Y_0 (Tclass.All.Y All.Y$I@@17)) All.Y$I@@17)
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (Tclass.All.Y All.Y$I@@17))
)))
(assert (forall ((All.Y$I@@18 T@U) ) (! (= (Tclass.All.Y?_0 (Tclass.All.Y? All.Y$I@@18)) All.Y$I@@18)
 :qid |unknown.0:0|
 :skolemid |2091|
 :pattern ( (Tclass.All.Y? All.Y$I@@18))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#TraitDefinitions.Option.Some| |a#0#0#0@@0|)) |##TraitDefinitions.Option.Some|)
 :qid |traitsdfy.26:30|
 :skolemid |2203|
 :pattern ( (|#TraitDefinitions.Option.Some| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (TraitDefinitions.Option.value (|#TraitDefinitions.Option.Some| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |traitsdfy.26:30|
 :skolemid |2211|
 :pattern ( (|#TraitDefinitions.Option.Some| |a#4#0#0@@0|))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@12)) x@@12)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1602|
 :pattern ( ($Box T@@4 x@@12))
)))
(assert (= (Ctor MapType) 12))
(assert (forall ((v@@11 T@U) (t0@@15 T@U) (t1@@10 T@U) (h@@7 T@U) ) (! (= ($IsAlloc MapType v@@11 (TMap t0@@15 t1@@10) h@@7) (forall ((bx@@27 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@11) bx@@27) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@27) t1@@10 h@@7) ($IsAllocBox bx@@27 t0@@15 h@@7)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |1652|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@27))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@11) bx@@27))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |1653|
 :pattern ( ($IsAlloc MapType v@@11 (TMap t0@@15 t1@@10) h@@7))
)))
(assert (forall ((TraitDefinitions.Option$T@@5 T@U) (|a#2#0#0@@2| T@U) ) (! (= ($Is DatatypeTypeType (|#TraitDefinitions.Option.Some| |a#2#0#0@@2|) (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@5)) ($IsBox |a#2#0#0@@2| TraitDefinitions.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |2207|
 :pattern ( ($Is DatatypeTypeType (|#TraitDefinitions.Option.Some| |a#2#0#0@@2|) (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((s@@6 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@6) 0) (= s@@6 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@6) 0)) (not true)) (exists ((x@@13 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@6 x@@13))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |1765|
 :pattern ( (|MultiSet#Multiplicity| s@@6 x@@13))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |1766|
 :pattern ( (|MultiSet#Card| s@@6))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1862|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((f@@9 T@U) (t0@@16 T@U) (t1@@11 T@U) (h@@8 T@U) ) (!  (=> ($IsGoodHeap h@@8) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@16 t1@@11) h@@8) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@16) ($IsAllocBox bx0@@8 t0@@16 h@@8)) (Requires1 t0@@16 t1@@11 h@@8 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@11 h@@8 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |1969|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@11 h@@8 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |1970|
 :pattern ( (Apply1 t0@@16 t1@@11 h@@8 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@16 t1@@11 h@@8 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |1971|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@16 t1@@11) h@@8))
)))
(assert (forall ((bx@@28 T@U) (s@@7 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@28 (TMap s@@7 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@28)) bx@@28) ($Is MapType ($Unbox MapType bx@@28) (TMap s@@7 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |1613|
 :pattern ( ($IsBox bx@@28 (TMap s@@7 t@@13)))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@29)) bx@@29) ($Is HandleTypeType ($Unbox HandleTypeType bx@@29) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( ($IsBox bx@@29 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@30)) bx@@30) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@30) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2032|
 :pattern ( ($IsBox bx@@30 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@8 T@U) (TraitDefinitions.SubTrait$I@@8 T@U) (bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)) (and (= ($Box refType ($Unbox refType bx@@31)) bx@@31) ($Is refType ($Unbox refType bx@@31) (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8))))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsBox bx@@31 (Tclass.TraitDefinitions.SubTrait TraitDefinitions.SubTrait$T@@8 TraitDefinitions.SubTrait$I@@8)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@9 T@U) (TraitDefinitions.SubTrait$I@@9 T@U) (bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)) (and (= ($Box refType ($Unbox refType bx@@32)) bx@@32) ($Is refType ($Unbox refType bx@@32) (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9))))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsBox bx@@32 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@9 TraitDefinitions.SubTrait$I@@9)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#TraitDefinitions.Option.Some| |a#5#0#0@@0|)))
 :qid |traitsdfy.26:30|
 :skolemid |2212|
 :pattern ( (|#TraitDefinitions.Option.Some| |a#5#0#0@@0|))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@10 T@U) (TraitDefinitions.SubTrait$I@@10 T@U) ($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10)) ($Is refType $o@@20 Tclass.TraitDefinitions.SuperTrait?))
 :qid |unknown.0:0|
 :skolemid |2282|
 :pattern ( ($Is refType $o@@20 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@10 TraitDefinitions.SubTrait$I@@10)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@11 T@U) (TraitDefinitions.SubTrait$I@@11 T@U) (bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@11 TraitDefinitions.SubTrait$I@@11)) ($IsBox bx@@33 Tclass.TraitDefinitions.SuperTrait?))
 :qid |unknown.0:0|
 :skolemid |2280|
 :pattern ( ($IsBox bx@@33 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@11 TraitDefinitions.SubTrait$I@@11)))
)))
(assert (forall ((d@@8 T@U) (TraitDefinitions.Option$T@@6 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (TraitDefinitions.Option.Some_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@6) $h@@26))) ($IsAllocBox (TraitDefinitions.Option.value d@@8) TraitDefinitions.Option$T@@6 $h@@26))
 :qid |unknown.0:0|
 :skolemid |2209|
 :pattern ( ($IsAllocBox (TraitDefinitions.Option.value d@@8) TraitDefinitions.Option$T@@6 $h@@26))
)))
(assert  (and (forall ((t0@@17 T@T) (t1@@12 T@T) (t2 T@T) (val@@1 T@U) (m@@5 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@17 t1@@12 t2 (MapType1Store t0@@17 t1@@12 t2 m@@5 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@6 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@6 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@6 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@7 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@7 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@7 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@21 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))  (=> (and (or (not (= $o@@21 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2294|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))
)))
(assert (forall ((s@@8 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@8 val@@4)) s@@8) (= (|Seq#Build_inv1| (|Seq#Build| s@@8 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1800|
 :pattern ( (|Seq#Build| s@@8 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1943|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
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
(assert (forall ((t0@@18 T@U) (t1@@13 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@18) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@18 t1@@13)))) (|Set#Equal| (Reads1 t0@@18 t1@@13 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@18 t1@@13 $OneHeap f@@10 bx0@@9) (Requires1 t0@@18 t1@@13 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |1963|
 :pattern ( (Requires1 t0@@18 t1@@13 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@18 t1@@13 heap@@0 f@@10 bx0@@9))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@8) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1850|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1851|
 :pattern ( (|Map#Domain| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((v@@12 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@9) v@@12)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1852|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1853|
 :pattern ( (|Map#Values| m@@9))
)))
(assert (forall ((m@@10 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@10) item)  (and (|Set#IsMember| (|Map#Domain| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1861|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@10) item))
)))
(assert (forall ((m@@11 T@U) (v@@13 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@11) v@@13) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@11) u@@5) (= v@@13 (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1859|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@11) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1860|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@11) v@@13))
)))
(assert (forall ((m@@12 T@U) (u@@6 T@U) (|u'| T@U) (v@@14 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@6 v@@14)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@6 v@@14)) |u'|) v@@14))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@6 v@@14)) |u'|) (|Set#IsMember| (|Map#Domain| m@@12) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@6 v@@14)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@12) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |1867|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@6 v@@14)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@6 v@@14)) |u'|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1661|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((m@@13 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@13)) (|Map#Card| m@@13))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |1856|
 :pattern ( (|Set#Card| (|Map#Domain| m@@13)))
 :pattern ( (|Map#Card| m@@13))
)))
(assert (forall ((m@@14 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@14)) (|Map#Card| m@@14))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |1858|
 :pattern ( (|Set#Card| (|Map#Items| m@@14)))
 :pattern ( (|Map#Card| m@@14))
)))
(assert (forall ((m@@15 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@15)) (|Map#Card| m@@15))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |1857|
 :pattern ( (|Set#Card| (|Map#Values| m@@15)))
 :pattern ( (|Map#Card| m@@15))
)))
(assert (forall ((bx@@34 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@34 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@34)) bx@@34) ($Is SetType ($Unbox SetType bx@@34) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1609|
 :pattern ( ($IsBox bx@@34 (TSet t@@14)))
)))
(assert (forall ((bx@@35 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@35 (TMultiSet t@@15)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@35)) bx@@35) ($Is MultiSetType ($Unbox MultiSetType bx@@35) (TMultiSet t@@15))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |1611|
 :pattern ( ($IsBox bx@@35 (TMultiSet t@@15)))
)))
(assert (forall ((bx@@36 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@36 (TSeq t@@16)) (and (= ($Box SeqType ($Unbox SeqType bx@@36)) bx@@36) ($Is SeqType ($Unbox SeqType bx@@36) (TSeq t@@16))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1612|
 :pattern ( ($IsBox bx@@36 (TSeq t@@16)))
)))
(assert (forall ((TraitDefinitions.Option$T@@7 T@U) (bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@37)) bx@@37) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@37) (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@7))))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($IsBox bx@@37 (Tclass.TraitDefinitions.Option TraitDefinitions.Option$T@@7)))
)))
(assert (forall ((All.Y$I@@19 T@U) (bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 (Tclass.All.Y All.Y$I@@19)) (and (= ($Box refType ($Unbox refType bx@@38)) bx@@38) ($Is refType ($Unbox refType bx@@38) (Tclass.All.Y All.Y$I@@19))))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsBox bx@@38 (Tclass.All.Y All.Y$I@@19)))
)))
(assert (forall ((All.Y$I@@20 T@U) (bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 (Tclass.All.Y? All.Y$I@@20)) (and (= ($Box refType ($Unbox refType bx@@39)) bx@@39) ($Is refType ($Unbox refType bx@@39) (Tclass.All.Y? All.Y$I@@20))))
 :qid |unknown.0:0|
 :skolemid |2092|
 :pattern ( ($IsBox bx@@39 (Tclass.All.Y? All.Y$I@@20)))
)))
(assert (forall ((a@@10 T@U) (x@@14 T@U) ) (!  (=> (|Set#IsMember| a@@10 x@@14) (= (|Set#Card| (|Set#UnionOne| a@@10 x@@14)) (|Set#Card| a@@10)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |1708|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@10 x@@14)))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@22 Tclass.TraitDefinitions.NoMemberTrait?))
 :qid |unknown.0:0|
 :skolemid |2274|
 :pattern ( ($Is refType $o@@22 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 Tclass.TraitDefinitions.SuperTrait?) ($IsBox bx@@40 Tclass.TraitDefinitions.NoMemberTrait?))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( ($IsBox bx@@40 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall (($o@@23 T@U) ) (!  (=> ($Is refType $o@@23 Tclass.TraitDefinitions.SuperTrait?) ($Is refType $o@@23 Tclass.TraitDefinitions.NoMemberTrait2?))
 :qid |unknown.0:0|
 :skolemid |2278|
 :pattern ( ($Is refType $o@@23 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((bx@@41 T@U) ) (!  (=> ($IsBox bx@@41 Tclass.TraitDefinitions.SuperTrait?) ($IsBox bx@@41 Tclass.TraitDefinitions.NoMemberTrait2?))
 :qid |unknown.0:0|
 :skolemid |2276|
 :pattern ( ($IsBox bx@@41 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall (($o@@24 T@U) ) (!  (=> ($Is refType $o@@24 Tclass.All.ClassNoArgs?) ($Is refType $o@@24 Tclass.All.TraitNoArgs?))
 :qid |unknown.0:0|
 :skolemid |2290|
 :pattern ( ($Is refType $o@@24 Tclass.All.ClassNoArgs?))
)))
(assert (forall ((bx@@42 T@U) ) (!  (=> ($IsBox bx@@42 Tclass.All.ClassNoArgs?) ($IsBox bx@@42 Tclass.All.TraitNoArgs?))
 :qid |unknown.0:0|
 :skolemid |2288|
 :pattern ( ($IsBox bx@@42 Tclass.All.ClassNoArgs?))
)))
(assert (forall ((v@@15 T@U) (t0@@19 T@U) (t1@@14 T@U) ) (! (= ($Is MapType v@@15 (TMap t0@@19 t1@@14)) (forall ((bx@@43 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@15) bx@@43) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@15) bx@@43) t1@@14) ($IsBox bx@@43 t0@@19)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |1632|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@15) bx@@43))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@15) bx@@43))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |1633|
 :pattern ( ($Is MapType v@@15 (TMap t0@@19 t1@@14)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.TraitDefinitions.SuperTrait) Tagclass.TraitDefinitions.SuperTrait))
(assert (= (TagFamily Tclass.TraitDefinitions.SuperTrait) tytagFamily$SuperTrait))
(assert (= (Tag Tclass.All.ClassNoArgs) Tagclass.All.ClassNoArgs))
(assert (= (TagFamily Tclass.All.ClassNoArgs) tytagFamily$ClassNoArgs))
(assert (= (Tag Tclass.All.TraitNoArgs) Tagclass.All.TraitNoArgs))
(assert (= (TagFamily Tclass.All.TraitNoArgs) tytagFamily$TraitNoArgs))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait) Tagclass.TraitDefinitions.NoMemberTrait))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait) tytagFamily$NoMemberTrait))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait2) Tagclass.TraitDefinitions.NoMemberTrait2))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait2) tytagFamily$NoMemberTrait2))
(assert (= (Tag Tclass.All.TraitNoArgs?) Tagclass.All.TraitNoArgs?))
(assert (= (TagFamily Tclass.All.TraitNoArgs?) tytagFamily$TraitNoArgs))
(assert (= (Tag Tclass.All.ClassNoArgs?) Tagclass.All.ClassNoArgs?))
(assert (= (TagFamily Tclass.All.ClassNoArgs?) tytagFamily$ClassNoArgs))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait?) Tagclass.TraitDefinitions.NoMemberTrait?))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait?) tytagFamily$NoMemberTrait))
(assert (= (Tag Tclass.TraitDefinitions.NoMemberTrait2?) Tagclass.TraitDefinitions.NoMemberTrait2?))
(assert (= (TagFamily Tclass.TraitDefinitions.NoMemberTrait2?) tytagFamily$NoMemberTrait2))
(assert (= (Tag Tclass.TraitDefinitions.SuperTrait?) Tagclass.TraitDefinitions.SuperTrait?))
(assert (= (TagFamily Tclass.TraitDefinitions.SuperTrait?) tytagFamily$SuperTrait))
(assert (= |#TraitDefinitions.Option.None| (Lit DatatypeTypeType |#TraitDefinitions.Option.None|)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass.All.TraitNoArgs?)  (or (= $o@@25 null) (implements$All.TraitNoArgs (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( ($Is refType $o@@25 Tclass.All.TraitNoArgs?))
)))
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass.TraitDefinitions.NoMemberTrait?)  (or (= $o@@26 null) (implements$TraitDefinitions.NoMemberTrait (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType $o@@26 Tclass.TraitDefinitions.NoMemberTrait?))
)))
(assert (forall (($o@@27 T@U) ) (! (= ($Is refType $o@@27 Tclass.TraitDefinitions.NoMemberTrait2?)  (or (= $o@@27 null) (implements$TraitDefinitions.NoMemberTrait2 (dtype $o@@27))))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($Is refType $o@@27 Tclass.TraitDefinitions.NoMemberTrait2?))
)))
(assert (forall (($o@@28 T@U) ) (! (= ($Is refType $o@@28 Tclass.TraitDefinitions.SuperTrait?)  (or (= $o@@28 null) (implements$TraitDefinitions.SuperTrait (dtype $o@@28))))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($Is refType $o@@28 Tclass.TraitDefinitions.SuperTrait?))
)))
(assert (forall ((a@@11 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@11 b@@4) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@11 o@@9) (|Set#IsMember| b@@4 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1725|
 :pattern ( (|Set#IsMember| a@@11 o@@9))
 :pattern ( (|Set#IsMember| b@@4 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1726|
 :pattern ( (|Set#Equal| a@@11 b@@4))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27)
 :qid |unknown.0:0|
 :skolemid |2035|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@27))
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@27))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28)
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@28))
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@28))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((TraitDefinitions.SubTrait$T@@14 T@U) (TraitDefinitions.SubTrait$I@@14 T@U) ($o@@29 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@29 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@14 TraitDefinitions.SubTrait$I@@14) $heap@@3) ($IsAlloc refType $o@@29 Tclass.TraitDefinitions.SuperTrait? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2283|
 :pattern ( ($IsAlloc refType $o@@29 (Tclass.TraitDefinitions.SubTrait? TraitDefinitions.SubTrait$T@@14 TraitDefinitions.SubTrait$I@@14) $heap@@3))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1595|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#TraitDefinitions.Option.Some| (Lit BoxType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#TraitDefinitions.Option.Some| |a#3#0#0@@0|)))
 :qid |traitsdfy.26:30|
 :skolemid |2210|
 :pattern ( (|#TraitDefinitions.Option.Some| (Lit BoxType |a#3#0#0@@0|)))
)))
(assert (forall ((x@@16 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@16)) (Lit BoxType ($Box T@@5 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1593|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@16)))
)))
(assert (forall ((a@@12 T@U) (x@@17 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@12 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@12 x@@17) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |1771|
 :pattern ( (|MultiSet#UnionOne| a@@12 x@@17) (|MultiSet#Multiplicity| a@@12 y@@1))
)))
(assert (forall ((s@@9 T@U) ) (!  (=> (= (|Seq#Length| s@@9) 0) (= s@@9 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1799|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert (forall ((a@@13 T@U) (x@@18 T@U) (o@@10 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@13 x@@18) o@@10))  (or (= o@@10 x@@18) (< 0 (|MultiSet#Multiplicity| a@@13 o@@10))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |1769|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@13 x@@18) o@@10))
)))
(assert (forall ((v@@16 T@U) (t0@@20 T@U) (h@@9 T@U) ) (! (= ($IsAlloc MultiSetType v@@16 (TMultiSet t0@@20) h@@9) (forall ((bx@@44 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@16 bx@@44)) ($IsAllocBox bx@@44 t0@@20 h@@9))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |1648|
 :pattern ( (|MultiSet#Multiplicity| v@@16 bx@@44))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |1649|
 :pattern ( ($IsAlloc MultiSetType v@@16 (TMultiSet t0@@20) h@@9))
)))
(assert (forall ((h@@10 T@U) (v@@17 T@U) ) (! ($IsAlloc intType v@@17 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1638|
 :pattern ( ($IsAlloc intType v@@17 TInt h@@10))
)))
(assert (forall ((h@@11 T@U) (v@@18 T@U) ) (! ($IsAlloc boolType v@@18 TBool h@@11)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1640|
 :pattern ( ($IsAlloc boolType v@@18 TBool h@@11))
)))
(assert (forall ((v@@19 T@U) (t0@@21 T@U) ) (! (= ($Is SeqType v@@19 (TSeq t0@@21)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@19))) ($IsBox (|Seq#Index| v@@19 i@@1) t0@@21))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1630|
 :pattern ( (|Seq#Index| v@@19 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1631|
 :pattern ( ($Is SeqType v@@19 (TSeq t0@@21)))
)))
(assert (forall ((a@@14 T@U) (x@@19 T@U) ) (!  (=> (not (|Set#IsMember| a@@14 x@@19)) (= (|Set#Card| (|Set#UnionOne| a@@14 x@@19)) (+ (|Set#Card| a@@14) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |1709|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@14 x@@19)))
)))
(assert (forall ((m@@16 T@U) ) (!  (or (= m@@16 |Map#Empty|) (exists ((k@@3 T@U) (v@@20 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@16) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@20)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1854|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1855|
 :pattern ( (|Map#Items| m@@16))
)))
(assert (forall ((s@@10 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@10))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@10 i@@2))) (|Seq#Rank| s@@10)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1844|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@10 i@@2))))
)))
(assert (forall ((v@@21 T@U) (t0@@22 T@U) (t1@@15 T@U) ) (!  (=> ($Is MapType v@@21 (TMap t0@@22 t1@@15)) (and (and ($Is SetType (|Map#Domain| v@@21) (TSet t0@@22)) ($Is SetType (|Map#Values| v@@21) (TSet t1@@15))) ($Is SetType (|Map#Items| v@@21) (TSet (Tclass._System.Tuple2 t0@@22 t1@@15)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1634|
 :pattern ( ($Is MapType v@@21 (TMap t0@@22 t1@@15)))
)))
(assert (forall ((v@@22 T@U) ) (! ($Is intType v@@22 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1617|
 :pattern ( ($Is intType v@@22 TInt))
)))
(assert (forall ((v@@23 T@U) ) (! ($Is boolType v@@23 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1619|
 :pattern ( ($Is boolType v@@23 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@19 () T@U)
(declare-fun |call3formal@f#0@0| () T@U)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |seqY#0@0| () T@U)
(declare-fun |setY#0@0| () T@U)
(declare-fun |mulY#0@0| () T@U)
(declare-fun |mapY#0@0| () T@U)
(declare-fun |optY#0@0| () T@U)
(declare-fun |call3formal@f#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@18 () T@U)
(declare-fun |objects#0@0| () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |$rhs##9@0| () Int)
(declare-fun |$rhs##8@0| () Int)
(declare-fun |newC##0@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |i##1@0| () Int)
(declare-fun |i2##1@0| () Int)
(declare-fun |call5formal@j#0| () T@U)
(declare-fun call0formal@All.Y$I () T@U)
(declare-fun |call2formal@i#0@0| () T@U)
(declare-fun |call3formal@i2#0@0| () T@U)
(declare-fun |call5formal@j#0@0| () T@U)
(declare-fun |call4formal@c2#0@0| () Int)
(declare-fun |i##0@0| () Int)
(declare-fun |i2##0@0| () Int)
(declare-fun |call5formal@j#0@@0| () T@U)
(declare-fun call0formal@All.Y$I@@0 () T@U)
(declare-fun |call2formal@i#0@0@@0| () T@U)
(declare-fun |call3formal@i2#0@0@@0| () T@U)
(declare-fun |call5formal@j#0@0@@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call4formal@c2#0@0@@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |call3formal@d#0@0| () Int)
(declare-fun |call4formal@d#0@0| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call4formal@c#0@0| () Int)
(declare-fun |call2formal@c#0@0| () Int)
(declare-fun |call2formal@c#0@0@@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun |c##0@0| () Int)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@All.Y$I@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |x##0@0| () T@U)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun |rts#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |yOwned#0| () T@U)
(declare-fun |defass#z#0| () Bool)
(declare-fun |z#0| () T@U)
(declare-fun |defass#z2#0| () Bool)
(declare-fun |z2#0| () T@U)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0| () T@U)
(declare-fun |defass#w2#0| () Bool)
(declare-fun |w2#0| () T@U)
(declare-fun |defass#p#0| () Bool)
(declare-fun |p#0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#aOwned#0| () Bool)
(declare-fun |aOwned#0| () T@U)
(declare-fun |defass#o#0| () Bool)
(declare-fun |o#0| () T@U)
(declare-fun |defass#oo#0| () Bool)
(declare-fun |oo#0| () T@U)
(declare-fun |objects#0| () T@U)
(declare-fun |defass#q#0| () Bool)
(declare-fun |q#0| () T@U)
(declare-fun |defass#yn#0| () Bool)
(declare-fun |yn#0| () T@U)
(declare-fun |yp#0| () T@U)
(declare-fun |ff#0| () T@U)
(declare-fun |seqY#0| () T@U)
(declare-fun |setY#0| () T@U)
(declare-fun |mulY#0| () T@U)
(declare-fun |mapY#0| () T@U)
(declare-fun |seqYU#0| () T@U)
(declare-fun |setYU#0| () T@U)
(declare-fun |mulYU#0| () T@U)
(declare-fun |mapYU#0| () T@U)
(declare-fun |seqYS#0| () T@U)
(declare-fun |setYS#0| () T@U)
(declare-fun |mulYS#0| () T@U)
(declare-fun |mapYS#0| () T@U)
(declare-fun |seqYO#0| () T@U)
(declare-fun |seaYO#0| () T@U)
(declare-fun |mulYO#0| () T@U)
(declare-fun |mapYO#0| () T@U)
(declare-fun |seqYSO#0| () T@U)
(declare-fun |seaYSO#0| () T@U)
(declare-fun |mulYSO#0| () T@U)
(declare-fun |mapYSO#0| () T@U)
(declare-fun |optY#0| () T@U)
(declare-fun |optYU#0| () T@U)
(declare-fun |optYS#0| () T@U)
(declare-fun |optYO#0| () T@U)
(declare-fun |optYSO#0| () T@U)
(set-info :boogie-vc-id Impl$$All.__default.Main)
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
 (=> (= (ControlFlow 0 0) 140) (let ((anon81_Else_correct  (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType (int_2_U (LitInt 1)))))) (+ (+ 1 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call3formal@this@0) All.Y.c)))) (All.Y.d TInt call3formal@this@0))) (=> (and (and (= |seqY#0@0| (|Seq#Build| |Seq#Empty| ($Box refType call3formal@this@0))) (= |setY#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0)))) (and (= |mulY#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box refType call3formal@this@0))) (= |mapY#0@0| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box refType call3formal@this@0))))) (and (=> (= (ControlFlow 0 25) (- 0 39)) ($Is SeqType |seqY#0@0| (TSeq (Tclass.TraitDefinitions.SubTrait TInt TInt)))) (=> ($Is SeqType |seqY#0@0| (TSeq (Tclass.TraitDefinitions.SubTrait TInt TInt))) (and (=> (= (ControlFlow 0 25) (- 0 38)) ($Is SetType |setY#0@0| (TSet (Tclass.TraitDefinitions.SubTrait TInt TInt)))) (=> ($Is SetType |setY#0@0| (TSet (Tclass.TraitDefinitions.SubTrait TInt TInt))) (and (=> (= (ControlFlow 0 25) (- 0 37)) ($Is MultiSetType |mulY#0@0| (TMultiSet (Tclass.TraitDefinitions.SubTrait TInt TInt)))) (=> ($Is MultiSetType |mulY#0@0| (TMultiSet (Tclass.TraitDefinitions.SubTrait TInt TInt))) (and (=> (= (ControlFlow 0 25) (- 0 36)) ($Is MapType |mapY#0@0| (TMap TInt (Tclass.TraitDefinitions.SubTrait TInt TInt)))) (=> ($Is MapType |mapY#0@0| (TMap TInt (Tclass.TraitDefinitions.SubTrait TInt TInt))) (and (=> (= (ControlFlow 0 25) (- 0 35)) ($Is SeqType |seqY#0@0| (TSeq Tclass.TraitDefinitions.SuperTrait))) (=> ($Is SeqType |seqY#0@0| (TSeq Tclass.TraitDefinitions.SuperTrait)) (and (=> (= (ControlFlow 0 25) (- 0 34)) ($Is SetType |setY#0@0| (TSet Tclass.TraitDefinitions.SuperTrait))) (=> ($Is SetType |setY#0@0| (TSet Tclass.TraitDefinitions.SuperTrait)) (and (=> (= (ControlFlow 0 25) (- 0 33)) ($Is MultiSetType |mulY#0@0| (TMultiSet Tclass.TraitDefinitions.SuperTrait))) (=> ($Is MultiSetType |mulY#0@0| (TMultiSet Tclass.TraitDefinitions.SuperTrait)) (and (=> (= (ControlFlow 0 25) (- 0 32)) ($Is MapType |mapY#0@0| (TMap TInt Tclass.TraitDefinitions.SuperTrait))) (=> ($Is MapType |mapY#0@0| (TMap TInt Tclass.TraitDefinitions.SuperTrait)) (and (=> (= (ControlFlow 0 25) (- 0 31)) ($Is SeqType |seqY#0@0| (TSeq Tclass._System.object))) (=> ($Is SeqType |seqY#0@0| (TSeq Tclass._System.object)) (and (=> (= (ControlFlow 0 25) (- 0 30)) ($Is SetType |setY#0@0| (TSet Tclass._System.object))) (=> ($Is SetType |setY#0@0| (TSet Tclass._System.object)) (and (=> (= (ControlFlow 0 25) (- 0 29)) ($Is MultiSetType |mulY#0@0| (TMultiSet Tclass._System.object))) (=> ($Is MultiSetType |mulY#0@0| (TMultiSet Tclass._System.object)) (and (=> (= (ControlFlow 0 25) (- 0 28)) ($Is MapType |mapY#0@0| (TMap TInt Tclass._System.object))) (=> ($Is MapType |mapY#0@0| (TMap TInt Tclass._System.object)) (=> (= |optY#0@0| (|#TraitDefinitions.Option.Some| ($Box refType call3formal@this@0))) (and (=> (= (ControlFlow 0 25) (- 0 27)) ($Is DatatypeTypeType |optY#0@0| (Tclass.TraitDefinitions.Option (Tclass.TraitDefinitions.SubTrait TInt TInt)))) (=> ($Is DatatypeTypeType |optY#0@0| (Tclass.TraitDefinitions.Option (Tclass.TraitDefinitions.SubTrait TInt TInt))) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($Is DatatypeTypeType |optY#0@0| (Tclass.TraitDefinitions.Option Tclass.TraitDefinitions.SuperTrait))) (=> ($Is DatatypeTypeType |optY#0@0| (Tclass.TraitDefinitions.Option Tclass.TraitDefinitions.SuperTrait)) (=> (= (ControlFlow 0 25) (- 0 24)) ($Is DatatypeTypeType |optY#0@0| (Tclass.TraitDefinitions.Option Tclass._System.object))))))))))))))))))))))))))))))))))))
(let ((anon81_Then_correct true))
(let ((anon80_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 40) (- 0 44)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and ($Is HandleTypeType |call3formal@f#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |call3formal@f#0| (Tclass._System.___hFunc1 TInt TInt) $Heap)) (=> (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (and ($Is HandleTypeType |call3formal@f#0@0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |call3formal@f#0@0| (Tclass._System.___hFunc1 TInt TInt) $Heap@19))) (and (and (forall ((|i#1| T@U) ) (!  (and true (=> (= (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1|)) (U_2_bool (Lit boolType (bool_2_U true)))) true))
 :qid |traitsdfy.116:22|
 :skolemid |2161|
 :pattern ( (Reads1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1|)))
 :pattern ( (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1|)))
)) (forall ((|i#1@@0| T@U) ) (!  (and (= (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1@@0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (|Set#Equal| (Reads1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1@@0|)) (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0))))
 :qid |traitsdfy.116:22|
 :skolemid |2162|
 :pattern ( (Reads1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1@@0|)))
 :pattern ( (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType |i#1@@0|)))
))) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@30)))
 :qid |traitsdfy.115:12|
 :skolemid |2163|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@30))
)) ($HeapSucc $Heap@18 $Heap@19)))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType (int_2_U (LitInt 1))))) (=> (Requires1 TInt TInt $Heap@19 |call3formal@f#0@0| ($Box intType (int_2_U (LitInt 1)))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 40) 23) anon81_Then_correct) (=> (= (ControlFlow 0 40) 25) anon81_Else_correct)))))))))))))
(let ((anon80_Then_correct true))
(let ((anon79_Else_correct  (=> (= null null) (and (=> (= (ControlFlow 0 45) 22) anon80_Then_correct) (=> (= (ControlFlow 0 45) 40) anon80_Else_correct)))))
(let ((anon79_Then_correct true))
(let ((anon78_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 46) 21) anon79_Then_correct) (=> (= (ControlFlow 0 46) 45) anon79_Else_correct)))))
(let ((anon78_Then_correct true))
(let ((anon77_Else_correct  (=> (= (All.Y.d TInt call3formal@this@0) (All.Y.d TInt call3formal@this@0)) (and (=> (= (ControlFlow 0 47) (- 0 49)) true) (and (=> (= (ControlFlow 0 47) (- 0 48)) ($Is refType call3formal@this@0 (Tclass.All.Y TInt))) (=> ($Is refType call3formal@this@0 (Tclass.All.Y TInt)) (and (=> (= (ControlFlow 0 47) 20) anon78_Then_correct) (=> (= (ControlFlow 0 47) 46) anon78_Else_correct))))))))
(let ((anon77_Then_correct true))
(let ((anon76_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 50) (- 0 55)) true) (and (=> (= (ControlFlow 0 50) (- 0 54)) ($Is refType call3formal@this@0 (Tclass.All.Y TInt))) (=> ($Is refType call3formal@this@0 (Tclass.All.Y TInt)) (and (=> (= (ControlFlow 0 50) (- 0 53)) true) (and (=> (= (ControlFlow 0 50) (- 0 52)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 50) 19) anon77_Then_correct) (=> (= (ControlFlow 0 50) 47) anon77_Else_correct)))))))))))
(let ((anon76_Then_correct true))
(let ((anon75_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 56) (- 0 58)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait) (and (=> (= (ControlFlow 0 56) (- 0 57)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait2)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait2) (and (=> (= (ControlFlow 0 56) 18) anon76_Then_correct) (=> (= (ControlFlow 0 56) 50) anon76_Else_correct)))))))))
(let ((anon75_Then_correct true))
(let ((anon74_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 59) (- 0 60)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait2)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait2) (and (=> (= (ControlFlow 0 59) 17) anon75_Then_correct) (=> (= (ControlFlow 0 59) 56) anon75_Else_correct)))))))
(let ((anon74_Then_correct true))
(let ((anon73_Else_correct  (=> (= (|Set#Card| |objects#0@0|) (LitInt 1)) (and (=> (= (ControlFlow 0 61) (- 0 63)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait) (and (=> (= (ControlFlow 0 61) (- 0 62)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.NoMemberTrait) (and (=> (= (ControlFlow 0 61) 16) anon74_Then_correct) (=> (= (ControlFlow 0 61) 59) anon74_Else_correct)))))))))
(let ((anon73_Then_correct true))
(let ((anon72_Else_correct  (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (and (=> (= (ControlFlow 0 64) (- 0 71)) true) (and (=> (= (ControlFlow 0 64) (- 0 70)) ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs)) (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (=> (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@31)))
 :qid |traitsdfy.153:10|
 :skolemid |2084|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@31))
)) ($HeapSucc $Heap@16 $Heap@17))) (and (=> (= (ControlFlow 0 64) (- 0 69)) true) (and (=> (= (ControlFlow 0 64) (- 0 68)) ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs)) (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (=> (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@32)))
 :qid |traitsdfy.153:10|
 :skolemid |2084|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@32))
)) ($HeapSucc $Heap@17 $Heap@18))) (and (=> (= (ControlFlow 0 64) (- 0 67)) ($Is refType call3formal@this@0 Tclass._System.object)) (=> ($Is refType call3formal@this@0 Tclass._System.object) (and (=> (= (ControlFlow 0 64) (- 0 66)) true) (and (=> (= (ControlFlow 0 64) (- 0 65)) true) (=> (= |objects#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0)) ($Box refType call3formal@this@0)) ($Box refType call3formal@this@0))) (and (=> (= (ControlFlow 0 64) 15) anon73_Then_correct) (=> (= (ControlFlow 0 64) 61) anon73_Else_correct))))))))))))))))))
(let ((anon72_Then_correct true))
(let ((anon71_Else_correct  (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (and (=> (= (ControlFlow 0 72) (- 0 78)) true) (and (=> (= (ControlFlow 0 72) (- 0 77)) ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs)) (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (=> (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@33)))
 :qid |traitsdfy.153:10|
 :skolemid |2084|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@33))
)) ($HeapSucc $Heap@14 $Heap@15))) (and (=> (= (ControlFlow 0 72) (- 0 76)) true) (and (=> (= (ControlFlow 0 72) (- 0 75)) ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs)) (=> ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) (=> (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@34)))
 :qid |traitsdfy.153:10|
 :skolemid |2084|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@34))
)) ($HeapSucc $Heap@15 $Heap@16))) (and (=> (= (ControlFlow 0 72) (- 0 74)) true) (and (=> (= (ControlFlow 0 72) (- 0 73)) true) (and (=> (= (ControlFlow 0 72) 14) anon72_Then_correct) (=> (= (ControlFlow 0 72) 64) anon72_Else_correct)))))))))))))))
(let ((anon71_Then_correct true))
(let ((anon70_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.All.ClassNoArgs) ($IsAlloc refType call1formal@this Tclass.All.ClassNoArgs $Heap))) (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.All.ClassNoArgs) ($IsAlloc refType call1formal@this@0 Tclass.All.ClassNoArgs $Heap@14))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 call1formal@this@0) alloc))))) (and (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@35)))
 :qid |traitsdfy.149:5|
 :skolemid |2199|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@35))
)) ($HeapSucc $Heap@13 $Heap@14))) (and (=> (= (ControlFlow 0 79) (- 0 82)) true) (and (=> (= (ControlFlow 0 79) (- 0 81)) true) (and (=> (= (ControlFlow 0 79) (- 0 80)) true) (and (=> (= (ControlFlow 0 79) 13) anon71_Then_correct) (=> (= (ControlFlow 0 79) 72) anon71_Else_correct))))))))))
(let ((anon70_Then_correct true))
(let ((anon69_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 83) (- 0 85)) ($Is refType call3formal@this@0 Tclass._System.object)) (=> ($Is refType call3formal@this@0 Tclass._System.object) (and (=> (= (ControlFlow 0 83) (- 0 84)) true) (and (=> (= (ControlFlow 0 83) 12) anon70_Then_correct) (=> (= (ControlFlow 0 83) 79) anon70_Else_correct))))))))
(let ((anon69_Then_correct true))
(let ((anon68_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 86) (- 0 88)) ($Is refType call3formal@this@0 Tclass._System.object)) (=> ($Is refType call3formal@this@0 Tclass._System.object) (and (=> (= (ControlFlow 0 86) (- 0 87)) true) (and (=> (= (ControlFlow 0 86) 11) anon69_Then_correct) (=> (= (ControlFlow 0 86) 83) anon69_Else_correct))))))))
(let ((anon68_Then_correct true))
(let ((anon67_Else_correct  (=> (= call3formal@this@0 call3formal@this@0) (and (=> (= (ControlFlow 0 89) (- 0 91)) ($Is refType call3formal@this@0 Tclass._System.object)) (=> ($Is refType call3formal@this@0 Tclass._System.object) (and (=> (= (ControlFlow 0 89) (- 0 90)) true) (and (=> (= (ControlFlow 0 89) 10) anon68_Then_correct) (=> (= (ControlFlow 0 89) 86) anon68_Else_correct))))))))
(let ((anon67_Then_correct true))
(let ((anon66_Else_correct  (=> (= |$rhs##9@0| (LitInt 42)) (and (=> (= (ControlFlow 0 92) (- 0 94)) ($Is refType call3formal@this@0 Tclass._System.object)) (=> ($Is refType call3formal@this@0 Tclass._System.object) (and (=> (= (ControlFlow 0 92) (- 0 93)) true) (and (=> (= (ControlFlow 0 92) 9) anon67_Then_correct) (=> (= (ControlFlow 0 92) 89) anon67_Else_correct))))))))
(let ((anon66_Then_correct true))
(let ((anon65_Else_correct  (=> (= |$rhs##8@0| (LitInt 37)) (and (=> (= (ControlFlow 0 95) (- 0 99)) true) (and (=> (= (ControlFlow 0 95) (- 0 98)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (= |newC##0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 95) (- 0 97)) (forall (($o@@36 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@36) alloc)))) (= $o@@36 call3formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@36 $f@@0)))
 :qid |traitsdfy.187:11|
 :skolemid |2104|
))) (=> (forall (($o@@37 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@37) alloc)))) (= $o@@37 call3formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@37 $f@@1)))
 :qid |traitsdfy.187:11|
 :skolemid |2104|
)) (=> (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@38 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@38) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@38) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@38)) (= $o@@38 call3formal@this@0)))
 :qid |traitsdfy.51:12|
 :skolemid |2256|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@38))
)) ($HeapSucc $Heap@11 $Heap@12))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and (and (and (= |i##1@0| (LitInt 42)) (= |i2##1@0| (LitInt 37))) (and ($IsBox |call5formal@j#0| call0formal@All.Y$I) ($IsAllocBox |call5formal@j#0| call0formal@All.Y$I $Heap))) (and (and (= |call2formal@i#0@0| ($Box intType (int_2_U |i##1@0|))) (= |call3formal@i2#0@0| ($Box intType (int_2_U |i2##1@0|)))) (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)))) (and (and (and ($IsBox |call5formal@j#0@0| TInt) ($IsAllocBox |call5formal@j#0@0| TInt $Heap@13)) (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@39) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@39) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@39)))
 :qid |traitsdfy.108:12|
 :skolemid |2157|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@39))
))) (and ($HeapSucc $Heap@12 $Heap@13) (= |$rhs##9@0| (U_2_int ($Unbox intType |call5formal@j#0@0|)))))) (and (=> (= (ControlFlow 0 95) 8) anon66_Then_correct) (=> (= (ControlFlow 0 95) 92) anon66_Else_correct)))))))))))))))
(let ((anon65_Then_correct true))
(let ((anon64_Else_correct  (=> (= |call4formal@c2#0@0| (LitInt 16)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and (and (and (= |i##0@0| (LitInt 42)) (= |i2##0@0| (LitInt 37))) (and ($IsBox |call5formal@j#0@@0| call0formal@All.Y$I@@0) ($IsAllocBox |call5formal@j#0@@0| call0formal@All.Y$I@@0 $Heap))) (and (and (= |call2formal@i#0@0@@0| ($Box intType (int_2_U |i##0@0|))) (= |call3formal@i2#0@0@@0| ($Box intType (int_2_U |i2##0@0|)))) (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)))) (and (and (and ($IsBox |call5formal@j#0@0@@0| TInt) ($IsAllocBox |call5formal@j#0@0@@0| TInt $Heap@11)) (forall (($o@@40 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@40) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@40) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@40)))
 :qid |traitsdfy.108:12|
 :skolemid |2157|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@40))
))) (and ($HeapSucc $Heap@10 $Heap@11) (= |$rhs##8@0| (U_2_int ($Unbox intType |call5formal@j#0@0@@0|)))))) (and (=> (= (ControlFlow 0 100) 7) anon65_Then_correct) (=> (= (ControlFlow 0 100) 95) anon65_Else_correct))))))))
(let ((anon64_Then_correct true))
(let ((anon63_Else_correct  (=> (= |call4formal@c2#0@0@@0| (LitInt 16)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@41 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@41) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@41) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@41)))
 :qid |traitsdfy.59:12|
 :skolemid |2266|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@41))
)) ($HeapSucc $Heap@9 $Heap@10))) (and (=> (= (ControlFlow 0 102) 6) anon64_Then_correct) (=> (= (ControlFlow 0 102) 100) anon64_Else_correct))))))))
(let ((anon63_Then_correct true))
(let ((anon62_Else_correct  (=> (and (= |call3formal@d#0@0| |call4formal@d#0@0|) (= |call4formal@d#0@0| (LitInt 2))) (and (=> (= (ControlFlow 0 104) (- 0 106)) true) (and (=> (= (ControlFlow 0 104) (- 0 105)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@42) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@42)))
 :qid |traitsdfy.59:12|
 :skolemid |2266|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@42))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (=> (= (ControlFlow 0 104) 5) anon63_Then_correct) (=> (= (ControlFlow 0 104) 102) anon63_Else_correct)))))))))
(let ((anon62_Then_correct true))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 107) 4) anon62_Then_correct) (=> (= (ControlFlow 0 107) 104) anon62_Else_correct))))
(let ((anon61_Else_correct  (=> (and (or (not (= |call3formal@d#0@0| |call4formal@d#0@0|)) (not true)) (= (ControlFlow 0 109) 107)) anon14_correct)))
(let ((anon61_Then_correct  (=> (and (= |call3formal@d#0@0| |call4formal@d#0@0|) (= (ControlFlow 0 108) 107)) anon14_correct)))
(let ((anon60_Else_correct  (=> (and (and (and (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))) |call4formal@c#0@0|)) (= |call4formal@c#0@0| |call2formal@c#0@0|)) (= |call2formal@c#0@0| |call2formal@c#0@0@@0|)) (and (=> (= (ControlFlow 0 110) (- 0 113)) true) (and (=> (= (ControlFlow 0 110) (- 0 112)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@43 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@43) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@43) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@43)))
 :qid |traitsdfy.64:12|
 :skolemid |2267|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@43))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 110) (- 0 111)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@44 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@44) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@44) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@44)))
 :qid |traitsdfy.105:12|
 :skolemid |2154|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@44))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (=> (= (ControlFlow 0 110) 108) anon61_Then_correct) (=> (= (ControlFlow 0 110) 109) anon61_Else_correct))))))))))))
(let ((anon60_Then_correct true))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 114) 3) anon60_Then_correct) (=> (= (ControlFlow 0 114) 110) anon60_Else_correct))))
(let ((anon59_Else_correct  (=> (and (not (and (and (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))) |call4formal@c#0@0|)) (= |call4formal@c#0@0| |call2formal@c#0@0|))) (= (ControlFlow 0 116) 114)) anon10_correct)))
(let ((anon59_Then_correct  (=> (and (and (and (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))) |call4formal@c#0@0|)) (= |call4formal@c#0@0| |call2formal@c#0@0|)) (= (ControlFlow 0 115) 114)) anon10_correct)))
(let ((anon58_Else_correct  (=> (not (and (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))) |call4formal@c#0@0|))) (and (=> (= (ControlFlow 0 118) 115) anon59_Then_correct) (=> (= (ControlFlow 0 118) 116) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))) |call4formal@c#0@0|)) (and (=> (= (ControlFlow 0 117) 115) anon59_Then_correct) (=> (= (ControlFlow 0 117) 116) anon59_Else_correct)))))
(let ((anon57_Else_correct  (=> (or (not (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c))))) (not true)) (and (=> (= (ControlFlow 0 121) 117) anon58_Then_correct) (=> (= (ControlFlow 0 121) 118) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (= (LitInt 7) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) All.Y.c)))) (and (=> (= (ControlFlow 0 119) (- 0 120)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 119) 117) anon58_Then_correct) (=> (= (ControlFlow 0 119) 118) anon58_Else_correct))))))
(let ((anon56_Else_correct  (=> (= (All.Y.GetDFunc TInt call3formal@this@0) (LitInt 2)) (and (=> (= (ControlFlow 0 122) (- 0 136)) ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt))) (=> ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt)) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@45 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@45) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@45) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@45)))
 :qid |traitsdfy.130:10|
 :skolemid |2067|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@45))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 122) (- 0 135)) ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt))) (=> ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@46 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@46) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@46) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@46)))
 :qid |traitsdfy.130:10|
 :skolemid |2067|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@46))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 122) (- 0 134)) ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt))) (=> ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt)) (and (=> (= (ControlFlow 0 122) (- 0 133)) ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt))) (=> ($Is refType call3formal@this@0 (Tclass.TraitDefinitions.SubTrait TInt TInt)) (and (=> (= (ControlFlow 0 122) (- 0 132)) true) (and (=> (= (ControlFlow 0 122) (- 0 131)) true) (and (=> (= (ControlFlow 0 122) (- 0 130)) ($Is refType call3formal@this@0 Tclass.TraitDefinitions.SuperTrait)) (=> ($Is refType call3formal@this@0 Tclass.TraitDefinitions.SuperTrait) (and (=> (= (ControlFlow 0 122) (- 0 129)) true) (and (=> (= (ControlFlow 0 122) (- 0 128)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (>= |call4formal@c#0@0| (LitInt 0))) (and (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@47) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@47)))
 :qid |traitsdfy.56:12|
 :skolemid |2265|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@47))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 122) (- 0 127)) true) (and (=> (= (ControlFlow 0 122) (- 0 126)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@48) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@48) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@48)))
 :qid |traitsdfy.50:12|
 :skolemid |2255|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@48))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 122) (- 0 125)) true) (and (=> (= (ControlFlow 0 122) (- 0 124)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@49) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@49) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@49)))
 :qid |traitsdfy.50:12|
 :skolemid |2255|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@49))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 122) 119) anon57_Then_correct) (=> (= (ControlFlow 0 122) 121) anon57_Else_correct))))))))))))))))))))))))))))))))
(let ((anon56_Then_correct true))
(let ((anon55_Else_correct  (=> (and (|TraitDefinitions.Option#Equal| |call2formal@r#0@0| (|#TraitDefinitions.Option.Some| ($Box boolType (Lit boolType (bool_2_U true))))) (= |c##0@0| (LitInt 7))) (=> (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass.All.Y call0formal@All.Y$I@@1)) ($IsAlloc refType call3formal@this (Tclass.All.Y call0formal@All.Y$I@@1) $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass.All.Y TInt)) ($IsAlloc refType call3formal@this@0 (Tclass.All.Y TInt) $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) alloc))))) (and (forall (($o@@50 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@50) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@50) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@50)))
 :qid |traitsdfy.77:5|
 :skolemid |2126|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@50))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 137) (- 0 138)) (or (not (= call3formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call3formal@this@0) (Tclass.All.Y? TInt) $Heap@1) (=> (and (|All.Y.GetDFunc#canCall| TInt call3formal@this@0) (|All.Y.GetDFunc#canCall| TInt call3formal@this@0)) (and (=> (= (ControlFlow 0 137) 2) anon56_Then_correct) (=> (= (ControlFlow 0 137) 122) anon56_Else_correct))))))))))
(let ((anon55_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (Lit DatatypeTypeType (|#TraitDefinitions.Option.Some| ($Box intType (int_2_U (LitInt 2))))))) (=> (and (and ($Is DatatypeTypeType |call2formal@r#0| (Tclass.TraitDefinitions.Option TBool)) ($IsAlloc DatatypeTypeType |call2formal@r#0| (Tclass.TraitDefinitions.Option TBool) $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and ($Is DatatypeTypeType |call2formal@r#0@0| (Tclass.TraitDefinitions.Option TBool)) ($IsAlloc DatatypeTypeType |call2formal@r#0@0| (Tclass.TraitDefinitions.Option TBool) $Heap@0)) (forall (($o@@51 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@51) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@51) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@51)))
 :qid |traitsdfy.126:10|
 :skolemid |2060|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@51))
))) (and ($HeapSucc $Heap $Heap@0) (|$IsA#TraitDefinitions.Option| |call2formal@r#0@0|))) (and (=> (= (ControlFlow 0 139) 1) anon55_Then_correct) (=> (= (ControlFlow 0 139) 137) anon55_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |rts#0| (Tclass.TraitDefinitions.Option TBool)) ($IsAlloc DatatypeTypeType |rts#0| (Tclass.TraitDefinitions.Option TBool) $Heap)) true) (and (and ($Is refType |y#0| (Tclass.All.Y? TInt)) ($IsAlloc refType |y#0| (Tclass.All.Y? TInt) $Heap)) true)) (=> (and (and (and (and ($Is refType |yOwned#0| (Tclass.All.Y? TInt)) ($IsAlloc refType |yOwned#0| (Tclass.All.Y? TInt) $Heap)) true) (and (=> |defass#z#0| (and ($Is refType |z#0| (Tclass.TraitDefinitions.SubTrait TInt TInt)) ($IsAlloc refType |z#0| (Tclass.TraitDefinitions.SubTrait TInt TInt) $Heap))) true)) (and (and (and (=> |defass#z2#0| (and ($Is refType |z2#0| (Tclass.TraitDefinitions.SubTrait TInt TInt)) ($IsAlloc refType |z2#0| (Tclass.TraitDefinitions.SubTrait TInt TInt) $Heap))) true) (and (=> |defass#w#0| (and ($Is refType |w#0| Tclass.TraitDefinitions.SuperTrait) ($IsAlloc refType |w#0| Tclass.TraitDefinitions.SuperTrait $Heap))) true)) (and (and (=> |defass#w2#0| (and ($Is refType |w2#0| Tclass.TraitDefinitions.SuperTrait) ($IsAlloc refType |w2#0| Tclass.TraitDefinitions.SuperTrait $Heap))) true) (and (=> |defass#p#0| (and ($Is refType |p#0| Tclass.TraitDefinitions.SuperTrait) ($IsAlloc refType |p#0| Tclass.TraitDefinitions.SuperTrait $Heap))) true)))) (=> (and (and (and (and (and (and (and (=> |defass#a#0| (and ($Is refType |a#0| Tclass.All.ClassNoArgs) ($IsAlloc refType |a#0| Tclass.All.ClassNoArgs $Heap))) true) (and (=> |defass#aOwned#0| (and ($Is refType |aOwned#0| Tclass.All.ClassNoArgs) ($IsAlloc refType |aOwned#0| Tclass.All.ClassNoArgs $Heap))) true)) (and (and (=> |defass#o#0| (and ($Is refType |o#0| Tclass.All.TraitNoArgs) ($IsAlloc refType |o#0| Tclass.All.TraitNoArgs $Heap))) true) (and (=> |defass#oo#0| (and ($Is refType |oo#0| Tclass._System.object) ($IsAlloc refType |oo#0| Tclass._System.object $Heap))) true))) (and (and (and ($Is SetType |objects#0| (TSet Tclass._System.object)) ($IsAlloc SetType |objects#0| (TSet Tclass._System.object) $Heap)) true) (and (and (=> |defass#q#0| (and ($Is refType |q#0| Tclass.TraitDefinitions.NoMemberTrait) ($IsAlloc refType |q#0| Tclass.TraitDefinitions.NoMemberTrait $Heap))) true) (and (=> |defass#yn#0| (and ($Is refType |yn#0| (Tclass.All.Y TInt)) ($IsAlloc refType |yn#0| (Tclass.All.Y TInt) $Heap))) true)))) (and (and (and (and ($Is refType |yp#0| (Tclass.All.Y? TInt)) ($IsAlloc refType |yp#0| (Tclass.All.Y? TInt) $Heap)) true) (and (and ($Is HandleTypeType |ff#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |ff#0| (Tclass._System.___hFunc1 TInt TInt) $Heap)) true)) (and (and (and ($Is SeqType |seqY#0| (TSeq (Tclass.All.Y? TInt))) ($IsAlloc SeqType |seqY#0| (TSeq (Tclass.All.Y? TInt)) $Heap)) true) (and (and ($Is SetType |setY#0| (TSet (Tclass.All.Y? TInt))) ($IsAlloc SetType |setY#0| (TSet (Tclass.All.Y? TInt)) $Heap)) true)))) (and (and (and (and (and ($Is MultiSetType |mulY#0| (TMultiSet (Tclass.All.Y? TInt))) ($IsAlloc MultiSetType |mulY#0| (TMultiSet (Tclass.All.Y? TInt)) $Heap)) true) (and (and ($Is MapType |mapY#0| (TMap TInt (Tclass.All.Y? TInt))) ($IsAlloc MapType |mapY#0| (TMap TInt (Tclass.All.Y? TInt)) $Heap)) true)) (and (and (and ($Is SeqType |seqYU#0| (TSeq (Tclass.TraitDefinitions.SubTrait TInt TInt))) ($IsAlloc SeqType |seqYU#0| (TSeq (Tclass.TraitDefinitions.SubTrait TInt TInt)) $Heap)) true) (and (and ($Is SetType |setYU#0| (TSet (Tclass.TraitDefinitions.SubTrait TInt TInt))) ($IsAlloc SetType |setYU#0| (TSet (Tclass.TraitDefinitions.SubTrait TInt TInt)) $Heap)) true))) (and (and (and (and ($Is MultiSetType |mulYU#0| (TMultiSet (Tclass.TraitDefinitions.SubTrait TInt TInt))) ($IsAlloc MultiSetType |mulYU#0| (TMultiSet (Tclass.TraitDefinitions.SubTrait TInt TInt)) $Heap)) true) (and (and ($Is MapType |mapYU#0| (TMap TInt (Tclass.TraitDefinitions.SubTrait TInt TInt))) ($IsAlloc MapType |mapYU#0| (TMap TInt (Tclass.TraitDefinitions.SubTrait TInt TInt)) $Heap)) true)) (and (and (and ($Is SeqType |seqYS#0| (TSeq Tclass.TraitDefinitions.SuperTrait)) ($IsAlloc SeqType |seqYS#0| (TSeq Tclass.TraitDefinitions.SuperTrait) $Heap)) true) (and (and ($Is SetType |setYS#0| (TSet Tclass.TraitDefinitions.SuperTrait)) ($IsAlloc SetType |setYS#0| (TSet Tclass.TraitDefinitions.SuperTrait) $Heap)) true))))) (and (and (and (and (and (and ($Is MultiSetType |mulYS#0| (TMultiSet Tclass.TraitDefinitions.SuperTrait)) ($IsAlloc MultiSetType |mulYS#0| (TMultiSet Tclass.TraitDefinitions.SuperTrait) $Heap)) true) (and (and ($Is MapType |mapYS#0| (TMap TInt Tclass.TraitDefinitions.SuperTrait)) ($IsAlloc MapType |mapYS#0| (TMap TInt Tclass.TraitDefinitions.SuperTrait) $Heap)) true)) (and (and (and ($Is SeqType |seqYO#0| (TSeq Tclass._System.object)) ($IsAlloc SeqType |seqYO#0| (TSeq Tclass._System.object) $Heap)) true) (and (and ($Is SetType |seaYO#0| (TSet Tclass._System.object)) ($IsAlloc SetType |seaYO#0| (TSet Tclass._System.object) $Heap)) true))) (and (and (and (and ($Is MultiSetType |mulYO#0| (TMultiSet Tclass._System.object)) ($IsAlloc MultiSetType |mulYO#0| (TMultiSet Tclass._System.object) $Heap)) true) (and (and ($Is MapType |mapYO#0| (TMap TInt Tclass._System.object)) ($IsAlloc MapType |mapYO#0| (TMap TInt Tclass._System.object) $Heap)) true)) (and (and (and ($Is SeqType |seqYSO#0| (TSeq Tclass._System.object)) ($IsAlloc SeqType |seqYSO#0| (TSeq Tclass._System.object) $Heap)) true) (and (and ($Is SetType |seaYSO#0| (TSet Tclass._System.object)) ($IsAlloc SetType |seaYSO#0| (TSet Tclass._System.object) $Heap)) true)))) (and (and (and (and (and ($Is MultiSetType |mulYSO#0| (TMultiSet Tclass._System.object)) ($IsAlloc MultiSetType |mulYSO#0| (TMultiSet Tclass._System.object) $Heap)) true) (and (and ($Is MapType |mapYSO#0| (TMap TInt Tclass._System.object)) ($IsAlloc MapType |mapYSO#0| (TMap TInt Tclass._System.object) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |optY#0| (Tclass.TraitDefinitions.Option (Tclass.All.Y? TInt))) ($IsAlloc DatatypeTypeType |optY#0| (Tclass.TraitDefinitions.Option (Tclass.All.Y? TInt)) $Heap)) true) (and (and ($Is DatatypeTypeType |optYU#0| (Tclass.TraitDefinitions.Option (Tclass.TraitDefinitions.SubTrait TInt TInt))) ($IsAlloc DatatypeTypeType |optYU#0| (Tclass.TraitDefinitions.Option (Tclass.TraitDefinitions.SubTrait TInt TInt)) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |optYS#0| (Tclass.TraitDefinitions.Option Tclass.TraitDefinitions.SuperTrait)) ($IsAlloc DatatypeTypeType |optYS#0| (Tclass.TraitDefinitions.Option Tclass.TraitDefinitions.SuperTrait) $Heap)) true) (and (and ($Is DatatypeTypeType |optYO#0| (Tclass.TraitDefinitions.Option Tclass._System.object)) ($IsAlloc DatatypeTypeType |optYO#0| (Tclass.TraitDefinitions.Option Tclass._System.object) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |optYSO#0| (Tclass.TraitDefinitions.Option Tclass._System.object)) ($IsAlloc DatatypeTypeType |optYSO#0| (Tclass.TraitDefinitions.Option Tclass._System.object) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 140) 139))))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
