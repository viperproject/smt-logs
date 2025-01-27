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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch? () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$BreadthFirstSearch () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.BreadthFirstSearch.Find (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Find#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.BreadthFirstSearch (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.BreadthFirstSearch.ValidMap (T@U T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun _module.BreadthFirstSearch.IsPath (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.__default.length (T@U T@U T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.length#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun SetType () T@T)
(declare-fun _module.BreadthFirstSearch.Successors (T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Successors#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.BreadthFirstSearch.R (T@U T@U Bool T@U T@U Int T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.R#canCall| (T@U T@U T@U Int T@U) Bool)
(declare-fun reveal__module.BreadthFirstSearch.R () Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.BreadthFirstSearch.IsClosed (T@U T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.IsClosed#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.BreadthFirstSearch.Succ (T@U T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Succ#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |lambda#10| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.IsPath#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.ValidMap#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch?_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List Tagclass._module.BreadthFirstSearch? Tagclass._module.BreadthFirstSearch |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List tytagFamily$BreadthFirstSearch)
)
(assert  (and (and (= (Ctor refType) 3) (= (Ctor MapType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex T@U) (this T@U) (|source#0| T@U) (|x#0| T@U) (|m#0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex))) ($IsBox |source#0| _module.BreadthFirstSearch$Vertex)) ($IsBox |x#0| _module.BreadthFirstSearch$Vertex)) ($Is MapType |m#0| (TMap _module.BreadthFirstSearch$Vertex (Tclass._module.List _module.BreadthFirstSearch$Vertex)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex this |source#0| |m#0|) (|Set#IsMember| (|Map#Domain| |m#0|) |x#0|))))) (and (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex ($LS $LZ) this |source#0| |x#0| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|)) ($Is DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|) (Tclass._module.List _module.BreadthFirstSearch$Vertex))))
 :qid |unknown.0:0|
 :skolemid |782|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|))
))))
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
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
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
(assert (forall ((_module.BreadthFirstSearch$Vertex@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@0) $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0 T@U) ($ly T@U) (|list#0| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0 (Lit DatatypeTypeType |list#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0| (Tclass._module.List _module._default.length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |list#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |list#0|)))))
(|_module.__default.length#canCall| _module._default.length$_T0 |tail#3|))) (= (_module.__default.length _module._default.length$_T0 ($LS $ly) (Lit DatatypeTypeType |list#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |list#0|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |list#0|)))))
(LitInt (+ 1 (_module.__default.length _module._default.length$_T0 ($LS $ly) |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |589|
 :pattern ( (_module.__default.length _module._default.length$_T0 ($LS $ly) (Lit DatatypeTypeType |list#0|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((_module._default.length$_T0@@0 T@U) ($ly@@0 T@U) (|list#0@@0| T@U) ) (! (= (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@0) |list#0@@0|) (_module.__default.length _module._default.length$_T0@@0 $ly@@0 |list#0@@0|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@0) |list#0@@0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#4_3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$y#4_3|))  (and ($IsBox |$y#4_3| |l#0|) (and (|Set#IsMember| |l#1| |$y#4_3|) (not (|Set#IsMember| |l#2| |$y#4_3|)))))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$y#4_3|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
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
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.BreadthFirstSearch$Vertex@@1 T@U) (this@@0 T@U) (|S#0| T@U) (|AllVertices#0| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@1 this@@0 |S#0| |AllVertices#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($IsAlloc refType this@@0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@1) $Heap)) (and ($Is SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@1)) ($IsAlloc SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@1) $Heap))) (and ($Is SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@1)) ($IsAlloc SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@1) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@1 this@@0 |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@1) $Heap))
 :qid |BreadthFirstSearchdfy.186:18|
 :skolemid |730|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@1 this@@0 |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@1) $Heap))
))))
(assert (forall ((_module.List$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (= (Ctor FieldType) 8) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@2 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@2) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@2) $h@@2))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@3 T@U) ($ly@@1 T@U) (this@@1 T@U) (|source#0@@0| T@U) (|n#0| Int) (|AllVertices#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@3))) ($IsBox |source#0@@0| _module.BreadthFirstSearch$Vertex@@3)) (<= (LitInt 0) |n#0|)) ($Is SetType |AllVertices#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@3))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@3 ($LS $ly@@1) reveal__module.BreadthFirstSearch.R this@@1 |source#0@@0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@3 ($LS $ly@@1) true this@@1 |source#0@@0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (ite (= (LitInt |n#0|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0@@0|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@3 ($LS $ly@@1) reveal__module.BreadthFirstSearch.R this@@1 |source#0@@0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@3 this@@1 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@3 ($LS $ly@@1) reveal__module.BreadthFirstSearch.R this@@1 |source#0@@0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |724|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@3 ($LS $ly@@1) true this@@1 |source#0@@0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@4 T@U) (this@@2 T@U) (|S#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |S#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@4))) ($Is SetType |S#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@4))))) (and (forall ((|v#0| T@U) ) (!  (=> ($IsBox |v#0| _module.BreadthFirstSearch$Vertex@@4) (=> (|Set#IsMember| |S#0@@0| |v#0|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |622|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#0|))
 :pattern ( (|Set#IsMember| |S#0@@0| |v#0|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@4 this@@2 |S#0@@0|) (forall ((|v#0@@0| T@U) ) (!  (=> ($IsBox |v#0@@0| _module.BreadthFirstSearch$Vertex@@4) (=> (|Set#IsMember| |S#0@@0| |v#0@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#0@@0|) |S#0@@0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |621|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#0@@0|))
 :pattern ( (|Set#IsMember| |S#0@@0| |v#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@4 this@@2 |S#0@@0|))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#0|) (exists ((|x#0@@1| T@U) ) (!  (and ($IsBox |x#0@@1| |l#2@@0|) (and (|Set#IsMember| |l#3| |x#0@@1|) (|Set#IsMember| (_module.BreadthFirstSearch.Succ |l#4| |l#5| |x#0@@1|) |$y#0|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |732|
 :pattern ( (_module.BreadthFirstSearch.Succ |l#7| |l#8| |x#0@@1|))
 :pattern ( (|Set#IsMember| |l#6| |x#0@@1|))
)))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( (MapType0Select BoxType boolType (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8|) |$y#0|))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@3) (|Set#IsMember| b@@4 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@5 T@U) ($ly@@2 T@U) (this@@3 T@U) (|source#0@@1| T@U) (|dest#0| T@U) (|p#0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@5 this@@3 |source#0@@1| |dest#0| (Lit DatatypeTypeType |p#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5))) ($IsBox |source#0@@1| _module.BreadthFirstSearch$Vertex@@5)) ($IsBox |dest#0| _module.BreadthFirstSearch$Vertex@@5)) ($Is DatatypeTypeType |p#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@5))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@5 this@@3 |v#3|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@5 this@@3 |v#3|) |dest#0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@5 this@@3 |source#0@@1| |v#3| |tail#3@@0|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@5 ($LS $ly@@2) this@@3 |source#0@@1| |dest#0| (Lit DatatypeTypeType |p#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)) (= |source#0@@1| |dest#0|) (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@5 this@@3 |v#2|) |dest#0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@5 ($LS $ly@@2) this@@3 |source#0@@1| |v#2| |tail#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |615|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@5 ($LS $ly@@2) this@@3 |source#0@@1| |dest#0| (Lit DatatypeTypeType |p#0|)))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |840|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@4)) (not (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |841|
)))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |836|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@6 T@U) (this@@4 T@U) (|S#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@4) (Lit SetType |S#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@6))) ($Is SetType |S#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@6))))) (and (forall ((|v#2@@0| T@U) ) (!  (=> ($IsBox |v#2@@0| _module.BreadthFirstSearch$Vertex@@6) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2@@0|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@4) |v#2@@0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |628|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 this@@4 |v#2@@0|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2@@0|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@4) (Lit SetType |S#0@@1|)) (forall ((|v#2@@1| T@U) ) (!  (=> ($IsBox |v#2@@1| _module.BreadthFirstSearch$Vertex@@6) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2@@1|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@4) |v#2@@1|) |S#0@@1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |627|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 this@@4 |v#2@@1|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |629|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@4) (Lit SetType |S#0@@1|)))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@7 T@U) (this@@5 T@U) (|S#0@@2| T@U) (|AllVertices#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@7 this@@5 |S#0@@2| |AllVertices#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@7))) ($Is SetType |S#0@@2| (TSet _module.BreadthFirstSearch$Vertex@@7))) ($Is SetType |AllVertices#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@7))))) ($Is SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@7 this@@5 |S#0@@2| |AllVertices#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@7)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@7 this@@5 |S#0@@2| |AllVertices#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@8 T@U) (this@@6 T@U) (|source#0@@2| T@U) (|x#0@@3| T@U) (|m#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@8 this@@6 |source#0@@2| |x#0@@3| |m#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8))) ($IsBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@8)) ($IsBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@8)) ($Is MapType |m#0@@0| (TMap _module.BreadthFirstSearch$Vertex@@8 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@8)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@8 this@@6 |source#0@@2| |m#0@@0|) (|Set#IsMember| (|Map#Domain| |m#0@@0|) |x#0@@3|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@8 this@@6 |source#0@@2| |x#0@@3| |m#0@@0|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@0|) |x#0@@3|))))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@8 this@@6 |source#0@@2| |x#0@@3| |m#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@1 T@U) ($ly@@3 T@U) (|list#0@@1| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@1 |list#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@1| (Tclass._module.List _module._default.length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |list#0@@1|)) (let ((|tail#1| (_module.List.tail |list#0@@1|)))
(|_module.__default.length#canCall| _module._default.length$_T0@@1 |tail#1|))) (= (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@3) |list#0@@1|) (ite (_module.List.Nil_q |list#0@@1|) 0 (let ((|tail#0| (_module.List.tail |list#0@@1|)))
(+ 1 (_module.__default.length _module._default.length$_T0@@1 $ly@@3 |tail#0|)))))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@3) |list#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@9 T@U) (this@@7 T@U) (|x#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@9 this@@7 |x#0@@4|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@9))) ($IsBox |x#0@@4| _module.BreadthFirstSearch$Vertex@@9)))) ($Is SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@9 this@@7 |x#0@@4|) (TSet _module.BreadthFirstSearch$Vertex@@9)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@9 this@@7 |x#0@@4|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@10 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@10))  (and ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@10)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@10)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@10)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@11 T@U) ($ly@@4 T@U) (this@@8 T@U) (|source#0@@3| T@U) (|dest#0@@0| T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@8) (Lit BoxType |source#0@@3|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@11))) ($IsBox |source#0@@3| _module.BreadthFirstSearch$Vertex@@11)) ($IsBox |dest#0@@0| _module.BreadthFirstSearch$Vertex@@11)) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@11))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)))))) (let ((|tail#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#5| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@8) |v#5|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@8) |v#5|) (Lit BoxType |dest#0@@0|)) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@8) (Lit BoxType |source#0@@3|) |v#5| |tail#5|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@11 ($LS $ly@@4) (Lit refType this@@8) (Lit BoxType |source#0@@3|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)) (= (Lit BoxType |source#0@@3|) (Lit BoxType |dest#0@@0|)) (let ((|tail#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@8) |v#4|) (Lit BoxType |dest#0@@0|)) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@11 ($LS $ly@@4) (Lit refType this@@8) (Lit BoxType |source#0@@3|) |v#4| |tail#4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@11 ($LS $ly@@4) (Lit refType this@@8) (Lit BoxType |source#0@@3|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@12 T@U) ($ly@@5 T@U) ($reveal Bool) (this@@9 T@U) (|source#0@@4| T@U) (|n#0@@0| Int) (|AllVertices#0@@2| T@U) ) (! (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@12 ($LS $ly@@5) $reveal this@@9 |source#0@@4| |n#0@@0| |AllVertices#0@@2|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@12 $ly@@5 $reveal this@@9 |source#0@@4| |n#0@@0| |AllVertices#0@@2|))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@12 ($LS $ly@@5) $reveal this@@9 |source#0@@4| |n#0@@0| |AllVertices#0@@2|))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@13 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@13)) Tagclass._module.BreadthFirstSearch?) (= (TagFamily (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@13)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@13))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@14 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@14)) Tagclass._module.BreadthFirstSearch) (= (TagFamily (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@14)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@14))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@15 T@U) ($ly@@6 T@U) ($reveal@@0 Bool) (this@@10 T@U) (|source#0@@5| T@U) (|n#0@@1| Int) (|AllVertices#0@@3| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@15 this@@10 |source#0@@5| |n#0@@1| |AllVertices#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@15))) ($IsBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@15)) (<= (LitInt 0) |n#0@@1|)) ($Is SetType |AllVertices#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@15))))) ($Is SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@15 $ly@@6 $reveal@@0 this@@10 |source#0@@5| |n#0@@1| |AllVertices#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@15)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@15 $ly@@6 $reveal@@0 this@@10 |source#0@@5| |n#0@@1| |AllVertices#0@@3|))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@16 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@16))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@16))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@16)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@17 T@U) (this@@11 T@U) (|S#0@@3| T@U) (|AllVertices#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@17 this@@11 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17))) ($Is SetType |S#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@17))) ($Is SetType |AllVertices#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@17))))) (and (forall ((|w#1| T@U) ) (!  (=> ($IsBox |w#1| _module.BreadthFirstSearch$Vertex@@17) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@4|) |w#1|) (forall ((|x#3| T@U) ) (!  (=> ($IsBox |x#3| _module.BreadthFirstSearch$Vertex@@17) (=> (|Set#IsMember| (Lit SetType |S#0@@3|) |x#3|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@17 this@@11 |x#3|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |738|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@17 this@@11 |x#3|))
 :pattern ( (|Set#IsMember| |S#0@@3| |x#3|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |740|
 :pattern ( (|Set#IsMember| |AllVertices#0@@4| |w#1|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@17 this@@11 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@17 (Lit SetType |AllVertices#0@@4|) _module.BreadthFirstSearch$Vertex@@17 (Lit SetType |S#0@@3|) _module.BreadthFirstSearch$Vertex@@17 this@@11 |S#0@@3| _module.BreadthFirstSearch$Vertex@@17 this@@11)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@17 this@@11 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5)  (or (|Set#IsMember| a@@9 o@@5) (|Set#IsMember| b@@6 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@18 T@U) ($ly@@7 T@U) (this@@12 T@U) (|source#0@@6| T@U) (|dest#0@@1| T@U) (|p#0@@1| T@U) ) (! (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@18 ($LS $ly@@7) this@@12 |source#0@@6| |dest#0@@1| |p#0@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@18 $ly@@7 this@@12 |source#0@@6| |dest#0@@1| |p#0@@1|))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@18 ($LS $ly@@7) this@@12 |source#0@@6| |dest#0@@1| |p#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@19 T@U) (this@@13 T@U) (|source#0@@7| T@U) (|m#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@19 (Lit refType this@@13) (Lit BoxType |source#0@@7|) (Lit MapType |m#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19))) ($IsBox |source#0@@7| _module.BreadthFirstSearch$Vertex@@19)) ($Is MapType |m#0@@1| (TMap _module.BreadthFirstSearch$Vertex@@19 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@19)))))) (and (forall ((|v#2@@2| T@U) ) (!  (=> ($IsBox |v#2@@2| _module.BreadthFirstSearch$Vertex@@19) (=> (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@2|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@19 (Lit refType this@@13) (Lit BoxType |source#0@@7|) |v#2@@2| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@1|)) |v#2@@2|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |776|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@1|) |v#2@@2|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@2|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@19 (Lit refType this@@13) (Lit BoxType |source#0@@7|) (Lit MapType |m#0@@1|)) (forall ((|v#2@@3| T@U) ) (!  (=> ($IsBox |v#2@@3| _module.BreadthFirstSearch$Vertex@@19) (=> (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@3|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@19 ($LS $LZ) (Lit refType this@@13) (Lit BoxType |source#0@@7|) |v#2@@3| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@1|)) |v#2@@3|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |775|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@1|) |v#2@@3|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@3|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |777|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@19 (Lit refType this@@13) (Lit BoxType |source#0@@7|) (Lit MapType |m#0@@1|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@20 T@U) (this@@14 T@U) (|source#0@@8| T@U) (|x#0@@5| T@U) (|m#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@14 |source#0@@8| |x#0@@5| (Lit MapType |m#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@20))) ($IsBox |source#0@@8| _module.BreadthFirstSearch$Vertex@@20)) ($IsBox |x#0@@5| _module.BreadthFirstSearch$Vertex@@20)) ($Is MapType |m#0@@2| (TMap _module.BreadthFirstSearch$Vertex@@20 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@20)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@20 this@@14 |source#0@@8| (Lit MapType |m#0@@2|)) (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#0@@5|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@20 this@@14 |source#0@@8| |x#0@@5| (Lit MapType |m#0@@2|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@2|)) |x#0@@5|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |786|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@20 this@@14 |source#0@@8| |x#0@@5| (Lit MapType |m#0@@2|)))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.BreadthFirstSearch$Vertex@@21 T@U) ($ly@@8 T@U) ($reveal@@1 Bool) (this@@15 T@U) (|source#0@@9| T@U) (|n#0@@2| Int) (|AllVertices#0@@5| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@21 this@@15 |source#0@@9| |n#0@@2| |AllVertices#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@15 null)) (not true)) ($IsAlloc refType this@@15 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21) $Heap@@0)) (and ($IsBox |source#0@@9| _module.BreadthFirstSearch$Vertex@@21) ($IsAllocBox |source#0@@9| _module.BreadthFirstSearch$Vertex@@21 $Heap@@0))) (<= (LitInt 0) |n#0@@2|)) (and ($Is SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@21)) ($IsAlloc SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@21) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 $ly@@8 $reveal@@1 this@@15 |source#0@@9| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@21) $Heap@@0))
 :qid |BreadthFirstSearchdfy.180:25|
 :skolemid |721|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 $ly@@8 $reveal@@1 this@@15 |source#0@@9| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@21) $Heap@@0))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module.BreadthFirstSearch$Vertex@@22 T@U) (this@@16 T@U) (|x#0@@6| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@22 this@@16 |x#0@@6|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@16 null)) (not true)) ($IsAlloc refType this@@16 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22) $Heap@@1)) (and ($IsBox |x#0@@6| _module.BreadthFirstSearch$Vertex@@22) ($IsAllocBox |x#0@@6| _module.BreadthFirstSearch$Vertex@@22 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@22 this@@16 |x#0@@6|) (TSet _module.BreadthFirstSearch$Vertex@@22) $Heap@@1))
 :qid |BreadthFirstSearchdfy.8:12|
 :skolemid |608|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@22 this@@16 |x#0@@6|) (TSet _module.BreadthFirstSearch$Vertex@@22) $Heap@@1))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |839|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |848|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |850|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module.BreadthFirstSearch$Vertex@@23 T@U) (this@@17 T@U) (|source#0@@10| T@U) (|x#0@@7| T@U) (|m#0@@3| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@17 |source#0@@10| |x#0@@7| |m#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@17 null)) (not true)) ($IsAlloc refType this@@17 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@23) $Heap@@2)) (and ($IsBox |source#0@@10| _module.BreadthFirstSearch$Vertex@@23) ($IsAllocBox |source#0@@10| _module.BreadthFirstSearch$Vertex@@23 $Heap@@2))) (and ($IsBox |x#0@@7| _module.BreadthFirstSearch$Vertex@@23) ($IsAllocBox |x#0@@7| _module.BreadthFirstSearch$Vertex@@23 $Heap@@2))) (and ($Is MapType |m#0@@3| (TMap _module.BreadthFirstSearch$Vertex@@23 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23))) ($IsAlloc MapType |m#0@@3| (TMap _module.BreadthFirstSearch$Vertex@@23 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)) $Heap@@2))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@23 this@@17 |source#0@@10| |m#0@@3|) (|Set#IsMember| (|Map#Domain| |m#0@@3|) |x#0@@7|))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@17 |source#0@@10| |x#0@@7| |m#0@@3|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23) $Heap@@2))
 :qid |BreadthFirstSearchdfy.234:18|
 :skolemid |783|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@17 |source#0@@10| |x#0@@7| |m#0@@3|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23) $Heap@@2))
))))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@24 T@U) ) (! (= (Tclass._module.BreadthFirstSearch?_0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@24)) _module.BreadthFirstSearch$Vertex@@24)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@24))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@25 T@U) ) (! (= (Tclass._module.BreadthFirstSearch_0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@25)) _module.BreadthFirstSearch$Vertex@@25)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@25))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4) t1@@0 h@@4) ($IsAllocBox bx@@4 t0@@2 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@26 T@U) (this@@18 T@U) (|source#0@@11| T@U) (|x#0@@8| T@U) (|m#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@26 (Lit refType this@@18) (Lit BoxType |source#0@@11|) (Lit BoxType |x#0@@8|) (Lit MapType |m#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@26))) ($IsBox |source#0@@11| _module.BreadthFirstSearch$Vertex@@26)) ($IsBox |x#0@@8| _module.BreadthFirstSearch$Vertex@@26)) ($Is MapType |m#0@@4| (TMap _module.BreadthFirstSearch$Vertex@@26 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@26)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@26 (Lit refType this@@18) (Lit BoxType |source#0@@11|) (Lit MapType |m#0@@4|)) (|Set#IsMember| (|Map#Domain| |m#0@@4|) |x#0@@8|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@26 (Lit refType this@@18) (Lit BoxType |source#0@@11|) (Lit BoxType |x#0@@8|) (Lit MapType |m#0@@4|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@4|)) (Lit BoxType |x#0@@8|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |787|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@26 (Lit refType this@@18) (Lit BoxType |source#0@@11|) (Lit BoxType |x#0@@8|) (Lit MapType |m#0@@4|)))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |849|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |851|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@27 T@U) (this@@19 T@U) (|source#0@@12| T@U) (|m#0@@5| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@19 |source#0@@12| |m#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@27))) ($IsBox |source#0@@12| _module.BreadthFirstSearch$Vertex@@27)) ($Is MapType |m#0@@5| (TMap _module.BreadthFirstSearch$Vertex@@27 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@27)))))) (and (forall ((|v#0@@1| T@U) ) (!  (=> ($IsBox |v#0@@1| _module.BreadthFirstSearch$Vertex@@27) (=> (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@1|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@19 |source#0@@12| |v#0@@1| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@1|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |770|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@1|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@27 this@@19 |source#0@@12| |m#0@@5|) (forall ((|v#0@@2| T@U) ) (!  (=> ($IsBox |v#0@@2| _module.BreadthFirstSearch$Vertex@@27) (=> (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@2|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@27 ($LS $LZ) this@@19 |source#0@@12| |v#0@@2| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@2|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |769|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@2|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@2|))
)))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@27 this@@19 |source#0@@12| |m#0@@5|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@5) $h@@4))) ($IsAllocBox (_module.List.head d@@7) _module.List$T@@5 $h@@4))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsAllocBox (_module.List.head d@@7) _module.List$T@@5 $h@@4))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@0| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@0|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@1) |l#2@@1|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |857|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@0|) $o@@1 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@28 T@U) (this@@20 T@U) (|S#0@@4| T@U) (|AllVertices#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@20) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@28))) ($Is SetType |S#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@28))) ($Is SetType |AllVertices#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@28))))) (and (forall ((|w#2| T@U) ) (!  (=> ($IsBox |w#2| _module.BreadthFirstSearch$Vertex@@28) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@6|) |w#2|) (forall ((|x#5| T@U) ) (!  (=> ($IsBox |x#5| _module.BreadthFirstSearch$Vertex@@28) (=> (|Set#IsMember| (Lit SetType |S#0@@4|) |x#5|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@20) |x#5|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |743|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@28 this@@20 |x#5|))
 :pattern ( (|Set#IsMember| |S#0@@4| |x#5|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |745|
 :pattern ( (|Set#IsMember| |AllVertices#0@@6| |w#2|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@20) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@28 (Lit SetType |AllVertices#0@@6|) _module.BreadthFirstSearch$Vertex@@28 (Lit SetType |S#0@@4|) _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@20) |S#0@@4| _module.BreadthFirstSearch$Vertex@@28 this@@20)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |746|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@20) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@29 T@U) (this@@21 T@U) (|S#0@@5| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@21 (Lit SetType |S#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@29))) ($Is SetType |S#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@29))))) (and (forall ((|v#1| T@U) ) (!  (=> ($IsBox |v#1| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@21 |v#1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |625|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@21 |v#1|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@21 (Lit SetType |S#0@@5|)) (forall ((|v#1@@0| T@U) ) (!  (=> ($IsBox |v#1@@0| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@21 |v#1@@0|) |S#0@@5|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |624|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@21 |v#1@@0|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |626|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@21 (Lit SetType |S#0@@5|)))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@6))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@7)) |u'|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@30 T@U) ($ly@@9 T@U) (this@@22 T@U) (|source#0@@13| T@U) (|dest#0@@2| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@30 this@@22 |source#0@@13| |dest#0@@2| |p#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@30))) ($IsBox |source#0@@13| _module.BreadthFirstSearch$Vertex@@30)) ($IsBox |dest#0@@2| _module.BreadthFirstSearch$Vertex@@30)) ($Is DatatypeTypeType |p#0@@2| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@30))))) (and (=> (not (_module.List.Nil_q |p#0@@2|)) (let ((|tail#1@@0| (_module.List.tail |p#0@@2|)))
(let ((|v#1@@1| (_module.List.head |p#0@@2|)))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@30 this@@22 |v#1@@1|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@30 this@@22 |v#1@@1|) |dest#0@@2|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@30 this@@22 |source#0@@13| |v#1@@1| |tail#1@@0|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@30 ($LS $ly@@9) this@@22 |source#0@@13| |dest#0@@2| |p#0@@2|) (ite (_module.List.Nil_q |p#0@@2|) (= |source#0@@13| |dest#0@@2|) (let ((|tail#0@@0| (_module.List.tail |p#0@@2|)))
(let ((|v#0@@3| (_module.List.head |p#0@@2|)))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@30 this@@22 |v#0@@3|) |dest#0@@2|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@30 $ly@@9 this@@22 |source#0@@13| |v#0@@3| |tail#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@30 ($LS $ly@@9) this@@22 |source#0@@13| |dest#0@@2| |p#0@@2|))
))))
(assert (forall ((d@@8 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@8)) (DtRank d@@8))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@31 T@U) (this@@23 T@U) (|S#0@@6| T@U) (|AllVertices#0@@7| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@31 this@@23 |S#0@@6| |AllVertices#0@@7|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@31))) ($Is SetType |S#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@31))) ($Is SetType |AllVertices#0@@7| (TSet _module.BreadthFirstSearch$Vertex@@31))))) (and (forall ((|w#0| T@U) ) (!  (=> ($IsBox |w#0| _module.BreadthFirstSearch$Vertex@@31) (=> (|Set#IsMember| |AllVertices#0@@7| |w#0|) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module.BreadthFirstSearch$Vertex@@31) (=> (|Set#IsMember| |S#0@@6| |x#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@31 this@@23 |x#1|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |733|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@31 this@@23 |x#1|))
 :pattern ( (|Set#IsMember| |S#0@@6| |x#1|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |735|
 :pattern ( (|Set#IsMember| |AllVertices#0@@7| |w#0|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@31 this@@23 |S#0@@6| |AllVertices#0@@7|) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@31 |AllVertices#0@@7| _module.BreadthFirstSearch$Vertex@@31 |S#0@@6| _module.BreadthFirstSearch$Vertex@@31 this@@23 |S#0@@6| _module.BreadthFirstSearch$Vertex@@31 this@@23)))))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@31 this@@23 |S#0@@6| |AllVertices#0@@7|))
))))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@8 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@32 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@32)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@32))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@9 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@32)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@33 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@33)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@33))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsBox bx@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@33)))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@4 t1@@2)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@11) t1@@2) ($IsBox bx@@11 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@8 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((d@@9 T@U) (_module.List$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@9) (Tclass._module.List _module.List$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@9) (Tclass._module.List _module.List$T@@7) $h@@5))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@14 o@@6) (|Set#IsMember| b@@11 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@6))
 :pattern ( (|Set#IsMember| b@@11 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@6))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@6))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@7))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@7))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |847|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@2 T@U) ($ly@@10 T@U) (|list#0@@2| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@2 |list#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@2| (Tclass._module.List _module._default.length$_T0@@2)))) (<= (LitInt 0) (_module.__default.length _module._default.length$_T0@@2 $ly@@10 |list#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.length _module._default.length$_T0@@2 $ly@@10 |list#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@34 T@U) ($ly@@11 T@U) (this@@24 T@U) (|source#0@@14| T@U) (|n#0@@3| Int) (|AllVertices#0@@8| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@34 this@@24 |source#0@@14| |n#0@@3| |AllVertices#0@@8|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@34))) ($IsBox |source#0@@14| _module.BreadthFirstSearch$Vertex@@34)) (<= (LitInt 0) |n#0@@3|)) ($Is SetType |AllVertices#0@@8| (TSet _module.BreadthFirstSearch$Vertex@@34))))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@34 this@@24 |source#0@@14| (- |n#0@@3| 1) |AllVertices#0@@8|) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@34 this@@24 |source#0@@14| (- |n#0@@3| 1) |AllVertices#0@@8|) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@34 this@@24 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@34 $ly@@11 reveal__module.BreadthFirstSearch.R this@@24 |source#0@@14| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|)))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@34 ($LS $ly@@11) true this@@24 |source#0@@14| |n#0@@3| |AllVertices#0@@8|) (ite (= |n#0@@3| (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0@@14|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@34 $ly@@11 reveal__module.BreadthFirstSearch.R this@@24 |source#0@@14| (- |n#0@@3| 1) |AllVertices#0@@8|) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@34 this@@24 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@34 $ly@@11 reveal__module.BreadthFirstSearch.R this@@24 |source#0@@14| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|))))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@34 ($LS $ly@@11) true this@@24 |source#0@@14| |n#0@@3| |AllVertices#0@@8|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@35 T@U) ($ly@@12 T@U) (this@@25 T@U) (|source#0@@15| T@U) (|n#0@@4| Int) (|AllVertices#0@@9| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@35 (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@35))) ($IsBox |source#0@@15| _module.BreadthFirstSearch$Vertex@@35)) (<= (LitInt 0) |n#0@@4|)) ($Is SetType |AllVertices#0@@9| (TSet _module.BreadthFirstSearch$Vertex@@35))))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@35 (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@35 (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@35 (Lit refType this@@25) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@35 ($LS $ly@@12) reveal__module.BreadthFirstSearch.R (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@35 ($LS $ly@@12) true (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| (Lit BoxType |source#0@@15|)) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@35 ($LS $ly@@12) reveal__module.BreadthFirstSearch.R (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@35 (Lit refType this@@25) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@35 ($LS $ly@@12) reveal__module.BreadthFirstSearch.R (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |725|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@35 ($LS $ly@@12) true (Lit refType this@@25) (Lit BoxType |source#0@@15|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)))
))))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@8)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$T@@8 $h@@8) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$T@@8) $h@@8))))
 :qid |unknown.0:0|
 :skolemid |844|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@8))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@3 T@U) (v@@9 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@9)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@36 T@U) (this@@26 T@U) (|source#0@@16| T@U) (|m#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@36 this@@26 |source#0@@16| (Lit MapType |m#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@36))) ($IsBox |source#0@@16| _module.BreadthFirstSearch$Vertex@@36)) ($Is MapType |m#0@@6| (TMap _module.BreadthFirstSearch$Vertex@@36 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@36)))))) (and (forall ((|v#1@@2| T@U) ) (!  (=> ($IsBox |v#1@@2| _module.BreadthFirstSearch$Vertex@@36) (=> (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@2|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@36 this@@26 |source#0@@16| |v#1@@2| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@6|)) |v#1@@2|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |773|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |v#1@@2|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@2|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@36 this@@26 |source#0@@16| (Lit MapType |m#0@@6|)) (forall ((|v#1@@3| T@U) ) (!  (=> ($IsBox |v#1@@3| _module.BreadthFirstSearch$Vertex@@36) (=> (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@3|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@36 ($LS $LZ) this@@26 |source#0@@16| |v#1@@3| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@6|)) |v#1@@3|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |772|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |v#1@@3|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@3|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |774|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@36 this@@26 |source#0@@16| (Lit MapType |m#0@@6|)))
))))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@10 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@10) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@10) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@10) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#4_0@1| () T@U)
(declare-fun _module.BreadthFirstSearch$Vertex@@37 () T@U)
(declare-fun this@@27 () T@U)
(declare-fun |source#0@@17| () T@U)
(declare-fun |d#0@1| () Int)
(declare-fun |AllVertices#0@@10| () T@U)
(declare-fun |$rhs#4_1@1| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |v#4_0@1| () T@U)
(declare-fun |dest#0@@3| () T@U)
(declare-fun |C#0@0| () T@U)
(declare-fun |Processed#0@0| () T@U)
(declare-fun |N#0@0| () T@U)
(declare-fun |V#0@0| () T@U)
(declare-fun |paths#0@0| () T@U)
(declare-fun |pathToV#4_0@1| () T@U)
(declare-fun |##n#4_1@1| () Int)
(declare-fun |w#4_2@1| () T@U)
(declare-fun |v#4_1@1| () T@U)
(declare-fun |d#0@0| () Int)
(declare-fun $Heap@@3 () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#4@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |newlyEncountered#4_0@0| () T@U)
(declare-fun |pathToV#4_0@0| () T@U)
(declare-fun |defass#v#4_0@0| () Bool)
(declare-fun |v#4_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr$loop#00@1| () T@U)
(declare-fun |##n#3@0| () Int)
(declare-fun |path#0| () T@U)
(declare-fun |V#0| () T@U)
(declare-fun |C#0| () T@U)
(declare-fun |N#0| () T@U)
(declare-fun |Processed#0| () T@U)
(declare-fun |paths#0| () T@U)
(declare-fun |defass#v#4_0| () Bool)
(declare-fun |v#4_0| () T@U)
(declare-fun |pathToV#4_0| () T@U)
(declare-fun |newlyEncountered#4_0| () T@U)
(declare-fun |path#0@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.BreadthFirstSearch.BFS_split35)
(set-option :timeout 10000)
(set-option :rlimit 8000000)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon83_correct  (=> (=> (not (|Set#Equal| |$rhs#4_0@1| |Set#Empty|)) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|)) (=> (and (=> (not (|Set#Equal| |$rhs#4_0@1| |Set#Empty|)) (|Set#Equal| (|Set#Union| |$rhs#4_1@1| |$rhs#4_0@1|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|))) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U true)))))))
(let ((anon159_Else_correct  (=> (and (|Set#Equal| |$rhs#4_0@1| |Set#Empty|) (= (ControlFlow 0 4) 2)) anon83_correct)))
(let ((anon159_Then_correct  (=> (and (and (and (not (|Set#Equal| |$rhs#4_0@1| |Set#Empty|)) ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@4) ($Is intType (int_2_U |d#0@1|) Tclass._System.nat))) (and (and ($IsAlloc intType (int_2_U |d#0@1|) Tclass._System.nat $Heap@4) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|) (= (ControlFlow 0 3) 2)))) anon83_correct)))
(let ((anon65_correct  (=> (and (and (and (and (=> (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (=> (|Set#Equal| |C#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|)) (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| (+ |d#0@1| 1) |AllVertices#0@@10|)))) (=> (and (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (|Set#Equal| |C#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|))) (|Set#Equal| (|Set#Union| (|Set#Union| |Processed#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|)) (|Set#Union| |N#0@0| (|Set#FromBoogieMap| (|lambda#4| _module.BreadthFirstSearch$Vertex@@37 (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) |V#0@0|)))) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| (+ |d#0@1| 1) |AllVertices#0@@10|)))) (and (= |$rhs#4_0@1| (|Set#Difference| |C#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|))) (= |$rhs#4_1@1| (|Set#Union| |Processed#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|))))) (and (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@4) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@4)) (and ($IsAllocBox |v#4_0@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4) ($IsAlloc MapType |paths#0@0| (TMap _module.BreadthFirstSearch$Vertex@@37 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) $Heap@4)))) (and (and (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|) (|Set#IsMember| (|Map#Domain| |paths#0@0|) |v#4_0@1|)) (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |v#4_0@1| |paths#0@0|)) (and (and (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |v#4_0@1| |paths#0@0|) (= |pathToV#4_0@1| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |v#4_0@1| |paths#0@0|))) (and (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 5) 3) anon159_Then_correct) (=> (= (ControlFlow 0 5) 4) anon159_Else_correct)))))
(let ((anon64_correct  (=> (and (and (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@4) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@4)) (and ($Is intType (int_2_U (+ |d#0@1| 1)) Tclass._System.nat) (= |##n#4_1@1| (+ |d#0@1| 1)))) (and (and ($IsAlloc intType (int_2_U |##n#4_1@1|) Tclass._System.nat $Heap@4) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| (+ |d#0@1| 1) |AllVertices#0@@10|) (= (ControlFlow 0 7) 5)))) anon65_correct)))
(let ((anon152_Else_correct  (=> (and (not (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) |w#4_2@1|) (not (|Set#IsMember| |V#0@0| |w#4_2@1|)))) (= (ControlFlow 0 10) 7)) anon64_correct)))
(let ((anon152_Then_correct  (=> (and (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) |w#4_2@1|) (not (|Set#IsMember| |V#0@0| |w#4_2@1|))) (= (ControlFlow 0 9) 7)) anon64_correct)))
(let ((anon151_Else_correct  (=> (not (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) |w#4_2@1|)) (and (=> (= (ControlFlow 0 12) 9) anon152_Then_correct) (=> (= (ControlFlow 0 12) 10) anon152_Else_correct)))))
(let ((anon151_Then_correct  (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|) |w#4_2@1|) (and (=> (= (ControlFlow 0 11) 9) anon152_Then_correct) (=> (= (ControlFlow 0 11) 10) anon152_Else_correct)))))
(let ((anon150_Then_correct  (=> (and (and (and ($IsBox |w#4_2@1| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |w#4_2@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4)) ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and ($IsAllocBox |v#4_0@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#4_0@1|))) (and (=> (= (ControlFlow 0 13) 11) anon151_Then_correct) (=> (= (ControlFlow 0 13) 12) anon151_Else_correct)))))
(let ((anon150_Else_correct  (=> (and (not (and ($IsBox |w#4_2@1| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |w#4_2@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4))) (= (ControlFlow 0 8) 7)) anon64_correct)))
(let ((anon149_Then_correct  (=> (and (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (|Set#Equal| |C#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|))) (and (=> (= (ControlFlow 0 14) 13) anon150_Then_correct) (=> (= (ControlFlow 0 14) 8) anon150_Else_correct)))))
(let ((anon149_Else_correct  (=> (and (not (and (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (|Set#Equal| |C#0@0| (|Set#UnionOne| |Set#Empty| |v#4_0@1|)))) (= (ControlFlow 0 6) 5)) anon65_correct)))
(let ((anon148_Else_correct  (=> (= |v#4_0@1| |dest#0@@3|) (and (=> (= (ControlFlow 0 16) 14) anon149_Then_correct) (=> (= (ControlFlow 0 16) 6) anon149_Else_correct)))))
(let ((anon148_Then_correct  (=> (or (not (= |v#4_0@1| |dest#0@@3|)) (not true)) (and (=> (= (ControlFlow 0 15) 14) anon149_Then_correct) (=> (= (ControlFlow 0 15) 6) anon149_Else_correct)))))
(let ((anon45_correct  (=> (exists ((|$as#v4_0#4_0| T@U) ) (!  (and ($IsBox |$as#v4_0#4_0| _module.BreadthFirstSearch$Vertex@@37) (|Set#IsMember| |C#0@0| |$as#v4_0#4_0|))
 :qid |BreadthFirstSearchdfy.92:11|
 :skolemid |682|
)) (=> (and (=> true (and ($IsBox |v#4_0@1| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |v#4_0@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4))) (|Set#IsMember| |C#0@0| |v#4_0@1|)) (and (=> (= (ControlFlow 0 17) 15) anon148_Then_correct) (=> (= (ControlFlow 0 17) 16) anon148_Else_correct))))))
(let ((anon141_Else_correct  (=> (and (not (and ($IsBox |v#4_1@1| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |v#4_1@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4))) (= (ControlFlow 0 19) 17)) anon45_correct)))
(let ((anon141_Then_correct  (=> (and (and ($IsBox |v#4_1@1| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |v#4_1@1| _module.BreadthFirstSearch$Vertex@@37 $Heap@4)) (= (ControlFlow 0 18) 17)) anon45_correct)))
(let ((anon12_correct  (=> (and (and (=> (or (not (= |d#0@0| 0)) (not true)) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| (- |d#0@0| 1) |AllVertices#0@@10|)) (=> (or (not (= |d#0@0| 0)) (not true)) (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| (- |d#0@0| 1) |AllVertices#0@@10|) |dest#0@@3|)))) (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3))) (=> (and (and (and (and (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@3)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|))) (and (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) (|Set#Equal| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|))) (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) ($IsAlloc SetType |$rhs#3@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)))) (and (and (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |$rhs#3@0| |AllVertices#0@@10|)) (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3))) (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@3)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|))))) (and (and (and (and (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |$rhs#3@0| |AllVertices#0@@10|) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|)) (|Set#Equal| |$rhs#2@0| (|Set#Difference| (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@37 this@@27 |$rhs#3@0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|)))) (and (U_2_bool (Lit boolType (bool_2_U true))) (= |$decr_init$loop#00@0| (|Set#Difference| |AllVertices#0@@10| |$rhs#3@0|)))) (and (and (=> |$w$loop#0@0| (|Set#Subset| |$rhs#0@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Subset| |$rhs#3@0| |AllVertices#0@@10|))) (and (=> |$w$loop#0@0| (|Set#Subset| |$rhs#1@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Subset| |$rhs#2@0| |AllVertices#0@@10|)))))) (and (and (and (and (and (=> |$w$loop#0@0| (|Set#IsMember| |$rhs#0@0| |source#0@@17|)) (=> |$w$loop#0@0| (|Set#Equal| |$rhs#0@0| (|Set#Union| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) |$rhs#2@0|)))) (and (=> |$w$loop#0@0| (|Set#Disjoint| |$rhs#3@0| |$rhs#1@0|)) (=> |$w$loop#0@0| (|Set#Disjoint| |$rhs#3@0| |$rhs#1@0|)))) (and (and (=> |$w$loop#0@0| (|Set#Disjoint| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) |$rhs#2@0|)) (=> |$w$loop#0@0| (=> (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |$rhs#4@0|) (or (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |$rhs#4@0|) (forall ((|v#6| T@U) ) (!  (=> ($IsBox |v#6| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| (|Map#Domain| |$rhs#4@0|) |v#6|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) this@@27 |source#0@@17| |v#6| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$rhs#4@0|) |v#6|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |661|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$rhs#4@0|) |v#6|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |$rhs#4@0|) |v#6|))
)))))) (and (=> |$w$loop#0@0| (|Set#Equal| |$rhs#0@0| (|Map#Domain| |$rhs#4@0|))) (=> |$w$loop#0@0| (forall ((|x#1@@0| T@U) ) (!  (=> ($IsBox |x#1@@0| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |$rhs#1@0| |x#1@@0|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@0| |$rhs#4@0|)) |d#0@0|)))
 :qid |BreadthFirstSearchdfy.77:24|
 :skolemid |670|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@0| |$rhs#4@0|))
 :pattern ( (|Set#IsMember| |$rhs#1@0| |x#1@@0|))
)))))) (and (and (and (=> |$w$loop#0@0| (forall ((|x#3@@0| T@U) ) (!  (=> ($IsBox |x#3@@0| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |$rhs#2@0| |x#3@@0|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@0| |$rhs#4@0|)) (+ |d#0@0| 1))))
 :qid |BreadthFirstSearchdfy.78:24|
 :skolemid |678|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@0| |$rhs#4@0|))
 :pattern ( (|Set#IsMember| |$rhs#2@0| |x#3@@0|))
))) (=> |$w$loop#0@0| (=> (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) |dest#0@@3|) (|Set#IsMember| |$rhs#1@0| |dest#0@@3|)))) (and (=> |$w$loop#0@0| (=> (or (not (= |d#0@0| 0)) (not true)) (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| (- |d#0@0| 1) |AllVertices#0@@10|) |dest#0@@3|)))) (=> |$w$loop#0@0| (|Set#Equal| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|))))) (and (and (=> |$w$loop#0@0| (|Set#Equal| |$rhs#2@0| (|Set#Difference| (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@37 this@@27 |$rhs#3@0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|)))) (=> |$w$loop#0@0| (=> (|Set#Equal| |$rhs#1@0| |Set#Empty|) (|Set#Equal| |$rhs#2@0| |Set#Empty|)))) (and ($Is SetType |C#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |C#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4))))) (and (and (and (and ($Is SetType |N#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |N#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and ($Is SetType |V#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |V#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and ($Is MapType |paths#0@0| (TMap _module.BreadthFirstSearch$Vertex@@37 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37))) ($IsAlloc MapType |paths#0@0| (TMap _module.BreadthFirstSearch$Vertex@@37 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) $Heap@4)))) (and (and (and ($Is SetType |newlyEncountered#4_0@0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |newlyEncountered#4_0@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (and ($Is SetType |Processed#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |Processed#0@0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@4))) (and (and ($Is DatatypeTypeType |pathToV#4_0@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc DatatypeTypeType |pathToV#4_0@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37) $Heap@4)) (=> |defass#v#4_0@0| (and ($IsBox |v#4_0@0| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |v#4_0@0| _module.BreadthFirstSearch$Vertex@@37 $Heap@4)))))))) (=> (and (and (and (and (and (and (and (<= 0 |d#0@1|) (not false)) (= |d#0@0| 0)) (= |d#0@0| 0)) (= |d#0@0| 0)) (=> |$w$loop#0@0| (|Set#Subset| |V#0@0| |AllVertices#0@@10|))) (and (=> |$w$loop#0@0| (|Set#Subset| |Processed#0@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Subset| |C#0@0| |AllVertices#0@@10|)))) (and (and (and (and (and (=> |$w$loop#0@0| (|Set#Subset| |N#0@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#IsMember| |V#0@0| |source#0@@17|))) (and (=> |$w$loop#0@0| (|Set#Equal| |V#0@0| (|Set#Union| (|Set#Union| |Processed#0@0| |C#0@0|) |N#0@0|))) (=> |$w$loop#0@0| (|Set#Disjoint| |Processed#0@0| |C#0@0|)))) (and (and (=> |$w$loop#0@0| (|Set#Disjoint| |Processed#0@0| |C#0@0|)) (=> |$w$loop#0@0| (|Set#Disjoint| (|Set#Union| |Processed#0@0| |C#0@0|) |N#0@0|))) (and (=> |$w$loop#0@0| (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|)) (=> |$w$loop#0@0| (=> (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|) (or (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|) (forall ((|v#6@@0| T@U) ) (!  (=> ($IsBox |v#6@@0| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| (|Map#Domain| |paths#0@0|) |v#6@@0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) this@@27 |source#0@@17| |v#6@@0| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |paths#0@0|) |v#6@@0|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |661|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |paths#0@0|) |v#6@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |paths#0@0|) |v#6@@0|))
)))))))) (and (and (and (=> |$w$loop#0@0| (and (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |paths#0@0|) (forall ((|v#6@@1| T@U) ) (!  (=> ($IsBox |v#6@@1| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| (|Map#Domain| |paths#0@0|) |v#6@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) this@@27 |source#0@@17| |v#6@@1| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |paths#0@0|) |v#6@@1|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |663|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |paths#0@0|) |v#6@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |paths#0@0|) |v#6@@1|))
))))) (=> |$w$loop#0@0| (|Set#Equal| |V#0@0| (|Map#Domain| |paths#0@0|)))) (and (=> |$w$loop#0@0| (forall ((|x#1@@1| T@U) ) (!  (=> ($IsBox |x#1@@1| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |C#0@0| |x#1@@1|) (and (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@1| |paths#0@0|) (|_module.__default.length#canCall| _module.BreadthFirstSearch$Vertex@@37 (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@1| |paths#0@0|)))))
 :qid |BreadthFirstSearchdfy.77:24|
 :skolemid |669|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@1| |paths#0@0|))
 :pattern ( (|Set#IsMember| |C#0@0| |x#1@@1|))
))) (=> |$w$loop#0@0| (forall ((|x#1@@2| T@U) ) (!  (=> ($IsBox |x#1@@2| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |C#0@0| |x#1@@2|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@2| |paths#0@0|)) |d#0@1|)))
 :qid |BreadthFirstSearchdfy.77:24|
 :skolemid |670|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@2| |paths#0@0|))
 :pattern ( (|Set#IsMember| |C#0@0| |x#1@@2|))
))))) (and (and (=> |$w$loop#0@0| (forall ((|x#1@@3| T@U) ) (!  (=> ($IsBox |x#1@@3| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |C#0@0| |x#1@@3|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@3| |paths#0@0|)) |d#0@1|)))
 :qid |BreadthFirstSearchdfy.77:24|
 :skolemid |671|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#1@@3| |paths#0@0|))
 :pattern ( (|Set#IsMember| |C#0@0| |x#1@@3|))
))) (=> |$w$loop#0@0| (forall ((|x#3@@1| T@U) ) (!  (=> ($IsBox |x#3@@1| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |N#0@0| |x#3@@1|) (and (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@1| |paths#0@0|) (|_module.__default.length#canCall| _module.BreadthFirstSearch$Vertex@@37 (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@1| |paths#0@0|)))))
 :qid |BreadthFirstSearchdfy.78:24|
 :skolemid |677|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@1| |paths#0@0|))
 :pattern ( (|Set#IsMember| |N#0@0| |x#3@@1|))
)))) (and (=> |$w$loop#0@0| (forall ((|x#3@@2| T@U) ) (!  (=> ($IsBox |x#3@@2| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |N#0@0| |x#3@@2|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@2| |paths#0@0|)) (+ |d#0@1| 1))))
 :qid |BreadthFirstSearchdfy.78:24|
 :skolemid |678|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@2| |paths#0@0|))
 :pattern ( (|Set#IsMember| |N#0@0| |x#3@@2|))
))) (=> |$w$loop#0@0| (forall ((|x#3@@3| T@U) ) (!  (=> ($IsBox |x#3@@3| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |N#0@0| |x#3@@3|) (= (_module.__default.length _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@3| |paths#0@0|)) (+ |d#0@1| 1))))
 :qid |BreadthFirstSearchdfy.78:24|
 :skolemid |679|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |x#3@@3| |paths#0@0|))
 :pattern ( (|Set#IsMember| |N#0@0| |x#3@@3|))
))))))) (and (and (and (and (=> |$w$loop#0@0| (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (=> (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|) |dest#0@@3|) (|Set#IsMember| |C#0@0| |dest#0@@3|)))) (and (=> |$w$loop#0@0| (=> (or (not (= |d#0@1| 0)) (not true)) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| (- |d#0@1| 1) |AllVertices#0@@10|))) (=> |$w$loop#0@0| (=> (or (not (= |d#0@1| 0)) (not true)) (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| (- |d#0@1| 1) |AllVertices#0@@10|) |dest#0@@3|)))))) (and (and (=> |$w$loop#0@0| (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Equal| (|Set#Union| |Processed#0@0| |C#0@0|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|)))) (and (=> |$w$loop#0@0| (and (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |Processed#0@0| |AllVertices#0@@10|) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|))) (=> |$w$loop#0@0| (|Set#Equal| |N#0@0| (|Set#Difference| (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@37 this@@27 |Processed#0@0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@1| |AllVertices#0@@10|))))))) (and (and (and (=> |$w$loop#0@0| (=> (|Set#Equal| |C#0@0| |Set#Empty|) (|Set#Equal| |N#0@0| |Set#Empty|))) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@2)))
 :qid |BreadthFirstSearchdfy.64:5|
 :skolemid |680|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@2))
))) (and ($HeapSucc $Heap@@3 $Heap@4) (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@3) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@0))))
 :qid |BreadthFirstSearchdfy.64:5|
 :skolemid |681|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@3) $f@@0))
)))) (and (and (|Set#Subset| (|Set#Difference| |AllVertices#0@@10| |Processed#0@0|) |$decr_init$loop#00@0|) |$w$loop#0@0|) (and (not (|Set#Equal| |C#0@0| |Set#Empty|)) (= |$decr$loop#00@1| (|Set#Difference| |AllVertices#0@@10| |Processed#0@0|)))))))) (and (=> (= (ControlFlow 0 20) 18) anon141_Then_correct) (=> (= (ControlFlow 0 20) 19) anon141_Else_correct)))))))
(let ((anon123_Else_correct  (=> (and (= |d#0@0| 0) (= (ControlFlow 0 22) 20)) anon12_correct)))
(let ((anon123_Then_correct  (=> (or (not (= |d#0@0| 0)) (not true)) (=> (and (and (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3)) (and ($Is intType (int_2_U (- |d#0@0| 1)) Tclass._System.nat) (= |##n#3@0| (- |d#0@0| 1)))) (and (and ($IsAlloc intType (int_2_U |##n#3@0|) Tclass._System.nat $Heap@@3) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| (- |d#0@0| 1) |AllVertices#0@@10|) (= (ControlFlow 0 21) 20)))) anon12_correct))))
(let ((anon6_correct  (=> (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) |dest#0@@3|) (|Set#IsMember| |$rhs#1@0| |dest#0@@3|))) (and (=> (= (ControlFlow 0 23) 21) anon123_Then_correct) (=> (= (ControlFlow 0 23) 22) anon123_Else_correct)))))
(let ((anon120_Else_correct  (=> (and (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) |dest#0@@3|)) (= (ControlFlow 0 25) 23)) anon6_correct)))
(let ((anon120_Then_correct  (=> (and (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@37 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|) |dest#0@@3|) (= (ControlFlow 0 24) 23)) anon6_correct)))
(let ((anon0_correct  (=> (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc refType this@@27 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)))) (=> (and (and (and ($IsBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3)) (and ($IsBox |dest#0@@3| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |dest#0@@3| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3))) (and (and ($Is SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) (and ($Is DatatypeTypeType |path#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc DatatypeTypeType |path#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)))) (=> (and (and (and (and ($Is SetType |V#0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |V#0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true) (and (and ($Is SetType |C#0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |C#0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true)) (and (and (and ($Is SetType |N#0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |N#0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true) (and (and ($Is SetType |Processed#0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |Processed#0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true))) (=> (and (and (and (and (and (and ($Is MapType |paths#0| (TMap _module.BreadthFirstSearch$Vertex@@37 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37))) ($IsAlloc MapType |paths#0| (TMap _module.BreadthFirstSearch$Vertex@@37 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) $Heap@@3)) true) (and (=> |defass#v#4_0| (and ($IsBox |v#4_0| _module.BreadthFirstSearch$Vertex@@37) ($IsAllocBox |v#4_0| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3))) true)) (and (and ($Is DatatypeTypeType |pathToV#4_0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc DatatypeTypeType |pathToV#4_0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true)) (and (and (and (and ($Is SetType |newlyEncountered#4_0| (TSet _module.BreadthFirstSearch$Vertex@@37)) ($IsAlloc SetType |newlyEncountered#4_0| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3)) true) (= 5 $FunctionContextHeight)) (and (|Set#IsMember| |AllVertices#0@@10| |source#0@@17|) (|Set#IsMember| |AllVertices#0@@10| |dest#0@@3|)))) (and (and (and (and (and (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |AllVertices#0@@10|) (and (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@37 this@@27 |AllVertices#0@@10|) (forall ((|v#3@@0| T@U) ) (!  (=> ($IsBox |v#3@@0| _module.BreadthFirstSearch$Vertex@@37) (=> (|Set#IsMember| |AllVertices#0@@10| |v#3@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#3@@0|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |649|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@37 this@@27 |v#3@@0|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#3@@0|))
)))) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false))) (and (= |path#0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |$rhs#0@0| (|Set#UnionOne| |Set#Empty| |source#0@@17|)))) (and (and (= |$rhs#1@0| (|Set#UnionOne| |Set#Empty| |source#0@@17|)) (= |$rhs#2@0| (Lit SetType |Set#Empty|))) (and (= |$rhs#3@0| (Lit SetType |Set#Empty|)) (= |$rhs#4@0| (|Map#Build| |Map#Empty| |source#0@@17| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))))))) (and (and (and (|Set#Equal| (|Map#Domain| |$rhs#4@0|) (|Set#UnionOne| |Set#Empty| |source#0@@17|)) (= |d#0@0| (LitInt 0))) (and ($IsAllocBox ($Box refType this@@27) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) ($IsAllocBox |source#0@@17| _module.BreadthFirstSearch$Vertex@@37 $Heap@@3))) (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@3)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@37) $Heap@@3) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@37 this@@27 |source#0@@17| |d#0@0| |AllVertices#0@@10|)))))) (and (=> (= (ControlFlow 0 26) 24) anon120_Then_correct) (=> (= (ControlFlow 0 26) 25) anon120_Else_correct))))))))
anon0_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
