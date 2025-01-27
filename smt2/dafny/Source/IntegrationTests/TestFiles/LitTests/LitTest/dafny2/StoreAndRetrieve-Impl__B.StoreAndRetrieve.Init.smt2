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
(declare-fun class.B.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.B.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.B.StoreAndRetrieve () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$StoreAndRetrieve () T@U)
(declare-fun field$arr () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun B.StoreAndRetrieve.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.B.StoreAndRetrieve (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun B.StoreAndRetrieve.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun B.StoreAndRetrieve.Valid (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.B.StoreAndRetrieve? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |B.StoreAndRetrieve.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun B.StoreAndRetrieve.Contents () T@U)
(declare-fun B.StoreAndRetrieve.arr () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun dtype (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.B.StoreAndRetrieve?_0 (T@U) T@U)
(declare-fun Tclass.B.StoreAndRetrieve_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |B.StoreAndRetrieve.Valid_k#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class.B.StoreAndRetrieve? Tagclass.B.StoreAndRetrieve? Tagclass.B.StoreAndRetrieve tytagFamily$object tytagFamily$StoreAndRetrieve field$arr field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1183|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1184|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1182|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |3686|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$y#0|))
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
(assert (forall ((B.StoreAndRetrieve$Thing T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) B.StoreAndRetrieve.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1540|
)) (= (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing $h0 this) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing $h1 this))))
 :qid |unknown.0:0|
 :skolemid |1544|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing $h1 this))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) B.StoreAndRetrieve.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1584|
)) (= (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@0 $h0@@0 this@@0) (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |1585|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@1) $h) ($IsAlloc refType |c#0| (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@1) $h))
 :qid |unknown.0:0|
 :skolemid |1593|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@1) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1179|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@5 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@5))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |1286|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((B.StoreAndRetrieve$Thing@@2 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@2 $Heap this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@2)) ($IsAlloc refType this@@1 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@2) $Heap)))))) (=> (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@2 $Heap this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) B.StoreAndRetrieve.Repr)) ($Box refType this@@1))))
 :qid |unknown.0:0|
 :skolemid |1586|
 :pattern ( (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@2 $Heap this@@1))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1405|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim B.StoreAndRetrieve.Repr) 0))
