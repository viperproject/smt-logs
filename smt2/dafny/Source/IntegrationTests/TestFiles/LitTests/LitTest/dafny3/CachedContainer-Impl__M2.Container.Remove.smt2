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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.M2.Container? () T@U)
(declare-fun Tagclass.M2.Container? () T@U)
(declare-fun Tagclass.M2.Container () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Container () T@U)
(declare-fun field$elems () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun M2.Container.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M2.Container (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M2.Container.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun M2.Container.Valid_k_k (T@U T@U T@U) Bool)
(declare-fun M2.Container.Valid (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Container? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |M2.Container.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M2.Container.Contents () T@U)
(declare-fun M2.Container.elems () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |M2.Container.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |M2.Container.Valid_k_k#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.M2.Container?_0 (T@U) T@U)
(declare-fun Tclass.M2.Container_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#11| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class.M2.Container? Tagclass.M2.Container? Tagclass.M2.Container tytagFamily$object tytagFamily$Container field$elems field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1195|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1196|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1194|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$y#1|))  (and ($IsBox |$y#1| |l#0|) (|Seq#Contains| |l#1| |$y#1|)))
 :qid |unknown.0:0|
 :skolemid |3871|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$y#1|))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1210|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert  (and (and (and (and (and (= (Ctor refType) 4) (= (Ctor SetType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((M2.Container$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.M2.Container M2.Container$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) M2.Container.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1552|
)) (= (M2.Container.Valid_k M2.Container$T $h0 this) (M2.Container.Valid_k M2.Container$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M2.Container.Valid_k M2.Container$T $h1 this))
)))
(assert (forall ((M2.Container$T@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.M2.Container M2.Container$T@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) M2.Container.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1567|
)) (= (M2.Container.Valid_k_k M2.Container$T@@0 $h0@@0 this@@0) (M2.Container.Valid_k_k M2.Container$T@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M2.Container.Valid_k_k M2.Container$T@@0 $h1@@0 this@@0))
)))
(assert (forall ((M2.Container$T@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.M2.Container M2.Container$T@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (or (= $o@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@1) M2.Container.Repr)) ($Box refType $o@@1)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1620|
)) (= (M2.Container.Valid M2.Container$T@@1 $h0@@1 this@@1) (M2.Container.Valid M2.Container$T@@1 $h1@@1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |1621|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (M2.Container.Valid M2.Container$T@@1 $h1@@1 this@@1))
)))
(assert (forall ((M2.Container$T@@2 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.M2.Container M2.Container$T@@2) $h) ($IsAlloc refType |c#0| (Tclass.M2.Container? M2.Container$T@@2) $h))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M2.Container M2.Container$T@@2) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M2.Container? M2.Container$T@@2) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1191|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@5 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@5))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |1298|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1209|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((M2.Container$T@@3 T@U) ($Heap T@U) (this@@2 T@U) ) (!  (=> (or (|M2.Container.Valid#canCall| M2.Container$T@@3 $Heap this@@2) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.M2.Container M2.Container$T@@3)) ($IsAlloc refType this@@2 (Tclass.M2.Container M2.Container$T@@3) $Heap)))))) (=> (M2.Container.Valid M2.Container$T@@3 $Heap this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@2) M2.Container.Repr)) ($Box refType this@@2))))
 :qid |unknown.0:0|
 :skolemid |1622|
 :pattern ( (M2.Container.Valid M2.Container$T@@3 $Heap this@@2))
))))
(assert (forall ((s T@U) (t T@U) (n Int) ) (!  (=> (= n (|Seq#Length| s)) (and (= (|Seq#Take| (|Seq#Append| s t) n) s) (= (|Seq#Drop| (|Seq#Append| s t) n) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |1315|
 :pattern ( (|Seq#Take| (|Seq#Append| s t) n))
 :pattern ( (|Seq#Drop| (|Seq#Append| s t) n))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1417|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim M2.Container.Repr) 0))
(assert (= (FieldOfDecl class.M2.Container? field$Repr) M2.Container.Repr))
(assert ($IsGhostField M2.Container.Repr))
(assert (= (FDim M2.Container.Contents) 0))
(assert (= (FieldOfDecl class.M2.Container? field$Contents) M2.Container.Contents))
(assert ($IsGhostField M2.Container.Contents))
(assert (forall ((M2.Container$T@@4 T@U) ($o@@2 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.M2.Container? M2.Container$T@@4) $h@@1)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1549|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.M2.Container? M2.Container$T@@4) $h@@1))
)))
(assert (= (FDim M2.Container.elems) 0))
(assert (= (FieldOfDecl class.M2.Container? field$elems) M2.Container.elems))
(assert  (not ($IsGhostField M2.Container.elems)))
(assert (forall (($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1414|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1184|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1185|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |1321|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1083|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1081|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@1))) (= (|Seq#Index| (|Seq#Take| s@@1 n@@1) j) (|Seq#Index| s@@1 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |1311|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@1 n@@1) j))
 :pattern ( (|Seq#Index| s@@1 j) (|Seq#Take| s@@1 n@@1))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@2))) (= (|Seq#Length| (|Seq#Drop| s@@2 n@@2)) (- (|Seq#Length| s@@2) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |1312|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@2 n@@2)))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1092|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1219|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1112|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1113|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (= (Ctor SeqType) 8))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M2.Container$T@@5 T@U) ($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|M2.Container.Valid_k#canCall| M2.Container$T@@5 $Heap@@0 this@@3) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.M2.Container M2.Container$T@@5)) ($IsAlloc refType this@@3 (Tclass.M2.Container M2.Container$T@@5) $Heap@@0)))))) (and (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.Contents)) (|Set#FromBoogieMap| (|lambda#0| M2.Container$T@@5 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems))))) (=> (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |i#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |j#0|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |1560|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |j#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |i#0|))
)) (|M2.Container.Valid_k_k#canCall| M2.Container$T@@5 $Heap@@0 this@@3))) (= (M2.Container.Valid_k M2.Container$T@@5 $Heap@@0 this@@3)  (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.Contents)) (|Set#FromBoogieMap| (|lambda#0| M2.Container$T@@5 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems))))) (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| |j#0@@0|)) (< |j#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |i#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |j#0@@0|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |1559|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |j#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M2.Container.elems)) |i#0@@0|))
))) (M2.Container.Valid_k_k M2.Container$T@@5 $Heap@@0 this@@3)))))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( (M2.Container.Valid_k M2.Container$T@@5 $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert ($IsGhostField alloc))
(assert (forall ((M2.Container$T@@6 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.M2.Container M2.Container$T@@6))  (and ($Is refType |c#0@@1| (Tclass.M2.Container? M2.Container$T@@6)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@1| (Tclass.M2.Container M2.Container$T@@6)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.M2.Container? M2.Container$T@@6)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1105|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1177|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1176|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@3) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@0) (|Seq#Index| s@@3 (+ j@@0 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |1313|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@0))
)))
(assert (forall ((M2.Container$T@@7 T@U) ) (!  (and (= (Tag (Tclass.M2.Container? M2.Container$T@@7)) Tagclass.M2.Container?) (= (TagFamily (Tclass.M2.Container? M2.Container$T@@7)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |1545|
 :pattern ( (Tclass.M2.Container? M2.Container$T@@7))
)))
(assert (forall ((M2.Container$T@@8 T@U) ) (!  (and (= (Tag (Tclass.M2.Container M2.Container$T@@8)) Tagclass.M2.Container) (= (TagFamily (Tclass.M2.Container M2.Container$T@@8)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |1553|
 :pattern ( (Tclass.M2.Container M2.Container$T@@8))
)))
(assert (forall ((M2.Container$T@@9 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.M2.Container? M2.Container$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) M2.Container.elems)) (TSeq M2.Container$T@@9) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1551|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) M2.Container.elems)) (Tclass.M2.Container? M2.Container$T@@9))
)))
(assert (forall ((M2.Container$T@@10 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.M2.Container? M2.Container$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) M2.Container.Contents)) (TSet M2.Container$T@@10) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1619|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) M2.Container.Contents)) (Tclass.M2.Container? M2.Container$T@@10))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |1292|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1415|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((M2.Container$T@@11 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.M2.Container? M2.Container$T@@11))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.M2.Container? M2.Container$T@@11))))
 :qid |unknown.0:0|
 :skolemid |1548|
 :pattern ( ($Is refType $o@@6 (Tclass.M2.Container? M2.Container$T@@11)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1416|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@9)  (or (|Seq#Contains| s0@@0 x@@9) (|Seq#Contains| s1@@0 x@@9)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |1299|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@9))
)))
(assert (forall ((M2.Container$T@@12 T@U) ($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.M2.Container? M2.Container$T@@12)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) M2.Container.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1626|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) M2.Container.Repr)) (Tclass.M2.Container? M2.Container$T@@12))
)))
(assert (forall ((s@@4 T@U) (n@@4 Int) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@4 n@@4) x@@10) (exists ((i Int) ) (!  (and (and (and (<= 0 i) (< i n@@4)) (< i (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i) x@@10))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |1301|
 :pattern ( (|Seq#Index| s@@4 i))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |1302|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@4 n@@4) x@@10))
)))
(assert (forall ((M2.Container$T@@13 T@U) ($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.M2.Container? M2.Container$T@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) M2.Container.Repr)) (TSet Tclass._System.object?) $h@@6))
 :qid |unknown.0:0|
 :skolemid |1627|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) M2.Container.Repr)) (Tclass.M2.Container? M2.Container$T@@13))
)))
(assert (forall ((s@@5 T@U) (x@@11 T@U) ) (! (= (|Seq#Contains| s@@5 x@@11) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@0) x@@11))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |1296|
 :pattern ( (|Seq#Index| s@@5 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |1297|
 :pattern ( (|Seq#Contains| s@@5 x@@11))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1216|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((s@@6 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Take| s@@6 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |1310|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@6 n@@5)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@5 c)) (not true)) (=> (and ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@5 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1183|
 :pattern ( ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1173|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@3) ($Is T@@3 v@@2 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1104|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@3))
)))
(assert (forall ((s@@7 T@U) ) (! (<= 0 (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1287|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1133|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1134|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1413|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1139|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1140|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1067|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1068|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1073|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1074|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((M2.Container$T@@14 T@U) ) (! (= (Tclass.M2.Container?_0 (Tclass.M2.Container? M2.Container$T@@14)) M2.Container$T@@14)
 :qid |unknown.0:0|
 :skolemid |1546|
 :pattern ( (Tclass.M2.Container? M2.Container$T@@14))
)))
(assert (forall ((M2.Container$T@@15 T@U) ) (! (= (Tclass.M2.Container_0 (Tclass.M2.Container M2.Container$T@@15)) M2.Container$T@@15)
 :qid |unknown.0:0|
 :skolemid |1554|
 :pattern ( (Tclass.M2.Container M2.Container$T@@15))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@12)) x@@12)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1091|
 :pattern ( ($Box T@@4 x@@12))
)))
(assert (forall ((M2.Container$T@@16 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.M2.Container? M2.Container$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) M2.Container.elems)) (TSeq M2.Container$T@@16)))
 :qid |unknown.0:0|
 :skolemid |1550|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) M2.Container.elems)) (Tclass.M2.Container? M2.Container$T@@16))
)))
(assert (forall ((M2.Container$T@@17 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.M2.Container? M2.Container$T@@17)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) M2.Container.Contents)) (TSet M2.Container$T@@17)))
 :qid |unknown.0:0|
 :skolemid |1618|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) M2.Container.Contents)) (Tclass.M2.Container? M2.Container$T@@17))
)))
(assert (forall ((s@@8 T@U) (n@@6 Int) (x@@13 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@8 n@@6) x@@13) (exists ((i@@2 Int) ) (!  (and (and (and (<= 0 n@@6) (<= n@@6 i@@2)) (< i@@2 (|Seq#Length| s@@8))) (= (|Seq#Index| s@@8 i@@2) x@@13))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |1303|
 :pattern ( (|Seq#Index| s@@8 i@@2))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |1304|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@8 n@@6) x@@13))
)))
(assert (forall ((bx@@5 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1098|
 :pattern ( ($IsBox bx@@5 (TSet t@@8)))
)))
(assert (forall ((bx@@6 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1101|
 :pattern ( ($IsBox bx@@6 (TSeq t@@9)))
)))
(assert (forall ((M2.Container$T@@18 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.M2.Container? M2.Container$T@@18)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.M2.Container? M2.Container$T@@18))))
 :qid |unknown.0:0|
 :skolemid |1547|
 :pattern ( ($IsBox bx@@7 (Tclass.M2.Container? M2.Container$T@@18)))
)))
(assert (forall ((M2.Container$T@@19 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.M2.Container M2.Container$T@@19)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.M2.Container M2.Container$T@@19))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($IsBox bx@@8 (Tclass.M2.Container M2.Container$T@@19)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@14 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@14))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@14))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1182|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@14)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@9 T@U) (n@@7 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@7) (<= n@@7 k@@2)) (< k@@2 (|Seq#Length| s@@9))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@7) (- k@@2 n@@7)) (|Seq#Index| s@@9 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |1314|
 :pattern ( (|Seq#Index| s@@9 k@@2) (|Seq#Drop| s@@9 n@@7))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@6 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1214|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1215|
 :pattern ( (|Set#Equal| a@@6 b@@3))
)))
(assert (forall ((s@@10 T@U) (m@@2 Int) (n@@8 Int) ) (!  (=> (and (and (<= 0 m@@2) (<= 0 n@@8)) (<= (+ m@@2 n@@8) (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Drop| s@@10 m@@2) n@@8) (|Seq#Drop| s@@10 (+ m@@2 n@@8))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |1323|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@10 m@@2) n@@8))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@9 Int) ) (!  (and (=> (< n@@9 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@9) (|Seq#Index| s0@@1 n@@9))) (=> (<= (|Seq#Length| s0@@1) n@@9) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@9) (|Seq#Index| s1@@1 (- n@@9 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |1293|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@9))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1084|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@16)) (Lit BoxType ($Box T@@5 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1082|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@16)))
)))
(assert (forall ((s@@11 T@U) ) (!  (=> (= (|Seq#Length| s@@11) 0) (= s@@11 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1288|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((s@@12 T@U) (n@@10 Int) ) (!  (=> (= n@@10 0) (= (|Seq#Take| s@@12 n@@10) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |1322|
 :pattern ( (|Seq#Take| s@@12 n@@10))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@12 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#11| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@12 $f@@2))  (=> (and (or (not (= $o@@12 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@12) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@12))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3874|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#11| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@12 $f@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((M2.Container$T@@20 T@U) ($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|M2.Container.Valid#canCall| M2.Container$T@@20 $Heap@@1 this@@4) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass.M2.Container M2.Container$T@@20)) ($IsAlloc refType this@@4 (Tclass.M2.Container M2.Container$T@@20) $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M2.Container.Repr)) ($Box refType this@@4)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M2.Container.Repr)) ($Box refType null))) (|M2.Container.Valid_k#canCall| M2.Container$T@@20 $Heap@@1 this@@4))) (= (M2.Container.Valid M2.Container$T@@20 $Heap@@1 this@@4)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M2.Container.Repr)) ($Box refType this@@4)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M2.Container.Repr)) ($Box refType null)))) (M2.Container.Valid_k M2.Container$T@@20 $Heap@@1 this@@4)))))
 :qid |unknown.0:0|
 :skolemid |1624|
 :pattern ( (M2.Container.Valid M2.Container$T@@20 $Heap@@1 this@@4) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1119|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1120|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun this@@5 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun M2.Container$T@@21 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call4formal@j#0@0| () Int)
(declare-fun |$rhs#0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call4formal@j#0| () Int)
(set-info :boogie-vc-id Impl$$M2.Container.Remove)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon3_correct  (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@5 M2.Container.Contents)) (=> (and (= |$rhs#0@0| (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@5) M2.Container.Contents)) (|Set#UnionOne| |Set#Empty| |t#0|))) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@5) M2.Container.Contents ($Box SetType |$rhs#0@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsAllocBox ($Box refType this@@5) (Tclass.M2.Container? M2.Container$T@@21) $Heap@3)) (and (|M2.Container.Valid_k_k#canCall| M2.Container$T@@21 $Heap@3 this@@5) (|M2.Container.Valid_k_k#canCall| M2.Container$T@@21 $Heap@3 this@@5))) (and (and (M2.Container.Valid_k_k M2.Container$T@@21 $Heap@3 this@@5) ($IsAllocBox ($Box refType this@@5) (Tclass.M2.Container? M2.Container$T@@21) $Heap@3)) (and (|M2.Container.Valid_k#canCall| M2.Container$T@@21 $Heap@3 this@@5) (|M2.Container.Valid_k#canCall| M2.Container$T@@21 $Heap@3 this@@5)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (M2.Container.Valid_k M2.Container$T@@21 $Heap@3 this@@5)) (=> (M2.Container.Valid_k M2.Container$T@@21 $Heap@3 this@@5) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType this@@5)))))) (=> (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType this@@5))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType null))))))) (=> (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType null)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (M2.Container.Valid_k M2.Container$T@@21 $Heap@3 this@@5))))) (=> (=> false (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@3 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@3 this@@5) (M2.Container.Valid_k M2.Container$T@@21 $Heap@3 this@@5)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (forall (($o@@13 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType $o@@13)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType $o@@13)))) (or (not (= $o@@13 null)) (not true)))
 :qid |CachedContainerdfy.44:12|
 :skolemid |1604|
 :pattern (  (or (not (= $o@@13 null)) (not true)))
)) (forall (($o@@14 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType $o@@14)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType $o@@14)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@14) alloc)))))
 :qid |CachedContainerdfy.44:12|
 :skolemid |1605|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@14) alloc)))
))))) (=> (=> false (and (forall (($o@@15 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType $o@@15)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType $o@@15)))) (or (not (= $o@@15 null)) (not true)))
 :qid |CachedContainerdfy.44:12|
 :skolemid |1604|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Repr)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType $o@@16)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@16) alloc)))))
 :qid |CachedContainerdfy.44:12|
 :skolemid |1605|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@16) alloc)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@5) M2.Container.Contents)) (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Contents)) (|Set#UnionOne| |Set#Empty| |t#0|))))))))))))))))))))
(let ((anon4_Else_correct  (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems))) |call4formal@j#0@0|) (=> (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 12) 2)) anon3_correct))))
(let ((anon4_Then_correct  (=> (< |call4formal@j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@5 M2.Container.elems))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@5 M2.Container.elems)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (and (<= 0 |call4formal@j#0@0|) (<= |call4formal@j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)))))) (=> (and (<= 0 |call4formal@j#0@0|) (<= |call4formal@j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= 0 (+ |call4formal@j#0@0| 1)) (<= (+ |call4formal@j#0@0| 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)))))) (=> (and (<= 0 (+ |call4formal@j#0@0| 1)) (<= (+ |call4formal@j#0@0| 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems))))) (=> (= |$rhs#0_0@0| (|Seq#Append| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)) |call4formal@j#0@0|) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)) (+ |call4formal@j#0@0| 1)))) (=> (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems ($Box SeqType |$rhs#0_0@0|)))) ($IsGoodHeap $Heap@1)) (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 8) 2))) anon3_correct)))))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#11| null $Heap@@2 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)))) (<= (LitInt 0) |call4formal@j#0|)) (and (=> (= (ControlFlow 0 13) (- 0 16)) (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType this@@5))))) (=> (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType this@@5)))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType null)))))) (=> (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (M2.Container.Valid_k M2.Container$T@@21 $Heap@@2 this@@5)))) (=> (=> (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (or (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (M2.Container.Valid_k M2.Container$T@@21 $Heap@@2 this@@5))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (<= (LitInt 0) |call4formal@j#0@0|) (<= |call4formal@j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)))))) (and (and (=> (< |call4formal@j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)) |call4formal@j#0@0|) |t#0|)) (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems))) |call4formal@j#0@0|) (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) M2.Container.elems)) |t#0|)))) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@17)))
 :qid |CachedContainerdfy.91:12|
 :skolemid |1572|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17))
)) ($HeapSucc $Heap@@2 $Heap@0)))) (and (=> (= (ControlFlow 0 13) 8) anon4_Then_correct) (=> (= (ControlFlow 0 13) 12) anon4_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 (Tclass.M2.Container M2.Container$T@@21)) ($IsAlloc refType this@@5 (Tclass.M2.Container M2.Container$T@@21) $Heap@@2)))) (=> (and (and (and ($IsBox |t#0| M2.Container$T@@21) ($IsAllocBox |t#0| M2.Container$T@@21 $Heap@@2)) (= 4 $FunctionContextHeight)) (and (and (|M2.Container.Valid#canCall| M2.Container$T@@21 $Heap@@2 this@@5) (and (M2.Container.Valid M2.Container$T@@21 $Heap@@2 this@@5) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType this@@5)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M2.Container.Repr)) ($Box refType null)))) (M2.Container.Valid_k M2.Container$T@@21 $Heap@@2 this@@5)))) (= (ControlFlow 0 17) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
