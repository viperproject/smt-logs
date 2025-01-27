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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##M3.Cache.None| () T@U)
(declare-fun Tagclass.M3.Cache () T@U)
(declare-fun |##M3.Cache.Some| () T@U)
(declare-fun class.M3.Container? () T@U)
(declare-fun Tagclass.M3.Container? () T@U)
(declare-fun Tagclass.M3.Container () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Cache () T@U)
(declare-fun tytagFamily$Container () T@U)
(declare-fun field$cache () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$elems () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun M3.Container.Valid_k_k (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M3.Container (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M3.Container.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun M3.Container.Valid_k (T@U T@U T@U) Bool)
(declare-fun M3.Container.Valid (T@U T@U T@U) Bool)
(declare-fun Tclass.M3.Container? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M3.Cache.None| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |M3.Container.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.Cache (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M3.Container.Contents () T@U)
(declare-fun M3.Container.cache () T@U)
(declare-fun M3.Container.elems () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#M3.Cache.Some| (Int T@U) T@U)
(declare-fun M3.Cache.None_q (T@U) Bool)
(declare-fun M3.Cache.Some_q (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |M3.Container.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |M3.Container.Valid_k_k#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun M3.Cache.index (T@U) Int)
(declare-fun M3.Cache.value (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.M3.Cache_0 (T@U) T@U)
(declare-fun Tclass.M3.Container?_0 (T@U) T@U)
(declare-fun Tclass.M3.Container_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##M3.Cache.None| Tagclass.M3.Cache |##M3.Cache.Some| class.M3.Container? Tagclass.M3.Container? Tagclass.M3.Container tytagFamily$nat tytagFamily$object tytagFamily$Cache tytagFamily$Container field$cache field$Repr field$elems field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1759|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1760|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1975|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1758|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#2|))  (and ($IsBox |$y#2| |l#0|) (|Seq#Contains| |l#1| |$y#2|)))
 :qid |unknown.0:0|
 :skolemid |3874|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#2|))
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
(assert (forall ((M3.Container$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.M3.Container M3.Container$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) M3.Container.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |2141|
)) (= (M3.Container.Valid_k_k M3.Container$T $h0 this) (M3.Container.Valid_k_k M3.Container$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |2145|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M3.Container.Valid_k_k M3.Container$T $h1 this))
)))
(assert (forall ((M3.Container$T@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.M3.Container M3.Container$T@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) M3.Container.Repr)) ($Box refType $o@@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |2218|
)) (= (M3.Container.Valid_k M3.Container$T@@0 $h0@@0 this@@0) (M3.Container.Valid_k M3.Container$T@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |2219|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M3.Container.Valid_k M3.Container$T@@0 $h1@@0 this@@0))
)))
(assert (forall ((M3.Container$T@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.M3.Container M3.Container$T@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (or (= $o@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@1) M3.Container.Repr)) ($Box refType $o@@1)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |2250|
)) (= (M3.Container.Valid M3.Container$T@@1 $h0@@1 this@@1) (M3.Container.Valid M3.Container$T@@1 $h1@@1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (M3.Container.Valid M3.Container$T@@1 $h1@@1 this@@1))
)))
(assert (forall ((M3.Container$T@@2 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.M3.Container M3.Container$T@@2) $h@@0) ($IsAlloc refType |c#0| (Tclass.M3.Container? M3.Container$T@@2) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2259|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M3.Container M3.Container$T@@2) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M3.Container? M3.Container$T@@2) $h@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1755|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@5 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@5))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |1862|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M3.Cache.None|) |##M3.Cache.None|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((M3.Container$T@@3 T@U) ($Heap T@U) (this@@2 T@U) ) (!  (=> (or (|M3.Container.Valid#canCall| M3.Container$T@@3 $Heap this@@2) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.M3.Container M3.Container$T@@3)) ($IsAlloc refType this@@2 (Tclass.M3.Container M3.Container$T@@3) $Heap)))))) (=> (M3.Container.Valid M3.Container$T@@3 $Heap this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@2) M3.Container.Repr)) ($Box refType this@@2))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( (M3.Container.Valid M3.Container$T@@3 $Heap this@@2))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((M3.Cache$T T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T) $h@@2))
 :qid |unknown.0:0|
 :skolemid |2115|
 :pattern ( ($IsAlloc DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T) $h@@2))
)))
(assert (= (FDim M3.Container.Repr) 0))
(assert (= (FieldOfDecl class.M3.Container? field$Repr) M3.Container.Repr))
(assert ($IsGhostField M3.Container.Repr))
(assert (= (FDim M3.Container.Contents) 0))
(assert (= (FieldOfDecl class.M3.Container? field$Contents) M3.Container.Contents))
(assert ($IsGhostField M3.Container.Contents))
(assert (forall ((M3.Container$T@@4 T@U) ($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.M3.Container? M3.Container$T@@4) $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2138|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.M3.Container? M3.Container$T@@4) $h@@3))
)))
(assert (= (FDim M3.Container.cache) 0))
(assert (= (FieldOfDecl class.M3.Container? field$cache) M3.Container.cache))
(assert  (not ($IsGhostField M3.Container.cache)))
(assert (= (FDim M3.Container.elems) 0))
(assert (= (FieldOfDecl class.M3.Container? field$elems) M3.Container.elems))
(assert  (not ($IsGhostField M3.Container.elems)))
(assert (forall ((M3.Cache$T@@0 T@U) ) (! ($Is DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T@@0))
 :qid |unknown.0:0|
 :skolemid |2114|
 :pattern ( ($Is DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T@@0)))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1748|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1749|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1647|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1645|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((M3.Cache$T@@1 T@U) (|a#18#0#0| Int) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0| |a#18#1#0|) (Tclass.M3.Cache M3.Cache$T@@1))  (and ($Is intType (int_2_U |a#18#0#0|) Tclass._System.nat) ($IsBox |a#18#1#0| M3.Cache$T@@1)))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($Is DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0| |a#18#1#0|) (Tclass.M3.Cache M3.Cache$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (M3.Cache.None_q d) (= (DatatypeCtorId d) |##M3.Cache.None|))
 :qid |unknown.0:0|
 :skolemid |2109|
 :pattern ( (M3.Cache.None_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M3.Cache.Some_q d@@0) (= (DatatypeCtorId d@@0) |##M3.Cache.Some|))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( (M3.Cache.Some_q d@@0))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1656|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1783|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M3.Cache.Some_q d@@1) (exists ((|a#17#0#0| Int) (|a#17#1#0| T@U) ) (! (= d@@1 (|#M3.Cache.Some| |a#17#0#0| |a#17#1#0|))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2118|
)))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( (M3.Cache.Some_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M3.Cache.None_q d@@2) (= d@@2 |#M3.Cache.None|))
 :qid |unknown.0:0|
 :skolemid |2110|
 :pattern ( (M3.Cache.None_q d@@2))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1676|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1677|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (= (Ctor SeqType) 9))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M3.Container$T@@5 T@U) ($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|M3.Container.Valid_k#canCall| M3.Container$T@@5 $Heap@@0 this@@3) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.M3.Container M3.Container$T@@5)) ($IsAlloc refType this@@3 (Tclass.M3.Container M3.Container$T@@5) $Heap@@0)))))) (and (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.Contents)) (|Set#FromBoogieMap| (|lambda#1| M3.Container$T@@5 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems))))) (=> (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |i#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |j#0|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |2223|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |j#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |i#0|))
)) (|M3.Container.Valid_k_k#canCall| M3.Container$T@@5 $Heap@@0 this@@3))) (= (M3.Container.Valid_k M3.Container$T@@5 $Heap@@0 this@@3)  (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.Contents)) (|Set#FromBoogieMap| (|lambda#1| M3.Container$T@@5 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems))))) (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| |j#0@@0|)) (< |j#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |i#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |j#0@@0|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |2222|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |j#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) M3.Container.elems)) |i#0@@0|))
))) (M3.Container.Valid_k_k M3.Container$T@@5 $Heap@@0 this@@3)))))
 :qid |unknown.0:0|
 :skolemid |2224|
 :pattern ( (M3.Container.Valid_k M3.Container$T@@5 $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((M3.Container$T@@6 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.M3.Container M3.Container$T@@6))  (and ($Is refType |c#0@@1| (Tclass.M3.Container? M3.Container$T@@6)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($Is refType |c#0@@1| (Tclass.M3.Container M3.Container$T@@6)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.M3.Container? M3.Container$T@@6)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1669|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1741|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1740|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((M3.Cache$T@@2 T@U) ) (!  (and (= (Tag (Tclass.M3.Cache M3.Cache$T@@2)) Tagclass.M3.Cache) (= (TagFamily (Tclass.M3.Cache M3.Cache$T@@2)) tytagFamily$Cache))
 :qid |unknown.0:0|
 :skolemid |2111|
 :pattern ( (Tclass.M3.Cache M3.Cache$T@@2))
)))
(assert (forall ((M3.Container$T@@7 T@U) ) (!  (and (= (Tag (Tclass.M3.Container? M3.Container$T@@7)) Tagclass.M3.Container?) (= (TagFamily (Tclass.M3.Container? M3.Container$T@@7)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |2134|
 :pattern ( (Tclass.M3.Container? M3.Container$T@@7))
)))
(assert (forall ((M3.Container$T@@8 T@U) ) (!  (and (= (Tag (Tclass.M3.Container M3.Container$T@@8)) Tagclass.M3.Container) (= (TagFamily (Tclass.M3.Container M3.Container$T@@8)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |2142|
 :pattern ( (Tclass.M3.Container M3.Container$T@@8))
)))
(assert (forall ((M3.Container$T@@9 T@U) ($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.M3.Container? M3.Container$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M3.Container.cache)) (Tclass.M3.Cache M3.Container$T@@9) $h@@5))
 :qid |unknown.0:0|
 :skolemid |2140|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M3.Container.cache)) (Tclass.M3.Container? M3.Container$T@@9))
)))
(assert (forall ((M3.Container$T@@10 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.M3.Container? M3.Container$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M3.Container.elems)) (TSeq M3.Container$T@@10) $h@@6))
 :qid |unknown.0:0|
 :skolemid |2217|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M3.Container.elems)) (Tclass.M3.Container? M3.Container$T@@10))
)))
(assert (forall ((M3.Container$T@@11 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.M3.Container? M3.Container$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M3.Container.Contents)) (TSet M3.Container$T@@11) $h@@7))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M3.Container.Contents)) (Tclass.M3.Container? M3.Container$T@@11))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1973|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((M3.Container$T@@12 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass.M3.Container? M3.Container$T@@12))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass.M3.Container? M3.Container$T@@12))))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( ($Is refType $o@@7 (Tclass.M3.Container? M3.Container$T@@12)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((M3.Container$T@@13 T@U) ($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.M3.Container? M3.Container$T@@13)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M3.Container.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) M3.Container.Repr)) (Tclass.M3.Container? M3.Container$T@@13))
)))
(assert (forall ((M3.Container$T@@14 T@U) ($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.M3.Container? M3.Container$T@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M3.Container.Repr)) (TSet Tclass._System.object?) $h@@9))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) M3.Container.Repr)) (Tclass.M3.Container? M3.Container$T@@14))
)))
(assert (forall ((s T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s x@@9) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |1860|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |1861|
 :pattern ( (|Seq#Contains| s x@@9))
)))
(assert (forall ((M3.Cache$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)) (or (M3.Cache.None_q d@@3) (M3.Cache.Some_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2130|
 :pattern ( (M3.Cache.Some_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)))
 :pattern ( (M3.Cache.None_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)))
)))
(assert (forall ((d@@4 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M3.Cache.Some_q d@@4) (exists ((M3.Cache$T@@4 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass.M3.Cache M3.Cache$T@@4) $h@@10)
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass.M3.Cache M3.Cache$T@@4) $h@@10))
)))) ($IsAlloc intType (int_2_U (M3.Cache.index d@@4)) Tclass._System.nat $h@@10))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Cache.index d@@4)) Tclass._System.nat $h@@10))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3.Container$T@@15 T@U) ($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|M3.Container.Valid_k_k#canCall| M3.Container$T@@15 $Heap@@1 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass.M3.Container M3.Container$T@@15)) ($IsAlloc refType this@@4 (Tclass.M3.Container M3.Container$T@@15) $Heap@@1)))))) (= (M3.Container.Valid_k_k M3.Container$T@@15 $Heap@@1 this@@4)  (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.cache))) (and (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.elems)))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.elems)) (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.cache)))) (M3.Cache.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) M3.Container.cache))))))))
 :qid |unknown.0:0|
 :skolemid |2148|
 :pattern ( (M3.Container.Valid_k_k M3.Container$T@@15 $Heap@@1 this@@4) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1780|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1747|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1737|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1668|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1851|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1697|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1698|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#16#0#0| Int) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Cache.Some| |a#16#0#0| |a#16#1#0|)) |##M3.Cache.Some|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2116|
 :pattern ( (|#M3.Cache.Some| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| T@U) ) (! (= (M3.Cache.index (|#M3.Cache.Some| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2126|
 :pattern ( (|#M3.Cache.Some| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#21#0#0| Int) (|a#21#1#0| T@U) ) (! (= (M3.Cache.value (|#M3.Cache.Some| |a#21#0#0| |a#21#1#0|)) |a#21#1#0|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2127|
 :pattern ( (|#M3.Cache.Some| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1703|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1704|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1631|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1632|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1637|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1638|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((M3.Cache$T@@5 T@U) ) (! (= (Tclass.M3.Cache_0 (Tclass.M3.Cache M3.Cache$T@@5)) M3.Cache$T@@5)
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( (Tclass.M3.Cache M3.Cache$T@@5))
)))
(assert (forall ((M3.Container$T@@16 T@U) ) (! (= (Tclass.M3.Container?_0 (Tclass.M3.Container? M3.Container$T@@16)) M3.Container$T@@16)
 :qid |unknown.0:0|
 :skolemid |2135|
 :pattern ( (Tclass.M3.Container? M3.Container$T@@16))
)))
(assert (forall ((M3.Container$T@@17 T@U) ) (! (= (Tclass.M3.Container_0 (Tclass.M3.Container M3.Container$T@@17)) M3.Container$T@@17)
 :qid |unknown.0:0|
 :skolemid |2143|
 :pattern ( (Tclass.M3.Container M3.Container$T@@17))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1655|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| T@U) ) (! (< (BoxRank |a#22#1#0|) (DtRank (|#M3.Cache.Some| |a#22#0#0| |a#22#1#0|)))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2128|
 :pattern ( (|#M3.Cache.Some| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((d@@5 T@U) (M3.Cache$T@@6 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M3.Cache.Some_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.M3.Cache M3.Cache$T@@6) $h@@11))) ($IsAllocBox (M3.Cache.value d@@5) M3.Cache$T@@6 $h@@11))
 :qid |unknown.0:0|
 :skolemid |2124|
 :pattern ( ($IsAllocBox (M3.Cache.value d@@5) M3.Cache$T@@6 $h@@11))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@11 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@11 $f@@2))  (=> (and (or (not (= $o@@11 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@11) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3875|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@11 $f@@2))
)))
(assert (forall ((M3.Container$T@@18 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass.M3.Container? M3.Container$T@@18)))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) M3.Container.cache)) (Tclass.M3.Cache M3.Container$T@@18)))
 :qid |unknown.0:0|
 :skolemid |2139|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) M3.Container.cache)) (Tclass.M3.Container? M3.Container$T@@18))
)))
(assert (forall ((M3.Container$T@@19 T@U) ($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass.M3.Container? M3.Container$T@@19)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) M3.Container.elems)) (TSeq M3.Container$T@@19)))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) M3.Container.elems)) (Tclass.M3.Container? M3.Container$T@@19))
)))
(assert (forall ((M3.Container$T@@20 T@U) ($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass.M3.Container? M3.Container$T@@20)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) M3.Container.Contents)) (TSet M3.Container$T@@20)))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) M3.Container.Contents)) (Tclass.M3.Container? M3.Container$T@@20))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1714|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@6 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1662|
 :pattern ( ($IsBox bx@@6 (TSet t@@7)))
)))
(assert (forall ((bx@@7 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1665|
 :pattern ( ($IsBox bx@@7 (TSeq t@@8)))
)))
(assert (forall ((M3.Cache$T@@7 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.M3.Cache M3.Cache$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass.M3.Cache M3.Cache$T@@7))))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsBox bx@@8 (Tclass.M3.Cache M3.Cache$T@@7)))
)))
(assert (forall ((M3.Container$T@@21 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.M3.Container? M3.Container$T@@21)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.M3.Container? M3.Container$T@@21))))
 :qid |unknown.0:0|
 :skolemid |2136|
 :pattern ( ($IsBox bx@@9 (Tclass.M3.Container? M3.Container$T@@21)))
)))
(assert (forall ((M3.Container$T@@22 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.M3.Container M3.Container$T@@22)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.M3.Container M3.Container$T@@22))))
 :qid |unknown.0:0|
 :skolemid |2144|
 :pattern ( ($IsBox bx@@10 (Tclass.M3.Container M3.Container$T@@22)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@11 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1746|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#M3.Cache.None| (Lit DatatypeTypeType |#M3.Cache.None|)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1778|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1779|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| T@U) ) (! (= (|#M3.Cache.Some| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)) (Lit DatatypeTypeType (|#M3.Cache.Some| |a#19#0#0| |a#19#1#0|)))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2125|
 :pattern ( (|#M3.Cache.Some| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1648|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@13)) (Lit BoxType ($Box T@@5 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1646|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@13)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1852|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((M3.Container$T@@23 T@U) ($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|M3.Container.Valid#canCall| M3.Container$T@@23 $Heap@@2 this@@5) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 (Tclass.M3.Container M3.Container$T@@23)) ($IsAlloc refType this@@5 (Tclass.M3.Container M3.Container$T@@23) $Heap@@2)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M3.Container.Repr)) ($Box refType this@@5)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M3.Container.Repr)) ($Box refType null))) (|M3.Container.Valid_k#canCall| M3.Container$T@@23 $Heap@@2 this@@5))) (= (M3.Container.Valid M3.Container$T@@23 $Heap@@2 this@@5)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M3.Container.Repr)) ($Box refType this@@5)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) M3.Container.Repr)) ($Box refType null)))) (M3.Container.Valid_k M3.Container$T@@23 $Heap@@2 this@@5)))))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( (M3.Container.Valid M3.Container$T@@23 $Heap@@2 this@@5) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((M3.Cache$T@@8 T@U) (|a#18#0#0@@0| Int) (|a#18#1#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.M3.Cache M3.Cache$T@@8) $h@@15)  (and ($IsAlloc intType (int_2_U |a#18#0#0@@0|) Tclass._System.nat $h@@15) ($IsAllocBox |a#18#1#0@@0| M3.Cache$T@@8 $h@@15))))
 :qid |unknown.0:0|
 :skolemid |2121|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.M3.Cache M3.Cache$T@@8) $h@@15))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1683|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1684|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1897|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun this.cache@0 () T@U)
