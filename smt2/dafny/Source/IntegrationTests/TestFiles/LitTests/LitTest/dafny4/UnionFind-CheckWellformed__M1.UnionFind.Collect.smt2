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
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Element () T@U)
(declare-fun tytagFamily$Contents () T@U)
(declare-fun tytagFamily$UnionFind () T@U)
(declare-fun field$c () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.Element? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M1.UnionFind? () T@U)
(declare-fun Tclass.M1.Element () T@U)
(declare-fun Tclass.M1.UnionFind () T@U)
(declare-fun M1.UnionFind.M () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M1.__default.GoodCMap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |M1.__default.GoodCMap#canCall| (T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M1.Contents () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun M1.Contents.Link_q (T@U) Bool)
(declare-fun M1.Contents.next (T@U) T@U)
(declare-fun M1.Element.c () T@U)
(declare-fun M1.UnionFind.Collect (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M1.UnionFind.Collect#canCall| (T@U T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#5| (T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M1.Contents.Root_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#M1.Contents.Root| (Int) T@U)
(declare-fun |#M1.Contents.Link| (T@U) T@U)
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
(declare-fun |Map#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TagSet TagMap alloc allocName Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M1.Element Tagclass.M1.Contents Tagclass.M1.Element? |##M1.Contents.Root| |##M1.Contents.Link| class.M1.Element? class.M1.UnionFind? Tagclass.M1.UnionFind? Tagclass.M1.UnionFind tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$Element tytagFamily$Contents tytagFamily$UnionFind field$c field$M)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |720|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |721|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |725|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |726|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |719|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |UnionFinddfy.43:9|
 :skolemid |4527|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)) a@@4)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |877|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |878|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@6 b@@3) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |735|
 :pattern ( (|Set#Difference| a@@6 b@@3) (|Set#IsMember| b@@3 y@@2))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1059|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |716|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 5))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |729|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1)  (and (|Set#IsMember| a@@8 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |734|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M1.Element $h@@0) ($IsAlloc refType |c#0| Tclass.M1.Element? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1172|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Element $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Element? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M1.UnionFind $h@@1) ($IsAlloc refType |c#0@@0| Tclass.M1.UnionFind? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.UnionFind $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.UnionFind? $h@@1))
)))
(assert (= (FDim M1.UnionFind.M) 0))
(assert (= (FieldOfDecl class.M1.UnionFind? field$M) M1.UnionFind.M))
(assert ($IsGhostField M1.UnionFind.M))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1047|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (Ctor MapType) 6))
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
(assert  (and (and (and (= (Ctor FieldType) 7) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap this) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M1.UnionFind) ($IsAlloc refType this Tclass.M1.UnionFind $Heap)))) (forall ((|f#1@@0| T@U) ) (!  (=> ($Is refType |f#1@@0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.UnionFind.M))) ($Box refType |f#1@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |f#1@@0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |f#1@@0|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1219|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |f#1@@0|) M1.Element.c)))
))))) (= (M1.UnionFind.Collect $Heap this) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.UnionFind.M))))) (|lambda#5| $Heap M1.Element.c) (TMap Tclass.M1.Element Tclass.M1.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |1221|
 :pattern ( (M1.UnionFind.Collect $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4| |l#5|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@1) |l#2|)))) (or (= $o@@1 |l#3|) (and ($Is refType $o@@1 |l#4|) (|Set#IsMember| |l#5| ($Box refType $o@@1))))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4529|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4| |l#5|) $o@@1 $f))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M1.Element? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1168|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M1.Element? $h@@2))
)))
(assert (forall (($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M1.UnionFind? $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1175|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M1.UnionFind? $h@@3))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |608|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |606|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (t0@@1 T@U) (t1@@1 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@9 bx) (and ($IsBox bx t0@@1) ($IsBox (MapType0Select BoxType BoxType b@@6 bx) t1@@1)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |879|
)) ($Is MapType (|Map#Glue| a@@9 b@@6 (TMap t0@@1 t1@@1)) (TMap t0@@1 t1@@1)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |880|
 :pattern ( (|Map#Glue| a@@9 b@@6 (TMap t0@@1 t1@@1)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@2) (|Set#IsMember| b@@7 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |737|
 :pattern ( (|Set#IsMember| a@@10 o@@2))
 :pattern ( (|Set#IsMember| b@@7 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |738|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@4) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |617|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@3)) (not (|Set#IsMember| b@@8 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |742|
 :pattern ( (|Set#IsMember| a@@11 o@@3))
 :pattern ( (|Set#IsMember| b@@8 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |743|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (forall ((m@@4 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@4 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |744|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1041|
)))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |637|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |638|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M1.UnionFind) ($IsAlloc refType this@@0 Tclass.M1.UnionFind $Heap@@0)))) (forall ((|f#0| T@U) ) (!  (=> ($Is refType |f#0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.UnionFind.M))) ($Box refType |f#0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#0|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1216|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |f#0|) M1.Element.c)))
))))) (and (M1.__default.GoodCMap (M1.UnionFind.Collect $Heap@@0 this@@0)) ($Is MapType (M1.UnionFind.Collect $Heap@@0 this@@0) (TMap Tclass.M1.Element Tclass.M1.Contents))))
 :qid |UnionFinddfy.63:43|
 :skolemid |1217|
 :pattern ( (M1.UnionFind.Collect $Heap@@0 this@@0))
))))
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
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |630|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M1.Element?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Element.c)) Tclass.M1.Contents))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1169|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Element.c)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M1.Element) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M1.Element)))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( ($IsBox bx@@3 Tclass.M1.Element))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M1.Contents) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M1.Contents)))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( ($IsBox bx@@4 Tclass.M1.Contents))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M1.Element?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.M1.Element?)))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( ($IsBox bx@@5 Tclass.M1.Element?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M1.UnionFind?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.M1.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |1173|
 :pattern ( ($IsBox bx@@6 Tclass.M1.UnionFind?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M1.UnionFind) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.M1.UnionFind)))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsBox bx@@7 Tclass.M1.UnionFind))
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
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.M1.Element)  (and ($Is refType |c#0@@1| Tclass.M1.Element?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($Is refType |c#0@@1| Tclass.M1.Element))
 :pattern ( ($Is refType |c#0@@1| Tclass.M1.Element?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.M1.UnionFind)  (and ($Is refType |c#0@@2| Tclass.M1.UnionFind?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.UnionFind))
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.UnionFind?))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M1.Element?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Element.c)) Tclass.M1.Contents $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1170|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Element.c)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@4)  (or (|Set#IsMember| a@@12 o@@4) (|Set#IsMember| b@@9 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |724|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@4))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |727|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M1.UnionFind?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.UnionFind.M)) (TMap Tclass.M1.Element Tclass.M1.Element) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1298|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.UnionFind.M)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M1.UnionFind?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.UnionFind.M)) (TMap Tclass.M1.Element Tclass.M1.Element)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1297|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.UnionFind.M)))
)))
(assert (forall ((|a#2#0#0@@2| Int) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@2|) Tclass.M1.Contents $h@@9) ($IsAlloc intType (int_2_U |a#2#0#0@@2|) Tclass._System.nat $h@@9)))
 :qid |UnionFinddfy.42:28|
 :skolemid |1149|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Contents.Root| |a#2#0#0@@2|) Tclass.M1.Contents $h@@9))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0@@0|) Tclass.M1.Contents $h@@10) ($IsAlloc refType |a#7#0#0@@0| Tclass.M1.Element $h@@10)))
 :qid |UnionFinddfy.42:47|
 :skolemid |1158|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Contents.Link| |a#7#0#0@@0|) Tclass.M1.Contents $h@@10))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M1.Contents) (or (M1.Contents.Root_q d@@6) (M1.Contents.Link_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (M1.Contents.Link_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Contents))
 :pattern ( (M1.Contents.Root_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Contents))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#5| |l#0@@1| |l#1@@1|) |$w#0@@0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#0@@1| ($Unbox refType |$w#0@@0|)) |l#1@@1|))
 :qid |UnionFinddfy.63:43|
 :skolemid |4528|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#5| |l#0@@1| |l#1@@1|) |$w#0@@0|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |698|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |629|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((v@@2 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@3) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@3 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |658|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |659|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@3) h@@0))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |600|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |601|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |602|
 :pattern ( (TMap t@@5 u@@1))
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
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |592|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |593|
 :pattern ( (TSet t@@7))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |616|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((v@@3 T@U) (t0@@4 T@U) (t1@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@4 t1@@2) h@@1) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@9) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@9) t1@@2 h@@1) ($IsAllocBox bx@@9 t0@@4 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |666|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@9))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |667|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@4 t1@@2) h@@1))
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
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)) (|Set#Union| a@@14 b@@11))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |730|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |876|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@10 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |627|
 :pattern ( ($IsBox bx@@10 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |864|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |865|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |866|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |867|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |875|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |873|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |874|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@5))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |675|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@12 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |623|
 :pattern ( ($IsBox bx@@12 (TSet t@@9)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@13) t1@@3) ($IsBox bx@@13 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |646|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |647|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |1049|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@11))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@11))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@12))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@12))
)))
(assert (forall ((d@@10 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M1.Contents.Root_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.M1.Contents $h@@13))) ($IsAlloc intType (int_2_U (M1.Contents.depth d@@10)) Tclass._System.nat $h@@13))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( ($IsAlloc intType (int_2_U (M1.Contents.depth d@@10)) Tclass._System.nat $h@@13))
)))
(assert (forall ((d@@11 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (M1.Contents.Link_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.M1.Contents $h@@14))) ($IsAlloc refType (M1.Contents.next d@@11) Tclass.M1.Element $h@@14))
 :qid |unknown.0:0|
 :skolemid |1159|
 :pattern ( ($IsAlloc refType (M1.Contents.next d@@11) Tclass.M1.Element $h@@14))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1053|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |609|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
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
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |607|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0@@0| T@U) ) (!  (=> (or (|M1.__default.GoodCMap#canCall| |C#0@@0|) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0@@0| (TMap Tclass.M1.Element Tclass.M1.Contents)))) (= (M1.__default.GoodCMap |C#0@@0|) (forall ((|f#0@@0| T@U) ) (!  (=> ($Is refType |f#0@@0| Tclass.M1.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@0|) ($Box refType |f#0@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@0|) ($Box refType |f#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@0|) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@0|) ($Box refType |f#0@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1132|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@0|) ($Box refType |f#0@@0|))))
))))
 :qid |UnionFinddfy.48:28|
 :skolemid |1133|
 :pattern ( (M1.__default.GoodCMap |C#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|M1.UnionFind.Collect#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) (or (not (= this@@1 null)) (not true))) ($IsAlloc refType this@@1 Tclass.M1.UnionFind $Heap@@1)) (forall ((|f#0@@1| T@U) ) (!  (=> ($Is refType |f#0@@1| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.M))) ($Box refType |f#0@@1|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |f#0@@1|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |f#0@@1|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1216|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |f#0@@1|) M1.Element.c)))
))))) ($IsAlloc MapType (M1.UnionFind.Collect $Heap@@1 this@@1) (TMap Tclass.M1.Element Tclass.M1.Contents) $Heap@@1))
 :qid |UnionFinddfy.63:43|
 :skolemid |1218|
 :pattern ( ($IsAlloc MapType (M1.UnionFind.Collect $Heap@@1 this@@1) (TMap Tclass.M1.Element Tclass.M1.Contents) $Heap@@1))
))))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@7 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@7)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |868|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |869|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@8 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@8 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@8) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@8) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@8) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |648|
 :pattern ( ($Is MapType v@@8 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |e#1@0| () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |a#1@0| () T@U)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |a#0@0| () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |f#3@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M1.UnionFind.Collect)
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
 (=> (= (ControlFlow 0 0) 35) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=> (|M1.__default.GoodCMap#canCall| (M1.UnionFind.Collect $Heap@@2 this@@2)) (or (M1.__default.GoodCMap (M1.UnionFind.Collect $Heap@@2 this@@2)) (forall ((|f#2| T@U) ) (!  (=> ($Is refType |f#2| Tclass.M1.Element?) (=> (and (|Set#IsMember| (|Map#Domain| (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Box refType |f#2|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Box refType |f#2|))))) (|Set#IsMember| (|Map#Domain| (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Box refType |f#2|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |1222|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M1.UnionFind.Collect $Heap@@2 this@@2)) ($Box refType |f#2|))))
)))))))
(let ((anon15_correct  (=> (and (= (M1.UnionFind.Collect $Heap@@2 this@@2) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (|lambda#5| $Heap@@2 M1.Element.c) (TMap Tclass.M1.Element Tclass.M1.Contents))) ($Is MapType (M1.UnionFind.Collect $Heap@@2 this@@2) (TMap Tclass.M1.Element Tclass.M1.Contents))) (and (=> (= (ControlFlow 0 6) (- 0 8)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 6) (- 0 7)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (=> (= (ControlFlow 0 6) 5) GeneratedUnifiedExit_correct))))))))
(let ((anon24_Else_correct  (=> (and (and (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |e#1@0|))) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 12) 6))) anon15_correct)))
(let ((anon24_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |e#1@0|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= |e#1@0| null)) (not true))) (=> (or (not (= |e#1@0| null)) (not true)) (=> (and (and (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |e#1@0| M1.Element.c))) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= (ControlFlow 0 10) 6))) anon15_correct))))))
(let ((anon23_Then_correct  (=> (and (and ($Is refType |e#1@0| Tclass.M1.Element) ($IsAlloc refType |e#1@0| Tclass.M1.Element $Heap@@2)) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 M1.UnionFind.M)))) (and (=> (= (ControlFlow 0 13) 10) anon24_Then_correct) (=> (= (ControlFlow 0 13) 12) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (and (not (and ($Is refType |e#1@0| Tclass.M1.Element) ($IsAlloc refType |e#1@0| Tclass.M1.Element $Heap@@2))) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 9) 6))) anon15_correct)))
(let ((anon22_Then_correct  (=> (and ($Is MapType (M1.UnionFind.Collect $Heap@@2 this@@2) (TMap Tclass.M1.Element Tclass.M1.Contents)) ($IsAllocBox ($Box refType this@@2) Tclass.M1.UnionFind? $Heap@@2)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|f#4| T@U) ) (!  (=> ($Is refType |f#4| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#4|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1225|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4|) M1.Element.c)))
))) (=> (and (forall ((|f#4@@0| T@U) ) (!  (=> ($Is refType |f#4@@0| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#4@@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4@@0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4@@0|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1226|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#4@@0|) M1.Element.c)))
)) (= (ControlFlow 0 2) (- 0 1))) (or (= this@@2 this@@2) (and (|Set#Subset| (|Set#Union| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (|Set#Union| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))) (not (|Set#Subset| (|Set#Union| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (|Set#Union| (|Set#FromBoogieMap| (|lambda#4| Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))))))))))))
(let ((anon21_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |a#1@0|))) (and (and (=> (= (ControlFlow 0 16) 2) anon22_Then_correct) (=> (= (ControlFlow 0 16) 13) anon23_Then_correct)) (=> (= (ControlFlow 0 16) 9) anon23_Else_correct)))))
(let ((anon21_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |a#1@0|)) (and (and (=> (= (ControlFlow 0 15) 2) anon22_Then_correct) (=> (= (ControlFlow 0 15) 13) anon23_Then_correct)) (=> (= (ControlFlow 0 15) 9) anon23_Else_correct)))))
(let ((anon20_Then_correct  (=> (and ($Is refType |a#1@0| Tclass.M1.Element) ($IsAlloc refType |a#1@0| Tclass.M1.Element $Heap@@2)) (and (=> (= (ControlFlow 0 17) 15) anon21_Then_correct) (=> (= (ControlFlow 0 17) 16) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not (and ($Is refType |a#1@0| Tclass.M1.Element) ($IsAlloc refType |a#1@0| Tclass.M1.Element $Heap@@2))) (and (and (=> (= (ControlFlow 0 14) 2) anon22_Then_correct) (=> (= (ControlFlow 0 14) 13) anon23_Then_correct)) (=> (= (ControlFlow 0 14) 9) anon23_Else_correct)))))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 18) 17) anon20_Then_correct) (=> (= (ControlFlow 0 18) 14) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |a#0@0|))) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 22) 18)) anon7_correct))))
(let ((anon19_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |a#0@0|)) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 21) 18)) anon7_correct))))
(let ((anon18_Then_correct  (=> (and (and ($Is refType |a#0@0| Tclass.M1.Element) ($IsAlloc refType |a#0@0| Tclass.M1.Element $Heap@@2)) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 M1.UnionFind.M)))) (and (=> (= (ControlFlow 0 23) 21) anon19_Then_correct) (=> (= (ControlFlow 0 23) 22) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not (and ($Is refType |a#0@0| Tclass.M1.Element) ($IsAlloc refType |a#0@0| Tclass.M1.Element $Heap@@2))) (=> (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 20) 18)) anon7_correct))))
(let ((anon4_correct  (=> (forall ((|f#0@@2| T@U) ) (!  (=> ($Is refType |f#0@@2| Tclass.M1.Element) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#0@@2|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0@@2|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0@@2|) M1.Element.c)))))))
 :qid |UnionFinddfy.64:23|
 :skolemid |1224|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#0@@2|) M1.Element.c)))
)) (and (=> (= (ControlFlow 0 24) (- 0 28)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 24) (- 0 27)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 24) (- 0 26)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 24) (- 0 25)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 24) 23) anon18_Then_correct) (=> (= (ControlFlow 0 24) 20) anon18_Else_correct)))))))))))))
(let ((anon17_Else_correct  (=> (and (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#3@0|)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c)))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c)))))) (= |b$reqreads#0@1| true)) (=> (and (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 33) 24))) anon4_correct))))
(let ((anon17_Then_correct  (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 M1.UnionFind.M))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType |f#3@0|))) (and (=> (= (ControlFlow 0 29) (- 0 32)) (or (not (= |f#3@0| null)) (not true))) (=> (or (not (= |f#3@0| null)) (not true)) (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |f#3@0| M1.Element.c))) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c)))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (or (not (= |f#3@0| null)) (not true))) (=> (or (not (= |f#3@0| null)) (not true)) (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |f#3@0| M1.Element.c))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c)))) (=> (M1.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c))) (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 M1.UnionFind.M))) (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))) ($Box refType (M1.Contents.next ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |f#3@0|) M1.Element.c))))) (= |b$reqreads#0@1| |b$reqreads#0@0|)) (=> (and (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 29) 24))) anon4_correct))))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#6| null $Heap@@2 alloc this@@2 Tclass.M1.Element (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) M1.UnionFind.M))))) (=> (and ($Is refType |f#3@0| Tclass.M1.Element) ($IsAlloc refType |f#3@0| Tclass.M1.Element $Heap@@2)) (and (=> (= (ControlFlow 0 34) 29) anon17_Then_correct) (=> (= (ControlFlow 0 34) 33) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.M1.UnionFind) ($IsAlloc refType this@@2 Tclass.M1.UnionFind $Heap@@2))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 35) 34))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
