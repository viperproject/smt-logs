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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch? () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.BreadthFirstSearch (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch? (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.length#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.elements (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun SetType () T@T)
(declare-fun _module.BreadthFirstSearch.Successors (T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Successors#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |_module.__default.elements#canCall| (T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.BreadthFirstSearch.R (T@U T@U Bool T@U T@U Int T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.R#canCall| (T@U T@U T@U Int T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun reveal__module.BreadthFirstSearch.R () Bool)
(declare-fun _module.BreadthFirstSearch.IsClosed (T@U T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.IsClosed#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.BreadthFirstSearch.Succ (T@U T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Succ#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |lambda#10| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun _module.BreadthFirstSearch.IsPath (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.IsPath#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch?_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet alloc Tagclass._module.List Tagclass._module.BreadthFirstSearch? Tagclass._module.BreadthFirstSearch |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List tytagFamily$BreadthFirstSearch)
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
(assert (forall ((_module.BreadthFirstSearch$Vertex T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex) $h) ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex) $h))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex) $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
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
(assert (forall ((_module._default.elements$T T@U) ($ly@@1 T@U) (|list#0@@1| T@U) ) (! (= (_module.__default.elements _module._default.elements$T ($LS $ly@@1) |list#0@@1|) (_module.__default.elements _module._default.elements$T $ly@@1 |list#0@@1|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.elements _module._default.elements$T ($LS $ly@@1) |list#0@@1|))
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
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
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
(assert (forall ((_module.BreadthFirstSearch$Vertex@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.elements$T@@0 T@U) ($ly@@2 T@U) (|list#0@@2| T@U) ) (!  (=> (or (|_module.__default.elements#canCall| _module._default.elements$T@@0 |list#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@2| (Tclass._module.List _module._default.elements$T@@0)))) (and (=> (not (_module.List.Nil_q |list#0@@2|)) (let ((|tail#1| (_module.List.tail |list#0@@2|)))
(|_module.__default.elements#canCall| _module._default.elements$T@@0 |tail#1|))) (= (_module.__default.elements _module._default.elements$T@@0 ($LS $ly@@2) |list#0@@2|) (ite (_module.List.Nil_q |list#0@@2|) |Set#Empty| (let ((|tail#0| (_module.List.tail |list#0@@2|)))
(let ((|x#0| (_module.List.head |list#0@@2|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#0|) (_module.__default.elements _module._default.elements$T@@0 $ly@@2 |tail#0|))))))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.__default.elements _module._default.elements$T@@0 ($LS $ly@@2) |list#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@2 T@U) ($ly@@3 T@U) (this@@0 T@U) (|source#0| T@U) (|n#0| Int) (|AllVertices#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@2))) ($IsBox |source#0| _module.BreadthFirstSearch$Vertex@@2)) (<= (LitInt 0) |n#0|)) ($Is SetType |AllVertices#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@2))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly@@3) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly@@3) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (ite (= (LitInt |n#0|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly@@3) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly@@3) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |724|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly@@3) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)))
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
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@4 T@U) ($ly@@4 T@U) (this@@2 T@U) (|source#0@@0| T@U) (|dest#0| T@U) (|p#0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@4))) ($IsBox |source#0@@0| _module.BreadthFirstSearch$Vertex@@4)) ($IsBox |dest#0| _module.BreadthFirstSearch$Vertex@@4)) ($Is DatatypeTypeType |p#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@4))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#3|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#3|) |dest#0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |source#0@@0| |v#3| |tail#3@@0|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@4 ($LS $ly@@4) this@@2 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)) (= |source#0@@0| |dest#0|) (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |v#2|) |dest#0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@4 ($LS $ly@@4) this@@2 |source#0@@0| |v#2| |tail#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |615|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@4 ($LS $ly@@4) this@@2 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |840|
 :pattern ( (_module.List.Cons_q d@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.elements$T@@1 T@U) ($ly@@5 T@U) (|list#0@@3| T@U) ) (!  (=> (or (|_module.__default.elements#canCall| _module._default.elements$T@@1 (Lit DatatypeTypeType |list#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@3| (Tclass._module.List _module._default.elements$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |list#0@@3|)))))) (let ((|tail#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |list#0@@3|)))))
(|_module.__default.elements#canCall| _module._default.elements$T@@1 |tail#3@@1|))) (= (_module.__default.elements _module._default.elements$T@@1 ($LS $ly@@5) (Lit DatatypeTypeType |list#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |list#0@@3|)) |Set#Empty| (let ((|tail#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |list#0@@3|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |list#0@@3|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#2|) (_module.__default.elements _module._default.elements$T@@1 ($LS $ly@@5) |tail#2@@1|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.elements _module._default.elements$T@@1 ($LS $ly@@5) (Lit DatatypeTypeType |list#0@@3|)))
))))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |841|
)))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |836|
 :pattern ( (_module.List.Nil_q d@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@5 T@U) (this@@3 T@U) (|S#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@5 (Lit refType this@@3) (Lit SetType |S#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5))) ($Is SetType |S#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@5))))) (and (forall ((|v#2@@0| T@U) ) (!  (=> ($IsBox |v#2@@0| _module.BreadthFirstSearch$Vertex@@5) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2@@0|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@5 (Lit refType this@@3) |v#2@@0|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |628|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@5 this@@3 |v#2@@0|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2@@0|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@5 (Lit refType this@@3) (Lit SetType |S#0@@1|)) (forall ((|v#2@@1| T@U) ) (!  (=> ($IsBox |v#2@@1| _module.BreadthFirstSearch$Vertex@@5) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |v#2@@1|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@5 (Lit refType this@@3) |v#2@@1|) |S#0@@1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |627|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@5 this@@3 |v#2@@1|))
 :pattern ( (|Set#IsMember| |S#0@@1| |v#2@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |629|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@5 (Lit refType this@@3) (Lit SetType |S#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@6 T@U) (this@@4 T@U) (|S#0@@2| T@U) (|AllVertices#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@6 this@@4 |S#0@@2| |AllVertices#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@6))) ($Is SetType |S#0@@2| (TSet _module.BreadthFirstSearch$Vertex@@6))) ($Is SetType |AllVertices#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@6))))) ($Is SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@6 this@@4 |S#0@@2| |AllVertices#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@6)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@6 this@@4 |S#0@@2| |AllVertices#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@1 T@U) ($ly@@6 T@U) (|list#0@@4| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@1 |list#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@4| (Tclass._module.List _module._default.length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |list#0@@4|)) (let ((|tail#1@@0| (_module.List.tail |list#0@@4|)))
(|_module.__default.length#canCall| _module._default.length$_T0@@1 |tail#1@@0|))) (= (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@6) |list#0@@4|) (ite (_module.List.Nil_q |list#0@@4|) 0 (let ((|tail#0@@0| (_module.List.tail |list#0@@4|)))
(+ 1 (_module.__default.length _module._default.length$_T0@@1 $ly@@6 |tail#0@@0|)))))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@6) |list#0@@4|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@7 T@U) (this@@5 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@7 this@@5 |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@7))) ($IsBox |x#0@@1| _module.BreadthFirstSearch$Vertex@@7)))) ($Is SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@7 this@@5 |x#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@7)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@7 this@@5 |x#0@@1|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@8 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8))  (and ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@8)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@8)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@9 T@U) ($ly@@7 T@U) (this@@6 T@U) (|source#0@@1| T@U) (|dest#0@@0| T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@9 (Lit refType this@@6) (Lit BoxType |source#0@@1|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@9))) ($IsBox |source#0@@1| _module.BreadthFirstSearch$Vertex@@9)) ($IsBox |dest#0@@0| _module.BreadthFirstSearch$Vertex@@9)) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@9))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)))))) (let ((|tail#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#5| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@9 (Lit refType this@@6) |v#5|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@9 (Lit refType this@@6) |v#5|) (Lit BoxType |dest#0@@0|)) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@9 (Lit refType this@@6) (Lit BoxType |source#0@@1|) |v#5| |tail#5|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@9 ($LS $ly@@7) (Lit refType this@@6) (Lit BoxType |source#0@@1|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)) (= (Lit BoxType |source#0@@1|) (Lit BoxType |dest#0@@0|)) (let ((|tail#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@9 (Lit refType this@@6) |v#4|) (Lit BoxType |dest#0@@0|)) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@9 ($LS $ly@@7) (Lit refType this@@6) (Lit BoxType |source#0@@1|) |v#4| |tail#4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@9 ($LS $ly@@7) (Lit refType this@@6) (Lit BoxType |source#0@@1|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@10 T@U) ($ly@@8 T@U) ($reveal Bool) (this@@7 T@U) (|source#0@@2| T@U) (|n#0@@0| Int) (|AllVertices#0@@2| T@U) ) (! (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@10 ($LS $ly@@8) $reveal this@@7 |source#0@@2| |n#0@@0| |AllVertices#0@@2|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@10 $ly@@8 $reveal this@@7 |source#0@@2| |n#0@@0| |AllVertices#0@@2|))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@10 ($LS $ly@@8) $reveal this@@7 |source#0@@2| |n#0@@0| |AllVertices#0@@2|))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@11 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@11)) Tagclass._module.BreadthFirstSearch?) (= (TagFamily (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@11)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@11))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@12 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@12)) Tagclass._module.BreadthFirstSearch) (= (TagFamily (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@12)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@13 T@U) ($ly@@9 T@U) ($reveal@@0 Bool) (this@@8 T@U) (|source#0@@3| T@U) (|n#0@@1| Int) (|AllVertices#0@@3| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@13 this@@8 |source#0@@3| |n#0@@1| |AllVertices#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@13))) ($IsBox |source#0@@3| _module.BreadthFirstSearch$Vertex@@13)) (<= (LitInt 0) |n#0@@1|)) ($Is SetType |AllVertices#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@13))))) ($Is SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@13 $ly@@9 $reveal@@0 this@@8 |source#0@@3| |n#0@@1| |AllVertices#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@13)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@13 $ly@@9 $reveal@@0 this@@8 |source#0@@3| |n#0@@1| |AllVertices#0@@3|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@14 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@14))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@14))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@14)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@15 T@U) (this@@9 T@U) (|S#0@@3| T@U) (|AllVertices#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@15 this@@9 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@15))) ($Is SetType |S#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@15))) ($Is SetType |AllVertices#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@15))))) (and (forall ((|w#1| T@U) ) (!  (=> ($IsBox |w#1| _module.BreadthFirstSearch$Vertex@@15) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@4|) |w#1|) (forall ((|x#3| T@U) ) (!  (=> ($IsBox |x#3| _module.BreadthFirstSearch$Vertex@@15) (=> (|Set#IsMember| (Lit SetType |S#0@@3|) |x#3|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@15 this@@9 |x#3|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |738|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@15 this@@9 |x#3|))
 :pattern ( (|Set#IsMember| |S#0@@3| |x#3|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |740|
 :pattern ( (|Set#IsMember| |AllVertices#0@@4| |w#1|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@15 this@@9 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@15 (Lit SetType |AllVertices#0@@4|) _module.BreadthFirstSearch$Vertex@@15 (Lit SetType |S#0@@3|) _module.BreadthFirstSearch$Vertex@@15 this@@9 |S#0@@3| _module.BreadthFirstSearch$Vertex@@15 this@@9)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@15 this@@9 (Lit SetType |S#0@@3|) (Lit SetType |AllVertices#0@@4|)))
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
(assert (forall ((_module.BreadthFirstSearch$Vertex@@16 T@U) ($ly@@10 T@U) (this@@10 T@U) (|source#0@@4| T@U) (|dest#0@@1| T@U) (|p#0@@1| T@U) ) (! (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@16 ($LS $ly@@10) this@@10 |source#0@@4| |dest#0@@1| |p#0@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@16 $ly@@10 this@@10 |source#0@@4| |dest#0@@1| |p#0@@1|))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@16 ($LS $ly@@10) this@@10 |source#0@@4| |dest#0@@1| |p#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.BreadthFirstSearch$Vertex@@17 T@U) ($ly@@11 T@U) ($reveal@@1 Bool) (this@@11 T@U) (|source#0@@5| T@U) (|n#0@@2| Int) (|AllVertices#0@@5| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@17 this@@11 |source#0@@5| |n#0@@2| |AllVertices#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@11 null)) (not true)) ($IsAlloc refType this@@11 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17) $Heap@@0)) (and ($IsBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@17) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@17 $Heap@@0))) (<= (LitInt 0) |n#0@@2|)) (and ($Is SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@17)) ($IsAlloc SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@17) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@17 $ly@@11 $reveal@@1 this@@11 |source#0@@5| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@17) $Heap@@0))
 :qid |BreadthFirstSearchdfy.180:25|
 :skolemid |721|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@17 $ly@@11 $reveal@@1 this@@11 |source#0@@5| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@17) $Heap@@0))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module.BreadthFirstSearch$Vertex@@18 T@U) (this@@12 T@U) (|x#0@@2| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@18 this@@12 |x#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@12 null)) (not true)) ($IsAlloc refType this@@12 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@18) $Heap@@1)) (and ($IsBox |x#0@@2| _module.BreadthFirstSearch$Vertex@@18) ($IsAllocBox |x#0@@2| _module.BreadthFirstSearch$Vertex@@18 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@18 this@@12 |x#0@@2|) (TSet _module.BreadthFirstSearch$Vertex@@18) $Heap@@1))
 :qid |BreadthFirstSearchdfy.8:12|
 :skolemid |608|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@18 this@@12 |x#0@@2|) (TSet _module.BreadthFirstSearch$Vertex@@18) $Heap@@1))
))))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |839|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.elements$T@@2 T@U) ($ly@@12 T@U) (|list#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.elements#canCall| _module._default.elements$T@@2 |list#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |list#0@@5| (Tclass._module.List _module._default.elements$T@@2)) ($IsAlloc DatatypeTypeType |list#0@@5| (Tclass._module.List _module._default.elements$T@@2) $Heap@@2)))) ($IsGoodHeap $Heap@@2)) ($IsAlloc SetType (_module.__default.elements _module._default.elements$T@@2 $ly@@12 |list#0@@5|) (TSet _module._default.elements$T@@2) $Heap@@2))
 :qid |BreadthFirstSearchdfy.272:16|
 :skolemid |594|
 :pattern ( ($IsAlloc SetType (_module.__default.elements _module._default.elements$T@@2 $ly@@12 |list#0@@5|) (TSet _module._default.elements$T@@2) $Heap@@2))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@19 T@U) ) (! (= (Tclass._module.BreadthFirstSearch?_0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@19)) _module.BreadthFirstSearch$Vertex@@19)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@19))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@20 T@U) ) (! (= (Tclass._module.BreadthFirstSearch_0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@20)) _module.BreadthFirstSearch$Vertex@@20)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@20))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.elements$T@@3 T@U) ($ly@@13 T@U) (|list#0@@6| T@U) ) (!  (=> (or (|_module.__default.elements#canCall| _module._default.elements$T@@3 |list#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@6| (Tclass._module.List _module._default.elements$T@@3)))) ($Is SetType (_module.__default.elements _module._default.elements$T@@3 $ly@@13 |list#0@@6|) (TSet _module._default.elements$T@@3)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (_module.__default.elements _module._default.elements$T@@3 $ly@@13 |list#0@@6|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@2))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@21 T@U) (this@@13 T@U) (|S#0@@4| T@U) (|AllVertices#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@13) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21))) ($Is SetType |S#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@21))) ($Is SetType |AllVertices#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@21))))) (and (forall ((|w#2| T@U) ) (!  (=> ($IsBox |w#2| _module.BreadthFirstSearch$Vertex@@21) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@6|) |w#2|) (forall ((|x#5| T@U) ) (!  (=> ($IsBox |x#5| _module.BreadthFirstSearch$Vertex@@21) (=> (|Set#IsMember| (Lit SetType |S#0@@4|) |x#5|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@13) |x#5|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |743|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@21 this@@13 |x#5|))
 :pattern ( (|Set#IsMember| |S#0@@4| |x#5|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |745|
 :pattern ( (|Set#IsMember| |AllVertices#0@@6| |w#2|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@13) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@21 (Lit SetType |AllVertices#0@@6|) _module.BreadthFirstSearch$Vertex@@21 (Lit SetType |S#0@@4|) _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@13) |S#0@@4| _module.BreadthFirstSearch$Vertex@@21 this@@13)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |746|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@13) (Lit SetType |S#0@@4|) (Lit SetType |AllVertices#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@22 T@U) (this@@14 T@U) (|S#0@@5| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@22 this@@14 (Lit SetType |S#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22))) ($Is SetType |S#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@22))))) (and (forall ((|v#1| T@U) ) (!  (=> ($IsBox |v#1| _module.BreadthFirstSearch$Vertex@@22) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@22 this@@14 |v#1|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |625|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@22 this@@14 |v#1|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1|))
)) (= (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@22 this@@14 (Lit SetType |S#0@@5|)) (forall ((|v#1@@0| T@U) ) (!  (=> ($IsBox |v#1@@0| _module.BreadthFirstSearch$Vertex@@22) (=> (|Set#IsMember| (Lit SetType |S#0@@5|) |v#1@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@22 this@@14 |v#1@@0|) |S#0@@5|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |624|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@22 this@@14 |v#1@@0|))
 :pattern ( (|Set#IsMember| |S#0@@5| |v#1@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |626|
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@22 this@@14 (Lit SetType |S#0@@5|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@23 T@U) ($ly@@14 T@U) (this@@15 T@U) (|source#0@@6| T@U) (|dest#0@@2| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@15 |source#0@@6| |dest#0@@2| |p#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@23))) ($IsBox |source#0@@6| _module.BreadthFirstSearch$Vertex@@23)) ($IsBox |dest#0@@2| _module.BreadthFirstSearch$Vertex@@23)) ($Is DatatypeTypeType |p#0@@2| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23))))) (and (=> (not (_module.List.Nil_q |p#0@@2|)) (let ((|tail#1@@1| (_module.List.tail |p#0@@2|)))
(let ((|v#1@@1| (_module.List.head |p#0@@2|)))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@15 |v#1@@1|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@23 this@@15 |v#1@@1|) |dest#0@@2|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@15 |source#0@@6| |v#1@@1| |tail#1@@1|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $ly@@14) this@@15 |source#0@@6| |dest#0@@2| |p#0@@2|) (ite (_module.List.Nil_q |p#0@@2|) (= |source#0@@6| |dest#0@@2|) (let ((|tail#0@@1| (_module.List.tail |p#0@@2|)))
(let ((|v#0@@1| (_module.List.head |p#0@@2|)))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@23 this@@15 |v#0@@1|) |dest#0@@2|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 $ly@@14 this@@15 |source#0@@6| |v#0@@1| |tail#0@@1|))))))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $ly@@14) this@@15 |source#0@@6| |dest#0@@2| |p#0@@2|))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@24 T@U) (this@@16 T@U) (|S#0@@6| T@U) (|AllVertices#0@@7| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@24 this@@16 |S#0@@6| |AllVertices#0@@7|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@24))) ($Is SetType |S#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@24))) ($Is SetType |AllVertices#0@@7| (TSet _module.BreadthFirstSearch$Vertex@@24))))) (and (forall ((|w#0| T@U) ) (!  (=> ($IsBox |w#0| _module.BreadthFirstSearch$Vertex@@24) (=> (|Set#IsMember| |AllVertices#0@@7| |w#0|) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module.BreadthFirstSearch$Vertex@@24) (=> (|Set#IsMember| |S#0@@6| |x#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@24 this@@16 |x#1|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |733|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@24 this@@16 |x#1|))
 :pattern ( (|Set#IsMember| |S#0@@6| |x#1|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |735|
 :pattern ( (|Set#IsMember| |AllVertices#0@@7| |w#0|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@24 this@@16 |S#0@@6| |AllVertices#0@@7|) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@24 |AllVertices#0@@7| _module.BreadthFirstSearch$Vertex@@24 |S#0@@6| _module.BreadthFirstSearch$Vertex@@24 this@@16 |S#0@@6| _module.BreadthFirstSearch$Vertex@@24 this@@16)))))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@24 this@@16 |S#0@@6| |AllVertices#0@@7|))
))))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@25 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@4 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@25)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@26 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@26)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@26))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsBox bx@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@26)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@3))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |847|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@2 T@U) ($ly@@15 T@U) (|list#0@@7| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@2 |list#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |list#0@@7| (Tclass._module.List _module._default.length$_T0@@2)))) (<= (LitInt 0) (_module.__default.length _module._default.length$_T0@@2 $ly@@15 |list#0@@7|)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.length _module._default.length$_T0@@2 $ly@@15 |list#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@27 T@U) ($ly@@16 T@U) (this@@17 T@U) (|source#0@@7| T@U) (|n#0@@3| Int) (|AllVertices#0@@8| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@17 |source#0@@7| |n#0@@3| |AllVertices#0@@8|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@27))) ($IsBox |source#0@@7| _module.BreadthFirstSearch$Vertex@@27)) (<= (LitInt 0) |n#0@@3|)) ($Is SetType |AllVertices#0@@8| (TSet _module.BreadthFirstSearch$Vertex@@27))))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@17 |source#0@@7| (- |n#0@@3| 1) |AllVertices#0@@8|) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@17 |source#0@@7| (- |n#0@@3| 1) |AllVertices#0@@8|) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@27 this@@17 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@27 $ly@@16 reveal__module.BreadthFirstSearch.R this@@17 |source#0@@7| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|)))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@27 ($LS $ly@@16) true this@@17 |source#0@@7| |n#0@@3| |AllVertices#0@@8|) (ite (= |n#0@@3| (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0@@7|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@27 $ly@@16 reveal__module.BreadthFirstSearch.R this@@17 |source#0@@7| (- |n#0@@3| 1) |AllVertices#0@@8|) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@27 this@@17 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@27 $ly@@16 reveal__module.BreadthFirstSearch.R this@@17 |source#0@@7| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|))))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@27 ($LS $ly@@16) true this@@17 |source#0@@7| |n#0@@3| |AllVertices#0@@8|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@28 T@U) ($ly@@17 T@U) (this@@18 T@U) (|source#0@@8| T@U) (|n#0@@4| Int) (|AllVertices#0@@9| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@28))) ($IsBox |source#0@@8| _module.BreadthFirstSearch$Vertex@@28)) (<= (LitInt 0) |n#0@@4|)) ($Is SetType |AllVertices#0@@9| (TSet _module.BreadthFirstSearch$Vertex@@28))))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@18) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@28 ($LS $ly@@17) reveal__module.BreadthFirstSearch.R (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@28 ($LS $ly@@17) true (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| (Lit BoxType |source#0@@8|)) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@28 ($LS $ly@@17) reveal__module.BreadthFirstSearch.R (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@28 (Lit refType this@@18) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@28 ($LS $ly@@17) reveal__module.BreadthFirstSearch.R (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |725|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@28 ($LS $ly@@17) true (Lit refType this@@18) (Lit BoxType |source#0@@8|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)))
))))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@4)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@4) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |844|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.BreadthFirstSearch$Vertex@@29 () T@U)
(declare-fun $LZ () T@U)
(declare-fun this@@19 () T@U)
(declare-fun |source#0@@9| () T@U)
(declare-fun |p#0@@3| () T@U)
(declare-fun |AllVertices#0@@10| () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |v#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.BreadthFirstSearch.Lemma__IsPath__R)
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
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@19 |source#0@@9| (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) |p#0@@3|) |AllVertices#0@@10|) |x#0@@3|))))
(let ((anon5_Then_correct  (=> (= |p#0@@3| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($IsBox |_mcc#0#0_0@0| _module.BreadthFirstSearch$Vertex@@29) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29))) (=> (and (and (and (and ($Is DatatypeTypeType |tail#0_0@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29)) ($IsAlloc DatatypeTypeType |tail#0_0@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29) $Heap@1)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29)) (= |tail#0_0@0| |let#0_0#0#0|))) (and (and (and ($IsBox |v#0_0@0| _module.BreadthFirstSearch$Vertex@@29) ($IsAllocBox |v#0_0@0| _module.BreadthFirstSearch$Vertex@@29 $Heap@1)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($IsBox |let#0_1#0#0| _module.BreadthFirstSearch$Vertex@@29) (= |v#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 5) (- 0 16)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (_module.List.Nil_q |p#0@@3|) (= |source#0@@9| |x#0@@3|))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (_module.List.Nil_q |p#0@@3|) (= |source#0@@9| |x#0@@3|)))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (not (_module.List.Nil_q |p#0@@3|)) (let ((|v#2@@2| (_module.List.head |p#0@@3|)))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@2|) |x#0@@3|)))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (not (_module.List.Nil_q |p#0@@3|)) (let ((|v#2@@3| (_module.List.head |p#0@@3|)))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@3|) |x#0@@3|))))) (and (=> (= (ControlFlow 0 5) (- 0 14)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (not (_module.List.Nil_q |p#0@@3|)) (let ((|tail#0@@2| (_module.List.tail |p#0@@3|)))
(let ((|v#2@@4| (_module.List.head |p#0@@3|)))
(_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) this@@19 |source#0@@9| |v#2@@4| |tail#0@@2|))))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (=> (not (_module.List.Nil_q |p#0@@3|)) (let ((|tail#0@@3| (_module.List.tail |p#0@@3|)))
(let ((|v#2@@5| (_module.List.head |p#0@@3|)))
(_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) this@@19 |source#0@@9| |v#2@@5| |tail#0@@3|)))))) (and (=> (= (ControlFlow 0 5) (- 0 13)) (|Set#IsMember| |AllVertices#0@@10| |source#0@@9|)) (=> (|Set#IsMember| |AllVertices#0@@10| |source#0@@9|) (and (=> (= (ControlFlow 0 5) (- 0 12)) (=> (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (or (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (forall ((|v#4@@0| T@U) ) (!  (=> ($IsBox |v#4@@0| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| |AllVertices#0@@10| |v#4@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#4@@0|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |707|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#4@@0|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#4@@0|))
))))) (=> (=> (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (or (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (forall ((|v#4@@1| T@U) ) (!  (=> ($IsBox |v#4@@1| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| |AllVertices#0@@10| |v#4@@1|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#4@@1|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |707|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#4@@1|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#4@@1|))
)))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (=> (|Set#IsMember| |AllVertices#0@@10| |x#0@@3|) (|_module.__default.elements#canCall| _module.BreadthFirstSearch$Vertex@@29 |p#0@@3|)) (|Set#IsMember| |AllVertices#0@@10| |x#0@@3|)) (and (forall ((|v#1@@2| T@U) ) (!  (=> ($IsBox |v#1@@2| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| (_module.__default.elements _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |p#0@@3|) |v#1@@2|) (|Set#IsMember| |AllVertices#0@@10| |v#1@@2|)))
 :qid |BreadthFirstSearchdfy.169:43|
 :skolemid |710|
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#1@@2|))
 :pattern ( (|Set#IsMember| (_module.__default.elements _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |p#0@@3|) |v#1@@2|))
)) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (or (< (DtRank |tail#0_0@0|) (DtRank |p#0@@3|)) (and (= (DtRank |tail#0_0@0|) (DtRank |p#0@@3|)) (and (|Set#Subset| |AllVertices#0@@10| |AllVertices#0@@10|) (not (|Set#Subset| |AllVertices#0@@10| |AllVertices#0@@10|)))))) (=> (or (< (DtRank |tail#0_0@0|) (DtRank |p#0@@3|)) (and (= (DtRank |tail#0_0@0|) (DtRank |p#0@@3|)) (and (|Set#Subset| |AllVertices#0@@10| |AllVertices#0@@10|) (not (|Set#Subset| |AllVertices#0@@10| |AllVertices#0@@10|))))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (_module.List.Nil_q |tail#0_0@0|) (= |source#0@@9| |v#0_0@0|))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (_module.List.Nil_q |tail#0_0@0|) (= |source#0@@9| |v#0_0@0|)))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|v#0@@2| (_module.List.head |tail#0_0@0|)))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#0@@2|) |v#0_0@0|)))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|v#0@@3| (_module.List.head |tail#0_0@0|)))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#0@@3|) |v#0_0@0|))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@4| (_module.List.tail |tail#0_0@0|)))
(let ((|v#0@@4| (_module.List.head |tail#0_0@0|)))
(_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) this@@19 |source#0@@9| |v#0@@4| |tail#0@@4|))))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#0_0@0| |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@5| (_module.List.tail |tail#0_0@0|)))
(let ((|v#0@@5| (_module.List.head |tail#0_0@0|)))
(_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) this@@19 |source#0@@9| |v#0@@5| |tail#0@@5|)))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (|Set#IsMember| |AllVertices#0@@10| |source#0@@9|)) (=> (|Set#IsMember| |AllVertices#0@@10| |source#0@@9|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (or (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (forall ((|v#2@@6| T@U) ) (!  (=> ($IsBox |v#2@@6| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| |AllVertices#0@@10| |v#2@@6|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@6|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |759|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@6|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#2@@6|))
))))) (=> (=> (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (or (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (forall ((|v#2@@7| T@U) ) (!  (=> ($IsBox |v#2@@7| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| |AllVertices#0@@10| |v#2@@7|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@7|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |759|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#2@@7|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#2@@7|))
)))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.__default.length#canCall| _module.BreadthFirstSearch$Vertex@@29 |tail#0_0@0|) (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |tail#0_0@0|) |AllVertices#0@@10|)) (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@19 |source#0@@9| (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS ($LS $LZ)) |tail#0_0@0|) |AllVertices#0@@10|) |v#0_0@0|)) (and (= $Heap@2 $Heap@3) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))
(let ((anon4_Then_correct  (=> (and (= |p#0@@3| |#_module.List.Nil|) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))
(let ((anon5_Else_correct true))
(let ((anon4_Else_correct  (=> (or (not (= |p#0@@3| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 17) 5) anon5_Then_correct) (=> (= (ControlFlow 0 17) 1) anon5_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (|$IsA#_module.List| |p#0@@3|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@3 $Heap@0) (forall ((|$ih#p0#0| T@U) (|$ih#AllVertices0#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |$ih#p0#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29)) ($Is SetType |$ih#AllVertices0#0| (TSet _module.BreadthFirstSearch$Vertex@@29))) (and (and (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |$ih#p0#0|) (|Set#IsMember| |$ih#AllVertices0#0| |source#0@@9|)) (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |$ih#AllVertices0#0|))) (or (< (DtRank |$ih#p0#0|) (DtRank |p#0@@3|)) (and (= (DtRank |$ih#p0#0|) (DtRank |p#0@@3|)) (and (|Set#Subset| |$ih#AllVertices0#0| |AllVertices#0@@10|) (not (|Set#Subset| |AllVertices#0@@10| |$ih#AllVertices0#0|)))))) (|Set#IsMember| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) reveal__module.BreadthFirstSearch.R this@@19 |source#0@@9| (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |$ih#p0#0|) |$ih#AllVertices0#0|) |x#0@@3|))
 :qid |BreadthFirstSearchdfy.214:51|
 :skolemid |763|
 :pattern ( (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |$ih#p0#0|) (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |$ih#AllVertices0#0|))
 :pattern ( (_module.__default.length _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) |$ih#p0#0|) (|Set#IsMember| |$ih#AllVertices0#0| |source#0@@9|))
 :pattern ( (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |$ih#AllVertices0#0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |$ih#p0#0|))
 :pattern ( (|Set#IsMember| |$ih#AllVertices0#0| |source#0@@9|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |$ih#p0#0|))
)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= $Heap@0 $Heap@1) reveal__module.BreadthFirstSearch.R))) (and (=> (= (ControlFlow 0 18) 4) anon4_Then_correct) (=> (= (ControlFlow 0 18) 17) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@29)) ($IsAlloc refType this@@19 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@29) $Heap@@3)))) (and (and ($IsBox |source#0@@9| _module.BreadthFirstSearch$Vertex@@29) ($IsAllocBox |source#0@@9| _module.BreadthFirstSearch$Vertex@@29 $Heap@@3)) (and ($IsBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@29) ($IsAllocBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@29 $Heap@@3)))) (=> (and (and (and (and ($Is DatatypeTypeType |p#0@@3| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29)) ($IsAlloc DatatypeTypeType |p#0@@3| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@29) $Heap@@3)) (|$IsA#_module.List| |p#0@@3|)) (and (and ($Is SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@29)) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@29) $Heap@@3)) (= 3 $FunctionContextHeight))) (and (and (and (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (and (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |x#0@@3| |p#0@@3|) (ite (_module.List.Nil_q |p#0@@3|) (= |source#0@@9| |x#0@@3|) (let ((|tail#3@@2| (_module.List.tail |p#0@@3|)))
(let ((|v#4@@2| (_module.List.head |p#0@@3|)))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#4@@2|) |x#0@@3|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@29 ($LS $LZ) this@@19 |source#0@@9| |v#4@@2| |tail#3@@2|))))))) (|Set#IsMember| |AllVertices#0@@10| |source#0@@9|)) (and (and (|_module.BreadthFirstSearch.IsClosed#canCall| _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (and (_module.BreadthFirstSearch.IsClosed _module.BreadthFirstSearch$Vertex@@29 this@@19 |AllVertices#0@@10|) (forall ((|v#5@@0| T@U) ) (!  (=> ($IsBox |v#5@@0| _module.BreadthFirstSearch$Vertex@@29) (=> (|Set#IsMember| |AllVertices#0@@10| |v#5@@0|) (|Set#Subset| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#5@@0|) |AllVertices#0@@10|)))
 :qid |BreadthFirstSearchdfy.21:12|
 :skolemid |762|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@29 this@@19 |v#5@@0|))
 :pattern ( (|Set#IsMember| |AllVertices#0@@10| |v#5@@0|))
)))) (= (ControlFlow 0 19) 18)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