(declare-fun this.elems@0 () T@U)
(declare-fun this.Contents@0 () T@U)
(declare-fun this.Repr@0 () T@U)
(declare-fun this@@6 () T@U)
(declare-fun M3.Container$T@@24 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id Impl$$M3.Container.__ctor)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@3 alloc false)) (=> (and (and (= this.cache@0 (Lit DatatypeTypeType |#M3.Cache.None|)) (= this.elems@0 (Lit SeqType |Seq#Empty|))) (and (= this.Contents@0 (Lit SetType |Set#Empty|)) (= this.Repr@0 (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))))) (=> (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass.M3.Container? M3.Container$T@@24))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) alloc))))) (and (= ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) M3.Container.cache)) this.cache@0) (= ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) M3.Container.elems)) this.elems@0))) (and (and (and (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) M3.Container.Contents)) this.Contents@0) (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) M3.Container.Repr)) this.Repr@0)) (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0))) (and (and ($IsHeapAnchor $Heap@0) ($IsAllocBox ($Box refType this@@6) (Tclass.M3.Container? M3.Container$T@@24) $Heap@0)) (and (|M3.Container.Valid_k_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (|M3.Container.Valid_k_k#canCall| M3.Container$T@@24 $Heap@0 this@@6))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (M3.Container.Valid_k_k M3.Container$T@@24 $Heap@0 this@@6)) (=> (M3.Container.Valid_k_k M3.Container$T@@24 $Heap@0 this@@6) (=> (and (and ($IsAllocBox ($Box refType this@@6) (Tclass.M3.Container? M3.Container$T@@24) $Heap@0) (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6)) (and (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType this@@6)))))) (=> (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType this@@6))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType null))))))) (=> (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType null)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Contents)) (|Set#FromBoogieMap| (|lambda#1| M3.Container$T@@24 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems))))))))))) (=> (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Contents)) (|Set#FromBoogieMap| (|lambda#1| M3.Container$T@@24 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |i#1|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |j#1|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |2157|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |j#1|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |i#1|))
)))))))) (=> (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (forall ((|i#1@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |j#1@@0|)) (< |j#1@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |i#1@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |j#1@@0|))) (not true)))
 :qid |CachedContainerdfy.86:15|
 :skolemid |2157|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |j#1@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.elems)) |i#1@@0|))
))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (M3.Container.Valid_k_k M3.Container$T@@24 $Heap@0 this@@6))))))) (=> (=> false (=> (|M3.Container.Valid#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid M3.Container$T@@24 $Heap@0 this@@6) (=> (|M3.Container.Valid_k#canCall| M3.Container$T@@24 $Heap@0 this@@6) (or (M3.Container.Valid_k M3.Container$T@@24 $Heap@0 this@@6) (M3.Container.Valid_k_k M3.Container$T@@24 $Heap@0 this@@6)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (forall (($o@@15 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@15)) (or (not (= $o@@15 null)) (not true)))
 :qid |CachedContainerdfy.40:5|
 :skolemid |2159|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@16)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@16) alloc)))))
 :qid |CachedContainerdfy.40:5|
 :skolemid |2160|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@16)))
))))) (=> (=> false (and (forall (($o@@17 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@17)) (or (not (= $o@@17 null)) (not true)))
 :qid |CachedContainerdfy.40:5|
 :skolemid |2159|
 :pattern (  (or (not (= $o@@17 null)) (not true)))
)) (forall (($o@@18 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@18)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@18) alloc)))))
 :qid |CachedContainerdfy.40:5|
 :skolemid |2160|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Repr)) ($Box refType $o@@18)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@6) M3.Container.Contents)) |Set#Empty|)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 10) 2))) anon0_correct)))
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
