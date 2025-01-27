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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$next () T@U)
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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node () T@U)
(declare-fun _module.Node.next () T@U)
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
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.Node.IsList (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Node.IsList#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#16| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Node Tagclass._module.Node? class._module.Node? tytagFamily$Node field$next)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2763|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2764|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2762|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2778|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2759|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3289|
 :pattern ( ($Is refType $o Tclass._module.Node?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2777|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h) ($IsAlloc refType |c#0| Tclass._module.Node? $h))
 :qid |unknown.0:0|
 :skolemid |3325|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h))
)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
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
 :skolemid |3290|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2780|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2781|
 :pattern ( (|Set#Subset| a@@4 b@@1))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T x@@5))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2680|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2681|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Node.next)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Node.next)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( ($IsBox bx@@0 Tclass._module.Node))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3324|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Node.next)) Tclass._module.Node? $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Node.next)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2784|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2741|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2663|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) (|r#0| T@U) ) (! (= (_module.Node.IsList ($LS $ly) $Heap this |r#0|) (_module.Node.IsList $ly $Heap this |r#0|))
 :qid |SmallTestsdfy.8:19|
 :skolemid |3293|
 :pattern ( (_module.Node.IsList ($LS $ly) $Heap this |r#0|))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2701|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2702|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|r#0@@0| T@U) ) (!  (=> (or (|_module.Node.IsList#canCall| $Heap@@0 this@@0 |r#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Node) ($IsAlloc refType this@@0 Tclass._module.Node $Heap@@0)))) ($Is SetType |r#0@@0| (TSet Tclass._module.Node))))) (and (=> (|Set#IsMember| |r#0@@0| ($Box refType this@@0)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.next)) null)) (not true)) (|_module.Node.IsList#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.next)) (|Set#Difference| |r#0@@0| (|Set#UnionOne| |Set#Empty| ($Box refType this@@0)))))) (= (_module.Node.IsList ($LS $ly@@0) $Heap@@0 this@@0 |r#0@@0|)  (and (|Set#IsMember| |r#0@@0| ($Box refType this@@0)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.next)) null)) (not true)) (_module.Node.IsList $ly@@0 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Node.next)) (|Set#Difference| |r#0@@0| (|Set#UnionOne| |Set#Empty| ($Box refType this@@0)))))))))
 :qid |SmallTestsdfy.8:19|
 :skolemid |3299|
 :pattern ( (_module.Node.IsList ($LS $ly@@0) $Heap@@0 this@@0 |r#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2635|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2636|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@2 x@@6))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2666|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@6 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2782|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2783|
 :pattern ( (|Set#Equal| a@@6 b@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@3))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3850|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2697|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2676|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |r#0@@1| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##r#0@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Node.IsList)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon6_correct  (=> (= (_module.Node.IsList ($LS $LZ) $Heap@@1 this@@1 |r#0@@1|)  (and (|Set#IsMember| |r#0@@1| ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null)) (not true)) (_module.Node.IsList ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) (|Set#Difference| |r#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))))) (=> (and (=> (|Set#IsMember| |r#0@@1| ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null)) (not true)) (|_module.Node.IsList#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) (|Set#Difference| |r#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))) ($Is boolType (bool_2_U (_module.Node.IsList ($LS $LZ) $Heap@@1 this@@1 |r#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#2@1|)))))))))
(let ((anon10_Else_correct  (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null) (=> (and (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= |b$reqreads#1@1| true)) (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 10) 3))) anon6_correct))))
(let ((anon10_Then_correct  (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null)) (not true)) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Node.next)))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) null)) (not true)) (=> (and (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next) Tclass._module.Node? $Heap@@1) (= |##r#0@0| (|Set#Difference| |r#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (and ($IsAlloc SetType |##r#0@0| (TSet Tclass._module.Node) $Heap@@1) (= |b$reqreads#2@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@4) alloc)))) (|Set#IsMember| |##r#0@0| ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |SmallTestsdfy.12:30|
 :skolemid |3300|
))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (and (|Set#Subset| |##r#0@0| |r#0@@1|) (not (|Set#Subset| |r#0@@1| |##r#0@0|))) (and (|Set#Equal| |##r#0@0| |r#0@@1|) (and (|Set#Subset| |##r#0@0| |r#0@@1|) (not (|Set#Subset| |r#0@@1| |##r#0@0|)))))) (=> (or (and (|Set#Subset| |##r#0@0| |r#0@@1|) (not (|Set#Subset| |r#0@@1| |##r#0@0|))) (and (|Set#Equal| |##r#0@0| |r#0@@1|) (and (|Set#Subset| |##r#0@0| |r#0@@1|) (not (|Set#Subset| |r#0@@1| |##r#0@0|))))) (=> (|_module.Node.IsList#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Node.next)) (|Set#Difference| |r#0@@1| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (=> (and (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 7) 3))) anon6_correct))))))))))
(let ((anon9_Then_correct  (=> (and (|Set#IsMember| |r#0@@1| ($Box refType this@@1)) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Node.next)))) (and (=> (= (ControlFlow 0 11) 7) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not (|Set#IsMember| |r#0@@1| ($Box refType this@@1))) (=> (and (and (= |b$reqreads#0@1| true) (= |b$reqreads#1@1| true)) (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 6) 3))) anon6_correct))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#16| null $Heap@@1 alloc |r#0@@1|)) (and (and (=> (= (ControlFlow 0 12) 1) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon9_Then_correct)) (=> (= (ControlFlow 0 12) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Node) ($IsAlloc refType this@@1 Tclass._module.Node $Heap@@1))) ($Is SetType |r#0@@1| (TSet Tclass._module.Node))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
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
