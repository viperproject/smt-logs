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
(declare-fun Tagclass._module.Expression () T@U)
(declare-fun Tagclass._module.Triple () T@U)
(declare-fun |##_module.Triple.Trio| () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Triple () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.Cache () T@U)
(declare-fun Tclass._module.HashValue () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |_module.Triple#Equal| (T@U T@U) Bool)
(declare-fun _module.Triple.Trio_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SetC (T@U T@U T@U) T@U)
(declare-fun |_module.__default.SetC#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Expression () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.__default.DomC (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |_module.__default.DomC#canCall| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass._module.Expression Tagclass._module.Triple |##_module.Triple.Trio| tytagFamily$Expression tytagFamily$Triple)
)
(assert (= (Tag TChar) TagChar))
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
(assert ($AlwaysAllocated Tclass._module.Cache))
(assert ($AlwaysAllocated Tclass._module.HashValue))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Triple$A@@3 T@U) (_module.Triple$B@@3 T@U) (_module.Triple$C@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.Triple#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1579|
 :pattern ( (|_module.Triple#Equal| a@@7 b@@4))
)))
(assert (forall ((d T@U) ) (! (= (_module.Triple.Trio_q d) (= (DatatypeCtorId d) |##_module.Triple.Trio|))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( (_module.Triple.Trio_q d))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (_module.Triple.Trio_q d@@0) (exists ((|a#170#0#0| T@U) (|a#170#1#0| T@U) (|a#170#2#0| T@U) ) (! (= d@@0 (|#_module.Triple.Trio| |a#170#0#0| |a#170#1#0| |a#170#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1559|
)))
 :qid |unknown.0:0|
 :skolemid |1560|
 :pattern ( (_module.Triple.Trio_q d@@0))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@2)) (not (|Set#IsMember| b@@5 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|h#0| T@U) (|cmd#0| T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.SetC#canCall| |h#0| |cmd#0| |c#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |h#0| Tclass._module.HashValue) ($Is DatatypeTypeType |cmd#0| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar)))) ($IsBox |c#0| Tclass._module.Cache)))) (and (|Set#Equal| (_module.__default.DomC (_module.__default.SetC |h#0| |cmd#0| |c#0|)) (|Set#Union| (_module.__default.DomC |c#0|) (|Set#UnionOne| |Set#Empty| |h#0|))) ($IsBox (_module.__default.SetC |h#0| |cmd#0| |c#0|) Tclass._module.Cache)))
 :qid |CloudMakeConsistentBuildslegacydfy.38:21|
 :skolemid |731|
 :pattern ( (_module.__default.SetC |h#0| |cmd#0| |c#0|))
))))
(assert (forall ((_module.Triple$A@@4 T@U) (_module.Triple$B@@4 T@U) (_module.Triple$C@@4 T@U) (|a#171#0#0| T@U) (|a#171#1#0| T@U) (|a#171#2#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h)  (and (and ($IsAllocBox |a#171#0#0| _module.Triple$A@@4 $h) ($IsAllocBox |a#171#1#0| _module.Triple$B@@4 $h)) ($IsAllocBox |a#171#2#0| _module.Triple$C@@4 $h))))
 :qid |unknown.0:0|
 :skolemid |1562|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Expression)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($IsBox bx@@1 Tclass._module.Expression))
)))
(assert (forall ((_module.Triple$A@@5 T@U) (_module.Triple$B@@5 T@U) (_module.Triple$C@@5 T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)) (_module.Triple.Trio_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1577|
 :pattern ( (_module.Triple.Trio_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@3)  (or (|Set#IsMember| a@@9 o@@3) (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@3))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((_module.Triple$A@@6 T@U) (_module.Triple$B@@6 T@U) (_module.Triple$C@@6 T@U) (|a#171#0#0@@0| T@U) (|a#171#1#0@@0| T@U) (|a#171#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6))  (and (and ($IsBox |a#171#0#0@@0| _module.Triple$A@@6) ($IsBox |a#171#1#0@@0| _module.Triple$B@@6)) ($IsBox |a#171#2#0@@0| _module.Triple$C@@6)))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
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
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
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
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
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
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 10)
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
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@6)))
)))
(assert (forall ((d@@3 T@U) (_module.Triple$A@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Triple.Trio_q d@@3) (exists ((_module.Triple$B@@7 T@U) (_module.Triple$C@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@0)
 :qid |unknown.0:0|
 :skolemid |1563|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@0))
)))) ($IsAllocBox (_module.Triple.fst d@@3) _module.Triple$A@@7 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($IsAllocBox (_module.Triple.fst d@@3) _module.Triple$A@@7 $h@@0))
)))
(assert (forall ((d@@4 T@U) (_module.Triple$B@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Triple.Trio_q d@@4) (exists ((_module.Triple$A@@8 T@U) (_module.Triple$C@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@1))
)))) ($IsAllocBox (_module.Triple.snd d@@4) _module.Triple$B@@8 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1566|
 :pattern ( ($IsAllocBox (_module.Triple.snd d@@4) _module.Triple$B@@8 $h@@1))
)))
(assert (forall ((d@@5 T@U) (_module.Triple$C@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Triple.Trio_q d@@5) (exists ((_module.Triple$A@@9 T@U) (_module.Triple$B@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@2))
)))) ($IsAllocBox (_module.Triple.trd d@@5) _module.Triple$C@@9 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsAllocBox (_module.Triple.trd d@@5) _module.Triple$C@@9 $h@@2))
)))
(assert (forall ((d@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@6 Tclass._module.Expression)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Expression $h@@3))
 :qid |unknown.0:0|
 :skolemid |1405|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Expression $h@@3))
)))
(assert (= (Tag Tclass._module.Expression) Tagclass._module.Expression))
(assert (= (TagFamily Tclass._module.Expression) tytagFamily$Expression))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|_module.Triple#Equal| a@@13 b@@10)  (and (and (= (_module.Triple.fst a@@13) (_module.Triple.fst b@@10)) (= (_module.Triple.snd a@@13) (_module.Triple.snd b@@10))) (= (_module.Triple.trd a@@13) (_module.Triple.trd b@@10))))
 :qid |unknown.0:0|
 :skolemid |1578|
 :pattern ( (|_module.Triple#Equal| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@14 o@@4) (|Set#IsMember| b@@11 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@4))
 :pattern ( (|Set#IsMember| b@@11 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
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
(declare-fun |h#0@@0| () T@U)
(declare-fun |cmd#0@@0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.SetC)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon4_Else_correct true))
(let ((anon4_Then_correct  (=> ($IsBox (_module.__default.SetC |h#0@@0| |cmd#0@@0| |c#0@@1|) Tclass._module.Cache) (=> (and (and ($IsAllocBox |h#0@@0| Tclass._module.HashValue $Heap) ($IsAlloc DatatypeTypeType |cmd#0@@0| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar)) $Heap)) (and ($IsAllocBox |c#0@@1| Tclass._module.Cache $Heap) (= (ControlFlow 0 2) (- 0 1)))) (or (and (and (= |h#0@@0| |h#0@@0|) (|_module.Triple#Equal| |cmd#0@@0| |cmd#0@@0|)) (= |c#0@@1| |c#0@@1|)) (< (DtRank |cmd#0@@0|) (DtRank |cmd#0@@0|)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) 2) anon4_Then_correct) (=> (= (ControlFlow 0 4) 3) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($IsBox |h#0@@0| Tclass._module.HashValue)) (and (and ($Is DatatypeTypeType |cmd#0@@0| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar))) ($IsBox |c#0@@1| Tclass._module.Cache)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
