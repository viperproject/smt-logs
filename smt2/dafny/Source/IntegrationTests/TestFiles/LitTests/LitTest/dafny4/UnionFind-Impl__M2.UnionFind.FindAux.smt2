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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M2.Element () T@U)
(declare-fun Tagclass.M2.Contents () T@U)
(declare-fun Tagclass.M2.Element? () T@U)
(declare-fun class.M2.UnionFind? () T@U)
(declare-fun Tagclass.M2.UnionFind? () T@U)
(declare-fun Tagclass.M2.UnionFind () T@U)
(declare-fun |##M2.Contents.Root| () T@U)
(declare-fun |##M2.Contents.Link| () T@U)
(declare-fun class.M2.Element? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Element () T@U)
(declare-fun tytagFamily$Contents () T@U)
(declare-fun tytagFamily$UnionFind () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$M () T@U)
(declare-fun field$c () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.UnionFind.ValidM1 (T@U T@U) Bool)
(declare-fun |M2.UnionFind.ValidM1#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M2.UnionFind () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M2.UnionFind.M () T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |lambda#13| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Tclass.M2.UnionFind? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M2.Element? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M2.Element () T@U)
(declare-fun M2.UnionFind.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun M2.__default.GoodCMap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M2.__default.GoodCMap#canCall| (T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M2.Contents () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun M2.Contents.Link_q (T@U) Bool)
(declare-fun M2.Contents.next (T@U) T@U)
(declare-fun M2.Element.c () T@U)
(declare-fun M2.UnionFind.Collect (T@U T@U) T@U)
(declare-fun |M2.UnionFind.Collect#canCall| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#14| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M2.Contents.Root_q (T@U) Bool)
(declare-fun M2.UnionFind.Valid (T@U T@U) Bool)
(declare-fun |M2.UnionFind.Valid#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#M2.Contents.Root| (Int) T@U)
(declare-fun |#M2.Contents.Link| (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M2.UnionFind.Reaches (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |M2.UnionFind.Reaches#canCall| (T@U Int T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun M2.Contents.depth (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMap alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M2.Element Tagclass.M2.Contents Tagclass.M2.Element? class.M2.UnionFind? Tagclass.M2.UnionFind? Tagclass.M2.UnionFind |##M2.Contents.Root| |##M2.Contents.Link| class.M2.Element? tytagFamily$nat tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$Element tytagFamily$Contents tytagFamily$UnionFind field$Repr field$M field$c)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor MapType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|M2.UnionFind.ValidM1#canCall| $Heap this) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M2.UnionFind) ($IsAlloc refType this Tclass.M2.UnionFind $Heap)))))) (=> (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M2.UnionFind.M)) |Map#Empty|) (M2.UnionFind.ValidM1 $Heap this)))
 :qid |UnionFinddfy.54:21|
 :skolemid |2084|
 :pattern ( (M2.UnionFind.ValidM1 $Heap this))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1669|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#13| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |UnionFinddfy.43:9|
 :skolemid |4522|
 :pattern ( (MapType0Select BoxType boolType (|lambda#13| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |1610|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |1611|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1792|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M2.UnionFind?)  (or (= $o null) (= (dtype $o) Tclass.M2.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |1878|
 :pattern ( ($Is refType $o Tclass.M2.UnionFind?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M2.Element?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M2.Element?)))
 :qid |unknown.0:0|
 :skolemid |2354|
 :pattern ( ($Is refType $o@@0 Tclass.M2.Element?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1675|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M2.UnionFind $h@@1) ($IsAlloc refType |c#0@@0| Tclass.M2.UnionFind? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2330|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M2.UnionFind $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M2.UnionFind? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M2.Element $h@@2) ($IsAlloc refType |c#0@@1| Tclass.M2.Element? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2359|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M2.Element $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M2.Element? $h@@2))
)))
(assert (= (FDim M2.UnionFind.Repr) 0))
(assert (= (FieldOfDecl class.M2.UnionFind? field$Repr) M2.UnionFind.Repr))
(assert ($IsGhostField M2.UnionFind.Repr))
(assert (= (FDim M2.UnionFind.M) 0))
(assert (= (FieldOfDecl class.M2.UnionFind? field$M) M2.UnionFind.M))
(assert ($IsGhostField M2.UnionFind.M))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1780|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0| T@U) ) (!  (=> (or (|M2.__default.GoodCMap#canCall| (Lit MapType |C#0|)) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0| (TMap Tclass.M2.Element Tclass.M2.Contents)))) (= (M2.__default.GoodCMap (Lit MapType |C#0|)) (forall ((|f#1| T@U) ) (!  (=> ($Is refType |f#1| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType |f#1|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))) (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1867|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0|) ($Box refType |f#1|))))
))))
 :qid |UnionFinddfy.48:28|
 :weight 3
 :skolemid |1868|
 :pattern ( (M2.__default.GoodCMap (Lit MapType |C#0|)))
))))
(assert (= (FDim M2.Element.c) 0))
(assert (= (FieldOfDecl class.M2.Element? field$c) M2.Element.c))
(assert  (not ($IsGhostField M2.Element.c)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M2.UnionFind.Collect#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M2.UnionFind) ($IsAlloc refType this@@0 Tclass.M2.UnionFind $Heap@@0)))) (forall ((|f#1@@0| T@U) ) (!  (=> ($Is refType |f#1@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M2.UnionFind.M))) ($Box refType |f#1@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2124|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M2.Element.c)))
))))) (= (M2.UnionFind.Collect $Heap@@0 this@@0) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#13| Tclass.M2.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M2.UnionFind.M))))) (|lambda#14| $Heap@@0 M2.Element.c) (TMap Tclass.M2.Element Tclass.M2.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |2126|
 :pattern ( (M2.UnionFind.Collect $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M2.UnionFind? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M2.UnionFind? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M2.Element? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2355|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M2.Element? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1442|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1443|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1341|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1339|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |1612|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |1613|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Subset| a@@2 b@@2) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@0) (|Set#IsMember| b@@2 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1470|
 :pattern ( (|Set#IsMember| a@@2 o@@0))
 :pattern ( (|Set#IsMember| b@@2 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1471|
 :pattern ( (|Set#Subset| a@@2 b@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@6) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |1781|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1773|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M2.Contents.Root_q d@@1) (= (DatatypeCtorId d@@1) |##M2.Contents.Root|))
 :qid |unknown.0:0|
 :skolemid |2332|
 :pattern ( (M2.Contents.Root_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M2.Contents.Link_q d@@2) (= (DatatypeCtorId d@@2) |##M2.Contents.Link|))
 :qid |unknown.0:0|
 :skolemid |2341|
 :pattern ( (M2.Contents.Link_q d@@2))
)))
(assert (= (Ctor SetType) 9))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|M2.UnionFind.Valid#canCall| $Heap@@1 this@@1) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.M2.UnionFind) ($IsAlloc refType this@@1 Tclass.M2.UnionFind $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.UnionFind.Repr)) ($Box refType this@@1)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.UnionFind.Repr)) ($Box refType null))) (|M2.UnionFind.ValidM1#canCall| $Heap@@1 this@@1))) (= (M2.UnionFind.Valid $Heap@@1 this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.UnionFind.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M2.UnionFind.Repr)) ($Box refType null)))) (M2.UnionFind.ValidM1 $Heap@@1 this@@1)))))
 :qid |UnionFinddfy.10:21|
 :skolemid |2298|
 :pattern ( (M2.UnionFind.Valid $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1350|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1477|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1774|
)))
 :qid |unknown.0:0|
 :skolemid |1775|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1370|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1371|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|M2.UnionFind.Collect#canCall| $Heap@@2 this@@2) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.M2.UnionFind) ($IsAlloc refType this@@2 Tclass.M2.UnionFind $Heap@@2)))) (forall ((|f#0| T@U) ) (!  (=> ($Is refType |f#0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M2.UnionFind.M))) ($Box refType |f#0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2121|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M2.Element.c)))
))))) (and (M2.__default.GoodCMap (M2.UnionFind.Collect $Heap@@2 this@@2)) ($Is MapType (M2.UnionFind.Collect $Heap@@2 this@@2) (TMap Tclass.M2.Element Tclass.M2.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |2122|
 :pattern ( (M2.UnionFind.Collect $Heap@@2 this@@2))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> (M2.Contents.Root_q d@@4) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@4 (|#M2.Contents.Root| |a#1#0#0@@0|))
 :qid |UnionFinddfy.42:28|
 :skolemid |2333|
)))
 :qid |unknown.0:0|
 :skolemid |2334|
 :pattern ( (M2.Contents.Root_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (M2.Contents.Link_q d@@5) (exists ((|a#6#0#0| T@U) ) (! (= d@@5 (|#M2.Contents.Link| |a#6#0#0|))
 :qid |UnionFinddfy.42:47|
 :skolemid |2342|
)))
 :qid |unknown.0:0|
 :skolemid |2343|
 :pattern ( (M2.Contents.Link_q d@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0) ($IsAlloc T@@1 v@@0 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1363|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@2 h@@1) ($IsAllocBox bx@@2 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1435|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@3 h@@2) ($IsAlloc T@@2 v@@1 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1434|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@3 h@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.M2.UnionFind))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (or (= $o@@4 this@@3) (and ($Is refType $o@@4 Tclass.M2.Element) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@3) M2.UnionFind.M))) ($Box refType $o@@4))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f)))
 :qid |unknown.0:0|
 :skolemid |2119|
)) (= (M2.UnionFind.Collect $h0 this@@3) (M2.UnionFind.Collect $h1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2120|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M2.UnionFind.Collect $h1 this@@3))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) (this@@4 T@U) (|d#0| Int) (|e#0| T@U) (|r#0| T@U) (|C#0@@0| T@U) ) (!  (=> (or (|M2.UnionFind.Reaches#canCall| (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass.M2.UnionFind)) (<= (LitInt 0) |d#0|)) ($Is refType |e#0| Tclass.M2.Element)) ($Is refType |r#0| Tclass.M2.Element)) ($Is MapType |C#0@@0| (TMap Tclass.M2.Element Tclass.M2.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M2.__default.GoodCMap (Lit MapType |C#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@0|) ($Box refType |e#0|)))))) (and (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))) (let ((|next#5| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0| 0)) (not true))))) (|M2.UnionFind.Reaches#canCall| (Lit refType this@@4) (LitInt (- |d#0| 1)) |next#5| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))) (= (M2.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (ite (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|))))) (= (Lit refType |e#0|) (Lit refType |r#0|)) (let ((|next#4| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (and (or (not (= |d#0| 0)) (not true)) (M2.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt (- |d#0| 1)) |next#4| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |2138|
 :pattern ( (M2.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)))
))))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M2.Element?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M2.Element.c)) Tclass.M2.Contents))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2356|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M2.Element.c)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1667|
 :pattern ( ($IsBox bx@@3 Tclass._System.nat))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1670|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1673|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M2.Element) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.M2.Element)))
 :qid |unknown.0:0|
 :skolemid |1860|
 :pattern ( ($IsBox bx@@6 Tclass.M2.Element))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M2.Contents) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M2.Contents)))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( ($IsBox bx@@7 Tclass.M2.Contents))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M2.Element?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.M2.Element?)))
 :qid |unknown.0:0|
 :skolemid |1864|
 :pattern ( ($IsBox bx@@8 Tclass.M2.Element?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.M2.UnionFind?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.M2.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |1877|
 :pattern ( ($IsBox bx@@9 Tclass.M2.UnionFind?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.M2.UnionFind) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.M2.UnionFind)))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($IsBox bx@@10 Tclass.M2.UnionFind))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M2.Contents.Root| |a#2#0#0@@1|) Tclass.M2.Contents) ($Is intType (int_2_U |a#2#0#0@@1|) Tclass._System.nat))
 :qid |UnionFinddfy.42:28|
 :skolemid |2335|
 :pattern ( ($Is DatatypeTypeType (|#M2.Contents.Root| |a#2#0#0@@1|) Tclass.M2.Contents))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Contents.Link| |a#7#0#0|) Tclass.M2.Contents) ($Is refType |a#7#0#0| Tclass.M2.Element))
 :qid |UnionFinddfy.42:47|
 :skolemid |2344|
 :pattern ( ($Is DatatypeTypeType (|#M2.Contents.Link| |a#7#0#0|) Tclass.M2.Contents))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1674|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M2.UnionFind)  (and ($Is refType |c#0@@3| Tclass.M2.UnionFind?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2329|
 :pattern ( ($Is refType |c#0@@3| Tclass.M2.UnionFind))
 :pattern ( ($Is refType |c#0@@3| Tclass.M2.UnionFind?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M2.Element)  (and ($Is refType |c#0@@4| Tclass.M2.Element?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2358|
 :pattern ( ($Is refType |c#0@@4| Tclass.M2.Element))
 :pattern ( ($Is refType |c#0@@4| Tclass.M2.Element?))
)))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M2.Element?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M2.Element.c)) Tclass.M2.Contents $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2357|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M2.Element.c)))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |1621|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |1622|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |1623|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M2.UnionFind?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) M2.UnionFind.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2327|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) M2.UnionFind.Repr)))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M2.UnionFind?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) M2.UnionFind.Repr)) (TSet Tclass._System.object?) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2328|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) M2.UnionFind.Repr)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@5 T@U) (|d#0@@0| Int) (|e#0@@0| T@U) (|r#0@@0| T@U) (|C#0@@1| T@U) ) (!  (=> (or (|M2.UnionFind.Reaches#canCall| this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass.M2.UnionFind)) (<= (LitInt 0) |d#0@@0|)) ($Is refType |e#0@@0| Tclass.M2.Element)) ($Is refType |r#0@@0| Tclass.M2.Element)) ($Is MapType |C#0@@1| (TMap Tclass.M2.Element Tclass.M2.Contents))) (and (M2.__default.GoodCMap |C#0@@1|) (|Set#IsMember| (|Map#Domain| |C#0@@1|) ($Box refType |e#0@@0|)))))) (and (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))) (let ((|next#1| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (=> (or (not (= |d#0@@0| 0)) (not true)) (|M2.UnionFind.Reaches#canCall| this@@5 (- |d#0@@0| 1) |next#1| |r#0@@0| |C#0@@1|)))) (= (M2.UnionFind.Reaches ($LS $ly@@0) this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (ite (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|)))) (= |e#0@@0| |r#0@@0|) (let ((|next#0| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (and (or (not (= |d#0@@0| 0)) (not true)) (M2.UnionFind.Reaches $ly@@0 this@@5 (- |d#0@@0| 1) |next#0| |r#0@@0| |C#0@@1|)))))))
 :qid |UnionFinddfy.70:44|
 :skolemid |2136|
 :pattern ( (M2.UnionFind.Reaches ($LS $ly@@0) this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|))
))))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M2.UnionFind?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) M2.UnionFind.M)) (TMap Tclass.M2.Element Tclass.M2.Element) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2293|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) M2.UnionFind.M)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M2.UnionFind?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) M2.UnionFind.M)) (TMap Tclass.M2.Element Tclass.M2.Element)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2292|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) M2.UnionFind.M)))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |1624|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall (($ly@@1 T@U) (this@@6 T@U) (|d#0@@1| Int) (|e#0@@1| T@U) (|r#0@@1| T@U) (|C#0@@2| T@U) ) (! (= (M2.UnionFind.Reaches ($LS $ly@@1) this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|) (M2.UnionFind.Reaches $ly@@1 this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
 :qid |UnionFinddfy.70:44|
 :skolemid |2132|
 :pattern ( (M2.UnionFind.Reaches ($LS $ly@@1) this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
)))
(assert (forall ((|a#2#0#0@@2| Int) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M2.Contents.Root| |a#2#0#0@@2|) Tclass.M2.Contents $h@@13) ($IsAlloc intType (int_2_U |a#2#0#0@@2|) Tclass._System.nat $h@@13)))
 :qid |UnionFinddfy.42:28|
 :skolemid |2336|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Contents.Root| |a#2#0#0@@2|) Tclass.M2.Contents $h@@13))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M2.Contents.Link| |a#7#0#0@@0|) Tclass.M2.Contents $h@@14) ($IsAlloc refType |a#7#0#0@@0| Tclass.M2.Element $h@@14)))
 :qid |UnionFinddfy.42:47|
 :skolemid |2345|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Contents.Link| |a#7#0#0@@0|) Tclass.M2.Contents $h@@14))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M2.Contents) (or (M2.Contents.Root_q d@@6) (M2.Contents.Link_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |2350|
 :pattern ( (M2.Contents.Link_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Contents))
 :pattern ( (M2.Contents.Root_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M2.Contents))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1441|
 :pattern ( ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#14| |l#0@@0| |l#1@@0|) |$w#0@@0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#0@@0| ($Unbox refType |$w#0@@0|)) |l#1@@0|))
 :qid |UnionFinddfy.63:43|
 :skolemid |4523|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#14| |l#0@@0| |l#1@@0|) |$w#0@@0|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1431|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@4) ($Is T@@3 v@@2 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1362|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@4))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1391|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1392|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@5 u@@1)) t@@5)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1333|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((t@@6 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@6 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1334|
 :pattern ( (TMap t@@6 u@@2))
)))
(assert (forall ((t@@7 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@7 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1335|
 :pattern ( (TMap t@@7 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1772|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1777|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1778|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1787|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1789|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall (($o@@11 T@U) ) (! ($Is refType $o@@11 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1671|
 :pattern ( ($Is refType $o@@11 Tclass._System.object?))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSet (TSet t@@8)) t@@8)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1325|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSet t@@9)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1326|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M2.Contents.Root| |a#0#0#0@@0|)) |##M2.Contents.Root|)
 :qid |UnionFinddfy.42:28|
 :skolemid |2331|
 :pattern ( (|#M2.Contents.Root| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M2.Contents.depth (|#M2.Contents.Root| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |UnionFinddfy.42:28|
 :skolemid |2339|
 :pattern ( (|#M2.Contents.Root| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Contents.Link| |a#5#0#0|)) |##M2.Contents.Link|)
 :qid |UnionFinddfy.42:47|
 :skolemid |2340|
 :pattern ( (|#M2.Contents.Link| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (M2.Contents.next (|#M2.Contents.Link| |a#9#0#0|)) |a#9#0#0|)
 :qid |UnionFinddfy.42:47|
 :skolemid |2348|
 :pattern ( (|#M2.Contents.Link| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1349|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@4) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@12) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@12) t1@@1 h@@4) ($IsAllocBox bx@@12 t0@@3 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |1399|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@12))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |1400|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@4))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1788|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@1| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1790|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass.M2.UnionFind))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (or (= $o@@12 this@@7) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@7) M2.UnionFind.Repr)) ($Box refType $o@@12)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@12) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |2082|
)) (= (M2.UnionFind.ValidM1 $h0@@0 this@@7) (M2.UnionFind.ValidM1 $h1@@0 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2083|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M2.UnionFind.ValidM1 $h1@@0 this@@7))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass.M2.UnionFind))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (or (= $o@@13 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@8) M2.UnionFind.Repr)) ($Box refType $o@@13)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@13) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |2294|
)) (= (M2.UnionFind.Valid $h0@@1 this@@8) (M2.UnionFind.Valid $h1@@1 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2295|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (M2.UnionFind.Valid $h1@@1 this@@8))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1609|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@13 T@U) (s T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@13 (TMap s t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@13)) bx@@13) ($Is MapType ($Unbox MapType bx@@13) (TMap s t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |1360|
 :pattern ( ($IsBox bx@@13 (TMap s t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1779|
 :pattern ( ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1776|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@9 T@U) ) (!  (=> (or (|M2.UnionFind.ValidM1#canCall| $Heap@@3 this@@9) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass.M2.UnionFind) ($IsAlloc refType this@@9 Tclass.M2.UnionFind $Heap@@3)))))) (and (=> (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.Repr))) (=> (forall ((|e#0@@2| T@U) ) (!  (=> ($Is refType |e#0@@2| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@2|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@2|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2093|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@2|))))
)) (=> (forall ((|e#1| T@U) ) (!  (=> ($Is refType |e#1| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2092|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1|)))
)) (=> (forall ((|e#2| T@U) ) (!  (=> ($Is refType |e#2| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#2|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |2091|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M2.Element.c)))
)) (forall ((|e#3| T@U) ) (!  (=> ($Is refType |e#3| Tclass.M2.Element) (=> (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|)) (and (|M2.UnionFind.Collect#canCall| $Heap@@3 this@@9) (|M2.UnionFind.Reaches#canCall| this@@9 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|)))) M2.Element.c))) |e#3| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|))) (M2.UnionFind.Collect $Heap@@3 this@@9))))))
 :qid |UnionFinddfy.59:15|
 :skolemid |2090|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3|)))
)))))) (= (M2.UnionFind.ValidM1 $Heap@@3 this@@9)  (and (and (and (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.Repr))) (and (forall ((|e#0@@3| T@U) ) (!  (=> ($Is refType |e#0@@3| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@3|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@3|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2086|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#0@@3|))))
)) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is refType |e#1@@0| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1@@0|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1@@0|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1@@0|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2087|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1@@0|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#1@@0|)))
)))) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is refType |e#2@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#2@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |2088|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M2.Element.c)))
))) (forall ((|e#3@@0| T@U) ) (!  (=> ($Is refType |e#3@@0| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|)) (M2.UnionFind.Reaches ($LS $LZ) this@@9 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|)))) M2.Element.c))) |e#3@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|))) (M2.UnionFind.Collect $Heap@@3 this@@9)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |2089|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M2.UnionFind.M))) ($Box refType |e#3@@0|)))
))))))
 :qid |UnionFinddfy.54:21|
 :skolemid |2094|
 :pattern ( (M2.UnionFind.ValidM1 $Heap@@3 this@@9) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1597|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1598|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1599|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1600|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1608|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1606|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1607|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@6))
)))
(assert (forall ((m@@8 T@U) (u@@6 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@6 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@6 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@6 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@6 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |1614|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@6 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@6 v@@7)) |u'|))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1408|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@15 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1356|
 :pattern ( ($IsBox bx@@15 (TSet t@@11)))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@4 t1@@2)) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@16) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@16) t1@@2) ($IsBox bx@@16 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |1379|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@16))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@16))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |1380|
 :pattern ( ($Is MapType v@@8 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@6))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1440|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@6)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@10 T@U) ) (!  (=> (or (|M2.UnionFind.Valid#canCall| $Heap@@4 this@@10) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass.M2.UnionFind) ($IsAlloc refType this@@10 Tclass.M2.UnionFind $Heap@@4)))))) (=> (M2.UnionFind.Valid $Heap@@4 this@@10) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@10) M2.UnionFind.Repr)) ($Box refType this@@10))))
 :qid |UnionFinddfy.10:21|
 :skolemid |2296|
 :pattern ( (M2.UnionFind.Valid $Heap@@4 this@@10))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M2.Element) Tagclass.M2.Element))
(assert (= (TagFamily Tclass.M2.Element) tytagFamily$Element))
(assert (= (Tag Tclass.M2.Contents) Tagclass.M2.Contents))
(assert (= (TagFamily Tclass.M2.Contents) tytagFamily$Contents))
(assert (= (Tag Tclass.M2.Element?) Tagclass.M2.Element?))
(assert (= (TagFamily Tclass.M2.Element?) tytagFamily$Element))
(assert (= (Tag Tclass.M2.UnionFind?) Tagclass.M2.UnionFind?))
(assert (= (TagFamily Tclass.M2.UnionFind?) tytagFamily$UnionFind))
(assert (= (Tag Tclass.M2.UnionFind) Tagclass.M2.UnionFind))
(assert (= (TagFamily Tclass.M2.UnionFind) tytagFamily$UnionFind))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1782|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@15))
 :qid |unknown.0:0|
 :skolemid |1783|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@15))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |1784|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@16))
 :qid |unknown.0:0|
 :skolemid |1785|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@16))
)))
(assert (forall ((d@@10 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M2.Contents.Root_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.M2.Contents $h@@17))) ($IsAlloc intType (int_2_U (M2.Contents.depth d@@10)) Tclass._System.nat $h@@17))
 :qid |unknown.0:0|
 :skolemid |2337|
 :pattern ( ($IsAlloc intType (int_2_U (M2.Contents.depth d@@10)) Tclass._System.nat $h@@17))
)))
(assert (forall ((d@@11 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M2.Contents.Link_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.M2.Contents $h@@18))) ($IsAlloc refType (M2.Contents.next d@@11) Tclass.M2.Element $h@@18))
 :qid |unknown.0:0|
 :skolemid |2346|
 :pattern ( ($IsAlloc refType (M2.Contents.next d@@11) Tclass.M2.Element $h@@18))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1786|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1342|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#M2.Contents.Root| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M2.Contents.Root| |a#3#0#0@@0|)))
 :qid |UnionFinddfy.42:28|
 :skolemid |2338|
 :pattern ( (|#M2.Contents.Root| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#M2.Contents.Link| (Lit refType |a#8#0#0|)) (Lit DatatypeTypeType (|#M2.Contents.Link| |a#8#0#0|)))
 :qid |UnionFinddfy.42:47|
 :skolemid |2347|
 :pattern ( (|#M2.Contents.Link| (Lit refType |a#8#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1340|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0@@3| T@U) ) (!  (=> (or (|M2.__default.GoodCMap#canCall| |C#0@@3|) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0@@3| (TMap Tclass.M2.Element Tclass.M2.Contents)))) (= (M2.__default.GoodCMap |C#0@@3|) (forall ((|f#0@@0| T@U) ) (!  (=> ($Is refType |f#0@@0| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType |f#0@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1865|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))
))))
 :qid |UnionFinddfy.48:28|
 :skolemid |1866|
 :pattern ( (M2.__default.GoodCMap |C#0@@3|))
))))
(assert  (and (forall ((t0@@5 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@3 t2 (MapType1Store t0@@5 t1@@3 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@14 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@1| |l#1@@1| |l#2| |l#3|) $o@@14 $f@@2))  (=> (and (or (not (= $o@@14 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@14) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@14))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4521|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@1| |l#1@@1| |l#2| |l#3|) $o@@14 $f@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@11 T@U) (|d#0@@2| Int) (|e#0@@4| T@U) (|r#0@@2| T@U) (|C#0@@4| T@U) ) (!  (=> (or (|M2.UnionFind.Reaches#canCall| this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass.M2.UnionFind)) (<= (LitInt 0) |d#0@@2|)) ($Is refType |e#0@@4| Tclass.M2.Element)) ($Is refType |r#0@@2| Tclass.M2.Element)) ($Is MapType |C#0@@4| (TMap Tclass.M2.Element Tclass.M2.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M2.__default.GoodCMap (Lit MapType |C#0@@4|))))) (|Set#IsMember| (|Map#Domain| |C#0@@4|) ($Box refType |e#0@@4|)))))) (and (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))) (let ((|next#3| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0@@2| 0)) (not true))))) (|M2.UnionFind.Reaches#canCall| this@@11 (LitInt (- |d#0@@2| 1)) |next#3| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))) (= (M2.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (ite (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|))))) (= (Lit refType |e#0@@4|) (Lit refType |r#0@@2|)) (let ((|next#2| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))))
 (and (or (not (= |d#0@@2| 0)) (not true)) (M2.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt (- |d#0@@2| 1)) |next#2| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |2137|
 :pattern ( (M2.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|M2.UnionFind.Collect#canCall| $Heap@@5 this@@12) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) (or (not (= this@@12 null)) (not true))) ($IsAlloc refType this@@12 Tclass.M2.UnionFind $Heap@@5)) (forall ((|f#0@@1| T@U) ) (!  (=> ($Is refType |f#0@@1| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) M2.UnionFind.M))) ($Box refType |f#0@@1|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2121|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M2.Element.c)))
))))) ($IsAlloc MapType (M2.UnionFind.Collect $Heap@@5 this@@12) (TMap Tclass.M2.Element Tclass.M2.Contents) $Heap@@5))
 :qid |UnionFinddfy.63:43|
 :skolemid |2123|
 :pattern ( ($IsAlloc MapType (M2.UnionFind.Collect $Heap@@5 this@@12) (TMap Tclass.M2.Element Tclass.M2.Contents) $Heap@@5))
))))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@3 T@U) (v@@9 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@12) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@9)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1601|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1602|
 :pattern ( (|Map#Items| m@@12))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@10 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@10) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@10) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@10) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1381|
 :pattern ( ($Is MapType v@@10 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@5 () T@U)
(declare-fun this@@13 () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |e#0@@5| () T@U)
(declare-fun |r#0@1| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |next#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |d#0@@3| () Int)
(declare-fun |d##0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call4formal@r#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call4formal@r#0@0| () T@U)
(declare-fun |C#0_0@0| () T@U)
(declare-fun |$rhs#0_0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |C'##0_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |_mcc#0#1_0@0| () Int)
(declare-fun |defass#r#0| () Bool)
(declare-fun |r#0@@3| () T@U)
(declare-fun |C#0_0| () T@U)
(set-info :boogie-vc-id Impl$$M2.UnionFind.FindAux)
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
 (=> (= (ControlFlow 0 0) 61) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 13)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13)))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType null)))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 3) (- 0 11)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr))))))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#15| T@U) ) (!  (=> ($Is refType |e#15| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2014|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15|))))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#15@@0| T@U) ) (!  (=> ($Is refType |e#15@@0| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15@@0|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15@@0|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2014|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#15@@0|))))
)))))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#16| T@U) ) (!  (=> ($Is refType |e#16| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2015|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#16@@0| T@U) ) (!  (=> ($Is refType |e#16@@0| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16@@0|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16@@0|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16@@0|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |2015|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16@@0|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#16@@0|)))
)))))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#17| T@U) ) (!  (=> ($Is refType |e#17| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#17|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |2016|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17|) M2.Element.c)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#17@@0| T@U) ) (!  (=> ($Is refType |e#17@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#17@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |2016|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |e#17@@0|) M2.Element.c)))
)))))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#18| T@U) ) (!  (=> ($Is refType |e#18| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|)))) M2.Element.c))) |e#18| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|))) (M2.UnionFind.Collect $Heap@5 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |2017|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@5 this@@13) (or (M2.UnionFind.Valid $Heap@5 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@5 this@@13) (or (M2.UnionFind.ValidM1 $Heap@5 this@@13) (forall ((|e#18@@0| T@U) ) (!  (=> ($Is refType |e#18@@0| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|)))) M2.Element.c))) |e#18@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|))) (M2.UnionFind.Collect $Heap@5 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |2017|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#18@@0|)))
)))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (and (forall (($o@@15 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@15)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@15)))) (or (not (= $o@@15 null)) (not true)))
 :qid |UnionFinddfy.151:12|
 :skolemid |2023|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@16)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@16) alloc)))))
 :qid |UnionFinddfy.151:12|
 :skolemid |2024|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@16) alloc)))
)))) (=> (and (forall (($o@@17 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@17)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@17)))) (or (not (= $o@@17 null)) (not true)))
 :qid |UnionFinddfy.151:12|
 :skolemid |2023|
 :pattern (  (or (not (= $o@@17 null)) (not true)))
)) (forall (($o@@18 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@18)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@18)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@18) alloc)))))
 :qid |UnionFinddfy.151:12|
 :skolemid |2024|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@18) alloc)))
))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M)))) (=> (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) |r#0@1|)) (=> (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) |r#0@1|) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((|d#2| Int) (|e#2@@1| T@U) (|r#2| T@U) ) (!  (=> (and (and (<= (LitInt 0) |d#2|) ($Is refType |e#2@@1| Tclass.M2.Element)) (and ($Is refType |r#2| Tclass.M2.Element) ($IsAlloc refType |r#2| Tclass.M2.Element $Heap@5))) (=> (and (|Set#IsMember| (|Map#Domain| (M2.UnionFind.Collect $Heap@@6 this@@13)) ($Box refType |e#2@@1|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 |d#2| |e#2@@1| |r#2| (M2.UnionFind.Collect $Heap@@6 this@@13))) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 |d#2| |e#2@@1| |r#2| (M2.UnionFind.Collect $Heap@5 this@@13))))
 :qid |UnionFinddfy.154:22|
 :skolemid |2026|
 :pattern ( (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 |d#2| |e#2@@1| |r#2| (M2.UnionFind.Collect $Heap@5 this@@13)))
 :pattern ( (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 |d#2| |e#2@@1| |r#2| (M2.UnionFind.Collect $Heap@@6 this@@13)))
)))))))))))))))))))))))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (= $Heap@5 $Heap@4) (=> (and (= |r#0@1| |r#0@0|) (= (ControlFlow 0 14) 3)) GeneratedUnifiedExit_correct)))))
(let ((anon6_Then_correct  (=> (= ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#0@@5|) M2.Element.c)) (|#M2.Contents.Link| |_mcc#1#0_0@0|)) (=> (and ($Is refType |_mcc#1#0_0@0| Tclass.M2.Element) ($IsAlloc refType |_mcc#1#0_0@0| Tclass.M2.Element $Heap@@6)) (=> (and (and (and ($Is refType |next#0_0@0| Tclass.M2.Element) ($IsAlloc refType |next#0_0@0| Tclass.M2.Element $Heap@@6)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is refType |let#0_0#0#0| Tclass.M2.Element) (= |next#0_0@0| |let#0_0#0#0|))) (and (=> (= (ControlFlow 0 17) (- 0 57)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13)))) (and (=> (= (ControlFlow 0 17) (- 0 56)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType null)))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 17) (- 0 55)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr))))))) (and (=> (= (ControlFlow 0 17) (- 0 54)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#1@@1| T@U) ) (!  (=> ($Is refType |e#1@@1| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@1|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@1|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1927|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@1|))))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#1@@2| T@U) ) (!  (=> ($Is refType |e#1@@2| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@2|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@2|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1927|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#1@@2|))))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 53)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#2@@2| T@U) ) (!  (=> ($Is refType |e#2@@2| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@2|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@2|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@2|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1928|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@2|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@2|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#2@@3| T@U) ) (!  (=> ($Is refType |e#2@@3| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@3|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@3|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@3|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1928|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@3|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#2@@3|)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 52)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#3@@1| T@U) ) (!  (=> ($Is refType |e#3@@1| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@1|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@1|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@1|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1929|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@1|) M2.Element.c)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#3@@2| T@U) ) (!  (=> ($Is refType |e#3@@2| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@2|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@2|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@2|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1929|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#3@@2|) M2.Element.c)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 51)) (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#4| T@U) ) (!  (=> ($Is refType |e#4| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|)))) M2.Element.c))) |e#4| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|))) (M2.UnionFind.Collect $Heap@@6 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1930|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.Valid $Heap@@6 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@@6 this@@13) (or (M2.UnionFind.ValidM1 $Heap@@6 this@@13) (forall ((|e#4@@0| T@U) ) (!  (=> ($Is refType |e#4@@0| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|)))) M2.Element.c))) |e#4@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|))) (M2.UnionFind.Collect $Heap@@6 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1930|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@0|)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 50)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|)) (and (=> (= (ControlFlow 0 17) (- 0 49)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#0@@5|) M2.Element.c)))) (=> (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#0@@5|) M2.Element.c))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#0@@5|) M2.Element.c))))))) (= $Heap@@6 $Heap@0))) (and (=> (= (ControlFlow 0 17) (- 0 48)) ($Is intType (int_2_U (- |d#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |d#0@@3| 1)) Tclass._System.nat) (=> (= |d##0_0@0| (- |d#0@@3| 1)) (and (=> (= (ControlFlow 0 17) (- 0 47)) (forall (($o@@19 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@19))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@3)))
 :qid |UnionFinddfy.161:21|
 :skolemid |2030|
))) (=> (forall (($o@@20 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@20))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@20 $f@@4)))
 :qid |UnionFinddfy.161:21|
 :skolemid |2030|
)) (and (=> (= (ControlFlow 0 17) (- 0 46)) (or (<= 0 |d#0@@3|) (= |d##0_0@0| |d#0@@3|))) (=> (or (<= 0 |d#0@@3|) (= |d##0_0@0| |d#0@@3|)) (and (=> (= (ControlFlow 0 17) (- 0 45)) (or (< |d##0_0@0| |d#0@@3|) (and (= |d##0_0@0| |d#0@@3|) (and (= |next#0_0@0| null) (or (not (= |e#0@@5| null)) (not true)))))) (=> (or (< |d##0_0@0| |d#0@@3|) (and (= |d##0_0@0| |d#0@@3|) (and (= |next#0_0@0| null) (or (not (= |e#0@@5| null)) (not true))))) (=> (and ($Is refType |call4formal@r#0| Tclass.M2.Element) ($IsAlloc refType |call4formal@r#0| Tclass.M2.Element $Heap@@6)) (and (=> (= (ControlFlow 0 17) (- 0 44)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13)))) (and (=> (= (ControlFlow 0 17) (- 0 43)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType null)))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 17) (- 0 42)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr))))))) (and (=> (= (ControlFlow 0 17) (- 0 41)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#3@@3| T@U) ) (!  (=> ($Is refType |e#3@@3| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@3|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@3|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1981|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@3|))))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#3@@4| T@U) ) (!  (=> ($Is refType |e#3@@4| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@4|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@4|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1981|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#3@@4|))))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 40)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#4@@1| T@U) ) (!  (=> ($Is refType |e#4@@1| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@1|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@1|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@1|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1982|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@1|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@1|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#4@@2| T@U) ) (!  (=> ($Is refType |e#4@@2| Tclass.M2.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@2|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@2|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@2|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1982|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@2|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#4@@2|)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 39)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#5| T@U) ) (!  (=> ($Is refType |e#5| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#5|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1983|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5|) M2.Element.c)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#5@@0| T@U) ) (!  (=> ($Is refType |e#5@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#5@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1983|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |e#5@@0|) M2.Element.c)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 38)) (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#6| T@U) ) (!  (=> ($Is refType |e#6| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|)))) M2.Element.c))) |e#6| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|))) (M2.UnionFind.Collect $Heap@0 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1984|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6|)))
))))))) (=> (=> (|M2.UnionFind.Valid#canCall| $Heap@0 this@@13) (or (M2.UnionFind.Valid $Heap@0 this@@13) (=> (|M2.UnionFind.ValidM1#canCall| $Heap@0 this@@13) (or (M2.UnionFind.ValidM1 $Heap@0 this@@13) (forall ((|e#6@@0| T@U) ) (!  (=> ($Is refType |e#6@@0| Tclass.M2.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|)))) M2.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|)) (M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (M2.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|)))) M2.Element.c))) |e#6@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1984|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |e#6@@0|)))
)))))) (and (=> (= (ControlFlow 0 17) (- 0 37)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|)) (and (=> (= (ControlFlow 0 17) (- 0 36)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|)))) (= |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|)))))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|)))) (= |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))))))) (and (=> (= (ControlFlow 0 17) (- 0 35)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))) (or (not (= |d##0_0@0| 0)) (not true)))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))) (or (not (= |d##0_0@0| 0)) (not true))))) (and (=> (= (ControlFlow 0 17) (- 0 34)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))) (let ((|next#0@@0| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))))
(M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (- |d##0_0@0| 1) |next#0@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13))))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d##0_0@0| |next#0_0@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))) (let ((|next#0@@1| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |next#0_0@0|))))))
(M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (- |d##0_0@0| 1) |next#0@@1| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) (M2.UnionFind.Collect $Heap@0 this@@13)))))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and ($Is refType |call4formal@r#0@0| Tclass.M2.Element) ($IsAlloc refType |call4formal@r#0@0| Tclass.M2.Element $Heap@1)) (|M2.UnionFind.Valid#canCall| $Heap@1 this@@13)) (and (|M2.UnionFind.Valid#canCall| $Heap@1 this@@13) (and (M2.UnionFind.Valid $Heap@1 this@@13) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.Repr)) ($Box refType null)))) (M2.UnionFind.ValidM1 $Heap@1 this@@13))))) (=> (and (and (and (and (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@21)))) (or (not (= $o@@21 null)) (not true)))
 :qid |UnionFinddfy.151:12|
 :skolemid |1999|
 :pattern (  (or (not (= $o@@21 null)) (not true)))
)) (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@22)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) alloc)))))
 :qid |UnionFinddfy.151:12|
 :skolemid |2000|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) alloc)))
))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.M)))) (and (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M))) ($Box refType |next#0_0@0|))) |call4formal@r#0@0|) (forall ((|d#2@@0| Int) (|e#2@@4| T@U) (|r#2@@0| T@U) ) (!  (=> (and (and (<= (LitInt 0) |d#2@@0|) ($Is refType |e#2@@4| Tclass.M2.Element)) ($Is refType |r#2@@0| Tclass.M2.Element)) (and (|M2.UnionFind.Collect#canCall| $Heap@0 this@@13) (=> (|Set#IsMember| (|Map#Domain| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |e#2@@4|)) (and (and (|M2.UnionFind.Collect#canCall| $Heap@0 this@@13) (|M2.UnionFind.Reaches#canCall| this@@13 |d#2@@0| |e#2@@4| |r#2@@0| (M2.UnionFind.Collect $Heap@0 this@@13))) (=> (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@0| |e#2@@4| |r#2@@0| (M2.UnionFind.Collect $Heap@0 this@@13)) (and (|M2.UnionFind.Collect#canCall| $Heap@1 this@@13) (|M2.UnionFind.Reaches#canCall| this@@13 |d#2@@0| |e#2@@4| |r#2@@0| (M2.UnionFind.Collect $Heap@1 this@@13))))))))
 :qid |UnionFinddfy.154:22|
 :skolemid |2001|
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@0| |e#2@@4| |r#2@@0| (M2.UnionFind.Collect $Heap@1 this@@13)))
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@0| |e#2@@4| |r#2@@0| (M2.UnionFind.Collect $Heap@0 this@@13)))
)))) (and (and (forall ((|d#2@@1| Int) (|e#2@@5| T@U) (|r#2@@1| T@U) ) (!  (=> (and (and (<= (LitInt 0) |d#2@@1|) ($Is refType |e#2@@5| Tclass.M2.Element)) (and ($Is refType |r#2@@1| Tclass.M2.Element) ($IsAlloc refType |r#2@@1| Tclass.M2.Element $Heap@1))) (=> (and (|Set#IsMember| (|Map#Domain| (M2.UnionFind.Collect $Heap@0 this@@13)) ($Box refType |e#2@@5|)) (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@1| |e#2@@5| |r#2@@1| (M2.UnionFind.Collect $Heap@0 this@@13))) (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@1| |e#2@@5| |r#2@@1| (M2.UnionFind.Collect $Heap@1 this@@13))))
 :qid |UnionFinddfy.154:22|
 :skolemid |2003|
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@1| |e#2@@5| |r#2@@1| (M2.UnionFind.Collect $Heap@1 this@@13)))
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#2@@1| |e#2@@5| |r#2@@1| (M2.UnionFind.Collect $Heap@0 this@@13)))
)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@23) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@23)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M2.UnionFind.Repr)) ($Box refType $o@@23))))
 :qid |UnionFinddfy.151:12|
 :skolemid |2004|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23))
))) (and ($HeapSucc $Heap@0 $Heap@1) ($IsAllocBox ($Box refType this@@13) Tclass.M2.UnionFind? $Heap@1)))) (and (=> (= (ControlFlow 0 17) (- 0 33)) (forall ((|f#0_0| T@U) ) (!  (=> ($Is refType |f#0_0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M))) ($Box refType |f#0_0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2031|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0|) M2.Element.c)))
))) (=> (and (and (forall ((|f#0_0@@0| T@U) ) (!  (=> ($Is refType |f#0_0@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M))) ($Box refType |f#0_0@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2032|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |f#0_0@@0|) M2.Element.c)))
)) (|M2.UnionFind.Collect#canCall| $Heap@1 this@@13)) (and (|M2.UnionFind.Collect#canCall| $Heap@1 this@@13) (= |C#0_0@0| (M2.UnionFind.Collect $Heap@1 this@@13)))) (and (=> (= (ControlFlow 0 17) (- 0 32)) (or (not (= |e#0@@5| null)) (not true))) (=> (or (not (= |e#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 31)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |e#0@@5| M2.Element.c))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |e#0@@5| M2.Element.c)) (and (=> (= (ControlFlow 0 17) (- 0 30)) true) (=> (= |$rhs#0_0@0| (|#M2.Contents.Link| |call4formal@r#0@0|)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |e#0@@5| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |e#0@@5|) M2.Element.c ($Box DatatypeTypeType |$rhs#0_0@0|)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 17) (- 0 29)) true) (=> ($IsAllocBox ($Box refType this@@13) Tclass.M2.UnionFind? $Heap@2) (and (=> (= (ControlFlow 0 17) (- 0 28)) (forall ((|f#0_1| T@U) ) (!  (=> ($Is refType |f#0_1| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@13) M2.UnionFind.M))) ($Box refType |f#0_1|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2033|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1|) M2.Element.c)))
))) (=> (and (and (forall ((|f#0_1@@0| T@U) ) (!  (=> ($Is refType |f#0_1@@0| Tclass.M2.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@13) M2.UnionFind.M))) ($Box refType |f#0_1@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1@@0|) M2.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@13) M2.UnionFind.M))) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1@@0|) M2.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |2034|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |f#0_1@@0|) M2.Element.c)))
)) (|M2.UnionFind.Collect#canCall| $Heap@2 this@@13)) (and (|M2.UnionFind.Collect#canCall| $Heap@2 this@@13) (= |C'##0_0@0| (M2.UnionFind.Collect $Heap@2 this@@13)))) (and (=> (= (ControlFlow 0 17) (- 0 27)) (=> (|M2.__default.GoodCMap#canCall| |C#0_0@0|) (or (M2.__default.GoodCMap |C#0_0@0|) (forall ((|f#5| T@U) ) (!  (=> ($Is refType |f#5| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |f#5|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5|))))) (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |2044|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5|))))
))))) (=> (=> (|M2.__default.GoodCMap#canCall| |C#0_0@0|) (or (M2.__default.GoodCMap |C#0_0@0|) (forall ((|f#5@@0| T@U) ) (!  (=> ($Is refType |f#5@@0| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |f#5@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |2044|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |f#5@@0|))))
)))) (and (=> (= (ControlFlow 0 17) (- 0 26)) (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |e#0@@5|))) (=> (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |e#0@@5|)) (and (=> (= (ControlFlow 0 17) (- 0 25)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|)))) (= |e#0@@5| |call4formal@r#0@0|))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|)))) (= |e#0@@5| |call4formal@r#0@0|)))) (and (=> (= (ControlFlow 0 17) (- 0 24)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))) (or (not (= |d#0@@3| 0)) (not true)))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))) (or (not (= |d#0@@3| 0)) (not true))))) (and (=> (= (ControlFlow 0 17) (- 0 23)) (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))) (let ((|next#0@@2| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))))
(M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (- |d#0@@3| 1) |next#0@@2| |call4formal@r#0@0| |C#0_0@0|)))))) (=> (=> (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (or (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| |call4formal@r#0@0| |C#0_0@0|) (=> (not (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))) (let ((|next#0@@3| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0_0@0|) ($Box refType |e#0@@5|))))))
(M2.UnionFind.Reaches ($LS ($LS $LZ)) this@@13 (- |d#0@@3| 1) |next#0@@3| |call4formal@r#0@0| |C#0_0@0|))))) (and (=> (= (ControlFlow 0 17) (- 0 22)) (|Map#Equal| |C'##0_0@0| (|Map#Build| |C#0_0@0| ($Box refType |e#0@@5|) ($Box DatatypeTypeType (|#M2.Contents.Link| |call4formal@r#0@0|))))) (=> (|Map#Equal| |C'##0_0@0| (|Map#Build| |C#0_0@0| ($Box refType |e#0@@5|) ($Box DatatypeTypeType (|#M2.Contents.Link| |call4formal@r#0@0|)))) (and (=> (= (ControlFlow 0 17) (- 0 21)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |e#0@@5|))))) (=> (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |e#0@@5|)))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (|Set#IsMember| (|Map#Domain| |C'##0_0@0|) ($Box refType |call4formal@r#0@0|))) (=> (|Set#IsMember| (|Map#Domain| |C'##0_0@0|) ($Box refType |call4formal@r#0@0|)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |call4formal@r#0@0|))))) (=> (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |call4formal@r#0@0|)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((|f#2| T@U) ) (!  (=> ($Is refType |f#2| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |f#2|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2|))))) (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2|))))))))
 :qid |UnionFinddfy.171:23|
 :skolemid |2046|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2|))))
))) (=> (forall ((|f#2@@0| T@U) ) (!  (=> ($Is refType |f#2@@0| Tclass.M2.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |f#2@@0|)) (M2.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2@@0|))))))))
 :qid |UnionFinddfy.171:23|
 :skolemid |2046|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'##0_0@0|) ($Box refType |f#2@@0|))))
)) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall ((|d#1| Int) (|e#1@@3| T@U) (|r#1| T@U) ) (!  (=> (and (and (<= (LitInt 0) |d#1|) ($Is refType |e#1@@3| Tclass.M2.Element)) ($Is refType |r#1| Tclass.M2.Element)) (=> (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |e#1@@3|)) (and (|M2.UnionFind.Reaches#canCall| this@@13 |d#1| |e#1@@3| |r#1| |C#0_0@0|) (=> (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1| |e#1@@3| |r#1| |C#0_0@0|) (|M2.UnionFind.Reaches#canCall| this@@13 |d#1| |e#1@@3| |r#1| |C'##0_0@0|)))))
 :qid |UnionFinddfy.172:22|
 :skolemid |2047|
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1| |e#1@@3| |r#1| |C'##0_0@0|))
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1| |e#1@@3| |r#1| |C#0_0@0|))
)) (forall ((|d#1@@0| Int) (|e#1@@4| T@U) (|r#1@@0| T@U) ) (!  (=> (and (and (<= (LitInt 0) |d#1@@0|) ($Is refType |e#1@@4| Tclass.M2.Element)) (and ($Is refType |r#1@@0| Tclass.M2.Element) ($IsAlloc refType |r#1@@0| Tclass.M2.Element $Heap@3))) (=> (and (|Set#IsMember| (|Map#Domain| |C#0_0@0|) ($Box refType |e#1@@4|)) (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1@@0| |e#1@@4| |r#1@@0| |C#0_0@0|)) (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1@@0| |e#1@@4| |r#1@@0| |C'##0_0@0|)))
 :qid |UnionFinddfy.172:22|
 :skolemid |2049|
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1@@0| |e#1@@4| |r#1@@0| |C'##0_0@0|))
 :pattern ( (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#1@@0| |e#1@@4| |r#1@@0| |C#0_0@0|))
)))) (and (and (= $Heap@2 $Heap@3) (= $Heap@4 $Heap@3)) (and (= |r#0@0| |call4formal@r#0@0|) (= (ControlFlow 0 17) 14)))) anon4_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon5_Then_correct  (=> (= ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#0@@5|) M2.Element.c)) (|#M2.Contents.Root| |_mcc#0#1_0@0|)) (=> (and (and (<= (LitInt 0) |_mcc#0#1_0@0|) (= $Heap@4 $Heap@@6)) (and (= |r#0@0| |e#0@@5|) (= (ControlFlow 0 16) 14))) anon4_correct))))
(let ((anon6_Else_correct true))
(let ((anon5_Else_correct  (=> (or (not (= ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |e#0@@5|) M2.Element.c)) (|#M2.Contents.Root| |_mcc#0#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 58) 17) anon6_Then_correct) (=> (= (ControlFlow 0 58) 1) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@6 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= |e#0@@5| null)) (not true))) (=> (or (not (= |e#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 59) 16) anon5_Then_correct) (=> (= (ControlFlow 0 59) 58) anon5_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass.M2.UnionFind) ($IsAlloc refType this@@13 Tclass.M2.UnionFind $Heap@@6))) (<= (LitInt 0) |d#0@@3|)) (and (and ($Is refType |e#0@@5| Tclass.M2.Element) ($IsAlloc refType |e#0@@5| Tclass.M2.Element $Heap@@6)) (=> |defass#r#0| (and ($Is refType |r#0@@3| Tclass.M2.Element) ($IsAlloc refType |r#0@@3| Tclass.M2.Element $Heap@@6))))) (=> (and (and (and (and ($Is MapType |C#0_0| (TMap Tclass.M2.Element Tclass.M2.Contents)) ($IsAlloc MapType |C#0_0| (TMap Tclass.M2.Element Tclass.M2.Contents) $Heap@@6)) true) (= 8 $FunctionContextHeight)) (and (and (and (|M2.UnionFind.Valid#canCall| $Heap@@6 this@@13) (and (M2.UnionFind.Valid $Heap@@6 this@@13) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType this@@13)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.Repr)) ($Box refType null)))) (M2.UnionFind.ValidM1 $Heap@@6 this@@13)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) (and (and (|M2.UnionFind.Reaches#canCall| this@@13 |d#0@@3| |e#0@@5| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) (M2.UnionFind.Collect $Heap@@6 this@@13)) (and (M2.UnionFind.Reaches ($LS $LZ) this@@13 |d#0@@3| |e#0@@5| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) (M2.UnionFind.Collect $Heap@@6 this@@13)) (ite (M2.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@@6 this@@13)) ($Box refType |e#0@@5|)))) (= |e#0@@5| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|)))) (let ((|next#3@@0| (M2.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M2.UnionFind.Collect $Heap@@6 this@@13)) ($Box refType |e#0@@5|))))))
 (and (or (not (= |d#0@@3| 0)) (not true)) (M2.UnionFind.Reaches ($LS $LZ) this@@13 (- |d#0@@3| 1) |next#3@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M2.UnionFind.M))) ($Box refType |e#0@@5|))) (M2.UnionFind.Collect $Heap@@6 this@@13))))))) (= (ControlFlow 0 61) 59)))) anon0_correct)))))
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
