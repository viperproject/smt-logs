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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Expression () T@U)
(declare-fun |##_module.Expression.Const| () T@U)
(declare-fun |##_module.Expression.Var| () T@U)
(declare-fun |##_module.Expression.Nary| () T@U)
(declare-fun tytagFamily$Expression () T@U)
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
(declare-fun |#_module.Expression.Nary| (Int T@U) T@U)
(declare-fun Tclass._module.Expression () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Substitute (T@U T@U Int Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Substitute#canCall| (T@U Int Int) Bool)
(declare-fun _module.Expression.Const_q (T@U) Bool)
(declare-fun _module.Expression.Var_q (T@U) Bool)
(declare-fun _module.Expression._h9 (T@U) T@U)
(declare-fun |_module.__default.SubstSeq#canCall| (T@U T@U Int Int) Bool)
(declare-fun _module.Expression._h7 (T@U) Int)
(declare-fun |#_module.Expression.Const| (Int) T@U)
(declare-fun _module.Expression._h8 (T@U) Int)
(declare-fun _module.__default.SubstSeq (T@U T@U T@U Int Int) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Expression.Nary_q (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |#_module.Expression.Var| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.Expression._h6 (T@U) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._module.Expression |##_module.Expression.Const| |##_module.Expression.Var| |##_module.Expression.Nary| tytagFamily$Expression)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SeqType) 4)))
(assert (forall ((|a#41#0#0| Int) (|a#41#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.Nary| |a#41#0#0| |a#41#1#0|) Tclass._module.Expression)  (and ($Is intType (int_2_U |a#41#0#0|) TInt) ($Is SeqType |a#41#1#0| (TSeq Tclass._module.Expression))))
 :qid |Substitutiondfy.53:8|
 :skolemid |745|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.Nary| |a#41#0#0| |a#41#1#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#45#0#0| Int) (|a#45#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#45#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#45#1#0| i))) (DtRank (|#_module.Expression.Nary| |a#45#0#0| |a#45#1#0|))))
 :qid |Substitutiondfy.53:8|
 :skolemid |751|
 :pattern ( (|Seq#Index| |a#45#1#0| i) (|#_module.Expression.Nary| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|e#0| T@U) (|v#0| Int) (|val#0| Int) ) (!  (=> (or (|_module.__default.Substitute#canCall| |e#0| |v#0| |val#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0| Tclass._module.Expression))) (and (=> (not (_module.Expression.Const_q |e#0|)) (=> (not (_module.Expression.Var_q |e#0|)) (let ((|args#1| (_module.Expression._h9 |e#0|)))
(|_module.__default.SubstSeq#canCall| |e#0| |args#1| |v#0| |val#0|)))) (= (_module.__default.Substitute ($LS $ly) |e#0| |v#0| |val#0|) (ite (_module.Expression.Const_q |e#0|) |e#0| (ite (_module.Expression.Var_q |e#0|) (let ((|x#0| (_module.Expression._h7 |e#0|)))
(ite (= |x#0| |v#0|) (|#_module.Expression.Const| |val#0|) |e#0|)) (let ((|args#0| (_module.Expression._h9 |e#0|)))
(let ((|op#0| (_module.Expression._h8 |e#0|)))
(|#_module.Expression.Nary| |op#0| (_module.__default.SubstSeq $ly |e#0| |args#0| |v#0| |val#0|)))))))))
 :qid |Substitutiondfy.55:16|
 :skolemid |616|
 :pattern ( (_module.__default.Substitute ($LS $ly) |e#0| |v#0| |val#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|parent#0| T@U) (|q#0| T@U) (|v#0@@0| Int) (|val#0@@0| Int) ) (!  (=> (or (|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |parent#0|) (Lit SeqType |q#0|) (LitInt |v#0@@0|) (LitInt |val#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |parent#0| Tclass._module.Expression) ($Is SeqType |q#0| (TSeq Tclass._module.Expression))) (forall ((|a#3| T@U) ) (!  (=> ($Is DatatypeTypeType |a#3| Tclass._module.Expression) (=> (|Seq#Contains| |q#0| ($Box DatatypeTypeType |a#3|)) (< (DtRank |a#3|) (DtRank |parent#0|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |631|
 :pattern ( (|Seq#Contains| |q#0| ($Box DatatypeTypeType |a#3|)))
))))) (and (=> (not (|Seq#Equal| |q#0| |Seq#Empty|)) (and (|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |parent#0|) (|Seq#Take| (Lit SeqType |q#0|) (- (|Seq#Length| (Lit SeqType |q#0|)) 1)) (LitInt |v#0@@0|) (LitInt |val#0@@0|)) (|_module.__default.Substitute#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |q#0|) (- (|Seq#Length| (Lit SeqType |q#0|)) 1))) (LitInt |v#0@@0|) (LitInt |val#0@@0|)))) (= (_module.__default.SubstSeq ($LS $ly@@0) (Lit DatatypeTypeType |parent#0|) (Lit SeqType |q#0|) (LitInt |v#0@@0|) (LitInt |val#0@@0|)) (ite (|Seq#Equal| |q#0| |Seq#Empty|) |Seq#Empty| (|Seq#Append| (_module.__default.SubstSeq ($LS $ly@@0) (Lit DatatypeTypeType |parent#0|) (|Seq#Take| (Lit SeqType |q#0|) (- (|Seq#Length| (Lit SeqType |q#0|)) 1)) (LitInt |v#0@@0|) (LitInt |val#0@@0|)) (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (_module.__default.Substitute ($LS $ly@@0) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |q#0|) (- (|Seq#Length| (Lit SeqType |q#0|)) 1))) (LitInt |v#0@@0|) (LitInt |val#0@@0|)))))))))
 :qid |Substitutiondfy.64:16|
 :weight 3
 :skolemid |632|
 :pattern ( (_module.__default.SubstSeq ($LS $ly@@0) (Lit DatatypeTypeType |parent#0|) (Lit SeqType |q#0|) (LitInt |v#0@@0|) (LitInt |val#0@@0|)))
))))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (forall (($ly@@1 T@U) (|parent#0@@0| T@U) (|q#0@@0| T@U) (|v#0@@1| Int) (|val#0@@1| Int) ) (! (= (_module.__default.SubstSeq ($LS $ly@@1) |parent#0@@0| |q#0@@0| |v#0@@1| |val#0@@1|) (_module.__default.SubstSeq $ly@@1 |parent#0@@0| |q#0@@0| |v#0@@1| |val#0@@1|))
 :qid |Substitutiondfy.64:16|
 :skolemid |622|
 :pattern ( (_module.__default.SubstSeq ($LS $ly@@1) |parent#0@@0| |q#0@@0| |v#0@@1| |val#0@@1|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|parent#0@@1| T@U) (|q#0@@1| T@U) (|v#0@@2| Int) (|val#0@@2| Int) ) (!  (=> (or (|_module.__default.SubstSeq#canCall| |parent#0@@1| |q#0@@1| |v#0@@2| |val#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |parent#0@@1| Tclass._module.Expression) ($Is SeqType |q#0@@1| (TSeq Tclass._module.Expression))) (forall ((|a#0| T@U) ) (!  (=> ($Is DatatypeTypeType |a#0| Tclass._module.Expression) (=> (|Seq#Contains| |q#0@@1| ($Box DatatypeTypeType |a#0|)) (< (DtRank |a#0|) (DtRank |parent#0@@1|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |624|
 :pattern ( (|Seq#Contains| |q#0@@1| ($Box DatatypeTypeType |a#0|)))
))))) ($Is SeqType (_module.__default.SubstSeq $ly@@2 |parent#0@@1| |q#0@@1| |v#0@@2| |val#0@@2|) (TSeq Tclass._module.Expression)))
 :qid |Substitutiondfy.64:16|
 :skolemid |625|
 :pattern ( (_module.__default.SubstSeq $ly@@2 |parent#0@@1| |q#0@@1| |v#0@@2| |val#0@@2|))
))))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|e#0@@0| T@U) (|v#0@@3| Int) (|val#0@@3| Int) ) (!  (=> (or (|_module.__default.Substitute#canCall| (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@0| Tclass._module.Expression))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.Const_q (Lit DatatypeTypeType |e#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.Var_q (Lit DatatypeTypeType |e#0@@0|)))))) (let ((|args#5| (Lit SeqType (_module.Expression._h9 (Lit DatatypeTypeType |e#0@@0|)))))
(|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |e#0@@0|) |args#5| (LitInt |v#0@@3|) (LitInt |val#0@@3|))))) (= (_module.__default.Substitute ($LS $ly@@3) (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)) (ite (_module.Expression.Const_q (Lit DatatypeTypeType |e#0@@0|)) (Lit DatatypeTypeType |e#0@@0|) (ite (_module.Expression.Var_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|x#4| (LitInt (_module.Expression._h7 (Lit DatatypeTypeType |e#0@@0|)))))
(ite (= |x#4| (LitInt |v#0@@3|)) (|#_module.Expression.Const| (LitInt |val#0@@3|)) |e#0@@0|)) (let ((|args#4| (Lit SeqType (_module.Expression._h9 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|op#4| (LitInt (_module.Expression._h8 (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#_module.Expression.Nary| |op#4| (Lit SeqType (_module.__default.SubstSeq ($LS $ly@@3) (Lit DatatypeTypeType |e#0@@0|) |args#4| (LitInt |v#0@@3|) (LitInt |val#0@@3|))))))))))))
 :qid |Substitutiondfy.55:16|
 :weight 3
 :skolemid |618|
 :pattern ( (_module.__default.Substitute ($LS $ly@@3) (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)))
))))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@3 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|e#0@@1| T@U) (|v#0@@4| Int) (|val#0@@4| Int) ) (!  (=> (or (|_module.__default.Substitute#canCall| |e#0@@1| |v#0@@4| |val#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@1| Tclass._module.Expression))) ($Is DatatypeTypeType (_module.__default.Substitute $ly@@4 |e#0@@1| |v#0@@4| |val#0@@4|) Tclass._module.Expression))
 :qid |Substitutiondfy.55:16|
 :skolemid |614|
 :pattern ( (_module.__default.Substitute $ly@@4 |e#0@@1| |v#0@@4| |val#0@@4|))
))))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Expression.Const_q d) (= (DatatypeCtorId d) |##_module.Expression.Const|))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (_module.Expression.Const_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Expression.Var_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Expression.Var|))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (_module.Expression.Var_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Expression.Nary_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Expression.Nary|))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( (_module.Expression.Nary_q d@@1))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((s@@6 T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i@@0)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i@@0)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Expression.Nary_q d@@2) (exists ((|a#40#0#0| Int) (|a#40#1#0| T@U) ) (! (= d@@2 (|#_module.Expression.Nary| |a#40#0#0| |a#40#1#0|))
 :qid |Substitutiondfy.53:8|
 :skolemid |743|
)))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_module.Expression.Nary_q d@@2))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) ) (!  (=> (and (< 0 i@@1) (<= i@@1 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@1)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@1)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Expression.Const_q d@@3) (exists ((|a#30#0#0| Int) ) (! (= d@@3 (|#_module.Expression.Const| |a#30#0#0|))
 :qid |Substitutiondfy.51:9|
 :skolemid |727|
)))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Expression.Const_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Expression.Var_q d@@4) (exists ((|a#35#0#0| Int) ) (! (= d@@4 (|#_module.Expression.Var| |a#35#0#0|))
 :qid |Substitutiondfy.52:7|
 :skolemid |735|
)))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (_module.Expression.Var_q d@@4))
)))
(assert (forall ((s@@8 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@1)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@8 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h) ($IsAlloc T@@1 v@@2 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h))
)))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|parent#0@@2| T@U) (|q#0@@2| T@U) (|v#0@@5| Int) (|val#0@@5| Int) ) (!  (=> (or (|_module.__default.SubstSeq#canCall| |parent#0@@2| |q#0@@2| |v#0@@5| |val#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |parent#0@@2| Tclass._module.Expression) ($Is SeqType |q#0@@2| (TSeq Tclass._module.Expression))) (forall ((|a#1| T@U) ) (!  (=> ($Is DatatypeTypeType |a#1| Tclass._module.Expression) (=> (|Seq#Contains| |q#0@@2| ($Box DatatypeTypeType |a#1|)) (< (DtRank |a#1|) (DtRank |parent#0@@2|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |626|
 :pattern ( (|Seq#Contains| |q#0@@2| ($Box DatatypeTypeType |a#1|)))
))))) (and (=> (not (|Seq#Equal| |q#0@@2| |Seq#Empty|)) (and (|_module.__default.SubstSeq#canCall| |parent#0@@2| (|Seq#Take| |q#0@@2| (- (|Seq#Length| |q#0@@2|) 1)) |v#0@@5| |val#0@@5|) (|_module.__default.Substitute#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |q#0@@2| (- (|Seq#Length| |q#0@@2|) 1))) |v#0@@5| |val#0@@5|))) (= (_module.__default.SubstSeq ($LS $ly@@5) |parent#0@@2| |q#0@@2| |v#0@@5| |val#0@@5|) (ite (|Seq#Equal| |q#0@@2| |Seq#Empty|) |Seq#Empty| (|Seq#Append| (_module.__default.SubstSeq $ly@@5 |parent#0@@2| (|Seq#Take| |q#0@@2| (- (|Seq#Length| |q#0@@2|) 1)) |v#0@@5| |val#0@@5|) (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (_module.__default.Substitute $ly@@5 ($Unbox DatatypeTypeType (|Seq#Index| |q#0@@2| (- (|Seq#Length| |q#0@@2|) 1))) |v#0@@5| |val#0@@5|))))))))
 :qid |Substitutiondfy.64:16|
 :skolemid |628|
 :pattern ( (_module.__default.SubstSeq ($LS $ly@@5) |parent#0@@2| |q#0@@2| |v#0@@5| |val#0@@5|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Expression)))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsBox bx@@0 Tclass._module.Expression))
)))
(assert (forall ((s@@10 T@U) (i@@2 Int) (v@@3 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@3) i@@2) v@@3)) (=> (or (not (= i@@2 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@3) i@@2) (|Seq#Index| s@@10 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@3) i@@2))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7)  (or (|Seq#Contains| s0@@1 x@@7) (|Seq#Contains| s1@@1 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7))
)))
(assert (forall ((s@@11 T@U) (n@@5 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@8) (exists ((i@@3 Int) ) (!  (and (and (and (<= 0 i@@3) (< i@@3 n@@5)) (< i@@3 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@3) x@@8))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@11 i@@3))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@8))
)))
(assert (forall ((s@@12 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s@@12 x@@9) (exists ((i@@4 Int) ) (!  (and (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@4) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@12 i@@4))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@12 x@@9))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@13 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|parent#0@@3| T@U) (|q#0@@3| T@U) (|v#0@@6| Int) (|val#0@@6| Int) ) (!  (=> (or (|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |parent#0@@3|) (Lit SeqType |q#0@@3|) |v#0@@6| |val#0@@6|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |parent#0@@3| Tclass._module.Expression) ($Is SeqType |q#0@@3| (TSeq Tclass._module.Expression))) (forall ((|a#2| T@U) ) (!  (=> ($Is DatatypeTypeType |a#2| Tclass._module.Expression) (=> (|Seq#Contains| |q#0@@3| ($Box DatatypeTypeType |a#2|)) (< (DtRank |a#2|) (DtRank |parent#0@@3|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |629|
 :pattern ( (|Seq#Contains| |q#0@@3| ($Box DatatypeTypeType |a#2|)))
))))) (and (=> (not (|Seq#Equal| |q#0@@3| |Seq#Empty|)) (and (|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |parent#0@@3|) (|Seq#Take| (Lit SeqType |q#0@@3|) (- (|Seq#Length| (Lit SeqType |q#0@@3|)) 1)) |v#0@@6| |val#0@@6|) (|_module.__default.Substitute#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |q#0@@3|) (- (|Seq#Length| (Lit SeqType |q#0@@3|)) 1))) |v#0@@6| |val#0@@6|))) (= (_module.__default.SubstSeq ($LS $ly@@6) (Lit DatatypeTypeType |parent#0@@3|) (Lit SeqType |q#0@@3|) |v#0@@6| |val#0@@6|) (ite (|Seq#Equal| |q#0@@3| |Seq#Empty|) |Seq#Empty| (|Seq#Append| (_module.__default.SubstSeq ($LS $ly@@6) (Lit DatatypeTypeType |parent#0@@3|) (|Seq#Take| (Lit SeqType |q#0@@3|) (- (|Seq#Length| (Lit SeqType |q#0@@3|)) 1)) |v#0@@6| |val#0@@6|) (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (_module.__default.Substitute ($LS $ly@@6) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |q#0@@3|) (- (|Seq#Length| (Lit SeqType |q#0@@3|)) 1))) |v#0@@6| |val#0@@6|))))))))
 :qid |Substitutiondfy.64:16|
 :weight 3
 :skolemid |630|
 :pattern ( (_module.__default.SubstSeq ($LS $ly@@6) (Lit DatatypeTypeType |parent#0@@3|) (Lit SeqType |q#0@@3|) |v#0@@6| |val#0@@6|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@2) ($Is T@@2 v@@4 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@2))
)))
(assert (forall ((s@@14 T@U) ) (! (<= 0 (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@14))
)))
(assert (forall ((s@@15 T@U) (i@@5 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@5) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@5) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (forall ((|a#39#0#0| Int) (|a#39#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.Nary| |a#39#0#0| |a#39#1#0|)) |##_module.Expression.Nary|)
 :qid |Substitutiondfy.53:8|
 :skolemid |741|
 :pattern ( (|#_module.Expression.Nary| |a#39#0#0| |a#39#1#0|))
)))
(assert (forall ((|a#43#0#0| Int) (|a#43#1#0| T@U) ) (! (= (_module.Expression._h8 (|#_module.Expression.Nary| |a#43#0#0| |a#43#1#0|)) |a#43#0#0|)
 :qid |Substitutiondfy.53:8|
 :skolemid |749|
 :pattern ( (|#_module.Expression.Nary| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((|a#44#0#0| Int) (|a#44#1#0| T@U) ) (! (= (_module.Expression._h9 (|#_module.Expression.Nary| |a#44#0#0| |a#44#1#0|)) |a#44#1#0|)
 :qid |Substitutiondfy.53:8|
 :skolemid |750|
 :pattern ( (|#_module.Expression.Nary| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((v@@5 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0) h@@0) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@6) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0) h@@0))
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
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Expression.Const| |a#29#0#0|)) |##_module.Expression.Const|)
 :qid |Substitutiondfy.51:9|
 :skolemid |725|
 :pattern ( (|#_module.Expression.Const| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (_module.Expression._h6 (|#_module.Expression.Const| |a#33#0#0|)) |a#33#0#0|)
 :qid |Substitutiondfy.51:9|
 :skolemid |732|
 :pattern ( (|#_module.Expression.Const| |a#33#0#0|))
)))
(assert (forall ((|a#34#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Expression.Var| |a#34#0#0|)) |##_module.Expression.Var|)
 :qid |Substitutiondfy.52:7|
 :skolemid |733|
 :pattern ( (|#_module.Expression.Var| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| Int) ) (! (= (_module.Expression._h7 (|#_module.Expression.Var| |a#38#0#0|)) |a#38#0#0|)
 :qid |Substitutiondfy.52:7|
 :skolemid |740|
 :pattern ( (|#_module.Expression.Var| |a#38#0#0|))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
)))
(assert (forall ((|a#46#0#0| Int) (|a#46#1#0| T@U) ) (! (< (|Seq#Rank| |a#46#1#0|) (DtRank (|#_module.Expression.Nary| |a#46#0#0| |a#46#1#0|)))
 :qid |Substitutiondfy.53:8|
 :skolemid |752|
 :pattern ( (|#_module.Expression.Nary| |a#46#0#0| |a#46#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|e#0@@2| T@U) (|v#0@@7| Int) (|val#0@@7| Int) ) (!  (=> (or (|_module.__default.Substitute#canCall| (Lit DatatypeTypeType |e#0@@2|) |v#0@@7| |val#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@2| Tclass._module.Expression))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.Const_q (Lit DatatypeTypeType |e#0@@2|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.Var_q (Lit DatatypeTypeType |e#0@@2|)))))) (let ((|args#3| (Lit SeqType (_module.Expression._h9 (Lit DatatypeTypeType |e#0@@2|)))))
(|_module.__default.SubstSeq#canCall| (Lit DatatypeTypeType |e#0@@2|) |args#3| |v#0@@7| |val#0@@7|)))) (= (_module.__default.Substitute ($LS $ly@@7) (Lit DatatypeTypeType |e#0@@2|) |v#0@@7| |val#0@@7|) (ite (_module.Expression.Const_q (Lit DatatypeTypeType |e#0@@2|)) (Lit DatatypeTypeType |e#0@@2|) (ite (_module.Expression.Var_q (Lit DatatypeTypeType |e#0@@2|)) (let ((|x#2| (LitInt (_module.Expression._h7 (Lit DatatypeTypeType |e#0@@2|)))))
(ite (= |x#2| |v#0@@7|) (|#_module.Expression.Const| |val#0@@7|) |e#0@@2|)) (let ((|args#2| (Lit SeqType (_module.Expression._h9 (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|op#2| (LitInt (_module.Expression._h8 (Lit DatatypeTypeType |e#0@@2|)))))
(|#_module.Expression.Nary| |op#2| (_module.__default.SubstSeq ($LS $ly@@7) (Lit DatatypeTypeType |e#0@@2|) |args#2| |v#0@@7| |val#0@@7|)))))))))
 :qid |Substitutiondfy.55:16|
 :weight 3
 :skolemid |617|
 :pattern ( (_module.__default.Substitute ($LS $ly@@7) (Lit DatatypeTypeType |e#0@@2|) |v#0@@7| |val#0@@7|))
))))
(assert (forall ((|a#31#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.Const| |a#31#0#0|) Tclass._module.Expression) ($Is intType (int_2_U |a#31#0#0|) TInt))
 :qid |Substitutiondfy.51:9|
 :skolemid |729|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.Const| |a#31#0#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#36#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.Var| |a#36#0#0|) Tclass._module.Expression) ($Is intType (int_2_U |a#36#0#0|) TInt))
 :qid |Substitutiondfy.52:7|
 :skolemid |737|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.Var| |a#36#0#0|) Tclass._module.Expression))
)))
(assert (forall (($ly@@8 T@U) (|e#0@@3| T@U) (|v#0@@8| Int) (|val#0@@8| Int) ) (! (= (_module.__default.Substitute ($LS $ly@@8) |e#0@@3| |v#0@@8| |val#0@@8|) (_module.__default.Substitute $ly@@8 |e#0@@3| |v#0@@8| |val#0@@8|))
 :qid |Substitutiondfy.55:16|
 :skolemid |611|
 :pattern ( (_module.__default.Substitute ($LS $ly@@8) |e#0@@3| |v#0@@8| |val#0@@8|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |760|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@16 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@16 val@@4)) s@@16) (= (|Seq#Build_inv1| (|Seq#Build| s@@16 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@16 val@@4))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Expression.Const_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Expression $h))) ($IsAlloc intType (int_2_U (_module.Expression._h6 d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expression._h6 d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Expression.Var_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Expression $h@@0))) ($IsAlloc intType (int_2_U (_module.Expression._h7 d@@6)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expression._h7 d@@6)) TInt $h@@0))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Expression.Nary_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Expression $h@@1))) ($IsAlloc intType (int_2_U (_module.Expression._h8 d@@7)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expression._h8 d@@7)) TInt $h@@1))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.Expression) (or (or (_module.Expression.Const_q d@@8) (_module.Expression.Var_q d@@8)) (_module.Expression.Nary_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( (_module.Expression.Nary_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Expression))
 :pattern ( (_module.Expression.Var_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Expression))
 :pattern ( (_module.Expression.Const_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Expression))
)))
(assert (forall ((s@@17 T@U) (n@@7 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@11) (exists ((i@@7 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@7)) (< i@@7 (|Seq#Length| s@@17))) (= (|Seq#Index| s@@17 i@@7) x@@11))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@17 i@@7))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@11))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@5)))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@9 Tclass._module.Expression)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Expression $h@@2))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Expression $h@@2))
)))
(assert (= (Tag Tclass._module.Expression) Tagclass._module.Expression))
(assert (= (TagFamily Tclass._module.Expression) tytagFamily$Expression))
(assert (forall ((s@@18 T@U) (n@@8 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k)) (< k (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Drop| s@@18 n@@8) (- k n@@8)) (|Seq#Index| s@@18 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@18 k) (|Seq#Drop| s@@18 n@@8))
)))
(assert (forall ((s@@19 T@U) (m@@4 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@9)) (<= (+ m@@4 n@@9) (|Seq#Length| s@@19))) (= (|Seq#Drop| (|Seq#Drop| s@@19 m@@4) n@@9) (|Seq#Drop| s@@19 (+ m@@4 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@19 m@@4) n@@9))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((|a#42#0#0| Int) (|a#42#1#0| T@U) ) (! (= (|#_module.Expression.Nary| (LitInt |a#42#0#0|) (Lit SeqType |a#42#1#0|)) (Lit DatatypeTypeType (|#_module.Expression.Nary| |a#42#0#0| |a#42#1#0|)))
 :qid |Substitutiondfy.53:8|
 :skolemid |748|
 :pattern ( (|#_module.Expression.Nary| (LitInt |a#42#0#0|) (Lit SeqType |a#42#1#0|)))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#_module.Expression.Const| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#_module.Expression.Const| |a#32#0#0|)))
 :qid |Substitutiondfy.51:9|
 :skolemid |731|
 :pattern ( (|#_module.Expression.Const| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#37#0#0| Int) ) (! (= (|#_module.Expression.Var| (LitInt |a#37#0#0|)) (Lit DatatypeTypeType (|#_module.Expression.Var| |a#37#0#0|)))
 :qid |Substitutiondfy.52:7|
 :skolemid |739|
 :pattern ( (|#_module.Expression.Var| (LitInt |a#37#0#0|)))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((s@@20 T@U) ) (!  (=> (= (|Seq#Length| s@@20) 0) (= s@@20 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@20))
)))
(assert (forall ((s@@21 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@21 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@21 n@@11))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Expression.Nary_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Expression $h@@3))) ($IsAlloc SeqType (_module.Expression._h9 d@@10) (TSeq Tclass._module.Expression) $h@@3))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsAlloc SeqType (_module.Expression._h9 d@@10) (TSeq Tclass._module.Expression) $h@@3))
)))
(assert (forall ((h@@1 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@1))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@8) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@8))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@22 T@U) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@22))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@9))) (|Seq#Rank| s@@22)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@9))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |q#0@@4| () T@U)
(declare-fun |parent#0@@4| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##q#0@0| () T@U)
(declare-fun |v#0@@9| () Int)
(declare-fun |val#0@@9| () Int)
(declare-fun |##e#0@0| () T@U)
(declare-fun |a#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.SubstSeq)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon13_Else_correct  (=> (and (not (|Seq#Equal| |q#0@@4| |Seq#Empty|)) ($IsAlloc DatatypeTypeType |parent#0@@4| Tclass._module.Expression $Heap)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (and (<= 0 (- (|Seq#Length| |q#0@@4|) 1)) (<= (- (|Seq#Length| |q#0@@4|) 1) (|Seq#Length| |q#0@@4|)))) (=> (and (<= 0 (- (|Seq#Length| |q#0@@4|) 1)) (<= (- (|Seq#Length| |q#0@@4|) 1) (|Seq#Length| |q#0@@4|))) (=> (and (and (= |##q#0@0| (|Seq#Take| |q#0@@4| (- (|Seq#Length| |q#0@@4|) 1))) ($IsAlloc SeqType |##q#0@0| (TSeq Tclass._module.Expression) $Heap)) (and ($IsAlloc intType (int_2_U |v#0@@9|) TInt $Heap) ($IsAlloc intType (int_2_U |val#0@@9|) TInt $Heap))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((|a#5| T@U) ) (!  (=> ($Is DatatypeTypeType |a#5| Tclass._module.Expression) (=> (|Seq#Contains| |##q#0@0| ($Box DatatypeTypeType |a#5|)) (< (DtRank |a#5|) (DtRank |parent#0@@4|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |634|
 :pattern ( (|Seq#Contains| |##q#0@0| ($Box DatatypeTypeType |a#5|)))
))) (=> (forall ((|a#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |a#5@@0| Tclass._module.Expression) (=> (|Seq#Contains| |##q#0@0| ($Box DatatypeTypeType |a#5@@0|)) (< (DtRank |a#5@@0|) (DtRank |parent#0@@4|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |635|
 :pattern ( (|Seq#Contains| |##q#0@0| ($Box DatatypeTypeType |a#5@@0|)))
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (< (DtRank |parent#0@@4|) (DtRank |parent#0@@4|)) (and (= (DtRank |parent#0@@4|) (DtRank |parent#0@@4|)) (< (|Seq#Rank| |##q#0@0|) (|Seq#Rank| |q#0@@4|))))) (=> (or (< (DtRank |parent#0@@4|) (DtRank |parent#0@@4|)) (and (= (DtRank |parent#0@@4|) (DtRank |parent#0@@4|)) (< (|Seq#Rank| |##q#0@0|) (|Seq#Rank| |q#0@@4|)))) (=> (|_module.__default.SubstSeq#canCall| |parent#0@@4| (|Seq#Take| |q#0@@4| (- (|Seq#Length| |q#0@@4|) 1)) |v#0@@9| |val#0@@9|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 (- (|Seq#Length| |q#0@@4|) 1)) (< (- (|Seq#Length| |q#0@@4|) 1) (|Seq#Length| |q#0@@4|)))) (=> (and (<= 0 (- (|Seq#Length| |q#0@@4|) 1)) (< (- (|Seq#Length| |q#0@@4|) 1) (|Seq#Length| |q#0@@4|))) (=> (= |##e#0@0| ($Unbox DatatypeTypeType (|Seq#Index| |q#0@@4| (- (|Seq#Length| |q#0@@4|) 1)))) (=> (and (and ($IsAlloc DatatypeTypeType |##e#0@0| Tclass._module.Expression $Heap) ($IsAlloc intType (int_2_U |v#0@@9|) TInt $Heap)) (and ($IsAlloc intType (int_2_U |val#0@@9|) TInt $Heap) (= (ControlFlow 0 4) (- 0 3)))) (< (DtRank |##e#0@0|) (DtRank |parent#0@@4|)))))))))))))))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon4_correct  (=> (forall ((|a#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |a#0@@0| Tclass._module.Expression) (=> (|Seq#Contains| |q#0@@4| ($Box DatatypeTypeType |a#0@@0|)) (< (DtRank |a#0@@0|) (DtRank |parent#0@@4|))))
 :qid |Substitutiondfy.66:20|
 :skolemid |633|
 :pattern ( (|Seq#Contains| |q#0@@4| ($Box DatatypeTypeType |a#0@@0|)))
)) (and (and (=> (= (ControlFlow 0 9) 1) anon12_Then_correct) (=> (= (ControlFlow 0 9) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 9) 4) anon13_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (not (|Seq#Contains| |q#0@@4| ($Box DatatypeTypeType |a#4@0|))) (= (ControlFlow 0 12) 9)) anon4_correct)))
(let ((anon11_Then_correct  (=> (and (|Seq#Contains| |q#0@@4| ($Box DatatypeTypeType |a#4@0|)) (= (ControlFlow 0 11) 9)) anon4_correct)))
(let ((anon10_Then_correct  (=> (and ($Is DatatypeTypeType |a#4@0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |a#4@0| Tclass._module.Expression $Heap)) (and (=> (= (ControlFlow 0 13) 11) anon11_Then_correct) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |a#4@0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |a#4@0| Tclass._module.Expression $Heap))) (= (ControlFlow 0 10) 9)) anon4_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 14) 13) anon10_Then_correct) (=> (= (ControlFlow 0 14) 10) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |parent#0@@4| Tclass._module.Expression) ($Is SeqType |q#0@@4| (TSeq Tclass._module.Expression))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