(assert (= (FieldOfDecl class.B.StoreAndRetrieve? field$Repr) B.StoreAndRetrieve.Repr))
(assert ($IsGhostField B.StoreAndRetrieve.Repr))
(assert (= (FDim B.StoreAndRetrieve.Contents) 0))
(assert (= (FieldOfDecl class.B.StoreAndRetrieve? field$Contents) B.StoreAndRetrieve.Contents))
(assert ($IsGhostField B.StoreAndRetrieve.Contents))
(assert (forall ((B.StoreAndRetrieve$Thing@@3 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@3) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1537|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@3) $h@@1))
)))
(assert (= (FDim B.StoreAndRetrieve.arr) 0))
(assert (= (FieldOfDecl class.B.StoreAndRetrieve? field$arr) B.StoreAndRetrieve.arr))
(assert  (not ($IsGhostField B.StoreAndRetrieve.arr)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1402|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1172|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1173|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1069|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1080|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1207|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1100|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1101|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((B.StoreAndRetrieve$Thing@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@4))  (and ($Is refType |c#0@@1| (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1592|
 :pattern ( ($Is refType |c#0@@1| (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1093|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1165|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1164|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@5 T@U) ) (!  (and (= (Tag (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@5)) Tagclass.B.StoreAndRetrieve?) (= (TagFamily (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@5)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |1533|
 :pattern ( (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@5))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@6 T@U) ) (!  (and (= (Tag (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@6)) Tagclass.B.StoreAndRetrieve) (= (TagFamily (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@6)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |1541|
 :pattern ( (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@6))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((B.StoreAndRetrieve$Thing@@7 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) B.StoreAndRetrieve.arr)) (TSeq B.StoreAndRetrieve$Thing@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1539|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) B.StoreAndRetrieve.arr)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@7))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@8 T@U) ($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) B.StoreAndRetrieve.Contents)) (TSet B.StoreAndRetrieve$Thing@@8) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1583|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) B.StoreAndRetrieve.Contents)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@8))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1400|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1403|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@9 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@9))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@9))))
 :qid |unknown.0:0|
 :skolemid |1536|
 :pattern ( ($Is refType $o@@5 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@9)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1404|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@10 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) B.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1590|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) B.StoreAndRetrieve.Repr)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@10))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@11 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) B.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?) $h@@6))
 :qid |unknown.0:0|
 :skolemid |1591|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) B.StoreAndRetrieve.Repr)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@11))
)))
(assert (forall ((s T@U) (x@@8 T@U) ) (! (= (|Seq#Contains| s x@@8) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@8))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |1284|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |1285|
 :pattern ( (|Seq#Contains| s x@@8))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1204|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1171|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1161|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1092|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1275|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1121|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1122|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1127|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1128|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1055|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1056|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1061|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1062|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@12 T@U) ) (! (= (Tclass.B.StoreAndRetrieve?_0 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@12)) B.StoreAndRetrieve$Thing@@12)
 :qid |unknown.0:0|
 :skolemid |1534|
 :pattern ( (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@12))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@13 T@U) ) (! (= (Tclass.B.StoreAndRetrieve_0 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@13)) B.StoreAndRetrieve$Thing@@13)
 :qid |unknown.0:0|
 :skolemid |1542|
 :pattern ( (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@13))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1079|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@9 $f@@1))  (=> (and (or (not (= $o@@9 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3688|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@9 $f@@1))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@14 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@14)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) B.StoreAndRetrieve.arr)) (TSeq B.StoreAndRetrieve$Thing@@14)))
 :qid |unknown.0:0|
 :skolemid |1538|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) B.StoreAndRetrieve.arr)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@14))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@15 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@15)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) B.StoreAndRetrieve.Contents)) (TSet B.StoreAndRetrieve$Thing@@15)))
 :qid |unknown.0:0|
 :skolemid |1582|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) B.StoreAndRetrieve.Contents)) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@15))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1086|
 :pattern ( ($IsBox bx@@5 (TSet t@@7)))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1089|
 :pattern ( ($IsBox bx@@6 (TSeq t@@8)))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@16 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@16)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@16))))
 :qid |unknown.0:0|
 :skolemid |1535|
 :pattern ( ($IsBox bx@@7 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@16)))
)))
(assert (forall ((B.StoreAndRetrieve$Thing@@17 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@17)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@17))))
 :qid |unknown.0:0|
 :skolemid |1543|
 :pattern ( ($IsBox bx@@8 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@17)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@10 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1170|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@10)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1202|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1203|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1070|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1276|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((B.StoreAndRetrieve$Thing@@18 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@18 $Heap@@0 this@@2) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@18)) ($IsAlloc refType this@@2 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@18) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) B.StoreAndRetrieve.Repr)) ($Box refType this@@2)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) B.StoreAndRetrieve.Repr)) ($Box refType null))) (|B.StoreAndRetrieve.Valid_k#canCall| B.StoreAndRetrieve$Thing@@18 $Heap@@0 this@@2))) (= (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@18 $Heap@@0 this@@2)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) B.StoreAndRetrieve.Repr)) ($Box refType this@@2)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) B.StoreAndRetrieve.Repr)) ($Box refType null)))) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@18 $Heap@@0 this@@2)))))
 :qid |unknown.0:0|
 :skolemid |1588|
 :pattern ( (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@18 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((B.StoreAndRetrieve$Thing@@19 T@U) ($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|B.StoreAndRetrieve.Valid_k#canCall| B.StoreAndRetrieve$Thing@@19 $Heap@@1 this@@3) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@19)) ($IsAlloc refType this@@3 (Tclass.B.StoreAndRetrieve B.StoreAndRetrieve$Thing@@19) $Heap@@1)))))) (= (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@19 $Heap@@1 this@@3) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) B.StoreAndRetrieve.Contents)) (|Set#FromBoogieMap| (|lambda#0| B.StoreAndRetrieve$Thing@@19 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) B.StoreAndRetrieve.arr)))))))
 :qid |unknown.0:0|
 :skolemid |1547|
 :pattern ( (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@19 $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1107|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1108|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun this.arr@0 () T@U)
(declare-fun this.Contents@0 () T@U)
(declare-fun this.Repr@0 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun B.StoreAndRetrieve$Thing@@20 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id Impl$$B.StoreAndRetrieve.Init)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (and (and (and (= $_ModifiesFrame@0 (|lambda#3| null $Heap@@2 alloc false)) (= this.arr@0 (Lit SeqType |Seq#Empty|))) (and (= this.Contents@0 (Lit SetType |Set#Empty|)) (= this.Repr@0 (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))))) (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@20))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) alloc)))) (= ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) B.StoreAndRetrieve.arr)) this.arr@0)))) (and (and (and (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) B.StoreAndRetrieve.Contents)) this.Contents@0) (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) B.StoreAndRetrieve.Repr)) this.Repr@0)) (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0))) (and (and ($IsHeapAnchor $Heap@0) ($IsAllocBox ($Box refType this@@4) (Tclass.B.StoreAndRetrieve? B.StoreAndRetrieve$Thing@@20) $Heap@0)) (and (|B.StoreAndRetrieve.Valid_k#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (|B.StoreAndRetrieve.Valid_k#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4)) (=> (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType this@@4)))))) (=> (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType null))))))) (=> (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType null)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4))))) (=> (=> false (=> (|B.StoreAndRetrieve.Valid#canCall| B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (or (B.StoreAndRetrieve.Valid B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4) (B.StoreAndRetrieve.Valid_k B.StoreAndRetrieve$Thing@@20 $Heap@0 this@@4)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (forall (($o@@12 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@12)) (or (not (= $o@@12 null)) (not true)))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |1554|
 :pattern (  (or (not (= $o@@12 null)) (not true)))
)) (forall (($o@@13 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@13)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@13) alloc)))))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |1555|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@13)))
))))) (=> (=> false (and (forall (($o@@14 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@14)) (or (not (= $o@@14 null)) (not true)))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |1554|
 :pattern (  (or (not (= $o@@14 null)) (not true)))
)) (forall (($o@@15 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@15)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@15) alloc)))))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |1555|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Repr)) ($Box refType $o@@15)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) B.StoreAndRetrieve.Contents)) |Set#Empty|))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct)))
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
