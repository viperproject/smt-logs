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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch? () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SetType () T@T)
(declare-fun _module.BreadthFirstSearch.Successors (T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Successors#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun reveal__module.BreadthFirstSearch.R () Bool)
(declare-fun |lambda#10| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.BreadthFirstSearch.Succ (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Succ#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch?_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch_0 (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.nat Tagclass._module.BreadthFirstSearch? Tagclass._module.BreadthFirstSearch tytagFamily$nat tytagFamily$BreadthFirstSearch)
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.BreadthFirstSearch$Vertex@@0 T@U) (this T@U) (|S#0| T@U) (|AllVertices#0| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($IsAlloc refType this (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $Heap)) (and ($Is SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@0)) ($IsAlloc SetType |S#0| (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))) (and ($Is SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@0)) ($IsAlloc SetType |AllVertices#0| (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))
 :qid |BreadthFirstSearchdfy.186:18|
 :skolemid |730|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@0 this |S#0| |AllVertices#0|) (TSet _module.BreadthFirstSearch$Vertex@@0) $Heap))
))))
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
(assert (forall ((_module.BreadthFirstSearch$Vertex@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@2 T@U) ($ly T@U) (this@@0 T@U) (|source#0| T@U) (|n#0| Int) (|AllVertices#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@2))) ($IsBox |source#0| _module.BreadthFirstSearch$Vertex@@2)) (<= (LitInt 0) |n#0|)) ($Is SetType |AllVertices#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@2))))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)) (ite (= (LitInt |n#0|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@2 this@@0 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) reveal__module.BreadthFirstSearch.R this@@0 |source#0| (LitInt (- |n#0| 1)) (Lit SetType |AllVertices#0@@0|)) (Lit SetType |AllVertices#0@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |724|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) true this@@0 |source#0| (LitInt |n#0|) (Lit SetType |AllVertices#0@@0|)))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@2)) (not (|Set#IsMember| b@@4 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
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
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@3 T@U) (this@@1 T@U) (|S#0@@0| T@U) (|AllVertices#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0| |AllVertices#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@3))) ($Is SetType |S#0@@0| (TSet _module.BreadthFirstSearch$Vertex@@3))) ($Is SetType |AllVertices#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@3))))) ($Is SetType (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0| |AllVertices#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@3)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@3 this@@1 |S#0@@0| |AllVertices#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@4 T@U) (this@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@4))) ($IsBox |x#0@@2| _module.BreadthFirstSearch$Vertex@@4)))) ($Is SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@2|) (TSet _module.BreadthFirstSearch$Vertex@@4)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@2|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@5 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5))  (and ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@5)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@6 T@U) ($ly@@0 T@U) ($reveal Bool) (this@@3 T@U) (|source#0@@0| T@U) (|n#0@@0| Int) (|AllVertices#0@@2| T@U) ) (! (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@6 ($LS $ly@@0) $reveal this@@3 |source#0@@0| |n#0@@0| |AllVertices#0@@2|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@6 $ly@@0 $reveal this@@3 |source#0@@0| |n#0@@0| |AllVertices#0@@2|))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@6 ($LS $ly@@0) $reveal this@@3 |source#0@@0| |n#0@@0| |AllVertices#0@@2|))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@7 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)) Tagclass._module.BreadthFirstSearch?) (= (TagFamily (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@8 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8)) Tagclass._module.BreadthFirstSearch) (= (TagFamily (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@9 T@U) ($ly@@1 T@U) ($reveal@@0 Bool) (this@@4 T@U) (|source#0@@1| T@U) (|n#0@@1| Int) (|AllVertices#0@@3| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@9 this@@4 |source#0@@1| |n#0@@1| |AllVertices#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@9))) ($IsBox |source#0@@1| _module.BreadthFirstSearch$Vertex@@9)) (<= (LitInt 0) |n#0@@1|)) ($Is SetType |AllVertices#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@9))))) ($Is SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@9 $ly@@1 $reveal@@0 this@@4 |source#0@@1| |n#0@@1| |AllVertices#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@9)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@9 $ly@@1 $reveal@@0 this@@4 |source#0@@1| |n#0@@1| |AllVertices#0@@3|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@10 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@10))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@10))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@11 T@U) (this@@5 T@U) (|S#0@@1| T@U) (|AllVertices#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@11 this@@5 (Lit SetType |S#0@@1|) (Lit SetType |AllVertices#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@11))) ($Is SetType |S#0@@1| (TSet _module.BreadthFirstSearch$Vertex@@11))) ($Is SetType |AllVertices#0@@4| (TSet _module.BreadthFirstSearch$Vertex@@11))))) (and (forall ((|w#1| T@U) ) (!  (=> ($IsBox |w#1| _module.BreadthFirstSearch$Vertex@@11) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@4|) |w#1|) (forall ((|x#3| T@U) ) (!  (=> ($IsBox |x#3| _module.BreadthFirstSearch$Vertex@@11) (=> (|Set#IsMember| (Lit SetType |S#0@@1|) |x#3|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@11 this@@5 |x#3|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |738|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@11 this@@5 |x#3|))
 :pattern ( (|Set#IsMember| |S#0@@1| |x#3|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |740|
 :pattern ( (|Set#IsMember| |AllVertices#0@@4| |w#1|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@11 this@@5 (Lit SetType |S#0@@1|) (Lit SetType |AllVertices#0@@4|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@11 (Lit SetType |AllVertices#0@@4|) _module.BreadthFirstSearch$Vertex@@11 (Lit SetType |S#0@@1|) _module.BreadthFirstSearch$Vertex@@11 this@@5 |S#0@@1| _module.BreadthFirstSearch$Vertex@@11 this@@5)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@11 this@@5 (Lit SetType |S#0@@1|) (Lit SetType |AllVertices#0@@4|)))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3)  (or (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.BreadthFirstSearch$Vertex@@12 T@U) ($ly@@2 T@U) ($reveal@@1 Bool) (this@@6 T@U) (|source#0@@2| T@U) (|n#0@@2| Int) (|AllVertices#0@@5| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@12 this@@6 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@6 null)) (not true)) ($IsAlloc refType this@@6 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@12) $Heap@@0)) (and ($IsBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@12) ($IsAllocBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@12 $Heap@@0))) (<= (LitInt 0) |n#0@@2|)) (and ($Is SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@12)) ($IsAlloc SetType |AllVertices#0@@5| (TSet _module.BreadthFirstSearch$Vertex@@12) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@12 $ly@@2 $reveal@@1 this@@6 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@12) $Heap@@0))
 :qid |BreadthFirstSearchdfy.180:25|
 :skolemid |721|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@12 $ly@@2 $reveal@@1 this@@6 |source#0@@2| |n#0@@2| |AllVertices#0@@5|) (TSet _module.BreadthFirstSearch$Vertex@@12) $Heap@@0))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module.BreadthFirstSearch$Vertex@@13 T@U) (this@@7 T@U) (|x#0@@3| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($IsAlloc refType this@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@13) $Heap@@1)) (and ($IsBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@13) ($IsAllocBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@13 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@13) $Heap@@1))
 :qid |BreadthFirstSearchdfy.8:12|
 :skolemid |608|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@13) $Heap@@1))
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
(assert (forall ((_module.BreadthFirstSearch$Vertex@@14 T@U) ) (! (= (Tclass._module.BreadthFirstSearch?_0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@14)) _module.BreadthFirstSearch$Vertex@@14)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@14))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@15 T@U) ) (! (= (Tclass._module.BreadthFirstSearch_0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@15)) _module.BreadthFirstSearch$Vertex@@15)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@15))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@16 T@U) (this@@8 T@U) (|S#0@@2| T@U) (|AllVertices#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@16 (Lit refType this@@8) (Lit SetType |S#0@@2|) (Lit SetType |AllVertices#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@16))) ($Is SetType |S#0@@2| (TSet _module.BreadthFirstSearch$Vertex@@16))) ($Is SetType |AllVertices#0@@6| (TSet _module.BreadthFirstSearch$Vertex@@16))))) (and (forall ((|w#2| T@U) ) (!  (=> ($IsBox |w#2| _module.BreadthFirstSearch$Vertex@@16) (=> (|Set#IsMember| (Lit SetType |AllVertices#0@@6|) |w#2|) (forall ((|x#5| T@U) ) (!  (=> ($IsBox |x#5| _module.BreadthFirstSearch$Vertex@@16) (=> (|Set#IsMember| (Lit SetType |S#0@@2|) |x#5|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@16 (Lit refType this@@8) |x#5|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |743|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@16 this@@8 |x#5|))
 :pattern ( (|Set#IsMember| |S#0@@2| |x#5|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |745|
 :pattern ( (|Set#IsMember| |AllVertices#0@@6| |w#2|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@16 (Lit refType this@@8) (Lit SetType |S#0@@2|) (Lit SetType |AllVertices#0@@6|)) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@16 (Lit SetType |AllVertices#0@@6|) _module.BreadthFirstSearch$Vertex@@16 (Lit SetType |S#0@@2|) _module.BreadthFirstSearch$Vertex@@16 (Lit refType this@@8) |S#0@@2| _module.BreadthFirstSearch$Vertex@@16 this@@8)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |746|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@16 (Lit refType this@@8) (Lit SetType |S#0@@2|) (Lit SetType |AllVertices#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@17 T@U) (this@@9 T@U) (|S#0@@3| T@U) (|AllVertices#0@@7| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@17 this@@9 |S#0@@3| |AllVertices#0@@7|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17))) ($Is SetType |S#0@@3| (TSet _module.BreadthFirstSearch$Vertex@@17))) ($Is SetType |AllVertices#0@@7| (TSet _module.BreadthFirstSearch$Vertex@@17))))) (and (forall ((|w#0| T@U) ) (!  (=> ($IsBox |w#0| _module.BreadthFirstSearch$Vertex@@17) (=> (|Set#IsMember| |AllVertices#0@@7| |w#0|) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module.BreadthFirstSearch$Vertex@@17) (=> (|Set#IsMember| |S#0@@3| |x#1|) (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@17 this@@9 |x#1|)))
 :qid |BreadthFirstSearchdfy.188:40|
 :skolemid |733|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@17 this@@9 |x#1|))
 :pattern ( (|Set#IsMember| |S#0@@3| |x#1|))
))))
 :qid |BreadthFirstSearchdfy.188:9|
 :skolemid |735|
 :pattern ( (|Set#IsMember| |AllVertices#0@@7| |w#0|))
)) (= (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@17 this@@9 |S#0@@3| |AllVertices#0@@7|) (|Set#FromBoogieMap| (|lambda#10| _module.BreadthFirstSearch$Vertex@@17 |AllVertices#0@@7| _module.BreadthFirstSearch$Vertex@@17 |S#0@@3| _module.BreadthFirstSearch$Vertex@@17 this@@9 |S#0@@3| _module.BreadthFirstSearch$Vertex@@17 this@@9)))))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@17 this@@9 |S#0@@3| |AllVertices#0@@7|))
))))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@18 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@18)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@18))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@4 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@18)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@19 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsBox bx@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Equal| a@@12 b@@9) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@12 o@@4) (|Set#IsMember| b@@9 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@12 o@@4))
 :pattern ( (|Set#IsMember| b@@9 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@12 b@@9))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@20 T@U) ($ly@@3 T@U) (this@@10 T@U) (|source#0@@3| T@U) (|n#0@@3| Int) (|AllVertices#0@@8| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@10 |source#0@@3| |n#0@@3| |AllVertices#0@@8|) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@20))) ($IsBox |source#0@@3| _module.BreadthFirstSearch$Vertex@@20)) (<= (LitInt 0) |n#0@@3|)) ($Is SetType |AllVertices#0@@8| (TSet _module.BreadthFirstSearch$Vertex@@20))))) (and (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@10 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@10 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@20 this@@10 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@20 $ly@@3 reveal__module.BreadthFirstSearch.R this@@10 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|)))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@20 ($LS $ly@@3) true this@@10 |source#0@@3| |n#0@@3| |AllVertices#0@@8|) (ite (= |n#0@@3| (LitInt 0)) (|Set#UnionOne| |Set#Empty| |source#0@@3|) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@20 $ly@@3 reveal__module.BreadthFirstSearch.R this@@10 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@20 this@@10 (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@20 $ly@@3 reveal__module.BreadthFirstSearch.R this@@10 |source#0@@3| (- |n#0@@3| 1) |AllVertices#0@@8|) |AllVertices#0@@8|))))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@20 ($LS $ly@@3) true this@@10 |source#0@@3| |n#0@@3| |AllVertices#0@@8|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@21 T@U) ($ly@@4 T@U) (this@@11 T@U) (|source#0@@4| T@U) (|n#0@@4| Int) (|AllVertices#0@@9| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21))) ($IsBox |source#0@@4| _module.BreadthFirstSearch$Vertex@@21)) (<= (LitInt 0) |n#0@@4|)) ($Is SetType |AllVertices#0@@9| (TSet _module.BreadthFirstSearch$Vertex@@21))))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (and (|_module.BreadthFirstSearch.R#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (|_module.BreadthFirstSearch.Successors#canCall| _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@11) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|))))) (= (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 ($LS $ly@@4) true (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) (|Set#UnionOne| |Set#Empty| (Lit BoxType |source#0@@4|)) (|Set#Union| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (_module.BreadthFirstSearch.Successors _module.BreadthFirstSearch$Vertex@@21 (Lit refType this@@11) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 ($LS $ly@@4) reveal__module.BreadthFirstSearch.R (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt (- |n#0@@4| 1)) (Lit SetType |AllVertices#0@@9|)) (Lit SetType |AllVertices#0@@9|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |725|
 :pattern ( (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@21 ($LS $ly@@4) true (Lit refType this@@11) (Lit BoxType |source#0@@4|) (LitInt |n#0@@4|) (Lit SetType |AllVertices#0@@9|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this@@12 () T@U)
(declare-fun _module.BreadthFirstSearch$Vertex@@22 () T@U)
(declare-fun |source#0@@5| () T@U)
(declare-fun |m#0| () Int)
(declare-fun |n#0@@5| () Int)
(declare-fun |AllVertices#0@@10| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |m##0_0@0| () Int)
(set-info :boogie-vc-id Impl$$_module.BreadthFirstSearch.IsReachFixpoint_split4)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22)) ($IsAlloc refType this@@12 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22) $Heap@@2)))) (and (and ($IsBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@22) ($IsAllocBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@22 $Heap@@2)) (and (<= (LitInt 0) |m#0|) (<= (LitInt 0) |n#0@@5|)))) (=> (and (and (and (and ($Is SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@22)) ($IsAlloc SetType |AllVertices#0@@10| (TSet _module.BreadthFirstSearch$Vertex@@22) $Heap@@2)) (and (= 3 $FunctionContextHeight) (|Set#Equal| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@22 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@12 |source#0@@5| |m#0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@22 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@12 |source#0@@5| (+ |m#0| 1) |AllVertices#0@@10|)))) (and (and (<= |m#0| |n#0@@5|) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and (= $Heap@@2 $Heap@0) reveal__module.BreadthFirstSearch.R) (and (< |m#0| |n#0@@5|) ($Is intType (int_2_U (+ |m#0| 1)) Tclass._System.nat))) (and (and (= |m##0_0@0| (+ |m#0| 1)) (or (<= 0 (- |n#0@@5| |m#0|)) (= (- |n#0@@5| |m##0_0@0|) (- |n#0@@5| |m#0|)))) (and (< (- |n#0@@5| |m##0_0@0|) (- |n#0@@5| |m#0|)) (= (ControlFlow 0 2) (- 0 1)))))) (|Set#Equal| (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@22 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@12 |source#0@@5| |m##0_0@0| |AllVertices#0@@10|) (_module.BreadthFirstSearch.R _module.BreadthFirstSearch$Vertex@@22 ($LS ($LS $LZ)) reveal__module.BreadthFirstSearch.R this@@12 |source#0@@5| (+ |m##0_0@0| 1) |AllVertices#0@@10|))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
