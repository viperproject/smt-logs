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
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Tree.Branch| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Tree () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Tree.Branch| (T@U T@U) T@U)
(declare-fun Tclass._module.Tree (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.ListData (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.__default.TreeData (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.Tree.Branch_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.ListData#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun |_module.Tree#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |_module.__default.TreeData#canCall| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Tree.val (T@U) T@U)
(declare-fun _module.Tree.trees (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.Tree_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc Tagclass._module.List Tagclass._module.Tree |##_module.List.Nil| |##_module.List.Cons| |##_module.Tree.Branch| tytagFamily$List tytagFamily$Tree)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Tree$A T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0| |a#14#1#0|) (Tclass._module.Tree _module.Tree$A) $h)  (and ($IsAllocBox |a#14#0#0| _module.Tree$A $h) ($IsAlloc DatatypeTypeType |a#14#1#0| (Tclass._module.List (Tclass._module.Tree _module.Tree$A)) $h))))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0| |a#14#1#0|) (Tclass._module.Tree _module.Tree$A) $h))
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((_module._default.ListData$_T0 T@U) ($ly T@U) (|xs#0| T@U) ) (! (= (_module.__default.ListData _module._default.ListData$_T0 ($LS $ly) |xs#0|) (_module.__default.ListData _module._default.ListData$_T0 $ly |xs#0|))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0 ($LS $ly) |xs#0|))
)))
(assert (forall ((_module._default.TreeData$_T0 T@U) ($ly@@0 T@U) (|t0#0| T@U) ) (! (= (_module.__default.TreeData _module._default.TreeData$_T0 ($LS $ly@@0) |t0#0|) (_module.__default.TreeData _module._default.TreeData$_T0 $ly@@0 |t0#0|))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0 ($LS $ly@@0) |t0#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.Tree$A@@0 T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Tree _module.Tree$A@@0)) (_module.Tree.Branch_q d))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (_module.Tree.Branch_q d) ($Is DatatypeTypeType d (Tclass._module.Tree _module.Tree$A@@0)))
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
(assert (forall ((_module.List$A T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@0))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@0))
)))
(assert (forall ((_module.List$A@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@0 T@U) ($ly@@1 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@0 |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.ListData$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|xs#2| (_module.List.tail |xs#0@@0|)))
(|_module.__default.ListData#canCall| _module._default.ListData$_T0@@0 |xs#2|))) (= (_module.__default.ListData _module._default.ListData$_T0@@0 ($LS $ly@@1) |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |Set#Empty| (let ((|xs#1| (_module.List.tail |xs#0@@0|)))
(let ((|x#1| (_module.List.head |xs#0@@0|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#1|) (_module.__default.ListData _module._default.ListData$_T0@@0 $ly@@1 |xs#1|))))))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@0 ($LS $ly@@1) |xs#0@@0|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.List#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (|_module.List#Equal| a@@7 b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|_module.Tree#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (|_module.Tree#Equal| a@@8 b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (and (_module.List.Cons_q a@@9) (_module.List.Cons_q b@@6)) (= (|_module.List#Equal| a@@9 b@@6)  (and (= (_module.List.head a@@9) (_module.List.head b@@6)) (|_module.List#Equal| (_module.List.tail a@@9) (_module.List.tail b@@6)))))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( (|_module.List#Equal| a@@9 b@@6) (_module.List.Cons_q a@@9))
 :pattern ( (|_module.List#Equal| a@@9 b@@6) (_module.List.Cons_q b@@6))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((_module.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1))  (and ($IsBox |a#6#0#0| _module.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$A@@1))))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (_module.List.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Tree.Branch_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Tree.Branch|))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.Tree.Branch_q d@@2))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@10 b@@7) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@10 o@@2)) (not (|Set#IsMember| b@@7 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@10 o@@2))
 :pattern ( (|Set#IsMember| b@@7 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@10 b@@7))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@1 T@U) ($ly@@2 T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 (Lit DatatypeTypeType |xs#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.ListData$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|xs#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 |xs#4|))) (= (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) |Set#Empty| (let ((|xs#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@1|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#3|) (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) |xs#3|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@1|)))
))))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |treemapsimpledfy.8:31|
 :skolemid |636|
)))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Tree.Branch_q d@@4) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@4 (|#_module.Tree.Branch| |a#13#0#0| |a#13#1#0|))
 :qid |treemapsimpledfy.10:27|
 :skolemid |654|
)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.Tree.Branch_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((_module.Tree$A@@1 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Tree _module.Tree$A@@1))  (and ($IsBox |a#14#0#0@@0| _module.Tree$A@@1) ($Is DatatypeTypeType |a#14#1#0@@0| (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@1)))))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Tree _module.Tree$A@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@2 T@U) ($ly@@3 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@2 |xs#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.ListData$_T0@@2)))) (and (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| _module._default.ListData$_T0@@2) (=> (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@3 |xs#0@@2|) |x#0|) (< (BoxRank |x#0|) (DtRank |xs#0@@2|))))
 :qid |treemapsimpledfy.13:18|
 :skolemid |537|
 :pattern ( (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@3 |xs#0@@2|) |x#0|))
)) ($Is SetType (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@3 |xs#0@@2|) (TSet _module._default.ListData$_T0@@2))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@3 |xs#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@0 T@U) ($ly@@4 T@U) (|t0#0@@0| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@0 |t0#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@0| (Tclass._module.Tree _module._default.TreeData$_T0@@0)))) (and (forall ((|t#0| T@U) ) (!  (=> ($IsBox |t#0| _module._default.TreeData$_T0@@0) (=> (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@4 |t0#0@@0|) |t#0|) (< (BoxRank |t#0|) (DtRank |t0#0@@0|))))
 :qid |treemapsimpledfy.21:18|
 :skolemid |552|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@4 |t0#0@@0|) |t#0|))
)) ($Is SetType (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@4 |t0#0@@0|) (TSet _module._default.TreeData$_T0@@0))))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@4 |t0#0@@0|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.List$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$A@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$A@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (Tclass._module.List _module.List$A@@2))
)))
(assert (forall ((_module.Tree$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Tree _module.Tree$A@@2)) Tagclass._module.Tree) (= (TagFamily (Tclass._module.Tree _module.Tree$A@@2)) tytagFamily$Tree))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Tclass._module.Tree _module.Tree$A@@2))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|_module.Tree#Equal| a@@11 b@@8)  (and (= (_module.Tree.val a@@11) (_module.Tree.val b@@8)) (|_module.List#Equal| (_module.Tree.trees a@@11) (_module.Tree.trees b@@8))))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (|_module.Tree#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@3)  (or (|Set#IsMember| a@@12 o@@3) (|Set#IsMember| b@@9 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@3))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|)) (exists ((|t#1| T@U) (|y#0| T@U) ) (!  (and (and (and ($Is DatatypeTypeType |t#1| |l#0|) ($IsBox |y#0| |l#1|)) (and (|Set#IsMember| |l#2| ($Box DatatypeTypeType |t#1|)) (|Set#IsMember| (_module.__default.TreeData |l#3| |l#4| |t#1|) |y#0|))) (= |$y#0| |y#0|))
 :qid |treemapsimpledfy.24:13|
 :skolemid |556|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData |l#5| |l#6| |t#1|) |y#0|))
)))
 :qid |treemapsimpledfy.10:10|
 :skolemid |670|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@1 T@U) ($ly@@5 T@U) (|t0#0@@1| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@1 (Lit DatatypeTypeType |t0#0@@1|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@1| (Tclass._module.Tree _module._default.TreeData$_T0@@1)))) (and (let ((|ts#1| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@1|))))
(forall ((|t#2| T@U) (|y#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |t#2| (Tclass._module.Tree _module._default.TreeData$_T0@@1)) ($IsBox |y#1| _module._default.TreeData$_T0@@1)) (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@1) |ts#1|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@1) ($LS $LZ) |ts#1|) ($Box DatatypeTypeType |t#2|)) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@1 |t#2|))))
 :qid |treemapsimpledfy.24:13|
 :skolemid |560|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@5) |t#2|) |y#1|))
))) (= (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |t0#0@@1|)) (let ((|ts#1@@0| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@1|))))
(let ((|x#1@@0| (_module.Tree.val (Lit DatatypeTypeType |t0#0@@1|))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#1@@0|) (|Set#FromBoogieMap| (|lambda#2| (Tclass._module.Tree _module._default.TreeData$_T0@@1) _module._default.TreeData$_T0@@1 (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@1) ($LS $LZ) |ts#1@@0|) _module._default.TreeData$_T0@@1 ($LS $ly@@5) _module._default.TreeData$_T0@@1 ($LS $ly@@5)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |561|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |t0#0@@1|)))
))))
(assert (forall ((_module.List$A@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.List.Nil_q a@@14) (_module.List.Nil_q b@@11)) (|_module.List#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( (|_module.List#Equal| a@@14 b@@11) (_module.List.Nil_q a@@14))
 :pattern ( (|_module.List#Equal| a@@14 b@@11) (_module.List.Nil_q b@@11))
)))
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
 :qid |treemapsimpledfy.8:31|
 :skolemid |634|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |treemapsimpledfy.8:31|
 :skolemid |643|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |treemapsimpledfy.8:31|
 :skolemid |645|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0|)) |##_module.Tree.Branch|)
 :qid |treemapsimpledfy.10:27|
 :skolemid |652|
 :pattern ( (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Tree.val (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |treemapsimpledfy.10:27|
 :skolemid |661|
 :pattern ( (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (_module.Tree.trees (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |treemapsimpledfy.10:27|
 :skolemid |663|
 :pattern ( (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.ListData$_T0@@3 T@U) ($ly@@6 T@U) (|xs#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@3 |xs#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.ListData$_T0@@3)) ($IsAlloc DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.ListData$_T0@@3) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@6 |xs#0@@3|) (TSet _module._default.ListData$_T0@@3) $Heap))
 :qid |treemapsimpledfy.12:16|
 :skolemid |539|
 :pattern ( ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@6 |xs#0@@3|) (TSet _module._default.ListData$_T0@@3) $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.TreeData$_T0@@2 T@U) ($ly@@7 T@U) (|t0#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@2 |t0#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t0#0@@2| (Tclass._module.Tree _module._default.TreeData$_T0@@2)) ($IsAlloc DatatypeTypeType |t0#0@@2| (Tclass._module.Tree _module._default.TreeData$_T0@@2) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.__default.TreeData _module._default.TreeData$_T0@@2 $ly@@7 |t0#0@@2|) (TSet _module._default.TreeData$_T0@@2) $Heap@@0))
 :qid |treemapsimpledfy.20:31|
 :skolemid |554|
 :pattern ( ($IsAlloc SetType (_module.__default.TreeData _module._default.TreeData$_T0@@2 $ly@@7 |t0#0@@2|) (TSet _module._default.TreeData$_T0@@2) $Heap@@0))
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
(assert (forall ((_module.List$A@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$A@@4)) _module.List$A@@4)
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._module.List _module.List$A@@4))
)))
(assert (forall ((_module.Tree$A@@3 T@U) ) (! (= (Tclass._module.Tree_0 (Tclass._module.Tree _module.Tree$A@@3)) _module.Tree$A@@3)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Tclass._module.Tree _module.Tree$A@@3))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |644|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |646|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0|)))
 :qid |treemapsimpledfy.10:27|
 :skolemid |662|
 :pattern ( (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (DtRank |a#19#1#0|) (DtRank (|#_module.Tree.Branch| |a#19#0#0| |a#19#1#0|)))
 :qid |treemapsimpledfy.10:27|
 :skolemid |664|
 :pattern ( (|#_module.Tree.Branch| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((d@@7 T@U) (_module.List$A@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$A@@5) $h@@1))) ($IsAllocBox (_module.List.head d@@7) _module.List$A@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAllocBox (_module.List.head d@@7) _module.List$A@@5 $h@@1))
)))
(assert (forall ((d@@8 T@U) (_module.Tree$A@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Branch_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Tree _module.Tree$A@@4) $h@@2))) ($IsAllocBox (_module.Tree.val d@@8) _module.Tree$A@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAllocBox (_module.Tree.val d@@8) _module.Tree$A@@4 $h@@2))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |669|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((_module.List$A@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.List _module.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.List _module.List$A@@6))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@3 (Tclass._module.List _module.List$A@@6)))
)))
(assert (forall ((_module.Tree$A@@5 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Tree _module.Tree$A@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.Tree _module.Tree$A@@5))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Tree _module.Tree$A@@5)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@3 T@U) ($ly@@8 T@U) (|t0#0@@3| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@3 |t0#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@3| (Tclass._module.Tree _module._default.TreeData$_T0@@3)))) (and (let ((|ts#0| (_module.Tree.trees |t0#0@@3|)))
(forall ((|t#1@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |t#1@@0| (Tclass._module.Tree _module._default.TreeData$_T0@@3)) ($IsBox |y#0@@0| _module._default.TreeData$_T0@@3)) (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@3) |ts#0|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@3) ($LS $LZ) |ts#0|) ($Box DatatypeTypeType |t#1@@0|)) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@3 |t#1@@0|))))
 :qid |treemapsimpledfy.24:13|
 :skolemid |557|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@3 $ly@@8 |t#1@@0|) |y#0@@0|))
))) (= (_module.__default.TreeData _module._default.TreeData$_T0@@3 ($LS $ly@@8) |t0#0@@3|) (let ((|ts#0@@0| (_module.Tree.trees |t0#0@@3|)))
(let ((|x#0@@0| (_module.Tree.val |t0#0@@3|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#0@@0|) (|Set#FromBoogieMap| (|lambda#2| (Tclass._module.Tree _module._default.TreeData$_T0@@3) _module._default.TreeData$_T0@@3 (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@3) ($LS $LZ) |ts#0@@0|) _module._default.TreeData$_T0@@3 $ly@@8 _module._default.TreeData$_T0@@3 $ly@@8))))))))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@3 ($LS $ly@@8) |t0#0@@3|))
))))
(assert (forall ((d@@10 T@U) (_module.List$A@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$A@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$A@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$A@@7) $h@@3))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |treemapsimpledfy.8:31|
 :skolemid |642|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (|#_module.Tree.Branch| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)) (Lit DatatypeTypeType (|#_module.Tree.Branch| |a#15#0#0| |a#15#1#0|)))
 :qid |treemapsimpledfy.10:27|
 :skolemid |660|
 :pattern ( (|#_module.Tree.Branch| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)))
)))
(assert (forall ((d@@11 T@U) (_module.Tree$A@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Tree.Branch_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.Tree _module.Tree$A@@6) $h@@4))) ($IsAlloc DatatypeTypeType (_module.Tree.trees d@@11) (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@6)) $h@@4))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.trees d@@11) (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@6)) $h@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((_module.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@5)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$A@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$A@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.TreeData$_T0@@4 () T@U)
(declare-fun |t0#0@@4| () T@U)
(declare-fun |t#4@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |ts#Z#0@0| () T@U)
(declare-fun |t#5@0| () T@U)
(declare-fun |y#2@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.TreeData)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon5_correct true))
(let ((anon14_Else_correct  (=> (and (=> (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t0#0@@4|) |t#4@0|) (< (BoxRank |t#4@0|) (DtRank |t0#0@@4|))) (= (ControlFlow 0 15) 12)) anon5_correct)))
(let ((anon14_Then_correct  (=> ($IsAlloc DatatypeTypeType |t0#0@@4| (Tclass._module.Tree _module._default.TreeData$_T0@@4) $Heap@@1) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (|_module.Tree#Equal| |t0#0@@4| |t0#0@@4|) (< (DtRank |t0#0@@4|) (DtRank |t0#0@@4|)))) (=> (or (|_module.Tree#Equal| |t0#0@@4| |t0#0@@4|) (< (DtRank |t0#0@@4|) (DtRank |t0#0@@4|))) (=> (and (and (or (|_module.Tree#Equal| |t0#0@@4| |t0#0@@4|) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@4 |t0#0@@4|)) (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t0#0@@4|) |t#4@0|)) (and (< (BoxRank |t#4@0|) (DtRank |t0#0@@4|)) (= (ControlFlow 0 13) 12))) anon5_correct))))))
(let ((anon13_Then_correct  (=> ($Is SetType (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t0#0@@4|) (TSet _module._default.TreeData$_T0@@4)) (=> (and ($IsBox |t#4@0| _module._default.TreeData$_T0@@4) ($IsAllocBox |t#4@0| _module._default.TreeData$_T0@@4 $Heap@@1)) (and (=> (= (ControlFlow 0 16) 13) anon14_Then_correct) (=> (= (ControlFlow 0 16) 15) anon14_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|t#3| T@U) ) (!  (=> ($IsBox |t#3| _module._default.TreeData$_T0@@4) (=> (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS ($LS $LZ)) |t0#0@@4|) |t#3|) (< (BoxRank |t#3|) (DtRank |t0#0@@4|))))
 :qid |treemapsimpledfy.21:18|
 :skolemid |562|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS ($LS $LZ)) |t0#0@@4|) |t#3|))
)))))
(let ((anon11_correct  (=> (and (and (= (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t0#0@@4|) (|Set#Union| (|Set#UnionOne| |Set#Empty| |x#Z#0@0|) (|Set#FromBoogieMap| (|lambda#2| (Tclass._module.Tree _module._default.TreeData$_T0@@4) _module._default.TreeData$_T0@@4 (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) _module._default.TreeData$_T0@@4 ($LS $LZ) _module._default.TreeData$_T0@@4 ($LS $LZ))))) (forall ((|t#6| T@U) (|y#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |t#6| (Tclass._module.Tree _module._default.TreeData$_T0@@4)) ($IsBox |y#3| _module._default.TreeData$_T0@@4)) (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@4) |ts#Z#0@0|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#6|)) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@4 |t#6|))))
 :qid |treemapsimpledfy.24:13|
 :skolemid |569|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t#6|) |y#3|))
))) (and ($Is SetType (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t0#0@@4|) (TSet _module._default.TreeData$_T0@@4)) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct)))
(let ((anon17_Else_correct  (=> (and (not (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#5@0|)) (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t#5@0|) |y#2@0|))) (= (ControlFlow 0 6) 3)) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#5@0|)) (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@4 ($LS $LZ) |t#5@0|) |y#2@0|)) (= (ControlFlow 0 5) 3)) anon11_correct)))
(let ((anon16_Else_correct  (=> (not (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#5@0|))) (and (=> (= (ControlFlow 0 9) 5) anon17_Then_correct) (=> (= (ControlFlow 0 9) 6) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@4) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#5@0|)) ($IsAlloc DatatypeTypeType |t#5@0| (Tclass._module.Tree _module._default.TreeData$_T0@@4) $Heap@@1)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< (DtRank |t#5@0|) (DtRank |t0#0@@4|))) (=> (< (DtRank |t#5@0|) (DtRank |t0#0@@4|)) (=> (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@4 |t#5@0|) (and (=> (= (ControlFlow 0 7) 5) anon17_Then_correct) (=> (= (ControlFlow 0 7) 6) anon17_Else_correct))))))))
(let ((anon15_Then_correct  (=> (and (and (and ($Is DatatypeTypeType |t#5@0| (Tclass._module.Tree _module._default.TreeData$_T0@@4)) ($IsAlloc DatatypeTypeType |t#5@0| (Tclass._module.Tree _module._default.TreeData$_T0@@4) $Heap@@1)) (and ($IsBox |y#2@0| _module._default.TreeData$_T0@@4) ($IsAllocBox |y#2@0| _module._default.TreeData$_T0@@4 $Heap@@1))) (and ($IsAlloc DatatypeTypeType |ts#Z#0@0| (Tclass._module.List (Tclass._module.Tree _module._default.TreeData$_T0@@4)) $Heap@@1) (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@4) |ts#Z#0@0|))) (and (=> (= (ControlFlow 0 10) 7) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (and (and ($Is DatatypeTypeType |t#5@0| (Tclass._module.Tree _module._default.TreeData$_T0@@4)) ($IsAlloc DatatypeTypeType |t#5@0| (Tclass._module.Tree _module._default.TreeData$_T0@@4) $Heap@@1)) (and ($IsBox |y#2@0| _module._default.TreeData$_T0@@4) ($IsAllocBox |y#2@0| _module._default.TreeData$_T0@@4 $Heap@@1)))) (= (ControlFlow 0 4) 3)) anon11_correct)))
(let ((anon13_Else_correct  (=> (and (and (= |let#0#0#0| |t0#0@@4|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Tree _module._default.TreeData$_T0@@4))) (and (_module.Tree.Branch_q |let#0#0#0|) (= (|#_module.Tree.Branch| |x#Z#0@0| |ts#Z#0@0|) |let#0#0#0|))) (and (=> (= (ControlFlow 0 11) 10) anon15_Then_correct) (=> (= (ControlFlow 0 11) 4) anon15_Else_correct)))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 17) 16) anon13_Then_correct) (=> (= (ControlFlow 0 17) 11) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is DatatypeTypeType |t0#0@@4| (Tclass._module.Tree _module._default.TreeData$_T0@@4))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
