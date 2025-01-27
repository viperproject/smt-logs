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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Path () T@U)
(declare-fun Tagclass._module.Expression () T@U)
(declare-fun Tagclass._module.Triple () T@U)
(declare-fun Tagclass._module.StateC () T@U)
(declare-fun |##_module.StateC.S| () T@U)
(declare-fun |##_module.Triple.Trio| () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Triple () T@U)
(declare-fun tytagFamily$StateC () T@U)
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
(declare-fun _module.__default.CombineC (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.CombineC#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.StateC () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$let#3_stC| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |_module.__default.UnionC#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.UnionC (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |#_module.StateC.S| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.State () T@U)
(declare-fun Tclass._module.Cache () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun Tclass._module.Triple (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Triple_0 (T@U) T@U)
(declare-fun Tclass._module.Triple_1 (T@U) T@U)
(declare-fun Tclass._module.Triple_2 (T@U) T@U)
(declare-fun |#_module.Triple.Trio| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Triple.fst (T@U) T@U)
(declare-fun _module.Triple.snd (T@U) T@U)
(declare-fun _module.Triple.trd (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.Artifact () T@U)
(declare-fun Tclass._module.HashValue () T@U)
(declare-fun _module.__default.GetSt (T@U T@U) T@U)
(declare-fun |_module.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Path () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.StateC.S_q (T@U) Bool)
(declare-fun |_module.Triple#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Triple.Trio_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Expression () T@U)
(declare-fun _module.__default.DomSt (T@U) T@U)
(declare-fun _module.StateC.st (T@U) T@U)
(declare-fun _module.__default.DomC (T@U) T@U)
(declare-fun _module.StateC.c (T@U) T@U)
(declare-fun _module.__default.GetC (T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |_module.__default.GetC#canCall| (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun BoxType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |_module.__default.DomC#canCall| (T@U) Bool)
(declare-fun |_module.__default.DomSt#canCall| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass._module.Path Tagclass._module.Expression Tagclass._module.Triple Tagclass._module.StateC |##_module.StateC.S| |##_module.Triple.Trio| tytagFamily$Path tytagFamily$Expression tytagFamily$Triple tytagFamily$StateC)
)
(assert  (and (= (Ctor SetType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|stsC#0| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| |stsC#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |stsC#0| (TSet Tclass._module.StateC))) (not (|Set#Equal| |stsC#0| |Set#Empty|))))) (and (and (|$let#3$canCall| |stsC#0|) (=> (not (|Set#Equal| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))) (and (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))) (|_module.__default.UnionC#canCall| (|$let#3_stC| |stsC#0|) (_module.__default.CombineC $ly (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))))))) (= (_module.__default.CombineC ($LS $ly) |stsC#0|) (let ((|stC#6| (|$let#3_stC| |stsC#0|)))
(ite (|Set#Equal| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#6|))) |stC#6| (_module.__default.UnionC |stC#6| (_module.__default.CombineC $ly (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#6|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |823|
 :pattern ( (_module.__default.CombineC ($LS $ly) |stsC#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Tag TChar) TagChar))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.StateC.S| |a#2#0#0| |a#2#1#0|) Tclass._module.StateC)  (and ($IsBox |a#2#0#0| Tclass._module.State) ($IsBox |a#2#1#0| Tclass._module.Cache)))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1273|
 :pattern ( ($Is DatatypeTypeType (|#_module.StateC.S| |a#2#0#0| |a#2#1#0|) Tclass._module.StateC))
)))
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
(assert (forall ((_module.Triple$A T@U) (_module.Triple$B T@U) (_module.Triple$C T@U) ) (! (= (Tclass._module.Triple_0 (Tclass._module.Triple _module.Triple$A _module.Triple$B _module.Triple$C)) _module.Triple$A)
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( (Tclass._module.Triple _module.Triple$A _module.Triple$B _module.Triple$C))
)))
(assert (forall ((_module.Triple$A@@0 T@U) (_module.Triple$B@@0 T@U) (_module.Triple$C@@0 T@U) ) (! (= (Tclass._module.Triple_1 (Tclass._module.Triple _module.Triple$A@@0 _module.Triple$B@@0 _module.Triple$C@@0)) _module.Triple$B@@0)
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@0 _module.Triple$B@@0 _module.Triple$C@@0))
)))
(assert (forall ((_module.Triple$A@@1 T@U) (_module.Triple$B@@1 T@U) (_module.Triple$C@@1 T@U) ) (! (= (Tclass._module.Triple_2 (Tclass._module.Triple _module.Triple$A@@1 _module.Triple$B@@1 _module.Triple$C@@1)) _module.Triple$C@@1)
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@1 _module.Triple$B@@1 _module.Triple$C@@1))
)))
(assert (forall ((|a#169#0#0| T@U) (|a#169#1#0| T@U) (|a#169#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Triple.Trio| |a#169#0#0| |a#169#1#0| |a#169#2#0|)) |##_module.Triple.Trio|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1557|
 :pattern ( (|#_module.Triple.Trio| |a#169#0#0| |a#169#1#0| |a#169#2#0|))
)))
(assert (forall ((|a#173#0#0| T@U) (|a#173#1#0| T@U) (|a#173#2#0| T@U) ) (! (= (_module.Triple.fst (|#_module.Triple.Trio| |a#173#0#0| |a#173#1#0| |a#173#2#0|)) |a#173#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1570|
 :pattern ( (|#_module.Triple.Trio| |a#173#0#0| |a#173#1#0| |a#173#2#0|))
)))
(assert (forall ((|a#175#0#0| T@U) (|a#175#1#0| T@U) (|a#175#2#0| T@U) ) (! (= (_module.Triple.snd (|#_module.Triple.Trio| |a#175#0#0| |a#175#1#0| |a#175#2#0|)) |a#175#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1572|
 :pattern ( (|#_module.Triple.Trio| |a#175#0#0| |a#175#1#0| |a#175#2#0|))
)))
(assert (forall ((|a#177#0#0| T@U) (|a#177#1#0| T@U) (|a#177#2#0| T@U) ) (! (= (_module.Triple.trd (|#_module.Triple.Trio| |a#177#0#0| |a#177#1#0| |a#177#2#0|)) |a#177#2#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1574|
 :pattern ( (|#_module.Triple.Trio| |a#177#0#0| |a#177#1#0| |a#177#2#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert ($AlwaysAllocated Tclass._module.State))
(assert ($AlwaysAllocated Tclass._module.Artifact))
(assert ($AlwaysAllocated Tclass._module.Cache))
(assert ($AlwaysAllocated Tclass._module.HashValue))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0| T@U) ) (!  (=> (or (|_module.__default.GetSt#canCall| |p#0| |st#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0| Tclass._module.Path) ($IsBox |st#0| Tclass._module.State)))) ($IsBox (_module.__default.GetSt |p#0| |st#0|) Tclass._module.Artifact))
 :qid |CloudMakeConsistentBuildslegacydfy.7:22|
 :skolemid |704|
 :pattern ( (_module.__default.GetSt |p#0| |st#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.Triple$A@@2 T@U) (_module.Triple$B@@2 T@U) (_module.Triple$C@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2)) Tagclass._module.Triple) (= (TagFamily (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2)) tytagFamily$Triple))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2))
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
(assert (forall ((_module.Triple$A@@3 T@U) (_module.Triple$B@@3 T@U) (_module.Triple$C@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)))
)))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.StateC) (_module.StateC.S_q d))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( (_module.StateC.S_q d) ($Is DatatypeTypeType d Tclass._module.StateC))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.Triple#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1579|
 :pattern ( (|_module.Triple#Equal| a@@7 b@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.StateC.S_q d@@0) (= (DatatypeCtorId d@@0) |##_module.StateC.S|))
 :qid |unknown.0:0|
 :skolemid |1270|
 :pattern ( (_module.StateC.S_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Triple.Trio_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Triple.Trio|))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( (_module.Triple.Trio_q d@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Triple.Trio_q d@@2) (exists ((|a#170#0#0| T@U) (|a#170#1#0| T@U) (|a#170#2#0| T@U) ) (! (= d@@2 (|#_module.Triple.Trio| |a#170#0#0| |a#170#1#0| |a#170#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1559|
)))
 :qid |unknown.0:0|
 :skolemid |1560|
 :pattern ( (_module.Triple.Trio_q d@@2))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.StateC.S_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_module.StateC.S| |a#1#0#0| |a#1#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1271|
)))
 :qid |unknown.0:0|
 :skolemid |1272|
 :pattern ( (_module.StateC.S_q d@@3))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((_module.Triple$A@@4 T@U) (_module.Triple$B@@4 T@U) (_module.Triple$C@@4 T@U) (|a#171#0#0| T@U) (|a#171#1#0| T@U) (|a#171#2#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h)  (and (and ($IsAllocBox |a#171#0#0| _module.Triple$A@@4 $h) ($IsAllocBox |a#171#1#0| _module.Triple$B@@4 $h)) ($IsAllocBox |a#171#2#0| _module.Triple$C@@4 $h))))
 :qid |unknown.0:0|
 :skolemid |1562|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((stsC T@U) ) (!  (=> (|$let#3$canCall| stsC) (and ($Is DatatypeTypeType (|$let#3_stC| stsC) Tclass._module.StateC) (|Set#IsMember| stsC ($Box DatatypeTypeType (|$let#3_stC| stsC)))))
 :qid |CloudMakeConsistentBuildslegacydfy.133:3|
 :skolemid |822|
 :pattern ( (|$let#3_stC| stsC))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Path)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($IsBox bx@@1 Tclass._module.Path))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Expression)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($IsBox bx@@2 Tclass._module.Expression))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.StateC) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.StateC)))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($IsBox bx@@3 Tclass._module.StateC))
)))
(assert (forall ((_module.Triple$A@@5 T@U) (_module.Triple$B@@5 T@U) (_module.Triple$C@@5 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)) (_module.Triple.Trio_q d@@4))
 :qid |unknown.0:0|
 :skolemid |1577|
 :pattern ( (_module.Triple.Trio_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall ((_module.Triple$A@@6 T@U) (_module.Triple$B@@6 T@U) (_module.Triple$C@@6 T@U) (|a#171#0#0@@0| T@U) (|a#171#1#0@@0| T@U) (|a#171#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6))  (and (and ($IsBox |a#171#0#0@@0| _module.Triple$A@@6) ($IsBox |a#171#1#0@@0| _module.Triple$B@@6)) ($IsBox |a#171#2#0@@0| _module.Triple$C@@6)))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|stsC#0@@0| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| (Lit SetType |stsC#0@@0|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |stsC#0@@0| (TSet Tclass._module.StateC))) (not (|Set#Equal| |stsC#0@@0| |Set#Empty|))))) (and (and (|$let#3$canCall| (Lit SetType |stsC#0@@0|)) (=> (not (|Set#Equal| |stsC#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@0|)))))) (and (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@0|)))))) (|_module.__default.UnionC#canCall| (|$let#3_stC| (Lit SetType |stsC#0@@0|)) (_module.__default.CombineC ($LS $ly@@0) (|Set#Difference| |stsC#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@0|)))))))))) (= (_module.__default.CombineC ($LS $ly@@0) (Lit SetType |stsC#0@@0|)) (let ((|stC#7| (|$let#3_stC| (Lit SetType |stsC#0@@0|))))
(ite (|Set#Equal| |stsC#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#7|))) |stC#7| (_module.__default.UnionC |stC#7| (_module.__default.CombineC ($LS $ly@@0) (|Set#Difference| |stsC#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#7|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :weight 3
 :skolemid |824|
 :pattern ( (_module.__default.CombineC ($LS $ly@@0) (Lit SetType |stsC#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stC#0| T@U) (|stC'#0| T@U) ) (!  (=> (or (|_module.__default.UnionC#canCall| |stC#0| |stC'#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |stC#0| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#0| Tclass._module.StateC)))) (and (let ((|result#0| (_module.__default.UnionC |stC#0| |stC'#0|)))
 (and (and (and (|Set#Equal| (_module.__default.DomSt (_module.StateC.st |result#0|)) (|Set#Union| (_module.__default.DomSt (_module.StateC.st |stC#0|)) (_module.__default.DomSt (_module.StateC.st |stC'#0|)))) (forall ((|p#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@0| Tclass._module.Path) (and (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@0|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0|)) ($Box DatatypeTypeType |p#0@@0|)) (= (_module.__default.GetSt |p#0@@0| (_module.StateC.st |result#0|)) (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC#0|))))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@0|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0@@0|)) (= (_module.__default.GetSt |p#0@@0| (_module.StateC.st |result#0|)) (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC'#0|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.103:13|
 :skolemid |781|
 :pattern ( (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC'#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0@@0|)))
 :pattern ( (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC#0|)))
 :pattern ( (_module.__default.GetSt |p#0@@0| (_module.StateC.st |result#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0|)) ($Box DatatypeTypeType |p#0@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@0|)))
))) (|Set#Equal| (_module.__default.DomC (_module.StateC.c |result#0|)) (|Set#Union| (_module.__default.DomC (_module.StateC.c |stC#0|)) (_module.__default.DomC (_module.StateC.c |stC'#0|))))) (forall ((|h#0| T@U) ) (!  (=> ($IsBox |h#0| Tclass._module.HashValue) (and (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0|) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0|)) |h#0|) (|_module.Triple#Equal| (_module.__default.GetC |h#0| (_module.StateC.c |result#0|)) (_module.__default.GetC |h#0| (_module.StateC.c |stC#0|))))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0|) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|) (|_module.Triple#Equal| (_module.__default.GetC |h#0| (_module.StateC.c |result#0|)) (_module.__default.GetC |h#0| (_module.StateC.c |stC'#0|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.107:13|
 :skolemid |782|
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |stC'#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|))
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |stC#0|)))
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |result#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0|)) |h#0|))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0|))
)))) ($Is DatatypeTypeType (_module.__default.UnionC |stC#0| |stC'#0|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.99:23|
 :skolemid |783|
 :pattern ( (_module.__default.UnionC |stC#0| |stC'#0|))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TChar) (and (= ($Box charType ($Unbox charType bx@@4)) bx@@4) ($Is charType ($Unbox charType bx@@4) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@4 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.StateC.S| |a#0#0#0| |a#0#1#0|)) |##_module.StateC.S|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1269|
 :pattern ( (|#_module.StateC.S| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.StateC.st (|#_module.StateC.S| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1277|
 :pattern ( (|#_module.StateC.S| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (_module.StateC.c (|#_module.StateC.S| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1278|
 :pattern ( (|#_module.StateC.S| |a#5#0#0| |a#5#1#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|h#0@@0| T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.GetC#canCall| |h#0@@0| |c#0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |h#0@@0| Tclass._module.HashValue) ($IsBox |c#0| Tclass._module.Cache)))) ($Is DatatypeTypeType (_module.__default.GetC |h#0@@0| |c#0|) (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar))))
 :qid |CloudMakeConsistentBuildslegacydfy.37:21|
 :skolemid |729|
 :pattern ( (_module.__default.GetC |h#0@@0| |c#0|))
))))
(assert (= (Ctor SeqType) 6))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@1 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@2))
)))
(assert (= (Ctor BoxType) 7))
(assert (forall ((|a#172#0#0| T@U) (|a#172#1#0| T@U) (|a#172#2#0| T@U) ) (! (= (|#_module.Triple.Trio| (Lit BoxType |a#172#0#0|) (Lit BoxType |a#172#1#0|) (Lit BoxType |a#172#2#0|)) (Lit DatatypeTypeType (|#_module.Triple.Trio| |a#172#0#0| |a#172#1#0| |a#172#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1569|
 :pattern ( (|#_module.Triple.Trio| (Lit BoxType |a#172#0#0|) (Lit BoxType |a#172#1#0|) (Lit BoxType |a#172#2#0|)))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#174#0#0| T@U) (|a#174#1#0| T@U) (|a#174#2#0| T@U) ) (! (< (BoxRank |a#174#0#0|) (DtRank (|#_module.Triple.Trio| |a#174#0#0| |a#174#1#0| |a#174#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1571|
 :pattern ( (|#_module.Triple.Trio| |a#174#0#0| |a#174#1#0| |a#174#2#0|))
)))
(assert (forall ((|a#176#0#0| T@U) (|a#176#1#0| T@U) (|a#176#2#0| T@U) ) (! (< (BoxRank |a#176#1#0|) (DtRank (|#_module.Triple.Trio| |a#176#0#0| |a#176#1#0| |a#176#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1573|
 :pattern ( (|#_module.Triple.Trio| |a#176#0#0| |a#176#1#0| |a#176#2#0|))
)))
(assert (forall ((|a#178#0#0| T@U) (|a#178#1#0| T@U) (|a#178#2#0| T@U) ) (! (< (BoxRank |a#178#2#0|) (DtRank (|#_module.Triple.Trio| |a#178#0#0| |a#178#1#0| |a#178#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1575|
 :pattern ( (|#_module.Triple.Trio| |a#178#0#0| |a#178#1#0| |a#178#2#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@0| T@U) ) (!  (=> (or (|_module.__default.DomC#canCall| |c#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |c#0@@0| Tclass._module.Cache))) ($Is SetType (_module.__default.DomC |c#0@@0|) (TSet Tclass._module.HashValue)))
 :qid |CloudMakeConsistentBuildslegacydfy.97:21|
 :skolemid |779|
 :pattern ( (_module.__default.DomC |c#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@0| T@U) ) (!  (=> (or (|_module.__default.DomSt#canCall| |st#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@0| Tclass._module.State))) ($Is SetType (_module.__default.DomSt |st#0@@0|) (TSet Tclass._module.Path)))
 :qid |CloudMakeConsistentBuildslegacydfy.10:22|
 :skolemid |708|
 :pattern ( (_module.__default.DomSt |st#0@@0|))
))))
(assert (forall (($ly@@1 T@U) (|stsC#0@@1| T@U) ) (! (= (_module.__default.CombineC ($LS $ly@@1) |stsC#0@@1|) (_module.__default.CombineC $ly@@1 |stsC#0@@1|))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |810|
 :pattern ( (_module.__default.CombineC ($LS $ly@@1) |stsC#0@@1|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1580|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@5)))
)))
(assert (forall ((bx@@7 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@6)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (|stsC#0@@2| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| |stsC#0@@2|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |stsC#0@@2| (TSet Tclass._module.StateC)) (not (|Set#Equal| |stsC#0@@2| |Set#Empty|))))) (and (let ((|stCombinedC#0| (_module.__default.CombineC $ly@@2 |stsC#0@@2|)))
 (and (and (and (and (and (forall ((|stC#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#0@@0| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#0@@0|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |812|
 :pattern ( (_module.StateC.st |stC#0@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#0@@0|)))
)) (forall ((|stC#1| T@U) (|p#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#1| Tclass._module.StateC) ($Is DatatypeTypeType |p#0@@1| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#0@@1|))) (= (_module.__default.GetSt |p#0@@1| (_module.StateC.st |stC#1|)) (_module.__default.GetSt |p#0@@1| (_module.StateC.st |stCombinedC#0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |813|
 :pattern ( (_module.__default.GetSt |p#0@@1| (_module.StateC.st |stCombinedC#0|)) (_module.StateC.st |stC#1|))
 :pattern ( (_module.__default.GetSt |p#0@@1| (_module.StateC.st |stCombinedC#0|)) (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#1|)))
))) (forall ((|p#1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#0|)) ($Box DatatypeTypeType |p#1|)) (exists ((|stC#2| T@U) ) (!  (and ($Is DatatypeTypeType |stC#2| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#2|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#2|)) ($Box DatatypeTypeType |p#1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |814|
 :pattern ( (_module.StateC.st |stC#2|))
 :pattern ( (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#2|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |815|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#0|)) ($Box DatatypeTypeType |p#1|)))
))) (forall ((|stC#3| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#3| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#3|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#3|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |816|
 :pattern ( (_module.StateC.c |stC#3|))
 :pattern ( (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#3|)))
))) (forall ((|stC#4| T@U) (|h#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#4| Tclass._module.StateC) ($IsBox |h#0@@1| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#4|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#4|)) |h#0@@1|)) (|_module.Triple#Equal| (_module.__default.GetC |h#0@@1| (_module.StateC.c |stC#4|)) (_module.__default.GetC |h#0@@1| (_module.StateC.c |stCombinedC#0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |817|
 :pattern ( (_module.__default.GetC |h#0@@1| (_module.StateC.c |stCombinedC#0|)) (_module.StateC.c |stC#4|))
 :pattern ( (_module.__default.GetC |h#0@@1| (_module.StateC.c |stCombinedC#0|)) (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#4|)))
))) (forall ((|h#1| T@U) ) (!  (=> ($IsBox |h#1| Tclass._module.HashValue) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#0|)) |h#1|) (exists ((|stC#5| T@U) ) (!  (and ($Is DatatypeTypeType |stC#5| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#5|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#5|)) |h#1|)))
 :qid |CloudMakeConsistentBuildslegacydfy.131:54|
 :skolemid |818|
 :pattern ( (_module.StateC.c |stC#5|))
 :pattern ( (|Set#IsMember| |stsC#0@@2| ($Box DatatypeTypeType |stC#5|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.131:13|
 :skolemid |819|
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#0|)) |h#1|))
)))) ($Is DatatypeTypeType (_module.__default.CombineC $ly@@2 |stsC#0@@2|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |820|
 :pattern ( (_module.__default.CombineC $ly@@2 |stsC#0@@2|))
))))
(assert (forall ((d@@6 T@U) (_module.Triple$A@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Triple.Trio_q d@@6) (exists ((_module.Triple$B@@7 T@U) (_module.Triple$C@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@0)
 :qid |unknown.0:0|
 :skolemid |1563|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@0))
)))) ($IsAllocBox (_module.Triple.fst d@@6) _module.Triple$A@@7 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($IsAllocBox (_module.Triple.fst d@@6) _module.Triple$A@@7 $h@@0))
)))
(assert (forall ((d@@7 T@U) (_module.Triple$B@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Triple.Trio_q d@@7) (exists ((_module.Triple$A@@8 T@U) (_module.Triple$C@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@1))
)))) ($IsAllocBox (_module.Triple.snd d@@7) _module.Triple$B@@8 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1566|
 :pattern ( ($IsAllocBox (_module.Triple.snd d@@7) _module.Triple$B@@8 $h@@1))
)))
(assert (forall ((d@@8 T@U) (_module.Triple$C@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Triple.Trio_q d@@8) (exists ((_module.Triple$A@@9 T@U) (_module.Triple$B@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@2))
)))) ($IsAllocBox (_module.Triple.trd d@@8) _module.Triple$C@@9 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsAllocBox (_module.Triple.trd d@@8) _module.Triple$C@@9 $h@@2))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@9 Tclass._module.StateC)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.StateC $h@@3))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.StateC $h@@3))
)))
(assert (forall ((d@@10 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@10 Tclass._module.Expression)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Expression $h@@4))
 :qid |unknown.0:0|
 :skolemid |1405|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Expression $h@@4))
)))
(assert (forall ((d@@11 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@11 Tclass._module.Path)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Path $h@@5))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Path $h@@5))
)))
(assert (= (Tag Tclass._module.Path) Tagclass._module.Path))
(assert (= (TagFamily Tclass._module.Path) tytagFamily$Path))
(assert (= (Tag Tclass._module.Expression) Tagclass._module.Expression))
(assert (= (TagFamily Tclass._module.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass._module.StateC) Tagclass._module.StateC))
(assert (= (TagFamily Tclass._module.StateC) tytagFamily$StateC))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|_module.Triple#Equal| a@@14 b@@11)  (and (and (= (_module.Triple.fst a@@14) (_module.Triple.fst b@@11)) (= (_module.Triple.snd a@@14) (_module.Triple.snd b@@11))) (= (_module.Triple.trd a@@14) (_module.Triple.trd b@@11))))
 :qid |unknown.0:0|
 :skolemid |1578|
 :pattern ( (|_module.Triple#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Equal| a@@15 b@@12) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@15 o@@5) (|Set#IsMember| b@@12 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@15 o@@5))
 :pattern ( (|Set#IsMember| b@@12 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@15 b@@12))
)))
(assert (forall ((d@@12 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.StateC.S_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.StateC $h@@6))) ($IsAllocBox (_module.StateC.st d@@12) Tclass._module.State $h@@6))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( ($IsAllocBox (_module.StateC.st d@@12) Tclass._module.State $h@@6))
)))
(assert (forall ((d@@13 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.StateC.S_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.StateC $h@@7))) ($IsAllocBox (_module.StateC.c d@@13) Tclass._module.Cache $h@@7))
 :qid |unknown.0:0|
 :skolemid |1275|
 :pattern ( ($IsAllocBox (_module.StateC.c d@@13) Tclass._module.Cache $h@@7))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_module.StateC.S| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.StateC.S| |a#3#0#0| |a#3#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1276|
 :pattern ( (|#_module.StateC.S| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |stsC#0@@3| () T@U)
(declare-fun |stC#23@0| () T@U)
(declare-fun |##c#6@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |stCombinedC#Z#0@0| () T@U)
(declare-fun |h#5@0| () T@U)
(declare-fun |##c#5@0| () T@U)
(declare-fun |stC#21@0| () T@U)
(declare-fun |h#4@0| () T@U)
(declare-fun |##c#3@0| () T@U)
(declare-fun |##c#4@0| () T@U)
(declare-fun |##c#2@0| () T@U)
(declare-fun |stC#19@0| () T@U)
(declare-fun |##c#0@0| () T@U)
(declare-fun |##c#1@0| () T@U)
(declare-fun |stC#17@0| () T@U)
(declare-fun |##st#6@0| () T@U)
(declare-fun |p#5@0| () T@U)
(declare-fun |##st#5@0| () T@U)
(declare-fun |stC#15@0| () T@U)
(declare-fun |p#4@0| () T@U)
(declare-fun |##st#3@0| () T@U)
(declare-fun |##st#4@0| () T@U)
(declare-fun |##st#2@0| () T@U)
(declare-fun |stC#14@0| () T@U)
(declare-fun |##st#0@0| () T@U)
(declare-fun |##st#1@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |stC#25@0| () T@U)
(declare-fun |##stsC#1@0| () T@U)
(declare-fun |##stC'#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.CombineC)
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
 (=> (= (ControlFlow 0 0) 68) (let ((anon40_correct true))
(let ((anon71_Else_correct  (=> (and (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#23@0|))) (= (ControlFlow 0 23) 17)) anon40_correct)))
(let ((anon71_Then_correct  (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#23@0|)) (_module.StateC.S_q |stC#23@0|)) (=> (and (and (= |##c#6@0| (_module.StateC.c |stC#23@0|)) ($IsAllocBox |##c#6@0| Tclass._module.Cache $Heap@@1)) (and (|_module.__default.DomC#canCall| (_module.StateC.c |stC#23@0|)) (= (ControlFlow 0 22) 17))) anon40_correct))))
(let ((anon70_Then_correct  (=> (and ($Is DatatypeTypeType |stC#23@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#23@0| Tclass._module.StateC $Heap@@1)) (and (=> (= (ControlFlow 0 24) 22) anon71_Then_correct) (=> (= (ControlFlow 0 24) 23) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |stC#23@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#23@0| Tclass._module.StateC $Heap@@1))) (= (ControlFlow 0 21) 17)) anon40_correct)))
(let ((anon69_Then_correct  (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)) |h#5@0|) (and (=> (= (ControlFlow 0 25) 24) anon70_Then_correct) (=> (= (ControlFlow 0 25) 21) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (not (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)) |h#5@0|)) (= (ControlFlow 0 20) 17)) anon40_correct)))
(let ((anon68_Then_correct  (=> (and ($IsBox |h#5@0| Tclass._module.HashValue) ($IsAllocBox |h#5@0| Tclass._module.HashValue $Heap@@1)) (=> (and (and (_module.StateC.S_q |stCombinedC#Z#0@0|) (= |##c#5@0| (_module.StateC.c |stCombinedC#Z#0@0|))) (and ($IsAllocBox |##c#5@0| Tclass._module.Cache $Heap@@1) (|_module.__default.DomC#canCall| (_module.StateC.c |stCombinedC#Z#0@0|)))) (and (=> (= (ControlFlow 0 26) 25) anon69_Then_correct) (=> (= (ControlFlow 0 26) 20) anon69_Else_correct))))))
(let ((anon68_Else_correct  (=> (and (not (and ($IsBox |h#5@0| Tclass._module.HashValue) ($IsAllocBox |h#5@0| Tclass._module.HashValue $Heap@@1))) (= (ControlFlow 0 19) 17)) anon40_correct)))
(let ((anon67_Then_correct  (=> (and (and (and (and (forall ((|stC#16| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |845|
 :pattern ( (_module.StateC.st |stC#16|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16|)))
)) (forall ((|stC#18| T@U) (|p#6| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18| Tclass._module.StateC) ($Is DatatypeTypeType |p#6| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18|)) ($Box DatatypeTypeType |p#6|))) (= (_module.__default.GetSt |p#6| (_module.StateC.st |stC#18|)) (_module.__default.GetSt |p#6| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |846|
 :pattern ( (_module.__default.GetSt |p#6| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18|))
 :pattern ( (_module.__default.GetSt |p#6| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18|)))
))) (forall ((|p#7| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7|)) (exists ((|stC#20| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20|)) ($Box DatatypeTypeType |p#7|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |847|
 :pattern ( (_module.StateC.st |stC#20|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |848|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7|)))
))) (forall ((|stC#22| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#22| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#22|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |849|
 :pattern ( (_module.StateC.c |stC#22|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22|)))
))) (forall ((|stC#24| T@U) (|h#6| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#24| Tclass._module.StateC) ($IsBox |h#6| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#24|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#24|)) |h#6|)) (|_module.Triple#Equal| (_module.__default.GetC |h#6| (_module.StateC.c |stC#24|)) (_module.__default.GetC |h#6| (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |850|
 :pattern ( (_module.__default.GetC |h#6| (_module.StateC.c |stCombinedC#Z#0@0|)) (_module.StateC.c |stC#24|))
 :pattern ( (_module.__default.GetC |h#6| (_module.StateC.c |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#24|)))
))) (and (=> (= (ControlFlow 0 27) 26) anon68_Then_correct) (=> (= (ControlFlow 0 27) 19) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (not (and (and (and (and (forall ((|stC#16@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@0| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@0|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |845|
 :pattern ( (_module.StateC.st |stC#16@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@0|)))
)) (forall ((|stC#18@@0| T@U) (|p#6@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@0| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@0| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@0|)) ($Box DatatypeTypeType |p#6@@0|))) (= (_module.__default.GetSt |p#6@@0| (_module.StateC.st |stC#18@@0|)) (_module.__default.GetSt |p#6@@0| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |846|
 :pattern ( (_module.__default.GetSt |p#6@@0| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@0|))
 :pattern ( (_module.__default.GetSt |p#6@@0| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@0|)))
))) (forall ((|p#7@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@0| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@0|)) (exists ((|stC#20@@0| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20@@0| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20@@0|)) ($Box DatatypeTypeType |p#7@@0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |847|
 :pattern ( (_module.StateC.st |stC#20@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@0|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |848|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@0|)))
))) (forall ((|stC#22@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#22@@0| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@0|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#22@@0|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |849|
 :pattern ( (_module.StateC.c |stC#22@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@0|)))
))) (forall ((|stC#24@@0| T@U) (|h#6@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#24@@0| Tclass._module.StateC) ($IsBox |h#6@@0| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#24@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#24@@0|)) |h#6@@0|)) (|_module.Triple#Equal| (_module.__default.GetC |h#6@@0| (_module.StateC.c |stC#24@@0|)) (_module.__default.GetC |h#6@@0| (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |850|
 :pattern ( (_module.__default.GetC |h#6@@0| (_module.StateC.c |stCombinedC#Z#0@0|)) (_module.StateC.c |stC#24@@0|))
 :pattern ( (_module.__default.GetC |h#6@@0| (_module.StateC.c |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#24@@0|)))
)))) (= (ControlFlow 0 18) 17)) anon40_correct)))
(let ((anon66_Else_correct  (=> (not (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#21@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#21@0|)) |h#4@0|))) (and (=> (= (ControlFlow 0 31) 27) anon67_Then_correct) (=> (= (ControlFlow 0 31) 18) anon67_Else_correct)))))
(let ((anon66_Then_correct  (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#21@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#21@0|)) |h#4@0|)) (=> (and (and ($IsAllocBox |h#4@0| Tclass._module.HashValue $Heap@@1) (_module.StateC.S_q |stC#21@0|)) (and (= |##c#3@0| (_module.StateC.c |stC#21@0|)) ($IsAllocBox |##c#3@0| Tclass._module.Cache $Heap@@1))) (=> (and (and (and (|_module.__default.GetC#canCall| |h#4@0| (_module.StateC.c |stC#21@0|)) (_module.Triple.Trio_q (_module.__default.GetC |h#4@0| (_module.StateC.c |stC#21@0|)))) (and ($IsAllocBox |h#4@0| Tclass._module.HashValue $Heap@@1) (_module.StateC.S_q |stCombinedC#Z#0@0|))) (and (and (= |##c#4@0| (_module.StateC.c |stCombinedC#Z#0@0|)) ($IsAllocBox |##c#4@0| Tclass._module.Cache $Heap@@1)) (and (|_module.__default.GetC#canCall| |h#4@0| (_module.StateC.c |stCombinedC#Z#0@0|)) (_module.Triple.Trio_q (_module.__default.GetC |h#4@0| (_module.StateC.c |stCombinedC#Z#0@0|)))))) (and (=> (= (ControlFlow 0 30) 27) anon67_Then_correct) (=> (= (ControlFlow 0 30) 18) anon67_Else_correct)))))))
(let ((anon65_Else_correct  (=> (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#21@0|))) (and (=> (= (ControlFlow 0 33) 30) anon66_Then_correct) (=> (= (ControlFlow 0 33) 31) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#21@0|)) (=> (and (and (_module.StateC.S_q |stC#21@0|) (= |##c#2@0| (_module.StateC.c |stC#21@0|))) (and ($IsAllocBox |##c#2@0| Tclass._module.Cache $Heap@@1) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#21@0|)))) (and (=> (= (ControlFlow 0 32) 30) anon66_Then_correct) (=> (= (ControlFlow 0 32) 31) anon66_Else_correct))))))
(let ((anon64_Then_correct  (=> (and (and ($Is DatatypeTypeType |stC#21@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#21@0| Tclass._module.StateC $Heap@@1)) (and ($IsBox |h#4@0| Tclass._module.HashValue) ($IsAllocBox |h#4@0| Tclass._module.HashValue $Heap@@1))) (and (=> (= (ControlFlow 0 34) 32) anon65_Then_correct) (=> (= (ControlFlow 0 34) 33) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (not (and (and ($Is DatatypeTypeType |stC#21@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#21@0| Tclass._module.StateC $Heap@@1)) (and ($IsBox |h#4@0| Tclass._module.HashValue) ($IsAllocBox |h#4@0| Tclass._module.HashValue $Heap@@1)))) (and (=> (= (ControlFlow 0 29) 27) anon67_Then_correct) (=> (= (ControlFlow 0 29) 18) anon67_Else_correct)))))
(let ((anon63_Then_correct  (=> (and (and (and (forall ((|stC#16@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@1| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@1|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@1|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |840|
 :pattern ( (_module.StateC.st |stC#16@@1|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@1|)))
)) (forall ((|stC#18@@1| T@U) (|p#6@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@1| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@1| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@1|)) ($Box DatatypeTypeType |p#6@@1|))) (= (_module.__default.GetSt |p#6@@1| (_module.StateC.st |stC#18@@1|)) (_module.__default.GetSt |p#6@@1| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |841|
 :pattern ( (_module.__default.GetSt |p#6@@1| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@1|))
 :pattern ( (_module.__default.GetSt |p#6@@1| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@1|)))
))) (forall ((|p#7@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@1| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@1|)) (exists ((|stC#20@@1| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20@@1| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20@@1|)) ($Box DatatypeTypeType |p#7@@1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |842|
 :pattern ( (_module.StateC.st |stC#20@@1|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@1|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |843|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@1|)))
))) (forall ((|stC#22@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#22@@1| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@1|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#22@@1|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |844|
 :pattern ( (_module.StateC.c |stC#22@@1|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@1|)))
))) (and (=> (= (ControlFlow 0 35) 34) anon64_Then_correct) (=> (= (ControlFlow 0 35) 29) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (not (and (and (and (forall ((|stC#16@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@2| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@2|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@2|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |840|
 :pattern ( (_module.StateC.st |stC#16@@2|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@2|)))
)) (forall ((|stC#18@@2| T@U) (|p#6@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@2| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@2| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@2|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@2|)) ($Box DatatypeTypeType |p#6@@2|))) (= (_module.__default.GetSt |p#6@@2| (_module.StateC.st |stC#18@@2|)) (_module.__default.GetSt |p#6@@2| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |841|
 :pattern ( (_module.__default.GetSt |p#6@@2| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@2|))
 :pattern ( (_module.__default.GetSt |p#6@@2| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@2|)))
))) (forall ((|p#7@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@2| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@2|)) (exists ((|stC#20@@2| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20@@2| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@2|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20@@2|)) ($Box DatatypeTypeType |p#7@@2|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |842|
 :pattern ( (_module.StateC.st |stC#20@@2|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@2|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |843|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@2|)))
))) (forall ((|stC#22@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#22@@2| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@2|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#22@@2|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |844|
 :pattern ( (_module.StateC.c |stC#22@@2|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#22@@2|)))
)))) (and (=> (= (ControlFlow 0 28) 27) anon67_Then_correct) (=> (= (ControlFlow 0 28) 18) anon67_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#19@0|))) (and (=> (= (ControlFlow 0 39) 35) anon63_Then_correct) (=> (= (ControlFlow 0 39) 28) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#19@0|)) (=> (and (and (and (_module.StateC.S_q |stC#19@0|) (= |##c#0@0| (_module.StateC.c |stC#19@0|))) (and ($IsAllocBox |##c#0@0| Tclass._module.Cache $Heap@@1) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#19@0|)))) (and (and (_module.StateC.S_q |stCombinedC#Z#0@0|) (= |##c#1@0| (_module.StateC.c |stCombinedC#Z#0@0|))) (and ($IsAllocBox |##c#1@0| Tclass._module.Cache $Heap@@1) (|_module.__default.DomC#canCall| (_module.StateC.c |stCombinedC#Z#0@0|))))) (and (=> (= (ControlFlow 0 38) 35) anon63_Then_correct) (=> (= (ControlFlow 0 38) 28) anon63_Else_correct))))))
(let ((anon61_Then_correct  (=> (and ($Is DatatypeTypeType |stC#19@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#19@0| Tclass._module.StateC $Heap@@1)) (and (=> (= (ControlFlow 0 40) 38) anon62_Then_correct) (=> (= (ControlFlow 0 40) 39) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (not (and ($Is DatatypeTypeType |stC#19@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#19@0| Tclass._module.StateC $Heap@@1))) (and (=> (= (ControlFlow 0 37) 35) anon63_Then_correct) (=> (= (ControlFlow 0 37) 28) anon63_Else_correct)))))
(let ((anon60_Then_correct  (=> (and (and (forall ((|stC#16@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@3| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@3|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@3|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |836|
 :pattern ( (_module.StateC.st |stC#16@@3|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@3|)))
)) (forall ((|stC#18@@3| T@U) (|p#6@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@3| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@3| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@3|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@3|)) ($Box DatatypeTypeType |p#6@@3|))) (= (_module.__default.GetSt |p#6@@3| (_module.StateC.st |stC#18@@3|)) (_module.__default.GetSt |p#6@@3| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |837|
 :pattern ( (_module.__default.GetSt |p#6@@3| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@3|))
 :pattern ( (_module.__default.GetSt |p#6@@3| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@3|)))
))) (forall ((|p#7@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@3| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@3|)) (exists ((|stC#20@@3| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20@@3| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@3|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20@@3|)) ($Box DatatypeTypeType |p#7@@3|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |838|
 :pattern ( (_module.StateC.st |stC#20@@3|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@3|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |839|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@3|)))
))) (and (=> (= (ControlFlow 0 41) 40) anon61_Then_correct) (=> (= (ControlFlow 0 41) 37) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (not (and (and (forall ((|stC#16@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@4| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@4|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@4|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |836|
 :pattern ( (_module.StateC.st |stC#16@@4|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@4|)))
)) (forall ((|stC#18@@4| T@U) (|p#6@@4| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@4| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@4| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@4|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@4|)) ($Box DatatypeTypeType |p#6@@4|))) (= (_module.__default.GetSt |p#6@@4| (_module.StateC.st |stC#18@@4|)) (_module.__default.GetSt |p#6@@4| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |837|
 :pattern ( (_module.__default.GetSt |p#6@@4| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@4|))
 :pattern ( (_module.__default.GetSt |p#6@@4| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@4|)))
))) (forall ((|p#7@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@4| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@4|)) (exists ((|stC#20@@4| T@U) ) (!  (and ($Is DatatypeTypeType |stC#20@@4| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@4|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#20@@4|)) ($Box DatatypeTypeType |p#7@@4|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |838|
 :pattern ( (_module.StateC.st |stC#20@@4|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#20@@4|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |839|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#7@@4|)))
)))) (and (=> (= (ControlFlow 0 36) 35) anon63_Then_correct) (=> (= (ControlFlow 0 36) 28) anon63_Else_correct)))))
(let ((anon59_Else_correct  (=> (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#17@0|))) (and (=> (= (ControlFlow 0 47) 41) anon60_Then_correct) (=> (= (ControlFlow 0 47) 36) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#17@0|)) (=> (and (and (_module.StateC.S_q |stC#17@0|) (= |##st#6@0| (_module.StateC.st |stC#17@0|))) (and ($IsAllocBox |##st#6@0| Tclass._module.State $Heap@@1) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#17@0|)))) (and (=> (= (ControlFlow 0 46) 41) anon60_Then_correct) (=> (= (ControlFlow 0 46) 36) anon60_Else_correct))))))
(let ((anon58_Then_correct  (=> (and ($Is DatatypeTypeType |stC#17@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#17@0| Tclass._module.StateC $Heap@@1)) (and (=> (= (ControlFlow 0 48) 46) anon59_Then_correct) (=> (= (ControlFlow 0 48) 47) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (not (and ($Is DatatypeTypeType |stC#17@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#17@0| Tclass._module.StateC $Heap@@1))) (and (=> (= (ControlFlow 0 45) 41) anon60_Then_correct) (=> (= (ControlFlow 0 45) 36) anon60_Else_correct)))))
(let ((anon57_Then_correct  (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#5@0|)) (and (=> (= (ControlFlow 0 49) 48) anon58_Then_correct) (=> (= (ControlFlow 0 49) 45) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)) ($Box DatatypeTypeType |p#5@0|))) (and (=> (= (ControlFlow 0 44) 41) anon60_Then_correct) (=> (= (ControlFlow 0 44) 36) anon60_Else_correct)))))
(let ((anon56_Then_correct  (=> (and ($Is DatatypeTypeType |p#5@0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |p#5@0| Tclass._module.Path $Heap@@1)) (=> (and (and (_module.StateC.S_q |stCombinedC#Z#0@0|) (= |##st#5@0| (_module.StateC.st |stCombinedC#Z#0@0|))) (and ($IsAllocBox |##st#5@0| Tclass._module.State $Heap@@1) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#Z#0@0|)))) (and (=> (= (ControlFlow 0 50) 49) anon57_Then_correct) (=> (= (ControlFlow 0 50) 44) anon57_Else_correct))))))
(let ((anon56_Else_correct  (=> (not (and ($Is DatatypeTypeType |p#5@0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |p#5@0| Tclass._module.Path $Heap@@1))) (and (=> (= (ControlFlow 0 43) 41) anon60_Then_correct) (=> (= (ControlFlow 0 43) 36) anon60_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (forall ((|stC#16@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@5| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@5|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@5|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |834|
 :pattern ( (_module.StateC.st |stC#16@@5|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@5|)))
)) (forall ((|stC#18@@5| T@U) (|p#6@@5| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@5| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@5| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@5|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@5|)) ($Box DatatypeTypeType |p#6@@5|))) (= (_module.__default.GetSt |p#6@@5| (_module.StateC.st |stC#18@@5|)) (_module.__default.GetSt |p#6@@5| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |835|
 :pattern ( (_module.__default.GetSt |p#6@@5| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@5|))
 :pattern ( (_module.__default.GetSt |p#6@@5| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@5|)))
))) (and (=> (= (ControlFlow 0 51) 50) anon56_Then_correct) (=> (= (ControlFlow 0 51) 43) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (and (forall ((|stC#16@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@6| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@6|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@6|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |834|
 :pattern ( (_module.StateC.st |stC#16@@6|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@6|)))
)) (forall ((|stC#18@@6| T@U) (|p#6@@6| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#18@@6| Tclass._module.StateC) ($Is DatatypeTypeType |p#6@@6| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@6|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#18@@6|)) ($Box DatatypeTypeType |p#6@@6|))) (= (_module.__default.GetSt |p#6@@6| (_module.StateC.st |stC#18@@6|)) (_module.__default.GetSt |p#6@@6| (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |835|
 :pattern ( (_module.__default.GetSt |p#6@@6| (_module.StateC.st |stCombinedC#Z#0@0|)) (_module.StateC.st |stC#18@@6|))
 :pattern ( (_module.__default.GetSt |p#6@@6| (_module.StateC.st |stCombinedC#Z#0@0|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#18@@6|)))
)))) (and (=> (= (ControlFlow 0 42) 41) anon60_Then_correct) (=> (= (ControlFlow 0 42) 36) anon60_Else_correct)))))
(let ((anon54_Else_correct  (=> (not (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#15@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#15@0|)) ($Box DatatypeTypeType |p#4@0|)))) (and (=> (= (ControlFlow 0 55) 51) anon55_Then_correct) (=> (= (ControlFlow 0 55) 42) anon55_Else_correct)))))
(let ((anon54_Then_correct  (=> (and (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#15@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#15@0|)) ($Box DatatypeTypeType |p#4@0|))) (and ($IsAlloc DatatypeTypeType |p#4@0| Tclass._module.Path $Heap@@1) (_module.StateC.S_q |stC#15@0|))) (=> (and (and (and (= |##st#3@0| (_module.StateC.st |stC#15@0|)) ($IsAllocBox |##st#3@0| Tclass._module.State $Heap@@1)) (and (|_module.__default.GetSt#canCall| |p#4@0| (_module.StateC.st |stC#15@0|)) ($IsAlloc DatatypeTypeType |p#4@0| Tclass._module.Path $Heap@@1))) (and (and (_module.StateC.S_q |stCombinedC#Z#0@0|) (= |##st#4@0| (_module.StateC.st |stCombinedC#Z#0@0|))) (and ($IsAllocBox |##st#4@0| Tclass._module.State $Heap@@1) (|_module.__default.GetSt#canCall| |p#4@0| (_module.StateC.st |stCombinedC#Z#0@0|))))) (and (=> (= (ControlFlow 0 54) 51) anon55_Then_correct) (=> (= (ControlFlow 0 54) 42) anon55_Else_correct))))))
(let ((anon53_Else_correct  (=> (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#15@0|))) (and (=> (= (ControlFlow 0 57) 54) anon54_Then_correct) (=> (= (ControlFlow 0 57) 55) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#15@0|)) (=> (and (and (_module.StateC.S_q |stC#15@0|) (= |##st#2@0| (_module.StateC.st |stC#15@0|))) (and ($IsAllocBox |##st#2@0| Tclass._module.State $Heap@@1) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#15@0|)))) (and (=> (= (ControlFlow 0 56) 54) anon54_Then_correct) (=> (= (ControlFlow 0 56) 55) anon54_Else_correct))))))
(let ((anon52_Then_correct  (=> (and (and ($Is DatatypeTypeType |stC#15@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#15@0| Tclass._module.StateC $Heap@@1)) (and ($Is DatatypeTypeType |p#4@0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |p#4@0| Tclass._module.Path $Heap@@1))) (and (=> (= (ControlFlow 0 58) 56) anon53_Then_correct) (=> (= (ControlFlow 0 58) 57) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (not (and (and ($Is DatatypeTypeType |stC#15@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#15@0| Tclass._module.StateC $Heap@@1)) (and ($Is DatatypeTypeType |p#4@0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |p#4@0| Tclass._module.Path $Heap@@1)))) (and (=> (= (ControlFlow 0 53) 51) anon55_Then_correct) (=> (= (ControlFlow 0 53) 42) anon55_Else_correct)))))
(let ((anon51_Then_correct  (=> (forall ((|stC#16@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@7| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@7|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@7|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |833|
 :pattern ( (_module.StateC.st |stC#16@@7|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@7|)))
)) (and (=> (= (ControlFlow 0 59) 58) anon52_Then_correct) (=> (= (ControlFlow 0 59) 53) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (not (forall ((|stC#16@@8| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#16@@8| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@8|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#16@@8|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#Z#0@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |833|
 :pattern ( (_module.StateC.st |stC#16@@8|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#16@@8|)))
))) (and (=> (= (ControlFlow 0 52) 51) anon55_Then_correct) (=> (= (ControlFlow 0 52) 42) anon55_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#14@0|))) (and (=> (= (ControlFlow 0 62) 59) anon51_Then_correct) (=> (= (ControlFlow 0 62) 52) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#14@0|)) (=> (and (and (and (_module.StateC.S_q |stC#14@0|) (= |##st#0@0| (_module.StateC.st |stC#14@0|))) (and ($IsAllocBox |##st#0@0| Tclass._module.State $Heap@@1) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#14@0|)))) (and (and (_module.StateC.S_q |stCombinedC#Z#0@0|) (= |##st#1@0| (_module.StateC.st |stCombinedC#Z#0@0|))) (and ($IsAllocBox |##st#1@0| Tclass._module.State $Heap@@1) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#Z#0@0|))))) (and (=> (= (ControlFlow 0 61) 59) anon51_Then_correct) (=> (= (ControlFlow 0 61) 52) anon51_Else_correct))))))
(let ((anon49_Then_correct  (=> (and ($Is DatatypeTypeType |stC#14@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#14@0| Tclass._module.StateC $Heap@@1)) (and (=> (= (ControlFlow 0 63) 61) anon50_Then_correct) (=> (= (ControlFlow 0 63) 62) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (not (and ($Is DatatypeTypeType |stC#14@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#14@0| Tclass._module.StateC $Heap@@1))) (and (=> (= (ControlFlow 0 60) 59) anon51_Then_correct) (=> (= (ControlFlow 0 60) 52) anon51_Else_correct)))))
(let ((anon48_Then_correct  (=> (and ($Is DatatypeTypeType (_module.__default.CombineC ($LS $LZ) |stsC#0@@3|) Tclass._module.StateC) ($IsAlloc SetType |stsC#0@@3| (TSet Tclass._module.StateC) $Heap@@1)) (and (=> (= (ControlFlow 0 64) (- 0 66)) (not (|Set#Equal| |stsC#0@@3| |Set#Empty|))) (=> (not (|Set#Equal| |stsC#0@@3| |Set#Empty|)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (or (|Set#Equal| |stsC#0@@3| |stsC#0@@3|) (and (|Set#Subset| |stsC#0@@3| |stsC#0@@3|) (not (|Set#Subset| |stsC#0@@3| |stsC#0@@3|))))) (=> (or (|Set#Equal| |stsC#0@@3| |stsC#0@@3|) (and (|Set#Subset| |stsC#0@@3| |stsC#0@@3|) (not (|Set#Subset| |stsC#0@@3| |stsC#0@@3|)))) (=> (and (or (|Set#Equal| |stsC#0@@3| |stsC#0@@3|) (|_module.__default.CombineC#canCall| |stsC#0@@3|)) (_module.StateC.S_q (_module.__default.CombineC ($LS $LZ) |stsC#0@@3|))) (=> (and (and (= |let#0#0#0| (_module.__default.CombineC ($LS $LZ) |stsC#0@@3|)) (|_module.__default.CombineC#canCall| |stsC#0@@3|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.StateC) (= |stCombinedC#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 64) 63) anon49_Then_correct) (=> (= (ControlFlow 0 64) 60) anon49_Else_correct)))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (let ((|stCombinedC#1| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#8| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#8| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#8|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#8|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |825|
 :pattern ( (_module.StateC.st |stC#8|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#8|)))
)))) (=> (let ((|stCombinedC#1@@0| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#8@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#8@@0| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#8@@0|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#8@@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1@@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |825|
 :pattern ( (_module.StateC.st |stC#8@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#8@@0|)))
))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (let ((|stCombinedC#1@@1| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#9| T@U) (|p#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#9| Tclass._module.StateC) ($Is DatatypeTypeType |p#2| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#9|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#9|)) ($Box DatatypeTypeType |p#2|))) (= (_module.__default.GetSt |p#2| (_module.StateC.st |stC#9|)) (_module.__default.GetSt |p#2| (_module.StateC.st |stCombinedC#1@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |826|
 :pattern ( (_module.__default.GetSt |p#2| (_module.StateC.st |stCombinedC#1@@1|)) (_module.StateC.st |stC#9|))
 :pattern ( (_module.__default.GetSt |p#2| (_module.StateC.st |stCombinedC#1@@1|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#9|)))
)))) (=> (let ((|stCombinedC#1@@2| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#9@@0| T@U) (|p#2@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#9@@0| Tclass._module.StateC) ($Is DatatypeTypeType |p#2@@0| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#9@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#9@@0|)) ($Box DatatypeTypeType |p#2@@0|))) (= (_module.__default.GetSt |p#2@@0| (_module.StateC.st |stC#9@@0|)) (_module.__default.GetSt |p#2@@0| (_module.StateC.st |stCombinedC#1@@2|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |826|
 :pattern ( (_module.__default.GetSt |p#2@@0| (_module.StateC.st |stCombinedC#1@@2|)) (_module.StateC.st |stC#9@@0|))
 :pattern ( (_module.__default.GetSt |p#2@@0| (_module.StateC.st |stCombinedC#1@@2|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#9@@0|)))
))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (let ((|stCombinedC#1@@3| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|p#3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1@@3|)) ($Box DatatypeTypeType |p#3|)) (exists ((|stC#10| T@U) ) (!  (and ($Is DatatypeTypeType |stC#10| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#10|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#10|)) ($Box DatatypeTypeType |p#3|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |827|
 :pattern ( (_module.StateC.st |stC#10|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#10|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |828|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1@@3|)) ($Box DatatypeTypeType |p#3|)))
)))) (=> (let ((|stCombinedC#1@@4| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|p#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@0| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1@@4|)) ($Box DatatypeTypeType |p#3@@0|)) (exists ((|stC#10@@0| T@U) ) (!  (and ($Is DatatypeTypeType |stC#10@@0| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#10@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#10@@0|)) ($Box DatatypeTypeType |p#3@@0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |827|
 :pattern ( (_module.StateC.st |stC#10@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#10@@0|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |828|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1@@4|)) ($Box DatatypeTypeType |p#3@@0|)))
))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (let ((|stCombinedC#1@@5| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#11| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#11| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#11|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#11|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#1@@5|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |829|
 :pattern ( (_module.StateC.c |stC#11|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#11|)))
)))) (=> (let ((|stCombinedC#1@@6| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#11@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#11@@0| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#11@@0|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#11@@0|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#1@@6|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |829|
 :pattern ( (_module.StateC.c |stC#11@@0|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#11@@0|)))
))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|stCombinedC#1@@7| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#12| T@U) (|h#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#12| Tclass._module.StateC) ($IsBox |h#2| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#12|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#12|)) |h#2|)) (|_module.Triple#Equal| (_module.__default.GetC |h#2| (_module.StateC.c |stC#12|)) (_module.__default.GetC |h#2| (_module.StateC.c |stCombinedC#1@@7|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |830|
 :pattern ( (_module.__default.GetC |h#2| (_module.StateC.c |stCombinedC#1@@7|)) (_module.StateC.c |stC#12|))
 :pattern ( (_module.__default.GetC |h#2| (_module.StateC.c |stCombinedC#1@@7|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#12|)))
)))) (=> (let ((|stCombinedC#1@@8| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|stC#12@@0| T@U) (|h#2@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#12@@0| Tclass._module.StateC) ($IsBox |h#2@@0| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#12@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#12@@0|)) |h#2@@0|)) (|_module.Triple#Equal| (_module.__default.GetC |h#2@@0| (_module.StateC.c |stC#12@@0|)) (_module.__default.GetC |h#2@@0| (_module.StateC.c |stCombinedC#1@@8|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |830|
 :pattern ( (_module.__default.GetC |h#2@@0| (_module.StateC.c |stCombinedC#1@@8|)) (_module.StateC.c |stC#12@@0|))
 :pattern ( (_module.__default.GetC |h#2@@0| (_module.StateC.c |stCombinedC#1@@8|)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#12@@0|)))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|stCombinedC#1@@9| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC#0@@3|)))
(forall ((|h#3| T@U) ) (!  (=> ($IsBox |h#3| Tclass._module.HashValue) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1@@9|)) |h#3|) (exists ((|stC#13| T@U) ) (!  (and ($Is DatatypeTypeType |stC#13| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#13|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#13|)) |h#3|)))
 :qid |CloudMakeConsistentBuildslegacydfy.131:54|
 :skolemid |831|
 :pattern ( (_module.StateC.c |stC#13|))
 :pattern ( (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#13|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.131:13|
 :skolemid |832|
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1@@9|)) |h#3|))
))))))))))))))))
(let ((anon46_correct  (=> (|$let#3$canCall| |stsC#0@@3|) (=> (and (and (= (_module.__default.CombineC ($LS $LZ) |stsC#0@@3|) (ite (|Set#Equal| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|))) |stC#25@0| (_module.__default.UnionC |stC#25@0| (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|))))))) (=> (not (|Set#Equal| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))) (and (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))) (|_module.__default.UnionC#canCall| |stC#25@0| (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))))))) (and ($Is DatatypeTypeType (_module.__default.CombineC ($LS $LZ) |stsC#0@@3|) Tclass._module.StateC) (= (ControlFlow 0 8) 2))) GeneratedUnifiedExit_correct))))
(let ((anon73_Else_correct  (=> (and (and (not (|Set#Equal| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))) ($IsAlloc DatatypeTypeType |stC#25@0| Tclass._module.StateC $Heap@@1)) (and (= |##stsC#1@0| (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))) ($IsAlloc SetType |##stsC#1@0| (TSet Tclass._module.StateC) $Heap@@1))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (not (|Set#Equal| |##stsC#1@0| |Set#Empty|))) (=> (not (|Set#Equal| |##stsC#1@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (|Set#Subset| |##stsC#1@0| |stsC#0@@3|) (not (|Set#Subset| |stsC#0@@3| |##stsC#1@0|)))) (=> (and (|Set#Subset| |##stsC#1@0| |stsC#0@@3|) (not (|Set#Subset| |stsC#0@@3| |##stsC#1@0|))) (=> (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))) (=> (and (_module.StateC.S_q (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|))))) (= |##stC'#0@0| (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))))) (=> (and (and ($IsAlloc DatatypeTypeType |##stC'#0@0| Tclass._module.StateC $Heap@@1) (|_module.__default.UnionC#canCall| |stC#25@0| (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))))) (and (_module.StateC.S_q (_module.__default.UnionC |stC#25@0| (_module.__default.CombineC ($LS $LZ) (|Set#Difference| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|)))))) (= (ControlFlow 0 10) 8))) anon46_correct))))))))))
(let ((anon73_Then_correct  (=> (and (|Set#Equal| |stsC#0@@3| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#25@0|))) (= (ControlFlow 0 9) 8)) anon46_correct)))
(let ((anon43_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (exists ((|stC#26| T@U) ) (!  (and ($Is DatatypeTypeType |stC#26| Tclass._module.StateC) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#26|)))
 :qid |CloudMakeConsistentBuildslegacydfy.133:7|
 :skolemid |859|
))) (=> (exists ((|stC#26@@0| T@U) ) (!  (and ($Is DatatypeTypeType |stC#26@@0| Tclass._module.StateC) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#26@@0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.133:7|
 :skolemid |859|
)) (=> (and (and ($Is DatatypeTypeType |stC#25@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#25@0| Tclass._module.StateC $Heap@@1)) (|Set#IsMember| |stsC#0@@3| ($Box DatatypeTypeType |stC#25@0|))) (and (=> (= (ControlFlow 0 13) 9) anon73_Then_correct) (=> (= (ControlFlow 0 13) 10) anon73_Else_correct)))))))
(let ((anon72_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |stC#25@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#25@0| Tclass._module.StateC $Heap@@1))) (= (ControlFlow 0 16) 13)) anon43_correct)))
(let ((anon72_Then_correct  (=> (and (and ($Is DatatypeTypeType |stC#25@0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#25@0| Tclass._module.StateC $Heap@@1)) (= (ControlFlow 0 15) 13)) anon43_correct)))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (not (|Set#Equal| |stsC#0@@3| |Set#Empty|))) (and (and (=> (= (ControlFlow 0 67) 64) anon48_Then_correct) (=> (= (ControlFlow 0 67) 15) anon72_Then_correct)) (=> (= (ControlFlow 0 67) 16) anon72_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is SetType |stsC#0@@3| (TSet Tclass._module.StateC))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 68) 67))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
