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
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun M2.Expr.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M2.Expr () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M2.Expr.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun M2.Expr.Valid (T@U T@U T@U) Bool)
(declare-fun M2.Expr.Core (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M2.Kind.Constant| () T@U)
(declare-fun |#M2.Kind.Ident| () T@U)
(declare-fun |#M2.Kind.Binary| () T@U)
(declare-fun Tclass.M2.VarDecl? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M2.Expr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M2.VarDecl () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M2.Expr.resolved () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M2.Kind () T@U)
(declare-fun M2.Expr.decl () T@U)
(declare-fun M2.Expr.kind () T@U)
(declare-fun M2.Expr.left () T@U)
(declare-fun M2.Expr.right () T@U)
(declare-fun |M2.Kind#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |M2.Expr.Valid#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M2.Expr.Valid_k_k (T@U T@U) Bool)
(declare-fun |M2.Expr.Valid_k_k#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#M2.Kind| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M2.Kind.Constant_q (T@U) Bool)
(declare-fun M2.Kind.Ident_q (T@U) Bool)
(declare-fun M2.Kind.Binary_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |M2.Expr.Core#canCall| (T@U T@U) Bool)
(declare-fun |M2.Expr.Valid_k#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.M2.VarDecl? Tagclass.M2.VarDecl class.M2.Expr? Tagclass.M2.Expr? Tagclass.M2.Expr Tagclass.M2.Kind |##M2.Kind.Constant| |##M2.Kind.Ident| |##M2.Kind.Binary| tytagFamily$object tytagFamily$VarDecl tytagFamily$Expr tytagFamily$Kind field$decl field$Repr field$resolved field$kind field$left field$right)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |1275|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |1276|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1285|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1266|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($ly T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.M2.Expr))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) M2.Expr.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1652|
)) (= (M2.Expr.Valid_k $ly $h0 this) (M2.Expr.Valid_k $ly $h1 this))))
 :qid |unknown.0:0|
 :skolemid |1653|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M2.Expr.Valid_k $ly $h1 this))
)))
(assert (forall (($ly@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.M2.Expr))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) M2.Expr.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1699|
)) (= (M2.Expr.Valid $ly@@0 $h0@@0 this@@0) (M2.Expr.Valid $ly@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M2.Expr.Valid $ly@@0 $h1@@0 this@@0))
)))
(assert (forall (($ly@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.M2.Expr))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (or (= $o@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@1) M2.Expr.Repr)) ($Box refType $o@@1)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1708|
)) (= (M2.Expr.Core $ly@@1 $h0@@1 this@@1) (M2.Expr.Core $ly@@1 $h1@@1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |1709|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (M2.Expr.Core $ly@@1 $h1@@1 this@@1))
)))
(assert (= (DatatypeCtorId |#M2.Kind.Constant|) |##M2.Kind.Constant|))
(assert (= (DatatypeCtorId |#M2.Kind.Ident|) |##M2.Kind.Ident|))
(assert (= (DatatypeCtorId |#M2.Kind.Binary|) |##M2.Kind.Binary|))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.M2.VarDecl?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.M2.VarDecl?)))
 :qid |unknown.0:0|
 :skolemid |1621|
 :pattern ( ($Is refType $o@@2 Tclass.M2.VarDecl?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.M2.Expr?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.M2.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1627|
 :pattern ( ($Is refType $o@@3 Tclass.M2.Expr?))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |1279|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o@@0)  (and (|Set#IsMember| a@@3 o@@0) (not (|Set#IsMember| b@@3 o@@0))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1284|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o@@0))
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
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#M2.Kind.Constant| Tclass.M2.Kind))
(assert ($Is DatatypeTypeType |#M2.Kind.Ident| Tclass.M2.Kind))
(assert ($Is DatatypeTypeType |#M2.Kind.Binary| Tclass.M2.Kind))
(assert (= (FDim M2.Expr.decl) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$decl) M2.Expr.decl))
(assert  (not ($IsGhostField M2.Expr.decl)))
(assert (= (FDim M2.Expr.kind) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$kind) M2.Expr.kind))
(assert  (not ($IsGhostField M2.Expr.kind)))
(assert (= (FDim M2.Expr.left) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$left) M2.Expr.left))
(assert  (not ($IsGhostField M2.Expr.left)))
(assert (= (FDim M2.Expr.right) 0))
(assert (= (FieldOfDecl class.M2.Expr? field$right) M2.Expr.right))
(assert  (not ($IsGhostField M2.Expr.right)))
(assert (forall (($o@@4 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@2)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@5 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.M2.VarDecl? $h@@3)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1622|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.M2.VarDecl? $h@@3))
)))
(assert (forall (($o@@6 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.M2.Expr? $h@@4)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.M2.Expr? $h@@4))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|M2.Kind#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |1729|
 :pattern ( (|M2.Kind#Equal| a@@4 b@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1259|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1260|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap T@U) (this@@2 T@U) ) (!  (=> (or (|M2.Expr.Valid#canCall| $Heap this@@2) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.M2.Expr) ($IsAlloc refType this@@2 Tclass.M2.Expr $Heap)))))) (=> (M2.Expr.Valid $ly@@2 $Heap this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@2) M2.Expr.Repr)) ($Box refType this@@2))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1701|
 :pattern ( (M2.Expr.Valid $ly@@2 $Heap this@@2))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1156|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|M2.Expr.Valid_k_k#canCall| $Heap@@0 this@@3) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.M2.Expr) ($IsAlloc refType this@@3 Tclass.M2.Expr $Heap@@0)))))) (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Expr.resolved))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Expr.kind)))) (= (M2.Expr.Valid_k_k $Heap@@0 this@@3)  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Expr.kind)) |#M2.Kind.Ident|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Expr.decl)) null)) (not true)))))))
 :qid |MonotonicHeapstatedfy.135:21|
 :skolemid |1636|
 :pattern ( (M2.Expr.Valid_k_k $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@5 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@5 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1287|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1288|
 :pattern ( (|Set#Subset| a@@5 b@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|M2.Expr.Valid_k_k#canCall| $Heap@@1 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.M2.Expr) ($IsAlloc refType this@@4 Tclass.M2.Expr $Heap@@1)))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M2.Expr.resolved)))) (M2.Expr.Valid_k_k $Heap@@1 this@@4)))
 :qid |MonotonicHeapstatedfy.135:21|
 :skolemid |1634|
 :pattern ( (M2.Expr.Valid_k_k $Heap@@1 this@@4))
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
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1167|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@6 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@6 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |1292|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1293|
 :pattern ( (|Set#Disjoint| a@@6 b@@6))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1187|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1188|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) M2.Expr.resolved)) TBool $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) M2.Expr.resolved)))
)))
(assert (forall (($ly@@3 T@U) ($Heap@@2 T@U) (this@@5 T@U) ) (! (= (M2.Expr.Valid_k ($LS $ly@@3) $Heap@@2 this@@5) (M2.Expr.Valid_k $ly@@3 $Heap@@2 this@@5))
 :qid |MonotonicHeapstatedfy.78:21|
 :skolemid |1650|
 :pattern ( (M2.Expr.Valid_k ($LS $ly@@3) $Heap@@2 this@@5))
)))
(assert (forall (($ly@@4 T@U) ($Heap@@3 T@U) (this@@6 T@U) ) (! (= (M2.Expr.Valid ($LS $ly@@4) $Heap@@3 this@@6) (M2.Expr.Valid $ly@@4 $Heap@@3 this@@6))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1697|
 :pattern ( (M2.Expr.Valid ($LS $ly@@4) $Heap@@3 this@@6))
)))
(assert (forall (($ly@@5 T@U) ($Heap@@4 T@U) (this@@7 T@U) ) (! (= (M2.Expr.Core ($LS $ly@@5) $Heap@@4 this@@7) (M2.Expr.Core $ly@@5 $Heap@@4 this@@7))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |1706|
 :pattern ( (M2.Expr.Core ($LS $ly@@5) $Heap@@4 this@@7))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1180|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1252|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1251|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M2.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) M2.Expr.decl)) Tclass.M2.VarDecl?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) M2.Expr.decl)))
)))
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M2.Expr?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) M2.Expr.kind)) Tclass.M2.Kind))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1687|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) M2.Expr.kind)))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M2.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) M2.Expr.left)) Tclass.M2.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1691|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) M2.Expr.left)))
)))
(assert (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.M2.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) M2.Expr.right)) Tclass.M2.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1693|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) M2.Expr.right)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M2.VarDecl?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M2.VarDecl?)))
 :qid |unknown.0:0|
 :skolemid |1620|
 :pattern ( ($IsBox bx@@3 Tclass.M2.VarDecl?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M2.VarDecl) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M2.VarDecl)))
 :qid |unknown.0:0|
 :skolemid |1623|
 :pattern ( ($IsBox bx@@4 Tclass.M2.VarDecl))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M2.Expr?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.M2.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1626|
 :pattern ( ($IsBox bx@@5 Tclass.M2.Expr?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M2.Expr) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.M2.Expr)))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsBox bx@@6 Tclass.M2.Expr))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M2.Kind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M2.Kind)))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($IsBox bx@@7 Tclass.M2.Kind))
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
(assert (forall (($h@@10 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) M2.Expr.decl)) Tclass.M2.VarDecl? $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1630|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) M2.Expr.decl)))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) M2.Expr.kind)) Tclass.M2.Kind $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) M2.Expr.kind)))
)))
(assert (forall (($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) M2.Expr.left)) Tclass.M2.Expr? $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1692|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) M2.Expr.left)))
)))
(assert (forall (($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) M2.Expr.right)) Tclass.M2.Expr? $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1694|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) M2.Expr.right)))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@7 b@@7) o@@4)  (or (|Set#IsMember| a@@7 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |1274|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@7 b@@7) o@@4))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@8 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@8 b@@8) a@@8) b@@8) (= (|Set#Difference| (|Set#Union| a@@8 b@@8) b@@8) a@@8)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |1277|
 :pattern ( (|Set#Union| a@@8 b@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@5 T@U) (this@@8 T@U) ) (!  (=> (or (|M2.Expr.Valid#canCall| $Heap@@5 this@@8) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass.M2.Expr) ($IsAlloc refType this@@8 Tclass.M2.Expr $Heap@@5)))))) (and (and (|M2.Expr.Core#canCall| $Heap@@5 this@@8) (=> (M2.Expr.Core $ly@@6 $Heap@@5 this@@8) (|M2.Expr.Valid_k#canCall| $Heap@@5 this@@8))) (= (M2.Expr.Valid ($LS $ly@@6) $Heap@@5 this@@8)  (and (M2.Expr.Core $ly@@6 $Heap@@5 this@@8) (M2.Expr.Valid_k $ly@@6 $Heap@@5 this@@8)))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1703|
 :pattern ( (M2.Expr.Valid ($LS $ly@@6) $Heap@@5 this@@8) ($IsGoodHeap $Heap@@5))
))))
(assert (forall (($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.M2.Expr?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) M2.Expr.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1695|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) M2.Expr.Repr)))
)))
(assert (forall (($h@@15 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.M2.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) M2.Expr.Repr)) (TSet Tclass._System.object) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1696|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) M2.Expr.Repr)))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@9 c)) (not true)) (=> (and ($HeapSucc a@@9 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@9 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1258|
 :pattern ( ($HeapSucc a@@9 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1248|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1170|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1179|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (!  (=> (and (M2.Kind.Constant_q a@@10) (M2.Kind.Constant_q b@@10)) (|M2.Kind#Equal| a@@10 b@@10))
 :qid |unknown.0:0|
 :skolemid |1726|
 :pattern ( (|M2.Kind#Equal| a@@10 b@@10) (M2.Kind.Constant_q a@@10))
 :pattern ( (|M2.Kind#Equal| a@@10 b@@10) (M2.Kind.Constant_q b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (!  (=> (and (M2.Kind.Ident_q a@@11) (M2.Kind.Ident_q b@@11)) (|M2.Kind#Equal| a@@11 b@@11))
 :qid |unknown.0:0|
 :skolemid |1727|
 :pattern ( (|M2.Kind#Equal| a@@11 b@@11) (M2.Kind.Ident_q a@@11))
 :pattern ( (|M2.Kind#Equal| a@@11 b@@11) (M2.Kind.Ident_q b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (!  (=> (and (M2.Kind.Binary_q a@@12) (M2.Kind.Binary_q b@@12)) (|M2.Kind#Equal| a@@12 b@@12))
 :qid |unknown.0:0|
 :skolemid |1728|
 :pattern ( (|M2.Kind#Equal| a@@12 b@@12) (M2.Kind.Binary_q a@@12))
 :pattern ( (|M2.Kind#Equal| a@@12 b@@12) (M2.Kind.Binary_q b@@12))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1208|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1209|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@18 T@U) ) (! ($Is refType $o@@18 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( ($Is refType $o@@18 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1142|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1143|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1166|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#M2.Kind| d@@5) (or (or (M2.Kind.Constant_q d@@5) (M2.Kind.Ident_q d@@5)) (M2.Kind.Binary_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1724|
 :pattern ( (|$IsA#M2.Kind| d@@5))
)))
(assert (forall (($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.M2.Expr?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) M2.Expr.resolved)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) M2.Expr.resolved)))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass.M2.Expr))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@20 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (or (= $o@@20 this@@9) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 this@@9) M2.Expr.Repr)) ($Box refType $o@@20)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@20) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@20) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1631|
)) (= (M2.Expr.Valid_k_k $h0@@2 this@@9) (M2.Expr.Valid_k_k $h1@@2 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1633|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (M2.Expr.Valid_k_k $h1@@2 this@@9))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@13)) (|Set#Union| a@@13 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |1280|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@13)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@6 T@U) (this@@10 T@U) ) (!  (=> (or (|M2.Expr.Valid_k#canCall| $Heap@@6 this@@10) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass.M2.Expr) ($IsAlloc refType this@@10 Tclass.M2.Expr $Heap@@6)))) (M2.Expr.Core ($LS $LZ) $Heap@@6 this@@10)))) (and (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.resolved))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.kind)))) (=> (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.kind)) |#M2.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.left))) M2.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.right))) M2.Expr.resolved)))))) (|M2.Expr.Valid_k_k#canCall| $Heap@@6 this@@10))) (= (M2.Expr.Valid_k ($LS $ly@@7) $Heap@@6 this@@10)  (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.kind)) |#M2.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.left))) M2.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@10) M2.Expr.right))) M2.Expr.resolved)))))) (M2.Expr.Valid_k_k $Heap@@6 this@@10)))))
 :qid |MonotonicHeapstatedfy.78:21|
 :skolemid |1656|
 :pattern ( (M2.Expr.Valid_k ($LS $ly@@7) $Heap@@6 this@@10) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M2.Kind) (or (or (M2.Kind.Constant_q d@@6) (M2.Kind.Ident_q d@@6)) (M2.Kind.Binary_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1725|
 :pattern ( (M2.Kind.Binary_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
 :pattern ( (M2.Kind.Ident_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
 :pattern ( (M2.Kind.Constant_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Kind))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) ($Heap@@7 T@U) (this@@11 T@U) ) (!  (=> (or (|M2.Expr.Core#canCall| $Heap@@7 this@@11) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass.M2.Expr) ($IsAlloc refType this@@11 Tclass.M2.Expr $Heap@@7)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) ($Box refType this@@11)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Box refType this@@11))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr))) (|M2.Expr.Valid#canCall| $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Box refType this@@11)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)))) (M2.Expr.Valid $ly@@8 $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Box refType this@@11))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr))) (|M2.Expr.Valid#canCall| $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Box refType this@@11)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)))) (M2.Expr.Valid $ly@@8 $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.kind)))))))) (= (M2.Expr.Core ($LS $ly@@8) $Heap@@7 this@@11)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) ($Box refType this@@11)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Box refType this@@11)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)))) (M2.Expr.Valid $ly@@8 $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Box refType this@@11)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.Repr)))) (M2.Expr.Valid $ly@@8 $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)))))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.kind)) |#M2.Kind.Binary|) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@11) M2.Expr.right))) M2.Expr.Repr)))))))))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |1712|
 :pattern ( (M2.Expr.Core ($LS $ly@@8) $Heap@@7 this@@11) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1173|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1257|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5)))
)))
(assert (forall ((d@@7 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) ($Is DatatypeTypeType d@@7 Tclass.M2.Kind)) ($IsAlloc DatatypeTypeType d@@7 Tclass.M2.Kind $h@@17))
 :qid |unknown.0:0|
 :skolemid |1723|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.M2.Kind $h@@17))
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
(assert (forall ((x@@6 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@6)) (Lit BoxType ($Box T@@5 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1157|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@6)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@21 T@U) ($f@@3 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f@@3))  (=> (and (or (not (= $o@@21 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@21))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2332|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f@@3))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1204|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1183|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun this@@12 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#1@0| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@@8 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call0formal@this@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call0formal@this@0@@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(set-info :boogie-vc-id Impl$$M2.Expr.Resolve)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon12_correct  (=> (and (and (and (= |$rhs#0@0| (|Set#Union| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.Repr)) (ite  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.left)) null)) (not true)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.left))) M2.Expr.Repr)) |Set#Empty|)) (ite  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.right)) null)) (not true)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.right))) M2.Expr.Repr)) |Set#Empty|))) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@12 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.Repr ($Box SetType |$rhs#0@0|))))) (and ($IsGoodHeap $Heap@6) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@12 M2.Expr.resolved)))) (and (and (= |$rhs#1@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@12 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@12) M2.Expr.resolved ($Box boolType (bool_2_U |$rhs#1@0|)))))) (and ($IsGoodHeap $Heap@7) ($IsAllocBox ($Box refType this@@12) Tclass.M2.Expr? $Heap@7)))) (=> (and (and (and (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) ($Box refType this@@12)))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)))))) (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))) M2.Expr.Repr)) ($Box refType this@@12)))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)))))))) (and (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true)) (M2.Expr.Valid ($LS ($LS $LZ)) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))))))) (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))) M2.Expr.Repr)) ($Box refType this@@12))))))))) (and (and (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))) M2.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr))))))) (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true)) (M2.Expr.Valid ($LS ($LS $LZ)) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left)) null)) (not true))))))) (and (and (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right)) null)) (not true))))) (=> (|M2.Expr.Core#canCall| $Heap@7 this@@12) (or (M2.Expr.Core ($LS $LZ) $Heap@7 this@@12) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))) M2.Expr.Repr))))))) (and (|M2.Expr.Valid_k#canCall| $Heap@7 this@@12) (|M2.Expr.Valid_k#canCall| $Heap@7 this@@12))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|M2.Expr.Valid_k#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid_k ($LS $LZ) $Heap@7 this@@12) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.left))) M2.Expr.resolved)))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|M2.Expr.Valid_k#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid_k ($LS $LZ) $Heap@7 this@@12) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.resolved))) (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.right))) M2.Expr.resolved)))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|M2.Expr.Valid_k#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid_k ($LS $LZ) $Heap@7 this@@12) (M2.Expr.Valid_k_k $Heap@7 this@@12)))) (=> (M2.Expr.Valid_k ($LS $LZ) $Heap@7 this@@12) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M2.Expr.Valid#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid ($LS $LZ) $Heap@7 this@@12) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@7 this@@12))))) (=> (=> false (=> (|M2.Expr.Valid#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid ($LS $LZ) $Heap@7 this@@12) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@7 this@@12)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M2.Expr.Valid#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid ($LS $LZ) $Heap@7 this@@12) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@7 this@@12))))) (=> (=> false (=> (|M2.Expr.Valid#canCall| $Heap@7 this@@12) (or (M2.Expr.Valid ($LS $LZ) $Heap@7 this@@12) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@7 this@@12)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Box refType $o@@22)))) (or (not (= $o@@22 null)) (not true)))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1643|
 :pattern (  (or (not (= $o@@22 null)) (not true)))
)) (forall (($o@@23 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) ($Box refType $o@@23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Box refType $o@@23)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@23) alloc)))))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1644|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@23) alloc)))
))))) (=> (=> false (and (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Box refType $o@@24)))) (or (not (= $o@@24 null)) (not true)))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1643|
 :pattern (  (or (not (= $o@@24 null)) (not true)))
)) (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Box refType $o@@25)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@25) alloc)))))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1644|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@25) alloc)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@12) M2.Expr.resolved)))))))))))))))))))
(let ((anon16_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.right)) null) (= (ControlFlow 0 10) 2)) anon12_correct)))
(let ((anon16_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.right)) null)) (not true)) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.right)) null)) (not true)) (= (ControlFlow 0 9) 2)) anon12_correct))))
(let ((anon15_Else_correct  (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.left)) null) (and (=> (= (ControlFlow 0 12) 9) anon16_Then_correct) (=> (= (ControlFlow 0 12) 10) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@12) M2.Expr.left)) null)) (not true))) (and (=> (= (ControlFlow 0 11) 9) anon16_Then_correct) (=> (= (ControlFlow 0 11) 10) anon16_Else_correct)))))
(let ((anon6_correct  (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@12 M2.Expr.Repr)) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|)) (=> (and (= $Heap@5 $Heap@2) (= (ControlFlow 0 19) 13)) anon6_correct))))
(let ((anon14_Then_correct  (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.kind)) |#M2.Kind.Binary|) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.left)) null)) (not true)) (forall (($o@@26 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.left))) M2.Expr.Repr)) ($Box refType $o@@26))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@26 $f@@4)))
 :qid |MonotonicHeapstatedfy.117:21|
 :skolemid |1646|
))) (=> (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.left))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.left))) M2.Expr.Repr))))) (= call0formal@this@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.left)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> (|M2.Expr.Valid#canCall| $Heap@2 call0formal@this@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@2 call0formal@this@0) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@2 call0formal@this@0)))) (=> (=> (|M2.Expr.Valid#canCall| $Heap@2 call0formal@this@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@2 call0formal@this@0) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@2 call0formal@this@0))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (=> (|M2.Expr.Valid#canCall| $Heap@2 call0formal@this@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@2 call0formal@this@0) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@2 call0formal@this@0)))) (=> (=> (|M2.Expr.Valid#canCall| $Heap@2 call0formal@this@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@2 call0formal@this@0) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@2 call0formal@this@0))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0)) (and (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0) (and (M2.Expr.Valid ($LS $LZ) $Heap@3 call0formal@this@0) (and (M2.Expr.Core ($LS $LZ) $Heap@3 call0formal@this@0) (M2.Expr.Valid_k ($LS $LZ) $Heap@3 call0formal@this@0))))) (and (and (forall (($o@@27 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0) M2.Expr.Repr)) ($Box refType $o@@27)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) M2.Expr.Repr)) ($Box refType $o@@27)))) (or (not (= $o@@27 null)) (not true)))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1640|
 :pattern (  (or (not (= $o@@27 null)) (not true)))
)) (forall (($o@@28 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0) M2.Expr.Repr)) ($Box refType $o@@28)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) M2.Expr.Repr)) ($Box refType $o@@28)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) alloc)))))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1641|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) alloc)))
))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0) M2.Expr.resolved))))) (and (and (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@29) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@29)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call0formal@this@0) M2.Expr.Repr)) ($Box refType $o@@29))))
 :qid |MonotonicHeapstatedfy.141:12|
 :skolemid |1642|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@12) M2.Expr.right)) null)) (not true)) (forall (($o@@30 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@12) M2.Expr.right))) M2.Expr.Repr)) ($Box refType $o@@30))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@30 $f@@5)))
 :qid |MonotonicHeapstatedfy.118:22|
 :skolemid |1647|
)))) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@12) M2.Expr.right))) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@12) M2.Expr.right))) M2.Expr.Repr))))) (= call0formal@this@0@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@12) M2.Expr.right)))))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0@@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@3 call0formal@this@0@@0) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@3 call0formal@this@0@@0)))) (=> (=> (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0@@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@3 call0formal@this@0@@0) (M2.Expr.Core ($LS ($LS $LZ)) $Heap@3 call0formal@this@0@@0))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0@@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@3 call0formal@this@0@@0) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@3 call0formal@this@0@@0)))) (=> (=> (|M2.Expr.Valid#canCall| $Heap@3 call0formal@this@0@@0) (or (M2.Expr.Valid ($LS $LZ) $Heap@3 call0formal@this@0@@0) (M2.Expr.Valid_k ($LS ($LS $LZ)) $Heap@3 call0formal@this@0@@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|M2.Expr.Valid#canCall| $Heap@4 call0formal@this@0@@0)) (and (|M2.Expr.Valid#canCall| $Heap@4 call0formal@this@0@@0) (and (M2.Expr.Valid ($LS $LZ) $Heap@4 call0formal@this@0@@0) (and (M2.Expr.Core ($LS $LZ) $Heap@4 call0formal@this@0@@0) (M2.Expr.Valid_k ($LS $LZ) $Heap@4 call0formal@this@0@@0))))) (and (and (and (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call0formal@this@0@@0) M2.Expr.Repr)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) M2.Expr.Repr)) ($Box refType $o@@31)))) (or (not (= $o@@31 null)) (not true)))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1640|
 :pattern (  (or (not (= $o@@31 null)) (not true)))
)) (forall (($o@@32 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call0formal@this@0@@0) M2.Expr.Repr)) ($Box refType $o@@32)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) M2.Expr.Repr)) ($Box refType $o@@32)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))))
 :qid |MonotonicHeapstatedfy.112:26|
 :skolemid |1641|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))
))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call0formal@this@0@@0) M2.Expr.resolved)))) (and (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@33) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@33)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call0formal@this@0@@0) M2.Expr.Repr)) ($Box refType $o@@33))))
 :qid |MonotonicHeapstatedfy.141:12|
 :skolemid |1642|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@33))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= $Heap@5 $Heap@4) (= (ControlFlow 0 14) 13))))) anon6_correct)))))))))))))))
