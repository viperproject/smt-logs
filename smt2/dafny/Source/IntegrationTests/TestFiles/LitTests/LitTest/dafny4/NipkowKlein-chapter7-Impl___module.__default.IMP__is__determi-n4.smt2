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
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.aexp () T@U)
(declare-fun Tagclass._module.bexp () T@U)
(declare-fun Tagclass._module.com () T@U)
(declare-fun |##_module.aexp.N| () T@U)
(declare-fun |##_module.aexp.V| () T@U)
(declare-fun |##_module.aexp.Plus| () T@U)
(declare-fun |##_module.bexp.Bc| () T@U)
(declare-fun |##_module.bexp.Not| () T@U)
(declare-fun |##_module.bexp.And| () T@U)
(declare-fun |##_module.bexp.Less| () T@U)
(declare-fun |##_module.com.SKIP| () T@U)
(declare-fun |##_module.com.Assign| () T@U)
(declare-fun |##_module.com.Seq| () T@U)
(declare-fun |##_module.com.If| () T@U)
(declare-fun |##_module.com.While| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$aexp () T@U)
(declare-fun tytagFamily$bexp () T@U)
(declare-fun tytagFamily$com () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.big__step (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.com () T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.__default.big__step_h (T@U T@U T@U T@U T@U) Bool)
(declare-fun |#_module.aexp.Plus| (T@U T@U) T@U)
(declare-fun Tclass._module.aexp () T@U)
(declare-fun |#_module.bexp.And| (T@U T@U) T@U)
(declare-fun Tclass._module.bexp () T@U)
(declare-fun |#_module.bexp.Less| (T@U T@U) T@U)
(declare-fun |#_module.com.Seq| (T@U T@U) T@U)
(declare-fun |#_module.com.While| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.com.Assign| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |#_module.com.If| (T@U T@U T@U) T@U)
(declare-fun |#_module.aexp.V| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.com._h4 (T@U) T@U)
(declare-fun _module.com._h5 (T@U) T@U)
(declare-fun _module.com._h6 (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.big__step_h#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.com.SKIP_q (T@U) Bool)
(declare-fun _module.com.Assign_q (T@U) Bool)
(declare-fun _module.com._h1 (T@U) T@U)
(declare-fun |_module.__default.aval#canCall| (T@U T@U) Bool)
(declare-fun _module.com.Seq_q (T@U) Bool)
(declare-fun _module.com._h3 (T@U) T@U)
(declare-fun _module.com._h2 (T@U) T@U)
(declare-fun _module.com.If_q (T@U) Bool)
(declare-fun |_module.__default.bval#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.bval (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.com._h8 (T@U) T@U)
(declare-fun _module.com._h7 (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun _module.com._h0 (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun _module.__default.aval (T@U T@U T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.com.SKIP| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.aexp.N_q (T@U) Bool)
(declare-fun _module.aexp.V_q (T@U) Bool)
(declare-fun _module.aexp._1 (T@U) T@U)
(declare-fun _module.aexp._0 (T@U) T@U)
(declare-fun _module.aexp.n (T@U) Int)
(declare-fun _module.aexp.x (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun _module.bexp.Bc_q (T@U) Bool)
(declare-fun _module.bexp.Not_q (T@U) Bool)
(declare-fun _module.bexp.op (T@U) T@U)
(declare-fun _module.bexp.And_q (T@U) Bool)
(declare-fun _module.bexp._1 (T@U) T@U)
(declare-fun _module.bexp._0 (T@U) T@U)
(declare-fun _module.bexp.a1 (T@U) T@U)
(declare-fun _module.bexp.a0 (T@U) T@U)
(declare-fun _module.bexp.v (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.aexp.Plus_q (T@U) Bool)
(declare-fun _module.bexp.Less_q (T@U) Bool)
(declare-fun _module.com.While_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.aexp.N| (Int) T@U)
(declare-fun |#_module.bexp.Bc| (Bool) T@U)
(declare-fun |#_module.bexp.Not| (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
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
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |_module.__default.big__step#canCall| (T@U T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |$IsA#_module.com| (T@U) Bool)
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
(assert (distinct TBool TChar TInt TORDINAL TagBool TagChar TagInt TagORDINAL TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.aexp Tagclass._module.bexp Tagclass._module.com |##_module.aexp.N| |##_module.aexp.V| |##_module.aexp.Plus| |##_module.bexp.Bc| |##_module.bexp.Not| |##_module.bexp.And| |##_module.bexp.Less| |##_module.com.SKIP| |##_module.com.Assign| |##_module.com.Seq| |##_module.com.If| |##_module.com.While| |tytagFamily$_tuple#2| tytagFamily$aexp tytagFamily$bexp tytagFamily$com)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor MapType) 4)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly T@U) (|c#0| T@U) (|s#0| T@U) (|t#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |c#0| Tclass._module.com) ($Is MapType |s#0| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0| (TMap (TSeq TChar) TInt))) (exists ((|_k#0| T@U) ) (! (_module.__default.big__step_h ($LS $ly) |_k#0| |c#0| |s#0| |t#0|)
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |730|
 :pattern ( (_module.__default.big__step_h ($LS $ly) |_k#0| |c#0| |s#0| |t#0|))
))) (_module.__default.big__step ($LS $ly) |c#0| |s#0| |t#0|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |732|
 :pattern ( (_module.__default.big__step ($LS $ly) |c#0| |s#0| |t#0|))
))))
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
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.com.Seq| |a#74#0#0| |a#74#1#0|) Tclass._module.com)  (and ($Is DatatypeTypeType |a#74#0#0| Tclass._module.com) ($Is DatatypeTypeType |a#74#1#0| Tclass._module.com)))
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1535|
 :pattern ( ($Is DatatypeTypeType (|#_module.com.Seq| |a#74#0#0| |a#74#1#0|) Tclass._module.com))
)))
(assert (forall ((|a#92#0#0| T@U) (|a#92#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.com.While| |a#92#0#0| |a#92#1#0|) Tclass._module.com)  (and ($Is DatatypeTypeType |a#92#0#0| Tclass._module.bexp) ($Is DatatypeTypeType |a#92#1#0| Tclass._module.com)))
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1562|
 :pattern ( ($Is DatatypeTypeType (|#_module.com.While| |a#92#0#0| |a#92#1#0|) Tclass._module.com))
)))
(assert (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|c#0@@0| T@U) (|s#0@@0| T@U) (|t#0@@0| T@U) ) (! (= (_module.__default.big__step_h ($LS $ly@@0) |_k#0@@0| |c#0@@0| |s#0@@0| |t#0@@0|) (_module.__default.big__step_h $ly@@0 |_k#0@@0| |c#0@@0| |s#0@@0| |t#0@@0|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |750|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@0) |_k#0@@0| |c#0@@0| |s#0@@0| |t#0@@0|))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#68#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#68#0#0| i))) (DtRank (|#_module.com.Assign| |a#68#0#0| |a#68#1#0|))))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1527|
 :pattern ( (|Seq#Index| |a#68#0#0| i) (|#_module.com.Assign| |a#68#0#0| |a#68#1#0|))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|a#82#0#0| T@U) (|a#82#1#0| T@U) (|a#82#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.com.If| |a#82#0#0| |a#82#1#0| |a#82#2#0|) Tclass._module.com)  (and (and ($Is DatatypeTypeType |a#82#0#0| Tclass._module.bexp) ($Is DatatypeTypeType |a#82#1#0| Tclass._module.com)) ($Is DatatypeTypeType |a#82#2#0| Tclass._module.com)))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1547|
 :pattern ( ($Is DatatypeTypeType (|#_module.com.If| |a#82#0#0| |a#82#1#0| |a#82#2#0|) Tclass._module.com))
)))
(assert (forall ((|a#22#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#22#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#0#0| i@@0))) (DtRank (|#_module.aexp.V| |a#22#0#0|))))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1446|
 :pattern ( (|Seq#Index| |a#22#0#0| i@@0) (|#_module.aexp.V| |a#22#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) (|a#80#1#0| T@U) (|a#80#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.com.If| |a#80#0#0| |a#80#1#0| |a#80#2#0|)) |##_module.com.If|)
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1543|
 :pattern ( (|#_module.com.If| |a#80#0#0| |a#80#1#0| |a#80#2#0|))
)))
(assert (forall ((|a#84#0#0| T@U) (|a#84#1#0| T@U) (|a#84#2#0| T@U) ) (! (= (_module.com._h4 (|#_module.com.If| |a#84#0#0| |a#84#1#0| |a#84#2#0|)) |a#84#0#0|)
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1552|
 :pattern ( (|#_module.com.If| |a#84#0#0| |a#84#1#0| |a#84#2#0|))
)))
(assert (forall ((|a#86#0#0| T@U) (|a#86#1#0| T@U) (|a#86#2#0| T@U) ) (! (= (_module.com._h5 (|#_module.com.If| |a#86#0#0| |a#86#1#0| |a#86#2#0|)) |a#86#1#0|)
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1554|
 :pattern ( (|#_module.com.If| |a#86#0#0| |a#86#1#0| |a#86#2#0|))
)))
(assert (forall ((|a#88#0#0| T@U) (|a#88#1#0| T@U) (|a#88#2#0| T@U) ) (! (= (_module.com._h6 (|#_module.com.If| |a#88#0#0| |a#88#1#0| |a#88#2#0|)) |a#88#2#0|)
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1556|
 :pattern ( (|#_module.com.If| |a#88#0#0| |a#88#1#0| |a#88#2#0|))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (and (= (Ctor BoxType) 5) (= (Ctor SeqType) 6)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@1| T@U) (|c#0@@1| T@U) (|s#0@@1| T@U) (|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.big__step_h#canCall| (Lit BoxType |_k#0@@1|) |c#0@@1| |s#0@@1| |t#0@@1|) (and (< 5 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |c#0@@1| Tclass._module.com) ($Is MapType |s#0@@1| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@1| (TMap (TSeq TChar) TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (not (_module.com.SKIP_q |c#0@@1|)) (and (=> (_module.com.Assign_q |c#0@@1|) (let ((|a#6| (_module.com._h1 |c#0@@1|)))
(|_module.__default.aval#canCall| |a#6| |s#0@@1|))) (=> (not (_module.com.Assign_q |c#0@@1|)) (and (=> (_module.com.Seq_q |c#0@@1|) (let ((|c1#6| (_module.com._h3 |c#0@@1|)))
(let ((|c0#6| (_module.com._h2 |c#0@@1|)))
(forall ((|s'#16| T@U) ) (!  (=> ($Is MapType |s'#16| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|) (=> (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#6| |s'#16| |t#0@@1|))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |766|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#6| |s'#16| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#6| |s#0@@1| |s'#16|))
))))) (=> (not (_module.com.Seq_q |c#0@@1|)) (and (=> (_module.com.If_q |c#0@@1|) (let ((|els#6| (_module.com._h6 |c#0@@1|)))
(let ((|thn#6| (_module.com._h5 |c#0@@1|)))
(let ((|b#12| (_module.com._h4 |c#0@@1|)))
 (and (|_module.__default.bval#canCall| |b#12| |s#0@@1|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#12| |s#0@@1|) |thn#6| |els#6|) |s#0@@1| |t#0@@1|)))))) (=> (not (_module.com.If_q |c#0@@1|)) (let ((|body#6| (_module.com._h8 |c#0@@1|)))
(let ((|b#13| (_module.com._h7 |c#0@@1|)))
 (and (|_module.__default.bval#canCall| |b#13| |s#0@@1|) (=> (not (and (not (_module.__default.bval ($LS $LZ) |b#13| |s#0@@1|)) (|Map#Equal| |s#0@@1| |t#0@@1|))) (and (|_module.__default.bval#canCall| |b#13| |s#0@@1|) (=> (_module.__default.bval ($LS $LZ) |b#13| |s#0@@1|) (forall ((|s'#17| T@U) ) (!  (=> ($Is MapType |s'#17| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|) (=> (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#13| |body#6|) |s'#17| |t#0@@1|))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |767|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#13| |body#6|) |s'#17| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#6| |s#0@@1| |s'#17|))
)))))))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.com.SKIP_q |c#0@@1|) (|Map#Equal| |s#0@@1| |t#0@@1|) (ite (_module.com.Assign_q |c#0@@1|) (let ((|a#7| (_module.com._h1 |c#0@@1|)))
(let ((|x#7| (_module.com._h0 |c#0@@1|)))
(|Map#Equal| |t#0@@1| (|Map#Build| |s#0@@1| ($Box SeqType |x#7|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#7| |s#0@@1|))))))) (ite (_module.com.Seq_q |c#0@@1|) (let ((|c1#7| (_module.com._h3 |c#0@@1|)))
(let ((|c0#7| (_module.com._h2 |c#0@@1|)))
(exists ((|s'#18| T@U) ) (!  (and ($Is MapType |s'#18| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#7| |s#0@@1| |s'#18|) (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#7| |s'#18| |t#0@@1|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |769|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#7| |s'#18| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#7| |s#0@@1| |s'#18|))
)))) (ite (_module.com.If_q |c#0@@1|) (let ((|els#7| (_module.com._h6 |c#0@@1|)))
(let ((|thn#7| (_module.com._h5 |c#0@@1|)))
(let ((|b#14| (_module.com._h4 |c#0@@1|)))
(_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#14| |s#0@@1|) |thn#7| |els#7|) |s#0@@1| |t#0@@1|)))) (let ((|body#7| (_module.com._h8 |c#0@@1|)))
(let ((|b#15| (_module.com._h7 |c#0@@1|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#15| |s#0@@1|)) (|Map#Equal| |s#0@@1| |t#0@@1|)) (and (_module.__default.bval ($LS $LZ) |b#15| |s#0@@1|) (exists ((|s'#19| T@U) ) (!  (and ($Is MapType |s'#19| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#7| |s#0@@1| |s'#19|) (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#15| |body#7|) |s'#19| |t#0@@1|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |770|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#15| |body#7|) |s'#19| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#7| |s#0@@1| |s'#19|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@1|) (|_module.__default.big__step_h#canCall| |_k'#1| |c#0@@1| |s#0@@1| |t#0@@1|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |768|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) |_k'#1| |c#0@@1| |s#0@@1| |t#0@@1|))
))))) (= (_module.__default.big__step_h ($LS $ly@@1) (Lit BoxType |_k#0@@1|) |c#0@@1| |s#0@@1| |t#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (ite (_module.com.SKIP_q |c#0@@1|) (|Map#Equal| |s#0@@1| |t#0@@1|) (ite (_module.com.Assign_q |c#0@@1|) (let ((|a#5| (_module.com._h1 |c#0@@1|)))
(let ((|x#5| (_module.com._h0 |c#0@@1|)))
(|Map#Equal| |t#0@@1| (|Map#Build| |s#0@@1| ($Box SeqType |x#5|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#5| |s#0@@1|))))))) (ite (_module.com.Seq_q |c#0@@1|) (let ((|c1#5| (_module.com._h3 |c#0@@1|)))
(let ((|c0#5| (_module.com._h2 |c#0@@1|)))
(exists ((|s'#14| T@U) ) (!  (and ($Is MapType |s'#14| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#5| |s#0@@1| |s'#14|) (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#5| |s'#14| |t#0@@1|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |763|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c1#5| |s'#14| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |c0#5| |s#0@@1| |s'#14|))
)))) (ite (_module.com.If_q |c#0@@1|) (let ((|els#5| (_module.com._h6 |c#0@@1|)))
(let ((|thn#5| (_module.com._h5 |c#0@@1|)))
(let ((|b#10| (_module.com._h4 |c#0@@1|)))
(_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#10| |s#0@@1|) |thn#5| |els#5|) |s#0@@1| |t#0@@1|)))) (let ((|body#5| (_module.com._h8 |c#0@@1|)))
(let ((|b#11| (_module.com._h7 |c#0@@1|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#11| |s#0@@1|)) (|Map#Equal| |s#0@@1| |t#0@@1|)) (and (_module.__default.bval ($LS $LZ) |b#11| |s#0@@1|) (exists ((|s'#15| T@U) ) (!  (and ($Is MapType |s'#15| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#5| |s#0@@1| |s'#15|) (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#11| |body#5|) |s'#15| |t#0@@1|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |764|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (|#_module.com.While| |b#11| |body#5|) |s'#15| |t#0@@1|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |body#5| |s#0@@1| |s'#15|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@1|) (_module.__default.big__step_h ($LS $ly@@1) |_k'#1@@0| |c#0@@1| |s#0@@1| |t#0@@1|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |765|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) |_k'#1@@0| |c#0@@1| |s#0@@1| |t#0@@1|))
)))))))
 :qid |NipkowKleinchapter7dfy.40:17|
 :weight 3
 :skolemid |771|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@1) (Lit BoxType |_k#0@@1|) |c#0@@1| |s#0@@1| |t#0@@1|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.com.SKIP|) |##_module.com.SKIP|))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.com.SKIP| Tclass._module.com))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0| T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0@@2|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass._module.aexp) ($Is MapType |s#0@@2| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)))))) (let ((|a1#3| (Lit DatatypeTypeType (_module.aexp._1 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#3| (Lit DatatypeTypeType (_module.aexp._0 (Lit DatatypeTypeType |a#0|)))))
 (and (|_module.__default.aval#canCall| |a0#3| (Lit MapType |s#0@@2|)) (|_module.__default.aval#canCall| |a1#3| (Lit MapType |s#0@@2|))))))) (= (_module.__default.aval ($LS $ly@@2) (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0@@2|)) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)) (let ((|n#2| (LitInt (_module.aexp.n (Lit DatatypeTypeType |a#0|)))))
|n#2|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)) (let ((|x#2| (Lit SeqType (_module.aexp.x (Lit DatatypeTypeType |a#0|)))))
(ite (|Set#IsMember| (|Map#Domain| |s#0@@2|) ($Box SeqType |x#2|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |s#0@@2|)) ($Box SeqType |x#2|)))) 0)) (let ((|a1#2| (Lit DatatypeTypeType (_module.aexp._1 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#2| (Lit DatatypeTypeType (_module.aexp._0 (Lit DatatypeTypeType |a#0|)))))
(LitInt (+ (_module.__default.aval ($LS $ly@@2) |a0#2| (Lit MapType |s#0@@2|)) (_module.__default.aval ($LS $ly@@2) |a1#2| (Lit MapType |s#0@@2|)))))))))))
 :qid |NipkowKleinchapter7dfy.16:16|
 :weight 3
 :skolemid |705|
 :pattern ( (_module.__default.aval ($LS $ly@@2) (Lit DatatypeTypeType |a#0|) (Lit MapType |s#0@@2|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|b#0| T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@3|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0| Tclass._module.bexp) ($Is MapType |s#0@@3| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|))))) (let ((|b#4| (Lit DatatypeTypeType (_module.bexp.op (Lit DatatypeTypeType |b#0|)))))
(|_module.__default.bval#canCall| |b#4| (Lit MapType |s#0@@3|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0|))))) (let ((|b1#3| (Lit DatatypeTypeType (_module.bexp._1 (Lit DatatypeTypeType |b#0|)))))
(let ((|b0#3| (Lit DatatypeTypeType (_module.bexp._0 (Lit DatatypeTypeType |b#0|)))))
 (and (|_module.__default.bval#canCall| |b0#3| (Lit MapType |s#0@@3|)) (=> (_module.__default.bval ($LS $ly@@3) |b0#3| (Lit MapType |s#0@@3|)) (|_module.__default.bval#canCall| |b1#3| (Lit MapType |s#0@@3|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0|)))))) (let ((|a1#3@@0| (Lit DatatypeTypeType (_module.bexp.a1 (Lit DatatypeTypeType |b#0|)))))
(let ((|a0#3@@0| (Lit DatatypeTypeType (_module.bexp.a0 (Lit DatatypeTypeType |b#0|)))))
 (and (|_module.__default.aval#canCall| |a0#3@@0| (Lit MapType |s#0@@3|)) (|_module.__default.aval#canCall| |a1#3@@0| (Lit MapType |s#0@@3|)))))))))) (= (_module.__default.bval ($LS $ly@@3) (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@3|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0|)) (let ((|v#2| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0|)))))))
|v#2|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0|)) (let ((|b#3| (Lit DatatypeTypeType (_module.bexp.op (Lit DatatypeTypeType |b#0|)))))
 (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.bval ($LS $ly@@3) |b#3| (Lit MapType |s#0@@3|))))))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0|)) (U_2_bool (let ((|b1#2| (Lit DatatypeTypeType (_module.bexp._1 (Lit DatatypeTypeType |b#0|)))))
(let ((|b0#2| (Lit DatatypeTypeType (_module.bexp._0 (Lit DatatypeTypeType |b#0|)))))
(Lit boolType (bool_2_U  (and (_module.__default.bval ($LS $ly@@3) |b0#2| (Lit MapType |s#0@@3|)) (_module.__default.bval ($LS $ly@@3) |b1#2| (Lit MapType |s#0@@3|)))))))) (U_2_bool (let ((|a1#2@@0| (Lit DatatypeTypeType (_module.bexp.a1 (Lit DatatypeTypeType |b#0|)))))
(let ((|a0#2@@0| (Lit DatatypeTypeType (_module.bexp.a0 (Lit DatatypeTypeType |b#0|)))))
(Lit boolType (bool_2_U (< (_module.__default.aval ($LS $LZ) |a0#2@@0| (Lit MapType |s#0@@3|)) (_module.__default.aval ($LS $LZ) |a1#2@@0| (Lit MapType |s#0@@3|))))))))))))))
 :qid |NipkowKleinchapter7dfy.25:16|
 :weight 3
 :skolemid |714|
 :pattern ( (_module.__default.bval ($LS $ly@@3) (Lit DatatypeTypeType |b#0|) (Lit MapType |s#0@@3|)))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
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
(assert (forall ((d@@8 T@U) ) (! (= (_module.com.SKIP_q d@@8) (= (DatatypeCtorId d@@8) |##_module.com.SKIP|))
 :qid |unknown.0:0|
 :skolemid |1516|
 :pattern ( (_module.com.SKIP_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.com.Assign_q d@@9) (= (DatatypeCtorId d@@9) |##_module.com.Assign|))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( (_module.com.Assign_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.com.Seq_q d@@10) (= (DatatypeCtorId d@@10) |##_module.com.Seq|))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( (_module.com.Seq_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.com.If_q d@@11) (= (DatatypeCtorId d@@11) |##_module.com.If|))
 :qid |unknown.0:0|
 :skolemid |1544|
 :pattern ( (_module.com.If_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_module.com.While_q d@@12) (= (DatatypeCtorId d@@12) |##_module.com.While|))
 :qid |unknown.0:0|
 :skolemid |1559|
 :pattern ( (_module.com.While_q d@@12))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.com.If_q d@@13) (exists ((|a#81#0#0| T@U) (|a#81#1#0| T@U) (|a#81#2#0| T@U) ) (! (= d@@13 (|#_module.com.If| |a#81#0#0| |a#81#1#0| |a#81#2#0|))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1545|
)))
 :qid |unknown.0:0|
 :skolemid |1546|
 :pattern ( (_module.com.If_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@14) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@14 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.aexp.Plus_q d@@15) (exists ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= d@@15 (|#_module.aexp.Plus| |a#25#0#0| |a#25#1#0|))
 :qid |NipkowKleinchapter7dfy.15:48|
 :skolemid |1450|
)))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( (_module.aexp.Plus_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.bexp.And_q d@@16) (exists ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= d@@16 (|#_module.bexp.And| |a#44#0#0| |a#44#1#0|))
 :qid |NipkowKleinchapter7dfy.24:51|
 :skolemid |1486|
)))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( (_module.bexp.And_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_module.bexp.Less_q d@@17) (exists ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= d@@17 (|#_module.bexp.Less| |a#52#0#0| |a#52#1#0|))
 :qid |NipkowKleinchapter7dfy.24:76|
 :skolemid |1498|
)))
 :qid |unknown.0:0|
 :skolemid |1499|
 :pattern ( (_module.bexp.Less_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (_module.com.Assign_q d@@18) (exists ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= d@@18 (|#_module.com.Assign| |a#64#0#0| |a#64#1#0|))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1520|
)))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( (_module.com.Assign_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.com.Seq_q d@@19) (exists ((|a#73#0#0| T@U) (|a#73#1#0| T@U) ) (! (= d@@19 (|#_module.com.Seq| |a#73#0#0| |a#73#1#0|))
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1533|
)))
 :qid |unknown.0:0|
 :skolemid |1534|
 :pattern ( (_module.com.Seq_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.com.While_q d@@20) (exists ((|a#91#0#0| T@U) (|a#91#1#0| T@U) ) (! (= d@@20 (|#_module.com.While| |a#91#0#0| |a#91#1#0|))
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1560|
)))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( (_module.com.While_q d@@20))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@4 T@U) (|c#0@@2| T@U) (|s#0@@4| T@U) (|t#0@@2| T@U) (|_k#0@@2| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |c#0@@2| Tclass._module.com) ($Is MapType |s#0@@4| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@2| (TMap (TSeq TChar) TInt))) (= |_k#0@@2| (|ORD#FromNat| 0))) (not (_module.__default.big__step_h $ly@@4 |_k#0@@2| |c#0@@2| |s#0@@4| |t#0@@2|)))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |733|
 :pattern ( (_module.__default.big__step_h $ly@@4 |_k#0@@2| |c#0@@2| |s#0@@4| |t#0@@2|))
))))
(assert (forall ((d@@21 T@U) ) (!  (=> (_module.com.SKIP_q d@@21) (= d@@21 |#_module.com.SKIP|))
 :qid |unknown.0:0|
 :skolemid |1517|
 :pattern ( (_module.com.SKIP_q d@@21))
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
(assert (forall ((d@@22 T@U) ) (!  (=> (_module.aexp.N_q d@@22) (exists ((|a#13#0#0| Int) ) (! (= d@@22 (|#_module.aexp.N| |a#13#0#0|))
 :qid |NipkowKleinchapter7dfy.15:19|
 :skolemid |1432|
)))
 :qid |unknown.0:0|
 :skolemid |1433|
 :pattern ( (_module.aexp.N_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (_module.aexp.V_q d@@23) (exists ((|a#18#0#0| T@U) ) (! (= d@@23 (|#_module.aexp.V| |a#18#0#0|))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1440|
)))
 :qid |unknown.0:0|
 :skolemid |1441|
 :pattern ( (_module.aexp.V_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (_module.bexp.Bc_q d@@24) (exists ((|a#33#0#0| Bool) ) (! (= d@@24 (|#_module.bexp.Bc| |a#33#0#0|))
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1469|
)))
 :qid |unknown.0:0|
 :skolemid |1470|
 :pattern ( (_module.bexp.Bc_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (_module.bexp.Not_q d@@25) (exists ((|a#38#0#0| T@U) ) (! (= d@@25 (|#_module.bexp.Not| |a#38#0#0|))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1477|
)))
 :qid |unknown.0:0|
 :skolemid |1478|
 :pattern ( (_module.bexp.Not_q d@@25))
)))
(assert (forall (($ly@@5 T@U) (|b#0@@0| T@U) (|s#0@@5| T@U) ) (! (= (_module.__default.bval ($LS $ly@@5) |b#0@@0| |s#0@@5|) (_module.__default.bval $ly@@5 |b#0@@0| |s#0@@5|))
 :qid |NipkowKleinchapter7dfy.25:16|
 :skolemid |708|
 :pattern ( (_module.__default.bval ($LS $ly@@5) |b#0@@0| |s#0@@5|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@6 T@U) (|c#0@@3| T@U) (|s#0@@6| T@U) (|t#0@@3| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |c#0@@3| Tclass._module.com) ($Is MapType |s#0@@6| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@3| (TMap (TSeq TChar) TInt))) (_module.__default.big__step ($LS $ly@@6) |c#0@@3| |s#0@@6| |t#0@@3|)) (exists ((|_k#0@@3| T@U) ) (! (_module.__default.big__step_h ($LS $ly@@6) |_k#0@@3| |c#0@@3| |s#0@@6| |t#0@@3|)
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |730|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@6) |_k#0@@3| |c#0@@3| |s#0@@6| |t#0@@3|))
)))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |731|
 :pattern ( (_module.__default.big__step ($LS $ly@@6) |c#0@@3| |s#0@@6| |t#0@@3|))
))))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@2))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@2 p@@0)) (|ORD#IsNat| o@@2)) (= (|ORD#Offset| (|ORD#Minus| o@@2 p@@0)) (- (|ORD#Offset| o@@2) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@2 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
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
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.com) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.com)))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( ($IsBox bx@@2 Tclass._module.com))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp) ($Is DatatypeTypeType |a#39#0#0| Tclass._module.bexp))
 :qid |NipkowKleinchapter7dfy.24:35|
 :skolemid |1479|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@7 T@U) (|c#0@@4| T@U) (|s#0@@7| T@U) (|t#0@@4| T@U) (|_k#0@@4| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0@@4| _m) (=> (_module.__default.big__step_h $ly@@7 |_k#0@@4| |c#0@@4| |s#0@@7| |t#0@@4|) (_module.__default.big__step_h $ly@@7 _m |c#0@@4| |s#0@@7| |t#0@@4|)))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |734|
 :pattern ( (_module.__default.big__step_h $ly@@7 |_k#0@@4| |c#0@@4| |s#0@@7| |t#0@@4|) (|ORD#LessThanLimit| |_k#0@@4| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall (($ly@@8 T@U) (|a#0@@0| T@U) (|s#0@@8| T@U) ) (! (= (_module.__default.aval ($LS $ly@@8) |a#0@@0| |s#0@@8|) (_module.__default.aval $ly@@8 |a#0@@0| |s#0@@8|))
 :qid |NipkowKleinchapter7dfy.16:16|
 :skolemid |699|
 :pattern ( (_module.__default.aval ($LS $ly@@8) |a#0@@0| |s#0@@8|))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@5| T@U) (|c#0@@5| T@U) (|s#0@@9| T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.big__step_h#canCall| |_k#0@@5| |c#0@@5| |s#0@@9| |t#0@@5|) (and (< 5 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |c#0@@5| Tclass._module.com) ($Is MapType |s#0@@9| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@5| (TMap (TSeq TChar) TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (not (_module.com.SKIP_q |c#0@@5|)) (and (=> (_module.com.Assign_q |c#0@@5|) (let ((|a#3| (_module.com._h1 |c#0@@5|)))
(|_module.__default.aval#canCall| |a#3| |s#0@@9|))) (=> (not (_module.com.Assign_q |c#0@@5|)) (and (=> (_module.com.Seq_q |c#0@@5|) (let ((|c1#3| (_module.com._h3 |c#0@@5|)))
(let ((|c0#3| (_module.com._h2 |c#0@@5|)))
(forall ((|s'#10| T@U) ) (!  (=> ($Is MapType |s'#10| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#3| |s#0@@9| |s'#10|) (=> (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#3| |s#0@@9| |s'#10|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#3| |s'#10| |t#0@@5|))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |757|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#3| |s'#10| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#3| |s#0@@9| |s'#10|))
))))) (=> (not (_module.com.Seq_q |c#0@@5|)) (and (=> (_module.com.If_q |c#0@@5|) (let ((|els#3| (_module.com._h6 |c#0@@5|)))
(let ((|thn#3| (_module.com._h5 |c#0@@5|)))
(let ((|b#6| (_module.com._h4 |c#0@@5|)))
 (and (|_module.__default.bval#canCall| |b#6| |s#0@@9|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#6| |s#0@@9|) |thn#3| |els#3|) |s#0@@9| |t#0@@5|)))))) (=> (not (_module.com.If_q |c#0@@5|)) (let ((|body#3| (_module.com._h8 |c#0@@5|)))
(let ((|b#7| (_module.com._h7 |c#0@@5|)))
 (and (|_module.__default.bval#canCall| |b#7| |s#0@@9|) (=> (not (and (not (_module.__default.bval ($LS $LZ) |b#7| |s#0@@9|)) (|Map#Equal| |s#0@@9| |t#0@@5|))) (and (|_module.__default.bval#canCall| |b#7| |s#0@@9|) (=> (_module.__default.bval ($LS $LZ) |b#7| |s#0@@9|) (forall ((|s'#11| T@U) ) (!  (=> ($Is MapType |s'#11| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#3| |s#0@@9| |s'#11|) (=> (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#3| |s#0@@9| |s'#11|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#7| |body#3|) |s'#11| |t#0@@5|))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |758|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#7| |body#3|) |s'#11| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#3| |s#0@@9| |s'#11|))
)))))))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.com.SKIP_q |c#0@@5|) (|Map#Equal| |s#0@@9| |t#0@@5|) (ite (_module.com.Assign_q |c#0@@5|) (let ((|a#4| (_module.com._h1 |c#0@@5|)))
(let ((|x#4| (_module.com._h0 |c#0@@5|)))
(|Map#Equal| |t#0@@5| (|Map#Build| |s#0@@9| ($Box SeqType |x#4|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#4| |s#0@@9|))))))) (ite (_module.com.Seq_q |c#0@@5|) (let ((|c1#4| (_module.com._h3 |c#0@@5|)))
(let ((|c0#4| (_module.com._h2 |c#0@@5|)))
(exists ((|s'#12| T@U) ) (!  (and ($Is MapType |s'#12| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#4| |s#0@@9| |s'#12|) (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#4| |s'#12| |t#0@@5|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |760|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#4| |s'#12| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#4| |s#0@@9| |s'#12|))
)))) (ite (_module.com.If_q |c#0@@5|) (let ((|els#4| (_module.com._h6 |c#0@@5|)))
(let ((|thn#4| (_module.com._h5 |c#0@@5|)))
(let ((|b#8| (_module.com._h4 |c#0@@5|)))
(_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#8| |s#0@@9|) |thn#4| |els#4|) |s#0@@9| |t#0@@5|)))) (let ((|body#4| (_module.com._h8 |c#0@@5|)))
(let ((|b#9| (_module.com._h7 |c#0@@5|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#9| |s#0@@9|)) (|Map#Equal| |s#0@@9| |t#0@@5|)) (and (_module.__default.bval ($LS $LZ) |b#9| |s#0@@9|) (exists ((|s'#13| T@U) ) (!  (and ($Is MapType |s'#13| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#4| |s#0@@9| |s'#13|) (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#9| |body#4|) |s'#13| |t#0@@5|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |761|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#9| |body#4|) |s'#13| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#4| |s#0@@9| |s'#13|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@5|) (|_module.__default.big__step_h#canCall| |_k'#0| |c#0@@5| |s#0@@9| |t#0@@5|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |759|
 :pattern ( (_module.__default.big__step_h $ly@@9 |_k'#0| |c#0@@5| |s#0@@9| |t#0@@5|))
))))) (= (_module.__default.big__step_h ($LS $ly@@9) |_k#0@@5| |c#0@@5| |s#0@@9| |t#0@@5|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (ite (_module.com.SKIP_q |c#0@@5|) (|Map#Equal| |s#0@@9| |t#0@@5|) (ite (_module.com.Assign_q |c#0@@5|) (let ((|a#2| (_module.com._h1 |c#0@@5|)))
(let ((|x#2@@0| (_module.com._h0 |c#0@@5|)))
(|Map#Equal| |t#0@@5| (|Map#Build| |s#0@@9| ($Box SeqType |x#2@@0|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#2| |s#0@@9|))))))) (ite (_module.com.Seq_q |c#0@@5|) (let ((|c1#2| (_module.com._h3 |c#0@@5|)))
(let ((|c0#2| (_module.com._h2 |c#0@@5|)))
(exists ((|s'#8| T@U) ) (!  (and ($Is MapType |s'#8| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#2| |s#0@@9| |s'#8|) (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#2| |s'#8| |t#0@@5|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |754|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c1#2| |s'#8| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |c0#2| |s#0@@9| |s'#8|))
)))) (ite (_module.com.If_q |c#0@@5|) (let ((|els#2| (_module.com._h6 |c#0@@5|)))
(let ((|thn#2| (_module.com._h5 |c#0@@5|)))
(let ((|b#4@@0| (_module.com._h4 |c#0@@5|)))
(_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#4@@0| |s#0@@9|) |thn#2| |els#2|) |s#0@@9| |t#0@@5|)))) (let ((|body#2| (_module.com._h8 |c#0@@5|)))
(let ((|b#5| (_module.com._h7 |c#0@@5|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#5| |s#0@@9|)) (|Map#Equal| |s#0@@9| |t#0@@5|)) (and (_module.__default.bval ($LS $LZ) |b#5| |s#0@@9|) (exists ((|s'#9| T@U) ) (!  (and ($Is MapType |s'#9| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#2| |s#0@@9| |s'#9|) (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5| |body#2|) |s'#9| |t#0@@5|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |755|
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5| |body#2|) |s'#9| |t#0@@5|))
 :pattern ( (_module.__default.big__step_h $ly@@9 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |body#2| |s#0@@9| |s'#9|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@5|) (_module.__default.big__step_h $ly@@9 |_k'#0@@0| |c#0@@5| |s#0@@9| |t#0@@5|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |756|
 :pattern ( (_module.__default.big__step_h $ly@@9 |_k'#0@@0| |c#0@@5| |s#0@@9| |t#0@@5|))
)))))))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |762|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@9) |_k#0@@5| |c#0@@5| |s#0@@9| |t#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@10 T@U) (|b#0@@1| T@U) (|s#0@@10| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| |b#0@@1| |s#0@@10|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0@@1| Tclass._module.bexp) ($Is MapType |s#0@@10| (TMap (TSeq TChar) TInt))))) (and (=> (not (_module.bexp.Bc_q |b#0@@1|)) (and (=> (_module.bexp.Not_q |b#0@@1|) (let ((|b#2| (_module.bexp.op |b#0@@1|)))
(|_module.__default.bval#canCall| |b#2| |s#0@@10|))) (=> (not (_module.bexp.Not_q |b#0@@1|)) (and (=> (_module.bexp.And_q |b#0@@1|) (let ((|b1#1| (_module.bexp._1 |b#0@@1|)))
(let ((|b0#1| (_module.bexp._0 |b#0@@1|)))
 (and (|_module.__default.bval#canCall| |b0#1| |s#0@@10|) (=> (_module.__default.bval $ly@@10 |b0#1| |s#0@@10|) (|_module.__default.bval#canCall| |b1#1| |s#0@@10|)))))) (=> (not (_module.bexp.And_q |b#0@@1|)) (let ((|a1#1| (_module.bexp.a1 |b#0@@1|)))
(let ((|a0#1| (_module.bexp.a0 |b#0@@1|)))
 (and (|_module.__default.aval#canCall| |a0#1| |s#0@@10|) (|_module.__default.aval#canCall| |a1#1| |s#0@@10|))))))))) (= (_module.__default.bval ($LS $ly@@10) |b#0@@1| |s#0@@10|) (ite (_module.bexp.Bc_q |b#0@@1|) (let ((|v#0| (_module.bexp.v |b#0@@1|)))
|v#0|) (ite (_module.bexp.Not_q |b#0@@1|) (let ((|b#1| (_module.bexp.op |b#0@@1|)))
 (not (_module.__default.bval $ly@@10 |b#1| |s#0@@10|))) (ite (_module.bexp.And_q |b#0@@1|) (let ((|b1#0| (_module.bexp._1 |b#0@@1|)))
(let ((|b0#0| (_module.bexp._0 |b#0@@1|)))
 (and (_module.__default.bval $ly@@10 |b0#0| |s#0@@10|) (_module.__default.bval $ly@@10 |b1#0| |s#0@@10|)))) (let ((|a1#0| (_module.bexp.a1 |b#0@@1|)))
(let ((|a0#0| (_module.bexp.a0 |b#0@@1|)))
(< (_module.__default.aval ($LS $LZ) |a0#0| |s#0@@10|) (_module.__default.aval ($LS $LZ) |a1#0| |s#0@@10|))))))))))
 :qid |NipkowKleinchapter7dfy.25:16|
 :skolemid |713|
 :pattern ( (_module.__default.bval ($LS $ly@@10) |b#0@@1| |s#0@@10|))
))))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@11 T@U) (|_k#0@@6| T@U) (|c#0@@6| T@U) (|s#0@@11| T@U) (|t#0@@6| T@U) ) (!  (=> (or (|_module.__default.big__step_h#canCall| (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |c#0@@6|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|)) (and (< 5 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |c#0@@6| Tclass._module.com) ($Is MapType |s#0@@11| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@6| (TMap (TSeq TChar) TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.com.SKIP_q (Lit DatatypeTypeType |c#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.com.Assign_q (Lit DatatypeTypeType |c#0@@6|))))) (let ((|a#9| (Lit DatatypeTypeType (_module.com._h1 (Lit DatatypeTypeType |c#0@@6|)))))
(|_module.__default.aval#canCall| |a#9| (Lit MapType |s#0@@11|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.com.Assign_q (Lit DatatypeTypeType |c#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.com.Seq_q (Lit DatatypeTypeType |c#0@@6|))))) (let ((|c1#9| (Lit DatatypeTypeType (_module.com._h3 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|c0#9| (Lit DatatypeTypeType (_module.com._h2 (Lit DatatypeTypeType |c#0@@6|)))))
(forall ((|s'#22| T@U) ) (!  (=> ($Is MapType |s'#22| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#9| (Lit MapType |s#0@@11|) |s'#22|) (=> (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#9| (Lit MapType |s#0@@11|) |s'#22|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#9| |s'#22| (Lit MapType |t#0@@6|)))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |775|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#9| |s'#22| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#9| |s#0@@11| |s'#22|))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.com.Seq_q (Lit DatatypeTypeType |c#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.com.If_q (Lit DatatypeTypeType |c#0@@6|))))) (let ((|els#9| (Lit DatatypeTypeType (_module.com._h6 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|thn#9| (Lit DatatypeTypeType (_module.com._h5 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#18| (Lit DatatypeTypeType (_module.com._h4 (Lit DatatypeTypeType |c#0@@6|)))))
 (and (|_module.__default.bval#canCall| |b#18| (Lit MapType |s#0@@11|)) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#18| (Lit MapType |s#0@@11|)) |thn#9| |els#9|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.com.If_q (Lit DatatypeTypeType |c#0@@6|)))))) (let ((|body#9| (Lit DatatypeTypeType (_module.com._h8 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#19| (Lit DatatypeTypeType (_module.com._h7 (Lit DatatypeTypeType |c#0@@6|)))))
 (and (|_module.__default.bval#canCall| |b#19| (Lit MapType |s#0@@11|)) (=> (not (and (not (_module.__default.bval ($LS $LZ) |b#19| (Lit MapType |s#0@@11|))) (|Map#Equal| |s#0@@11| |t#0@@6|))) (and (|_module.__default.bval#canCall| |b#19| (Lit MapType |s#0@@11|)) (=> (_module.__default.bval ($LS $LZ) |b#19| (Lit MapType |s#0@@11|)) (forall ((|s'#23| T@U) ) (!  (=> ($Is MapType |s'#23| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#9| (Lit MapType |s#0@@11|) |s'#23|) (=> (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#9| (Lit MapType |s#0@@11|) |s'#23|) (|_module.__default.big__step_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (|#_module.com.While| |b#19| |body#9|) |s'#23| (Lit MapType |t#0@@6|)))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |776|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (|#_module.com.While| |b#19| |body#9|) |s'#23| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#9| |s#0@@11| |s'#23|))
)))))))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (ite (_module.com.SKIP_q (Lit DatatypeTypeType |c#0@@6|)) (|Map#Equal| |s#0@@11| |t#0@@6|) (ite (_module.com.Assign_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|a#10| (Lit DatatypeTypeType (_module.com._h1 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|x#10| (Lit SeqType (_module.com._h0 (Lit DatatypeTypeType |c#0@@6|)))))
(|Map#Equal| |t#0@@6| (|Map#Build| (Lit MapType |s#0@@11|) ($Box SeqType |x#10|) ($Box intType (int_2_U (LitInt (_module.__default.aval ($LS $LZ) |a#10| (Lit MapType |s#0@@11|))))))))) (ite (_module.com.Seq_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|c1#10| (Lit DatatypeTypeType (_module.com._h3 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|c0#10| (Lit DatatypeTypeType (_module.com._h2 (Lit DatatypeTypeType |c#0@@6|)))))
(exists ((|s'#24| T@U) ) (!  (and ($Is MapType |s'#24| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#10| (Lit MapType |s#0@@11|) |s'#24|) (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#10| |s'#24| (Lit MapType |t#0@@6|))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |778|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#10| |s'#24| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#10| |s#0@@11| |s'#24|))
)))) (ite (_module.com.If_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|els#10| (Lit DatatypeTypeType (_module.com._h6 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|thn#10| (Lit DatatypeTypeType (_module.com._h5 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#20| (Lit DatatypeTypeType (_module.com._h4 (Lit DatatypeTypeType |c#0@@6|)))))
(_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#20| (Lit MapType |s#0@@11|)) |thn#10| |els#10|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|))))) (let ((|body#10| (Lit DatatypeTypeType (_module.com._h8 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#21| (Lit DatatypeTypeType (_module.com._h7 (Lit DatatypeTypeType |c#0@@6|)))))
 (or (and (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.bval ($LS $LZ) |b#21| (Lit MapType |s#0@@11|)))))) (|Map#Equal| |s#0@@11| |t#0@@6|)) (and (_module.__default.bval ($LS $LZ) |b#21| (Lit MapType |s#0@@11|)) (exists ((|s'#25| T@U) ) (!  (and ($Is MapType |s'#25| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#10| (Lit MapType |s#0@@11|) |s'#25|) (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (|#_module.com.While| |b#21| |body#10|)) |s'#25| (Lit MapType |t#0@@6|))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |779|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (|#_module.com.While| |b#21| |body#10|) |s'#25| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#10| |s#0@@11| |s'#25|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@6|) (|_module.__default.big__step_h#canCall| |_k'#2| |c#0@@6| |s#0@@11| |t#0@@6|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |777|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) |_k'#2| |c#0@@6| |s#0@@11| |t#0@@6|))
))))) (= (_module.__default.big__step_h ($LS $ly@@11) (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |c#0@@6|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (ite (_module.com.SKIP_q (Lit DatatypeTypeType |c#0@@6|)) (|Map#Equal| |s#0@@11| |t#0@@6|) (ite (_module.com.Assign_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|a#8| (Lit DatatypeTypeType (_module.com._h1 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|x#8| (Lit SeqType (_module.com._h0 (Lit DatatypeTypeType |c#0@@6|)))))
(|Map#Equal| |t#0@@6| (|Map#Build| (Lit MapType |s#0@@11|) ($Box SeqType |x#8|) ($Box intType (int_2_U (LitInt (_module.__default.aval ($LS $LZ) |a#8| (Lit MapType |s#0@@11|))))))))) (ite (_module.com.Seq_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|c1#8| (Lit DatatypeTypeType (_module.com._h3 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|c0#8| (Lit DatatypeTypeType (_module.com._h2 (Lit DatatypeTypeType |c#0@@6|)))))
(exists ((|s'#20| T@U) ) (!  (and ($Is MapType |s'#20| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#8| (Lit MapType |s#0@@11|) |s'#20|) (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#8| |s'#20| (Lit MapType |t#0@@6|))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |772|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c1#8| |s'#20| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |c0#8| |s#0@@11| |s'#20|))
)))) (ite (_module.com.If_q (Lit DatatypeTypeType |c#0@@6|)) (let ((|els#8| (Lit DatatypeTypeType (_module.com._h6 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|thn#8| (Lit DatatypeTypeType (_module.com._h5 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#16| (Lit DatatypeTypeType (_module.com._h4 (Lit DatatypeTypeType |c#0@@6|)))))
(_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS $LZ) |b#16| (Lit MapType |s#0@@11|)) |thn#8| |els#8|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|))))) (let ((|body#8| (Lit DatatypeTypeType (_module.com._h8 (Lit DatatypeTypeType |c#0@@6|)))))
(let ((|b#17| (Lit DatatypeTypeType (_module.com._h7 (Lit DatatypeTypeType |c#0@@6|)))))
 (or (and (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.bval ($LS $LZ) |b#17| (Lit MapType |s#0@@11|)))))) (|Map#Equal| |s#0@@11| |t#0@@6|)) (and (_module.__default.bval ($LS $LZ) |b#17| (Lit MapType |s#0@@11|)) (exists ((|s'#21| T@U) ) (!  (and ($Is MapType |s'#21| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#8| (Lit MapType |s#0@@11|) |s'#21|) (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (|#_module.com.While| |b#17| |body#8|)) |s'#21| (Lit MapType |t#0@@6|))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |773|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (|#_module.com.While| |b#17| |body#8|) |s'#21| |t#0@@6|))
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |body#8| |s#0@@11| |s'#21|))
))))))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@6|) (_module.__default.big__step_h ($LS $ly@@11) |_k'#2@@0| |c#0@@6| |s#0@@11| |t#0@@6|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |774|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) |_k'#2@@0| |c#0@@6| |s#0@@11| |t#0@@6|))
)))))))
 :qid |NipkowKleinchapter7dfy.40:17|
 :weight 3
 :skolemid |780|
 :pattern ( (_module.__default.big__step_h ($LS $ly@@11) (Lit BoxType |_k#0@@6|) (Lit DatatypeTypeType |c#0@@6|) (Lit MapType |s#0@@11|) (Lit MapType |t#0@@6|)))
))))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@4 p@@2) (|ORD#Less| o@@4 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@4 p@@2))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall ((|a#36#0#0| Bool) ) (! (= (_module.bexp.v (|#_module.bexp.Bc| |a#36#0#0|)) |a#36#0#0|)
 :qid |NipkowKleinchapter7dfy.24:20|
 :skolemid |1474|
 :pattern ( (|#_module.bexp.Bc| |a#36#0#0|))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall (($ly@@12 T@U) (|c#0@@7| T@U) (|s#0@@12| T@U) (|t#0@@7| T@U) ) (! (= (_module.__default.big__step ($LS $ly@@12) |c#0@@7| |s#0@@12| |t#0@@7|) (_module.__default.big__step $ly@@12 |c#0@@7| |s#0@@12| |t#0@@7|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |720|
 :pattern ( (_module.__default.big__step ($LS $ly@@12) |c#0@@7| |s#0@@12| |t#0@@7|))
)))
(assert (forall ((o@@5 T@U) ) (! (<= 0 (|ORD#Offset| o@@5))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@5))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@3))
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
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.com.Assign| |a#63#0#0| |a#63#1#0|)) |##_module.com.Assign|)
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1518|
 :pattern ( (|#_module.com.Assign| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#67#0#0| T@U) (|a#67#1#0| T@U) ) (! (= (_module.com._h0 (|#_module.com.Assign| |a#67#0#0| |a#67#1#0|)) |a#67#0#0|)
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1526|
 :pattern ( (|#_module.com.Assign| |a#67#0#0| |a#67#1#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) ) (! (= (_module.com._h1 (|#_module.com.Assign| |a#70#0#0| |a#70#1#0|)) |a#70#1#0|)
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1529|
 :pattern ( (|#_module.com.Assign| |a#70#0#0| |a#70#1#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.com.Seq| |a#72#0#0| |a#72#1#0|)) |##_module.com.Seq|)
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1531|
 :pattern ( (|#_module.com.Seq| |a#72#0#0| |a#72#1#0|))
)))
(assert (forall ((|a#76#0#0| T@U) (|a#76#1#0| T@U) ) (! (= (_module.com._h2 (|#_module.com.Seq| |a#76#0#0| |a#76#1#0|)) |a#76#0#0|)
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1539|
 :pattern ( (|#_module.com.Seq| |a#76#0#0| |a#76#1#0|))
)))
(assert (forall ((|a#78#0#0| T@U) (|a#78#1#0| T@U) ) (! (= (_module.com._h3 (|#_module.com.Seq| |a#78#0#0| |a#78#1#0|)) |a#78#1#0|)
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1541|
 :pattern ( (|#_module.com.Seq| |a#78#0#0| |a#78#1#0|))
)))
(assert (forall ((|a#90#0#0| T@U) (|a#90#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.com.While| |a#90#0#0| |a#90#1#0|)) |##_module.com.While|)
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1558|
 :pattern ( (|#_module.com.While| |a#90#0#0| |a#90#1#0|))
)))
(assert (forall ((|a#94#0#0| T@U) (|a#94#1#0| T@U) ) (! (= (_module.com._h7 (|#_module.com.While| |a#94#0#0| |a#94#1#0|)) |a#94#0#0|)
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1566|
 :pattern ( (|#_module.com.While| |a#94#0#0| |a#94#1#0|))
)))
(assert (forall ((|a#96#0#0| T@U) (|a#96#1#0| T@U) ) (! (= (_module.com._h8 (|#_module.com.While| |a#96#0#0| |a#96#1#0|)) |a#96#1#0|)
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1568|
 :pattern ( (|#_module.com.While| |a#96#0#0| |a#96#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@1) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#83#0#0| T@U) (|a#83#1#0| T@U) (|a#83#2#0| T@U) ) (! (= (|#_module.com.If| (Lit DatatypeTypeType |a#83#0#0|) (Lit DatatypeTypeType |a#83#1#0|) (Lit DatatypeTypeType |a#83#2#0|)) (Lit DatatypeTypeType (|#_module.com.If| |a#83#0#0| |a#83#1#0| |a#83#2#0|)))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1551|
 :pattern ( (|#_module.com.If| (Lit DatatypeTypeType |a#83#0#0|) (Lit DatatypeTypeType |a#83#1#0|) (Lit DatatypeTypeType |a#83#2#0|)))
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
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@7) t1@@0 h@@2) ($IsAllocBox bx@@7 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#85#0#0| T@U) (|a#85#1#0| T@U) (|a#85#2#0| T@U) ) (! (< (DtRank |a#85#0#0|) (DtRank (|#_module.com.If| |a#85#0#0| |a#85#1#0| |a#85#2#0|)))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1553|
 :pattern ( (|#_module.com.If| |a#85#0#0| |a#85#1#0| |a#85#2#0|))
)))
(assert (forall ((|a#87#0#0| T@U) (|a#87#1#0| T@U) (|a#87#2#0| T@U) ) (! (< (DtRank |a#87#1#0|) (DtRank (|#_module.com.If| |a#87#0#0| |a#87#1#0| |a#87#2#0|)))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1555|
 :pattern ( (|#_module.com.If| |a#87#0#0| |a#87#1#0| |a#87#2#0|))
)))
(assert (forall ((|a#89#0#0| T@U) (|a#89#1#0| T@U) (|a#89#2#0| T@U) ) (! (< (DtRank |a#89#2#0|) (DtRank (|#_module.com.If| |a#89#0#0| |a#89#1#0| |a#89#2#0|)))
 :qid |NipkowKleinchapter7dfy.36:64|
 :skolemid |1557|
 :pattern ( (|#_module.com.If| |a#89#0#0| |a#89#1#0| |a#89#2#0|))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@6 p@@3) (or (not (= o@@6 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@6) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@6 p@@3))) (=> (and (|ORD#IsNat| o@@6) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@6 p@@3) (< (|ORD#Offset| o@@6) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@6 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@6)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@6 p@@3))
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
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) ) (! (< (|Seq#Rank| |a#69#0#0|) (DtRank (|#_module.com.Assign| |a#69#0#0| |a#69#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1528|
 :pattern ( (|#_module.com.Assign| |a#69#0#0| |a#69#1#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) ) (! (< (DtRank |a#71#1#0|) (DtRank (|#_module.com.Assign| |a#71#0#0| |a#71#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1530|
 :pattern ( (|#_module.com.Assign| |a#71#0#0| |a#71#1#0|))
)))
(assert (forall ((|a#77#0#0| T@U) (|a#77#1#0| T@U) ) (! (< (DtRank |a#77#0#0|) (DtRank (|#_module.com.Seq| |a#77#0#0| |a#77#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1540|
 :pattern ( (|#_module.com.Seq| |a#77#0#0| |a#77#1#0|))
)))
(assert (forall ((|a#79#0#0| T@U) (|a#79#1#0| T@U) ) (! (< (DtRank |a#79#1#0|) (DtRank (|#_module.com.Seq| |a#79#0#0| |a#79#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1542|
 :pattern ( (|#_module.com.Seq| |a#79#0#0| |a#79#1#0|))
)))
(assert (forall ((|a#95#0#0| T@U) (|a#95#1#0| T@U) ) (! (< (DtRank |a#95#0#0|) (DtRank (|#_module.com.While| |a#95#0#0| |a#95#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1567|
 :pattern ( (|#_module.com.While| |a#95#0#0| |a#95#1#0|))
)))
(assert (forall ((|a#97#0#0| T@U) (|a#97#1#0| T@U) ) (! (< (DtRank |a#97#1#0|) (DtRank (|#_module.com.While| |a#97#0#0| |a#97#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1569|
 :pattern ( (|#_module.com.While| |a#97#0#0| |a#97#1#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@13 T@U) (|c#0@@8| T@U) (|s#0@@13| T@U) (|t#0@@8| T@U) ) (!  (=> (or (|_module.__default.big__step#canCall| |c#0@@8| |s#0@@13| |t#0@@8|) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |c#0@@8| Tclass._module.com) ($Is MapType |s#0@@13| (TMap (TSeq TChar) TInt))) ($Is MapType |t#0@@8| (TMap (TSeq TChar) TInt))))) (and (=> (not (_module.com.SKIP_q |c#0@@8|)) (and (=> (_module.com.Assign_q |c#0@@8|) (let ((|a#1| (_module.com._h1 |c#0@@8|)))
(|_module.__default.aval#canCall| |a#1| |s#0@@13|))) (=> (not (_module.com.Assign_q |c#0@@8|)) (and (=> (_module.com.Seq_q |c#0@@8|) (let ((|c1#1| (_module.com._h3 |c#0@@8|)))
(let ((|c0#1| (_module.com._h2 |c#0@@8|)))
(forall ((|s'#2| T@U) ) (!  (=> ($Is MapType |s'#2| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step#canCall| |c0#1| |s#0@@13| |s'#2|) (=> (_module.__default.big__step $ly@@13 |c0#1| |s#0@@13| |s'#2|) (|_module.__default.big__step#canCall| |c1#1| |s'#2| |t#0@@8|))))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |727|
 :pattern ( (_module.__default.big__step $ly@@13 |c1#1| |s'#2| |t#0@@8|))
 :pattern ( (_module.__default.big__step $ly@@13 |c0#1| |s#0@@13| |s'#2|))
))))) (=> (not (_module.com.Seq_q |c#0@@8|)) (and (=> (_module.com.If_q |c#0@@8|) (let ((|els#1| (_module.com._h6 |c#0@@8|)))
(let ((|thn#1| (_module.com._h5 |c#0@@8|)))
(let ((|b#2@@0| (_module.com._h4 |c#0@@8|)))
 (and (|_module.__default.bval#canCall| |b#2@@0| |s#0@@13|) (|_module.__default.big__step#canCall| (ite (_module.__default.bval ($LS $LZ) |b#2@@0| |s#0@@13|) |thn#1| |els#1|) |s#0@@13| |t#0@@8|)))))) (=> (not (_module.com.If_q |c#0@@8|)) (let ((|body#1| (_module.com._h8 |c#0@@8|)))
(let ((|b#3@@0| (_module.com._h7 |c#0@@8|)))
 (and (|_module.__default.bval#canCall| |b#3@@0| |s#0@@13|) (=> (not (and (not (_module.__default.bval ($LS $LZ) |b#3@@0| |s#0@@13|)) (|Map#Equal| |s#0@@13| |t#0@@8|))) (and (|_module.__default.bval#canCall| |b#3@@0| |s#0@@13|) (=> (_module.__default.bval ($LS $LZ) |b#3@@0| |s#0@@13|) (forall ((|s'#3| T@U) ) (!  (=> ($Is MapType |s'#3| (TMap (TSeq TChar) TInt)) (and (|_module.__default.big__step#canCall| |body#1| |s#0@@13| |s'#3|) (=> (_module.__default.big__step $ly@@13 |body#1| |s#0@@13| |s'#3|) (|_module.__default.big__step#canCall| (|#_module.com.While| |b#3@@0| |body#1|) |s'#3| |t#0@@8|))))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |728|
 :pattern ( (_module.__default.big__step $ly@@13 (|#_module.com.While| |b#3@@0| |body#1|) |s'#3| |t#0@@8|))
 :pattern ( (_module.__default.big__step $ly@@13 |body#1| |s#0@@13| |s'#3|))
))))))))))))))) (= (_module.__default.big__step ($LS $ly@@13) |c#0@@8| |s#0@@13| |t#0@@8|) (ite (_module.com.SKIP_q |c#0@@8|) (|Map#Equal| |s#0@@13| |t#0@@8|) (ite (_module.com.Assign_q |c#0@@8|) (let ((|a#0@@1| (_module.com._h1 |c#0@@8|)))
(let ((|x#0| (_module.com._h0 |c#0@@8|)))
(|Map#Equal| |t#0@@8| (|Map#Build| |s#0@@13| ($Box SeqType |x#0|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#0@@1| |s#0@@13|))))))) (ite (_module.com.Seq_q |c#0@@8|) (let ((|c1#0| (_module.com._h3 |c#0@@8|)))
(let ((|c0#0| (_module.com._h2 |c#0@@8|)))
(exists ((|s'#0| T@U) ) (!  (and ($Is MapType |s'#0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step $ly@@13 |c0#0| |s#0@@13| |s'#0|) (_module.__default.big__step $ly@@13 |c1#0| |s'#0| |t#0@@8|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |725|
 :pattern ( (_module.__default.big__step $ly@@13 |c1#0| |s'#0| |t#0@@8|))
 :pattern ( (_module.__default.big__step $ly@@13 |c0#0| |s#0@@13| |s'#0|))
)))) (ite (_module.com.If_q |c#0@@8|) (let ((|els#0| (_module.com._h6 |c#0@@8|)))
(let ((|thn#0| (_module.com._h5 |c#0@@8|)))
(let ((|b#0@@2| (_module.com._h4 |c#0@@8|)))
(_module.__default.big__step $ly@@13 (ite (_module.__default.bval ($LS $LZ) |b#0@@2| |s#0@@13|) |thn#0| |els#0|) |s#0@@13| |t#0@@8|)))) (let ((|body#0| (_module.com._h8 |c#0@@8|)))
(let ((|b#1@@0| (_module.com._h7 |c#0@@8|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#1@@0| |s#0@@13|)) (|Map#Equal| |s#0@@13| |t#0@@8|)) (and (_module.__default.bval ($LS $LZ) |b#1@@0| |s#0@@13|) (exists ((|s'#1| T@U) ) (!  (and ($Is MapType |s'#1| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step $ly@@13 |body#0| |s#0@@13| |s'#1|) (_module.__default.big__step $ly@@13 (|#_module.com.While| |b#1@@0| |body#0|) |s'#1| |t#0@@8|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |726|
 :pattern ( (_module.__default.big__step $ly@@13 (|#_module.com.While| |b#1@@0| |body#0|) |s'#1| |t#0@@8|))
 :pattern ( (_module.__default.big__step $ly@@13 |body#0| |s#0@@13| |s'#1|))
)))))))))))))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |729|
 :pattern ( (_module.__default.big__step ($LS $ly@@13) |c#0@@8| |s#0@@13| |t#0@@8|))
))))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
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
(assert (forall ((bx@@8 T@U) (s@@0 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@0 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@0 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@8 (TMap s@@0 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@5 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@5 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@5 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@6 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@6 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@6 y0@@1 y1@@0)))
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
(assert (forall ((d@@26 T@U) ) (!  (=> (|$IsA#_module.com| d@@26) (or (or (or (or (_module.com.SKIP_q d@@26) (_module.com.Assign_q d@@26)) (_module.com.Seq_q d@@26)) (_module.com.If_q d@@26)) (_module.com.While_q d@@26)))
 :qid |unknown.0:0|
 :skolemid |1571|
 :pattern ( (|$IsA#_module.com| d@@26))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@27 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.aexp.N_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.aexp $h@@0))) ($IsAlloc intType (int_2_U (_module.aexp.n d@@27)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( ($IsAlloc intType (int_2_U (_module.aexp.n d@@27)) TInt $h@@0))
)))
(assert (forall ((d@@28 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.bexp.Bc_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.bexp $h@@1))) ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@28)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@28)) TBool $h@@1))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> ($Is DatatypeTypeType d@@29 Tclass._module.aexp) (or (or (_module.aexp.N_q d@@29) (_module.aexp.V_q d@@29)) (_module.aexp.Plus_q d@@29)))
 :qid |unknown.0:0|
 :skolemid |1462|
 :pattern ( (_module.aexp.Plus_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.aexp))
 :pattern ( (_module.aexp.V_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.aexp))
 :pattern ( (_module.aexp.N_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.aexp))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@6))
)))
(assert (forall ((m@@11 T@U) (u@@6 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@11) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@11) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@7)) |u'|))
)))
(assert (forall ((d@@30 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@30)) (DtRank d@@30))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@30)))
)))
(assert (forall ((bx@@10 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@9)))
)))
(assert (forall ((bx@@11 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@10)))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@5 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12) t1@@2) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@8 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((o@@7 T@U) ) (!  (=> (|ORD#IsNat| o@@7) (= o@@7 (|ORD#FromNat| (|ORD#Offset| o@@7))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@7))
 :pattern ( (|ORD#IsNat| o@@7))
)))
(assert (forall ((d@@31 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@31 Tclass._module.aexp)) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.aexp $h@@2))
 :qid |unknown.0:0|
 :skolemid |1460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@31 Tclass._module.aexp $h@@2))
)))
(assert (forall ((d@@32 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@32 Tclass._module.bexp)) ($IsAlloc DatatypeTypeType d@@32 Tclass._module.bexp $h@@3))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( ($IsAlloc DatatypeTypeType d@@32 Tclass._module.bexp $h@@3))
)))
(assert (forall ((d@@33 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@33 Tclass._module.com)) ($IsAlloc DatatypeTypeType d@@33 Tclass._module.com $h@@4))
 :qid |unknown.0:0|
 :skolemid |1570|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 Tclass._module.com $h@@4))
)))
(assert (= (Tag Tclass._module.aexp) Tagclass._module.aexp))
(assert (= (TagFamily Tclass._module.aexp) tytagFamily$aexp))
(assert (= (Tag Tclass._module.bexp) Tagclass._module.bexp))
(assert (= (TagFamily Tclass._module.bexp) tytagFamily$bexp))
(assert (= (Tag Tclass._module.com) Tagclass._module.com))
(assert (= (TagFamily Tclass._module.com) tytagFamily$com))
(assert (= |#_module.com.SKIP| (Lit DatatypeTypeType |#_module.com.SKIP|)))
(assert (forall ((|a#19#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp) ($Is SeqType |a#19#0#0| (TSeq TChar)))
 :qid |NipkowKleinchapter7dfy.15:31|
 :skolemid |1442|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp))
)))
(assert (forall ((o@@8 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@8))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@8 p@@4) o@@8)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@8 p@@4) o@@8))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@8 p@@4))
)))
(assert (forall ((d@@34 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.aexp.V_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass._module.aexp $h@@5))) ($IsAlloc SeqType (_module.aexp.x d@@34) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1443|
 :pattern ( ($IsAlloc SeqType (_module.aexp.x d@@34) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@35 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.com.Assign_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass._module.com $h@@6))) ($IsAlloc SeqType (_module.com._h0 d@@35) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsAlloc SeqType (_module.com._h0 d@@35) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> ($Is DatatypeTypeType d@@36 Tclass._module.com) (or (or (or (or (_module.com.SKIP_q d@@36) (_module.com.Assign_q d@@36)) (_module.com.Seq_q d@@36)) (_module.com.If_q d@@36)) (_module.com.While_q d@@36)))
 :qid |unknown.0:0|
 :skolemid |1572|
 :pattern ( (_module.com.While_q d@@36) ($Is DatatypeTypeType d@@36 Tclass._module.com))
 :pattern ( (_module.com.If_q d@@36) ($Is DatatypeTypeType d@@36 Tclass._module.com))
 :pattern ( (_module.com.Seq_q d@@36) ($Is DatatypeTypeType d@@36 Tclass._module.com))
 :pattern ( (_module.com.Assign_q d@@36) ($Is DatatypeTypeType d@@36 Tclass._module.com))
 :pattern ( (_module.com.SKIP_q d@@36) ($Is DatatypeTypeType d@@36 Tclass._module.com))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@1 o@@9) (|Set#IsMember| b@@1 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@9))
 :pattern ( (|Set#IsMember| b@@1 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) (|a#0@@2| T@U) (|s#0@@14| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| |a#0@@2| |s#0@@14|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@2| Tclass._module.aexp) ($Is MapType |s#0@@14| (TMap (TSeq TChar) TInt))))) (and (=> (not (_module.aexp.N_q |a#0@@2|)) (=> (not (_module.aexp.V_q |a#0@@2|)) (let ((|a1#1@@0| (_module.aexp._1 |a#0@@2|)))
(let ((|a0#1@@0| (_module.aexp._0 |a#0@@2|)))
 (and (|_module.__default.aval#canCall| |a0#1@@0| |s#0@@14|) (|_module.__default.aval#canCall| |a1#1@@0| |s#0@@14|)))))) (= (_module.__default.aval ($LS $ly@@14) |a#0@@2| |s#0@@14|) (ite (_module.aexp.N_q |a#0@@2|) (let ((|n#0| (_module.aexp.n |a#0@@2|)))
|n#0|) (ite (_module.aexp.V_q |a#0@@2|) (let ((|x#0@@0| (_module.aexp.x |a#0@@2|)))
(ite (|Set#IsMember| (|Map#Domain| |s#0@@14|) ($Box SeqType |x#0@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@@14|) ($Box SeqType |x#0@@0|)))) 0)) (let ((|a1#0@@0| (_module.aexp._1 |a#0@@2|)))
(let ((|a0#0@@0| (_module.aexp._0 |a#0@@2|)))
(+ (_module.__default.aval $ly@@14 |a0#0@@0| |s#0@@14|) (_module.__default.aval $ly@@14 |a1#0@@0| |s#0@@14|)))))))))
 :qid |NipkowKleinchapter7dfy.16:16|
 :skolemid |704|
 :pattern ( (_module.__default.aval ($LS $ly@@14) |a#0@@2| |s#0@@14|))
))))
(assert (forall ((d@@37 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@37) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._0 d@@37) |_System._tuple#2$T0@@6| $h@@7))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@37) |_System._tuple#2$T0@@6| $h@@7))
)))
(assert (forall ((d@@38 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@38) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@38 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@38 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._1 d@@38) |_System._tuple#2$T1@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@38) |_System._tuple#2$T1@@7| $h@@8))
)))
(assert (forall ((d@@39 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.aexp.Plus_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass._module.aexp $h@@9))) ($IsAlloc DatatypeTypeType (_module.aexp._0 d@@39) Tclass._module.aexp $h@@9))
 :qid |unknown.0:0|
 :skolemid |1453|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._0 d@@39) Tclass._module.aexp $h@@9))
)))
(assert (forall ((d@@40 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.aexp.Plus_q d@@40) ($IsAlloc DatatypeTypeType d@@40 Tclass._module.aexp $h@@10))) ($IsAlloc DatatypeTypeType (_module.aexp._1 d@@40) Tclass._module.aexp $h@@10))
 :qid |unknown.0:0|
 :skolemid |1454|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._1 d@@40) Tclass._module.aexp $h@@10))
)))
(assert (forall ((d@@41 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.bexp.Not_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass._module.bexp $h@@11))) ($IsAlloc DatatypeTypeType (_module.bexp.op d@@41) Tclass._module.bexp $h@@11))
 :qid |unknown.0:0|
 :skolemid |1480|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.op d@@41) Tclass._module.bexp $h@@11))
)))
(assert (forall ((d@@42 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.bexp.And_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass._module.bexp $h@@12))) ($IsAlloc DatatypeTypeType (_module.bexp._0 d@@42) Tclass._module.bexp $h@@12))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._0 d@@42) Tclass._module.bexp $h@@12))
)))
(assert (forall ((d@@43 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.bexp.And_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass._module.bexp $h@@13))) ($IsAlloc DatatypeTypeType (_module.bexp._1 d@@43) Tclass._module.bexp $h@@13))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._1 d@@43) Tclass._module.bexp $h@@13))
)))
(assert (forall ((d@@44 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.bexp.Less_q d@@44) ($IsAlloc DatatypeTypeType d@@44 Tclass._module.bexp $h@@14))) ($IsAlloc DatatypeTypeType (_module.bexp.a0 d@@44) Tclass._module.aexp $h@@14))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.a0 d@@44) Tclass._module.aexp $h@@14))
)))
(assert (forall ((d@@45 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.bexp.Less_q d@@45) ($IsAlloc DatatypeTypeType d@@45 Tclass._module.bexp $h@@15))) ($IsAlloc DatatypeTypeType (_module.bexp.a1 d@@45) Tclass._module.aexp $h@@15))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp.a1 d@@45) Tclass._module.aexp $h@@15))
)))
(assert (forall ((d@@46 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.com.Assign_q d@@46) ($IsAlloc DatatypeTypeType d@@46 Tclass._module.com $h@@16))) ($IsAlloc DatatypeTypeType (_module.com._h1 d@@46) Tclass._module.aexp $h@@16))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h1 d@@46) Tclass._module.aexp $h@@16))
)))
(assert (forall ((d@@47 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_module.com.Seq_q d@@47) ($IsAlloc DatatypeTypeType d@@47 Tclass._module.com $h@@17))) ($IsAlloc DatatypeTypeType (_module.com._h2 d@@47) Tclass._module.com $h@@17))
 :qid |unknown.0:0|
 :skolemid |1536|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h2 d@@47) Tclass._module.com $h@@17))
)))
(assert (forall ((d@@48 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_module.com.Seq_q d@@48) ($IsAlloc DatatypeTypeType d@@48 Tclass._module.com $h@@18))) ($IsAlloc DatatypeTypeType (_module.com._h3 d@@48) Tclass._module.com $h@@18))
 :qid |unknown.0:0|
 :skolemid |1537|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h3 d@@48) Tclass._module.com $h@@18))
)))
(assert (forall ((d@@49 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_module.com.If_q d@@49) ($IsAlloc DatatypeTypeType d@@49 Tclass._module.com $h@@19))) ($IsAlloc DatatypeTypeType (_module.com._h4 d@@49) Tclass._module.bexp $h@@19))
 :qid |unknown.0:0|
 :skolemid |1548|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h4 d@@49) Tclass._module.bexp $h@@19))
)))
(assert (forall ((d@@50 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_module.com.If_q d@@50) ($IsAlloc DatatypeTypeType d@@50 Tclass._module.com $h@@20))) ($IsAlloc DatatypeTypeType (_module.com._h5 d@@50) Tclass._module.com $h@@20))
 :qid |unknown.0:0|
 :skolemid |1549|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h5 d@@50) Tclass._module.com $h@@20))
)))
(assert (forall ((d@@51 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_module.com.If_q d@@51) ($IsAlloc DatatypeTypeType d@@51 Tclass._module.com $h@@21))) ($IsAlloc DatatypeTypeType (_module.com._h6 d@@51) Tclass._module.com $h@@21))
 :qid |unknown.0:0|
 :skolemid |1550|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h6 d@@51) Tclass._module.com $h@@21))
)))
(assert (forall ((d@@52 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.com.While_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass._module.com $h@@22))) ($IsAlloc DatatypeTypeType (_module.com._h7 d@@52) Tclass._module.bexp $h@@22))
 :qid |unknown.0:0|
 :skolemid |1563|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h7 d@@52) Tclass._module.bexp $h@@22))
)))
(assert (forall ((d@@53 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (_module.com.While_q d@@53) ($IsAlloc DatatypeTypeType d@@53 Tclass._module.com $h@@23))) ($IsAlloc DatatypeTypeType (_module.com._h8 d@@53) Tclass._module.com $h@@23))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.com._h8 d@@53) Tclass._module.com $h@@23))
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
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (= (|#_module.com.Assign| (Lit SeqType |a#66#0#0|) (Lit DatatypeTypeType |a#66#1#0|)) (Lit DatatypeTypeType (|#_module.com.Assign| |a#66#0#0| |a#66#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1525|
 :pattern ( (|#_module.com.Assign| (Lit SeqType |a#66#0#0|) (Lit DatatypeTypeType |a#66#1#0|)))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) ) (! (= (|#_module.com.Seq| (Lit DatatypeTypeType |a#75#0#0|) (Lit DatatypeTypeType |a#75#1#0|)) (Lit DatatypeTypeType (|#_module.com.Seq| |a#75#0#0| |a#75#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:49|
 :skolemid |1538|
 :pattern ( (|#_module.com.Seq| (Lit DatatypeTypeType |a#75#0#0|) (Lit DatatypeTypeType |a#75#1#0|)))
)))
(assert (forall ((|a#93#0#0| T@U) (|a#93#1#0| T@U) ) (! (= (|#_module.com.While| (Lit DatatypeTypeType |a#93#0#0|) (Lit DatatypeTypeType |a#93#1#0|)) (Lit DatatypeTypeType (|#_module.com.While| |a#93#0#0| |a#93#1#0|)))
 :qid |NipkowKleinchapter7dfy.36:88|
 :skolemid |1565|
 :pattern ( (|#_module.com.While| (Lit DatatypeTypeType |a#93#0#0|) (Lit DatatypeTypeType |a#93#1#0|)))
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
(assert (forall ((d@@54 T@U) ) (!  (=> ($Is DatatypeTypeType d@@54 Tclass._module.bexp) (or (or (or (_module.bexp.Bc_q d@@54) (_module.bexp.Not_q d@@54)) (_module.bexp.And_q d@@54)) (_module.bexp.Less_q d@@54)))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( (_module.bexp.Less_q d@@54) ($Is DatatypeTypeType d@@54 Tclass._module.bexp))
 :pattern ( (_module.bexp.And_q d@@54) ($Is DatatypeTypeType d@@54 Tclass._module.bexp))
 :pattern ( (_module.bexp.Not_q d@@54) ($Is DatatypeTypeType d@@54 Tclass._module.bexp))
 :pattern ( (_module.bexp.Bc_q d@@54) ($Is DatatypeTypeType d@@54 Tclass._module.bexp))
)))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc boolType v@@10 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@10 TBool h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@11 T@U) ) (! ($IsAlloc charType v@@11 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@11 TChar h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@12 T@U) ) (! ($IsAlloc BoxType v@@12 TORDINAL h@@6)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v@@12 TORDINAL h@@6))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@13 (TSeq t0@@6)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@13))) ($IsBox (|Seq#Index| v@@13 i@@2) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@13 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@13 (TSeq t0@@6)))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@0 T@U) (v@@14 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@12) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@14)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@12))
)))
(assert (forall ((s@@2 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@3))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@3))))
)))
(assert (forall ((v@@15 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@15 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@15) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@15) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@15) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@15 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is intType v@@16 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@16 TInt))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is boolType v@@17 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@17 TBool))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is charType v@@18 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@18 TChar))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is BoxType v@@19 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |44|
 :pattern ( ($Is BoxType v@@19 TORDINAL))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.com.Assign| |a#65#0#0| |a#65#1#0|) Tclass._module.com)  (and ($Is SeqType |a#65#0#0| (TSeq TChar)) ($Is DatatypeTypeType |a#65#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter7dfy.36:30|
 :skolemid |1522|
 :pattern ( ($Is DatatypeTypeType (|#_module.com.Assign| |a#65#0#0| |a#65#1#0|) Tclass._module.com))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@9| () T@U)
(declare-fun |t'#0| () T@U)
(declare-fun |k'#1@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |c#0@@9| () T@U)
(declare-fun |s#0@@15| () T@U)
(declare-fun |k'#0@0| () T@U)
(declare-fun |k#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |k#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.IMP__is__deterministic)
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
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (|Map#Equal| |t#0@@9| |t'#0|))))
(let ((anon6_Then_correct  (=> (and ($IsAlloc BoxType |k'#1@0| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |c#0@@9| Tclass._module.com $Heap@0)) (=> (and (and ($IsAlloc MapType |s#0@@15| (TMap (TSeq TChar) TInt) $Heap@0) ($IsAlloc MapType |t'#0| (TMap (TSeq TChar) TInt) $Heap@0)) (and (|_module.__default.big__step_h#canCall| |k'#1@0| |c#0@@9| |s#0@@15| |t'#0|) (|_module.__default.big__step_h#canCall| |k'#1@0| |c#0@@9| |s#0@@15| |t'#0|))) (and (=> (= (ControlFlow 0 5) (- 0 18)) (exists ((|$as#k'0#0| T@U) ) (! (_module.__default.big__step_h ($LS $LZ) |$as#k'0#0| |c#0@@9| |s#0@@15| |t'#0|)
 :qid |NipkowKleinchapter7dfy.142:7|
 :skolemid |955|
))) (=> (exists ((|$as#k'0#0@@0| T@U) ) (! (_module.__default.big__step_h ($LS $LZ) |$as#k'0#0@@0| |c#0@@9| |s#0@@15| |t'#0|)
 :qid |NipkowKleinchapter7dfy.142:7|
 :skolemid |955|
)) (=> (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (and (=> (= (ControlFlow 0 5) (- 0 17)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t#0@@9|)))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t#0@@9|))))) (and (=> (= (ControlFlow 0 5) (- 0 16)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (_module.com.Assign_q |c#0@@9|) (let ((|a#0@@3| (_module.com._h1 |c#0@@9|)))
(let ((|x#0@@1| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t#0@@9| (|Map#Build| |s#0@@15| ($Box SeqType |x#0@@1|) ($Box intType (int_2_U (_module.__default.aval ($LS ($LS $LZ)) |a#0@@3| |s#0@@15|))))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (_module.com.Assign_q |c#0@@9|) (let ((|a#0@@4| (_module.com._h1 |c#0@@9|)))
(let ((|x#0@@2| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t#0@@9| (|Map#Build| |s#0@@15| ($Box SeqType |x#0@@2|) ($Box intType (int_2_U (_module.__default.aval ($LS ($LS $LZ)) |a#0@@4| |s#0@@15|)))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (_module.com.Seq_q |c#0@@9|) (let ((|c1#0@@0| (_module.com._h3 |c#0@@9|)))
(let ((|c0#0@@0| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#0@@0| T@U) ) (!  (and ($Is MapType |s'#0@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c0#0@@0| |s#0@@15| |s'#0@@0|) (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c1#0@@0| |s'#0@@0| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |957|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c1#0@@0| |s'#0@@0| |t#0@@9|))
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c0#0@@0| |s#0@@15| |s'#0@@0|))
))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (_module.com.Seq_q |c#0@@9|) (let ((|c1#0@@1| (_module.com._h3 |c#0@@9|)))
(let ((|c0#0@@1| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#0@@1| T@U) ) (!  (and ($Is MapType |s'#0@@1| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c0#0@@1| |s#0@@15| |s'#0@@1|) (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c1#0@@1| |s'#0@@1| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |957|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c1#0@@1| |s'#0@@1| |t#0@@9|))
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |c0#0@@1| |s#0@@15| |s'#0@@1|))
)))))))))) (and (=> (= (ControlFlow 0 5) (- 0 14)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (_module.com.If_q |c#0@@9|) (let ((|els#0@@0| (_module.com._h6 |c#0@@9|)))
(let ((|thn#0@@0| (_module.com._h5 |c#0@@9|)))
(let ((|b#0@@3| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS ($LS $LZ)) |b#0@@3| |s#0@@15|) |thn#0@@0| |els#0@@0|) |s#0@@15| |t#0@@9|)))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (_module.com.If_q |c#0@@9|) (let ((|els#0@@1| (_module.com._h6 |c#0@@9|)))
(let ((|thn#0@@1| (_module.com._h5 |c#0@@9|)))
(let ((|b#0@@4| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS ($LS $LZ)) |b#0@@4| |s#0@@15|) |thn#0@@1| |els#0@@1|) |s#0@@15| |t#0@@9|))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 13)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (not (_module.com.If_q |c#0@@9|)) (let ((|body#0@@0| (_module.com._h8 |c#0@@9|)))
(let ((|b#1@@1| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS ($LS $LZ)) |b#1@@1| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t#0@@9|)) (and (_module.__default.bval ($LS ($LS $LZ)) |b#1@@1| |s#0@@15|) (exists ((|s'#1@@0| T@U) ) (!  (and ($Is MapType |s'#1@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |body#0@@0| |s#0@@15| |s'#1@@0|) (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#1@@1| |body#0@@0|) |s'#1@@0| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |959|
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#1@@1| |body#0@@0|) |s'#1@@0| |t#0@@9|))
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |body#0@@0| |s#0@@15| |s'#1@@0|))
)))))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (< 0 (|ORD#Offset| |k#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (not (_module.com.If_q |c#0@@9|)) (let ((|body#0@@1| (_module.com._h8 |c#0@@9|)))
(let ((|b#1@@2| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS ($LS $LZ)) |b#1@@2| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t#0@@9|)) (and (_module.__default.bval ($LS ($LS $LZ)) |b#1@@2| |s#0@@15|) (exists ((|s'#1@@1| T@U) ) (!  (and ($Is MapType |s'#1@@1| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |body#0@@1| |s#0@@15| |s'#1@@1|) (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#1@@2| |body#0@@1|) |s'#1@@1| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |959|
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#1@@2| |body#0@@1|) |s'#1@@1| |t#0@@9|))
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k#0@0| (|ORD#FromNat| 1)) |body#0@@1| |s#0@@15| |s'#1@@1|))
))))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (= (LitInt 0) (|ORD#Offset| |k#0@0|)) (exists ((|_k'#0@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@1| |k#0@0|) (_module.__default.big__step_h ($LS $LZ) |_k'#0@@1| |c#0@@9| |s#0@@15| |t#0@@9|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |960|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) |_k'#0@@1| |c#0@@9| |s#0@@15| |t#0@@9|))
)))))) (=> (=> (|_module.__default.big__step_h#canCall| |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (or (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (=> (= (LitInt 0) (|ORD#Offset| |k#0@0|)) (exists ((|_k'#0@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@2| |k#0@0|) (_module.__default.big__step_h ($LS $LZ) |_k'#0@@2| |c#0@@9| |s#0@@15| |t#0@@9|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |960|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) |_k'#0@@2| |c#0@@9| |s#0@@15| |t#0@@9|))
))))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t'#0|)))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t'#0|))))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (_module.com.Assign_q |c#0@@9|) (let ((|a#2@@0| (_module.com._h1 |c#0@@9|)))
(let ((|x#2@@1| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t'#0| (|Map#Build| |s#0@@15| ($Box SeqType |x#2@@1|) ($Box intType (int_2_U (_module.__default.aval ($LS ($LS $LZ)) |a#2@@0| |s#0@@15|))))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (_module.com.Assign_q |c#0@@9|) (let ((|a#2@@1| (_module.com._h1 |c#0@@9|)))
(let ((|x#2@@2| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t'#0| (|Map#Build| |s#0@@15| ($Box SeqType |x#2@@2|) ($Box intType (int_2_U (_module.__default.aval ($LS ($LS $LZ)) |a#2@@1| |s#0@@15|)))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (_module.com.Seq_q |c#0@@9|) (let ((|c1#2@@0| (_module.com._h3 |c#0@@9|)))
(let ((|c0#2@@0| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#4| T@U) ) (!  (and ($Is MapType |s'#4| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c0#2@@0| |s#0@@15| |s'#4|) (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c1#2@@0| |s'#4| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |965|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c1#2@@0| |s'#4| |t'#0|))
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c0#2@@0| |s#0@@15| |s'#4|))
))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (_module.com.Seq_q |c#0@@9|) (let ((|c1#2@@1| (_module.com._h3 |c#0@@9|)))
(let ((|c0#2@@1| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#4@@0| T@U) ) (!  (and ($Is MapType |s'#4@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c0#2@@1| |s#0@@15| |s'#4@@0|) (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c1#2@@1| |s'#4@@0| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |965|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c1#2@@1| |s'#4@@0| |t'#0|))
 :pattern ( (_module.__default.big__step_h ($LS $LZ) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |c0#2@@1| |s#0@@15| |s'#4@@0|))
)))))))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (_module.com.If_q |c#0@@9|) (let ((|els#2@@0| (_module.com._h6 |c#0@@9|)))
(let ((|thn#2@@0| (_module.com._h5 |c#0@@9|)))
(let ((|b#4@@1| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS ($LS $LZ)) |b#4@@1| |s#0@@15|) |thn#2@@0| |els#2@@0|) |s#0@@15| |t'#0|)))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (_module.com.If_q |c#0@@9|) (let ((|els#2@@1| (_module.com._h6 |c#0@@9|)))
(let ((|thn#2@@1| (_module.com._h5 |c#0@@9|)))
(let ((|b#4@@2| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (ite (_module.__default.bval ($LS ($LS $LZ)) |b#4@@2| |s#0@@15|) |thn#2@@1| |els#2@@1|) |s#0@@15| |t'#0|))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (not (_module.com.If_q |c#0@@9|)) (let ((|body#2@@0| (_module.com._h8 |c#0@@9|)))
(let ((|b#5@@0| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS ($LS $LZ)) |b#5@@0| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t'#0|)) (and (_module.__default.bval ($LS ($LS $LZ)) |b#5@@0| |s#0@@15|) (exists ((|s'#5| T@U) ) (!  (and ($Is MapType |s'#5| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |body#2@@0| |s#0@@15| |s'#5|) (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5@@0| |body#2@@0|) |s'#5| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |967|
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5@@0| |body#2@@0|) |s'#5| |t'#0|))
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |body#2@@0| |s#0@@15| |s'#5|))
)))))))))))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (< 0 (|ORD#Offset| |k'#0@0|)) (=> (not (_module.com.SKIP_q |c#0@@9|)) (=> (not (_module.com.Assign_q |c#0@@9|)) (=> (not (_module.com.Seq_q |c#0@@9|)) (=> (not (_module.com.If_q |c#0@@9|)) (let ((|body#2@@1| (_module.com._h8 |c#0@@9|)))
(let ((|b#5@@1| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS ($LS $LZ)) |b#5@@1| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t'#0|)) (and (_module.__default.bval ($LS ($LS $LZ)) |b#5@@1| |s#0@@15|) (exists ((|s'#5@@0| T@U) ) (!  (and ($Is MapType |s'#5@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |body#2@@1| |s#0@@15| |s'#5@@0|) (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5@@1| |body#2@@1|) |s'#5@@0| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |967|
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) (|#_module.com.While| |b#5@@1| |body#2@@1|) |s'#5@@0| |t'#0|))
 :pattern ( (_module.__default.big__step_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#0@0| (|ORD#FromNat| 1)) |body#2@@1| |s#0@@15| |s'#5@@0|))
))))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (= (LitInt 0) (|ORD#Offset| |k'#0@0|)) (exists ((|_k'#1@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@1| |k'#0@0|) (_module.__default.big__step_h ($LS $LZ) |_k'#1@@1| |c#0@@9| |s#0@@15| |t'#0|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |968|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) |_k'#1@@1| |c#0@@9| |s#0@@15| |t'#0|))
)))))) (=> (=> (|_module.__default.big__step_h#canCall| |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (or (_module.__default.big__step_h ($LS $LZ) |k'#0@0| |c#0@@9| |s#0@@15| |t'#0|) (=> (= (LitInt 0) (|ORD#Offset| |k'#0@0|)) (exists ((|_k'#1@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@2| |k'#0@0|) (_module.__default.big__step_h ($LS $LZ) |_k'#1@@2| |c#0@@9| |s#0@@15| |t'#0|))
 :qid |NipkowKleinchapter7dfy.40:17|
 :skolemid |968|
 :pattern ( (_module.__default.big__step_h ($LS $LZ) |_k'#1@@2| |c#0@@9| |s#0@@15| |t'#0|))
))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|Map#Equal| |t#0@@9| |t'#0|)) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))))))))
(let ((anon6_Else_correct true))
(let ((anon5_Then_correct  (=> (and ($IsAlloc BoxType |k#1@0| TORDINAL $Heap@0) ($IsAlloc DatatypeTypeType |c#0@@9| Tclass._module.com $Heap@0)) (=> (and (and ($IsAlloc MapType |s#0@@15| (TMap (TSeq TChar) TInt) $Heap@0) ($IsAlloc MapType |t#0@@9| (TMap (TSeq TChar) TInt) $Heap@0)) (and (|_module.__default.big__step_h#canCall| |k#1@0| |c#0@@9| |s#0@@15| |t#0@@9|) (|_module.__default.big__step_h#canCall| |k#1@0| |c#0@@9| |s#0@@15| |t#0@@9|))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (exists ((|$as#k0#0| T@U) ) (! (_module.__default.big__step_h ($LS $LZ) |$as#k0#0| |c#0@@9| |s#0@@15| |t#0@@9|)
 :qid |NipkowKleinchapter7dfy.141:7|
 :skolemid |954|
))) (=> (exists ((|$as#k0#0@@0| T@U) ) (! (_module.__default.big__step_h ($LS $LZ) |$as#k0#0@@0| |c#0@@9| |s#0@@15| |t#0@@9|)
 :qid |NipkowKleinchapter7dfy.141:7|
 :skolemid |954|
)) (=> (_module.__default.big__step_h ($LS $LZ) |k#0@0| |c#0@@9| |s#0@@15| |t#0@@9|) (and (=> (= (ControlFlow 0 19) 5) anon6_Then_correct) (=> (= (ControlFlow 0 19) 2) anon6_Else_correct)))))))))
(let ((anon5_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.com| |c#0@@9|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#c0#0| T@U) (|$ih#s0#0| T@U) (|$ih#t0#0| T@U) (|$ih#t'0#0| T@U) ) (!  (=> (and (and (and (and (and ($Is DatatypeTypeType |$ih#c0#0| Tclass._module.com) ($Is MapType |$ih#s0#0| (TMap (TSeq TChar) TInt))) ($Is MapType |$ih#t0#0| (TMap (TSeq TChar) TInt))) ($Is MapType |$ih#t'0#0| (TMap (TSeq TChar) TInt))) (and (_module.__default.big__step ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t0#0|) (_module.__default.big__step ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t'0#0|))) (or (< (DtRank |$ih#c0#0|) (DtRank |c#0@@9|)) (and (= (DtRank |$ih#c0#0|) (DtRank |c#0@@9|)) (or (and (|Set#Subset| (|Map#Domain| |$ih#s0#0|) (|Map#Domain| |s#0@@15|)) (not (|Set#Subset| (|Map#Domain| |s#0@@15|) (|Map#Domain| |$ih#s0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#s0#0|) (|Map#Domain| |s#0@@15|)) (or (and (|Set#Subset| (|Map#Domain| |$ih#t0#0|) (|Map#Domain| |t#0@@9|)) (not (|Set#Subset| (|Map#Domain| |t#0@@9|) (|Map#Domain| |$ih#t0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#t0#0|) (|Map#Domain| |t#0@@9|)) (and (|Set#Subset| (|Map#Domain| |$ih#t'0#0|) (|Map#Domain| |t'#0|)) (not (|Set#Subset| (|Map#Domain| |t'#0|) (|Map#Domain| |$ih#t'0#0|))))))))))) (|Map#Equal| |$ih#t0#0| |$ih#t'0#0|))
 :qid |NipkowKleinchapter7dfy.133:28|
 :skolemid |953|
 :pattern ( (_module.__default.big__step ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t'0#0|) (_module.__default.big__step ($LS $LZ) |$ih#c0#0| |$ih#s0#0| |$ih#t0#0|))
)))) (and (=> (= (ControlFlow 0 21) 19) anon5_Then_correct) (=> (= (ControlFlow 0 21) 1) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |c#0@@9| Tclass._module.com) ($IsAlloc DatatypeTypeType |c#0@@9| Tclass._module.com $Heap)) (|$IsA#_module.com| |c#0@@9|)) (and (and ($Is MapType |s#0@@15| (TMap (TSeq TChar) TInt)) ($IsAlloc MapType |s#0@@15| (TMap (TSeq TChar) TInt) $Heap)) (and ($Is MapType |t#0@@9| (TMap (TSeq TChar) TInt)) ($IsAlloc MapType |t#0@@9| (TMap (TSeq TChar) TInt) $Heap)))) (=> (and (and (and (and ($Is MapType |t'#0| (TMap (TSeq TChar) TInt)) ($IsAlloc MapType |t'#0| (TMap (TSeq TChar) TInt) $Heap)) (= 7 $FunctionContextHeight)) (and (|_module.__default.big__step#canCall| |c#0@@9| |s#0@@15| |t#0@@9|) (and (_module.__default.big__step ($LS $LZ) |c#0@@9| |s#0@@15| |t#0@@9|) (ite (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t#0@@9|) (ite (_module.com.Assign_q |c#0@@9|) (let ((|a#5@@0| (_module.com._h1 |c#0@@9|)))
(let ((|x#5@@0| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t#0@@9| (|Map#Build| |s#0@@15| ($Box SeqType |x#5@@0|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#5@@0| |s#0@@15|))))))) (ite (_module.com.Seq_q |c#0@@9|) (let ((|c1#5@@0| (_module.com._h3 |c#0@@9|)))
(let ((|c0#5@@0| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#10@@0| T@U) ) (!  (and ($Is MapType |s'#10@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step ($LS $LZ) |c0#5@@0| |s#0@@15| |s'#10@@0|) (_module.__default.big__step ($LS $LZ) |c1#5@@0| |s'#10@@0| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |946|
 :pattern ( (_module.__default.big__step ($LS $LZ) |c1#5@@0| |s'#10@@0| |t#0@@9|))
 :pattern ( (_module.__default.big__step ($LS $LZ) |c0#5@@0| |s#0@@15| |s'#10@@0|))
)))) (ite (_module.com.If_q |c#0@@9|) (let ((|els#5@@0| (_module.com._h6 |c#0@@9|)))
(let ((|thn#5@@0| (_module.com._h5 |c#0@@9|)))
(let ((|b#10@@0| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step ($LS $LZ) (ite (_module.__default.bval ($LS $LZ) |b#10@@0| |s#0@@15|) |thn#5@@0| |els#5@@0|) |s#0@@15| |t#0@@9|)))) (let ((|body#5@@0| (_module.com._h8 |c#0@@9|)))
(let ((|b#11@@0| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#11@@0| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t#0@@9|)) (and (_module.__default.bval ($LS $LZ) |b#11@@0| |s#0@@15|) (exists ((|s'#11@@0| T@U) ) (!  (and ($Is MapType |s'#11@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step ($LS $LZ) |body#5@@0| |s#0@@15| |s'#11@@0|) (_module.__default.big__step ($LS $LZ) (|#_module.com.While| |b#11@@0| |body#5@@0|) |s'#11@@0| |t#0@@9|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |947|
 :pattern ( (_module.__default.big__step ($LS $LZ) (|#_module.com.While| |b#11@@0| |body#5@@0|) |s'#11@@0| |t#0@@9|))
 :pattern ( (_module.__default.big__step ($LS $LZ) |body#5@@0| |s#0@@15| |s'#11@@0|))
))))))))))))) (and (and (|_module.__default.big__step#canCall| |c#0@@9| |s#0@@15| |t'#0|) (and (_module.__default.big__step ($LS $LZ) |c#0@@9| |s#0@@15| |t'#0|) (ite (_module.com.SKIP_q |c#0@@9|) (|Map#Equal| |s#0@@15| |t'#0|) (ite (_module.com.Assign_q |c#0@@9|) (let ((|a#7@@0| (_module.com._h1 |c#0@@9|)))
(let ((|x#7@@0| (_module.com._h0 |c#0@@9|)))
(|Map#Equal| |t'#0| (|Map#Build| |s#0@@15| ($Box SeqType |x#7@@0|) ($Box intType (int_2_U (_module.__default.aval ($LS $LZ) |a#7@@0| |s#0@@15|))))))) (ite (_module.com.Seq_q |c#0@@9|) (let ((|c1#7@@0| (_module.com._h3 |c#0@@9|)))
(let ((|c0#7@@0| (_module.com._h2 |c#0@@9|)))
(exists ((|s'#14@@0| T@U) ) (!  (and ($Is MapType |s'#14@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step ($LS $LZ) |c0#7@@0| |s#0@@15| |s'#14@@0|) (_module.__default.big__step ($LS $LZ) |c1#7@@0| |s'#14@@0| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.48:12|
 :skolemid |951|
 :pattern ( (_module.__default.big__step ($LS $LZ) |c1#7@@0| |s'#14@@0| |t'#0|))
 :pattern ( (_module.__default.big__step ($LS $LZ) |c0#7@@0| |s#0@@15| |s'#14@@0|))
)))) (ite (_module.com.If_q |c#0@@9|) (let ((|els#7@@0| (_module.com._h6 |c#0@@9|)))
(let ((|thn#7@@0| (_module.com._h5 |c#0@@9|)))
(let ((|b#14@@0| (_module.com._h4 |c#0@@9|)))
(_module.__default.big__step ($LS $LZ) (ite (_module.__default.bval ($LS $LZ) |b#14@@0| |s#0@@15|) |thn#7@@0| |els#7@@0|) |s#0@@15| |t'#0|)))) (let ((|body#7@@0| (_module.com._h8 |c#0@@9|)))
(let ((|b#15@@0| (_module.com._h7 |c#0@@9|)))
 (or (and (not (_module.__default.bval ($LS $LZ) |b#15@@0| |s#0@@15|)) (|Map#Equal| |s#0@@15| |t'#0|)) (and (_module.__default.bval ($LS $LZ) |b#15@@0| |s#0@@15|) (exists ((|s'#15@@0| T@U) ) (!  (and ($Is MapType |s'#15@@0| (TMap (TSeq TChar) TInt)) (and (_module.__default.big__step ($LS $LZ) |body#7@@0| |s#0@@15| |s'#15@@0|) (_module.__default.big__step ($LS $LZ) (|#_module.com.While| |b#15@@0| |body#7@@0|) |s'#15@@0| |t'#0|)))
 :qid |NipkowKleinchapter7dfy.55:27|
 :skolemid |952|
 :pattern ( (_module.__default.big__step ($LS $LZ) (|#_module.com.While| |b#15@@0| |body#7@@0|) |s'#15@@0| |t'#0|))
 :pattern ( (_module.__default.big__step ($LS $LZ) |body#7@@0| |s#0@@15| |s'#15@@0|))
)))))))))))) (= (ControlFlow 0 22) 21))) anon0_correct)))))
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
