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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Example1 () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun Tagclass._module.Example2 () T@U)
(declare-fun Tagclass._module.Example4 () T@U)
(declare-fun Tagclass._module.IntList () T@U)
(declare-fun |##_module.Example1.Example1| () T@U)
(declare-fun |##_module.Example2.Ex2a| () T@U)
(declare-fun |##_module.Example2.Ex2b| () T@U)
(declare-fun |##_module.Example4.Ex4a| () T@U)
(declare-fun |##_module.Example4.Ex4b| () T@U)
(declare-fun |##_module.IntList.Nil| () T@U)
(declare-fun |##_module.IntList.Cons| () T@U)
(declare-fun tytagFamily$Example1 () T@U)
(declare-fun tytagFamily$uint32 () T@U)
(declare-fun tytagFamily$Example2 () T@U)
(declare-fun tytagFamily$Example4 () T@U)
(declare-fun tytagFamily$IntList () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.IntList.Cons| (Int T@U) T@U)
(declare-fun Tclass._module.IntList () T@U)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Example4.Ex4a| () T@U)
(declare-fun |#_module.Example4.Ex4b| () T@U)
(declare-fun |#_module.IntList.Nil| () T@U)
(declare-fun _module.Example1.Example1_q (T@U) Bool)
(declare-fun Tclass._module.Example1 () T@U)
(declare-fun Tclass._module.Example4 () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Example2.Ex2a_q (T@U) Bool)
(declare-fun _module.Example2.Ex2b_q (T@U) Bool)
(declare-fun _module.IntList.Nil_q (T@U) Bool)
(declare-fun _module.IntList.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Example1.Example1| (Int Bool) T@U)
(declare-fun |#_module.Example2.Ex2a| (Int) T@U)
(declare-fun |#_module.Example2.Ex2b| (Bool) T@U)
(declare-fun Tclass._module.Example2 () T@U)
(declare-fun _module.Example1.b (T@U) Bool)
(declare-fun _module.Example2.b (T@U) Bool)
(declare-fun _module.Example1.u (T@U) Int)
(declare-fun _module.IntList.hd (T@U) Int)
(declare-fun _module.IntList.tl (T@U) T@U)
(declare-fun _module.Example2.u (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Example1 Tagclass._module.uint32 Tagclass._module.Example2 Tagclass._module.Example4 Tagclass._module.IntList |##_module.Example1.Example1| |##_module.Example2.Ex2a| |##_module.Example2.Ex2b| |##_module.Example4.Ex4a| |##_module.Example4.Ex4b| |##_module.IntList.Nil| |##_module.IntList.Cons| tytagFamily$Example1 tytagFamily$uint32 tytagFamily$Example2 tytagFamily$Example4 tytagFamily$IntList)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#56#0#0| Int) (|a#56#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IntList.Cons| |a#56#0#0| |a#56#1#0|) Tclass._module.IntList)  (and ($Is intType (int_2_U |a#56#0#0|) Tclass._module.uint32) ($Is DatatypeTypeType |a#56#1#0| Tclass._module.IntList)))
 :qid |datatypesdfy.116:10|
 :skolemid |812|
 :pattern ( ($Is DatatypeTypeType (|#_module.IntList.Cons| |a#56#0#0| |a#56#1#0|) Tclass._module.IntList))
)))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (DatatypeCtorId |#_module.Example4.Ex4a|) |##_module.Example4.Ex4a|))
(assert (= (DatatypeCtorId |#_module.Example4.Ex4b|) |##_module.Example4.Ex4b|))
(assert (= (DatatypeCtorId |#_module.IntList.Nil|) |##_module.IntList.Nil|))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Example1) (_module.Example1.Example1_q d))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (_module.Example1.Example1_q d) ($Is DatatypeTypeType d Tclass._module.Example1))
)))
(assert ($Is DatatypeTypeType |#_module.Example4.Ex4a| Tclass._module.Example4))
(assert ($Is DatatypeTypeType |#_module.Example4.Ex4b| Tclass._module.Example4))
(assert ($Is DatatypeTypeType |#_module.IntList.Nil| Tclass._module.IntList))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Example1.Example1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Example1.Example1|))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (_module.Example1.Example1_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Example2.Ex2a_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Example2.Ex2a|))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (_module.Example2.Ex2a_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Example2.Ex2b_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Example2.Ex2b|))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.Example2.Ex2b_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.IntList.Nil_q d@@3) (= (DatatypeCtorId d@@3) |##_module.IntList.Nil|))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (_module.IntList.Nil_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.IntList.Cons_q d@@4) (= (DatatypeCtorId d@@4) |##_module.IntList.Cons|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.IntList.Cons_q d@@4))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.Example1.Example1| |a#11#0#0| |a#11#1#0|) Tclass._module.Example1)  (and ($Is intType (int_2_U |a#11#0#0|) Tclass._module.uint32) ($Is boolType (bool_2_U |a#11#1#0|) TBool)))
 :qid |datatypesdfy.9:30|
 :skolemid |570|
 :pattern ( ($Is DatatypeTypeType (|#_module.Example1.Example1| |a#11#0#0| |a#11#1#0|) Tclass._module.Example1))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Example1.Example1_q d@@5) (exists ((|a#10#0#0| Int) (|a#10#1#0| Bool) ) (! (= d@@5 (|#_module.Example1.Example1| |a#10#0#0| |a#10#1#0|))
 :qid |datatypesdfy.9:30|
 :skolemid |568|
)))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (_module.Example1.Example1_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.IntList.Cons_q d@@6) (exists ((|a#55#0#0| Int) (|a#55#1#0| T@U) ) (! (= d@@6 (|#_module.IntList.Cons| |a#55#0#0| |a#55#1#0|))
 :qid |datatypesdfy.116:10|
 :skolemid |810|
)))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.IntList.Cons_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.IntList.Nil_q d@@7) (= d@@7 |#_module.IntList.Nil|))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.IntList.Nil_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Example2.Ex2a_q d@@8) (exists ((|a#16#0#0| Int) ) (! (= d@@8 (|#_module.Example2.Ex2a| |a#16#0#0|))
 :qid |datatypesdfy.10:26|
 :skolemid |583|
)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.Example2.Ex2a_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Example2.Ex2b_q d@@9) (exists ((|a#21#0#0| Bool) ) (! (= d@@9 (|#_module.Example2.Ex2b| |a#21#0#0|))
 :qid |datatypesdfy.10:43|
 :skolemid |591|
)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (_module.Example2.Ex2b_q d@@9))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#17#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Example2.Ex2a| |a#17#0#0|) Tclass._module.Example2) ($Is intType (int_2_U |a#17#0#0|) Tclass._module.uint32))
 :qid |datatypesdfy.10:26|
 :skolemid |585|
 :pattern ( ($Is DatatypeTypeType (|#_module.Example2.Ex2a| |a#17#0#0|) Tclass._module.Example2))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Bool) ) (! (= (_module.Example1.b (|#_module.Example1.Example1| |a#14#0#0| |a#14#1#0|)) |a#14#1#0|)
 :qid |datatypesdfy.9:30|
 :skolemid |575|
 :pattern ( (|#_module.Example1.Example1| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#24#0#0| Bool) ) (! (= (_module.Example2.b (|#_module.Example2.Ex2b| |a#24#0#0|)) |a#24#0#0|)
 :qid |datatypesdfy.10:43|
 :skolemid |596|
 :pattern ( (|#_module.Example2.Ex2b| |a#24#0#0|))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.Example2) (or (_module.Example2.Ex2a_q d@@10) (_module.Example2.Ex2b_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.Example2.Ex2b_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.Example2))
 :pattern ( (_module.Example2.Ex2a_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.Example2))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> ($Is DatatypeTypeType d@@11 Tclass._module.IntList) (or (_module.IntList.Nil_q d@@11) (_module.IntList.Cons_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.IntList.Cons_q d@@11) ($Is DatatypeTypeType d@@11 Tclass._module.IntList))
 :pattern ( (_module.IntList.Nil_q d@@11) ($Is DatatypeTypeType d@@11 Tclass._module.IntList))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| Bool) ) (! (= (DatatypeCtorId (|#_module.Example1.Example1| |a#9#0#0| |a#9#1#0|)) |##_module.Example1.Example1|)
 :qid |datatypesdfy.9:30|
 :skolemid |566|
 :pattern ( (|#_module.Example1.Example1| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| Bool) ) (! (= (_module.Example1.u (|#_module.Example1.Example1| |a#13#0#0| |a#13#1#0|)) |a#13#0#0|)
 :qid |datatypesdfy.9:30|
 :skolemid |574|
 :pattern ( (|#_module.Example1.Example1| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#54#0#0| Int) (|a#54#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.IntList.Cons| |a#54#0#0| |a#54#1#0|)) |##_module.IntList.Cons|)
 :qid |datatypesdfy.116:10|
 :skolemid |808|
 :pattern ( (|#_module.IntList.Cons| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#58#0#0| Int) (|a#58#1#0| T@U) ) (! (= (_module.IntList.hd (|#_module.IntList.Cons| |a#58#0#0| |a#58#1#0|)) |a#58#0#0|)
 :qid |datatypesdfy.116:10|
 :skolemid |816|
 :pattern ( (|#_module.IntList.Cons| |a#58#0#0| |a#58#1#0|))
)))
(assert (forall ((|a#59#0#0| Int) (|a#59#1#0| T@U) ) (! (= (_module.IntList.tl (|#_module.IntList.Cons| |a#59#0#0| |a#59#1#0|)) |a#59#1#0|)
 :qid |datatypesdfy.116:10|
 :skolemid |817|
 :pattern ( (|#_module.IntList.Cons| |a#59#0#0| |a#59#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Example2.Ex2a| |a#15#0#0|)) |##_module.Example2.Ex2a|)
 :qid |datatypesdfy.10:26|
 :skolemid |581|
 :pattern ( (|#_module.Example2.Ex2a| |a#15#0#0|))
)))
(assert (forall ((|a#19#0#0| Int) ) (! (= (_module.Example2.u (|#_module.Example2.Ex2a| |a#19#0#0|)) |a#19#0#0|)
 :qid |datatypesdfy.10:26|
 :skolemid |588|
 :pattern ( (|#_module.Example2.Ex2a| |a#19#0#0|))
)))
(assert (forall ((|a#20#0#0| Bool) ) (! (= (DatatypeCtorId (|#_module.Example2.Ex2b| |a#20#0#0|)) |##_module.Example2.Ex2b|)
 :qid |datatypesdfy.10:43|
 :skolemid |589|
 :pattern ( (|#_module.Example2.Ex2b| |a#20#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#60#0#0| Int) (|a#60#1#0| T@U) ) (! (< (DtRank |a#60#1#0|) (DtRank (|#_module.IntList.Cons| |a#60#0#0| |a#60#1#0|)))
 :qid |datatypesdfy.116:10|
 :skolemid |818|
 :pattern ( (|#_module.IntList.Cons| |a#60#0#0| |a#60#1#0|))
)))
(assert (forall ((|a#22#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.Example2.Ex2b| |a#22#0#0|) Tclass._module.Example2) ($Is boolType (bool_2_U |a#22#0#0|) TBool))
 :qid |datatypesdfy.10:43|
 :skolemid |593|
 :pattern ( ($Is DatatypeTypeType (|#_module.Example2.Ex2b| |a#22#0#0|) Tclass._module.Example2))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |874|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@12 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Example1.Example1_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Example1 $h@@0))) ($IsAlloc boolType (bool_2_U (_module.Example1.b d@@12)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Example1.b d@@12)) TBool $h@@0))
)))
(assert (forall ((d@@13 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Example2.Ex2b_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Example2 $h@@1))) ($IsAlloc boolType (bool_2_U (_module.Example2.b d@@13)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Example2.b d@@13)) TBool $h@@1))
)))
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@14 Tclass._module.Example1)) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Example1 $h@@2))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Example1 $h@@2))
)))
(assert (forall ((d@@15 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@15 Tclass._module.Example2)) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Example2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Example2 $h@@3))
)))
(assert (forall ((d@@16 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@16 Tclass._module.Example4)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Example4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Example4 $h@@4))
)))
(assert (forall ((d@@17 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@17 Tclass._module.IntList)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.IntList $h@@5))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.IntList $h@@5))
)))
(assert (= (Tag Tclass._module.Example1) Tagclass._module.Example1))
(assert (= (TagFamily Tclass._module.Example1) tytagFamily$Example1))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (= (Tag Tclass._module.Example2) Tagclass._module.Example2))
(assert (= (TagFamily Tclass._module.Example2) tytagFamily$Example2))
(assert (= (Tag Tclass._module.Example4) Tagclass._module.Example4))
(assert (= (TagFamily Tclass._module.Example4) tytagFamily$Example4))
(assert (= (Tag Tclass._module.IntList) Tagclass._module.IntList))
(assert (= (TagFamily Tclass._module.IntList) tytagFamily$IntList))
(assert (= |#_module.Example4.Ex4a| (Lit DatatypeTypeType |#_module.Example4.Ex4a|)))
(assert (= |#_module.Example4.Ex4b| (Lit DatatypeTypeType |#_module.Example4.Ex4b|)))
(assert (= |#_module.IntList.Nil| (Lit DatatypeTypeType |#_module.IntList.Nil|)))
(assert (forall ((d@@18 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Example1.Example1_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Example1 $h@@6))) ($IsAlloc intType (int_2_U (_module.Example1.u d@@18)) Tclass._module.uint32 $h@@6))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Example1.u d@@18)) Tclass._module.uint32 $h@@6))
)))
(assert (forall ((d@@19 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Example2.Ex2a_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Example2 $h@@7))) ($IsAlloc intType (int_2_U (_module.Example2.u d@@19)) Tclass._module.uint32 $h@@7))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Example2.u d@@19)) Tclass._module.uint32 $h@@7))
)))
(assert (forall ((d@@20 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.IntList.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.IntList $h@@8))) ($IsAlloc intType (int_2_U (_module.IntList.hd d@@20)) Tclass._module.uint32 $h@@8))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc intType (int_2_U (_module.IntList.hd d@@20)) Tclass._module.uint32 $h@@8))
)))
(assert (forall ((d@@21 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.IntList.Cons_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.IntList $h@@9))) ($IsAlloc DatatypeTypeType (_module.IntList.tl d@@21) Tclass._module.IntList $h@@9))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.IntList.tl d@@21) Tclass._module.IntList $h@@9))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) ) (! (= (|#_module.Example1.Example1| (LitInt |a#12#0#0|) (U_2_bool (Lit boolType |a#12#1#0|))) (Lit DatatypeTypeType (|#_module.Example1.Example1| |a#12#0#0| (U_2_bool |a#12#1#0|))))
 :qid |datatypesdfy.9:30|
 :skolemid |573|
 :pattern ( (|#_module.Example1.Example1| (LitInt |a#12#0#0|) (U_2_bool (Lit boolType |a#12#1#0|))))
)))
(assert (forall ((|a#57#0#0| Int) (|a#57#1#0| T@U) ) (! (= (|#_module.IntList.Cons| (LitInt |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|)) (Lit DatatypeTypeType (|#_module.IntList.Cons| |a#57#0#0| |a#57#1#0|)))
 :qid |datatypesdfy.116:10|
 :skolemid |815|
 :pattern ( (|#_module.IntList.Cons| (LitInt |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#18#0#0| Int) ) (! (= (|#_module.Example2.Ex2a| (LitInt |a#18#0#0|)) (Lit DatatypeTypeType (|#_module.Example2.Ex2a| |a#18#0#0|)))
 :qid |datatypesdfy.10:26|
 :skolemid |587|
 :pattern ( (|#_module.Example2.Ex2a| (LitInt |a#18#0#0|)))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= (|#_module.Example2.Ex2b| (U_2_bool (Lit boolType |a#23#0#0|))) (Lit DatatypeTypeType (|#_module.Example2.Ex2b| (U_2_bool |a#23#0#0|))))
 :qid |datatypesdfy.10:43|
 :skolemid |595|
 :pattern ( (|#_module.Example2.Ex2b| (U_2_bool (Lit boolType |a#23#0#0|))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |e1#0@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |e2#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |e2#0@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |x0##0@0| () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |x1##0@0| () T@U)
(declare-fun |y0##0@0| () T@U)
(declare-fun |y1##0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |x0##1@0| () T@U)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |x1##1@0| () T@U)
(declare-fun |y0##1@0| () T@U)
(declare-fun |y1##1@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |x0##2@0| () T@U)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |x1##2@0| () T@U)
(declare-fun |y0##2@0| () T@U)
(declare-fun |y1##2@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |e1#0| () T@U)
(declare-fun |e2#0| () T@U)
(declare-fun |len#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 22))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (and (= |e1#0@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 22) (U_2_bool (Lit boolType (bool_2_U false)))))) (= |newtype$check#1@0| (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |e2#0@0| (Lit DatatypeTypeType (|#_module.Example2.Ex2a| (LitInt 42)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |datatypesdfy.37:8|
 :skolemid |489|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |e2#0@1| (Lit DatatypeTypeType (|#_module.Example2.Ex2b| (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |datatypesdfy.37:8|
 :skolemid |489|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |datatypesdfy.49:8|
 :skolemid |495|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |datatypesdfy.76:8|
 :skolemid |513|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |newtype$check#2@0| (LitInt 42))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (and (= |x0##0@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 42) (U_2_bool (Lit boolType (bool_2_U true)))))) (= |newtype$check#3@0| (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |x1##0@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 42) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (and (= |y0##0@0| (Lit DatatypeTypeType |#_module.Example4.Ex4b|)) (= |y1##0@0| (Lit DatatypeTypeType |#_module.Example4.Ex4b|))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |datatypesdfy.83:8|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |newtype$check#4@0| (LitInt 42)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (and (= |x0##1@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 42) (U_2_bool (Lit boolType (bool_2_U false)))))) (= |newtype$check#5@0| (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |x1##1@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 42) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (and (= |y0##1@0| (Lit DatatypeTypeType |#_module.Example4.Ex4a|)) (= |y1##1@0| (Lit DatatypeTypeType |#_module.Example4.Ex4a|))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |datatypesdfy.83:8|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |newtype$check#6@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (=> (and (= |x0##2@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 2) (U_2_bool (Lit boolType (bool_2_U false)))))) (= |newtype$check#7@0| (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296)) (=> (= |x1##2@0| (Lit DatatypeTypeType (|#_module.Example1.Example1| (LitInt 42) (U_2_bool (Lit boolType (bool_2_U false)))))) (=> (and (= |y0##2@0| (Lit DatatypeTypeType |#_module.Example4.Ex4a|)) (= |y1##2@0| (Lit DatatypeTypeType |#_module.Example4.Ex4b|))) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |datatypesdfy.83:8|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |datatypesdfy.108:8|
 :skolemid |526|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |newtype$check#8@0| (LitInt 15)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296)) (=> (= |newtype$check#9@0| (LitInt 18)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296)) (=> (and (= |newtype$check#10@0| (LitInt 330)) (= (ControlFlow 0 2) (- 0 1))) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |e1#0| Tclass._module.Example1) ($IsAlloc DatatypeTypeType |e1#0| Tclass._module.Example1 $Heap)) true) (and (and ($Is DatatypeTypeType |e2#0| Tclass._module.Example2) ($IsAlloc DatatypeTypeType |e2#0| Tclass._module.Example2 $Heap)) true)) (and (and (and (<= (LitInt 0) |len#0|) (< |len#0| 4294967296)) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 13) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
