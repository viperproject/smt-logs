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
(declare-fun class.M1.Expr? () T@U)
(declare-fun Tagclass.M1.Expr? () T@U)
(declare-fun Tagclass.M1.Expr () T@U)
(declare-fun Tagclass.M1.Kind () T@U)
(declare-fun |##M1.Kind.Constant| () T@U)
(declare-fun |##M1.Kind.Ident| () T@U)
(declare-fun |##M1.Kind.Binary| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Kind () T@U)
(declare-fun field$resolved () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M1.Kind.Constant| () T@U)
(declare-fun |#M1.Kind.Ident| () T@U)
(declare-fun |#M1.Kind.Binary| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.Expr? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M1.Expr () T@U)
(declare-fun M1.Expr.resolved () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M1.Expr.Repr () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M1.Kind () T@U)
(declare-fun M1.Expr.kind () T@U)
(declare-fun M1.Expr.left () T@U)
(declare-fun M1.Expr.right () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |M1.Kind#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M1.Expr.Valid (T@U T@U T@U) Bool)
(declare-fun |M1.Expr.Valid#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M1.Expr.Valid_k_k (T@U T@U) Bool)
(declare-fun |M1.Expr.Valid_k_k#canCall| (T@U T@U) Bool)
(declare-fun M1.Kind.Constant_q (T@U) Bool)
(declare-fun M1.Kind.Ident_q (T@U) Bool)
(declare-fun M1.Kind.Binary_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun M1.Expr.Valid_k (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun M1.Expr.Core (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |M1.Expr.Core#canCall| (T@U T@U) Bool)
(declare-fun |M1.Expr.Valid_k#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |$IsA#M1.Kind| (T@U) Bool)
(declare-fun $LZ () T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.M1.Expr? Tagclass.M1.Expr? Tagclass.M1.Expr Tagclass.M1.Kind |##M1.Kind.Constant| |##M1.Kind.Ident| |##M1.Kind.Binary| tytagFamily$object tytagFamily$Expr tytagFamily$Kind field$resolved field$Repr field$kind field$left field$right)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (DatatypeCtorId |#M1.Kind.Constant|) |##M1.Kind.Constant|))
(assert (= (DatatypeCtorId |#M1.Kind.Ident|) |##M1.Kind.Ident|))
(assert (= (DatatypeCtorId |#M1.Kind.Binary|) |##M1.Kind.Binary|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.Expr?)  (or (= $o null) (= (dtype $o) Tclass.M1.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( ($Is refType $o Tclass.M1.Expr?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M1.Expr $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M1.Expr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Expr $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Expr? $h@@0))
)))
(assert (= (FDim M1.Expr.resolved) 0))
(assert (= (FieldOfDecl class.M1.Expr? field$resolved) M1.Expr.resolved))
(assert ($IsGhostField M1.Expr.resolved))
(assert (= (FDim M1.Expr.Repr) 0))
(assert (= (FieldOfDecl class.M1.Expr? field$Repr) M1.Expr.Repr))
(assert ($IsGhostField M1.Expr.Repr))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#M1.Kind.Constant| Tclass.M1.Kind))
(assert ($Is DatatypeTypeType |#M1.Kind.Ident| Tclass.M1.Kind))
(assert ($Is DatatypeTypeType |#M1.Kind.Binary| Tclass.M1.Kind))
(assert (= (FDim M1.Expr.kind) 0))
(assert (= (FieldOfDecl class.M1.Expr? field$kind) M1.Expr.kind))
(assert  (not ($IsGhostField M1.Expr.kind)))
(assert (= (FDim M1.Expr.left) 0))
(assert (= (FieldOfDecl class.M1.Expr? field$left) M1.Expr.left))
(assert  (not ($IsGhostField M1.Expr.left)))
(assert (= (FDim M1.Expr.right) 0))
(assert (= (FieldOfDecl class.M1.Expr? field$right) M1.Expr.right))
(assert  (not ($IsGhostField M1.Expr.right)))
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
 :skolemid |909|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M1.Expr? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M1.Expr? $h@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|M1.Kind#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1140|
 :pattern ( (|M1.Kind#Equal| a b))
)))
(assert (= (Ctor SetType) 8))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|M1.Expr.Valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M1.Expr) ($IsAlloc refType this Tclass.M1.Expr $Heap)))))) (=> (M1.Expr.Valid $ly $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Expr.Repr)) ($Box refType this))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1112|
 :pattern ( (M1.Expr.Valid $ly $Heap this))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |578|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |576|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Subset| a@@0 b@@0) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a@@0 o) (|Set#IsMember| b@@0 o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |707|
 :pattern ( (|Set#IsMember| a@@0 o))
 :pattern ( (|Set#IsMember| b@@0 o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |708|
 :pattern ( (|Set#Subset| a@@0 b@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M1.Expr.Valid_k_k#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M1.Expr) ($IsAlloc refType this@@0 Tclass.M1.Expr $Heap@@0)))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Expr.resolved)))) (M1.Expr.Valid_k_k $Heap@@0 this@@0)))
 :qid |MonotonicHeapstatedfy.84:21|
 :skolemid |1057|
 :pattern ( (M1.Expr.Valid_k_k $Heap@@0 this@@0))
))))
(assert (forall ((d T@U) ) (! (= (M1.Kind.Constant_q d) (= (DatatypeCtorId d) |##M1.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( (M1.Kind.Constant_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M1.Kind.Ident_q d@@0) (= (DatatypeCtorId d@@0) |##M1.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( (M1.Kind.Ident_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M1.Kind.Binary_q d@@1) (= (DatatypeCtorId d@@1) |##M1.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (M1.Kind.Binary_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |587|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Disjoint| a@@1 b@@1) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@1 o@@0)) (not (|Set#IsMember| b@@1 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |712|
 :pattern ( (|Set#IsMember| a@@1 o@@0))
 :pattern ( (|Set#IsMember| b@@1 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |713|
 :pattern ( (|Set#Disjoint| a@@1 b@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M1.Kind.Constant_q d@@2) (= d@@2 |#M1.Kind.Constant|))
 :qid |unknown.0:0|
 :skolemid |1129|
 :pattern ( (M1.Kind.Constant_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (M1.Kind.Ident_q d@@3) (= d@@3 |#M1.Kind.Ident|))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( (M1.Kind.Ident_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M1.Kind.Binary_q d@@4) (= d@@4 |#M1.Kind.Binary|))
 :qid |unknown.0:0|
 :skolemid |1133|
 :pattern ( (M1.Kind.Binary_q d@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |607|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |608|
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
 :skolemid |2326|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.M1.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) M1.Expr.resolved)) TBool $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1044|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) M1.Expr.resolved)))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (! (= (M1.Expr.Valid_k ($LS $ly@@0) $Heap@@1 this@@1) (M1.Expr.Valid_k $ly@@0 $Heap@@1 this@@1))
 :qid |MonotonicHeapstatedfy.78:21|
 :skolemid |1045|
 :pattern ( (M1.Expr.Valid_k ($LS $ly@@0) $Heap@@1 this@@1))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@2 T@U) (this@@2 T@U) ) (! (= (M1.Expr.Valid ($LS $ly@@1) $Heap@@2 this@@2) (M1.Expr.Valid $ly@@1 $Heap@@2 this@@2))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1108|
 :pattern ( (M1.Expr.Valid ($LS $ly@@1) $Heap@@2 this@@2))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@3 T@U) (this@@3 T@U) ) (! (= (M1.Expr.Core ($LS $ly@@2) $Heap@@3 this@@3) (M1.Expr.Core $ly@@2 $Heap@@3 this@@3))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |1117|
 :pattern ( (M1.Expr.Core ($LS $ly@@2) $Heap@@3 this@@3))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |600|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M1.Expr?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M1.Expr.kind)) Tclass.M1.Kind))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1098|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M1.Expr.kind)))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M1.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M1.Expr.left)) Tclass.M1.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1102|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M1.Expr.left)))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M1.Expr?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M1.Expr.right)) Tclass.M1.Expr?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1104|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M1.Expr.right)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M1.Expr?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.M1.Expr?)))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( ($IsBox bx@@2 Tclass.M1.Expr?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M1.Expr) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M1.Expr)))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( ($IsBox bx@@3 Tclass.M1.Expr))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M1.Kind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M1.Kind)))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($IsBox bx@@4 Tclass.M1.Kind))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.M1.Expr)  (and ($Is refType |c#0@@2| Tclass.M1.Expr?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.Expr))
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.Expr?))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M1.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M1.Expr.kind)) Tclass.M1.Kind $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1099|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) M1.Expr.kind)))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M1.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M1.Expr.left)) Tclass.M1.Expr? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1103|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M1.Expr.left)))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M1.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M1.Expr.right)) Tclass.M1.Expr? $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1105|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M1.Expr.right)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|M1.Expr.Valid#canCall| $Heap@@4 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.M1.Expr) ($IsAlloc refType this@@4 Tclass.M1.Expr $Heap@@4)))))) (and (and (|M1.Expr.Core#canCall| $Heap@@4 this@@4) (=> (M1.Expr.Core $ly@@3 $Heap@@4 this@@4) (|M1.Expr.Valid_k#canCall| $Heap@@4 this@@4))) (= (M1.Expr.Valid ($LS $ly@@3) $Heap@@4 this@@4)  (and (M1.Expr.Core $ly@@3 $Heap@@4 this@@4) (M1.Expr.Valid_k $ly@@3 $Heap@@4 this@@4)))))
 :qid |MonotonicHeapstatedfy.15:21|
 :skolemid |1114|
 :pattern ( (M1.Expr.Valid ($LS $ly@@3) $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M1.Expr?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M1.Expr.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1106|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) M1.Expr.Repr)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.M1.Expr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) M1.Expr.Repr)) (TSet Tclass._System.object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1107|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) M1.Expr.Repr)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |711|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |668|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |590|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |599|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (M1.Kind.Constant_q a@@3) (M1.Kind.Constant_q b@@3)) (|M1.Kind#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |1137|
 :pattern ( (|M1.Kind#Equal| a@@3 b@@3) (M1.Kind.Constant_q a@@3))
 :pattern ( (|M1.Kind#Equal| a@@3 b@@3) (M1.Kind.Constant_q b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (M1.Kind.Ident_q a@@4) (M1.Kind.Ident_q b@@4)) (|M1.Kind#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |1138|
 :pattern ( (|M1.Kind#Equal| a@@4 b@@4) (M1.Kind.Ident_q a@@4))
 :pattern ( (|M1.Kind#Equal| a@@4 b@@4) (M1.Kind.Ident_q b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (M1.Kind.Binary_q a@@5) (M1.Kind.Binary_q b@@5)) (|M1.Kind#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |1139|
 :pattern ( (|M1.Kind#Equal| a@@5 b@@5) (M1.Kind.Binary_q a@@5))
 :pattern ( (|M1.Kind#Equal| a@@5 b@@5) (M1.Kind.Binary_q b@@5))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |628|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |629|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |562|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |563|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |586|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#M1.Kind| d@@5) (or (or (M1.Kind.Constant_q d@@5) (M1.Kind.Ident_q d@@5)) (M1.Kind.Binary_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1135|
 :pattern ( (|$IsA#M1.Kind| d@@5))
)))
(assert (forall (($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.M1.Expr?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) M1.Expr.resolved)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1043|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) M1.Expr.resolved)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|M1.Expr.Valid_k#canCall| $Heap@@5 this@@5) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass.M1.Expr) ($IsAlloc refType this@@5 Tclass.M1.Expr $Heap@@5)))) (M1.Expr.Core ($LS $LZ) $Heap@@5 this@@5)))) (and (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.resolved))) (|$IsA#M1.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.kind)))) (=> (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.right))) M1.Expr.resolved)))))) (|M1.Expr.Valid_k_k#canCall| $Heap@@5 this@@5))) (= (M1.Expr.Valid_k ($LS $ly@@4) $Heap@@5 this@@5)  (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@5) M1.Expr.right))) M1.Expr.resolved)))))) (M1.Expr.Valid_k_k $Heap@@5 this@@5)))))
 :qid |MonotonicHeapstatedfy.78:21|
 :skolemid |1052|
 :pattern ( (M1.Expr.Valid_k ($LS $ly@@4) $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M1.Kind) (or (or (M1.Kind.Constant_q d@@6) (M1.Kind.Ident_q d@@6)) (M1.Kind.Binary_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1136|
 :pattern ( (M1.Kind.Binary_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Kind))
 :pattern ( (M1.Kind.Ident_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Kind))
 :pattern ( (M1.Kind.Constant_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Kind))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|M1.Expr.Core#canCall| $Heap@@6 this@@6) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass.M1.Expr) ($IsAlloc refType this@@6 Tclass.M1.Expr $Heap@@6)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) ($Box refType this@@6)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Box refType this@@6))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr))) (|M1.Expr.Valid#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Box refType this@@6)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)))) (M1.Expr.Valid $ly@@5 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Box refType this@@6))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr))) (|M1.Expr.Valid#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Box refType this@@6)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)))) (M1.Expr.Valid $ly@@5 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))))) (|$IsA#M1.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.kind)))))))) (= (M1.Expr.Core ($LS $ly@@5) $Heap@@6 this@@6)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) ($Box refType this@@6)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Box refType this@@6)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)))) (M1.Expr.Valid $ly@@5 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Box refType this@@6)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.Repr)))) (M1.Expr.Valid $ly@@5 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)))))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.kind)) |#M1.Kind.Binary|) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.left))) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) M1.Expr.right))) M1.Expr.Repr)))))))))
 :qid |MonotonicHeapstatedfy.23:21|
 :skolemid |1123|
 :pattern ( (M1.Expr.Core ($LS $ly@@5) $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |593|
 :pattern ( ($IsBox bx@@7 (TSet t@@3)))
)))
(assert (forall ((d@@7 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@7 Tclass.M1.Kind)) ($IsAlloc DatatypeTypeType d@@7 Tclass.M1.Kind $h@@13))
 :qid |unknown.0:0|
 :skolemid |1134|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.M1.Kind $h@@13))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M1.Expr?) Tagclass.M1.Expr?))
(assert (= (TagFamily Tclass.M1.Expr?) tytagFamily$Expr))
(assert (= (Tag Tclass.M1.Expr) Tagclass.M1.Expr))
(assert (= (TagFamily Tclass.M1.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.M1.Kind) Tagclass.M1.Kind))
(assert (= (TagFamily Tclass.M1.Kind) tytagFamily$Kind))
(assert (= |#M1.Kind.Constant| (Lit DatatypeTypeType |#M1.Kind.Constant|)))
(assert (= |#M1.Kind.Ident| (Lit DatatypeTypeType |#M1.Kind.Ident|)))
(assert (= |#M1.Kind.Binary| (Lit DatatypeTypeType |#M1.Kind.Binary|)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Equal| a@@6 b@@6) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@6 o@@1) (|Set#IsMember| b@@6 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |709|
 :pattern ( (|Set#IsMember| a@@6 o@@1))
 :pattern ( (|Set#IsMember| b@@6 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |710|
 :pattern ( (|Set#Equal| a@@6 b@@6))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |579|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |577|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |624|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |603|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@7 () T@U)
(declare-fun this@@7 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M1.Expr.Valid_k)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon9_correct  (=> (= (M1.Expr.Valid_k ($LS $LZ) $Heap@@7 this@@7)  (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right))) M1.Expr.resolved)))))) (M1.Expr.Valid_k_k $Heap@@7 this@@7))) (=> (and (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (|$IsA#M1.Kind| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)))) (=> (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right))) M1.Expr.resolved)))))) (|M1.Expr.Valid_k_k#canCall| $Heap@@7 this@@7))) ($Is boolType (bool_2_U (M1.Expr.Valid_k ($LS $LZ) $Heap@@7 this@@7)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#8@1|)))))))))))))))))
(let ((anon15_Else_correct  (=> (not (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right))) M1.Expr.resolved))))))) (=> (and (= |b$reqreads#8@1| true) (= (ControlFlow 0 11) 3)) anon9_correct))))
(let ((anon15_Then_correct  (=> (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (=> (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right))) M1.Expr.resolved)))))) ($IsAllocBox ($Box refType this@@7) Tclass.M1.Expr? $Heap@@7)) (=> (and (and (= |b$reqreads#8@0| (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@14) alloc)))) (or (= $o@@14 this@@7) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Box refType $o@@14)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@14 $f@@0)))
 :qid |MonotonicHeapstatedfy.82:7|
 :skolemid |1054|
))) (|M1.Expr.Valid_k_k#canCall| $Heap@@7 this@@7)) (and (= |b$reqreads#8@1| |b$reqreads#8@0|) (= (ControlFlow 0 10) 3))) anon9_correct))))
(let ((anon14_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved)))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (=> (and (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| true) (= |b$reqreads#7@1| true))) (and (=> (= (ControlFlow 0 16) 10) anon15_Then_correct) (=> (= (ControlFlow 0 16) 11) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left))) M1.Expr.resolved))) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@7 M1.Expr.right)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right)) null)) (not true)) (=> (and (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.right)) M1.Expr.resolved))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (=> (and (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= |b$reqreads#7@1| |b$reqreads#7@0|))) (and (=> (= (ControlFlow 0 14) 10) anon15_Then_correct) (=> (= (ControlFlow 0 14) 11) anon15_Else_correct)))))))))
(let ((anon13_Then_correct  (=> (and (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@7 M1.Expr.left)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left)) null)) (not true)) (=> (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.left)) M1.Expr.resolved))) (and (=> (= (ControlFlow 0 17) 14) anon14_Then_correct) (=> (= (ControlFlow 0 17) 16) anon14_Else_correct))))))))
(let ((anon13_Else_correct  (=> (and (not (|M1.Kind#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.kind)) |#M1.Kind.Binary|)) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (=> (and (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= |b$reqreads#7@1| true))) (and (=> (= (ControlFlow 0 13) 10) anon15_Then_correct) (=> (= (ControlFlow 0 13) 11) anon15_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@7 M1.Expr.kind)))) (and (=> (= (ControlFlow 0 19) 17) anon13_Then_correct) (=> (= (ControlFlow 0 19) 13) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.resolved)))) (= |b$reqreads#3@1| true)) (=> (and (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= |b$reqreads#7@1| true))) (and (=> (= (ControlFlow 0 12) 10) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct))))))
(let ((anon11_Else_correct  (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@7 M1.Expr.resolved))) (and (=> (= (ControlFlow 0 20) 19) anon12_Then_correct) (=> (= (ControlFlow 0 20) 12) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@7 alloc this@@7 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)))) ($IsAllocBox ($Box refType this@@7) Tclass.M1.Expr? $Heap@@7)) (=> (and (and (and (= |b$reqreads#0@0| (forall (($o@@15 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@15) alloc)))) (or (= $o@@15 this@@7) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Box refType $o@@15)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@15 $f@@1)))
 :qid |MonotonicHeapstatedfy.34:16|
 :skolemid |1053|
))) (or (or (<= 0 (LitInt 1)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)))))) (= (LitInt 0) (LitInt 1)))) (and (or (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr))))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) M1.Expr.Repr))) (< (LitInt 0) (LitInt 1)))) (|M1.Expr.Core#canCall| $Heap@@7 this@@7))) (and (and (M1.Expr.Core ($LS $LZ) $Heap@@7 this@@7) |b$reqreads#0@0|) (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@7 M1.Expr.Repr))) |b$reqreads#1@0|))) (and (=> (= (ControlFlow 0 21) 1) anon11_Then_correct) (=> (= (ControlFlow 0 21) 20) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass.M1.Expr) ($IsAlloc refType this@@7 Tclass.M1.Expr $Heap@@7))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct))))
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
