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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##M0.Kind.Constant| () T@U)
(declare-fun Tagclass.M0.Kind () T@U)
(declare-fun |##M0.Kind.Ident| () T@U)
(declare-fun |##M0.Kind.Binary| () T@U)
(declare-fun class.M0.Expr? () T@U)
(declare-fun Tagclass.M0.Expr? () T@U)
(declare-fun Tagclass.M0.Expr () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Kind () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun field$kind () T@U)
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M0.Kind.Constant| () T@U)
(declare-fun |#M0.Kind.Ident| () T@U)
(declare-fun |#M0.Kind.Binary| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M0.Expr? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M0.Expr () T@U)
(declare-fun M0.Expr.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M0.Kind () T@U)
(declare-fun M0.Expr.kind () T@U)
(declare-fun M0.Expr.left () T@U)
(declare-fun M0.Expr.right () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |M0.Kind#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.Expr.Valid (T@U T@U T@U) Bool)
(declare-fun |M0.Expr.Valid#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M0.Kind.Constant_q (T@U) Bool)
(declare-fun M0.Kind.Ident_q (T@U) Bool)
(declare-fun M0.Kind.Binary_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun M0.Expr.Core (T@U T@U T@U) Bool)
(declare-fun M0.Expr.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |M0.Expr.Core#canCall| (T@U T@U) Bool)
(declare-fun |M0.Expr.Valid_k#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |$IsA#M0.Kind| (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object |##M0.Kind.Constant| Tagclass.M0.Kind |##M0.Kind.Ident| |##M0.Kind.Binary| class.M0.Expr? Tagclass.M0.Expr? Tagclass.M0.Expr tytagFamily$object tytagFamily$Kind tytagFamily$Expr field$kind field$left field$right field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (= (DatatypeCtorId |#M0.Kind.Constant|) |##M0.Kind.Constant|))
(assert (= (DatatypeCtorId |#M0.Kind.Ident|) |##M0.Kind.Ident|))
(assert (= (DatatypeCtorId |#M0.Kind.Binary|) |##M0.Kind.Binary|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M0.Expr?)  (or (= $o null) (= (dtype $o) Tclass.M0.Expr?)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Is refType $o Tclass.M0.Expr?))
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
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M0.Expr $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M0.Expr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M0.Expr $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M0.Expr? $h@@0))
)))
(assert (= (FDim M0.Expr.Repr) 0))
(assert (= (FieldOfDecl class.M0.Expr? field$Repr) M0.Expr.Repr))
(assert ($IsGhostField M0.Expr.Repr))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#M0.Kind.Constant| Tclass.M0.Kind))
(assert ($Is DatatypeTypeType |#M0.Kind.Ident| Tclass.M0.Kind))
(assert ($Is DatatypeTypeType |#M0.Kind.Binary| Tclass.M0.Kind))
(assert (= (FDim M0.Expr.kind) 0))
(assert (= (FieldOfDecl class.M0.Expr? field$kind) M0.Expr.kind))
(assert  (not ($IsGhostField M0.Expr.kind)))
(assert (= (FDim M0.Expr.left) 0))
(assert (= (FieldOfDecl class.M0.Expr? field$left) M0.Expr.left))
(assert  (not ($IsGhostField M0.Expr.left)))
(assert (= (FDim M0.Expr.right) 0))
(assert (= (FieldOfDecl class.M0.Expr? field$right) M0.Expr.right))
(assert  (not ($IsGhostField M0.Expr.right)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M0.Expr? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M0.Expr? $h@@2))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|M0.Kind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (|M0.Kind#Equal| a@@7 b@@4))
)))
(assert (= (Ctor SetType) 8))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|M0.Expr.Valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M0.Expr) ($IsAlloc refType this Tclass.M0.Expr $Heap)))))) (=> (M0.Expr.Valid $ly $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M0.Expr.Repr)) ($Box refType this))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |511|
 :pattern ( (M0.Expr.Valid $ly $Heap this))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert (forall ((d T@U) ) (! (= (M0.Kind.Constant_q d) (= (DatatypeCtorId d) |##M0.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (M0.Kind.Constant_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M0.Kind.Ident_q d@@0) (= (DatatypeCtorId d@@0) |##M0.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (M0.Kind.Ident_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M0.Kind.Binary_q d@@1) (= (DatatypeCtorId d@@1) |##M0.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (M0.Kind.Binary_q d@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M0.Kind.Constant_q d@@2) (= d@@2 |#M0.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (M0.Kind.Constant_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (M0.Kind.Ident_q d@@3) (= d@@3 |#M0.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (M0.Kind.Ident_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M0.Kind.Binary_q d@@4) (= d@@4 |#M0.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (M0.Kind.Binary_q d@@4))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (= $o@@2 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@2)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2331|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (! (= (M0.Expr.Valid ($LS $ly@@0) $Heap@@0 this@@0) (M0.Expr.Valid $ly@@0 $Heap@@0 this@@0))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |506|
 :pattern ( (M0.Expr.Valid ($LS $ly@@0) $Heap@@0 this@@0))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (! (= (M0.Expr.Core ($LS $ly@@1) $Heap@@1 this@@1) (M0.Expr.Core $ly@@1 $Heap@@1 this@@1))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |516|
 :pattern ( (M0.Expr.Core ($LS $ly@@1) $Heap@@1 this@@1))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (this@@2 T@U) ) (! (= (M0.Expr.Valid_k ($LS $ly@@2) $Heap@@2 this@@2) (M0.Expr.Valid_k $ly@@2 $Heap@@2 this@@2))
 :qid |MonotonicHeapstatedfy.33:21|
 :skolemid |525|
 :pattern ( (M0.Expr.Valid_k ($LS $ly@@2) $Heap@@2 this@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.M0.Expr?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) M0.Expr.kind)) Tclass.M0.Kind))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |496|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) M0.Expr.kind)))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M0.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M0.Expr.left)) Tclass.M0.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |500|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M0.Expr.left)))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M0.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M0.Expr.right)) Tclass.M0.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M0.Expr.right)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M0.Kind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M0.Kind)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 Tclass.M0.Kind))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M0.Expr?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M0.Expr?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@3 Tclass.M0.Expr?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M0.Expr) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M0.Expr)))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsBox bx@@4 Tclass.M0.Expr))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.M0.Expr)  (and ($Is refType |c#0@@2| Tclass.M0.Expr?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($Is refType |c#0@@2| Tclass.M0.Expr))
 :pattern ( ($Is refType |c#0@@2| Tclass.M0.Expr?))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M0.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M0.Expr.kind)) Tclass.M0.Kind $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |497|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M0.Expr.kind)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M0.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M0.Expr.left)) Tclass.M0.Expr? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M0.Expr.left)))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M0.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M0.Expr.right)) Tclass.M0.Expr? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M0.Expr.right)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|M0.Expr.Valid#canCall| $Heap@@3 this@@3) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.M0.Expr) ($IsAlloc refType this@@3 Tclass.M0.Expr $Heap@@3)))))) (and (and (|M0.Expr.Core#canCall| $Heap@@3 this@@3) (=> (M0.Expr.Core $ly@@3 $Heap@@3 this@@3) (|M0.Expr.Valid_k#canCall| $Heap@@3 this@@3))) (= (M0.Expr.Valid ($LS $ly@@3) $Heap@@3 this@@3)  (and (M0.Expr.Core $ly@@3 $Heap@@3 this@@3) (M0.Expr.Valid_k $ly@@3 $Heap@@3 this@@3)))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |513|
 :pattern ( (M0.Expr.Valid ($LS $ly@@3) $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M0.Expr?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M0.Expr.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |504|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M0.Expr.Repr)))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M0.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M0.Expr.Repr)) (TSet Tclass._System.object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |505|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M0.Expr.Repr)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (and (M0.Kind.Constant_q a@@12) (M0.Kind.Constant_q b@@9)) (|M0.Kind#Equal| a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (|M0.Kind#Equal| a@@12 b@@9) (M0.Kind.Constant_q a@@12))
 :pattern ( (|M0.Kind#Equal| a@@12 b@@9) (M0.Kind.Constant_q b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (M0.Kind.Ident_q a@@13) (M0.Kind.Ident_q b@@10)) (|M0.Kind#Equal| a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (|M0.Kind#Equal| a@@13 b@@10) (M0.Kind.Ident_q a@@13))
 :pattern ( (|M0.Kind#Equal| a@@13 b@@10) (M0.Kind.Ident_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (M0.Kind.Binary_q a@@14) (M0.Kind.Binary_q b@@11)) (|M0.Kind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (|M0.Kind#Equal| a@@14 b@@11) (M0.Kind.Binary_q a@@14))
 :pattern ( (|M0.Kind#Equal| a@@14 b@@11) (M0.Kind.Binary_q b@@11))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@11 T@U) ) (! ($Is refType $o@@11 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@11 Tclass._System.object?))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#M0.Kind| d@@5) (or (or (M0.Kind.Constant_q d@@5) (M0.Kind.Ident_q d@@5)) (M0.Kind.Binary_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (|$IsA#M0.Kind| d@@5))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M0.Kind) (or (or (M0.Kind.Constant_q d@@6) (M0.Kind.Ident_q d@@6)) (M0.Kind.Binary_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (M0.Kind.Binary_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M0.Kind))
 :pattern ( (M0.Kind.Ident_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M0.Kind))
 :pattern ( (M0.Kind.Constant_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M0.Kind))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|M0.Expr.Core#canCall| $Heap@@4 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.M0.Expr) ($IsAlloc refType this@@4 Tclass.M0.Expr $Heap@@4)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) ($Box refType this@@4)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@4))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr))) (|M0.Expr.Valid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@4)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)))) (M0.Expr.Valid $ly@@4 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@4))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr))) (|M0.Expr.Valid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@4)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)))) (M0.Expr.Valid $ly@@4 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))))) (|$IsA#M0.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.kind)))))))) (= (M0.Expr.Core ($LS $ly@@4) $Heap@@4 this@@4)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) ($Box refType this@@4)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@4)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)))) (M0.Expr.Valid $ly@@4 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@4)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.Repr)))) (M0.Expr.Valid $ly@@4 $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)))))) (=> (|M0.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.kind)) |#M0.Kind.Binary|) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) M0.Expr.right))) M0.Expr.Repr)))))))))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |522|
 :pattern ( (M0.Expr.Core ($LS $ly@@4) $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@3)))
)))
(assert (forall ((d@@7 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@7 Tclass.M0.Kind)) ($IsAlloc DatatypeTypeType d@@7 Tclass.M0.Kind $h@@11))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.M0.Kind $h@@11))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M0.Kind) Tagclass.M0.Kind))
(assert (= (TagFamily Tclass.M0.Kind) tytagFamily$Kind))
(assert (= (Tag Tclass.M0.Expr?) Tagclass.M0.Expr?))
(assert (= (TagFamily Tclass.M0.Expr?) tytagFamily$Expr))
(assert (= (Tag Tclass.M0.Expr) Tagclass.M0.Expr))
(assert (= (TagFamily Tclass.M0.Expr) tytagFamily$Expr))
(assert (= |#M0.Kind.Constant| (Lit DatatypeTypeType |#M0.Kind.Constant|)))
(assert (= |#M0.Kind.Ident| (Lit DatatypeTypeType |#M0.Kind.Ident|)))
(assert (= |#M0.Kind.Binary| (Lit DatatypeTypeType |#M0.Kind.Binary|)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun this@@5 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@2| () Bool)
(declare-fun |b$reqreads#6@2| () Bool)
(declare-fun |b$reqreads#7@2| () Bool)
(declare-fun |b$reqreads#8@2| () Bool)
(declare-fun |b$reqreads#9@2| () Bool)
(declare-fun |b$reqreads#10@2| () Bool)
(declare-fun |b$reqreads#11@2| () Bool)
(declare-fun |b$reqreads#12@2| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#14@1| () Bool)
(declare-fun |b$reqreads#15@1| () Bool)
(declare-fun |b$reqreads#16@1| () Bool)
(declare-fun |b$reqreads#17@1| () Bool)
(declare-fun |b$reqreads#18@2| () Bool)
(declare-fun |b$reqreads#19@2| () Bool)
(declare-fun |b$reqreads#20@2| () Bool)
(declare-fun |b$reqreads#21@2| () Bool)
(declare-fun |b$reqreads#22@2| () Bool)
(declare-fun |b$reqreads#23@2| () Bool)
(declare-fun |b$reqreads#24@2| () Bool)
(declare-fun |b$reqreads#25@2| () Bool)
(declare-fun |b$reqreads#26@1| () Bool)
(declare-fun |b$reqreads#27@1| () Bool)
(declare-fun |b$reqreads#28@1| () Bool)
(declare-fun |b$reqreads#29@1| () Bool)
(declare-fun |b$reqreads#30@2| () Bool)
(declare-fun |b$reqreads#31@1| () Bool)
(declare-fun |b$reqreads#32@1| () Bool)
(declare-fun |b$reqreads#33@1| () Bool)
(declare-fun |b$reqreads#34@1| () Bool)
(declare-fun |b$reqreads#28@0| () Bool)
(declare-fun |b$reqreads#29@0| () Bool)
(declare-fun |b$reqreads#30@1| () Bool)
(declare-fun |b$reqreads#31@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#32@0| () Bool)
(declare-fun |b$reqreads#33@0| () Bool)
(declare-fun |b$reqreads#34@0| () Bool)
(declare-fun |b$reqreads#30@0| () Bool)
(declare-fun |b$reqreads#15@0| () Bool)
(declare-fun |b$reqreads#16@0| () Bool)
(declare-fun |b$reqreads#17@0| () Bool)
(declare-fun |b$reqreads#19@1| () Bool)
(declare-fun |b$reqreads#18@1| () Bool)
(declare-fun |b$reqreads#22@1| () Bool)
(declare-fun |b$reqreads#21@1| () Bool)
(declare-fun |b$reqreads#20@1| () Bool)
(declare-fun |b$reqreads#25@1| () Bool)
(declare-fun |b$reqreads#24@1| () Bool)
(declare-fun |b$reqreads#23@1| () Bool)
(declare-fun |b$reqreads#26@0| () Bool)
(declare-fun |b$reqreads#27@0| () Bool)
(declare-fun |b$reqreads#23@0| () Bool)
(declare-fun |b$reqreads#24@0| () Bool)
(declare-fun |b$reqreads#25@0| () Bool)
(declare-fun |b$reqreads#20@0| () Bool)
(declare-fun |b$reqreads#21@0| () Bool)
(declare-fun |b$reqreads#22@0| () Bool)
(declare-fun |b$reqreads#18@0| () Bool)
(declare-fun |b$reqreads#19@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#14@0| () Bool)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.Expr.Core)
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
 (=> (= (ControlFlow 0 0) 84) (let ((anon29_correct  (=> (= (M0.Expr.Core ($LS $LZ) $Heap@@5 this@@5)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))))) (=> (|M0.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.kind)) |#M0.Kind.Binary|) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr))))))) (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (|M0.Expr.Valid#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (|M0.Expr.Valid#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))))) (|$IsA#M0.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.kind)))))))) ($Is boolType (bool_2_U (M0.Expr.Core ($LS $LZ) $Heap@@5 this@@5)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 36)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 35)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 3) (- 0 34)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 33)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 32)) |b$reqreads#5@2|) (=> |b$reqreads#5@2| (and (=> (= (ControlFlow 0 3) (- 0 31)) |b$reqreads#6@2|) (=> |b$reqreads#6@2| (and (=> (= (ControlFlow 0 3) (- 0 30)) |b$reqreads#7@2|) (=> |b$reqreads#7@2| (and (=> (= (ControlFlow 0 3) (- 0 29)) |b$reqreads#8@2|) (=> |b$reqreads#8@2| (and (=> (= (ControlFlow 0 3) (- 0 28)) |b$reqreads#9@2|) (=> |b$reqreads#9@2| (and (=> (= (ControlFlow 0 3) (- 0 27)) |b$reqreads#10@2|) (=> |b$reqreads#10@2| (and (=> (= (ControlFlow 0 3) (- 0 26)) |b$reqreads#11@2|) (=> |b$reqreads#11@2| (and (=> (= (ControlFlow 0 3) (- 0 25)) |b$reqreads#12@2|) (=> |b$reqreads#12@2| (and (=> (= (ControlFlow 0 3) (- 0 24)) |b$reqreads#13@1|) (=> |b$reqreads#13@1| (and (=> (= (ControlFlow 0 3) (- 0 23)) |b$reqreads#14@1|) (=> |b$reqreads#14@1| (and (=> (= (ControlFlow 0 3) (- 0 22)) |b$reqreads#15@1|) (=> |b$reqreads#15@1| (and (=> (= (ControlFlow 0 3) (- 0 21)) |b$reqreads#16@1|) (=> |b$reqreads#16@1| (and (=> (= (ControlFlow 0 3) (- 0 20)) |b$reqreads#17@1|) (=> |b$reqreads#17@1| (and (=> (= (ControlFlow 0 3) (- 0 19)) |b$reqreads#18@2|) (=> |b$reqreads#18@2| (and (=> (= (ControlFlow 0 3) (- 0 18)) |b$reqreads#19@2|) (=> |b$reqreads#19@2| (and (=> (= (ControlFlow 0 3) (- 0 17)) |b$reqreads#20@2|) (=> |b$reqreads#20@2| (and (=> (= (ControlFlow 0 3) (- 0 16)) |b$reqreads#21@2|) (=> |b$reqreads#21@2| (and (=> (= (ControlFlow 0 3) (- 0 15)) |b$reqreads#22@2|) (=> |b$reqreads#22@2| (and (=> (= (ControlFlow 0 3) (- 0 14)) |b$reqreads#23@2|) (=> |b$reqreads#23@2| (and (=> (= (ControlFlow 0 3) (- 0 13)) |b$reqreads#24@2|) (=> |b$reqreads#24@2| (and (=> (= (ControlFlow 0 3) (- 0 12)) |b$reqreads#25@2|) (=> |b$reqreads#25@2| (and (=> (= (ControlFlow 0 3) (- 0 11)) |b$reqreads#26@1|) (=> |b$reqreads#26@1| (and (=> (= (ControlFlow 0 3) (- 0 10)) |b$reqreads#27@1|) (=> |b$reqreads#27@1| (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#28@1|) (=> |b$reqreads#28@1| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#29@1|) (=> |b$reqreads#29@1| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#30@2|) (=> |b$reqreads#30@2| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#31@1|) (=> |b$reqreads#31@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#32@1|) (=> |b$reqreads#32@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#33@1|) (=> |b$reqreads#33@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#34@1|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon47_Else_correct  (=> (not (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)))) (=> (and (and (and (= |b$reqreads#28@1| |b$reqreads#28@0|) (= |b$reqreads#29@1| |b$reqreads#29@0|)) (and (= |b$reqreads#30@2| |b$reqreads#30@1|) (= |b$reqreads#31@1| true))) (and (and (= |b$reqreads#32@1| true) (= |b$reqreads#33@1| true)) (and (= |b$reqreads#34@1| true) (= (ControlFlow 0 42) 3)))) anon29_correct))))
(let ((anon47_Then_correct  (=> (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (= |b$reqreads#31@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (and (= |b$reqreads#32@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) M0.Expr.Repr))) (= |b$reqreads#33@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right)))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (= |b$reqreads#34@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) M0.Expr.Repr))) (=> (and (and (and (= |b$reqreads#28@1| |b$reqreads#28@0|) (= |b$reqreads#29@1| |b$reqreads#29@0|)) (and (= |b$reqreads#30@2| |b$reqreads#30@1|) (= |b$reqreads#31@1| |b$reqreads#31@0|))) (and (and (= |b$reqreads#32@1| |b$reqreads#32@0|) (= |b$reqreads#33@1| |b$reqreads#33@0|)) (and (= |b$reqreads#34@1| |b$reqreads#34@0|) (= (ControlFlow 0 39) 3)))) anon29_correct))))))))))
(let ((anon46_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null) (= |b$reqreads#30@1| true)) (and (=> (= (ControlFlow 0 44) 39) anon47_Then_correct) (=> (= (ControlFlow 0 44) 42) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (and (= |b$reqreads#30@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right))) (= |b$reqreads#30@1| |b$reqreads#30@0|)) (and (=> (= (ControlFlow 0 43) 39) anon47_Then_correct) (=> (= (ControlFlow 0 43) 42) anon47_Else_correct))))))
(let ((anon45_Then_correct  (=> (and (|M0.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.kind)) |#M0.Kind.Binary|) (= |b$reqreads#29@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 45) 43) anon46_Then_correct) (=> (= (ControlFlow 0 45) 44) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (not (|M0.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.kind)) |#M0.Kind.Binary|)) (=> (and (and (and (= |b$reqreads#28@1| |b$reqreads#28@0|) (= |b$reqreads#29@1| true)) (and (= |b$reqreads#30@2| true) (= |b$reqreads#31@1| true))) (and (and (= |b$reqreads#32@1| true) (= |b$reqreads#33@1| true)) (and (= |b$reqreads#34@1| true) (= (ControlFlow 0 38) 3)))) anon29_correct))))
(let ((anon44_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))))) (= |b$reqreads#28@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.kind)))) (and (=> (= (ControlFlow 0 46) 45) anon45_Then_correct) (=> (= (ControlFlow 0 46) 38) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))))))) (=> (and (and (and (= |b$reqreads#28@1| true) (= |b$reqreads#29@1| true)) (and (= |b$reqreads#30@2| true) (= |b$reqreads#31@1| true))) (and (and (= |b$reqreads#32@1| true) (= |b$reqreads#33@1| true)) (and (= |b$reqreads#34@1| true) (= (ControlFlow 0 37) 3)))) anon29_correct))))
(let ((anon43_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))))) (= |b$reqreads#15@1| |b$reqreads#15@0|)) (=> (and (and (= |b$reqreads#16@1| |b$reqreads#16@0|) (= |b$reqreads#17@1| |b$reqreads#17@0|)) (and (= |b$reqreads#19@2| |b$reqreads#19@1|) (= |b$reqreads#18@2| |b$reqreads#18@1|))) (=> (and (and (and (= |b$reqreads#22@2| |b$reqreads#22@1|) (= |b$reqreads#21@2| |b$reqreads#21@1|)) (and (= |b$reqreads#20@2| |b$reqreads#20@1|) (= |b$reqreads#25@2| |b$reqreads#25@1|))) (and (and (= |b$reqreads#24@2| |b$reqreads#24@1|) (= |b$reqreads#23@2| |b$reqreads#23@1|)) (and (= |b$reqreads#26@1| true) (= |b$reqreads#27@1| true)))) (and (=> (= (ControlFlow 0 52) 46) anon44_Then_correct) (=> (= (ControlFlow 0 52) 37) anon44_Else_correct)))))))
(let ((anon43_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (= |b$reqreads#26@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right)))) (and (=> (= (ControlFlow 0 49) (- 0 51)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right) Tclass.M0.Expr? $Heap@@5) (= |b$reqreads#27@0| (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@12) alloc)))) (or (= $o@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType $o@@12)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@12 $f@@0)))
 :qid |MonotonicHeapstatedfy.29:117|
 :skolemid |524|
)))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))))))) (=> (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))))) (=> (and (|M0.Expr.Valid#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) (= |b$reqreads#15@1| |b$reqreads#15@0|)) (=> (and (and (= |b$reqreads#16@1| |b$reqreads#16@0|) (= |b$reqreads#17@1| |b$reqreads#17@0|)) (and (= |b$reqreads#19@2| |b$reqreads#19@1|) (= |b$reqreads#18@2| |b$reqreads#18@1|))) (=> (and (and (and (= |b$reqreads#22@2| |b$reqreads#22@1|) (= |b$reqreads#21@2| |b$reqreads#21@1|)) (and (= |b$reqreads#20@2| |b$reqreads#20@1|) (= |b$reqreads#25@2| |b$reqreads#25@1|))) (and (and (= |b$reqreads#24@2| |b$reqreads#24@1|) (= |b$reqreads#23@2| |b$reqreads#23@1|)) (and (= |b$reqreads#26@1| |b$reqreads#26@0|) (= |b$reqreads#27@1| |b$reqreads#27@0|)))) (and (=> (= (ControlFlow 0 49) 46) anon44_Then_correct) (=> (= (ControlFlow 0 49) 37) anon44_Else_correct)))))))))))))
(let ((anon42_Else_correct  (=> (and (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))))) (= |b$reqreads#23@1| true)) (and (= |b$reqreads#24@1| true) (= |b$reqreads#25@1| true))) (and (=> (= (ControlFlow 0 55) 49) anon43_Then_correct) (=> (= (ControlFlow 0 55) 52) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))) (= |b$reqreads#23@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right)))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (= |b$reqreads#24@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) M0.Expr.Repr))) (=> (and (and (= |b$reqreads#25@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr))) (= |b$reqreads#23@1| |b$reqreads#23@0|)) (and (= |b$reqreads#24@1| |b$reqreads#24@0|) (= |b$reqreads#25@1| |b$reqreads#25@0|))) (and (=> (= (ControlFlow 0 53) 49) anon43_Then_correct) (=> (= (ControlFlow 0 53) 52) anon43_Else_correct)))))))))
(let ((anon41_Else_correct  (=> (and (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5))))) (= |b$reqreads#20@1| true)) (and (= |b$reqreads#21@1| true) (= |b$reqreads#22@1| true))) (and (=> (= (ControlFlow 0 58) 53) anon42_Then_correct) (=> (= (ControlFlow 0 58) 55) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) M0.Expr.Repr)) ($Box refType this@@5)))) (and (= |b$reqreads#20@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left))) (= |b$reqreads#21@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right))))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (and (and (= |b$reqreads#22@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) M0.Expr.Repr))) (= |b$reqreads#20@1| |b$reqreads#20@0|)) (and (= |b$reqreads#21@1| |b$reqreads#21@0|) (= |b$reqreads#22@1| |b$reqreads#22@0|))) (and (=> (= (ControlFlow 0 56) 53) anon42_Then_correct) (=> (= (ControlFlow 0 56) 55) anon42_Else_correct))))))))
(let ((anon40_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))) (=> (and (= |b$reqreads#18@1| true) (= |b$reqreads#19@1| true)) (and (=> (= (ControlFlow 0 61) 56) anon41_Then_correct) (=> (= (ControlFlow 0 61) 58) anon41_Else_correct))))))
(let ((anon40_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) (= |b$reqreads#18@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (= |b$reqreads#19@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) M0.Expr.Repr))) (=> (and (= |b$reqreads#18@1| |b$reqreads#18@0|) (= |b$reqreads#19@1| |b$reqreads#19@0|)) (and (=> (= (ControlFlow 0 59) 56) anon41_Then_correct) (=> (= (ControlFlow 0 59) 58) anon41_Else_correct)))))))))
(let ((anon39_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null)) (not true)) (=> (and (= |b$reqreads#16@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right))) (= |b$reqreads#17@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr)))) (and (=> (= (ControlFlow 0 62) 59) anon40_Then_correct) (=> (= (ControlFlow 0 62) 61) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)) null) (= |b$reqreads#15@1| |b$reqreads#15@0|)) (=> (and (and (= |b$reqreads#16@1| true) (= |b$reqreads#17@1| true)) (and (= |b$reqreads#19@2| true) (= |b$reqreads#18@2| true))) (=> (and (and (and (= |b$reqreads#22@2| true) (= |b$reqreads#21@2| true)) (and (= |b$reqreads#20@2| true) (= |b$reqreads#25@2| true))) (and (and (= |b$reqreads#24@2| true) (= |b$reqreads#23@2| true)) (and (= |b$reqreads#26@1| true) (= |b$reqreads#27@1| true)))) (and (=> (= (ControlFlow 0 48) 46) anon44_Then_correct) (=> (= (ControlFlow 0 48) 37) anon44_Else_correct)))))))
(let ((anon38_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))) (= |b$reqreads#15@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right)))) (and (=> (= (ControlFlow 0 63) 62) anon39_Then_correct) (=> (= (ControlFlow 0 63) 48) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (M0.Expr.Valid ($LS $LZ) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))))))) (= |b$reqreads#15@1| true)) (=> (and (and (= |b$reqreads#16@1| true) (= |b$reqreads#17@1| true)) (and (= |b$reqreads#19@2| true) (= |b$reqreads#18@2| true))) (=> (and (and (and (= |b$reqreads#22@2| true) (= |b$reqreads#21@2| true)) (and (= |b$reqreads#20@2| true) (= |b$reqreads#25@2| true))) (and (and (= |b$reqreads#24@2| true) (= |b$reqreads#23@2| true)) (and (= |b$reqreads#26@1| true) (= |b$reqreads#27@1| true)))) (and (=> (= (ControlFlow 0 47) 46) anon44_Then_correct) (=> (= (ControlFlow 0 47) 37) anon44_Else_correct)))))))
(let ((anon37_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (=> (and (and (and (= |b$reqreads#9@2| |b$reqreads#9@1|) (= |b$reqreads#8@2| |b$reqreads#8@1|)) (and (= |b$reqreads#7@2| |b$reqreads#7@1|) (= |b$reqreads#12@2| |b$reqreads#12@1|))) (and (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|)) (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)))) (and (=> (= (ControlFlow 0 69) 63) anon38_Then_correct) (=> (= (ControlFlow 0 69) 47) anon38_Else_correct)))))))
(let ((anon37_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (= |b$reqreads#13@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 66) (- 0 68)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left) Tclass.M0.Expr? $Heap@@5) (= |b$reqreads#14@0| (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@13) alloc)))) (or (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType $o@@13)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@13 $f@@1)))
 :qid |MonotonicHeapstatedfy.28:112|
 :skolemid |523|
)))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))))))) (=> (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)))))) (=> (and (|M0.Expr.Valid#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (=> (and (and (and (= |b$reqreads#9@2| |b$reqreads#9@1|) (= |b$reqreads#8@2| |b$reqreads#8@1|)) (and (= |b$reqreads#7@2| |b$reqreads#7@1|) (= |b$reqreads#12@2| |b$reqreads#12@1|))) (and (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|)) (and (= |b$reqreads#13@1| |b$reqreads#13@0|) (= |b$reqreads#14@1| |b$reqreads#14@0|)))) (and (=> (= (ControlFlow 0 66) 63) anon38_Then_correct) (=> (= (ControlFlow 0 66) 47) anon38_Else_correct)))))))))))))
(let ((anon36_Else_correct  (=> (and (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right))))) (= |b$reqreads#10@1| true)) (and (= |b$reqreads#11@1| true) (= |b$reqreads#12@1| true))) (and (=> (= (ControlFlow 0 72) 66) anon37_Then_correct) (=> (= (ControlFlow 0 72) 69) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.right)))) (= |b$reqreads#10@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 70) (- 0 71)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) M0.Expr.Repr))) (=> (and (and (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr))) (= |b$reqreads#10@1| |b$reqreads#10@0|)) (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| |b$reqreads#12@0|))) (and (=> (= (ControlFlow 0 70) 66) anon37_Then_correct) (=> (= (ControlFlow 0 70) 69) anon37_Else_correct)))))))))
(let ((anon35_Else_correct  (=> (and (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5))))) (= |b$reqreads#7@1| true)) (and (= |b$reqreads#8@1| true) (= |b$reqreads#9@1| true))) (and (=> (= (ControlFlow 0 75) 70) anon36_Then_correct) (=> (= (ControlFlow 0 75) 72) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) M0.Expr.Repr)) ($Box refType this@@5)))) (and (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.right))) (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left))))) (and (=> (= (ControlFlow 0 73) (- 0 74)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (and (and (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) M0.Expr.Repr))) (= |b$reqreads#7@1| |b$reqreads#7@0|)) (and (= |b$reqreads#8@1| |b$reqreads#8@0|) (= |b$reqreads#9@1| |b$reqreads#9@0|))) (and (=> (= (ControlFlow 0 73) 70) anon36_Then_correct) (=> (= (ControlFlow 0 73) 72) anon36_Else_correct))))))))
(let ((anon34_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left))) (=> (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true)) (and (=> (= (ControlFlow 0 78) 73) anon35_Then_correct) (=> (= (ControlFlow 0 78) 75) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) M0.Expr.Repr))) (=> (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (and (=> (= (ControlFlow 0 76) 73) anon35_Then_correct) (=> (= (ControlFlow 0 76) 75) anon35_Else_correct)))))))))
(let ((anon33_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null)) (not true)) (=> (and (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left))) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr)))) (and (=> (= (ControlFlow 0 79) 76) anon34_Then_correct) (=> (= (ControlFlow 0 79) 78) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.left)) null) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@1| true)) (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true))) (=> (and (and (and (= |b$reqreads#9@2| true) (= |b$reqreads#8@2| true)) (and (= |b$reqreads#7@2| true) (= |b$reqreads#12@2| true))) (and (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true)) (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)))) (and (=> (= (ControlFlow 0 65) 63) anon38_Then_correct) (=> (= (ControlFlow 0 65) 47) anon38_Else_correct)))))))
(let ((anon32_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5)) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.left)))) (and (=> (= (ControlFlow 0 80) 79) anon33_Then_correct) (=> (= (ControlFlow 0 80) 65) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)) ($Box refType this@@5))) (= |b$reqreads#2@1| true)) (=> (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@1| true)) (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true))) (=> (and (and (and (= |b$reqreads#9@2| true) (= |b$reqreads#8@2| true)) (and (= |b$reqreads#7@2| true) (= |b$reqreads#12@2| true))) (and (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true)) (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)))) (and (=> (= (ControlFlow 0 64) 63) anon38_Then_correct) (=> (= (ControlFlow 0 64) 47) anon38_Else_correct)))))))
(let ((anon31_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr))) (and (=> (= (ControlFlow 0 81) 80) anon32_Then_correct) (=> (= (ControlFlow 0 81) 64) anon32_Else_correct)))))
(let ((anon31_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@5 alloc this@@5 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M0.Expr.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@5 M0.Expr.Repr)))) (and (=> (= (ControlFlow 0 82) (- 0 83)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 82) 1) anon31_Then_correct) (=> (= (ControlFlow 0 82) 81) anon31_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (=> (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass.M0.Expr) ($IsAlloc refType this@@5 Tclass.M0.Expr $Heap@@5))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 84) 82))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
