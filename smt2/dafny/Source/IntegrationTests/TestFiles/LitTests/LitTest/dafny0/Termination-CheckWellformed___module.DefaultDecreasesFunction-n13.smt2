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
(declare-fun class._module.DefaultDecreasesFunction? () T@U)
(declare-fun Tagclass._module.DefaultDecreasesFunction? () T@U)
(declare-fun Tagclass._module.DefaultDecreasesFunction () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$DefaultDecreasesFunction () T@U)
(declare-fun field$next () T@U)
(declare-fun field$data () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.DefaultDecreasesFunction? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.DefaultDecreasesFunction () T@U)
(declare-fun _module.DefaultDecreasesFunction.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.DefaultDecreasesFunction.data () T@U)
(declare-fun _module.DefaultDecreasesFunction.next () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.DefaultDecreasesFunction.Abs (T@U Int) Int)
(declare-fun |_module.DefaultDecreasesFunction.Abs#canCall| (T@U Int) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#90| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.DefaultDecreasesFunction.Valid (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.DefaultDecreasesFunction.H (T@U T@U T@U Int) Int)
(declare-fun |_module.DefaultDecreasesFunction.H#canCall| (T@U T@U Int) Bool)
(declare-fun $LZ () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |_module.DefaultDecreasesFunction.Valid#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.DefaultDecreasesFunction? Tagclass._module.DefaultDecreasesFunction? Tagclass._module.DefaultDecreasesFunction tytagFamily$object tytagFamily$DefaultDecreasesFunction field$next field$data field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2507|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2508|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2512|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2513|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2506|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2522|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2503|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.DefaultDecreasesFunction?)  (or (= $o null) (= (dtype $o) Tclass._module.DefaultDecreasesFunction?)))
 :qid |unknown.0:0|
 :skolemid |3549|
 :pattern ( ($Is refType $o Tclass._module.DefaultDecreasesFunction?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2516|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2521|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |2733|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.DefaultDecreasesFunction $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.DefaultDecreasesFunction? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3601|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.DefaultDecreasesFunction $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.DefaultDecreasesFunction? $h@@0))
)))
(assert (= (FDim _module.DefaultDecreasesFunction.Repr) 0))
(assert (= (FieldOfDecl class._module.DefaultDecreasesFunction? field$Repr) _module.DefaultDecreasesFunction.Repr))
(assert ($IsGhostField _module.DefaultDecreasesFunction.Repr))
(assert (= (FDim _module.DefaultDecreasesFunction.data) 0))
(assert (= (FieldOfDecl class._module.DefaultDecreasesFunction? field$data) _module.DefaultDecreasesFunction.data))
(assert  (not ($IsGhostField _module.DefaultDecreasesFunction.data)))
(assert (= (FDim _module.DefaultDecreasesFunction.next) 0))
(assert (= (FieldOfDecl class._module.DefaultDecreasesFunction? field$next) _module.DefaultDecreasesFunction.next))
(assert  (not ($IsGhostField _module.DefaultDecreasesFunction.next)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2730|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.DefaultDecreasesFunction? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3550|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.DefaultDecreasesFunction? $h@@2))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) (|x#0| Int) ) (!  (=> (or (|_module.DefaultDecreasesFunction.Abs#canCall| this |x#0|) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.DefaultDecreasesFunction)))) (= (_module.DefaultDecreasesFunction.Abs this |x#0|) (ite (< |x#0| 0) (- 0 |x#0|) |x#0|)))
 :qid |Terminationdfy.375:18|
 :skolemid |3597|
 :pattern ( (_module.DefaultDecreasesFunction.Abs this |x#0|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2524|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2525|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2529|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2530|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2424|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2425|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#90| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (= $o@@2 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@2)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3734|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#90| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.DefaultDecreasesFunction.Abs#canCall| this@@0 (LitInt |x#0@@0|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.DefaultDecreasesFunction)))) (= (_module.DefaultDecreasesFunction.Abs this@@0 (LitInt |x#0@@0|)) (ite (< |x#0@@0| 0) (- 0 |x#0@@0|) |x#0@@0|)))
 :qid |Terminationdfy.375:18|
 :weight 3
 :skolemid |3598|
 :pattern ( (_module.DefaultDecreasesFunction.Abs this@@0 (LitInt |x#0@@0|)))
))))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.DefaultDecreasesFunction?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.DefaultDecreasesFunction.data)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3552|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.DefaultDecreasesFunction.data)))
)))
(assert (forall (($ly T@U) ($Heap T@U) (this@@1 T@U) ) (! (= (_module.DefaultDecreasesFunction.Valid ($LS $ly) $Heap this@@1) (_module.DefaultDecreasesFunction.Valid $ly $Heap this@@1))
 :qid |Terminationdfy.343:19|
 :skolemid |3557|
 :pattern ( (_module.DefaultDecreasesFunction.Valid ($LS $ly) $Heap this@@1))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.DefaultDecreasesFunction?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.DefaultDecreasesFunction.next)) Tclass._module.DefaultDecreasesFunction?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3555|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.DefaultDecreasesFunction.next)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2728|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2731|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.DefaultDecreasesFunction?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.DefaultDecreasesFunction?)))
 :qid |unknown.0:0|
 :skolemid |3548|
 :pattern ( ($IsBox bx@@2 Tclass._module.DefaultDecreasesFunction?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.DefaultDecreasesFunction) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.DefaultDecreasesFunction)))
 :qid |unknown.0:0|
 :skolemid |3560|
 :pattern ( ($IsBox bx@@3 Tclass._module.DefaultDecreasesFunction))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2732|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.DefaultDecreasesFunction)  (and ($Is refType |c#0@@2| Tclass._module.DefaultDecreasesFunction?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3600|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.DefaultDecreasesFunction))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.DefaultDecreasesFunction?))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.DefaultDecreasesFunction?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.DefaultDecreasesFunction.next)) Tclass._module.DefaultDecreasesFunction? $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3556|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.DefaultDecreasesFunction.next)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@2 T@U) (|x#0@@1| Int) ) (!  (=> (or (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@0 this@@2 |x#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.DefaultDecreasesFunction) ($IsAlloc refType this@@2 Tclass._module.DefaultDecreasesFunction $Heap@@0)))) (and (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@0 this@@2) (<= (LitInt 0) |x#0@@1|))))) (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.next)) null)) (not true)) (and (|_module.DefaultDecreasesFunction.Abs#canCall| this@@2 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.data)))) (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.next)) (_module.DefaultDecreasesFunction.Abs this@@2 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.data))))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.next)) null) (=> (<= 78 |x#0@@1|) (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@0 this@@2 (- |x#0@@1| 1))))) (= (_module.DefaultDecreasesFunction.H ($LS $ly@@0) $Heap@@0 this@@2 |x#0@@1|) (ite  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.next)) null)) (not true)) (_module.DefaultDecreasesFunction.H $ly@@0 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.next)) (_module.DefaultDecreasesFunction.Abs this@@2 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.data))))) (ite (< |x#0@@1| 78) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.DefaultDecreasesFunction.data))) |x#0@@1|) (_module.DefaultDecreasesFunction.H $ly@@0 $Heap@@0 this@@2 (- |x#0@@1| 1)))))))
 :qid |Terminationdfy.363:18|
 :skolemid |3590|
 :pattern ( (_module.DefaultDecreasesFunction.H ($LS $ly@@0) $Heap@@0 this@@2 |x#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2511|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2514|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.DefaultDecreasesFunction?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.DefaultDecreasesFunction.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3553|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.DefaultDecreasesFunction.Repr)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.DefaultDecreasesFunction?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.DefaultDecreasesFunction.Repr)) (TSet Tclass._System.object?) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3554|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.DefaultDecreasesFunction.Repr)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2528|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2485|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2405|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2445|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2446|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2729|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2379|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2380|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.DefaultDecreasesFunction?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.DefaultDecreasesFunction.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3551|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.DefaultDecreasesFunction.data)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2517|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@3 T@U) (|x#0@@2| Int) ) (! (= (_module.DefaultDecreasesFunction.H ($LS $ly@@1) $Heap@@1 this@@3 |x#0@@2|) (_module.DefaultDecreasesFunction.H $ly@@1 $Heap@@1 this@@3 |x#0@@2|))
 :qid |Terminationdfy.363:18|
 :skolemid |3584|
 :pattern ( (_module.DefaultDecreasesFunction.H ($LS $ly@@1) $Heap@@1 this@@3 |x#0@@2|))
)))
(assert (forall ((bx@@6 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2410|
 :pattern ( ($IsBox bx@@6 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.DefaultDecreasesFunction?) Tagclass._module.DefaultDecreasesFunction?))
(assert (= (TagFamily Tclass._module.DefaultDecreasesFunction?) tytagFamily$DefaultDecreasesFunction))
(assert (= (Tag Tclass._module.DefaultDecreasesFunction) Tagclass._module.DefaultDecreasesFunction))
(assert (= (TagFamily Tclass._module.DefaultDecreasesFunction) tytagFamily$DefaultDecreasesFunction))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@4 T@U) (|x#0@@3| Int) ) (!  (=> (or (|_module.DefaultDecreasesFunction.Abs#canCall| (Lit refType this@@4) (LitInt |x#0@@3|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.DefaultDecreasesFunction)))) (= (_module.DefaultDecreasesFunction.Abs (Lit refType this@@4) (LitInt |x#0@@3|)) (ite (< |x#0@@3| 0) (- 0 |x#0@@3|) |x#0@@3|)))
 :qid |Terminationdfy.375:18|
 :weight 3
 :skolemid |3599|
 :pattern ( (_module.DefaultDecreasesFunction.Abs (Lit refType this@@4) (LitInt |x#0@@3|)))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2526|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2527|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2439|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@2 this@@5) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.DefaultDecreasesFunction) ($IsAlloc refType this@@5 Tclass._module.DefaultDecreasesFunction $Heap@@2)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@5)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) ($Box refType null))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@5))) (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next))))))))) (= (_module.DefaultDecreasesFunction.Valid ($LS $ly@@2) $Heap@@2 this@@5)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@5)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) ($Box refType null)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@5)))) (_module.DefaultDecreasesFunction.Valid $ly@@2 $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.DefaultDecreasesFunction.next)))))))))
 :qid |Terminationdfy.343:19|
 :skolemid |3564|
 :pattern ( (_module.DefaultDecreasesFunction.Valid ($LS $ly@@2) $Heap@@2 this@@5) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2418|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@@4| () Int)
(declare-fun this@@6 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |##x#2@0| () Int)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |##x#1@0| () Int)
(declare-fun |##x#0@0| () Int)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.DefaultDecreasesFunction.H)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon11_Else_correct  (=> (and (and (<= 78 |x#0@@4|) ($IsAllocBox ($Box refType this@@6) Tclass._module.DefaultDecreasesFunction? $Heap@@3)) (and (= |##x#2@0| (- |x#0@@4| 1)) ($IsAlloc intType (int_2_U |##x#2@0|) TInt $Heap@@3))) (and (=> (= (ControlFlow 0 24) (- 0 38)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@6))))) (and (=> (= (ControlFlow 0 24) (- 0 37)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) ($Box refType null)))))) (and (=> (= (ControlFlow 0 24) (- 0 36)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)))))) (and (=> (= (ControlFlow 0 24) (- 0 35)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr))))))) (and (=> (= (ControlFlow 0 24) (- 0 34)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Box refType this@@6))))))) (and (=> (= (ControlFlow 0 24) (- 0 33)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (_module.DefaultDecreasesFunction.Valid ($LS ($LS $LZ)) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))))))) (and (=> (= (ControlFlow 0 24) (- 0 32)) (<= (LitInt 0) |##x#2@0|)) (=> (and (and (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (<= (LitInt 0) |##x#2@0|)) (= |b$reqreads#7@0| (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@10) alloc)))) (or (= $o@@10 this@@6) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) ($Box refType $o@@10)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@10 $f@@0)))
 :qid |Terminationdfy.373:7|
 :skolemid |3594|
)))) (and (=> (= (ControlFlow 0 24) (- 0 31)) (or (or (<= 0 |x#0@@4|) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))))))) (= |##x#2@0| |x#0@@4|))) (=> (or (or (<= 0 |x#0@@4|) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))))))) (= |##x#2@0| |x#0@@4|)) (and (=> (= (ControlFlow 0 24) (- 0 30)) (or (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))))) (and (|Set#Equal| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (< |##x#2@0| |x#0@@4|)))) (=> (or (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))))) (and (|Set#Equal| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (< |##x#2@0| |x#0@@4|))) (=> (and (and (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@3 this@@6 (- |x#0@@4| 1)) (= (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|) (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 (- |x#0@@4| 1)))) (and (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@3 this@@6 (- |x#0@@4| 1)) ($Is intType (int_2_U (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|)) TInt))) (and (=> (= (ControlFlow 0 24) (- 0 29)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 24) (- 0 28)) true) (and (=> (= (ControlFlow 0 24) (- 0 27)) true) (and (=> (= (ControlFlow 0 24) (- 0 26)) true) (and (=> (= (ControlFlow 0 24) (- 0 25)) true) (=> (= (ControlFlow 0 24) (- 0 23)) |b$reqreads#7@0|)))))))))))))))))))))))
(let ((anon11_Then_correct  (=> (and (and (< |x#0@@4| 78) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@6 _module.DefaultDecreasesFunction.data)))) (and (= (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data))) |x#0@@4|)) ($Is intType (int_2_U (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|)) TInt))) (and (=> (= (ControlFlow 0 18) (- 0 22)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 18) (- 0 21)) true) (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (and (=> (= (ControlFlow 0 18) (- 0 19)) true) (=> (= (ControlFlow 0 18) (- 0 17)) |b$reqreads#6@0|)))))))))
(let ((anon10_Else_correct  (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null) (and (=> (= (ControlFlow 0 39) 18) anon11_Then_correct) (=> (= (ControlFlow 0 39) 24) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@6 _module.DefaultDecreasesFunction.next)))) (and (=> (= (ControlFlow 0 3) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) null)) (not true)) (=> (and (and (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next) Tclass._module.DefaultDecreasesFunction? $Heap@@3) ($IsAllocBox ($Box refType this@@6) Tclass._module.DefaultDecreasesFunction? $Heap@@3)) (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@6 _module.DefaultDecreasesFunction.data))) (= |##x#1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data)))))) (and (and ($IsAlloc intType (int_2_U |##x#1@0|) TInt $Heap@@3) (|_module.DefaultDecreasesFunction.Abs#canCall| this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data))))) (and (= |##x#0@0| (_module.DefaultDecreasesFunction.Abs this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data))))) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap@@3)))) (and (=> (= (ControlFlow 0 3) (- 0 15)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))))) (and (=> (= (ControlFlow 0 3) (- 0 14)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Box refType null)))))) (and (=> (= (ControlFlow 0 3) (- 0 13)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next)))))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr))))))) (and (=> (= (ControlFlow 0 3) (- 0 11)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))))))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (or (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next)) null)) (not true)) (_module.DefaultDecreasesFunction.Valid ($LS ($LS $LZ)) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.next))))))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (<= (LitInt 0) |##x#0@0|)) (=> (and (and (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (<= (LitInt 0) |##x#0@0|)) (= |b$reqreads#5@0| (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@11) alloc)))) (or (= $o@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) ($Box refType $o@@11)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@11 $f@@1)))
 :qid |Terminationdfy.369:12|
 :skolemid |3593|
)))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (or (<= 0 |x#0@@4|) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))))))) (= |##x#0@0| |x#0@@4|))) (=> (or (or (<= 0 |x#0@@4|) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))))))) (= |##x#0@0| |x#0@@4|)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)))))) (and (|Set#Equal| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (< |##x#0@0| |x#0@@4|)))) (=> (or (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)))))) (and (|Set#Equal| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6)))) (< |##x#0@0| |x#0@@4|))) (=> (and (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) (_module.DefaultDecreasesFunction.Abs this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data))))) (= (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|) (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) (_module.DefaultDecreasesFunction.Abs this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data))))))) (=> (and (and (|_module.DefaultDecreasesFunction.Abs#canCall| this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data)))) (|_module.DefaultDecreasesFunction.H#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.next)) (_module.DefaultDecreasesFunction.Abs this@@6 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.data)))))) ($Is intType (int_2_U (_module.DefaultDecreasesFunction.H ($LS $LZ) $Heap@@3 this@@6 |x#0@@4|)) TInt)) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#4@0|) (=> |b$reqreads#4@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#5@0|)))))))))))))))))))))))))))
(let ((anon9_Else_correct  (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@6 _module.DefaultDecreasesFunction.next))) (and (=> (= (ControlFlow 0 40) 3) anon10_Then_correct) (=> (= (ControlFlow 0 40) 39) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#90| null $Heap@@3 alloc this@@6 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)))) ($IsAllocBox ($Box refType this@@6) Tclass._module.DefaultDecreasesFunction? $Heap@@3)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@12) alloc)))) (or (= $o@@12 this@@6) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.DefaultDecreasesFunction.Repr)) ($Box refType $o@@12)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@12 $f@@2)))
 :qid |Terminationdfy.364:14|
 :skolemid |3591|
))) (|_module.DefaultDecreasesFunction.Valid#canCall| $Heap@@3 this@@6)) (and (_module.DefaultDecreasesFunction.Valid ($LS $LZ) $Heap@@3 this@@6) (<= (LitInt 0) |x#0@@4|))) (and (=> (= (ControlFlow 0 41) (- 0 43)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@6 _module.DefaultDecreasesFunction.Repr))) (and (=> (= (ControlFlow 0 41) (- 0 42)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 41) 1) anon9_Then_correct) (=> (= (ControlFlow 0 41) 40) anon9_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.DefaultDecreasesFunction) ($IsAlloc refType this@@6 Tclass._module.DefaultDecreasesFunction $Heap@@3))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 44) 41))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