(let ((anon3_correct  (=> (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@12) M2.Expr.kind))) (and (=> (= (ControlFlow 0 20) 14) anon14_Then_correct) (=> (= (ControlFlow 0 20) 19) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.kind)) |#M2.Kind.Ident|)) (=> (and (= $Heap@2 $Heap@@8) (= (ControlFlow 0 23) 20)) anon3_correct))))
(let ((anon13_Then_correct  (=> (|M2.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.kind)) |#M2.Kind.Ident|) (and (=> (= (ControlFlow 0 21) (- 0 22)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@12 M2.Expr.decl))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@12 M2.Expr.decl)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.M2.VarDecl?)) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@8 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@12 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@12) M2.Expr.decl ($Box refType $nw@0)))) ($IsGoodHeap $Heap@1)) (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 21) 20)))) anon3_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@8 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.Repr)))) (|$IsA#M2.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@12) M2.Expr.kind)))) (and (=> (= (ControlFlow 0 24) 21) anon13_Then_correct) (=> (= (ControlFlow 0 24) 23) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@8) ($IsHeapAnchor $Heap@@8)) (=> (and (and (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass.M2.Expr) ($IsAlloc refType this@@12 Tclass.M2.Expr $Heap@@8))) (= 3 $FunctionContextHeight)) (and (and (|M2.Expr.Valid#canCall| $Heap@@8 this@@12) (and (M2.Expr.Valid ($LS $LZ) $Heap@@8 this@@12) (and (M2.Expr.Core ($LS $LZ) $Heap@@8 this@@12) (M2.Expr.Valid_k ($LS $LZ) $Heap@@8 this@@12)))) (= (ControlFlow 0 25) 24))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
