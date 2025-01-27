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
(declare-fun Tagclass._module.NonEmptyIntSet () T@U)
(declare-fun Tagclass._module.MyClassWithCtor () T@U)
(declare-fun Tagclass._module.MyNewInt () T@U)
(declare-fun Tagclass._module.FavoriateReals () T@U)
(declare-fun class._module.Tr? () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun class._module.MyClassWithCtor? () T@U)
(declare-fun Tagclass._module.MyClassWithCtor? () T@U)
(declare-fun tytagFamily$NonEmptyIntSet () T@U)
(declare-fun tytagFamily$MyClassWithCtor () T@U)
(declare-fun tytagFamily$MyNewInt () T@U)
(declare-fun tytagFamily$FavoriateReals () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun field$nes () T@U)
(declare-fun field$u () T@U)
(declare-fun field$x () T@U)
(declare-fun field$r () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.MyNewInt () T@U)
(declare-fun Tclass._module.FavoriateReals () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.MyClassWithCtor? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun Tclass._module.NonEmptyIntSet () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.MyClassWithCtor () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun _module.MyClassWithCtor.nes () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Tr.u () T@U)
(declare-fun _module.MyClassWithCtor.x () T@U)
(declare-fun _module.MyClassWithCtor.r () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.NonEmptyIntSet Tagclass._module.MyClassWithCtor Tagclass._module.MyNewInt Tagclass._module.FavoriateReals class._module.Tr? Tagclass._module.Tr? Tagclass._module.Tr class._module.MyClassWithCtor? Tagclass._module.MyClassWithCtor? tytagFamily$NonEmptyIntSet tytagFamily$MyClassWithCtor tytagFamily$MyNewInt tytagFamily$FavoriateReals tytagFamily$Tr field$nes field$u field$x field$r)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |673|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |674|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |678|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |679|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.MyNewInt $h)
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.MyNewInt $h))
)))
(assert (forall ((|r#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc realType |r#0| Tclass._module.FavoriateReals $h@@0)
 :qid |unknown.0:0|
 :skolemid |1071|
 :pattern ( ($IsAlloc realType |r#0| Tclass._module.FavoriateReals $h@@0))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |672|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |688|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (implements$_module.Tr Tclass._module.MyClassWithCtor?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |669|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |681|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (Ctor SetType) 3))
(assert (forall ((|s#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc SetType |s#0| Tclass._module.NonEmptyIntSet $h@@1) ($IsAlloc SetType |s#0| (TSet TInt) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($IsAlloc SetType |s#0| Tclass._module.NonEmptyIntSet $h@@1))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClassWithCtor?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClassWithCtor?)))
 :qid |unknown.0:0|
 :skolemid |1118|
 :pattern ( ($Is refType $o Tclass._module.MyClassWithCtor?))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |682|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |684|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |687|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((bx T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.MyClassWithCtor? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx Tclass._module.Tr? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAllocBox bx Tclass._module.MyClassWithCtor? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Tr $h@@3) ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.MyClassWithCtor $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.MyClassWithCtor? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.MyClassWithCtor $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.MyClassWithCtor? $h@@4))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |670|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |671|
 :pattern ( (|Set#Card| s))
)))
(assert (= (FDim _module.MyClassWithCtor.nes) 0))
(assert (= (FieldOfDecl class._module.MyClassWithCtor? field$nes) _module.MyClassWithCtor.nes))
(assert  (not ($IsGhostField _module.MyClassWithCtor.nes)))
(assert (= (FDim _module.Tr.u) 0))
(assert (= (FieldOfDecl class._module.Tr? field$u) _module.Tr.u))
(assert  (not ($IsGhostField _module.Tr.u)))
(assert (= (FDim _module.MyClassWithCtor.x) 0))
(assert (= (FieldOfDecl class._module.MyClassWithCtor? field$x) _module.MyClassWithCtor.x))
(assert  (not ($IsGhostField _module.MyClassWithCtor.x)))
(assert (= (FDim _module.MyClassWithCtor.r) 0))
(assert (= (FieldOfDecl class._module.MyClassWithCtor? field$r) _module.MyClassWithCtor.r))
(assert  (not ($IsGhostField _module.MyClassWithCtor.r)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@5)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@5))
)))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.MyClassWithCtor? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1119|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.MyClassWithCtor? $h@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |686|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |663|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |561|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 Real) ) (! (= (LitReal x@@7) x@@7)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |563|
 :pattern ( (LitReal x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |559|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |570|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@10 b@@7) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@10 o@@4)) (not (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |695|
 :pattern ( (|Set#IsMember| a@@10 o@@4))
 :pattern ( (|Set#IsMember| b@@7 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |696|
 :pattern ( (|Set#Disjoint| a@@10 b@@7))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |590|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |591|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.MyNewInt) (<= (LitInt 6) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.MyNewInt))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@7 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.MyClassWithCtor?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) _module.MyClassWithCtor.x)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1121|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) _module.MyClassWithCtor.x)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |583|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |655|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |654|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@8 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.MyClassWithCtor?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) _module.MyClassWithCtor.r)) Tclass._module.FavoriateReals))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1122|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) _module.MyClassWithCtor.r)))
)))
(assert (forall (($h@@9 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.MyClassWithCtor?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) _module.MyClassWithCtor.nes)) Tclass._module.NonEmptyIntSet))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1124|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) _module.MyClassWithCtor.nes)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.NonEmptyIntSet) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) Tclass._module.NonEmptyIntSet)))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($IsBox bx@@2 Tclass._module.NonEmptyIntSet))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.MyClassWithCtor) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.MyClassWithCtor)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($IsBox bx@@3 Tclass._module.MyClassWithCtor))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.MyNewInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass._module.MyNewInt)))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( ($IsBox bx@@4 Tclass._module.MyNewInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.FavoriateReals) (and (= ($Box realType ($Unbox realType bx@@5)) bx@@5) ($Is realType ($Unbox realType bx@@5) Tclass._module.FavoriateReals)))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( ($IsBox bx@@5 Tclass._module.FavoriateReals))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Tr?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Tr?)))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( ($IsBox bx@@6 Tclass._module.Tr?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Tr) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Tr)))
 :qid |unknown.0:0|
 :skolemid |1104|
 :pattern ( ($IsBox bx@@7 Tclass._module.Tr))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.MyClassWithCtor?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.MyClassWithCtor?)))
 :qid |unknown.0:0|
 :skolemid |1117|
 :pattern ( ($IsBox bx@@8 Tclass._module.MyClassWithCtor?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Tr)  (and ($Is refType |c#0@@1| Tclass._module.Tr?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1105|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.MyClassWithCtor)  (and ($Is refType |c#0@@2| Tclass._module.MyClassWithCtor?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1129|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.MyClassWithCtor))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.MyClassWithCtor?))
)))
(assert (forall (($h@@10 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.MyClassWithCtor?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) _module.MyClassWithCtor.r)) Tclass._module.FavoriateReals $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1123|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) _module.MyClassWithCtor.r)))
)))
(assert (forall (($h@@11 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.MyClassWithCtor?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) _module.MyClassWithCtor.nes)) Tclass._module.NonEmptyIntSet $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) _module.MyClassWithCtor.nes)))
)))
(assert (forall ((|r#0@@0| T@U) ) (! (= ($Is realType |r#0@@0| Tclass._module.FavoriateReals)  (or (= (U_2_real |r#0@@0|) (LitReal 3.14)) (= (U_2_real |r#0@@0|) (LitReal 2.7))))
 :qid |unknown.0:0|
 :skolemid |1070|
 :pattern ( ($Is realType |r#0@@0| Tclass._module.FavoriateReals))
)))
(assert (forall ((|s#0@@0| T@U) ) (! (= ($Is SetType |s#0@@0| Tclass._module.NonEmptyIntSet)  (and ($Is SetType |s#0@@0| (TSet TInt)) (or (not (= (|Set#Card| |s#0@@0|) 0)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1072|
 :pattern ( ($Is SetType |s#0@@0| Tclass._module.NonEmptyIntSet))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@5)  (or (|Set#IsMember| a@@11 o@@5) (|Set#IsMember| b@@8 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |677|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@5))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@9) a@@12) b@@9) (= (|Set#Difference| (|Set#Union| a@@12 b@@9) b@@9) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |680|
 :pattern ( (|Set#Union| a@@12 b@@9))
)))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.MyClassWithCtor? $heap) ($IsAlloc refType $o@@7 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.MyClassWithCtor? $heap))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |661|
 :pattern ( ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |651|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |571|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@14 b@@11)) (|Set#Card| (|Set#Difference| b@@11 a@@14))) (|Set#Card| (|Set#Intersection| a@@14 b@@11))) (|Set#Card| (|Set#Union| a@@14 b@@11))) (= (|Set#Card| (|Set#Difference| a@@14 b@@11)) (- (|Set#Card| a@@14) (|Set#Card| (|Set#Intersection| a@@14 b@@11)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |689|
 :pattern ( (|Set#Card| (|Set#Difference| a@@14 b@@11)))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |582|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |668|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |611|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |612|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |545|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |546|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |569|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall (($h@@12 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.MyClassWithCtor?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.MyClassWithCtor.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1120|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) _module.MyClassWithCtor.x)))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |683|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Intersection| a@@16 (|Set#Intersection| a@@16 b@@13)) (|Set#Intersection| a@@16 b@@13))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |685|
 :pattern ( (|Set#Intersection| a@@16 (|Set#Intersection| a@@16 b@@13)))
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
 :skolemid |1186|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall (($h@@13 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Tr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) _module.Tr.u)) Tclass._module.MyNewInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1103|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) _module.Tr.u)))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |576|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((a@@17 T@U) (x@@11 T@U) ) (!  (=> (|Set#IsMember| a@@17 x@@11) (= (|Set#Card| (|Set#UnionOne| a@@17 x@@11)) (|Set#Card| a@@17)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |675|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@17 x@@11)))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass._module.MyClassWithCtor?) ($Is refType $o@@11 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( ($Is refType $o@@11 Tclass._module.MyClassWithCtor?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.MyClassWithCtor?) ($IsBox bx@@12 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |1181|
 :pattern ( ($IsBox bx@@12 Tclass._module.MyClassWithCtor?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@12 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@12))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@12))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |660|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@12)))
)))
(assert (= (Tag Tclass._module.NonEmptyIntSet) Tagclass._module.NonEmptyIntSet))
(assert (= (TagFamily Tclass._module.NonEmptyIntSet) tytagFamily$NonEmptyIntSet))
(assert (= (Tag Tclass._module.MyClassWithCtor) Tagclass._module.MyClassWithCtor))
(assert (= (TagFamily Tclass._module.MyClassWithCtor) tytagFamily$MyClassWithCtor))
(assert (= (Tag Tclass._module.MyNewInt) Tagclass._module.MyNewInt))
(assert (= (TagFamily Tclass._module.MyNewInt) tytagFamily$MyNewInt))
(assert (= (Tag Tclass._module.FavoriateReals) Tagclass._module.FavoriateReals))
(assert (= (TagFamily Tclass._module.FavoriateReals) tytagFamily$FavoriateReals))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.MyClassWithCtor?) Tagclass._module.MyClassWithCtor?))
(assert (= (TagFamily Tclass._module.MyClassWithCtor?) tytagFamily$MyClassWithCtor))
(assert (forall (($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Tr?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) _module.Tr.u)) Tclass._module.MyNewInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1102|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) _module.Tr.u)))
)))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass._module.Tr?)  (or (= $o@@13 null) (implements$_module.Tr (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($Is refType $o@@13 Tclass._module.Tr?))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |562|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@14))) (Lit BoxType ($Box realType (real_2_U x@@14))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |564|
 :pattern ( ($Box realType (real_2_U (LitReal x@@14))))
)))
(assert (forall ((x@@15 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@15)) (Lit BoxType ($Box T@@5 x@@15)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |560|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@15)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |605|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((a@@18 T@U) (x@@16 T@U) ) (!  (=> (not (|Set#IsMember| a@@18 x@@16)) (= (|Set#Card| (|Set#UnionOne| a@@18 x@@16)) (+ (|Set#Card| a@@18) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |676|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@18 x@@16)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |584|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this () T@U)
(declare-fun this.u () Int)
(declare-fun this.x () Int)
(declare-fun this.r () Real)
(declare-fun this.nes () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |y#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.MyClassWithCtor.Init)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.MyClassWithCtor?)) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Tr.u))) this.u)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.MyClassWithCtor.x))) this.x) (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.MyClassWithCtor.r))) this.r))) (and (and (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.MyClassWithCtor.nes)) this.nes) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.MyClassWithCtor.nes))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.MyClassWithCtor.nes)) (=> (= (ControlFlow 0 2) (- 0 1)) ($Is SetType (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this) _module.MyClassWithCtor.nes)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))) Tclass._module.NonEmptyIntSet)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
