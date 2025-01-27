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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.AST.Expr () T@U)
(declare-fun Tagclass.AST.BinOp () T@U)
(declare-fun Tagclass.AST.Expr__Raw () T@U)
(declare-fun |##AST.Expr_Raw.Var| () T@U)
(declare-fun |##AST.Expr_Raw.Literal| () T@U)
(declare-fun |##AST.Expr_Raw.Bind| () T@U)
(declare-fun |##AST.Expr_Raw.Assign| () T@U)
(declare-fun |##AST.Expr_Raw.If| () T@U)
(declare-fun |##AST.Expr_Raw.Op| () T@U)
(declare-fun |##AST.Expr_Raw.Seq| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$Expr_Raw () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#AST.Expr_Raw.Bind| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#AST.Expr_Raw.Assign| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#AST.Expr_Raw.If| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.Expr__Raw () T@U)
(declare-fun |#AST.Expr_Raw.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.BinOp () T@U)
(declare-fun |AST.Expr__Raw#Equal| (T@U T@U) Bool)
(declare-fun AST.Expr__Raw.Literal_q (T@U) Bool)
(declare-fun AST.Expr__Raw.n (T@U) Int)
(declare-fun |#AST.Expr_Raw.Var| (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Seq| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun AST.Expr__Raw.bvars (T@U) T@U)
(declare-fun AST.Expr__Raw.bvals (T@U) T@U)
(declare-fun AST.Expr__Raw.body (T@U) T@U)
(declare-fun AST.Expr__Raw.cond (T@U) T@U)
(declare-fun AST.Expr__Raw.thn (T@U) T@U)
(declare-fun AST.Expr__Raw.els (T@U) T@U)
(declare-fun AST.Expr__Raw.op (T@U) T@U)
(declare-fun AST.Expr__Raw.oe1 (T@U) T@U)
(declare-fun AST.Expr__Raw.oe2 (T@U) T@U)
(declare-fun AST.Expr__Raw.WellFormed__Single (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#canCall| (T@U) Bool)
(declare-fun AST.Expr__Raw.Var_q (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun AST.Expr__Raw.Bind_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Assign_q (T@U) Bool)
(declare-fun AST.Expr__Raw.avals (T@U) T@U)
(declare-fun AST.Expr__Raw.avars (T@U) T@U)
(declare-fun AST.Expr__Raw.If_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Op_q (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.Induction.V () T@U)
(declare-fun Tclass.Induction.S () T@U)
(declare-fun Tclass.Induction.VS () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.AST.Expr () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun AST.Expr__Raw.WellFormed (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed#canCall| (T@U) Bool)
(declare-fun |AST.Expr__Raw.All#canCall| (T@U T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#Handle| () T@U)
(declare-fun AST.Expr__Raw.All (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |AST.BinOp#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |$IsA#AST.Expr__Raw| (T@U) Bool)
(declare-fun AST.Expr__Raw.Seq_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun AST.Expr__Raw.es (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Literal| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun AST.Expr__Raw.name (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Induction.__default.BindEndScope (T@U T@U T@U) T@U)
(declare-fun |Induction.__default.BindEndScope#canCall| (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun |AST.Expr__Raw.WellFormed__Single#requires| (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun Induction.__default.BindStartScope (T@U T@U T@U) T@U)
(declare-fun |Induction.__default.BindStartScope#canCall| (T@U T@U T@U) Bool)
(declare-fun Induction.__default.UpdateState__Pre (T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.AST.Expr Tagclass.AST.BinOp Tagclass.AST.Expr__Raw |##AST.Expr_Raw.Var| |##AST.Expr_Raw.Literal| |##AST.Expr_Raw.Bind| |##AST.Expr_Raw.Assign| |##AST.Expr_Raw.If| |##AST.Expr_Raw.Op| |##AST.Expr_Raw.Seq| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Expr tytagFamily$BinOp tytagFamily$Expr_Raw)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#39#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#39#0#0| i))) (DtRank (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |850|
 :pattern ( (|Seq#Index| |a#39#0#0| i) (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#42#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#42#1#0| i@@0))) (DtRank (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |853|
 :pattern ( (|Seq#Index| |a#42#1#0| i@@0) (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#51#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#51#0#0| i@@1))) (DtRank (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |866|
 :pattern ( (|Seq#Index| |a#51#0#0| i@@1) (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#54#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#54#1#0| i@@2))) (DtRank (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |869|
 :pattern ( (|Seq#Index| |a#54#1#0| i@@2) (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) (|a#58#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#58#0#0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |a#58#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#58#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.19:10|
 :skolemid |875|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#68#0#0| Tclass.AST.BinOp) ($Is DatatypeTypeType |a#68#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#68#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.20:10|
 :skolemid |890|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (AST.Expr__Raw.Literal_q a) (AST.Expr__Raw.Literal_q b)) (= (|AST.Expr__Raw#Equal| a b) (= (AST.Expr__Raw.n a) (AST.Expr__Raw.n b))))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( (|AST.Expr__Raw#Equal| a b) (AST.Expr__Raw.Literal_q a))
 :pattern ( (|AST.Expr__Raw#Equal| a b) (AST.Expr__Raw.Literal_q b))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@3))) (DtRank (|#AST.Expr_Raw.Var| |a#27#0#0|))))
 :qid |ASTdfy.15:11|
 :skolemid |830|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@3) (|#AST.Expr_Raw.Var| |a#27#0#0|))
)))
(assert (forall ((|a#81#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#81#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#81#0#0| i@@4))) (DtRank (|#AST.Expr_Raw.Seq| |a#81#0#0|))))
 :qid |ASTdfy.21:11|
 :skolemid |909|
 :pattern ( (|Seq#Index| |a#81#0#0| i@@4) (|#AST.Expr_Raw.Seq| |a#81#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |##AST.Expr_Raw.Bind|)
 :qid |ASTdfy.17:12|
 :skolemid |840|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (AST.Expr__Raw.bvars (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |a#38#0#0|)
 :qid |ASTdfy.17:12|
 :skolemid |849|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (AST.Expr__Raw.bvals (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#1#0|)
 :qid |ASTdfy.17:12|
 :skolemid |852|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (AST.Expr__Raw.body (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |ASTdfy.17:12|
 :skolemid |855|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|)) |##AST.Expr_Raw.If|)
 :qid |ASTdfy.19:10|
 :skolemid |871|
 :pattern ( (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (AST.Expr__Raw.cond (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#0#0|)
 :qid |ASTdfy.19:10|
 :skolemid |880|
 :pattern ( (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (AST.Expr__Raw.thn (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#1#0|)
 :qid |ASTdfy.19:10|
 :skolemid |882|
 :pattern ( (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) ) (! (= (AST.Expr__Raw.els (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|)) |a#64#2#0|)
 :qid |ASTdfy.19:10|
 :skolemid |884|
 :pattern ( (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|)) |##AST.Expr_Raw.Op|)
 :qid |ASTdfy.20:10|
 :skolemid |886|
 :pattern ( (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (|a#70#2#0| T@U) ) (! (= (AST.Expr__Raw.op (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|)) |a#70#0#0|)
 :qid |ASTdfy.20:10|
 :skolemid |895|
 :pattern ( (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) (|a#72#2#0| T@U) ) (! (= (AST.Expr__Raw.oe1 (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|)) |a#72#1#0|)
 :qid |ASTdfy.20:10|
 :skolemid |897|
 :pattern ( (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) (|a#74#2#0| T@U) ) (! (= (AST.Expr__Raw.oe2 (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|)) |a#74#2#0|)
 :qid |ASTdfy.20:10|
 :skolemid |899|
 :pattern ( (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|))
)))
(assert (forall ((|e#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| |e#0|) ($Is DatatypeTypeType |e#0| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single |e#0|) (ite (AST.Expr__Raw.Var_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0|) (let ((|bvals#0| (AST.Expr__Raw.bvals |e#0|)))
(let ((|bvars#0| (AST.Expr__Raw.bvars |e#0|)))
(= (|Seq#Length| |bvars#0|) (|Seq#Length| |bvals#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0|) (let ((|avals#0| (AST.Expr__Raw.avals |e#0|)))
(let ((|avars#0| (AST.Expr__Raw.avars |e#0|)))
(= (|Seq#Length| |avars#0|) (|Seq#Length| |avals#0|)))) (ite (AST.Expr__Raw.If_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :skolemid |975|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |e#0|))
)))
(assert ($AlwaysAllocated Tclass.Induction.V))
(assert ($AlwaysAllocated Tclass.Induction.S))
(assert ($AlwaysAllocated Tclass.Induction.VS))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|e#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h) ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr__Raw $h))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw)  (and ($Is SeqType |a#48#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#48#1#0| (TSeq Tclass.AST.Expr__Raw))))
 :qid |ASTdfy.18:14|
 :skolemid |861|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is SeqType |a#36#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#36#1#0| (TSeq Tclass.AST.Expr__Raw))) ($Is DatatypeTypeType |a#36#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.17:12|
 :skolemid |844|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| (Lit DatatypeTypeType this)) (and ($IsGoodHeap $Heap) (and ($Is DatatypeTypeType this Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this Tclass.AST.Expr__Raw $Heap)))) (and (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType this) |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this)) (AST.Expr__Raw.All ($LS $LZ) (Lit DatatypeTypeType this) |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :weight 3
 :skolemid |984|
 :pattern ( (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this)) ($IsGoodHeap $Heap))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (AST.Expr__Raw.Bind_q a@@0) (AST.Expr__Raw.Bind_q b@@0)) (= (|AST.Expr__Raw#Equal| a@@0 b@@0)  (and (and (|Seq#Equal| (AST.Expr__Raw.bvars a@@0) (AST.Expr__Raw.bvars b@@0)) (|Seq#Equal| (AST.Expr__Raw.bvals a@@0) (AST.Expr__Raw.bvals b@@0))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body a@@0) (AST.Expr__Raw.body b@@0)))))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (|AST.Expr__Raw#Equal| a@@0 b@@0) (AST.Expr__Raw.Bind_q a@@0))
 :pattern ( (|AST.Expr__Raw#Equal| a@@0 b@@0) (AST.Expr__Raw.Bind_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (AST.Expr__Raw.If_q a@@1) (AST.Expr__Raw.If_q b@@1)) (= (|AST.Expr__Raw#Equal| a@@1 b@@1)  (and (and (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond a@@1) (AST.Expr__Raw.cond b@@1)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn a@@1) (AST.Expr__Raw.thn b@@1))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els a@@1) (AST.Expr__Raw.els b@@1)))))
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( (|AST.Expr__Raw#Equal| a@@1 b@@1) (AST.Expr__Raw.If_q a@@1))
 :pattern ( (|AST.Expr__Raw#Equal| a@@1 b@@1) (AST.Expr__Raw.If_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (AST.Expr__Raw.Op_q a@@2) (AST.Expr__Raw.Op_q b@@2)) (= (|AST.Expr__Raw#Equal| a@@2 b@@2)  (and (and (|AST.BinOp#Equal| (AST.Expr__Raw.op a@@2) (AST.Expr__Raw.op b@@2)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 a@@2) (AST.Expr__Raw.oe1 b@@2))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 a@@2) (AST.Expr__Raw.oe2 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( (|AST.Expr__Raw#Equal| a@@2 b@@2) (AST.Expr__Raw.Op_q a@@2))
 :pattern ( (|AST.Expr__Raw#Equal| a@@2 b@@2) (AST.Expr__Raw.Op_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|AST.BinOp#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (|AST.BinOp#Equal| a@@3 b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|AST.Expr__Raw#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (|AST.Expr__Raw#Equal| a@@4 b@@4))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#AST.Expr__Raw| d) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d) (AST.Expr__Raw.Literal_q d)) (AST.Expr__Raw.Bind_q d)) (AST.Expr__Raw.Assign_q d)) (AST.Expr__Raw.If_q d)) (AST.Expr__Raw.Op_q d)) (AST.Expr__Raw.Seq_q d)))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( (|$IsA#AST.Expr__Raw| d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (AST.Expr__Raw.Var_q d@@0) (= (DatatypeCtorId d@@0) |##AST.Expr_Raw.Var|))
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( (AST.Expr__Raw.Var_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (AST.Expr__Raw.Literal_q d@@1) (= (DatatypeCtorId d@@1) |##AST.Expr_Raw.Literal|))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( (AST.Expr__Raw.Literal_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (AST.Expr__Raw.Bind_q d@@2) (= (DatatypeCtorId d@@2) |##AST.Expr_Raw.Bind|))
 :qid |unknown.0:0|
 :skolemid |841|
 :pattern ( (AST.Expr__Raw.Bind_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (AST.Expr__Raw.Assign_q d@@3) (= (DatatypeCtorId d@@3) |##AST.Expr_Raw.Assign|))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( (AST.Expr__Raw.Assign_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (AST.Expr__Raw.If_q d@@4) (= (DatatypeCtorId d@@4) |##AST.Expr_Raw.If|))
 :qid |unknown.0:0|
 :skolemid |872|
 :pattern ( (AST.Expr__Raw.If_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (AST.Expr__Raw.Op_q d@@5) (= (DatatypeCtorId d@@5) |##AST.Expr_Raw.Op|))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( (AST.Expr__Raw.Op_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (AST.Expr__Raw.Seq_q d@@6) (= (DatatypeCtorId d@@6) |##AST.Expr_Raw.Seq|))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( (AST.Expr__Raw.Seq_q d@@6))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (AST.Expr__Raw.Bind_q d@@7) (exists ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= d@@7 (|#AST.Expr_Raw.Bind| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
 :qid |ASTdfy.17:12|
 :skolemid |842|
)))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( (AST.Expr__Raw.Bind_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (AST.Expr__Raw.If_q d@@8) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= d@@8 (|#AST.Expr_Raw.If| |a#57#0#0| |a#57#1#0| |a#57#2#0|))
 :qid |ASTdfy.19:10|
 :skolemid |873|
)))
 :qid |unknown.0:0|
 :skolemid |874|
 :pattern ( (AST.Expr__Raw.If_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (AST.Expr__Raw.Op_q d@@9) (exists ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) ) (! (= d@@9 (|#AST.Expr_Raw.Op| |a#67#0#0| |a#67#1#0| |a#67#2#0|))
 :qid |ASTdfy.20:10|
 :skolemid |888|
)))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( (AST.Expr__Raw.Op_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (AST.Expr__Raw.Assign_q d@@10) (exists ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= d@@10 (|#AST.Expr_Raw.Assign| |a#47#0#0| |a#47#1#0|))
 :qid |ASTdfy.18:14|
 :skolemid |859|
)))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( (AST.Expr__Raw.Assign_q d@@10))
)))
(assert (forall (($ly T@U) ($Heap@@0 T@U) (|e#0@@1| T@U) (|p#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| |e#0@@1| |p#0|) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |e#0@@1| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@0 |p#0| ($Box DatatypeTypeType |e#0@@1|)))) (=> (not (AST.Expr__Raw.Var_q |e#0@@1|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#1| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#1| (AST.Expr__Raw.bvals |e#0@@1|)))
 (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4|)) (|AST.Expr__Raw.All#canCall| |e#4| |p#0|)))
 :qid |ASTdfy.51:22|
 :skolemid |941|
 :pattern ( (AST.Expr__Raw.All $ly |e#4| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4@@0|))) (AST.Expr__Raw.All $ly |e#4@@0| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |942|
 :pattern ( (AST.Expr__Raw.All $ly |e#4@@0| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#1| (AST.Expr__Raw.avals |e#0@@1|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#5| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1| ($Box DatatypeTypeType |e#5|)) (|AST.Expr__Raw.All#canCall| |e#5| |p#0|)))
 :qid |ASTdfy.54:21|
 :skolemid |943|
 :pattern ( (AST.Expr__Raw.All $ly |e#5| |p#0|))
 :pattern ( (|Seq#Contains| |avals#1| ($Box DatatypeTypeType |e#5|)))
))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@1|)) (and (=> (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#1| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#1| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#1| (AST.Expr__Raw.cond |e#0@@1|)))
 (and (|AST.Expr__Raw.All#canCall| |cond#1| |p#0|) (=> (AST.Expr__Raw.All $ly |cond#1| |p#0|) (and (|AST.Expr__Raw.All#canCall| |thn#1| |p#0|) (=> (AST.Expr__Raw.All $ly |thn#1| |p#0|) (|AST.Expr__Raw.All#canCall| |els#1| |p#0|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|oe2#1| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|oe1#1| (AST.Expr__Raw.oe1 |e#0@@1|)))
 (and (|AST.Expr__Raw.All#canCall| |oe1#1| |p#0|) (=> (AST.Expr__Raw.All $ly |oe1#1| |p#0|) (|AST.Expr__Raw.All#canCall| |oe2#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@1|)) (let ((|es#1| (AST.Expr__Raw.es |e#0@@1|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#6| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1| ($Box DatatypeTypeType |e#6|)) (|AST.Expr__Raw.All#canCall| |e#6| |p#0|)))
 :qid |ASTdfy.60:21|
 :skolemid |944|
 :pattern ( (AST.Expr__Raw.All $ly |e#6| |p#0|))
 :pattern ( (|Seq#Contains| |es#1| ($Box DatatypeTypeType |e#6|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly) |e#0@@1| |p#0|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@0 |p#0| ($Box DatatypeTypeType |e#0@@1|)))) (ite (AST.Expr__Raw.Var_q |e#0@@1|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@1|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#0| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#0@@0| (AST.Expr__Raw.bvals |e#0@@1|)))
 (and (forall ((|e#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@0| ($Box DatatypeTypeType |e#1|))) (AST.Expr__Raw.All $ly |e#1| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |938|
 :pattern ( (AST.Expr__Raw.All $ly |e#1| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#0@@0| ($Box DatatypeTypeType |e#1|)))
)) (AST.Expr__Raw.All $ly |body#0| |p#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#0@@0| (AST.Expr__Raw.avals |e#0@@1|)))
 (and true (forall ((|e#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@0| ($Box DatatypeTypeType |e#2|))) (AST.Expr__Raw.All $ly |e#2| |p#0|))
 :qid |ASTdfy.54:21|
 :skolemid |939|
 :pattern ( (AST.Expr__Raw.All $ly |e#2| |p#0|))
 :pattern ( (|Seq#Contains| |avals#0@@0| ($Box DatatypeTypeType |e#2|)))
)))) (ite (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#0| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#0| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#0| (AST.Expr__Raw.cond |e#0@@1|)))
 (and (and (AST.Expr__Raw.All $ly |cond#0| |p#0|) (AST.Expr__Raw.All $ly |thn#0| |p#0|)) (AST.Expr__Raw.All $ly |els#0| |p#0|))))) (ite (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|oe2#0| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|oe1#0| (AST.Expr__Raw.oe1 |e#0@@1|)))
 (and (AST.Expr__Raw.All $ly |oe1#0| |p#0|) (AST.Expr__Raw.All $ly |oe2#0| |p#0|)))) (let ((|es#0| (AST.Expr__Raw.es |e#0@@1|)))
 (and true (forall ((|e#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0| ($Box DatatypeTypeType |e#3|))) (AST.Expr__Raw.All $ly |e#3| |p#0|))
 :qid |ASTdfy.60:21|
 :skolemid |940|
 :pattern ( (AST.Expr__Raw.All $ly |e#3| |p#0|))
 :pattern ( (|Seq#Contains| |es#0| ($Box DatatypeTypeType |e#3|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :skolemid |945|
 :pattern ( (AST.Expr__Raw.All ($LS $ly) |e#0@@1| |p#0|) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (AST.Expr__Raw.Var_q d@@11) (exists ((|a#23#0#0| T@U) ) (! (= d@@11 (|#AST.Expr_Raw.Var| |a#23#0#0|))
 :qid |ASTdfy.15:11|
 :skolemid |824|
)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (AST.Expr__Raw.Var_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (AST.Expr__Raw.Literal_q d@@12) (exists ((|a#30#0#0| Int) ) (! (= d@@12 (|#AST.Expr_Raw.Literal| |a#30#0#0|))
 :qid |ASTdfy.16:15|
 :skolemid |834|
)))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (AST.Expr__Raw.Literal_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (AST.Expr__Raw.Seq_q d@@13) (exists ((|a#77#0#0| T@U) ) (! (= d@@13 (|#AST.Expr_Raw.Seq| |a#77#0#0|))
 :qid |ASTdfy.21:11|
 :skolemid |903|
)))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (AST.Expr__Raw.Seq_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@14) (AST.Expr__Raw.Literal_q d@@14)) (AST.Expr__Raw.Bind_q d@@14)) (AST.Expr__Raw.Assign_q d@@14)) (AST.Expr__Raw.If_q d@@14)) (AST.Expr__Raw.Op_q d@@14)) (AST.Expr__Raw.Seq_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (AST.Expr__Raw.Seq_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Op_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.If_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Assign_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Bind_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Literal_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Var_q d@@14) ($Is DatatypeTypeType d@@14 Tclass.AST.Expr__Raw))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($ly@@0 T@U) (|e#0@@2| T@U) (|p#0@@0| T@U) ) (! (= (AST.Expr__Raw.All ($LS $ly@@0) |e#0@@2| |p#0@@0|) (AST.Expr__Raw.All $ly@@0 |e#0@@2| |p#0@@0|))
 :qid |ASTdfy.44:22|
 :skolemid |934|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@0) |e#0@@2| |p#0@@0|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|e#0@@3| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| (Lit DatatypeTypeType |e#0@@3|)) ($Is DatatypeTypeType |e#0@@3| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@3|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@3|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@3|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|bvals#2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|bvars#2| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@3|)))))
(= (|Seq#Length| |bvars#2|) (|Seq#Length| |bvals#2|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|avals#2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|avars#2| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@3|)))))
(= (|Seq#Length| |avars#2|) (|Seq#Length| |avals#2|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@3|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@3|)) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :weight 3
 :skolemid |976|
 :pattern ( (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@3|)))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.AST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.AST.Expr)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@1 Tclass.AST.Expr))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.AST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.AST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsBox bx@@2 Tclass.AST.BinOp))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.AST.Expr__Raw) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.AST.Expr__Raw)))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($IsBox bx@@3 Tclass.AST.Expr__Raw))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (AST.Expr__Raw.Var_q a@@5) (AST.Expr__Raw.Var_q b@@5)) (= (|AST.Expr__Raw#Equal| a@@5 b@@5) (|Seq#Equal| (AST.Expr__Raw.name a@@5) (AST.Expr__Raw.name b@@5))))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( (|AST.Expr__Raw#Equal| a@@5 b@@5) (AST.Expr__Raw.Var_q a@@5))
 :pattern ( (|AST.Expr__Raw#Equal| a@@5 b@@5) (AST.Expr__Raw.Var_q b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (AST.Expr__Raw.Seq_q a@@6) (AST.Expr__Raw.Seq_q b@@6)) (= (|AST.Expr__Raw#Equal| a@@6 b@@6) (|Seq#Equal| (AST.Expr__Raw.es a@@6) (AST.Expr__Raw.es b@@6))))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Seq_q a@@6))
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Seq_q b@@6))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert (forall ((s T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s x@@6) (exists ((i@@5 Int) ) (!  (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s))) (= (|Seq#Index| s i@@5) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i@@5))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@6))
)))
(assert (forall ((|a#78#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#78#0#0| (TSeq Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.21:11|
 :skolemid |905|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@8 b@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st0#0| T@U) (|st#0| T@U) (|vars#0| T@U) ) (!  (=> (or (|Induction.__default.BindEndScope#canCall| |st0#0| |st#0| |vars#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |st0#0| Tclass.Induction.S) ($IsBox |st#0| Tclass.Induction.S)) ($Is SeqType |vars#0| (TSeq (TSeq TChar)))))) ($IsBox (Induction.__default.BindEndScope |st0#0| |st#0| |vars#0|) Tclass.Induction.S))
 :qid |Inductiondfy.64:31|
 :skolemid |665|
 :pattern ( (Induction.__default.BindEndScope |st0#0| |st#0| |vars#0|))
))))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TChar) (and (= ($Box charType ($Unbox charType bx@@6)) bx@@6) ($Is charType ($Unbox charType bx@@6) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@6 TChar))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (and (AST.Expr__Raw.Assign_q a@@9) (AST.Expr__Raw.Assign_q b@@9)) (= (|AST.Expr__Raw#Equal| a@@9 b@@9)  (and (|Seq#Equal| (AST.Expr__Raw.avars a@@9) (AST.Expr__Raw.avars b@@9)) (|Seq#Equal| (AST.Expr__Raw.avals a@@9) (AST.Expr__Raw.avals b@@9)))))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (|AST.Expr__Raw#Equal| a@@9 b@@9) (AST.Expr__Raw.Assign_q a@@9))
 :pattern ( (|AST.Expr__Raw#Equal| a@@9 b@@9) (AST.Expr__Raw.Assign_q b@@9))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@2 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@2))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@2))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $heap |AST.Expr__Raw.WellFormed__Single#Handle| ($Box DatatypeTypeType |$fh$0x#0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |982|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) ($IsGoodHeap $heap))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|)) |##AST.Expr_Raw.Assign|)
 :qid |ASTdfy.18:14|
 :skolemid |857|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (AST.Expr__Raw.avars (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |ASTdfy.18:14|
 :skolemid |865|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (AST.Expr__Raw.avals (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |ASTdfy.18:14|
 :skolemid |868|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|e#0@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@4| Tclass.AST.Expr__Raw) (= (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@4|) true))
 :qid |ASTdfy.71:46|
 :skolemid |974|
 :pattern ( (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@4|))
)))
(assert (forall ((v@@2 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@3) h@@3) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@6) t0@@3 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@3) h@@3))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#37#0#0| |a#37#1#0| |a#37#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |848|
 :pattern ( (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (= (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.If| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |879|
 :pattern ( (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Op| |a#69#0#0| |a#69#1#0| |a#69#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |894|
 :pattern ( (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Var| |a#22#0#0|)) |##AST.Expr_Raw.Var|)
 :qid |ASTdfy.15:11|
 :skolemid |822|
 :pattern ( (|#AST.Expr_Raw.Var| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (AST.Expr__Raw.name (|#AST.Expr_Raw.Var| |a#26#0#0|)) |a#26#0#0|)
 :qid |ASTdfy.15:11|
 :skolemid |829|
 :pattern ( (|#AST.Expr_Raw.Var| |a#26#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Literal| |a#29#0#0|)) |##AST.Expr_Raw.Literal|)
 :qid |ASTdfy.16:15|
 :skolemid |832|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (AST.Expr__Raw.n (|#AST.Expr_Raw.Literal| |a#33#0#0|)) |a#33#0#0|)
 :qid |ASTdfy.16:15|
 :skolemid |839|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#33#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Seq| |a#76#0#0|)) |##AST.Expr_Raw.Seq|)
 :qid |ASTdfy.21:11|
 :skolemid |901|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#76#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (AST.Expr__Raw.es (|#AST.Expr_Raw.Seq| |a#80#0#0|)) |a#80#0#0|)
 :qid |ASTdfy.21:11|
 :skolemid |908|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#80#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (|Seq#Rank| |a#40#0#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |851|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (|Seq#Rank| |a#43#1#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |854|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#2#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |856|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |881|
 :pattern ( (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |883|
 :pattern ( (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) ) (! (< (DtRank |a#65#2#0|) (DtRank (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |885|
 :pattern ( (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (|a#71#2#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |896|
 :pattern ( (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) (|a#73#2#0| T@U) ) (! (< (DtRank |a#73#1#0|) (DtRank (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |898|
 :pattern ( (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) (|a#75#2#0| T@U) ) (! (< (DtRank |a#75#2#0|) (DtRank (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |900|
 :pattern ( (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@0| T@U) (|vars#0@@0| T@U) (|vals#0| T@U) ) (!  (=> (or (|Induction.__default.BindStartScope#canCall| |st#0@@0| |vars#0@@0| |vals#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |st#0@@0| Tclass.Induction.S) ($Is SeqType |vars#0@@0| (TSeq (TSeq TChar)))) ($IsBox |vals#0| Tclass.Induction.VS)) (Induction.__default.UpdateState__Pre |st#0@@0| |vars#0@@0| |vals#0|)))) ($IsBox (Induction.__default.BindStartScope |st#0@@0| |vars#0@@0| |vals#0|) Tclass.Induction.S))
 :qid |Inductiondfy.58:33|
 :skolemid |662|
 :pattern ( (Induction.__default.BindStartScope |st#0@@0| |vars#0@@0| |vals#0|))
))))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|) (|AST.Expr__Raw.WellFormed__Single#requires| ($Unbox DatatypeTypeType |$fh$0x#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |980|
 :pattern ( (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (|Seq#Rank| |a#52#0#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |867|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (|Seq#Rank| |a#55#1#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |870|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw) ($Is intType (int_2_U |a#31#0#0|) TInt))
 :qid |ASTdfy.16:15|
 :skolemid |836|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 7) (forall ((t0@@4 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@4 t1@@3 (MapType0Store t0@@4 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 8)) (= (Ctor BoxType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@4 T@U) (h@@4 T@U) ) (!  (=> ($IsGoodHeap h@@4) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@4) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@4)) (Requires1 t0@@5 t1@@4 h@@4 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@4 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@4 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@5 t1@@4 h@@4 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@4 h@@4 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@4))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#AST.Expr_Raw.Var| |a#28#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |831|
 :pattern ( (|#AST.Expr_Raw.Var| |a#28#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (< (|Seq#Rank| |a#82#0#0|) (DtRank (|#AST.Expr_Raw.Seq| |a#82#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |910|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#82#0#0|))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@5 t2 (MapType1Store t0@@6 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |987|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((d@@15 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (AST.Expr__Raw.Literal_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.AST.Expr__Raw $h@@2))) ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@15)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@15)) TInt $h@@2))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (|Set#Equal| (Reads1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((bx@@10 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@3)))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |981|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((d@@16 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@16 Tclass.AST.BinOp)) ($IsAlloc DatatypeTypeType d@@16 Tclass.AST.BinOp $h@@3))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass.AST.BinOp $h@@3))
)))
(assert (forall ((d@@17 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@17 Tclass.AST.Expr__Raw)) ($IsAlloc DatatypeTypeType d@@17 Tclass.AST.Expr__Raw $h@@4))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass.AST.Expr__Raw $h@@4))
)))
(assert (= (Tag Tclass.AST.Expr) Tagclass.AST.Expr))
(assert (= (TagFamily Tclass.AST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.AST.BinOp) Tagclass.AST.BinOp))
(assert (= (TagFamily Tclass.AST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.AST.Expr__Raw) Tagclass.AST.Expr__Raw))
(assert (= (TagFamily Tclass.AST.Expr__Raw) tytagFamily$Expr_Raw))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |ASTdfy.15:11|
 :skolemid |826|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d@@18 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (AST.Expr__Raw.Var_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass.AST.Expr__Raw $h@@5))) ($IsAlloc SeqType (AST.Expr__Raw.name d@@18) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.name d@@18) (TSeq TChar) $h@@5))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|e#0@@5| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@5|) |p#0@@1|) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |e#0@@5| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@5|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|body#3| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvals#3| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@5|)))))
 (and (forall ((|e#10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)) (|AST.Expr__Raw.All#canCall| |e#10| |p#0@@1|)))
 :qid |ASTdfy.51:22|
 :skolemid |949|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#10| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)))
)) (=> (forall ((|e#10@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|))) (AST.Expr__Raw.All ($LS $ly@@1) |e#10@@0| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |950|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#10@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#3| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|avals#3| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@5|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#11| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)) (|AST.Expr__Raw.All#canCall| |e#11| |p#0@@1|)))
 :qid |ASTdfy.54:21|
 :skolemid |951|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#11| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|els#3| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|thn#3| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|cond#3| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@5|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#3| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@1) |cond#3| |p#0@@1|) (and (|AST.Expr__Raw.All#canCall| |thn#3| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@1) |thn#3| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |els#3| |p#0@@1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|oe2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|oe1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@5|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#3| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@1) |oe1#3| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |oe2#3| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|)))))) (let ((|es#3| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@5|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#12| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)) (|AST.Expr__Raw.All#canCall| |e#12| |p#0@@1|)))
 :qid |ASTdfy.60:21|
 :skolemid |952|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#12| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@5|) |p#0@@1|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@5|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|body#2| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvals#2@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@5|)))))
 (and (forall ((|e#7| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2@@0| ($Box DatatypeTypeType |e#7|))) (AST.Expr__Raw.All ($LS $ly@@1) |e#7| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |946|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#7| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#2@@0| ($Box DatatypeTypeType |e#7|)))
)) (AST.Expr__Raw.All ($LS $ly@@1) |body#2| |p#0@@1|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|avals#2@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@5|)))))
 (and true (forall ((|e#8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2@@0| ($Box DatatypeTypeType |e#8|))) (AST.Expr__Raw.All ($LS $ly@@1) |e#8| |p#0@@1|))
 :qid |ASTdfy.54:21|
 :skolemid |947|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#8| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#2@@0| ($Box DatatypeTypeType |e#8|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|els#2| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|thn#2| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|cond#2| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@5|)))))
 (and (and (AST.Expr__Raw.All ($LS $ly@@1) |cond#2| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@1) |thn#2| |p#0@@1|)) (AST.Expr__Raw.All ($LS $ly@@1) |els#2| |p#0@@1|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|oe2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|oe1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@5|)))))
 (and (AST.Expr__Raw.All ($LS $ly@@1) |oe1#2| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@1) |oe2#2| |p#0@@1|)))) (let ((|es#2| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@5|)))))
 (and true (forall ((|e#9| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|))) (AST.Expr__Raw.All ($LS $ly@@1) |e#9| |p#0@@1|))
 :qid |ASTdfy.60:21|
 :skolemid |948|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#9| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |953|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@5|) |p#0@@1|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@10 o@@0) (|Set#IsMember| b@@10 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@0))
 :pattern ( (|Set#IsMember| b@@10 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((d@@19 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (AST.Expr__Raw.Bind_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.AST.Expr__Raw $h@@6))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@19) Tclass.AST.Expr__Raw $h@@6))
 :qid |unknown.0:0|
 :skolemid |847|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@19) Tclass.AST.Expr__Raw $h@@6))
)))
(assert (forall ((d@@20 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (AST.Expr__Raw.If_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.AST.Expr__Raw $h@@7))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@20) Tclass.AST.Expr__Raw $h@@7))
 :qid |unknown.0:0|
 :skolemid |876|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@20) Tclass.AST.Expr__Raw $h@@7))
)))
(assert (forall ((d@@21 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (AST.Expr__Raw.If_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.AST.Expr__Raw $h@@8))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@21) Tclass.AST.Expr__Raw $h@@8))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@21) Tclass.AST.Expr__Raw $h@@8))
)))
(assert (forall ((d@@22 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (AST.Expr__Raw.If_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.AST.Expr__Raw $h@@9))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@22) Tclass.AST.Expr__Raw $h@@9))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@22) Tclass.AST.Expr__Raw $h@@9))
)))
(assert (forall ((d@@23 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (AST.Expr__Raw.Op_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.AST.Expr__Raw $h@@10))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@23) Tclass.AST.BinOp $h@@10))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@23) Tclass.AST.BinOp $h@@10))
)))
(assert (forall ((d@@24 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (AST.Expr__Raw.Op_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.AST.Expr__Raw $h@@11))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@24) Tclass.AST.Expr__Raw $h@@11))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@24) Tclass.AST.Expr__Raw $h@@11))
)))
(assert (forall ((d@@25 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (AST.Expr__Raw.Op_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.AST.Expr__Raw $h@@12))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@25) Tclass.AST.Expr__Raw $h@@12))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@25) Tclass.AST.Expr__Raw $h@@12))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#49#0#0| |a#49#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |864|
 :pattern ( (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|) ($Box boolType (bool_2_U (AST.Expr__Raw.WellFormed__Single ($Unbox DatatypeTypeType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |979|
 :pattern ( (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((|e#0@@6| T@U) ) (! (= ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr)  (and ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr__Raw) (AST.Expr__Raw.WellFormed |e#0@@6|)))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Var| |a#25#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |828|
 :pattern ( (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#32#0#0|)))
 :qid |ASTdfy.16:15|
 :skolemid |838|
 :pattern ( (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#79#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#79#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |907|
 :pattern ( (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((d@@26 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (AST.Expr__Raw.Bind_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass.AST.Expr__Raw $h@@13))) ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@26) (TSeq (TSeq TChar)) $h@@13))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@26) (TSeq (TSeq TChar)) $h@@13))
)))
(assert (forall ((d@@27 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (AST.Expr__Raw.Assign_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass.AST.Expr__Raw $h@@14))) ($IsAlloc SeqType (AST.Expr__Raw.avars d@@27) (TSeq (TSeq TChar)) $h@@14))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avars d@@27) (TSeq (TSeq TChar)) $h@@14))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|e#0@@7| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@7|) (Lit HandleTypeType |p#0@@2|)) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |e#0@@7| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@7|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@7|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@7|))))) (let ((|body#5| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|bvals#5| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@7|)))))
 (and (forall ((|e#16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16|)) (|AST.Expr__Raw.All#canCall| |e#16| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.51:22|
 :skolemid |957|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#16| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16|)))
)) (=> (forall ((|e#16@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16@@0|))) (AST.Expr__Raw.All ($LS $ly@@2) |e#16@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |958|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#16@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#5| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@7|))))) (let ((|avals#5| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@7|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5| ($Box DatatypeTypeType |e#17|)) (|AST.Expr__Raw.All#canCall| |e#17| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.54:21|
 :skolemid |959|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#17| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#5| ($Box DatatypeTypeType |e#17|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@7|))))) (let ((|els#5| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|thn#5| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|cond#5| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@7|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#5| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@2) |cond#5| (Lit HandleTypeType |p#0@@2|)) (and (|AST.Expr__Raw.All#canCall| |thn#5| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@2) |thn#5| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |els#5| (Lit HandleTypeType |p#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@7|))))) (let ((|oe2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|oe1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@7|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#5| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@2) |oe1#5| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |oe2#5| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@7|)))))) (let ((|es#5| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@7|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#18| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5| ($Box DatatypeTypeType |e#18|)) (|AST.Expr__Raw.All#canCall| |e#18| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.60:21|
 :skolemid |960|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#18| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#5| ($Box DatatypeTypeType |e#18|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@2) (Lit DatatypeTypeType |e#0@@7|) (Lit HandleTypeType |p#0@@2|))  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@7|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@7|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@7|)) (let ((|body#4| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|bvals#4| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@7|)))))
 (and (forall ((|e#13| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4| ($Box DatatypeTypeType |e#13|))) (AST.Expr__Raw.All ($LS $ly@@2) |e#13| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |954|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#13| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#4| ($Box DatatypeTypeType |e#13|)))
)) (AST.Expr__Raw.All ($LS $ly@@2) |body#4| (Lit HandleTypeType |p#0@@2|))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@7|)) (let ((|avals#4| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@7|)))))
 (and true (forall ((|e#14| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4| ($Box DatatypeTypeType |e#14|))) (AST.Expr__Raw.All ($LS $ly@@2) |e#14| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.54:21|
 :skolemid |955|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#14| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#4| ($Box DatatypeTypeType |e#14|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@7|)) (U_2_bool (let ((|els#4| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|thn#4| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|cond#4| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@7|)))))
(Lit boolType (bool_2_U  (and (and (AST.Expr__Raw.All ($LS $ly@@2) |cond#4| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@2) |thn#4| (Lit HandleTypeType |p#0@@2|))) (AST.Expr__Raw.All ($LS $ly@@2) |els#4| (Lit HandleTypeType |p#0@@2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@7|)) (U_2_bool (let ((|oe2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@7|)))))
(let ((|oe1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@7|)))))
(Lit boolType (bool_2_U  (and (AST.Expr__Raw.All ($LS $ly@@2) |oe1#4| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@2) |oe2#4| (Lit HandleTypeType |p#0@@2|)))))))) (let ((|es#4| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@7|)))))
 (and true (forall ((|e#15| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4| ($Box DatatypeTypeType |e#15|))) (AST.Expr__Raw.All ($LS $ly@@2) |e#15| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.60:21|
 :skolemid |956|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#15| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#4| ($Box DatatypeTypeType |e#15|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |961|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) (Lit DatatypeTypeType |e#0@@7|) (Lit HandleTypeType |p#0@@2|)) ($IsGoodHeap $Heap@@2))
)))
(assert (forall (($Heap@@3 T@U) (this@@0 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| this@@0) (and ($IsGoodHeap $Heap@@3) (and ($Is DatatypeTypeType this@@0 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@0 Tclass.AST.Expr__Raw $Heap@@3)))) (and (|AST.Expr__Raw.All#canCall| this@@0 |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed this@@0) (AST.Expr__Raw.All ($LS $LZ) this@@0 |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :skolemid |983|
 :pattern ( (AST.Expr__Raw.WellFormed this@@0) ($IsGoodHeap $Heap@@3))
)))
(assert (forall ((d@@28 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (AST.Expr__Raw.Bind_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass.AST.Expr__Raw $h@@15))) ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@28) (TSeq Tclass.AST.Expr__Raw) $h@@15))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@28) (TSeq Tclass.AST.Expr__Raw) $h@@15))
)))
(assert (forall ((d@@29 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (AST.Expr__Raw.Assign_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.AST.Expr__Raw $h@@16))) ($IsAlloc SeqType (AST.Expr__Raw.avals d@@29) (TSeq Tclass.AST.Expr__Raw) $h@@16))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avals d@@29) (TSeq Tclass.AST.Expr__Raw) $h@@16))
)))
(assert (forall ((d@@30 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (AST.Expr__Raw.Seq_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass.AST.Expr__Raw $h@@17))) ($IsAlloc SeqType (AST.Expr__Raw.es d@@30) (TSeq Tclass.AST.Expr__Raw) $h@@17))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.es d@@30) (TSeq Tclass.AST.Expr__Raw) $h@@17))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@7))
)))
(assert (forall ((v@@6 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@8)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@7) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@8)))
)))
(assert (forall ((s@@2 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@8))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@8))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is boolType v@@8 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@8 TBool))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@9 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun |e#0@@8| () T@U)
(declare-fun |bvars#0@@0| () T@U)
(declare-fun |bvals#0@@1| () T@U)
(declare-fun |body#0@@0| () T@U)
(declare-fun |st#0@@1| () T@U)
(declare-fun |Induction.__default.P__Fail#canCall| (T@U T@U) Bool)
(declare-fun Induction.__default.P__Fail (T@U T@U) Bool)
(declare-fun |st1#0| () T@U)
(declare-fun |bvarvs#0| () T@U)
(declare-fun |Induction.__default.Pes__Succ#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Induction.__default.Pes__Succ (T@U T@U T@U T@U) Bool)
(declare-fun |Induction.__default.UpdateState__Pre#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |st2#0| () T@U)
(declare-fun |st3#0| () T@U)
(declare-fun |v#0| () T@U)
(declare-fun |st4#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$Induction.__default.InductBind__Succ)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (AST.Expr__Raw.Bind_q |e#0@@8|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (AST.Expr__Raw.Bind_q |e#0@@8|)) (=> (AST.Expr__Raw.Bind_q |e#0@@8|) (=> (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@8|) |bvars#0@@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (AST.Expr__Raw.Bind_q |e#0@@8|)) (=> (AST.Expr__Raw.Bind_q |e#0@@8|) (=> (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@8|) |bvals#0@@1|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (AST.Expr__Raw.Bind_q |e#0@@8|)) (=> (AST.Expr__Raw.Bind_q |e#0@@8|) (=> (and (and (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@8|) |body#0@@0|) ($IsAllocBox |st#0@@1| Tclass.Induction.S $Heap@@4)) (and ($IsAlloc DatatypeTypeType |e#0@@8| Tclass.AST.Expr $Heap@@4) (|Induction.__default.P__Fail#canCall| |st#0@@1| |e#0@@8|))) (=> (and (and (and (and (not (Induction.__default.P__Fail |st#0@@1| |e#0@@8|)) ($IsAllocBox |st#0@@1| Tclass.Induction.S $Heap@@4)) (and ($IsAlloc SeqType |bvals#0@@1| (TSeq Tclass.AST.Expr) $Heap@@4) ($IsAllocBox |st1#0| Tclass.Induction.S $Heap@@4))) (and (and ($IsAllocBox |bvarvs#0| Tclass.Induction.VS $Heap@@4) (|Induction.__default.Pes__Succ#canCall| |st#0@@1| |bvals#0@@1| |st1#0| |bvarvs#0|)) (and (Induction.__default.Pes__Succ |st#0@@1| |bvals#0@@1| |st1#0| |bvarvs#0|) ($IsAllocBox |st1#0| Tclass.Induction.S $Heap@@4)))) (and (and (and ($IsAlloc SeqType |bvars#0@@0| (TSeq (TSeq TChar)) $Heap@@4) ($IsAllocBox |bvarvs#0| Tclass.Induction.VS $Heap@@4)) (and (|Induction.__default.UpdateState__Pre#canCall| |st1#0| |bvars#0@@0| |bvarvs#0|) (Induction.__default.UpdateState__Pre |st1#0| |bvars#0@@0| |bvarvs#0|))) (and (and ($IsAllocBox |st1#0| Tclass.Induction.S $Heap@@4) ($IsAlloc SeqType |bvars#0@@0| (TSeq (TSeq TChar)) $Heap@@4)) (and ($IsAllocBox |bvarvs#0| Tclass.Induction.VS $Heap@@4) (= (ControlFlow 0 2) (- 0 1)))))) (Induction.__default.UpdateState__Pre |st1#0| |bvars#0@@0| |bvarvs#0|))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (and ($IsBox |st#0@@1| Tclass.Induction.S) ($IsAllocBox |st#0@@1| Tclass.Induction.S $Heap@@4))) (=> (and (and (and ($Is DatatypeTypeType |e#0@@8| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e#0@@8| Tclass.AST.Expr $Heap@@4)) (|$IsA#AST.Expr__Raw| |e#0@@8|)) (and (and ($Is SeqType |bvars#0@@0| (TSeq (TSeq TChar))) ($IsAlloc SeqType |bvars#0@@0| (TSeq (TSeq TChar)) $Heap@@4)) (and ($Is SeqType |bvals#0@@1| (TSeq Tclass.AST.Expr)) ($IsAlloc SeqType |bvals#0@@1| (TSeq Tclass.AST.Expr) $Heap@@4)))) (=> (and (and (and (and (and ($Is DatatypeTypeType |body#0@@0| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |body#0@@0| Tclass.AST.Expr $Heap@@4)) (|$IsA#AST.Expr__Raw| |body#0@@0|)) (and ($IsBox |st1#0| Tclass.Induction.S) ($IsAllocBox |st1#0| Tclass.Induction.S $Heap@@4))) (and (and ($IsBox |bvarvs#0| Tclass.Induction.VS) ($IsAllocBox |bvarvs#0| Tclass.Induction.VS $Heap@@4)) (and ($IsBox |st2#0| Tclass.Induction.S) ($IsAllocBox |st2#0| Tclass.Induction.S $Heap@@4)))) (and (and (and ($IsBox |st3#0| Tclass.Induction.S) ($IsAllocBox |st3#0| Tclass.Induction.S $Heap@@4)) (and ($IsBox |v#0| Tclass.Induction.V) ($IsAllocBox |v#0| Tclass.Induction.V $Heap@@4))) (and (and ($IsBox |st4#0| Tclass.Induction.S) ($IsAllocBox |st4#0| Tclass.Induction.S $Heap@@4)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2))))) anon0_correct)))))
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
