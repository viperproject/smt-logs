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
(declare-fun Tagclass.M1.Element () T@U)
(declare-fun Tagclass.M1.Contents () T@U)
(declare-fun Tagclass.M1.Element? () T@U)
(declare-fun |##M1.Contents.Root| () T@U)
(declare-fun |##M1.Contents.Link| () T@U)
(declare-fun class.M1.Element? () T@U)
(declare-fun class.M1.UnionFind? () T@U)
(declare-fun Tagclass.M1.UnionFind? () T@U)
(declare-fun Tagclass.M1.UnionFind () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Element () T@U)
(declare-fun tytagFamily$Contents () T@U)
(declare-fun tytagFamily$UnionFind () T@U)
(declare-fun field$c () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$M () T@U)
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
(declare-fun M1.UnionFind.ValidM1 (T@U T@U) Bool)
(declare-fun |M1.UnionFind.ValidM1#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.UnionFind () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M1.UnionFind.M () T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |lambda#4| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Tclass.M1.Element? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M1.UnionFind? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M1.Element () T@U)
(declare-fun M1.UnionFind.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun M1.__default.GoodCMap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M1.__default.GoodCMap#canCall| (T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M1.Contents () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun M1.Contents.Link_q (T@U) Bool)
(declare-fun M1.Contents.next (T@U) T@U)
(declare-fun M1.Element.c () T@U)
(declare-fun M1.UnionFind.Collect (T@U T@U) T@U)
(declare-fun |M1.UnionFind.Collect#canCall| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#5| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M1.Contents.Root_q (T@U) Bool)
(declare-fun M1.UnionFind.Valid (T@U T@U) Bool)
(declare-fun |M1.UnionFind.Valid#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |lambda#18| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |#M1.Contents.Root| (Int) T@U)
(declare-fun |#M1.Contents.Link| (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M1.UnionFind.Reaches (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |M1.UnionFind.Reaches#canCall| (T@U Int T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun M1.Contents.depth (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#14| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMap alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M1.Element Tagclass.M1.Contents Tagclass.M1.Element? |##M1.Contents.Root| |##M1.Contents.Link| class.M1.Element? class.M1.UnionFind? Tagclass.M1.UnionFind? Tagclass.M1.UnionFind tytagFamily$nat tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$Element tytagFamily$Contents tytagFamily$UnionFind field$c field$Repr field$M)
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|M1.UnionFind.ValidM1#canCall| $Heap this) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M1.UnionFind) ($IsAlloc refType this Tclass.M1.UnionFind $Heap)))))) (=> (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.UnionFind.M)) |Map#Empty|) (M1.UnionFind.ValidM1 $Heap this)))
 :qid |UnionFinddfy.54:21|
 :skolemid |1179|
 :pattern ( (M1.UnionFind.ValidM1 $Heap this))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |UnionFinddfy.43:9|
 :skolemid |4518|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |877|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |878|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1059|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.Element?)  (or (= $o null) (= (dtype $o) Tclass.M1.Element?)))
 :qid |unknown.0:0|
 :skolemid |1167|
 :pattern ( ($Is refType $o Tclass.M1.Element?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M1.UnionFind?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M1.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( ($Is refType $o@@0 Tclass.M1.UnionFind?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |942|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M1.Element $h@@1) ($IsAlloc refType |c#0@@0| Tclass.M1.Element? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1172|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Element $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Element? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M1.UnionFind $h@@2) ($IsAlloc refType |c#0@@1| Tclass.M1.UnionFind? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.UnionFind $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.UnionFind? $h@@2))
)))
(assert (= (FDim M1.UnionFind.Repr) 0))
(assert (= (FieldOfDecl class.M1.UnionFind? field$Repr) M1.UnionFind.Repr))
(assert ($IsGhostField M1.UnionFind.Repr))
(assert (= (FDim M1.UnionFind.M) 0))
(assert (= (FieldOfDecl class.M1.UnionFind? field$M) M1.UnionFind.M))
(assert ($IsGhostField M1.UnionFind.M))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1047|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0| T@U) ) (!  (=> (or (|M1.__default.GoodCMap#canCall| (Lit MapType |C#0|)) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0| (TMap Tclass.M1.Element Tclass.M1.Contents)))) (= (M1.__default.GoodCMap (Lit MapType |C#0|)) (forall ((|f#1| T@U) ) (!  (=> ($Is refType |f#1| Tclass.M1.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType |f#1|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))) (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1134|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0|) ($Box refType |f#1|))))
))))
 :qid |UnionFinddfy.48:28|
 :weight 3
 :skolemid |1135|
 :pattern ( (M1.__default.GoodCMap (Lit MapType |C#0|)))
))))
(assert (= (FDim M1.Element.c) 0))
(assert (= (FieldOfDecl class.M1.Element? field$c) M1.Element.c))
(assert  (not ($IsGhostField M1.Element.c)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M1.UnionFind) ($IsAlloc refType this@@0 Tclass.M1.UnionFind $Heap@@0)))) (forall ((|f#1@@0| T@U) ) (!  (=> ($Is refType |f#1@@0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.UnionFind.M))) ($Box refType |f#1@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1219|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#1@@0|) M1.Element.c)))
))))) (= (M1.UnionFind.Collect $Heap@@0 this@@0) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.UnionFind.M))))) (|lambda#5| $Heap@@0 M1.Element.c) (TMap Tclass.M1.Element Tclass.M1.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |1221|
 :pattern ( (M1.UnionFind.Collect $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M1.Element? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1168|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M1.Element? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M1.UnionFind? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1175|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M1.UnionFind? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |709|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |710|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |608|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |606|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |879|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |880|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Subset| a@@2 b@@2) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@0) (|Set#IsMember| b@@2 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |737|
 :pattern ( (|Set#IsMember| a@@2 o@@0))
 :pattern ( (|Set#IsMember| b@@2 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |738|
 :pattern ( (|Set#Subset| a@@2 b@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@6) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M1.Contents.Root_q d@@1) (= (DatatypeCtorId d@@1) |##M1.Contents.Root|))
 :qid |unknown.0:0|
 :skolemid |1145|
 :pattern ( (M1.Contents.Root_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M1.Contents.Link_q d@@2) (= (DatatypeCtorId d@@2) |##M1.Contents.Link|))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( (M1.Contents.Link_q d@@2))
)))
(assert (= (Ctor SetType) 9))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|M1.UnionFind.Valid#canCall| $Heap@@1 this@@1) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.M1.UnionFind) ($IsAlloc refType this@@1 Tclass.M1.UnionFind $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.Repr)) ($Box refType this@@1)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.Repr)) ($Box refType null))) (|M1.UnionFind.ValidM1#canCall| $Heap@@1 this@@1))) (= (M1.UnionFind.Valid $Heap@@1 this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.Repr)) ($Box refType null)))) (M1.UnionFind.ValidM1 $Heap@@1 this@@1)))))
 :qid |UnionFinddfy.10:21|
 :skolemid |1303|
 :pattern ( (M1.UnionFind.Valid $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |617|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |744|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1041|
)))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |637|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |638|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap@@2 this@@2) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.M1.UnionFind) ($IsAlloc refType this@@2 Tclass.M1.UnionFind $Heap@@2)))) (forall ((|f#0| T@U) ) (!  (=> ($Is refType |f#0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1216|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0|) M1.Element.c)))
))))) (and (M1.__default.GoodCMap (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Is MapType (M1.UnionFind.Collect $Heap@@2 this@@2) (TMap Tclass.M1.Element Tclass.M1.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |1217|
 :pattern ( (M1.UnionFind.Collect $Heap@@2 this@@2))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#18| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4| |l#5|) |$w#0@@0|) ($Box refType (ite  (or (= ($Unbox refType (MapType0Select BoxType BoxType |l#0@@0| |$w#0@@0|)) |l#1@@0|) (= ($Unbox refType (MapType0Select BoxType BoxType |l#2| |$w#0@@0|)) |l#3|)) |l#4| ($Unbox refType (MapType0Select BoxType BoxType |l#5| |$w#0@@0|)))))
 :qid |UnionFinddfy.34:51|
 :skolemid |4522|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#18| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4| |l#5|) |$w#0@@0|))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M1.Contents.Root_q d@@4) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@4 (|#M1.Contents.Root| |a#1#0#0@@0|))
 :qid |UnionFinddfy.42:28|
 :skolemid |1146|
)))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (M1.Contents.Root_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (M1.Contents.Link_q d@@5) (exists ((|a#6#0#0| T@U) ) (! (= d@@5 (|#M1.Contents.Link| |a#6#0#0|))
 :qid |UnionFinddfy.42:47|
 :skolemid |1155|
)))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( (M1.Contents.Link_q d@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |935|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0) ($IsAlloc T@@1 v@@0 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |630|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@2 h@@1) ($IsAllocBox bx@@2 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |702|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@3 h@@2) ($IsAlloc T@@2 v@@1 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |701|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@3 h@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.M1.UnionFind))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (or (= $o@@4 this@@3) (and ($Is refType $o@@4 Tclass.M1.Element) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@3) M1.UnionFind.M))) ($Box refType $o@@4))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f)))
 :qid |unknown.0:0|
 :skolemid |1214|
)) (= (M1.UnionFind.Collect $h0 this@@3) (M1.UnionFind.Collect $h1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1215|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M1.UnionFind.Collect $h1 this@@3))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) (this@@4 T@U) (|d#0| Int) (|e#0| T@U) (|r#0| T@U) (|C#0@@0| T@U) ) (!  (=> (or (|M1.UnionFind.Reaches#canCall| (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass.M1.UnionFind)) (<= (LitInt 0) |d#0|)) ($Is refType |e#0| Tclass.M1.Element)) ($Is refType |r#0| Tclass.M1.Element)) ($Is MapType |C#0@@0| (TMap Tclass.M1.Element Tclass.M1.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M1.__default.GoodCMap (Lit MapType |C#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@0|) ($Box refType |e#0|)))))) (and (=> (not (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))) (let ((|next#5| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0| 0)) (not true))))) (|M1.UnionFind.Reaches#canCall| (Lit refType this@@4) (LitInt (- |d#0| 1)) |next#5| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))) (= (M1.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (ite (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|))))) (= (Lit refType |e#0|) (Lit refType |r#0|)) (let ((|next#4| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (and (or (not (= |d#0| 0)) (not true)) (M1.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt (- |d#0| 1)) |next#4| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |1233|
 :pattern ( (M1.UnionFind.Reaches ($LS $ly) (Lit refType this@@4) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)))
))))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M1.Element?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M1.Element.c)) Tclass.M1.Contents))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1169|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M1.Element.c)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($IsBox bx@@3 Tclass._System.nat))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |937|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M1.Element) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.M1.Element)))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( ($IsBox bx@@6 Tclass.M1.Element))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M1.Contents) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M1.Contents)))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( ($IsBox bx@@7 Tclass.M1.Contents))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M1.Element?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.M1.Element?)))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( ($IsBox bx@@8 Tclass.M1.Element?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.M1.UnionFind?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.M1.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |1173|
 :pattern ( ($IsBox bx@@9 Tclass.M1.UnionFind?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.M1.UnionFind) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.M1.UnionFind)))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsBox bx@@10 Tclass.M1.UnionFind))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@1|) Tclass.M1.Contents) ($Is intType (int_2_U |a#2#0#0@@1|) Tclass._System.nat))
 :qid |UnionFinddfy.42:28|
 :skolemid |1148|
 :pattern ( ($Is DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@1|) Tclass.M1.Contents))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0|) Tclass.M1.Contents) ($Is refType |a#7#0#0| Tclass.M1.Element))
 :qid |UnionFinddfy.42:47|
 :skolemid |1157|
 :pattern ( ($Is DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0|) Tclass.M1.Contents))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M1.Element)  (and ($Is refType |c#0@@3| Tclass.M1.Element?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.Element))
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.Element?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M1.UnionFind)  (and ($Is refType |c#0@@4| Tclass.M1.UnionFind?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.UnionFind))
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.UnionFind?))
)))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M1.Element?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M1.Element.c)) Tclass.M1.Contents $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1170|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M1.Element.c)))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |888|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |889|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |890|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M1.UnionFind?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) M1.UnionFind.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1320|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) M1.UnionFind.Repr)))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M1.UnionFind?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) M1.UnionFind.Repr)) (TSet Tclass._System.object?) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1321|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) M1.UnionFind.Repr)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@5 T@U) (|d#0@@0| Int) (|e#0@@0| T@U) (|r#0@@0| T@U) (|C#0@@1| T@U) ) (!  (=> (or (|M1.UnionFind.Reaches#canCall| this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass.M1.UnionFind)) (<= (LitInt 0) |d#0@@0|)) ($Is refType |e#0@@0| Tclass.M1.Element)) ($Is refType |r#0@@0| Tclass.M1.Element)) ($Is MapType |C#0@@1| (TMap Tclass.M1.Element Tclass.M1.Contents))) (and (M1.__default.GoodCMap |C#0@@1|) (|Set#IsMember| (|Map#Domain| |C#0@@1|) ($Box refType |e#0@@0|)))))) (and (=> (not (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))) (let ((|next#1| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (=> (or (not (= |d#0@@0| 0)) (not true)) (|M1.UnionFind.Reaches#canCall| this@@5 (- |d#0@@0| 1) |next#1| |r#0@@0| |C#0@@1|)))) (= (M1.UnionFind.Reaches ($LS $ly@@0) this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (ite (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|)))) (= |e#0@@0| |r#0@@0|) (let ((|next#0| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (and (or (not (= |d#0@@0| 0)) (not true)) (M1.UnionFind.Reaches $ly@@0 this@@5 (- |d#0@@0| 1) |next#0| |r#0@@0| |C#0@@1|)))))))
 :qid |UnionFinddfy.70:44|
 :skolemid |1231|
 :pattern ( (M1.UnionFind.Reaches ($LS $ly@@0) this@@5 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|))
))))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M1.UnionFind?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) M1.UnionFind.M)) (TMap Tclass.M1.Element Tclass.M1.Element) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1298|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) M1.UnionFind.M)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M1.UnionFind?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) M1.UnionFind.M)) (TMap Tclass.M1.Element Tclass.M1.Element)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1297|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) M1.UnionFind.M)))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |891|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall (($ly@@1 T@U) (this@@6 T@U) (|d#0@@1| Int) (|e#0@@1| T@U) (|r#0@@1| T@U) (|C#0@@2| T@U) ) (! (= (M1.UnionFind.Reaches ($LS $ly@@1) this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|) (M1.UnionFind.Reaches $ly@@1 this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
 :qid |UnionFinddfy.70:44|
 :skolemid |1227|
 :pattern ( (M1.UnionFind.Reaches ($LS $ly@@1) this@@6 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
)))
(assert (forall ((|a#2#0#0@@2| Int) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@2|) Tclass.M1.Contents $h@@13) ($IsAlloc intType (int_2_U |a#2#0#0@@2|) Tclass._System.nat $h@@13)))
 :qid |UnionFinddfy.42:28|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@2|) Tclass.M1.Contents $h@@13))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0@@0|) Tclass.M1.Contents $h@@14) ($IsAlloc refType |a#7#0#0@@0| Tclass.M1.Element $h@@14)))
 :qid |UnionFinddfy.42:47|
 :skolemid |1158|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0@@0|) Tclass.M1.Contents $h@@14))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M1.Contents) (or (M1.Contents.Root_q d@@6) (M1.Contents.Link_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (M1.Contents.Link_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Contents))
 :pattern ( (M1.Contents.Root_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Contents))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |708|
 :pattern ( ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#5| |l#0@@1| |l#1@@1|) |$w#0@@1|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#0@@1| ($Unbox refType |$w#0@@1|)) |l#1@@1|))
 :qid |UnionFinddfy.63:43|
 :skolemid |4519|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#5| |l#0@@1| |l#1@@1|) |$w#0@@1|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |698|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@4) ($Is T@@3 v@@2 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |629|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@4))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |658|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |659|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@5 u@@1)) t@@5)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |600|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((t@@6 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@6 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |601|
 :pattern ( (TMap t@@6 u@@2))
)))
(assert (forall ((t@@7 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@7 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |602|
 :pattern ( (TMap t@@7 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1045|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall (($o@@11 T@U) ) (! ($Is refType $o@@11 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( ($Is refType $o@@11 Tclass._System.object?))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSet (TSet t@@8)) t@@8)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |592|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSet t@@9)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |593|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M1.Contents.Root| |a#0#0#0@@0|)) |##M1.Contents.Root|)
 :qid |UnionFinddfy.42:28|
 :skolemid |1144|
 :pattern ( (|#M1.Contents.Root| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M1.Contents.depth (|#M1.Contents.Root| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |UnionFinddfy.42:28|
 :skolemid |1152|
 :pattern ( (|#M1.Contents.Root| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Contents.Link| |a#5#0#0|)) |##M1.Contents.Link|)
 :qid |UnionFinddfy.42:47|
 :skolemid |1153|
 :pattern ( (|#M1.Contents.Link| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (M1.Contents.next (|#M1.Contents.Link| |a#9#0#0|)) |a#9#0#0|)
 :qid |UnionFinddfy.42:47|
 :skolemid |1161|
 :pattern ( (|#M1.Contents.Link| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |616|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@4) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@12) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@12) t1@@1 h@@4) ($IsAllocBox bx@@12 t0@@3 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |666|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@12))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |667|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@1) h@@4))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1055|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@1| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1057|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass.M1.UnionFind))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (or (= $o@@12 this@@7) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@7) M1.UnionFind.Repr)) ($Box refType $o@@12)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@12) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1176|
)) (= (M1.UnionFind.ValidM1 $h0@@0 this@@7) (M1.UnionFind.ValidM1 $h1@@0 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1178|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M1.UnionFind.ValidM1 $h1@@0 this@@7))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass.M1.UnionFind))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (or (= $o@@13 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@8) M1.UnionFind.Repr)) ($Box refType $o@@13)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@13) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1299|
)) (= (M1.UnionFind.Valid $h0@@1 this@@8) (M1.UnionFind.Valid $h1@@1 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1300|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (M1.UnionFind.Valid $h1@@1 this@@8))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |876|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@13 T@U) (s T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@13 (TMap s t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@13)) bx@@13) ($Is MapType ($Unbox MapType bx@@13) (TMap s t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |627|
 :pattern ( ($IsBox bx@@13 (TMap s t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@9 T@U) ) (!  (=> (or (|M1.UnionFind.ValidM1#canCall| $Heap@@3 this@@9) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass.M1.UnionFind) ($IsAlloc refType this@@9 Tclass.M1.UnionFind $Heap@@3)))))) (and (=> (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.Repr))) (=> (forall ((|e#0@@2| T@U) ) (!  (=> ($Is refType |e#0@@2| Tclass.M1.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@2|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@2|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1188|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@2|))))
)) (=> (forall ((|e#1| T@U) ) (!  (=> ($Is refType |e#1| Tclass.M1.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1187|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1|)))
)) (=> (forall ((|e#2| T@U) ) (!  (=> ($Is refType |e#2| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#2|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M1.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1186|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2|) M1.Element.c)))
)) (forall ((|e#3| T@U) ) (!  (=> ($Is refType |e#3| Tclass.M1.Element) (=> (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|)) (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|)))) M1.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|)) (and (|M1.UnionFind.Collect#canCall| $Heap@@3 this@@9) (|M1.UnionFind.Reaches#canCall| this@@9 (M1.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|)))) M1.Element.c))) |e#3| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|))) (M1.UnionFind.Collect $Heap@@3 this@@9))))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1185|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3|)))
)))))) (= (M1.UnionFind.ValidM1 $Heap@@3 this@@9)  (and (and (and (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.Repr))) (and (forall ((|e#0@@3| T@U) ) (!  (=> ($Is refType |e#0@@3| Tclass.M1.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@3|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@3|)))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1181|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#0@@3|))))
)) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is refType |e#1@@0| Tclass.M1.Element?) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1@@0|)) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1@@0|)))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1@@0|))))))
 :qid |UnionFinddfy.57:15|
 :skolemid |1182|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1@@0|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#1@@0|)))
)))) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is refType |e#2@@0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#2@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M1.Element.c)))))))
 :qid |UnionFinddfy.58:15|
 :skolemid |1183|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |e#2@@0|) M1.Element.c)))
))) (forall ((|e#3@@0| T@U) ) (!  (=> ($Is refType |e#3@@0| Tclass.M1.Element) (and (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|)) (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|)))) M1.Element.c)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|)) (M1.UnionFind.Reaches ($LS $LZ) this@@9 (M1.Contents.depth ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|)))) M1.Element.c))) |e#3@@0| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|))) (M1.UnionFind.Collect $Heap@@3 this@@9)))))
 :qid |UnionFinddfy.59:15|
 :skolemid |1184|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) M1.UnionFind.M))) ($Box refType |e#3@@0|)))
))))))
 :qid |UnionFinddfy.54:21|
 :skolemid |1189|
 :pattern ( (M1.UnionFind.ValidM1 $Heap@@3 this@@9) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |864|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |865|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |866|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |867|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |875|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |873|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |874|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |675|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@15 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |623|
 :pattern ( ($IsBox bx@@15 (TSet t@@11)))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@16) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@16) t1@@2) ($IsBox bx@@16 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |646|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@16))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@16))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |647|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@10 T@U) ) (!  (=> (or (|M1.UnionFind.Valid#canCall| $Heap@@4 this@@10) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass.M1.UnionFind) ($IsAlloc refType this@@10 Tclass.M1.UnionFind $Heap@@4)))))) (=> (M1.UnionFind.Valid $Heap@@4 this@@10) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@10) M1.UnionFind.Repr)) ($Box refType this@@10))))
 :qid |UnionFinddfy.10:21|
 :skolemid |1301|
 :pattern ( (M1.UnionFind.Valid $Heap@@4 this@@10))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M1.Element) Tagclass.M1.Element))
(assert (= (TagFamily Tclass.M1.Element) tytagFamily$Element))
(assert (= (Tag Tclass.M1.Contents) Tagclass.M1.Contents))
(assert (= (TagFamily Tclass.M1.Contents) tytagFamily$Contents))
(assert (= (Tag Tclass.M1.Element?) Tagclass.M1.Element?))
(assert (= (TagFamily Tclass.M1.Element?) tytagFamily$Element))
(assert (= (Tag Tclass.M1.UnionFind?) Tagclass.M1.UnionFind?))
(assert (= (TagFamily Tclass.M1.UnionFind?) tytagFamily$UnionFind))
(assert (= (Tag Tclass.M1.UnionFind) Tagclass.M1.UnionFind))
(assert (= (TagFamily Tclass.M1.UnionFind) tytagFamily$UnionFind))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1049|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@15))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@15))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@15))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@16))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@16))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@16))
)))
(assert (forall ((d@@10 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M1.Contents.Root_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.M1.Contents $h@@17))) ($IsAlloc intType (int_2_U (M1.Contents.depth d@@10)) Tclass._System.nat $h@@17))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( ($IsAlloc intType (int_2_U (M1.Contents.depth d@@10)) Tclass._System.nat $h@@17))
)))
(assert (forall ((d@@11 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M1.Contents.Link_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.M1.Contents $h@@18))) ($IsAlloc refType (M1.Contents.next d@@11) Tclass.M1.Element $h@@18))
 :qid |unknown.0:0|
 :skolemid |1159|
 :pattern ( ($IsAlloc refType (M1.Contents.next d@@11) Tclass.M1.Element $h@@18))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1053|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |609|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#M1.Contents.Root| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M1.Contents.Root| |a#3#0#0@@0|)))
 :qid |UnionFinddfy.42:28|
 :skolemid |1151|
 :pattern ( (|#M1.Contents.Root| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#M1.Contents.Link| (Lit refType |a#8#0#0|)) (Lit DatatypeTypeType (|#M1.Contents.Link| |a#8#0#0|)))
 :qid |UnionFinddfy.42:47|
 :skolemid |1160|
 :pattern ( (|#M1.Contents.Link| (Lit refType |a#8#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |607|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0@@3| T@U) ) (!  (=> (or (|M1.__default.GoodCMap#canCall| |C#0@@3|) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0@@3| (TMap Tclass.M1.Element Tclass.M1.Contents)))) (= (M1.__default.GoodCMap |C#0@@3|) (forall ((|f#0@@0| T@U) ) (!  (=> ($Is refType |f#0@@0| Tclass.M1.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType |f#0@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1132|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0@@0|))))
))))
 :qid |UnionFinddfy.48:28|
 :skolemid |1133|
 :pattern ( (M1.__default.GoodCMap |C#0@@3|))
))))
(assert  (and (forall ((t0@@5 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@8 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@3 t2 (MapType1Store t0@@5 t1@@3 t2 m@@8 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@9 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@9 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@9 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@10 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@10 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@10 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) ($o@@14 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#14| |l#0@@2| |l#1@@2| |l#2@@0| |l#3@@0|) $o@@14 $f@@2))  (=> (and (or (not (= $o@@14 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o@@14) |l#2@@0|)))) (|Set#IsMember| |l#3@@0| ($Box refType $o@@14))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4521|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#14| |l#0@@2| |l#1@@2| |l#2@@0| |l#3@@0|) $o@@14 $f@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@11 T@U) (|d#0@@2| Int) (|e#0@@4| T@U) (|r#0@@2| T@U) (|C#0@@4| T@U) ) (!  (=> (or (|M1.UnionFind.Reaches#canCall| this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass.M1.UnionFind)) (<= (LitInt 0) |d#0@@2|)) ($Is refType |e#0@@4| Tclass.M1.Element)) ($Is refType |r#0@@2| Tclass.M1.Element)) ($Is MapType |C#0@@4| (TMap Tclass.M1.Element Tclass.M1.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M1.__default.GoodCMap (Lit MapType |C#0@@4|))))) (|Set#IsMember| (|Map#Domain| |C#0@@4|) ($Box refType |e#0@@4|)))))) (and (=> (not (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))) (let ((|next#3| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0@@2| 0)) (not true))))) (|M1.UnionFind.Reaches#canCall| this@@11 (LitInt (- |d#0@@2| 1)) |next#3| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))) (= (M1.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (ite (M1.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|))))) (= (Lit refType |e#0@@4|) (Lit refType |r#0@@2|)) (let ((|next#2| (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@4|)))))))
 (and (or (not (= |d#0@@2| 0)) (not true)) (M1.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt (- |d#0@@2| 1)) |next#2| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |1232|
 :pattern ( (M1.UnionFind.Reaches ($LS $ly@@2) this@@11 (LitInt |d#0@@2|) (Lit refType |e#0@@4|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap@@5 this@@12) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) (or (not (= this@@12 null)) (not true))) ($IsAlloc refType this@@12 Tclass.M1.UnionFind $Heap@@5)) (forall ((|f#0@@1| T@U) ) (!  (=> ($Is refType |f#0@@1| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) M1.UnionFind.M))) ($Box refType |f#0@@1|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1216|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |f#0@@1|) M1.Element.c)))
))))) ($IsAlloc MapType (M1.UnionFind.Collect $Heap@@5 this@@12) (TMap Tclass.M1.Element Tclass.M1.Contents) $Heap@@5))
 :qid |UnionFinddfy.63:43|
 :skolemid |1218|
 :pattern ( ($IsAlloc MapType (M1.UnionFind.Collect $Heap@@5 this@@12) (TMap Tclass.M1.Element Tclass.M1.Contents) $Heap@@5))
))))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@3 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |868|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |869|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |648|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@6 () T@U)
(declare-fun this@@13 () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |r#0@@3| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$M1.UnionFind.Join)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon11_correct true))
(let ((anon16_Else_correct  (=> (not (or (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r0#0|) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r1#0|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|)) (=> (= (ControlFlow 0 5) 1) anon11_correct))))))))
(let ((anon16_Then_correct  (=> (and (or (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r0#0|) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r1#0|)) (= (ControlFlow 0 4) 1)) anon11_correct)))
(let ((anon15_Else_correct  (=> (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r0#0|) (and (=> (= (ControlFlow 0 11) 4) anon16_Then_correct) (=> (= (ControlFlow 0 11) 5) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) |r0#0|)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 10)) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6) (and (=> (= (ControlFlow 0 8) (- 0 9)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|)) (and (=> (= (ControlFlow 0 8) 4) anon16_Then_correct) (=> (= (ControlFlow 0 8) 5) anon16_Else_correct)))))))))
(let ((anon14_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6) (and (=> (= (ControlFlow 0 12) (- 0 13)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|)) (and (=> (= (ControlFlow 0 12) 8) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct)))))))))
(let ((anon14_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |e#0@0|))) (= (ControlFlow 0 3) 1)) anon11_correct)))
(let ((anon13_Then_correct  (=> (and ($Is refType |e#0@0| Tclass.M1.Element?) ($IsAlloc refType |e#0@0| Tclass.M1.Element? $Heap@0)) (and (=> (= (ControlFlow 0 15) (- 0 16)) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6) (and (=> (= (ControlFlow 0 15) 12) anon14_Then_correct) (=> (= (ControlFlow 0 15) 3) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is refType |e#0@0| Tclass.M1.Element?) ($IsAlloc refType |e#0@0| Tclass.M1.Element? $Heap@0))) (= (ControlFlow 0 2) 1)) anon11_correct)))
(let ((anon12_Else_correct  (=> (and (or (not (= |r#0@0| |r0#0|)) (not true)) (= |r#0@0| |r1#0|)) (and (=> (= (ControlFlow 0 18) 15) anon13_Then_correct) (=> (= (ControlFlow 0 18) 2) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (= |r#0@0| |r0#0|) (and (=> (= (ControlFlow 0 17) 15) anon13_Then_correct) (=> (= (ControlFlow 0 17) 2) anon13_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#14| null $Heap@@6 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.Repr)))) ($IsAllocBox ($Box refType this@@13) Tclass.M1.UnionFind? $Heap@@6)) (=> (and (and (|M1.UnionFind.Valid#canCall| $Heap@@6 this@@13) (M1.UnionFind.Valid $Heap@@6 this@@13)) (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r0#0|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r1#0|)))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r0#0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r0#0|)) (=> (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r0#0|))) |r0#0|) (and (=> (= (ControlFlow 0 19) (- 0 21)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r1#0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r1#0|)) (=> (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.M))) ($Box refType |r1#0|))) |r1#0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@15) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@15)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.Repr)) ($Box refType $o@@15))))
 :qid |UnionFinddfy.109:12|
 :skolemid |1291|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15))
)) ($HeapSucc $Heap@@6 $Heap@0))) (=> (and (and (and ($Is refType |r#0@0| Tclass.M1.Element) ($IsAlloc refType |r#0@0| Tclass.M1.Element $Heap@0)) ($IsAllocBox ($Box refType this@@13) Tclass.M1.UnionFind? $Heap@0)) (and (|M1.UnionFind.Valid#canCall| $Heap@0 this@@13) (M1.UnionFind.Valid $Heap@0 this@@13))) (and (=> (= (ControlFlow 0 19) (- 0 20)) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6) (=> (and (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M1.UnionFind.Repr)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.Repr)) ($Box refType $o@@16)))) (or (not (= $o@@16 null)) (not true)))
 :qid |UnionFinddfy.109:12|
 :skolemid |1292|
 :pattern (  (or (not (= $o@@16 null)) (not true)))
)) (forall (($o@@17 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@13) M1.UnionFind.Repr)) ($Box refType $o@@17)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) M1.UnionFind.Repr)) ($Box refType $o@@17)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@17) alloc)))))
 :qid |UnionFinddfy.109:12|
 :skolemid |1293|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@17) alloc)))
))) (and (=> (= (ControlFlow 0 19) 17) anon12_Then_correct) (=> (= (ControlFlow 0 19) 18) anon12_Else_correct)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass.M1.UnionFind) ($IsAlloc refType this@@13 Tclass.M1.UnionFind $Heap@@6)))) (=> (and (and (and ($Is refType |r0#0| Tclass.M1.Element) ($IsAlloc refType |r0#0| Tclass.M1.Element $Heap@@6)) (and ($Is refType |r1#0| Tclass.M1.Element) ($IsAlloc refType |r1#0| Tclass.M1.Element $Heap@@6))) (and (and ($Is refType |r#0@@3| Tclass.M1.Element) ($IsAlloc refType |r#0@@3| Tclass.M1.Element $Heap@@6)) (and (= 7 $FunctionContextHeight) (= (ControlFlow 0 23) 19)))) anon0_correct))))
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
