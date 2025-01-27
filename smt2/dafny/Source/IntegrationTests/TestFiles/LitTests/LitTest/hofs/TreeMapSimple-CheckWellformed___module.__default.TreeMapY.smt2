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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Tree.Branch| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
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
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.ListData#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.__default.PreY (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.PreY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.MapY (T@U T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.MapY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |lambda#9| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.TreeMapY (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.TreeMapY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Tree.trees (T@U) T@U)
(declare-fun |_module.__default.TreeData#canCall| (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#12| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#10| (Bool) T@U)
(declare-fun _module.Tree.val (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.Tree_0 (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._module.List Tagclass._module.Tree |##_module.List.Nil| |##_module.List.Cons| |##_module.Tree.Branch| tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| tytagFamily$List tytagFamily$Tree)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (= (Ctor DatatypeTypeType) 8))
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
(assert (= (Ctor HandleTypeType) 9))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((_module.List$A T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@1))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@1))
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
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A T@U) (_module._default.PreY$B T@U) ($Heap T@U) (|f#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 _module._default.PreY$A _module._default.PreY$B))) ($Is SetType |s#0| (TSet _module._default.PreY$A))))) (and (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |573|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0|))
)) (= (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) (forall ((|x#0@@0| T@U) ) (!  (=> ($IsBox |x#0@@0| _module._default.PreY$A) (=> (|Set#IsMember| |s#0| |x#0@@0|) (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |572|
 :pattern ( (Requires1 _module._default.PreY$A _module._default.PreY$B $Heap |f#0| |x#0@@0|))
 :pattern ( (|Set#IsMember| |s#0| |x#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.__default.PreY _module._default.PreY$A _module._default.PreY$B |f#0| |s#0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A T@U) (_module._default.MapY$B T@U) ($ly@@2 T@U) ($Heap@@0 T@U) (|xs#0@@1| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A _module._default.MapY$B (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.MapY$A))) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 _module._default.MapY$A _module._default.MapY$B))) (_module.__default.PreY _module._default.MapY$A _module._default.MapY$B |f#0@@0| (Lit SetType (_module.__default.ListData _module._default.MapY$A ($LS $LZ) (Lit DatatypeTypeType |xs#0@@1|))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|xs#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(|_module.__default.MapY#canCall| _module._default.MapY$A _module._default.MapY$B |xs#4| |f#0@@0|))) (= (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) |#_module.List.Nil| (let ((|xs#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@1|)))))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A _module._default.MapY$B $Heap@@0 |f#0@@0| |x#2|) (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@2) |xs#3| |f#0@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.MapY _module._default.MapY$A _module._default.MapY$B ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@1|) |f#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((_module.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1))  (and ($IsBox |a#6#0#0| _module.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$A@@1))))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1)))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$l#2#heap#0| T@U) (|$l#2#t#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$l#2#heap#0| |$l#2#t#0|))  (and ($IsBox |$l#2#t#0| |l#0|) (and (|Set#IsMember| |l#1| |$l#2#t#0|) (_module.__default.PreY |l#2| |l#3| |l#4| (_module.__default.TreeData |l#5| |l#6| ($Unbox DatatypeTypeType |$l#2#t#0|))))))
 :qid |TreeMapSimpledfy.9:10|
 :skolemid |672|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$l#2#heap#0| |$l#2#t#0|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.TreeMapY$A T@U) (_module._default.TreeMapY$B T@U) ($ly@@3 T@U) ($Heap@@1 T@U) (|t0#0@@0| T@U) (|f#0@@1| T@U) ) (!  (=> (or (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A _module._default.TreeMapY$B (Lit DatatypeTypeType |t0#0@@0|) |f#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |t0#0@@0| (Tclass._module.Tree _module._default.TreeMapY$A))) ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A _module._default.TreeMapY$B))) (_module.__default.PreY _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| (Lit SetType (_module.__default.TreeData _module._default.TreeMapY$A ($LS $LZ) (Lit DatatypeTypeType |t0#0@@0|))))))) (and (let ((|ts#1| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@0|))))
 (and (forall ((|$l#4#t#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#4#t#0| (Tclass._module.Tree _module._default.TreeMapY$A)) (and (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeMapY$A) |ts#1|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A) ($LS $LZ) |ts#1|) ($Box DatatypeTypeType |$l#4#t#0|)) (and (|_module.__default.TreeData#canCall| _module._default.TreeMapY$A |$l#4#t#0|) (|_module.__default.PreY#canCall| _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| (_module.__default.TreeData _module._default.TreeMapY$A ($LS $LZ) |$l#4#t#0|))))) (=> (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A) ($LS $LZ) |ts#1|) ($Box DatatypeTypeType |$l#4#t#0|)) (_module.__default.PreY _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| (_module.__default.TreeData _module._default.TreeMapY$A ($LS $LZ) |$l#4#t#0|))) (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A _module._default.TreeMapY$B |$l#4#t#0| |f#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |606|
)) (|_module.__default.MapY#canCall| (Tclass._module.Tree _module._default.TreeMapY$A) (Tclass._module.Tree _module._default.TreeMapY$B) |ts#1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| (Tclass._module.Tree _module._default.TreeMapY$A) (Tclass._module.Tree _module._default.TreeMapY$A) |ts#1| _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| _module._default.TreeMapY$A (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) ($LS $ly@@3)))))) (= (_module.__default.TreeMapY _module._default.TreeMapY$A _module._default.TreeMapY$B ($LS $ly@@3) (Lit DatatypeTypeType |t0#0@@0|) |f#0@@1|) (let ((|ts#1@@0| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@0|))))
(let ((|x#1@@0| (_module.Tree.val (Lit DatatypeTypeType |t0#0@@0|))))
(|#_module.Tree.Branch| (Apply1 _module._default.TreeMapY$A _module._default.TreeMapY$B $Heap@@1 |f#0@@1| |x#1@@0|) (_module.__default.MapY (Tclass._module.Tree _module._default.TreeMapY$A) (Tclass._module.Tree _module._default.TreeMapY$B) ($LS $LZ) |ts#1@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| (Tclass._module.Tree _module._default.TreeMapY$A) (Tclass._module.Tree _module._default.TreeMapY$A) |ts#1@@0| _module._default.TreeMapY$A _module._default.TreeMapY$B |f#0@@1| _module._default.TreeMapY$A (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) ($LS $ly@@3))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |607|
 :pattern ( (_module.__default.TreeMapY _module._default.TreeMapY$A _module._default.TreeMapY$B ($LS $ly@@3) (Lit DatatypeTypeType |t0#0@@0|) |f#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@1 T@U) ($ly@@4 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 (Lit DatatypeTypeType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.ListData$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|xs#4@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.ListData#canCall| _module._default.ListData$_T0@@1 |xs#4@@0|))) (= (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |Set#Empty| (let ((|xs#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@2|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#3|) (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@4) |xs#3@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@1 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@2|)))
))))
(assert (forall ((m@@4 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@2) (U_2_bool (MapType1Select BoxType boolType m@@4 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |636|
)))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Tree.Branch_q d@@4) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@4 (|#_module.Tree.Branch| |a#13#0#0| |a#13#1#0|))
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |654|
)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.Tree.Branch_q d@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@4 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@4) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@4) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@5 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@5) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@5) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.MapY$A@@0 T@U) (_module._default.MapY$B@@0 T@U) ($ly@@5 T@U) (|xs#0@@3| T@U) (|f#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@0 _module._default.MapY$B@@0 |xs#0@@3| |f#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.MapY$A@@0)) ($IsAlloc DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.MapY$A@@0) $Heap@@2)) (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@0 _module._default.MapY$B@@0)) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@0 _module._default.MapY$B@@0) $Heap@@2))) (_module.__default.PreY _module._default.MapY$A@@0 _module._default.MapY$B@@0 |f#0@@2| (_module.__default.ListData _module._default.MapY$A@@0 ($LS $LZ) |xs#0@@3|))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@0 _module._default.MapY$B@@0 $ly@@5 |xs#0@@3| |f#0@@2|) (Tclass._module.List _module._default.MapY$B@@0) $Heap@@2))
 :qid |TreeMapSimpledfy.32:10|
 :skolemid |588|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@0 _module._default.MapY$B@@0 $ly@@5 |xs#0@@3| |f#0@@2|) (Tclass._module.List _module._default.MapY$B@@0) $Heap@@2))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@3 T@U) (_module._default.TreeMapY$A@@0 T@U) (_module._default.TreeMapY$B@@0 T@U) ($ly@@6 T@U) (|t0#0@@1| T@U) (|f#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0 |t0#0@@1| |f#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |t0#0@@1| (Tclass._module.Tree _module._default.TreeMapY$A@@0)) ($IsAlloc DatatypeTypeType |t0#0@@1| (Tclass._module.Tree _module._default.TreeMapY$A@@0) $Heap@@3)) (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0) $Heap@@3))) (_module.__default.PreY _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0 |f#0@@3| (_module.__default.TreeData _module._default.TreeMapY$A@@0 ($LS $LZ) |t0#0@@1|))))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (_module.__default.TreeMapY _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0 $ly@@6 |t0#0@@1| |f#0@@3|) (Tclass._module.Tree _module._default.TreeMapY$B@@0) $Heap@@3))
 :qid |TreeMapSimpledfy.41:10|
 :skolemid |602|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.TreeMapY _module._default.TreeMapY$A@@0 _module._default.TreeMapY$B@@0 $ly@@6 |t0#0@@1| |f#0@@3|) (Tclass._module.Tree _module._default.TreeMapY$B@@0) $Heap@@3))
))))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.TreeMapY$A@@1 T@U) (_module._default.TreeMapY$B@@1 T@U) ($ly@@7 T@U) ($Heap@@4 T@U) (|t0#0@@2| T@U) (|f#0@@4| T@U) ) (!  (=> (or (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |t0#0@@2| |f#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |t0#0@@2| (Tclass._module.Tree _module._default.TreeMapY$A@@1))) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1))) (_module.__default.PreY _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| (_module.__default.TreeData _module._default.TreeMapY$A@@1 ($LS $LZ) |t0#0@@2|))))) (and (let ((|ts#0| (_module.Tree.trees |t0#0@@2|)))
 (and (forall ((|$l#1#t#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#1#t#0| (Tclass._module.Tree _module._default.TreeMapY$A@@1)) (and (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@1) |ts#0|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@1) ($LS $LZ) |ts#0|) ($Box DatatypeTypeType |$l#1#t#0|)) (and (|_module.__default.TreeData#canCall| _module._default.TreeMapY$A@@1 |$l#1#t#0|) (|_module.__default.PreY#canCall| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| (_module.__default.TreeData _module._default.TreeMapY$A@@1 ($LS $LZ) |$l#1#t#0|))))) (=> (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@1) ($LS $LZ) |ts#0|) ($Box DatatypeTypeType |$l#1#t#0|)) (_module.__default.PreY _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| (_module.__default.TreeData _module._default.TreeMapY$A@@1 ($LS $LZ) |$l#1#t#0|))) (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |$l#1#t#0| |f#0@@4|))))
 :qid |unknown.0:0|
 :skolemid |604|
)) (|_module.__default.MapY#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@1) (Tclass._module.Tree _module._default.TreeMapY$B@@1) |ts#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| (Tclass._module.Tree _module._default.TreeMapY$A@@1) (Tclass._module.Tree _module._default.TreeMapY$A@@1) |ts#0| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| _module._default.TreeMapY$A@@1 (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) $ly@@7))))) (= (_module.__default.TreeMapY _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 ($LS $ly@@7) |t0#0@@2| |f#0@@4|) (let ((|ts#0@@0| (_module.Tree.trees |t0#0@@2|)))
(let ((|x#0@@1| (_module.Tree.val |t0#0@@2|)))
(|#_module.Tree.Branch| (Apply1 _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 $Heap@@4 |f#0@@4| |x#0@@1|) (_module.__default.MapY (Tclass._module.Tree _module._default.TreeMapY$A@@1) (Tclass._module.Tree _module._default.TreeMapY$B@@1) ($LS $LZ) |ts#0@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| (Tclass._module.Tree _module._default.TreeMapY$A@@1) (Tclass._module.Tree _module._default.TreeMapY$A@@1) |ts#0@@0| _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 |f#0@@4| _module._default.TreeMapY$A@@1 (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) $ly@@7)))))))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (_module.__default.TreeMapY _module._default.TreeMapY$A@@1 _module._default.TreeMapY$B@@1 ($LS $ly@@7) |t0#0@@2| |f#0@@4|) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((_module.Tree$A@@1 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Tree _module.Tree$A@@1))  (and ($IsBox |a#14#0#0@@0| _module.Tree$A@@1) ($Is DatatypeTypeType |a#14#1#0@@0| (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@1)))))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Tree _module.Tree$A@@1)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.ListData$_T0@@2 T@U) ($ly@@8 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@2 |xs#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.ListData$_T0@@2)))) (and (forall ((|x#0@@2| T@U) ) (!  (=> ($IsBox |x#0@@2| _module._default.ListData$_T0@@2) (=> (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@8 |xs#0@@4|) |x#0@@2|) (< (BoxRank |x#0@@2|) (DtRank |xs#0@@4|))))
 :qid |TreeMapSimpledfy.12:18|
 :skolemid |537|
 :pattern ( (|Set#IsMember| (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@8 |xs#0@@4|) |x#0@@2|))
)) ($Is SetType (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@8 |xs#0@@4|) (TSet _module._default.ListData$_T0@@2))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.__default.ListData _module._default.ListData$_T0@@2 $ly@@8 |xs#0@@4|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@0 T@U) ($ly@@9 T@U) (|t0#0@@3| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@0 |t0#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@3| (Tclass._module.Tree _module._default.TreeData$_T0@@0)))) (and (forall ((|t#0| T@U) ) (!  (=> ($IsBox |t#0| _module._default.TreeData$_T0@@0) (=> (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@9 |t0#0@@3|) |t#0|) (< (BoxRank |t#0|) (DtRank |t0#0@@3|))))
 :qid |TreeMapSimpledfy.20:18|
 :skolemid |552|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@9 |t0#0@@3|) |t#0|))
)) ($Is SetType (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@9 |t0#0@@3|) (TSet _module._default.TreeData$_T0@@0))))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@0 $ly@@9 |t0#0@@3|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@2) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@0 T@U) (_module._default.PreY$B@@0 T@U) ($Heap@@5 T@U) (|f#0@@5| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@5|) (Lit SetType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@0 _module._default.PreY$B@@0))) ($Is SetType |s#0@@0| (TSet _module._default.PreY$A@@0))))) (and (forall ((|x#2@@0| T@U) ) (!  (=> ($IsBox |x#2@@0| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2@@0|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |579|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@5 |f#0@@5| |x#2@@0|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2@@0|))
)) (= (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@5|) (Lit SetType |s#0@@0|)) (forall ((|x#2@@1| T@U) ) (!  (=> ($IsBox |x#2@@1| _module._default.PreY$A@@0) (=> (|Set#IsMember| (Lit SetType |s#0@@0|) |x#2@@1|) (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@5 (Lit HandleTypeType |f#0@@5|) |x#2@@1|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |578|
 :pattern ( (Requires1 _module._default.PreY$A@@0 _module._default.PreY$B@@0 $Heap@@5 |f#0@@5| |x#2@@1|))
 :pattern ( (|Set#IsMember| |s#0@@0| |x#2@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |580|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@0 _module._default.PreY$B@@0 (Lit HandleTypeType |f#0@@5|) (Lit SetType |s#0@@0|)) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@6) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@6) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@7) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@7) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@8) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@8) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@9))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@9) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@9) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
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
(assert (forall ((s T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@5) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@5))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@6| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@3) ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@10 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@10)  (or (|Set#IsMember| a@@8 o@@10) (|Set#IsMember| b@@5 o@@10)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@10))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0|) |$y#0|)) (exists ((|t#1| T@U) (|y#0| T@U) ) (!  (and (and (and ($Is DatatypeTypeType |t#1| |l#0@@0|) ($IsBox |y#0| |l#1@@0|)) (and (|Set#IsMember| |l#2@@0| ($Box DatatypeTypeType |t#1|)) (|Set#IsMember| (_module.__default.TreeData |l#3@@0| |l#4@@0| |t#1|) |y#0|))) (= |$y#0| |y#0|))
 :qid |TreeMapSimpledfy.23:13|
 :skolemid |556|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData |l#5@@0| |l#6@@0| |t#1|) |y#0|))
)))
 :qid |TreeMapSimpledfy.9:10|
 :skolemid |670|
 :pattern ( (MapType1Select BoxType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0|) |$y#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|$l#2#heap#0@@0| T@U) (|$l#2#t#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#8| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) |$l#2#heap#0@@0| |$l#2#t#0@@0|) ($Box DatatypeTypeType (_module.__default.TreeMapY |l#0@@1| |l#1@@1| |l#2@@1| ($Unbox DatatypeTypeType |$l#2#t#0@@0|) |l#3@@1|)))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#8| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) |$l#2#heap#0@@0| |$l#2#t#0@@0|))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#2#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#10| |l#0@@2|) |$l#2#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( (MapType1Select refType boolType (|lambda#10| |l#0@@2|) |$l#2#o#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@1 T@U) ($ly@@10 T@U) (|t0#0@@4| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@1 (Lit DatatypeTypeType |t0#0@@4|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@4| (Tclass._module.Tree _module._default.TreeData$_T0@@1)))) (and (let ((|ts#1@@1| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@4|))))
(forall ((|t#2| T@U) (|y#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |t#2| (Tclass._module.Tree _module._default.TreeData$_T0@@1)) ($IsBox |y#1| _module._default.TreeData$_T0@@1)) (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@1) |ts#1@@1|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@1) ($LS $LZ) |ts#1@@1|) ($Box DatatypeTypeType |t#2|)) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@1 |t#2|))))
 :qid |TreeMapSimpledfy.23:13|
 :skolemid |560|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@10) |t#2|) |y#1|))
))) (= (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@10) (Lit DatatypeTypeType |t0#0@@4|)) (let ((|ts#1@@2| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@4|))))
(let ((|x#1@@1| (_module.Tree.val (Lit DatatypeTypeType |t0#0@@4|))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#1@@1|) (|Set#FromBoogieMap| (|lambda#2| (Tclass._module.Tree _module._default.TreeData$_T0@@1) _module._default.TreeData$_T0@@1 (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@1) ($LS $LZ) |ts#1@@2|) _module._default.TreeData$_T0@@1 ($LS $ly@@10) _module._default.TreeData$_T0@@1 ($LS $ly@@10)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |561|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@1 ($LS $ly@@10) (Lit DatatypeTypeType |t0#0@@4|)))
))))
(assert (forall ((_module.List$A@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$A@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@1 T@U) (_module._default.MapY$B@@1 T@U) ($ly@@11 T@U) ($Heap@@6 T@U) (|xs#0@@5| T@U) (|f#0@@7| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@1 _module._default.MapY$B@@1 |xs#0@@5| |f#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.MapY$A@@1))) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@1 _module._default.MapY$B@@1))) (_module.__default.PreY _module._default.MapY$A@@1 _module._default.MapY$B@@1 |f#0@@7| (_module.__default.ListData _module._default.MapY$A@@1 ($LS $LZ) |xs#0@@5|))))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|xs#2@@0| (_module.List.tail |xs#0@@5|)))
(|_module.__default.MapY#canCall| _module._default.MapY$A@@1 _module._default.MapY$B@@1 |xs#2@@0| |f#0@@7|))) (= (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 ($LS $ly@@11) |xs#0@@5| |f#0@@7|) (ite (_module.List.Nil_q |xs#0@@5|) |#_module.List.Nil| (let ((|xs#1@@0| (_module.List.tail |xs#0@@5|)))
(let ((|x#0@@3| (_module.List.head |xs#0@@5|)))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A@@1 _module._default.MapY$B@@1 $Heap@@6 |f#0@@7| |x#0@@3|) (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 $ly@@11 |xs#1@@0| |f#0@@7|))))))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@1 _module._default.MapY$B@@1 ($LS $ly@@11) |xs#0@@5| |f#0@@7|) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |634|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |643|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |645|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0|)) |##_module.Tree.Branch|)
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |652|
 :pattern ( (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Tree.val (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |661|
 :pattern ( (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (_module.Tree.trees (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |663|
 :pattern ( (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (_module._default.ListData$_T0@@3 T@U) ($ly@@12 T@U) (|xs#0@@6| T@U) ) (!  (=> (and (or (|_module.__default.ListData#canCall| _module._default.ListData$_T0@@3 |xs#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.ListData$_T0@@3)) ($IsAlloc DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.ListData$_T0@@3) $Heap@@7)))) ($IsGoodHeap $Heap@@7)) ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@12 |xs#0@@6|) (TSet _module._default.ListData$_T0@@3) $Heap@@7))
 :qid |TreeMapSimpledfy.11:16|
 :skolemid |539|
 :pattern ( ($IsAlloc SetType (_module.__default.ListData _module._default.ListData$_T0@@3 $ly@@12 |xs#0@@6|) (TSet _module._default.ListData$_T0@@3) $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (_module._default.TreeData$_T0@@2 T@U) ($ly@@13 T@U) (|t0#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@2 |t0#0@@5|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t0#0@@5| (Tclass._module.Tree _module._default.TreeData$_T0@@2)) ($IsAlloc DatatypeTypeType |t0#0@@5| (Tclass._module.Tree _module._default.TreeData$_T0@@2) $Heap@@8)))) ($IsGoodHeap $Heap@@8)) ($IsAlloc SetType (_module.__default.TreeData _module._default.TreeData$_T0@@2 $ly@@13 |t0#0@@5|) (TSet _module._default.TreeData$_T0@@2) $Heap@@8))
 :qid |TreeMapSimpledfy.19:16|
 :skolemid |554|
 :pattern ( ($IsAlloc SetType (_module.__default.TreeData _module._default.TreeData$_T0@@2 $ly@@13 |t0#0@@5|) (TSet _module._default.TreeData$_T0@@2) $Heap@@8))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |644|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |646|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0|)))
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |662|
 :pattern ( (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (DtRank |a#19#1#0|) (DtRank (|#_module.Tree.Branch| |a#19#0#0| |a#19#1#0|)))
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |664|
 :pattern ( (|#_module.Tree.Branch| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (|f#0@@8| T@U) ) (! (= ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))  (and ($Is HandleTypeType |f#0@@8| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@4|) (|Set#Equal| (Reads1 |#$T0@@4| |#$R@@4| $OneHeap |f#0@@8| |x0#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((d@@7 T@U) (_module.List$A@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$A@@5) $h@@4))) ($IsAllocBox (_module.List.head d@@7) _module.List$A@@5 $h@@4))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAllocBox (_module.List.head d@@7) _module.List$A@@5 $h@@4))
)))
(assert (forall ((d@@8 T@U) (_module.Tree$A@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Tree.Branch_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Tree _module.Tree$A@@4) $h@@5))) ($IsAllocBox (_module.Tree.val d@@8) _module.Tree$A@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAllocBox (_module.Tree.val d@@8) _module.Tree$A@@4 $h@@5))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@2| $o@@1) |l#2@@2|)))) |l#3@@2|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |669|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@2 T@U) (_module._default.MapY$B@@2 T@U) ($ly@@14 T@U) (|xs#0@@7| T@U) (|f#0@@9| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@2 _module._default.MapY$B@@2 |xs#0@@7| |f#0@@9|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.MapY$A@@2)) ($Is HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@2 _module._default.MapY$B@@2))) (_module.__default.PreY _module._default.MapY$A@@2 _module._default.MapY$B@@2 |f#0@@9| (_module.__default.ListData _module._default.MapY$A@@2 ($LS $LZ) |xs#0@@7|))))) ($Is DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@2 _module._default.MapY$B@@2 $ly@@14 |xs#0@@7| |f#0@@9|) (Tclass._module.List _module._default.MapY$B@@2)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@2 _module._default.MapY$B@@2 $ly@@14 |xs#0@@7| |f#0@@9|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.TreeMapY$A@@2 T@U) (_module._default.TreeMapY$B@@2 T@U) ($ly@@15 T@U) (|t0#0@@6| T@U) (|f#0@@10| T@U) ) (!  (=> (or (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@2 _module._default.TreeMapY$B@@2 |t0#0@@6| |f#0@@10|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |t0#0@@6| (Tclass._module.Tree _module._default.TreeMapY$A@@2)) ($Is HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@2 _module._default.TreeMapY$B@@2))) (_module.__default.PreY _module._default.TreeMapY$A@@2 _module._default.TreeMapY$B@@2 |f#0@@10| (_module.__default.TreeData _module._default.TreeMapY$A@@2 ($LS $LZ) |t0#0@@6|))))) ($Is DatatypeTypeType (_module.__default.TreeMapY _module._default.TreeMapY$A@@2 _module._default.TreeMapY$B@@2 $ly@@15 |t0#0@@6| |f#0@@10|) (Tclass._module.Tree _module._default.TreeMapY$B@@2)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.TreeMapY _module._default.TreeMapY$A@@2 _module._default.TreeMapY$B@@2 $ly@@15 |t0#0@@6| |f#0@@10|))
))))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((_module.List$A@@6 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.List _module.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._module.List _module.List$A@@6))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@12 (Tclass._module.List _module.List$A@@6)))
)))
(assert (forall ((_module.Tree$A@@5 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._module.Tree _module.Tree$A@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass._module.Tree _module.Tree$A@@5))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@13 (Tclass._module.Tree _module.Tree$A@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.PreY$A@@1 T@U) (_module._default.PreY$B@@1 T@U) ($Heap@@9 T@U) (|f#0@@11| T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.PreY#canCall| _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@11| (Lit SetType |s#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@9) ($Is HandleTypeType |f#0@@11| (Tclass._System.___hPartialFunc1 _module._default.PreY$A@@1 _module._default.PreY$B@@1))) ($Is SetType |s#0@@1| (TSet _module._default.PreY$A@@1))))) (and (forall ((|x#1@@2| T@U) ) (!  (=> ($IsBox |x#1@@2| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1@@2|) true))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |576|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@9 |f#0@@11| |x#1@@2|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1@@2|))
)) (= (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@11| (Lit SetType |s#0@@1|)) (forall ((|x#1@@3| T@U) ) (!  (=> ($IsBox |x#1@@3| _module._default.PreY$A@@1) (=> (|Set#IsMember| (Lit SetType |s#0@@1|) |x#1@@3|) (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@9 |f#0@@11| |x#1@@3|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |575|
 :pattern ( (Requires1 _module._default.PreY$A@@1 _module._default.PreY$B@@1 $Heap@@9 |f#0@@11| |x#1@@3|))
 :pattern ( (|Set#IsMember| |s#0@@1| |x#1@@3|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |577|
 :pattern ( (_module.__default.PreY _module._default.PreY$A@@1 _module._default.PreY$B@@1 |f#0@@11| (Lit SetType |s#0@@1|)) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.TreeData$_T0@@3 T@U) ($ly@@16 T@U) (|t0#0@@7| T@U) ) (!  (=> (or (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@3 |t0#0@@7|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t0#0@@7| (Tclass._module.Tree _module._default.TreeData$_T0@@3)))) (and (let ((|ts#0@@1| (_module.Tree.trees |t0#0@@7|)))
(forall ((|t#1@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |t#1@@0| (Tclass._module.Tree _module._default.TreeData$_T0@@3)) ($IsBox |y#0@@0| _module._default.TreeData$_T0@@3)) (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeData$_T0@@3) |ts#0@@1|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@3) ($LS $LZ) |ts#0@@1|) ($Box DatatypeTypeType |t#1@@0|)) (|_module.__default.TreeData#canCall| _module._default.TreeData$_T0@@3 |t#1@@0|))))
 :qid |TreeMapSimpledfy.23:13|
 :skolemid |557|
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeData$_T0@@3 $ly@@16 |t#1@@0|) |y#0@@0|))
))) (= (_module.__default.TreeData _module._default.TreeData$_T0@@3 ($LS $ly@@16) |t0#0@@7|) (let ((|ts#0@@2| (_module.Tree.trees |t0#0@@7|)))
(let ((|x#0@@4| (_module.Tree.val |t0#0@@7|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#0@@4|) (|Set#FromBoogieMap| (|lambda#2| (Tclass._module.Tree _module._default.TreeData$_T0@@3) _module._default.TreeData$_T0@@3 (_module.__default.ListData (Tclass._module.Tree _module._default.TreeData$_T0@@3) ($LS $LZ) |ts#0@@2|) _module._default.TreeData$_T0@@3 $ly@@16 _module._default.TreeData$_T0@@3 $ly@@16))))))))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.__default.TreeData _module._default.TreeData$_T0@@3 ($LS $ly@@16) |t0#0@@7|))
))))
(assert (forall ((d@@10 T@U) (_module.List$A@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$A@@7) $h@@6))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$A@@7) $h@@6))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$A@@7) $h@@6))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@11 T@U) ) (! (= (|Set#IsMember| a@@13 o@@11) (|Set#IsMember| b@@10 o@@11))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@11))
 :pattern ( (|Set#IsMember| b@@10 o@@11))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |TreeMapSimpledfy.7:31|
 :skolemid |642|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (|#_module.Tree.Branch| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)) (Lit DatatypeTypeType (|#_module.Tree.Branch| |a#15#0#0| |a#15#1#0|)))
 :qid |TreeMapSimpledfy.9:27|
 :skolemid |660|
 :pattern ( (|#_module.Tree.Branch| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)))
)))
(assert (forall ((d@@11 T@U) (_module.Tree$A@@6 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Tree.Branch_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.Tree _module.Tree$A@@6) $h@@7))) ($IsAlloc DatatypeTypeType (_module.Tree.trees d@@11) (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@6)) $h@@7))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.trees d@@11) (Tclass._module.List (Tclass._module.Tree _module.Tree$A@@6)) $h@@7))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((_module._default.MapY$A@@3 T@U) (_module._default.MapY$B@@3 T@U) ($ly@@17 T@U) (|xs#0@@8| T@U) (|f#0@@12| T@U) ) (! (= (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 ($LS $ly@@17) |xs#0@@8| |f#0@@12|) (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 $ly@@17 |xs#0@@8| |f#0@@12|))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@3 _module._default.MapY$B@@3 ($LS $ly@@17) |xs#0@@8| |f#0@@12|))
)))
(assert (forall ((_module._default.TreeMapY$A@@3 T@U) (_module._default.TreeMapY$B@@3 T@U) ($ly@@18 T@U) (|t0#0@@8| T@U) (|f#0@@13| T@U) ) (! (= (_module.__default.TreeMapY _module._default.TreeMapY$A@@3 _module._default.TreeMapY$B@@3 ($LS $ly@@18) |t0#0@@8| |f#0@@13|) (_module.__default.TreeMapY _module._default.TreeMapY$A@@3 _module._default.TreeMapY$B@@3 $ly@@18 |t0#0@@8| |f#0@@13|))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.__default.TreeMapY _module._default.TreeMapY$A@@3 _module._default.TreeMapY$B@@3 ($LS $ly@@18) |t0#0@@8| |f#0@@13|))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@3| T@U) (|l#2@@3| T@U) (|l#3@@3| T@U) (|l#4@@1| T@U) (|l#5@@1| T@U) (|l#6@@1| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|$l#2#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#12| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@1| |l#5@@1| |l#6@@1| |l#7| |l#8| |l#9| |l#10|) |$l#2#ly#0|) (Handle1 (|lambda#8| |l#0@@4| |l#1@@3| |$l#2#ly#0| |l#2@@3|) (|lambda#9| |l#3@@3| (_module.__default.ListData |l#4@@1| |$l#2#ly#0| |l#5@@1|) |l#6@@1| |l#7| |l#8| |l#9| |$l#2#ly#0|) |l#10|))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#12| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@1| |l#5@@1| |l#6@@1| |l#7| |l#8| |l#9| |l#10|) |$l#2#ly#0|))
)))
(assert (forall ((_module.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@8)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$A@@8 $h@@8) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$A@@8) $h@@8))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.TreeMapY$A@@4 T@U) (_module._default.TreeMapY$B@@4 T@U) ($ly@@19 T@U) ($Heap@@10 T@U) (|t0#0@@9| T@U) (|f#0@@14| T@U) ) (!  (=> (or (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit DatatypeTypeType |t0#0@@9|) (Lit HandleTypeType |f#0@@14|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@10) ($Is DatatypeTypeType |t0#0@@9| (Tclass._module.Tree _module._default.TreeMapY$A@@4))) ($Is HandleTypeType |f#0@@14| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4))) (U_2_bool (Lit boolType (bool_2_U (_module.__default.PreY _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) (Lit SetType (_module.__default.TreeData _module._default.TreeMapY$A@@4 ($LS $LZ) (Lit DatatypeTypeType |t0#0@@9|)))))))))) (and (let ((|ts#2| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@9|))))
 (and (forall ((|$l#7#t#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#7#t#0| (Tclass._module.Tree _module._default.TreeMapY$A@@4)) (and (and (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@4) |ts#2|) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@4) ($LS $LZ) |ts#2|) ($Box DatatypeTypeType |$l#7#t#0|)) (and (|_module.__default.TreeData#canCall| _module._default.TreeMapY$A@@4 |$l#7#t#0|) (|_module.__default.PreY#canCall| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) (_module.__default.TreeData _module._default.TreeMapY$A@@4 ($LS $LZ) |$l#7#t#0|))))) (=> (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@4) ($LS $LZ) |ts#2|) ($Box DatatypeTypeType |$l#7#t#0|)) (_module.__default.PreY _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) (_module.__default.TreeData _module._default.TreeMapY$A@@4 ($LS $LZ) |$l#7#t#0|))) (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 |$l#7#t#0| (Lit HandleTypeType |f#0@@14|)))))
 :qid |unknown.0:0|
 :skolemid |608|
)) (|_module.__default.MapY#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@4) (Tclass._module.Tree _module._default.TreeMapY$B@@4) |ts#2| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) (Tclass._module.Tree _module._default.TreeMapY$A@@4) (Tclass._module.Tree _module._default.TreeMapY$A@@4) |ts#2| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) _module._default.TreeMapY$A@@4 (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) ($LS $ly@@19)))))) (= (_module.__default.TreeMapY _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 ($LS $ly@@19) (Lit DatatypeTypeType |t0#0@@9|) (Lit HandleTypeType |f#0@@14|)) (let ((|ts#2@@0| (_module.Tree.trees (Lit DatatypeTypeType |t0#0@@9|))))
(let ((|x#2@@2| (_module.Tree.val (Lit DatatypeTypeType |t0#0@@9|))))
(|#_module.Tree.Branch| (Apply1 _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 $Heap@@10 (Lit HandleTypeType |f#0@@14|) |x#2@@2|) (_module.__default.MapY (Tclass._module.Tree _module._default.TreeMapY$A@@4) (Tclass._module.Tree _module._default.TreeMapY$B@@4) ($LS $LZ) |ts#2@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) (Tclass._module.Tree _module._default.TreeMapY$A@@4) (Tclass._module.Tree _module._default.TreeMapY$A@@4) |ts#2@@0| _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 (Lit HandleTypeType |f#0@@14|) _module._default.TreeMapY$A@@4 (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) ($LS $ly@@19))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |609|
 :pattern ( (_module.__default.TreeMapY _module._default.TreeMapY$A@@4 _module._default.TreeMapY$B@@4 ($LS $ly@@19) (Lit DatatypeTypeType |t0#0@@9|) (Lit HandleTypeType |f#0@@14|)) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MapY$A@@4 T@U) (_module._default.MapY$B@@4 T@U) ($ly@@20 T@U) ($Heap@@11 T@U) (|xs#0@@9| T@U) (|f#0@@15| T@U) ) (!  (=> (or (|_module.__default.MapY#canCall| _module._default.MapY$A@@4 _module._default.MapY$B@@4 (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@15|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@11) ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.MapY$A@@4))) ($Is HandleTypeType |f#0@@15| (Tclass._System.___hPartialFunc1 _module._default.MapY$A@@4 _module._default.MapY$B@@4))) (U_2_bool (Lit boolType (bool_2_U (_module.__default.PreY _module._default.MapY$A@@4 _module._default.MapY$B@@4 (Lit HandleTypeType |f#0@@15|) (Lit SetType (_module.__default.ListData _module._default.MapY$A@@4 ($LS $LZ) (Lit DatatypeTypeType |xs#0@@9|)))))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)))))) (let ((|xs#6| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(|_module.__default.MapY#canCall| _module._default.MapY$A@@4 _module._default.MapY$B@@4 |xs#6| (Lit HandleTypeType |f#0@@15|)))) (= (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@20) (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@15|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)) |#_module.List.Nil| (let ((|xs#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(let ((|x#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@9|)))))
(|#_module.List.Cons| (Apply1 _module._default.MapY$A@@4 _module._default.MapY$B@@4 $Heap@@11 (Lit HandleTypeType |f#0@@15|) |x#4|) (Lit DatatypeTypeType (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@20) |xs#5| (Lit HandleTypeType |f#0@@15|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |592|
 :pattern ( (_module.__default.MapY _module._default.MapY$A@@4 _module._default.MapY$B@@4 ($LS $ly@@20) (Lit DatatypeTypeType |xs#0@@9|) (Lit HandleTypeType |f#0@@15|)) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((|l#0@@5| T@U) (|$l#2#heap#0@@1| T@U) (|$l#2#t#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#11| |l#0@@5|) |$l#2#heap#0@@1| |$l#2#t#0@@1|) |l#0@@5|)
 :qid |TreeMapSimpledfy.46:25|
 :skolemid |674|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#11| |l#0@@5|) |$l#2#heap#0@@1| |$l#2#t#0@@1|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.TreeMapY$A@@5 () T@U)
(declare-fun |ts#Z#0@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun _module._default.TreeMapY$B@@5 () T@U)
(declare-fun |f#0@@16| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |t0#0@@10| () T@U)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun |##s#1@0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun $Heap@@12 () T@U)
(declare-fun |##f#1@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.TreeMapY)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon9_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#0@0|)) (_module.__default.PreY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|)))) (= (ControlFlow 0 9) 4)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (and (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#0@0|)) (_module.__default.PreY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|))) (and ($IsAlloc DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5) |$lambdaHeap#0@0|) ($IsAlloc HandleTypeType |f#0@@16| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5) |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.__default.PreY#canCall| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|)) (or (_module.__default.PreY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|)) (forall ((|x#3@@0| T@U) ) (!  (=> ($IsBox |x#3@@0| _module._default.TreeMapY$A@@5) (=> (|Set#IsMember| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS ($LS $LZ)) |t#0@0|) |x#3@@0|) (Requires1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |$lambdaHeap#0@0| |f#0@@16| |x#3@@0|)))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |615|
 :pattern ( (Requires1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |$lambdaHeap#0@0| |f#0@@16| |x#3@@0|))
 :pattern ( (|Set#IsMember| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS ($LS $LZ)) |t#0@0|) |x#3@@0|))
))))) (=> (_module.__default.PreY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< (DtRank |t#0@0|) (DtRank |t0#0@@10|))) (=> (< (DtRank |t#0@0|) (DtRank |t0#0@@10|)) (=> (and (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |t#0@0| |f#0@@16|) (_module.Tree.Branch_q (_module.__default.TreeMapY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 ($LS $LZ) |t#0@0| |f#0@@16|))) (=> (and (and (= |lambdaResult#0| (_module.__default.TreeMapY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 ($LS $LZ) |t#0@0| |f#0@@16|)) (|_module.__default.TreeMapY#canCall| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |t#0@0| |f#0@@16|)) (and ($Is DatatypeTypeType |lambdaResult#0| (Tclass._module.Tree _module._default.TreeMapY$B@@5)) (= (ControlFlow 0 6) 4))) anon9_correct)))))))))
(let ((anon15_Else_correct  (=> (not (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#0@0|))) (and (=> (= (ControlFlow 0 11) 6) anon16_Then_correct) (=> (= (ControlFlow 0 11) 9) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|) ($Box DatatypeTypeType |t#0@0|)) (=> (and ($IsAlloc HandleTypeType |f#0@@16| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5) |$lambdaHeap#0@0|) ($IsAlloc DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5) |$lambdaHeap#0@0|)) (=> (and (and (|_module.__default.TreeData#canCall| _module._default.TreeMapY$A@@5 |t#0@0|) (= |##s#1@0| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|))) (and ($IsAlloc SetType |##s#1@0| (TSet _module._default.TreeMapY$A@@5) |$lambdaHeap#0@0|) (|_module.__default.PreY#canCall| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t#0@0|)))) (and (=> (= (ControlFlow 0 10) 6) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))))
(let ((anon14_Then_correct  (=> (and (and (and ($Is DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5)) ($IsAlloc DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5) |$lambdaHeap#0@0|)) (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false))) (and ($IsAlloc DatatypeTypeType |ts#Z#0@0| (Tclass._module.List (Tclass._module.Tree _module._default.TreeMapY$A@@5)) |$lambdaHeap#0@0|) (|_module.__default.ListData#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@5) |ts#Z#0@0|))) (and (=> (= (ControlFlow 0 12) 10) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5)) ($IsAlloc DatatypeTypeType |t#0@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5) |$lambdaHeap#0@0|))) (= (ControlFlow 0 5) 4)) anon9_correct)))
(let ((anon13_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@12 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@12 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 13) 12) anon14_Then_correct) (=> (= (ControlFlow 0 13) 5) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (= |##f#1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#12| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$A@@5) |ts#Z#0@0| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| _module._default.TreeMapY$A@@5 (|lambda#11| (SetRef_to_SetBox (|lambda#10| false)))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1@0| (Tclass._System.___hPartialFunc1 (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$B@@5)) $Heap@@12) (= (ControlFlow 0 3) (- 0 2))) (|_module.__default.PreY#canCall| (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$B@@5) |##f#1@0| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|))) (or (_module.__default.PreY (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$B@@5) |##f#1@0| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS $LZ) |ts#Z#0@0|)) (forall ((|x#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |x#4@@0| (Tclass._module.Tree _module._default.TreeMapY$A@@5)) (=> (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS ($LS $LZ)) |ts#Z#0@0|) ($Box DatatypeTypeType |x#4@@0|)) (Requires1 (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$B@@5) $Heap@@12 |##f#1@0| ($Box DatatypeTypeType |x#4@@0|))))
 :qid |TreeMapSimpledfy.29:10|
 :skolemid |619|
 :pattern ( (Requires1 (Tclass._module.Tree _module._default.TreeMapY$A@@5) (Tclass._module.Tree _module._default.TreeMapY$B@@5) $Heap@@12 |##f#1@0| ($Box DatatypeTypeType |x#4@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.ListData (Tclass._module.Tree _module._default.TreeMapY$A@@5) ($LS ($LS $LZ)) |ts#Z#0@0|) ($Box DatatypeTypeType |x#4@@0|)))
)))))))
(let ((anon12_Else_correct  (=> (and (and (= |let#0#0#0| |t0#0@@10|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Tree _module._default.TreeMapY$A@@5))) (and (_module.Tree.Branch_q |let#0#0#0|) (= (|#_module.Tree.Branch| |x#Z#0@0| |ts#Z#0@0|) |let#0#0#0|))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (Requires1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 $Heap@@12 |f#0@@16| |x#Z#0@0|)) (=> (Requires1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 $Heap@@12 |f#0@@16| |x#Z#0@0|) (=> ($IsAlloc DatatypeTypeType |ts#Z#0@0| (Tclass._module.List (Tclass._module.Tree _module._default.TreeMapY$A@@5)) $Heap@@12) (and (=> (= (ControlFlow 0 14) 13) anon13_Then_correct) (=> (= (ControlFlow 0 14) 3) anon13_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@12 alloc false)) ($IsAlloc HandleTypeType |f#0@@16| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5) $Heap@@12)) (and ($IsAlloc DatatypeTypeType |t0#0@@10| (Tclass._module.Tree _module._default.TreeMapY$A@@5) $Heap@@12) (|_module.__default.TreeData#canCall| _module._default.TreeMapY$A@@5 |t0#0@@10|))) (and (and (= |##s#0@0| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t0#0@@10|)) ($IsAlloc SetType |##s#0@0| (TSet _module._default.TreeMapY$A@@5) $Heap@@12)) (and (|_module.__default.PreY#canCall| _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t0#0@@10|)) (_module.__default.PreY _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5 |f#0@@16| (_module.__default.TreeData _module._default.TreeMapY$A@@5 ($LS $LZ) |t0#0@@10|))))) (and (=> (= (ControlFlow 0 16) 1) anon12_Then_correct) (=> (= (ControlFlow 0 16) 14) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@12) ($IsHeapAnchor $Heap@@12)) (=> (and (and ($Is DatatypeTypeType |t0#0@@10| (Tclass._module.Tree _module._default.TreeMapY$A@@5)) ($Is HandleTypeType |f#0@@16| (Tclass._System.___hPartialFunc1 _module._default.TreeMapY$A@@5 _module._default.TreeMapY$B@@5))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
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
