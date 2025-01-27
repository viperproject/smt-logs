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
(declare-fun Tagclass._module.Automobile () T@U)
(declare-fun Tagclass._module.Automobile? () T@U)
(declare-fun class._module.Automobile? () T@U)
(declare-fun Tagclass._module.Fiat? () T@U)
(declare-fun Tagclass._module.Fiat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Automobile () T@U)
(declare-fun tytagFamily$Fiat () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$position () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.Automobile (T@U) Bool)
(declare-fun Tclass._module.Fiat? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Automobile.position () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Automobile? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Automobile () T@U)
(declare-fun Tclass._module.Fiat () T@U)
(declare-fun _module.Automobile.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Fiat.Valid (T@U T@U) Bool)
(declare-fun |_module.Fiat.Valid#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Automobile Tagclass._module.Automobile? class._module.Automobile? Tagclass._module.Fiat? Tagclass._module.Fiat tytagFamily$object tytagFamily$Automobile tytagFamily$Fiat field$Repr field$position)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (implements$_module.Automobile Tclass._module.Fiat?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Fiat?)  (or (= $o null) (= (dtype $o) Tclass._module.Fiat?)))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType $o Tclass._module.Fiat?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
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
(assert (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 Tclass._module.Automobile?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.Automobile.position)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |505|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.Automobile.position)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Fiat? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Automobile? $h@@0))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAllocBox bx Tclass._module.Fiat? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Automobile $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Automobile? $h@@2))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Automobile $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Automobile? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Fiat $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Fiat? $h@@3))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Fiat $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Fiat? $h@@3))
)))
(assert (= (FDim _module.Automobile.Repr) 0))
(assert (= (FieldOfDecl class._module.Automobile? field$Repr) _module.Automobile.Repr))
(assert ($IsGhostField _module.Automobile.Repr))
(assert (= (FDim _module.Automobile.position) 0))
(assert (= (FieldOfDecl class._module.Automobile? field$position) _module.Automobile.position))
(assert  (not ($IsGhostField _module.Automobile.position)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Automobile? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Automobile? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Fiat? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Fiat? $h@@6))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (= (Ctor SetType) 7))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (or (= $o@@4 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@4)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |694|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Automobile) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Automobile)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@3 Tclass._module.Automobile))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Automobile?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Automobile?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@4 Tclass._module.Automobile?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Fiat?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Fiat?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@5 Tclass._module.Fiat?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Fiat) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Fiat)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx@@6 Tclass._module.Fiat))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Automobile)  (and ($Is refType |c#0@@3| Tclass._module.Automobile?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Automobile))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Automobile?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Fiat)  (and ($Is refType |c#0@@4| Tclass._module.Fiat?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Fiat))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Fiat?))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.Fiat? $heap) ($IsAlloc refType $o@@5 Tclass._module.Automobile? $heap))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Fiat? $heap))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Automobile?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.Automobile.position)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |506|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.Automobile.position)))
)))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.Fiat?) ($Is refType $o@@8 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($Is refType $o@@8 Tclass._module.Fiat?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Fiat?) ($IsBox bx@@10 Tclass._module.Automobile?))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsBox bx@@10 Tclass._module.Fiat?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Fiat.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Fiat) ($IsAlloc refType this Tclass._module.Fiat $Heap)))))) (=> (_module.Fiat.Valid $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Automobile.Repr)) ($Box refType this))))
 :qid |TraitExampledfy.18:19|
 :skolemid |521|
 :pattern ( (_module.Fiat.Valid $Heap this))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Automobile) Tagclass._module.Automobile))
(assert (= (TagFamily Tclass._module.Automobile) tytagFamily$Automobile))
(assert (= (Tag Tclass._module.Automobile?) Tagclass._module.Automobile?))
(assert (= (TagFamily Tclass._module.Automobile?) tytagFamily$Automobile))
(assert (= (Tag Tclass._module.Fiat?) Tagclass._module.Fiat?))
(assert (= (TagFamily Tclass._module.Fiat?) tytagFamily$Fiat))
(assert (= (Tag Tclass._module.Fiat) Tagclass._module.Fiat))
(assert (= (TagFamily Tclass._module.Fiat) tytagFamily$Fiat))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Fiat.Valid#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Fiat) ($IsAlloc refType this@@0 Tclass._module.Fiat $Heap@@0)))))) (= (_module.Fiat.Valid $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Automobile.Repr)) ($Box refType this@@0)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Automobile.position))) (LitInt 100)))))
 :qid |TraitExampledfy.18:19|
 :skolemid |523|
 :pattern ( (_module.Fiat.Valid $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Automobile?)  (or (= $o@@9 null) (implements$_module.Automobile (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType $o@@9 Tclass._module.Automobile?))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Automobile?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.Automobile.Repr)) (TSet Tclass._System.object) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |498|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.Automobile.Repr)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Automobile?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) _module.Automobile.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |497|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) _module.Automobile.Repr)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun Fiat_$_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$_module.Fiat.Valid)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (=> (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (=> (= Fiat_$_ReadsFrame@0 (|lambda#3| null $Heap@@1 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))) (or (= $o@@12 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType $o@@12)))) (or (= $o@@12 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType $o@@12))))
 :qid |TraitExampledfy.18:19|
 :skolemid |525|
))) (=> (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))) (or (= $o@@13 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType $o@@13)))) (or (= $o@@13 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType $o@@13))))
 :qid |TraitExampledfy.18:19|
 :skolemid |525|
)) (=> (and (and (=> (_module.Fiat.Valid $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType this@@1))) (= (ControlFlow 0 2) (- 0 1))) (_module.Fiat.Valid $Heap@@1 this@@1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Automobile.Repr)) ($Box refType this@@1))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Fiat) ($IsAlloc refType this@@1 Tclass._module.Fiat $Heap@@1))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct))))
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
