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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.aexp () T@U)
(declare-fun Tagclass._module.bexp () T@U)
(declare-fun |##_module.aexp.N| () T@U)
(declare-fun |##_module.aexp.V| () T@U)
(declare-fun |##_module.aexp.Plus| () T@U)
(declare-fun |##_module.bexp.Bc| () T@U)
(declare-fun |##_module.bexp.Not| () T@U)
(declare-fun |##_module.bexp.And| () T@U)
(declare-fun |##_module.bexp.Less| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$aexp () T@U)
(declare-fun tytagFamily$bexp () T@U)
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
(declare-fun |#_module.aexp.Plus| (T@U T@U) T@U)
(declare-fun Tclass._module.aexp () T@U)
(declare-fun |#_module.bexp.And| (T@U T@U) T@U)
(declare-fun Tclass._module.bexp () T@U)
(declare-fun |#_module.bexp.Less| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.aexp.V| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.aval (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |_module.__default.aval#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.aexp.N_q (T@U) Bool)
(declare-fun _module.aexp.V_q (T@U) Bool)
(declare-fun _module.aexp._1 (T@U) T@U)
(declare-fun _module.aexp._0 (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.aexp.n (T@U) Int)
(declare-fun SeqType () T@T)
(declare-fun _module.aexp.x (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun _module.__default.bval (T@U T@U T@U) Bool)
(declare-fun |_module.__default.bval#canCall| (T@U T@U) Bool)
(declare-fun _module.bexp.Bc_q (T@U) Bool)
(declare-fun _module.bexp.Not_q (T@U) Bool)
(declare-fun _module.bexp.op (T@U) T@U)
(declare-fun _module.bexp.And_q (T@U) Bool)
(declare-fun _module.bexp._1 (T@U) T@U)
(declare-fun _module.bexp._0 (T@U) T@U)
(declare-fun _module.bexp.a1 (T@U) T@U)
(declare-fun _module.bexp.a0 (T@U) T@U)
(declare-fun _module.bexp.v (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.aexp.Plus_q (T@U) Bool)
(declare-fun _module.bexp.Less_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.aexp.N| (Int) T@U)
(declare-fun |#_module.bexp.Bc| (Bool) T@U)
(declare-fun |#_module.bexp.Not| (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.aexp Tagclass._module.bexp |##_module.aexp.N| |##_module.aexp.V| |##_module.aexp.Plus| |##_module.bexp.Bc| |##_module.bexp.Not| |##_module.bexp.And| |##_module.bexp.Less| |tytagFamily$_tuple#2| tytagFamily$aexp tytagFamily$bexp)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp)  (and ($Is DatatypeTypeType |a#26#0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a#26#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1452|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.And| |a#45#0#0| |a#45#1#0|) Tclass._module.bexp)  (and ($Is DatatypeTypeType |a#45#0#0| Tclass._module.bexp) ($Is DatatypeTypeType |a#45#1#0| Tclass._module.bexp)))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1488|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.And| |a#45#0#0| |a#45#1#0|) Tclass._module.bexp))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Less| |a#53#0#0| |a#53#1#0|) Tclass._module.bexp)  (and ($Is DatatypeTypeType |a#53#0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a#53#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1500|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Less| |a#53#0#0| |a#53#1#0|) Tclass._module.bexp))
)))
(assert (forall ((|a#22#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#22#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#0#0| i))) (DtRank (|#_module.aexp.V| |a#22#0#0|))))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1446|
 :pattern ( (|Seq#Index| |a#22#0#0| i) (|#_module.aexp.V| |a#22#0#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (= (Ctor MapType) 4) (= (Ctor SeqType) 5)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass._module.aexp) ($Is MapType |s#0| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)))))) (let ((|a1#3| (Lit DatatypeTypeType (_module.aexp._1 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#3| (Lit DatatypeTypeType (_module.aexp._0 (Lit DatatypeTypeType |a#0|)))))
 (and (|_module.__default.aval#canCall| |a0#3| (Lit MapType |s#0|)) (|_module.__default.aval#canCall| |a1#3| (Lit MapType |s#0|))))))) (= (_module.__default.aval ($LS $ly) (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0|)) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)) (let ((|n#2| (LitInt (_module.aexp.n (Lit DatatypeTypeType |a#0|)))))
|n#2|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)) (let ((|x#2| (Lit SeqType (_module.aexp.x (Lit DatatypeTypeType |a#0|)))))
(ite (|Set#IsMember| (|Map#Domain| |s#0|) ($Box SeqType |x#2|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |s#0|)) ($Box SeqType |x#2|)))) 0)) (let ((|a1#2| (Lit DatatypeTypeType (_module.aexp._1 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#2| (Lit DatatypeTypeType (_module.aexp._0 (Lit DatatypeTypeType |a#0|)))))
(LitInt (+ (_module.__default.aval ($LS $ly) |a0#2| (Lit MapType |s#0|)) (_module.__default.aval ($LS $ly) |a1#2| (Lit MapType |s#0|)))))))))))
 :qid |NipkowKleinchapter7dfy.16:16|
 :weight 3
 :skolemid |705|
 :pattern ( (_module.__default.aval ($LS $ly) (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|b#0| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0| Tclass._module.bexp) ($Is MapType |s#0@@0| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|))))) (let ((|b#4| (Lit DatatypeTypeType (_module.bexp.op (Lit DatatypeTypeType |b#0|)))))
(|_module.__default.bval#canCall| |b#4| (Lit MapType |s#0@@0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0|))))) (let ((|b1#3| (Lit DatatypeTypeType (_module.bexp._1 (Lit DatatypeTypeType |b#0|)))))
(let ((|b0#3| (Lit DatatypeTypeType (_module.bexp._0 (Lit DatatypeTypeType |b#0|)))))
 (and (|_module.__default.bval#canCall| |b0#3| (Lit MapType |s#0@@0|)) (=> (_module.__default.bval ($LS $ly@@0) |b0#3| (Lit MapType |s#0@@0|)) (|_module.__default.bval#canCall| |b1#3| (Lit MapType |s#0@@0|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0|)))))) (let ((|a1#3@@0| (Lit DatatypeTypeType (_module.bexp.a1 (Lit DatatypeTypeType |b#0|)))))
(let ((|a0#3@@0| (Lit DatatypeTypeType (_module.bexp.a0 (Lit DatatypeTypeType |b#0|)))))
 (and (|_module.__default.aval#canCall| |a0#3@@0| (Lit MapType |s#0@@0|)) (|_module.__default.aval#canCall| |a1#3@@0| (Lit MapType |s#0@@0|)))))))))) (= (_module.__default.bval ($LS $ly@@0) (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@0|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0|)) (let ((|v#2| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0|)))))))
|v#2|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|)) (let ((|b#3| (Lit DatatypeTypeType (_module.bexp.op (Lit DatatypeTypeType |b#0|)))))
 (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.bval ($LS $ly@@0) |b#3| (Lit MapType |s#0@@0|))))))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0|)) (U_2_bool (let ((|b1#2| (Lit DatatypeTypeType (_module.bexp._1 (Lit DatatypeTypeType |b#0|)))))
(let ((|b0#2| (Lit DatatypeTypeType (_module.bexp._0 (Lit DatatypeTypeType |b#0|)))))
(Lit boolType (bool_2_U  (and (_module.__default.bval ($LS $ly@@0) |b0#2| (Lit MapType |s#0@@0|)) (_module.__default.bval ($LS $ly@@0) |b1#2| (Lit MapType |s#0@@0|)))))))) (U_2_bool (let ((|a1#2@@0| (Lit DatatypeTypeType (_module.bexp.a1 (Lit DatatypeTypeType |b#0|)))))
(let ((|a0#2@@0| (Lit DatatypeTypeType (_module.bexp.a0 (Lit DatatypeTypeType |b#0|)))))
(Lit boolType (bool_2_U (< (_module.__default.aval ($LS $LZ) |a0#2@@0| (Lit MapType |s#0@@0|)) (_module.__default.aval ($LS $LZ) |a1#2@@0| (Lit MapType |s#0@@0|))))))))))))))
 :qid |NipkowKleinchapter7dfy.25:16|
 :weight 3
 :skolemid |714|
 :pattern ( (_module.__default.bval ($LS $ly@@0) (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@0|)))
))))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.aexp.N_q d@@1) (= (DatatypeCtorId d@@1) |##_module.aexp.N|))
 :qid |unknown.0:0|
 :skolemid |1431|
 :pattern ( (_module.aexp.N_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.aexp.V_q d@@2) (= (DatatypeCtorId d@@2) |##_module.aexp.V|))
 :qid |unknown.0:0|
 :skolemid |1439|
 :pattern ( (_module.aexp.V_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.aexp.Plus_q d@@3) (= (DatatypeCtorId d@@3) |##_module.aexp.Plus|))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( (_module.aexp.Plus_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.bexp.Bc_q d@@4) (= (DatatypeCtorId d@@4) |##_module.bexp.Bc|))
 :qid |unknown.0:0|
 :skolemid |1468|
 :pattern ( (_module.bexp.Bc_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.bexp.Not_q d@@5) (= (DatatypeCtorId d@@5) |##_module.bexp.Not|))
 :qid |unknown.0:0|
 :skolemid |1476|
 :pattern ( (_module.bexp.Not_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.bexp.And_q d@@6) (= (DatatypeCtorId d@@6) |##_module.bexp.And|))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( (_module.bexp.And_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.bexp.Less_q d@@7) (= (DatatypeCtorId d@@7) |##_module.bexp.Less|))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( (_module.bexp.Less_q d@@7))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@8) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@8 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.aexp.Plus_q d@@9) (exists ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= d@@9 (|#_module.aexp.Plus| |a#25#0#0| |a#25#1#0|))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1450|
)))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( (_module.aexp.Plus_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.bexp.And_q d@@10) (exists ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= d@@10 (|#_module.bexp.And| |a#44#0#0| |a#44#1#0|))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1486|
)))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( (_module.bexp.And_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.bexp.Less_q d@@11) (exists ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= d@@11 (|#_module.bexp.Less| |a#52#0#0| |a#52#1#0|))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1498|
)))
 :qid |unknown.0:0|
 :skolemid |1499|
 :pattern ( (_module.bexp.Less_q d@@11))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.aexp.N_q d@@12) (exists ((|a#13#0#0| Int) ) (! (= d@@12 (|#_module.aexp.N| |a#13#0#0|))
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1432|
)))
 :qid |unknown.0:0|
 :skolemid |1433|
 :pattern ( (_module.aexp.N_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.aexp.V_q d@@13) (exists ((|a#18#0#0| T@U) ) (! (= d@@13 (|#_module.aexp.V| |a#18#0#0|))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1440|
)))
 :qid |unknown.0:0|
 :skolemid |1441|
 :pattern ( (_module.aexp.V_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.bexp.Bc_q d@@14) (exists ((|a#33#0#0| Bool) ) (! (= d@@14 (|#_module.bexp.Bc| |a#33#0#0|))
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1469|
)))
 :qid |unknown.0:0|
 :skolemid |1470|
 :pattern ( (_module.bexp.Bc_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.bexp.Not_q d@@15) (exists ((|a#38#0#0| T@U) ) (! (= d@@15 (|#_module.bexp.Not| |a#38#0#0|))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1477|
)))
 :qid |unknown.0:0|
 :skolemid |1478|
 :pattern ( (_module.bexp.Not_q d@@15))
)))
(assert (forall (($ly@@1 T@U) (|b#0@@0| T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.bval ($LS $ly@@1) |b#0@@0| |s#0@@1|) (_module.__default.bval $ly@@1 |b#0@@0| |s#0@@1|))
 :qid |NipkowKleinchapter7dfy.25:16|
 :skolemid |708|
 :pattern ( (_module.__default.bval ($LS $ly@@1) |b#0@@0| |s#0@@1|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.aexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.aexp)))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($IsBox bx@@0 Tclass._module.aexp))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.bexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.bexp)))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($IsBox bx@@1 Tclass._module.bexp))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp) ($Is DatatypeTypeType |a#39#0#0| Tclass._module.bexp))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1479|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp))
)))
(assert (forall (($ly@@2 T@U) (|a#0@@0| T@U) (|s#0@@2| T@U) ) (! (= (_module.__default.aval ($LS $ly@@2) |a#0@@0| |s#0@@2|) (_module.__default.aval $ly@@2 |a#0@@0| |s#0@@2|))
 :qid |NipkowKleinchapter7dfy.16:16|
 :skolemid |699|
 :pattern ( (_module.__default.aval ($LS $ly@@2) |a#0@@0| |s#0@@2|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|b#0@@1| T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| |b#0@@1| |s#0@@3|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0@@1| Tclass._module.bexp) ($Is MapType |s#0@@3| (TMap (TSeq TChar) TInt))))) (and (=> (not (_module.bexp.Bc_q |b#0@@1|)) (and (=> (_module.bexp.Not_q |b#0@@1|) (let ((|b#2| (_module.bexp.op |b#0@@1|)))
(|_module.__default.bval#canCall| |b#2| |s#0@@3|))) (=> (not (_module.bexp.Not_q |b#0@@1|)) (and (=> (_module.bexp.And_q |b#0@@1|) (let ((|b1#1| (_module.bexp._1 |b#0@@1|)))
(let ((|b0#1| (_module.bexp._0 |b#0@@1|)))
 (and (|_module.__default.bval#canCall| |b0#1| |s#0@@3|) (=> (_module.__default.bval $ly@@3 |b0#1| |s#0@@3|) (|_module.__default.bval#canCall| |b1#1| |s#0@@3|)))))) (=> (not (_module.bexp.And_q |b#0@@1|)) (let ((|a1#1| (_module.bexp.a1 |b#0@@1|)))
(let ((|a0#1| (_module.bexp.a0 |b#0@@1|)))
 (and (|_module.__default.aval#canCall| |a0#1| |s#0@@3|) (|_module.__default.aval#canCall| |a1#1| |s#0@@3|))))))))) (= (_module.__default.bval ($LS $ly@@3) |b#0@@1| |s#0@@3|) (ite (_module.bexp.Bc_q |b#0@@1|) (let ((|v#0| (_module.bexp.v |b#0@@1|)))
|v#0|) (ite (_module.bexp.Not_q |b#0@@1|) (let ((|b#1| (_module.bexp.op |b#0@@1|)))
 (not (_module.__default.bval $ly@@3 |b#1| |s#0@@3|))) (ite (_module.bexp.And_q |b#0@@1|) (let ((|b1#0| (_module.bexp._1 |b#0@@1|)))
(let ((|b0#0| (_module.bexp._0 |b#0@@1|)))
 (and (_module.__default.bval $ly@@3 |b0#0| |s#0@@3|) (_module.__default.bval $ly@@3 |b1#0| |s#0@@3|)))) (let ((|a1#0| (_module.bexp.a1 |b#0@@1|)))
(let ((|a0#0| (_module.bexp.a0 |b#0@@1|)))
(< (_module.__default.aval ($LS $LZ) |a0#0| |s#0@@3|) (_module.__default.aval ($LS $LZ) |a1#0| |s#0@@3|))))))))))
 :qid |NipkowKleinchapter7dfy.25:16|
 :skolemid |713|
 :pattern ( (_module.__default.bval ($LS $ly@@3) |b#0@@1| |s#0@@3|))
))))
(assert (forall ((|a#36#0#0| Bool) ) (! (= (_module.bexp.v (|#_module.bexp.Bc| |a#36#0#0|)) |a#36#0#0|)
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1474|
 :pattern ( (|#_module.bexp.Bc| |a#36#0#0|))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (= (Ctor charType) 8))
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
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
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
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|)) |##_module.aexp.Plus|)
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1448|
 :pattern ( (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (_module.aexp._0 (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|)) |a#28#0#0|)
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1456|
 :pattern ( (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) ) (! (= (_module.aexp._1 (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|)) |a#30#1#0|)
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1458|
 :pattern ( (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.And| |a#43#0#0| |a#43#1#0|)) |##_module.bexp.And|)
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1484|
 :pattern ( (|#_module.bexp.And| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (_module.bexp._0 (|#_module.bexp.And| |a#47#0#0| |a#47#1#0|)) |a#47#0#0|)
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1492|
 :pattern ( (|#_module.bexp.And| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (_module.bexp._1 (|#_module.bexp.And| |a#49#0#0| |a#49#1#0|)) |a#49#1#0|)
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1494|
 :pattern ( (|#_module.bexp.And| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.Less| |a#51#0#0| |a#51#1#0|)) |##_module.bexp.Less|)
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1496|
 :pattern ( (|#_module.bexp.Less| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (_module.bexp.a0 (|#_module.bexp.Less| |a#55#0#0| |a#55#1#0|)) |a#55#0#0|)
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1504|
 :pattern ( (|#_module.bexp.Less| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (_module.bexp.a1 (|#_module.bexp.Less| |a#57#0#0| |a#57#1#0|)) |a#57#1#0|)
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1506|
 :pattern ( (|#_module.bexp.Less| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
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
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.aexp.N| |a#12#0#0|)) |##_module.aexp.N|)
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1430|
 :pattern ( (|#_module.aexp.N| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| Int) ) (! (= (_module.aexp.n (|#_module.aexp.N| |a#16#0#0|)) |a#16#0#0|)
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1437|
 :pattern ( (|#_module.aexp.N| |a#16#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.V| |a#17#0#0|)) |##_module.aexp.V|)
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1438|
 :pattern ( (|#_module.aexp.V| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (_module.aexp.x (|#_module.aexp.V| |a#21#0#0|)) |a#21#0#0|)
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1445|
 :pattern ( (|#_module.aexp.V| |a#21#0#0|))
)))
(assert (forall ((|a#32#0#0| Bool) ) (! (= (DatatypeCtorId (|#_module.bexp.Bc| |a#32#0#0|)) |##_module.bexp.Bc|)
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1467|
 :pattern ( (|#_module.bexp.Bc| |a#32#0#0|))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.Not| |a#37#0#0|)) |##_module.bexp.Not|)
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1475|
 :pattern ( (|#_module.bexp.Not| |a#37#0#0|))
)))
(assert (forall ((|a#41#0#0| T@U) ) (! (= (_module.bexp.op (|#_module.bexp.Not| |a#41#0#0|)) |a#41#0#0|)
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1482|
 :pattern ( (|#_module.bexp.Not| |a#41#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@6) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@6) t1@@0 h@@2) ($IsAllocBox bx@@6 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@6))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2))
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
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (< (DtRank |a#29#0#0|) (DtRank (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|)))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1457|
 :pattern ( (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) ) (! (< (DtRank |a#31#1#0|) (DtRank (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|)))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1459|
 :pattern ( (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#0#0|) (DtRank (|#_module.bexp.And| |a#48#0#0| |a#48#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1493|
 :pattern ( (|#_module.bexp.And| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (< (DtRank |a#50#1#0|) (DtRank (|#_module.bexp.And| |a#50#0#0| |a#50#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1495|
 :pattern ( (|#_module.bexp.And| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#0#0|) (DtRank (|#_module.bexp.Less| |a#56#0#0| |a#56#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1505|
 :pattern ( (|#_module.bexp.Less| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (< (DtRank |a#58#1#0|) (DtRank (|#_module.bexp.Less| |a#58#0#0| |a#58#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1507|
 :pattern ( (|#_module.bexp.Less| |a#58#0#0| |a#58#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp) ($Is intType (int_2_U |a#14#0#0|) TInt))
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1434|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#34#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Bc| |a#34#0#0|) Tclass._module.bexp) ($Is boolType (bool_2_U |a#34#0#0|) TBool))
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1471|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Bc| |a#34#0#0|) Tclass._module.bexp))
)))
(assert (forall ((bx@@7 T@U) (s@@0 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TMap s@@0 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@7)) bx@@7) ($Is MapType ($Unbox MapType bx@@7) (TMap s@@0 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@7 (TMap s@@0 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (< (|Seq#Rank| |a#23#0#0|) (DtRank (|#_module.aexp.V| |a#23#0#0|)))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1447|
 :pattern ( (|#_module.aexp.V| |a#23#0#0|))
)))
(assert (forall ((|a#42#0#0| T@U) ) (! (< (DtRank |a#42#0#0|) (DtRank (|#_module.bexp.Not| |a#42#0#0|)))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1483|
 :pattern ( (|#_module.bexp.Not| |a#42#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1579|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@16 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.aexp.N_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.aexp $h@@0))) ($IsAlloc intType (int_2_U (_module.aexp.n d@@16)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( ($IsAlloc intType (int_2_U (_module.aexp.n d@@16)) TInt $h@@0))
)))
(assert (forall ((d@@17 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.bexp.Bc_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.bexp $h@@1))) ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@17)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@17)) TBool $h@@1))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 Tclass._module.aexp) (or (or (_module.aexp.N_q d@@18) (_module.aexp.V_q d@@18)) (_module.aexp.Plus_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |1462|
 :pattern ( (_module.aexp.Plus_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.aexp))
 :pattern ( (_module.aexp.V_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.aexp))
 :pattern ( (_module.aexp.N_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.aexp))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@6))
)))
(assert (forall ((d@@19 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@19)) (DtRank d@@19))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@19)))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@9)))
)))
(assert (forall ((bx@@10 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@10)))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@5 t1@@2)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11) t1@@2) ($IsBox bx@@11 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@20 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@20 Tclass._module.aexp)) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.aexp $h@@2))
 :qid |unknown.0:0|
 :skolemid |1460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 Tclass._module.aexp $h@@2))
)))
(assert (forall ((d@@21 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@21 Tclass._module.bexp)) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.bexp $h@@3))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass._module.bexp $h@@3))
)))
(assert (= (Tag Tclass._module.aexp) Tagclass._module.aexp))
(assert (= (TagFamily Tclass._module.aexp) tytagFamily$aexp))
(assert (= (Tag Tclass._module.bexp) Tagclass._module.bexp))
(assert (= (TagFamily Tclass._module.bexp) tytagFamily$bexp))
(assert (forall ((|a#19#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp) ($Is SeqType |a#19#0#0| (TSeq TChar)))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1442|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp))
)))
(assert (forall ((d@@22 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.aexp.V_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.aexp $h@@4))) ($IsAlloc SeqType (_module.aexp.x d@@22) (TSeq TChar) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1443|
 :pattern ( ($IsAlloc SeqType (_module.aexp.x d@@22) (TSeq TChar) $h@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@1| T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| |a#0@@1| |s#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@1| Tclass._module.aexp) ($Is MapType |s#0@@4| (TMap (TSeq TChar) TInt))))) (and (=> (not (_module.aexp.N_q |a#0@@1|)) (=> (not (_module.aexp.V_q |a#0@@1|)) (let ((|a1#1@@0| (_module.aexp._1 |a#0@@1|)))
(let ((|a0#1@@0| (_module.aexp._0 |a#0@@1|)))
 (and (|_module.__default.aval#canCall| |a0#1@@0| |s#0@@4|) (|_module.__default.aval#canCall| |a1#1@@0| |s#0@@4|)))))) (= (_module.__default.aval ($LS $ly@@4) |a#0@@1| |s#0@@4|) (ite (_module.aexp.N_q |a#0@@1|) (let ((|n#0| (_module.aexp.n |a#0@@1|)))
|n#0|) (ite (_module.aexp.V_q |a#0@@1|) (let ((|x#0| (_module.aexp.x |a#0@@1|)))
(ite (|Set#IsMember| (|Map#Domain| |s#0@@4|) ($Box SeqType |x#0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@4|) ($Box SeqType |x#0|)))) 0)) (let ((|a1#0@@0| (_module.aexp._1 |a#0@@1|)))
(let ((|a0#0@@0| (_module.aexp._0 |a#0@@1|)))
(+ (_module.__default.aval $ly@@4 |a0#0@@0| |s#0@@4|) (_module.__default.aval $ly@@4 |a1#0@@0| |s#0@@4|)))))))))
 :qid |NipkowKleinchapter7dfy.16:16|
 :skolemid |704|
 :pattern ( (_module.__default.aval ($LS $ly@@4) |a#0@@1| |s#0@@4|))
))))
(assert (forall ((d@@23 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@23) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@23) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@23) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@24 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@24) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@24 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@24) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@24) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert (forall ((d@@25 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.aexp.Plus_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass._module.aexp $h@@7))) ($IsAlloc DatatypeTypeType (_module.aexp._0 d@@25) Tclass._module.aexp $h@@7))
 :qid |unknown.0:0|
 :skolemid |1453|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._0 d@@25) Tclass._module.aexp $h@@7))
)))
(assert (forall ((d@@26 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.aexp.Plus_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.aexp $h@@8))) ($IsAlloc DatatypeTypeType (_module.aexp._1 d@@26) Tclass._module.aexp $h@@8))
 :qid |unknown.0:0|
 :skolemid |1454|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._1 d@@26) Tclass._module.aexp $h@@8))
)))
(assert (forall ((d@@27 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.bexp.Not_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.bexp $h@@9))) ($IsAlloc DatatypeTypeType (_module.bexp.op d@@27) Tclass._module.bexp $h@@9))
 :qid |unknown.0:0|
 :skolemid |1480|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.op d@@27) Tclass._module.bexp $h@@9))
)))
(assert (forall ((d@@28 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.bexp.And_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.bexp $h@@10))) ($IsAlloc DatatypeTypeType (_module.bexp._0 d@@28) Tclass._module.bexp $h@@10))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._0 d@@28) Tclass._module.bexp $h@@10))
)))
(assert (forall ((d@@29 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.bexp.And_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass._module.bexp $h@@11))) ($IsAlloc DatatypeTypeType (_module.bexp._1 d@@29) Tclass._module.bexp $h@@11))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._1 d@@29) Tclass._module.bexp $h@@11))
)))
(assert (forall ((d@@30 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.bexp.Less_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.bexp $h@@12))) ($IsAlloc DatatypeTypeType (_module.bexp.a0 d@@30) Tclass._module.aexp $h@@12))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.a0 d@@30) Tclass._module.aexp $h@@12))
)))
(assert (forall ((d@@31 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.bexp.Less_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.bexp $h@@13))) ($IsAlloc DatatypeTypeType (_module.bexp.a1 d@@31) Tclass._module.aexp $h@@13))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.a1 d@@31) Tclass._module.aexp $h@@13))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (= (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)) (Lit DatatypeTypeType (|#_module.aexp.Plus| |a#27#0#0| |a#27#1#0|)))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1455|
 :pattern ( (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (|#_module.bexp.And| (Lit DatatypeTypeType |a#46#0#0|) (Lit DatatypeTypeType |a#46#1#0|)) (Lit DatatypeTypeType (|#_module.bexp.And| |a#46#0#0| |a#46#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1491|
 :pattern ( (|#_module.bexp.And| (Lit DatatypeTypeType |a#46#0#0|) (Lit DatatypeTypeType |a#46#1#0|)))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (= (|#_module.bexp.Less| (Lit DatatypeTypeType |a#54#0#0|) (Lit DatatypeTypeType |a#54#1#0|)) (Lit DatatypeTypeType (|#_module.bexp.Less| |a#54#0#0| |a#54#1#0|)))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1503|
 :pattern ( (|#_module.bexp.Less| (Lit DatatypeTypeType |a#54#0#0|) (Lit DatatypeTypeType |a#54#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (|#_module.aexp.N| (LitInt |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.N| |a#15#0#0|)))
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1436|
 :pattern ( (|#_module.aexp.N| (LitInt |a#15#0#0|)))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.V| |a#20#0#0|)))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1444|
 :pattern ( (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) ) (! (= (|#_module.bexp.Bc| (U_2_bool (Lit boolType |a#35#0#0|))) (Lit DatatypeTypeType (|#_module.bexp.Bc| (U_2_bool |a#35#0#0|))))
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1473|
 :pattern ( (|#_module.bexp.Bc| (U_2_bool (Lit boolType |a#35#0#0|))))
)))
(assert (forall ((|a#40#0#0| T@U) ) (! (= (|#_module.bexp.Not| (Lit DatatypeTypeType |a#40#0#0|)) (Lit DatatypeTypeType (|#_module.bexp.Not| |a#40#0#0|)))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1481|
 :pattern ( (|#_module.bexp.Not| (Lit DatatypeTypeType |a#40#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> ($Is DatatypeTypeType d@@32 Tclass._module.bexp) (or (or (or (_module.bexp.Bc_q d@@32) (_module.bexp.Not_q d@@32)) (_module.bexp.And_q d@@32)) (_module.bexp.Less_q d@@32)))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( (_module.bexp.Less_q d@@32) ($Is DatatypeTypeType d@@32 Tclass._module.bexp))
 :pattern ( (_module.bexp.And_q d@@32) ($Is DatatypeTypeType d@@32 Tclass._module.bexp))
 :pattern ( (_module.bexp.Not_q d@@32) ($Is DatatypeTypeType d@@32 Tclass._module.bexp))
 :pattern ( (_module.bexp.Bc_q d@@32) ($Is DatatypeTypeType d@@32 Tclass._module.bexp))
)))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@9 T@U) ) (! ($IsAlloc boolType v@@9 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@9 TBool h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@5))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@6)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@1) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@11 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@6)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is intType v@@14 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@14 TInt))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is boolType v@@15 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@15 TBool))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is charType v@@16 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@16 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b0#Z#0@0| () T@U)
(declare-fun |s#0@@5| () T@U)
(declare-fun |b1#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |b#0@@2| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |b#Z#0@0| () T@U)
(declare-fun |_mcc#0#0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.bval)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon8_correct true))
(let ((anon16_Else_correct  (=> (and (not (_module.__default.bval ($LS $LZ) |b0#Z#0@0| |s#0@@5|)) (= (ControlFlow 0 11) 8)) anon8_correct)))
(let ((anon16_Then_correct  (=> (_module.__default.bval ($LS $LZ) |b0#Z#0@0| |s#0@@5|) (=> (and ($IsAlloc DatatypeTypeType |b1#Z#0@0| Tclass._module.bexp $Heap) ($IsAlloc MapType |s#0@@5| (TMap (TSeq TChar) TInt) $Heap)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (< (DtRank |b1#Z#0@0|) (DtRank |b#0@@2|)) (and (= (DtRank |b1#Z#0@0|) (DtRank |b#0@@2|)) (and (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)) (not (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|))))))) (=> (or (< (DtRank |b1#Z#0@0|) (DtRank |b#0@@2|)) (and (= (DtRank |b1#Z#0@0|) (DtRank |b#0@@2|)) (and (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)) (not (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)))))) (=> (and (|_module.__default.bval#canCall| |b1#Z#0@0| |s#0@@5|) (= (ControlFlow 0 9) 8)) anon8_correct)))))))
(let ((anon15_Then_correct  (=> (= |b#0@@2| (|#_module.bexp.And| |_mcc#2#0| |_mcc#3#0|)) (=> (and ($Is DatatypeTypeType |_mcc#2#0| Tclass._module.bexp) ($Is DatatypeTypeType |_mcc#3#0| Tclass._module.bexp)) (=> (and (and (and (= |let#2#0#0| |_mcc#3#0|) ($Is DatatypeTypeType |let#2#0#0| Tclass._module.bexp)) (and (= |b1#Z#0@0| |let#2#0#0|) (= |let#3#0#0| |_mcc#2#0|))) (and (and ($Is DatatypeTypeType |let#3#0#0| Tclass._module.bexp) (= |b0#Z#0@0| |let#3#0#0|)) (and ($IsAlloc DatatypeTypeType |b0#Z#0@0| Tclass._module.bexp $Heap) ($IsAlloc MapType |s#0@@5| (TMap (TSeq TChar) TInt) $Heap)))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (< (DtRank |b0#Z#0@0|) (DtRank |b#0@@2|)) (and (= (DtRank |b0#Z#0@0|) (DtRank |b#0@@2|)) (and (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)) (not (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|))))))) (=> (or (< (DtRank |b0#Z#0@0|) (DtRank |b#0@@2|)) (and (= (DtRank |b0#Z#0@0|) (DtRank |b#0@@2|)) (and (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)) (not (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)))))) (=> (|_module.__default.bval#canCall| |b0#Z#0@0| |s#0@@5|) (and (=> (= (ControlFlow 0 12) 9) anon16_Then_correct) (=> (= (ControlFlow 0 12) 11) anon16_Else_correct))))))))))
(let ((anon17_Else_correct true))
(let ((anon17_Then_correct true))
(let ((anon15_Else_correct  (=> (or (not (= |b#0@@2| (|#_module.bexp.And| |_mcc#2#0| |_mcc#3#0|))) (not true)) (and (=> (= (ControlFlow 0 7) 5) anon17_Then_correct) (=> (= (ControlFlow 0 7) 6) anon17_Else_correct)))))
(let ((anon14_Else_correct  (=> (or (not (= |b#0@@2| (|#_module.bexp.Not| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 12) anon15_Then_correct) (=> (= (ControlFlow 0 14) 7) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (and (and (= |b#0@@2| (|#_module.bexp.Not| |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.bexp)) (and (= |let#4#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#4#0#0| Tclass._module.bexp))) (and (and (= |b#Z#0@0| |let#4#0#0|) ($IsAlloc DatatypeTypeType |b#Z#0@0| Tclass._module.bexp $Heap)) (and ($IsAlloc MapType |s#0@@5| (TMap (TSeq TChar) TInt) $Heap) (= (ControlFlow 0 4) (- 0 3))))) (or (< (DtRank |b#Z#0@0|) (DtRank |b#0@@2|)) (and (= (DtRank |b#Z#0@0|) (DtRank |b#0@@2|)) (and (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)) (not (|Set#Subset| (|Map#Domain| |s#0@@5|) (|Map#Domain| |s#0@@5|)))))))))
(let ((anon13_Else_correct  (=> (or (not (= |b#0@@2| (|#_module.bexp.Bc| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 15) 4) anon14_Then_correct) (=> (= (ControlFlow 0 15) 14) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon12_Then_correct) (=> (= (ControlFlow 0 16) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |b#0@@2| Tclass._module.bexp) ($Is MapType |s#0@@5| (TMap (TSeq TChar) TInt))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
