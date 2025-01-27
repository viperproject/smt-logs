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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.BreadthFirstSearch (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SetType () T@T)
(declare-fun _module.BreadthFirstSearch.Successors (T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Successors#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.BreadthFirstSearch.R (T@U T@U Bool T@U T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.R#canCall| (T@U T@U T@U Int T@U) Bool)
(declare-fun reveal__module.BreadthFirstSearch.R () Bool)
(declare-fun _module.BreadthFirstSearch.IsClosed (T@U T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.IsClosed#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.BreadthFirstSearch.Succ (T@U T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Succ#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |lambda#10| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
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
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
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
(assert (distinct TagSet TagMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List Tagclass._module.BreadthFirstSearch? Tagclass._module.BreadthFirstSearch |##_module.List.Nil| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List tytagFamily$BreadthFirstSearch)
)
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (= (Ctor refType) 3))
(assert (forall ((_module.BreadthFirstSearch$Vertex T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex) $h@@0) ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex) $h@@0))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex) $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
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
(assert (= (Ctor SetType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.BreadthFirstSearch$Vertex@@0 T@U) (this T@U) (|S#0| T@U) (|AllVertices#0| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($IsAlloc refType this (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $Heap)) (and ($Is SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@0)) ($IsAlloc SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))) (and ($Is SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@0)) ($IsAlloc SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))
 :qid |BreadthFirstSearchdfy.186:18|
 :skolemid |730|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))
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
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@1 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@2))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@2 T@U) ($ly T@U) (this@@0 T@U) (|source#0| T@U) (|n#0| Int) (|AllVertices#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@2))) ($IsBox |source#0| _module.BreadthFirstSearch$Vertex@@2)) (<= (LitInt 0) |n#0|)) ($Is SetType |AllVertices#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@2))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (ite (= (LitInt |n#0|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |724|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@3 T@U) (this@@1 T@U) (|S#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@3))) ($Is SetType |S#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@3))))) (and (forall ((|v#0| T@U) ) (!  (=> ($IsBox |v#0| _module.BreadthFirstSearch$Vertex@@3) (=> (|Set#IsMember| |S#0@@0| |v#0|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |v#0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |622|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@3 this@@1 |v#0|))
 :pattern ( (|Set#IsMember| |S#0@@0| |v#0|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0|) (forall ((|v#0@@0| T@U) ) (!  (=> ($IsBox |v#0@@0| _module.BreadthFirstSearch$Vertex@@3) (=> (|Set#IsMember| |S#0@@0| |v#0@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@3 this@@1 |v#0@@0|) |S#0@@0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |621|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@3 this@@1 |v#0@@0|))
 :pattern ( (|Set#IsMember| |S#0@@0| |v#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#10| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0|) (exists ((|x#0@@0| T@U) ) (!  (and ($IsBox |x#0@@0| |l#2|) (and (|Set#IsMember| |l#3| |x#0@@0|) (|Set#IsMember| (_module.BreadthFirstSearch.Succ |l#4| |l#5| |x#0@@0|) |$y#0|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |732|
 :pattern ( (_module.BreadthFirstSearch.Succ |l#7| |l#8| |x#0@@0|))
 :pattern ( (|Set#IsMember| |l#6| |x#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( (MapType0Select BoxType boolType (|lambda#10| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8|) |$y#0|))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
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
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@4 T@U) (this@@2 T@U) (|S#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@4 (Lit refType this@@2) (Lit SetType |S#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@4))) ($Is SetType |S#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@4))))) (and (forall ((|v#2| T@U) ) (!  (=> ($IsBox |v#2| _module.BreadthFirstSearch$Vertex@@4) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@4 (Lit refType this@@2) |v#2|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |628|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#2|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@4 (Lit refType this@@2) (Lit SetType |S#0@@1|)) (forall ((|v#2@@0| T@U) ) (!  (=> ($IsBox |v#2@@0| _module.BreadthFirstSearch$Vertex@@4) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 (Lit refType this@@2) |v#2@@0|) |S#0@@1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |627|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#2@@0|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |629|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@4 (Lit refType this@@2) (Lit SetType |S#0@@1|)))
))))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@5 T@U) (this@@3 T@U) (|S#0@@2| T@U) (|AllVertices#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@5 this@@3 |S#0@@2| |AllVertices#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5))) ($Is SetType |S#0@@2| (TSet _module.BreadthFirstSearch$Vertex@@5))) ($Is SetType |AllVertices#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@5))))) ($Is SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@5 this@@3 |S#0@@2| |AllVertices#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@5)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@5 this@@3 |S#0@@2| |AllVertices#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@6 T@U) (this@@4 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@6 this@@4 |x#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@6))) ($IsBox |x#0@@2| _module.BreadthFirstSearch$Vertex@@6)))) ($Is SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 this@@4 |x#0@@2|) (TSet _module.BreadthFirstSearch$Vertex@@6)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 this@@4 |x#0@@2|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@7 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@7))  (and ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@7)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@8 T@U) ($ly@@0 T@U) ($reveal Bool) (this@@5 T@U) (|source#0@@0| T@U) (|n#0@@0| Int) (|AllVertices#0@@2| T@U) ) (! (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@8 ($LS $ly@@0) $reveal this@@5 |source#0@@0| |n#0@@0| |AllVertices#0@@2|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@8 $ly@@0 $reveal this@@5 |source#0@@0| |n#0@@0| |AllVertices#0@@2|))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@8 ($LS $ly@@0) $reveal this@@5 |source#0@@0| |n#0@@0| |AllVertices#0@@2|))
)))
(assert (forall ((_module.List$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@1)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@1)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@1))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@9 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9)) Tagclass._module.BreadthFirstSearch?) (= (TagFamily (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@10 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@10)) Tagclass._module.BreadthFirstSearch) (= (TagFamily (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@10)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@10))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@11 T@U) ($ly@@1 T@U) ($reveal@@0 Bool) (this@@6 T@U) (|source#0@@1| T@U) (|n#0@@1| Int) (|AllVertices#0@@3| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@11 this@@6 |source#0@@1| |n#0@@1| |AllVertices#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@11))) ($IsBox |source#0@@1| _module.BreadthFirstSearch$Vertex@@11)) (<= (LitInt 0) |n#0@@1|)) ($Is SetType |AllVertices#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@11))))) ($Is SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@11 $ly@@1 $reveal@@0 this@@6 |source#0@@1| |n#0@@1| |AllVertices#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@11)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@11 $ly@@1 $reveal@@0 this@@6 |source#0@@1| |n#0@@1| |AllVertices#0@@3|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@12 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@12))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@12))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@12)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@13 T@U) (this@@7 T@U) (|S#0@@3| T@U) (|AllVertices#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@13 this@@7 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@13))) ($Is SetType |S#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@13))) ($Is SetType |AllVertices#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@13))))) (and (forall ((|w#1| T@U) ) (!  (=> ($IsBox |w#1| _module.BreadthFirstSearch$Vertex@@13) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@4|) |w#1|) (forall ((|x#3| T@U) ) (!  (=> ($IsBox |x#3| _module.BreadthFirstSearch$Vertex@@13) (=> (|Set#IsMember| (Lit SetType |S#0@@3|) |x#3|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#3|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |738|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#3|))
 :pattern ( (|Set#IsMember| |S#0@@3| |x#3|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |740|
 :pattern ( (|Set#IsMember| |AllVertices#0@@4| |w#1|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@13 this@@7 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@13 (Lit SetType |AllVertices#0@@4|) _module.BreadthFirstSearch$Vertex@@13 (Lit SetType |S#0@@3|) _module.BreadthFirstSearch$Vertex@@13 this@@7 |S#0@@3| _module.BreadthFirstSearch$Vertex@@13 this@@7)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@13 this@@7 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.BreadthFirstSearch$Vertex@@14 T@U) ($ly@@2 T@U) ($reveal@@1 Bool) (this@@8 T@U) (|source#0@@2| T@U) (|n#0@@2| Int) (|AllVertices#0@@5| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@14 this@@8 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@8 null)) (not true)) ($IsAlloc refType this@@8 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@14) $Heap@@0)) (and ($IsBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@14) ($IsAllocBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@14 $Heap@@0))) (<= (LitInt 0) |n#0@@2|)) (and ($Is SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@14)) ($IsAlloc SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@14) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@14 $ly@@2 $reveal@@1 this@@8 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@14) $Heap@@0))
 :qid |BreadthFirstSearchdfy.180:25|
 :skolemid |721|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@14 $ly@@2 $reveal@@1 this@@8 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@14) $Heap@@0))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module.BreadthFirstSearch$Vertex@@15 T@U) (this@@9 T@U) (|x#0@@3| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@15 this@@9 |x#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@9 null)) (not true)) ($IsAlloc refType this@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@15) $Heap@@1)) (and ($IsBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@15) ($IsAllocBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@15 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@15 this@@9 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@15) $Heap@@1))
 :qid |BreadthFirstSearchdfy.8:12|
 :skolemid |608|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@15 this@@9 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@15) $Heap@@1))
))))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@1))
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
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@2)) _module.List$T@@2)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@16 T@U) ) (! (= (Tclass._module.BreadthFirstSearch?_0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@16)) _module.BreadthFirstSearch$Vertex@@16)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@16))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@17 T@U) ) (! (= (Tclass._module.BreadthFirstSearch_0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17)) _module.BreadthFirstSearch$Vertex@@17)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (= (Ctor MapType) 9))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@3) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@3) t1@@0 h@@1) ($IsAllocBox bx@@3 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@3))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@3))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@4 T@U) (s T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TMap s t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@4)) bx@@4) ($Is MapType ($Unbox MapType bx@@4) (TMap s t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@4 (TMap s t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@1) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |857|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@1 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@18 T@U) (this@@10 T@U) (|S#0@@4| T@U) (|AllVertices#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@18 (Lit refType this@@10) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@18))) ($Is SetType |S#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@18))) ($Is SetType |AllVertices#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@18))))) (and (forall ((|w#2| T@U) ) (!  (=> ($IsBox |w#2| _module.BreadthFirstSearch$Vertex@@18) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@6|) |w#2|) (forall ((|x#5| T@U) ) (!  (=> ($IsBox |x#5| _module.BreadthFirstSearch$Vertex@@18) (=> (|Set#IsMember| (Lit SetType |S#0@@4|) |x#5|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@18 (Lit refType this@@10) |x#5|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |743|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@18 this@@10 |x#5|))
 :pattern ( (|Set#IsMember| |S#0@@4| |x#5|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |745|
 :pattern ( (|Set#IsMember| |AllVertices#0@@6| |w#2|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@18 (Lit refType this@@10) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@18 (Lit SetType |AllVertices#0@@6|) _module.BreadthFirstSearch$Vertex@@18 (Lit SetType |S#0@@4|) _module.BreadthFirstSearch$Vertex@@18 (Lit refType this@@10) |S#0@@4| _module.BreadthFirstSearch$Vertex@@18 this@@10)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |746|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@18 (Lit refType this@@10) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@19 T@U) (this@@11 T@U) (|S#0@@5| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@19 this@@11 (Lit SetType |S#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19))) ($Is SetType |S#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@19))))) (and (forall ((|v#1| T@U) ) (!  (=> ($IsBox |v#1| _module.BreadthFirstSearch$Vertex@@19) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |625|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@19 this@@11 (Lit SetType |S#0@@5|)) (forall ((|v#1@@0| T@U) ) (!  (=> ($IsBox |v#1@@0| _module.BreadthFirstSearch$Vertex@@19) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1@@0|) |S#0@@5|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |624|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1@@0|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |626|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@19 this@@11 (Lit SetType |S#0@@5|)))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@4)
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
(assert (forall ((m@@8 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@5))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@6 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@6)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@6)) |u'|) v@@6))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@6)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@6)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@6)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@6)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@20 T@U) (this@@12 T@U) (|S#0@@6| T@U) (|AllVertices#0@@7| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@12 |S#0@@6| |AllVertices#0@@7|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@20))) ($Is SetType |S#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@20))) ($Is SetType |AllVertices#0@@7| (TSet _module.BreadthFirstSearch$Vertex@@20))))) (and (forall ((|w#0| T@U) ) (!  (=> ($IsBox |w#0| _module.BreadthFirstSearch$Vertex@@20) (=> (|Set#IsMember| |AllVertices#0@@7| |w#0|) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module.BreadthFirstSearch$Vertex@@20) (=> (|Set#IsMember| |S#0@@6| |x#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@12 |x#1|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |733|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@20 this@@12 |x#1|))
 :pattern ( (|Set#IsMember| |S#0@@6| |x#1|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |735|
 :pattern ( (|Set#IsMember| |AllVertices#0@@7| |w#0|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@20 this@@12 |S#0@@6| |AllVertices#0@@7|) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@20 |AllVertices#0@@7| _module.BreadthFirstSearch$Vertex@@20 |S#0@@6| _module.BreadthFirstSearch$Vertex@@20 this@@12 |S#0@@6| _module.BreadthFirstSearch$Vertex@@20 this@@12)))))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@20 this@@12 |S#0@@6| |AllVertices#0@@7|))
))))
(assert (forall ((bx@@6 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@7)))
)))
(assert (forall ((_module.List$T@@3 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.List _module.List$T@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._module.List _module.List$T@@3))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@7 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@21 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@21)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@21))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@8 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@21)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@22 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsBox bx@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22)))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@10) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10) t1@@2) ($IsBox bx@@10 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@10))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@23 T@U) ($ly@@3 T@U) (this@@13 T@U) (|source#0@@3| T@U) (|n#0@@3| Int) (|AllVertices#0@@8| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@3| |n#0@@3| |AllVertices#0@@8|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@23))) ($IsBox |source#0@@3| _module.BreadthFirstSearch$Vertex@@23)) (<= (LitInt 0) |n#0@@3|)) ($Is SetType |AllVertices#0@@8| (TSet _module.BreadthFirstSearch$Vertex@@23))))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@23 $ly@@3 reveal__module.BreadthFirstSearch.R this@@13 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|)))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@23 ($LS $ly@@3) true this@@13 |source#0@@3| |n#0@@3| |AllVertices#0@@8|) (ite (= |n#0@@3| (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0@@3|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@23 $ly@@3 reveal__module.BreadthFirstSearch.R this@@13 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@23 this@@13 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@23 $ly@@3 reveal__module.BreadthFirstSearch.R this@@13 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|))))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@23 ($LS $ly@@3) true this@@13 |source#0@@3| |n#0@@3| |AllVertices#0@@8|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@24 T@U) ($ly@@4 T@U) (this@@14 T@U) (|source#0@@4| T@U) (|n#0@@4| Int) (|AllVertices#0@@9| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@24 (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@24))) ($IsBox |source#0@@4| _module.BreadthFirstSearch$Vertex@@24)) (<= (LitInt 0) |n#0@@4|)) ($Is SetType |AllVertices#0@@9| (TSet _module.BreadthFirstSearch$Vertex@@24))))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@24 (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@24 (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@24 (Lit refType this@@14) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@24 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@24 ($LS $ly@@4) true (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| (Lit BoxType |source#0@@4|)) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@24 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@24 (Lit refType this@@14) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@24 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |725|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@24 ($LS $ly@@4) true (Lit refType this@@14) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)))
))))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |d#0@0| () Int)
(declare-fun _module.BreadthFirstSearch$Vertex@@25 () T@U)
(declare-fun this@@15 () T@U)
(declare-fun |source#0@@5| () T@U)
(declare-fun |AllVertices#0@@10| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |dest#0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |##n#3@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |path#0@0| () T@U)
(declare-fun |$rhs#4@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.BreadthFirstSearch.BFS_split14)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon12_correct  (=> (and (and (=> (or (not (= |d#0@0| 0)) (not true)) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| (- |d#0@0| 1) |AllVertices#0@@10|)) (=> (or (not (= |d#0@0| 0)) (not true)) (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| (- |d#0@0| 1) |AllVertices#0@@10|) |dest#0|)))) (and ($IsAllocBox ($Box refType this@@15) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2))) (=> (and (and (and (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@2)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|))) (and (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|) (|Set#Equal| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|))) (and ($IsAllocBox ($Box refType this@@15) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) ($IsAlloc SetType |$rhs#3@0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)))) (and (and (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |$rhs#3@0| |AllVertices#0@@10|)) (and ($IsAllocBox ($Box refType this@@15) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2))) (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@2)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|))))) (and (and (and (and (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |$rhs#3@0| |AllVertices#0@@10|) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|)) (|Set#Equal| |$rhs#2@0| (|Set#Difference| (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@25 this@@15 |$rhs#3@0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|)))) (and (and (U_2_bool (Lit boolType (bool_2_U true))) (= |$decr_init$loop#00@0| (|Set#Difference| |AllVertices#0@@10| |$rhs#3@0|))) (and (=> |$w$loop#0@0| (|Set#Subset| |$rhs#0@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Subset| |$rhs#3@0| |AllVertices#0@@10|))))) (and (and (and (=> |$w$loop#0@0| (|Set#Subset| |$rhs#1@0| |AllVertices#0@@10|)) (=> |$w$loop#0@0| (|Set#Subset| |$rhs#2@0| |AllVertices#0@@10|))) (and (=> |$w$loop#0@0| (|Set#IsMember| |$rhs#0@0| |source#0@@5|)) (=> |$w$loop#0@0| (|Set#Equal| |$rhs#0@0| (|Set#Union| (|Set#Union| |$rhs#3@0| |$rhs#1@0|) |$rhs#2@0|))))) (and (and (=> |$w$loop#0@0| (|Set#Disjoint| |$rhs#3@0| |$rhs#1@0|)) (= (ControlFlow 0 2) (- 0 1))) |$w$loop#0@0|)))) (|Set#Disjoint| |$rhs#3@0| |$rhs#1@0|)))))
(let ((anon123_Else_correct  (=> (and (= |d#0@0| 0) (= (ControlFlow 0 4) 2)) anon12_correct)))
(let ((anon123_Then_correct  (=> (or (not (= |d#0@0| 0)) (not true)) (=> (and (and (and ($IsAllocBox ($Box refType this@@15) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2)) (and ($Is intType (int_2_U (- |d#0@0| 1)) Tclass._System.nat) (= |##n#3@0| (- |d#0@0| 1)))) (and (and ($IsAlloc intType (int_2_U |##n#3@0|) Tclass._System.nat $Heap@@2) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| (- |d#0@0| 1) |AllVertices#0@@10|) (= (ControlFlow 0 3) 2)))) anon12_correct))))
(let ((anon6_correct  (=> (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|) |dest#0|) (|Set#IsMember| |$rhs#1@0| |dest#0|))) (and (=> (= (ControlFlow 0 5) 3) anon123_Then_correct) (=> (= (ControlFlow 0 5) 4) anon123_Else_correct)))))
(let ((anon120_Else_correct  (=> (and (not (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|) |dest#0|)) (= (ControlFlow 0 7) 5)) anon6_correct)))
(let ((anon120_Then_correct  (=> (and (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@25 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|) |dest#0|) (= (ControlFlow 0 6) 5)) anon6_correct)))
(let ((anon0_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc refType this@@15 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)))) (=> (and (and (and ($IsBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2)) (and ($IsBox |dest#0| _module.BreadthFirstSearch$Vertex@@25) ($IsAllocBox |dest#0| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2))) (and (and ($Is SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) (and ($Is DatatypeTypeType |path#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc DatatypeTypeType |path#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)))) (=> (and (and (and (and ($Is SetType |V#0| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |V#0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true) (and (and ($Is SetType |C#0| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |C#0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true)) (and (and (and ($Is SetType |N#0| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |N#0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true) (and (and ($Is SetType |Processed#0| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |Processed#0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true))) (=> (and (and (and (and (and (and ($Is MapType |paths#0| (TMap _module.BreadthFirstSearch$Vertex@@25 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25))) ($IsAlloc MapType |paths#0| (TMap _module.BreadthFirstSearch$Vertex@@25 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25)) $Heap@@2)) true) (and (=> |defass#v#4_0| (and ($IsBox |v#4_0| _module.BreadthFirstSearch$Vertex@@25) ($IsAllocBox |v#4_0| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2))) true)) (and (and ($Is DatatypeTypeType |pathToV#4_0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc DatatypeTypeType |pathToV#4_0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true)) (and (and (and (and ($Is SetType |newlyEncountered#4_0| (TSet _module.BreadthFirstSearch$Vertex@@25)) ($IsAlloc SetType |newlyEncountered#4_0| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2)) true) (= 5 $FunctionContextHeight)) (and (|Set#IsMember| |AllVertices#0@@10| |source#0@@5|) (|Set#IsMember| |AllVertices#0@@10| |dest#0|)))) (and (and (and (and (and (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |AllVertices#0@@10|) (and (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@25 this@@15 |AllVertices#0@@10|) (forall ((|v#3| T@U) ) (!  (=> ($IsBox |v#3| _module.BreadthFirstSearch$Vertex@@25) (=> (|Set#IsMember| |AllVertices#0@@10| |v#3|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@25 this@@15 |v#3|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |649|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@25 this@@15 |v#3|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#3|))
)))) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false))) (and (= |path#0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |$rhs#0@0| (|Set#UnionOne| |Set#Empty| |source#0@@5|)))) (and (and (= |$rhs#1@0| (|Set#UnionOne| |Set#Empty| |source#0@@5|)) (= |$rhs#2@0| (Lit SetType |Set#Empty|))) (and (= |$rhs#3@0| (Lit SetType |Set#Empty|)) (= |$rhs#4@0| (|Map#Build| |Map#Empty| |source#0@@5| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))))))) (and (and (and (|Set#Equal| (|Map#Domain| |$rhs#4@0|) (|Set#UnionOne| |Set#Empty| |source#0@@5|)) (= |d#0@0| (LitInt 0))) (and ($IsAllocBox ($Box refType this@@15) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@25 $Heap@@2))) (and (and ($Is intType (int_2_U |d#0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |d#0@0|) Tclass._System.nat $Heap@@2)) (and ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@25) $Heap@@2) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@25 this@@15 |source#0@@5| |d#0@0| |AllVertices#0@@10|)))))) (and (=> (= (ControlFlow 0 8) 6) anon120_Then_correct) (=> (= (ControlFlow 0 8) 7) anon120_Else_correct))))))))
anon0_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
