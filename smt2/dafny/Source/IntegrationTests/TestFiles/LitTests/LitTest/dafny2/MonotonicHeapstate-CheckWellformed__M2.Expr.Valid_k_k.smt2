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
(declare-fun Tagclass.M2.VarDecl? () T@U)
(declare-fun Tagclass.M2.VarDecl () T@U)
(declare-fun class.M2.Expr? () T@U)
(declare-fun Tagclass.M2.Expr? () T@U)
(declare-fun Tagclass.M2.Expr () T@U)
(declare-fun Tagclass.M2.Kind () T@U)
(declare-fun |##M2.Kind.Constant| () T@U)
(declare-fun |##M2.Kind.Ident| () T@U)
(declare-fun |##M2.Kind.Binary| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$VarDecl () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Kind () T@U)
(declare-fun field$decl () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$resolved () T@U)
(declare-fun field$kind () T@U)
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
(declare-fun |#M2.Kind.Constant| () T@U)
(declare-fun |#M2.Kind.Ident| () T@U)
(declare-fun |#M2.Kind.Binary| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M2.VarDecl? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M2.Expr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M2.VarDecl () T@U)
(declare-fun Tclass.M2.Expr () T@U)
(declare-fun M2.Expr.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M2.Expr.resolved () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M2.Kind () T@U)
(declare-fun M2.Expr.decl () T@U)
(declare-fun M2.Expr.kind () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |M2.Kind#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.Expr.Valid_k_k (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M2.Expr.Valid_k_k#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#M2.Kind| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M2.Kind.Constant_q (T@U) Bool)
(declare-fun M2.Kind.Ident_q (T@U) Bool)
(declare-fun M2.Kind.Binary_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.M2.VarDecl? Tagclass.M2.VarDecl class.M2.Expr? Tagclass.M2.Expr? Tagclass.M2.Expr Tagclass.M2.Kind |##M2.Kind.Constant| |##M2.Kind.Ident| |##M2.Kind.Binary| tytagFamily$object tytagFamily$VarDecl tytagFamily$Expr tytagFamily$Kind field$decl field$Repr field$resolved field$kind)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1270|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1271|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |1275|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |1276|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1269|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1285|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1266|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (DatatypeCtorId |#M2.Kind.Constant|) |##M2.Kind.Constant|))
(assert (= (DatatypeCtorId |#M2.Kind.Ident|) |##M2.Kind.Ident|))
(assert (= (DatatypeCtorId |#M2.Kind.Binary|) |##M2.Kind.Binary|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M2.VarDecl?)  (or (= $o null) (= (dtype $o) Tclass.M2.VarDecl?)))
 :qid |unknown.0:0|
 :skolemid |1621|
 :pattern ( ($Is refType $o Tclass.M2.VarDecl?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M2.Expr?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M2.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1627|
 :pattern ( ($Is refType $o@@0 Tclass.M2.Expr?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |1279|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1284|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M2.VarDecl $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M2.VarDecl? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1625|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M2.VarDecl $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M2.VarDecl? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M2.Expr $h@@1) ($IsAlloc refType |c#0@@1| Tclass.M2.Expr? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1716|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M2.Expr $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M2.Expr? $h@@1))
)))
(assert (= (FDim M2.Expr.Repr) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$Repr) M2.Expr.Repr))
(assert ($IsGhostField M2.Expr.Repr))
(assert (= (FDim M2.Expr.resolved) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$resolved) M2.Expr.resolved))
(assert ($IsGhostField M2.Expr.resolved))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#M2.Kind.Constant| Tclass.M2.Kind))
(assert ($Is DatatypeTypeType |#M2.Kind.Ident| Tclass.M2.Kind))
(assert ($Is DatatypeTypeType |#M2.Kind.Binary| Tclass.M2.Kind))
(assert (= (FDim M2.Expr.decl) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$decl) M2.Expr.decl))
(assert  (not ($IsGhostField M2.Expr.decl)))
(assert (= (FDim M2.Expr.kind) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$kind) M2.Expr.kind))
(assert  (not ($IsGhostField M2.Expr.kind)))
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
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M2.VarDecl? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1622|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M2.VarDecl? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M2.Expr? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M2.Expr? $h@@4))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|M2.Kind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1729|
 :pattern ( (|M2.Kind#Equal| a@@7 b@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1156|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|M2.Expr.Valid_k_k#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M2.Expr) ($IsAlloc refType this Tclass.M2.Expr $Heap)))))) (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.Expr.resolved))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.Expr.kind)))) (= (M2.Expr.Valid_k_k $Heap this)  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.Expr.kind)) |#M2.Kind.Ident|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.Expr.decl)) null)) (not true)))))))
 :qid |MonotonicHeapstatedfy.135:21|
 :skolemid |1636|
 :pattern ( (M2.Expr.Valid_k_k $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1287|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1288|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M2.Expr.Valid_k_k#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M2.Expr) ($IsAlloc refType this@@0 Tclass.M2.Expr $Heap@@0)))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M2.Expr.resolved)))) (M2.Expr.Valid_k_k $Heap@@0 this@@0)))
 :qid |MonotonicHeapstatedfy.135:21|
 :skolemid |1634|
 :pattern ( (M2.Expr.Valid_k_k $Heap@@0 this@@0))
))))
(assert (forall ((d T@U) ) (! (= (M2.Kind.Constant_q d) (= (DatatypeCtorId d) |##M2.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |1717|
 :pattern ( (M2.Kind.Constant_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M2.Kind.Ident_q d@@0) (= (DatatypeCtorId d@@0) |##M2.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |1719|
 :pattern ( (M2.Kind.Ident_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M2.Kind.Binary_q d@@1) (= (DatatypeCtorId d@@1) |##M2.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |1721|
 :pattern ( (M2.Kind.Binary_q d@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1167|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |1292|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1293|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M2.Kind.Constant_q d@@2) (= d@@2 |#M2.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |1718|
 :pattern ( (M2.Kind.Constant_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (M2.Kind.Ident_q d@@3) (= d@@3 |#M2.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |1720|
 :pattern ( (M2.Kind.Ident_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M2.Kind.Binary_q d@@4) (= d@@4 |#M2.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |1722|
 :pattern ( (M2.Kind.Binary_q d@@4))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1187|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1188|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (or (= $o@@4 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@4)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2333|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M2.Expr.resolved)) TBool $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M2.Expr.resolved)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1180|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M2.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M2.Expr.decl)) Tclass.M2.VarDecl?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M2.Expr.decl)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M2.Expr?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M2.Expr.kind)) Tclass.M2.Kind))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1687|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M2.Expr.kind)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M2.VarDecl?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.M2.VarDecl?)))
 :qid |unknown.0:0|
 :skolemid |1620|
 :pattern ( ($IsBox bx@@2 Tclass.M2.VarDecl?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M2.VarDecl) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M2.VarDecl)))
 :qid |unknown.0:0|
 :skolemid |1623|
 :pattern ( ($IsBox bx@@3 Tclass.M2.VarDecl))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M2.Expr?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M2.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1626|
 :pattern ( ($IsBox bx@@4 Tclass.M2.Expr?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M2.Expr) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.M2.Expr)))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsBox bx@@5 Tclass.M2.Expr))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M2.Kind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.M2.Kind)))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($IsBox bx@@6 Tclass.M2.Kind))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M2.VarDecl)  (and ($Is refType |c#0@@3| Tclass.M2.VarDecl?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1624|
 :pattern ( ($Is refType |c#0@@3| Tclass.M2.VarDecl))
 :pattern ( ($Is refType |c#0@@3| Tclass.M2.VarDecl?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M2.Expr)  (and ($Is refType |c#0@@4| Tclass.M2.Expr?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1715|
 :pattern ( ($Is refType |c#0@@4| Tclass.M2.Expr))
 :pattern ( ($Is refType |c#0@@4| Tclass.M2.Expr?))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M2.Expr.decl)) Tclass.M2.VarDecl? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1630|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M2.Expr.decl)))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M2.Expr.kind)) Tclass.M2.Kind $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M2.Expr.kind)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |1274|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |1277|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M2.Expr?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M2.Expr.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1695|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M2.Expr.Repr)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) M2.Expr.Repr)) (TSet Tclass._System.object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1696|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) M2.Expr.Repr)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1248|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TBool) (and (= ($Box boolType ($Unbox boolType bx@@7)) bx@@7) ($Is boolType ($Unbox boolType bx@@7) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1170|
 :pattern ( ($IsBox bx@@7 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1179|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (and (M2.Kind.Constant_q a@@12) (M2.Kind.Constant_q b@@9)) (|M2.Kind#Equal| a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |1726|
 :pattern ( (|M2.Kind#Equal| a@@12 b@@9) (M2.Kind.Constant_q a@@12))
 :pattern ( (|M2.Kind#Equal| a@@12 b@@9) (M2.Kind.Constant_q b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (M2.Kind.Ident_q a@@13) (M2.Kind.Ident_q b@@10)) (|M2.Kind#Equal| a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |1727|
 :pattern ( (|M2.Kind#Equal| a@@13 b@@10) (M2.Kind.Ident_q a@@13))
 :pattern ( (|M2.Kind#Equal| a@@13 b@@10) (M2.Kind.Ident_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (M2.Kind.Binary_q a@@14) (M2.Kind.Binary_q b@@11)) (|M2.Kind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1728|
 :pattern ( (|M2.Kind#Equal| a@@14 b@@11) (M2.Kind.Binary_q a@@14))
 :pattern ( (|M2.Kind#Equal| a@@14 b@@11) (M2.Kind.Binary_q b@@11))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1208|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1209|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1142|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1143|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1166|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#M2.Kind| d@@5) (or (or (M2.Kind.Constant_q d@@5) (M2.Kind.Ident_q d@@5)) (M2.Kind.Binary_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1724|
 :pattern ( (|$IsA#M2.Kind| d@@5))
)))
(assert (forall (($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.M2.Expr?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) M2.Expr.resolved)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) M2.Expr.resolved)))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |1280|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M2.Kind) (or (or (M2.Kind.Constant_q d@@6) (M2.Kind.Ident_q d@@6)) (M2.Kind.Binary_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1725|
 :pattern ( (M2.Kind.Binary_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
 :pattern ( (M2.Kind.Ident_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
 :pattern ( (M2.Kind.Constant_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1173|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (forall ((d@@7 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@7 Tclass.M2.Kind)) ($IsAlloc DatatypeTypeType d@@7 Tclass.M2.Kind $h@@13))
 :qid |unknown.0:0|
 :skolemid |1723|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.M2.Kind $h@@13))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M2.VarDecl?) Tagclass.M2.VarDecl?))
(assert (= (TagFamily Tclass.M2.VarDecl?) tytagFamily$VarDecl))
(assert (= (Tag Tclass.M2.VarDecl) Tagclass.M2.VarDecl))
(assert (= (TagFamily Tclass.M2.VarDecl) tytagFamily$VarDecl))
(assert (= (Tag Tclass.M2.Expr?) Tagclass.M2.Expr?))
(assert (= (TagFamily Tclass.M2.Expr?) tytagFamily$Expr))
(assert (= (Tag Tclass.M2.Expr) Tagclass.M2.Expr))
(assert (= (TagFamily Tclass.M2.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.M2.Kind) Tagclass.M2.Kind))
(assert (= (TagFamily Tclass.M2.Kind) tytagFamily$Kind))
(assert (= |#M2.Kind.Constant| (Lit DatatypeTypeType |#M2.Kind.Constant|)))
(assert (= |#M2.Kind.Ident| (Lit DatatypeTypeType |#M2.Kind.Ident|)))
(assert (= |#M2.Kind.Binary| (Lit DatatypeTypeType |#M2.Kind.Binary|)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1157|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1204|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1183|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M2.Expr.Valid_k_k)
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
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved)))) (M2.Expr.Valid_k_k $Heap@@1 this@@1)))))
(let ((anon9_correct  (=> (= (M2.Expr.Valid_k_k $Heap@@1 this@@1)  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.kind)) |#M2.Kind.Ident|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.decl)) null)) (not true))))) (=> (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.kind)))) ($Is boolType (bool_2_U (M2.Expr.Valid_k_k $Heap@@1 this@@1)) TBool)) (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 7) (- 0 9)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct)))))))))))
(let ((anon14_Else_correct  (=> (and (and (not (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.kind)) |#M2.Kind.Ident|)) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 13) 7))) anon9_correct)))
(let ((anon14_Then_correct  (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.kind)) |#M2.Kind.Ident|) (=> (and (and (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 M2.Expr.decl))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 12) 7))) anon9_correct))))
(let ((anon13_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 M2.Expr.kind)))) (and (=> (= (ControlFlow 0 14) 12) anon14_Then_correct) (=> (= (ControlFlow 0 14) 13) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved)))) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 11) 7))) anon9_correct)))
(let ((anon11_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 M2.Expr.resolved))) (and (=> (= (ControlFlow 0 15) 14) anon13_Then_correct) (=> (= (ControlFlow 0 15) 11) anon13_Else_correct)))))
(let ((anon5_correct true))
(let ((anon12_Else_correct  (=> (and (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved)))) (M2.Expr.Valid_k_k $Heap@@1 this@@1)) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.resolved)))) ($IsAllocBox ($Box refType this@@1) Tclass.M2.Expr? $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))))) (=> (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))))) (=> (or (= this@@1 this@@1) (|M2.Expr.Valid_k_k#canCall| $Heap@@1 this@@1)) (=> (and (M2.Expr.Valid_k_k $Heap@@1 this@@1) (= (ControlFlow 0 2) 1)) anon5_correct)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.Expr.Repr)))) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 M2.Expr.Repr))) |b$reqreads#0@0|) (and (and (=> (= (ControlFlow 0 16) 15) anon11_Else_correct) (=> (= (ControlFlow 0 16) 2) anon12_Then_correct)) (=> (= (ControlFlow 0 16) 4) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.M2.Expr) ($IsAlloc refType this@@1 Tclass.M2.Expr $Heap@@1))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
