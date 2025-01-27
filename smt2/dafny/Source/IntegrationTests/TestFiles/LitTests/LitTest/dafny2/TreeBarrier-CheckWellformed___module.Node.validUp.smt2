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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$parent () T@U)
(declare-fun field$anc () T@U)
(declare-fun field$sense () T@U)
(declare-fun field$pc () T@U)
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
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node () T@U)
(declare-fun _module.Node.parent () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Node.anc () T@U)
(declare-fun _module.Node.sense () T@U)
(declare-fun _module.Node.pc () T@U)
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
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.Node.validUp (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Node.after (T@U T@U) Bool)
(declare-fun |_module.Node.after#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |_module.Node.validUp#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName class._module.Node? Tagclass._module.Node? Tagclass._module.Node tytagFamily$Node field$parent field$anc field$sense field$pc)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o Tclass._module.Node?))
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
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h) ($IsAlloc refType |c#0| Tclass._module.Node? $h))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h))
)))
(assert (= (FDim _module.Node.parent) 0))
(assert (= (FieldOfDecl class._module.Node? field$parent) _module.Node.parent))
(assert  (not ($IsGhostField _module.Node.parent)))
(assert (= (FDim _module.Node.anc) 0))
(assert (= (FieldOfDecl class._module.Node? field$anc) _module.Node.anc))
(assert  (not ($IsGhostField _module.Node.anc)))
(assert (= (FDim _module.Node.sense) 0))
(assert (= (FieldOfDecl class._module.Node? field$sense) _module.Node.sense))
(assert  (not ($IsGhostField _module.Node.sense)))
(assert (= (FDim _module.Node.pc) 0))
(assert (= (FieldOfDecl class._module.Node? field$pc) _module.Node.pc))
(assert  (not ($IsGhostField _module.Node.pc)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@0))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (= $o@@1 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@1)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |619|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.sense)) TBool $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |494|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.sense)))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Node.pc)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |496|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Node.pc)))
)))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) ) (! (= (_module.Node.validUp ($LS $ly) $Heap this) (_module.Node.validUp $ly $Heap this))
 :qid |TreeBarrierdfy.41:19|
 :skolemid |524|
 :pattern ( (_module.Node.validUp ($LS $ly) $Heap this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Node.parent)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |486|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Node.parent)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@0 Tclass._module.Node?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.parent)) Tclass._module.Node? $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |487|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.parent)))
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
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.anc)) (TSet Tclass._module.Node)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.anc)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.anc)) (TSet Tclass._module.Node) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.anc)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
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
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Node?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Node.sense)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Node.sense)))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Node.pc)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Node.pc)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Node.after#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Node) ($IsAlloc refType this@@0 Tclass._module.Node $Heap@@0)))))) (= (_module.Node.after $Heap@@0 this@@0)  (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.sense)))) (<= (LitInt 3) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.pc)))))))
 :qid |TreeBarrierdfy.62:19|
 :skolemid |560|
 :pattern ( (_module.Node.after $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Node.validUp#canCall| $Heap@@1 this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Node) ($IsAlloc refType this@@1 Tclass._module.Node $Heap@@1)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType this@@1))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent))) _module.Node.anc)))) (|_module.Node.validUp#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp $ly@@0 $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent))))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) |Set#Empty|)) (and (|_module.Node.after#canCall| $Heap@@1 this@@1) (=> (_module.Node.after $Heap@@1 this@@1) (forall ((|m#0| T@U) ) (!  (=> ($Is refType |m#0| Tclass._module.Node) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType |m#0|)) (|_module.Node.after#canCall| $Heap@@1 |m#0|)))
 :qid |TreeBarrierdfy.47:25|
 :skolemid |531|
 :pattern ( (_module.Node.after $Heap@@1 |m#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType |m#0|)))
)))))))) (= (_module.Node.validUp ($LS $ly@@0) $Heap@@1 this@@1)  (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType this@@1))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp $ly@@0 $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) |Set#Empty|))) (=> (_module.Node.after $Heap@@1 this@@1) (forall ((|m#0@@0| T@U) ) (!  (=> ($Is refType |m#0@@0| Tclass._module.Node) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType |m#0@@0|)) (_module.Node.after $Heap@@1 |m#0@@0|)))
 :qid |TreeBarrierdfy.47:25|
 :skolemid |530|
 :pattern ( (_module.Node.after $Heap@@1 |m#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.anc)) ($Box refType |m#0@@0|)))
)))))))
 :qid |TreeBarrierdfy.41:19|
 :skolemid |532|
 :pattern ( (_module.Node.validUp ($LS $ly@@0) $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@2| () Bool)
(declare-fun |b$reqreads#6@2| () Bool)
(declare-fun |b$reqreads#7@2| () Bool)
(declare-fun |b$reqreads#8@2| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#14@2| () Bool)
(declare-fun |b$reqreads#15@2| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#15@1| () Bool)
(declare-fun |b$reqreads#14@1| () Bool)
(declare-fun |m#1@0| () T@U)
(declare-fun |b$reqreads#14@0| () Bool)
(declare-fun |b$reqreads#15@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Node.validUp)
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
 (=> (= (ControlFlow 0 0) 46) (let ((anon18_correct  (=> (= (_module.Node.validUp ($LS $LZ) $Heap@@2 this@@2)  (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) |Set#Empty|))) (=> (_module.Node.after $Heap@@2 this@@2) (forall ((|m#2| T@U) ) (!  (=> ($Is refType |m#2| Tclass._module.Node) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#2|)) (_module.Node.after $Heap@@2 |m#2|)))
 :qid |TreeBarrierdfy.47:25|
 :skolemid |537|
 :pattern ( (_module.Node.after $Heap@@2 |m#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#2|)))
))))) (=> (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)))) (|_module.Node.validUp#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) |Set#Empty|)) (and (|_module.Node.after#canCall| $Heap@@2 this@@2) (=> (_module.Node.after $Heap@@2 this@@2) (forall ((|m#2@@0| T@U) ) (!  (=> ($Is refType |m#2@@0| Tclass._module.Node) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#2@@0|)) (|_module.Node.after#canCall| $Heap@@2 |m#2@@0|)))
 :qid |TreeBarrierdfy.47:25|
 :skolemid |538|
 :pattern ( (_module.Node.after $Heap@@2 |m#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#2@@0|)))
)))))))) ($Is boolType (bool_2_U (_module.Node.validUp ($LS $LZ) $Heap@@2 this@@2)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 17)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 16)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 3) (- 0 15)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 14)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 13)) |b$reqreads#5@2|) (=> |b$reqreads#5@2| (and (=> (= (ControlFlow 0 3) (- 0 12)) |b$reqreads#6@2|) (=> |b$reqreads#6@2| (and (=> (= (ControlFlow 0 3) (- 0 11)) |b$reqreads#7@2|) (=> |b$reqreads#7@2| (and (=> (= (ControlFlow 0 3) (- 0 10)) |b$reqreads#8@2|) (=> |b$reqreads#8@2| (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#9@1|) (=> |b$reqreads#9@1| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#10@1|) (=> |b$reqreads#10@1| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#11@1|) (=> |b$reqreads#11@1| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#12@1|) (=> |b$reqreads#12@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#13@1|) (=> |b$reqreads#13@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#14@2|) (=> |b$reqreads#14@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#15@2|)))))))))))))))))))))))))))))))))
(let ((anon17_correct  (=> (and (and (= |b$reqreads#13@1| |b$reqreads#13@0|) (= |b$reqreads#15@2| |b$reqreads#15@1|)) (and (= |b$reqreads#14@2| |b$reqreads#14@1|) (= (ControlFlow 0 20) 3))) anon18_correct)))
(let ((anon30_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#1@0|))) (= |b$reqreads#14@1| |b$reqreads#14@0|)) (and (= |b$reqreads#15@1| true) (= (ControlFlow 0 24) 20))) anon17_correct)))
(let ((anon30_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType |m#1@0|)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= |m#1@0| null)) (not true))) (=> (or (not (= |m#1@0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |m#1@0|) Tclass._module.Node? $Heap@@2) (= |b$reqreads#15@0| (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10) alloc)))) (= $o@@10 |m#1@0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@10 $f@@0)))
 :qid |TreeBarrierdfy.47:45|
 :skolemid |535|
)))) (=> (and (and (|_module.Node.after#canCall| $Heap@@2 |m#1@0|) (= |b$reqreads#14@1| |b$reqreads#14@0|)) (and (= |b$reqreads#15@1| |b$reqreads#15@0|) (= (ControlFlow 0 22) 20))) anon17_correct)))))))
(let ((anon29_Then_correct  (=> (and (and ($Is refType |m#1@0| Tclass._module.Node) ($IsAlloc refType |m#1@0| Tclass._module.Node $Heap@@2)) (= |b$reqreads#14@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc)))) (and (=> (= (ControlFlow 0 25) 22) anon30_Then_correct) (=> (= (ControlFlow 0 25) 24) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not (and ($Is refType |m#1@0| Tclass._module.Node) ($IsAlloc refType |m#1@0| Tclass._module.Node $Heap@@2))) (= |b$reqreads#14@1| true)) (and (= |b$reqreads#15@1| true) (= (ControlFlow 0 21) 20))) anon17_correct)))
(let ((anon28_Then_correct  (=> (_module.Node.after $Heap@@2 this@@2) (and (=> (= (ControlFlow 0 26) 25) anon29_Then_correct) (=> (= (ControlFlow 0 26) 21) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not (_module.Node.after $Heap@@2 this@@2)) (=> (and (and (= |b$reqreads#13@1| |b$reqreads#13@0|) (= |b$reqreads#15@2| true)) (and (= |b$reqreads#14@2| true) (= (ControlFlow 0 19) 3))) anon18_correct))))
(let ((anon27_Then_correct  (=> (and (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) |Set#Empty|))) ($IsAllocBox ($Box refType this@@2) Tclass._module.Node? $Heap@@2)) (and (= |b$reqreads#13@0| (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11) alloc)))) (= $o@@11 this@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@11 $f@@1)))
 :qid |TreeBarrierdfy.47:6|
 :skolemid |534|
))) (|_module.Node.after#canCall| $Heap@@2 this@@2))) (and (=> (= (ControlFlow 0 27) 26) anon28_Then_correct) (=> (= (ControlFlow 0 27) 19) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) |Set#Empty|)))) (=> (and (and (= |b$reqreads#13@1| true) (= |b$reqreads#15@2| true)) (and (= |b$reqreads#14@2| true) (= (ControlFlow 0 18) 3))) anon18_correct))))
(let ((anon26_Else_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (=> (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| true)) (and (=> (= (ControlFlow 0 30) 27) anon27_Then_correct) (=> (= (ControlFlow 0 30) 18) anon27_Else_correct))))))
(let ((anon26_Then_correct  (=> (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc)))) (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| |b$reqreads#12@0|))) (and (=> (= (ControlFlow 0 29) 27) anon27_Then_correct) (=> (= (ControlFlow 0 29) 18) anon27_Else_correct)))))
(let ((anon25_Then_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent)))) (and (=> (= (ControlFlow 0 31) 29) anon26_Then_correct) (=> (= (ControlFlow 0 31) 30) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (_module.Node.validUp ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))))))) (=> (and (= |b$reqreads#11@1| true) (= |b$reqreads#12@1| true)) (and (=> (= (ControlFlow 0 28) 27) anon27_Then_correct) (=> (= (ControlFlow 0 28) 18) anon27_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)))))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (= |b$reqreads#8@2| |b$reqreads#8@1|) (= |b$reqreads#7@2| |b$reqreads#7@1|))) (and (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|)) (and (= |b$reqreads#9@1| true) (= |b$reqreads#10@1| true)))) (and (=> (= (ControlFlow 0 37) 31) anon25_Then_correct) (=> (= (ControlFlow 0 37) 28) anon25_Else_correct))))))
(let ((anon24_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#Union| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc))))) (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent)))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent) Tclass._module.Node? $Heap@@2) (= |b$reqreads#10@0| (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@12) alloc)))) (or (= $o@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)) ($Box refType $o@@12)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@12 $f@@2)))
 :qid |TreeBarrierdfy.45:83|
 :skolemid |533|
)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))))))) (=> (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) _module.Node.anc)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)))))) (=> (and (|_module.Node.validUp#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (= |b$reqreads#8@2| |b$reqreads#8@1|) (= |b$reqreads#7@2| |b$reqreads#7@1|))) (and (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|)) (and (= |b$reqreads#9@1| |b$reqreads#9@0|) (= |b$reqreads#10@1| |b$reqreads#10@0|)))) (and (=> (= (ControlFlow 0 34) 31) anon25_Then_correct) (=> (= (ControlFlow 0 34) 28) anon25_Else_correct))))))))))))
(let ((anon23_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent))) (=> (and (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true)) (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true))) (and (=> (= (ControlFlow 0 40) 34) anon24_Then_correct) (=> (= (ControlFlow 0 40) 37) anon24_Else_correct))))))
(let ((anon23_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc)))) (and (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent))) (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (=> (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) _module.Node.anc))) (=> (and (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| |b$reqreads#8@0|))) (and (=> (= (ControlFlow 0 38) 34) anon24_Then_correct) (=> (= (ControlFlow 0 38) 37) anon24_Else_correct)))))))))
(let ((anon22_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null)) (not true)) (=> (and (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent))) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc)))) (and (=> (= (ControlFlow 0 41) 38) anon23_Then_correct) (=> (= (ControlFlow 0 41) 40) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.parent)) null) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@1| true)) (and (= |b$reqreads#8@2| true) (= |b$reqreads#7@2| true))) (and (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true)) (and (= |b$reqreads#9@1| true) (= |b$reqreads#10@1| true)))) (and (=> (= (ControlFlow 0 33) 31) anon25_Then_correct) (=> (= (ControlFlow 0 33) 28) anon25_Else_correct))))))
(let ((anon21_Then_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.parent)))) (and (=> (= (ControlFlow 0 42) 41) anon22_Then_correct) (=> (= (ControlFlow 0 42) 33) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)) ($Box refType this@@2)) (= |b$reqreads#2@1| true)) (=> (and (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@1| true)) (and (= |b$reqreads#8@2| true) (= |b$reqreads#7@2| true))) (and (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true)) (and (= |b$reqreads#9@1| true) (= |b$reqreads#10@1| true)))) (and (=> (= (ControlFlow 0 32) 31) anon25_Then_correct) (=> (= (ControlFlow 0 32) 28) anon25_Else_correct))))))
(let ((anon20_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc))) (and (=> (= (ControlFlow 0 43) 42) anon21_Then_correct) (=> (= (ControlFlow 0 43) 32) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc this@@2 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Node.anc)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.Node.anc)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 44) 1) anon20_Then_correct) (=> (= (ControlFlow 0 44) 43) anon20_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Node) ($IsAlloc refType this@@2 Tclass._module.Node $Heap@@2))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 46) 44))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
