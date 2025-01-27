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
(declare-fun Tagclass.AST.Expr__Raw () T@U)
(declare-fun Tagclass.AST.BinOp () T@U)
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
(declare-fun tytagFamily$Expr_Raw () T@U)
(declare-fun tytagFamily$BinOp () T@U)
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
(declare-fun AST.Expr__Raw.Literal_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Bind_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Assign_q (T@U) Bool)
(declare-fun AST.Expr__Raw.avals (T@U) T@U)
(declare-fun AST.Expr__Raw.avars (T@U) T@U)
(declare-fun AST.Expr__Raw.If_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Op_q (T@U) Bool)
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
(declare-fun LitInt (Int) Int)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun AST.Expr__Raw.Seq_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun AST.Expr__Raw.es (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Literal| (Int) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun VarUnchanged.__default.VarUnchanged (T@U T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.VarUnchanged#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun |AST.Expr__Raw.WellFormed__Single#requires| (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun AST.Expr__Raw.name (T@U) T@U)
(declare-fun AST.Expr__Raw.n (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.AST.Expr Tagclass.AST.Expr__Raw Tagclass.AST.BinOp |##AST.Expr_Raw.Var| |##AST.Expr_Raw.Literal| |##AST.Expr_Raw.Bind| |##AST.Expr_Raw.Assign| |##AST.Expr_Raw.If| |##AST.Expr_Raw.Op| |##AST.Expr_Raw.Seq| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Expr tytagFamily$Expr_Raw tytagFamily$BinOp)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#39#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#39#0#0| i))) (DtRank (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1069|
 :pattern ( (|Seq#Index| |a#39#0#0| i) (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#42#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#42#1#0| i@@0))) (DtRank (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1072|
 :pattern ( (|Seq#Index| |a#42#1#0| i@@0) (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#51#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#51#0#0| i@@1))) (DtRank (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1085|
 :pattern ( (|Seq#Index| |a#51#0#0| i@@1) (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#54#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#54#1#0| i@@2))) (DtRank (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1088|
 :pattern ( (|Seq#Index| |a#54#1#0| i@@2) (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) (|a#58#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#58#0#0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |a#58#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#58#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.19:10|
 :skolemid |1094|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#68#0#0| Tclass.AST.BinOp) ($Is DatatypeTypeType |a#68#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#68#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.20:10|
 :skolemid |1109|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@3))) (DtRank (|#AST.Expr_Raw.Var| |a#27#0#0|))))
 :qid |ASTdfy.15:11|
 :skolemid |1049|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@3) (|#AST.Expr_Raw.Var| |a#27#0#0|))
)))
(assert (forall ((|a#81#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#81#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#81#0#0| i@@4))) (DtRank (|#AST.Expr_Raw.Seq| |a#81#0#0|))))
 :qid |ASTdfy.21:11|
 :skolemid |1128|
 :pattern ( (|Seq#Index| |a#81#0#0| i@@4) (|#AST.Expr_Raw.Seq| |a#81#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |##AST.Expr_Raw.Bind|)
 :qid |ASTdfy.17:12|
 :skolemid |1059|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (AST.Expr__Raw.bvars (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |a#38#0#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1068|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (AST.Expr__Raw.bvals (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#1#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1071|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (AST.Expr__Raw.body (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1074|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|)) |##AST.Expr_Raw.If|)
 :qid |ASTdfy.19:10|
 :skolemid |1090|
 :pattern ( (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (AST.Expr__Raw.cond (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#0#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1099|
 :pattern ( (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (AST.Expr__Raw.thn (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#1#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1101|
 :pattern ( (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) ) (! (= (AST.Expr__Raw.els (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|)) |a#64#2#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1103|
 :pattern ( (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|)) |##AST.Expr_Raw.Op|)
 :qid |ASTdfy.20:10|
 :skolemid |1105|
 :pattern ( (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (|a#70#2#0| T@U) ) (! (= (AST.Expr__Raw.op (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|)) |a#70#0#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1114|
 :pattern ( (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) (|a#72#2#0| T@U) ) (! (= (AST.Expr__Raw.oe1 (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|)) |a#72#1#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1116|
 :pattern ( (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) (|a#74#2#0| T@U) ) (! (= (AST.Expr__Raw.oe2 (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|)) |a#74#2#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1118|
 :pattern ( (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|))
)))
(assert (forall ((|e#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| |e#0|) ($Is DatatypeTypeType |e#0| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single |e#0|) (ite (AST.Expr__Raw.Var_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0|) (let ((|bvals#0| (AST.Expr__Raw.bvals |e#0|)))
(let ((|bvars#0| (AST.Expr__Raw.bvars |e#0|)))
(= (|Seq#Length| |bvars#0|) (|Seq#Length| |bvals#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0|) (let ((|avals#0| (AST.Expr__Raw.avals |e#0|)))
(let ((|avars#0| (AST.Expr__Raw.avars |e#0|)))
(= (|Seq#Length| |avars#0|) (|Seq#Length| |avals#0|)))) (ite (AST.Expr__Raw.If_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :skolemid |1194|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |e#0|))
)))
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
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw)  (and ($Is SeqType |a#48#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#48#1#0| (TSeq Tclass.AST.Expr__Raw))))
 :qid |ASTdfy.18:14|
 :skolemid |1080|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is SeqType |a#36#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#36#1#0| (TSeq Tclass.AST.Expr__Raw))) ($Is DatatypeTypeType |a#36#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.17:12|
 :skolemid |1063|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| (Lit DatatypeTypeType this)) (and ($IsGoodHeap $Heap) (and ($Is DatatypeTypeType this Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this Tclass.AST.Expr__Raw $Heap)))) (and (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType this) |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this)) (AST.Expr__Raw.All ($LS $LZ) (Lit DatatypeTypeType this) |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :weight 3
 :skolemid |1203|
 :pattern ( (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this)) ($IsGoodHeap $Heap))
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
(assert (forall ((d T@U) ) (! (= (AST.Expr__Raw.Var_q d) (= (DatatypeCtorId d) |##AST.Expr_Raw.Var|))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (AST.Expr__Raw.Var_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (AST.Expr__Raw.Literal_q d@@0) (= (DatatypeCtorId d@@0) |##AST.Expr_Raw.Literal|))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( (AST.Expr__Raw.Literal_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (AST.Expr__Raw.Bind_q d@@1) (= (DatatypeCtorId d@@1) |##AST.Expr_Raw.Bind|))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( (AST.Expr__Raw.Bind_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (AST.Expr__Raw.Assign_q d@@2) (= (DatatypeCtorId d@@2) |##AST.Expr_Raw.Assign|))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( (AST.Expr__Raw.Assign_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (AST.Expr__Raw.If_q d@@3) (= (DatatypeCtorId d@@3) |##AST.Expr_Raw.If|))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (AST.Expr__Raw.If_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (AST.Expr__Raw.Op_q d@@4) (= (DatatypeCtorId d@@4) |##AST.Expr_Raw.Op|))
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( (AST.Expr__Raw.Op_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (AST.Expr__Raw.Seq_q d@@5) (= (DatatypeCtorId d@@5) |##AST.Expr_Raw.Seq|))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( (AST.Expr__Raw.Seq_q d@@5))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (AST.Expr__Raw.Bind_q d@@6) (exists ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= d@@6 (|#AST.Expr_Raw.Bind| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
 :qid |ASTdfy.17:12|
 :skolemid |1061|
)))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( (AST.Expr__Raw.Bind_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (AST.Expr__Raw.If_q d@@7) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= d@@7 (|#AST.Expr_Raw.If| |a#57#0#0| |a#57#1#0| |a#57#2#0|))
 :qid |ASTdfy.19:10|
 :skolemid |1092|
)))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( (AST.Expr__Raw.If_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (AST.Expr__Raw.Op_q d@@8) (exists ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) ) (! (= d@@8 (|#AST.Expr_Raw.Op| |a#67#0#0| |a#67#1#0| |a#67#2#0|))
 :qid |ASTdfy.20:10|
 :skolemid |1107|
)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (AST.Expr__Raw.Op_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (AST.Expr__Raw.Assign_q d@@9) (exists ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= d@@9 (|#AST.Expr_Raw.Assign| |a#47#0#0| |a#47#1#0|))
 :qid |ASTdfy.18:14|
 :skolemid |1078|
)))
 :qid |unknown.0:0|
 :skolemid |1079|
 :pattern ( (AST.Expr__Raw.Assign_q d@@9))
)))
(assert (forall (($ly T@U) ($Heap@@0 T@U) (|e#0@@1| T@U) (|p#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| |e#0@@1| |p#0|) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |e#0@@1| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@0 |p#0| ($Box DatatypeTypeType |e#0@@1|)))) (=> (not (AST.Expr__Raw.Var_q |e#0@@1|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#1| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#1| (AST.Expr__Raw.bvals |e#0@@1|)))
 (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4|)) (|AST.Expr__Raw.All#canCall| |e#4| |p#0|)))
 :qid |ASTdfy.51:22|
 :skolemid |1160|
 :pattern ( (AST.Expr__Raw.All $ly |e#4| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4@@0|))) (AST.Expr__Raw.All $ly |e#4@@0| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1161|
 :pattern ( (AST.Expr__Raw.All $ly |e#4@@0| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1| ($Box DatatypeTypeType |e#4@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#1| (AST.Expr__Raw.avals |e#0@@1|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#5| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1| ($Box DatatypeTypeType |e#5|)) (|AST.Expr__Raw.All#canCall| |e#5| |p#0|)))
 :qid |ASTdfy.54:21|
 :skolemid |1162|
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
 :skolemid |1163|
 :pattern ( (AST.Expr__Raw.All $ly |e#6| |p#0|))
 :pattern ( (|Seq#Contains| |es#1| ($Box DatatypeTypeType |e#6|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly) |e#0@@1| |p#0|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@0 |p#0| ($Box DatatypeTypeType |e#0@@1|)))) (ite (AST.Expr__Raw.Var_q |e#0@@1|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@1|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#0| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#0@@0| (AST.Expr__Raw.bvals |e#0@@1|)))
 (and (forall ((|e#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@0| ($Box DatatypeTypeType |e#1|))) (AST.Expr__Raw.All $ly |e#1| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1157|
 :pattern ( (AST.Expr__Raw.All $ly |e#1| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#0@@0| ($Box DatatypeTypeType |e#1|)))
)) (AST.Expr__Raw.All $ly |body#0| |p#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#0@@0| (AST.Expr__Raw.avals |e#0@@1|)))
 (and true (forall ((|e#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@0| ($Box DatatypeTypeType |e#2|))) (AST.Expr__Raw.All $ly |e#2| |p#0|))
 :qid |ASTdfy.54:21|
 :skolemid |1158|
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
 :skolemid |1159|
 :pattern ( (AST.Expr__Raw.All $ly |e#3| |p#0|))
 :pattern ( (|Seq#Contains| |es#0| ($Box DatatypeTypeType |e#3|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :skolemid |1164|
 :pattern ( (AST.Expr__Raw.All ($LS $ly) |e#0@@1| |p#0|) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (AST.Expr__Raw.Var_q d@@10) (exists ((|a#23#0#0| T@U) ) (! (= d@@10 (|#AST.Expr_Raw.Var| |a#23#0#0|))
 :qid |ASTdfy.15:11|
 :skolemid |1043|
)))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (AST.Expr__Raw.Var_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (AST.Expr__Raw.Literal_q d@@11) (exists ((|a#30#0#0| Int) ) (! (= d@@11 (|#AST.Expr_Raw.Literal| |a#30#0#0|))
 :qid |ASTdfy.16:15|
 :skolemid |1053|
)))
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( (AST.Expr__Raw.Literal_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (AST.Expr__Raw.Seq_q d@@12) (exists ((|a#77#0#0| T@U) ) (! (= d@@12 (|#AST.Expr_Raw.Seq| |a#77#0#0|))
 :qid |ASTdfy.21:11|
 :skolemid |1122|
)))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( (AST.Expr__Raw.Seq_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@13) (AST.Expr__Raw.Literal_q d@@13)) (AST.Expr__Raw.Bind_q d@@13)) (AST.Expr__Raw.Assign_q d@@13)) (AST.Expr__Raw.If_q d@@13)) (AST.Expr__Raw.Op_q d@@13)) (AST.Expr__Raw.Seq_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (AST.Expr__Raw.Seq_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Op_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.If_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Assign_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Bind_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Literal_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Var_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.AST.Expr__Raw))
)))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0| T@U) (|e#0@@2| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| (Lit DatatypeTypeType |e#0@@2|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@2| Tclass.AST.Expr)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@2|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@2|))))) (let ((|body#3| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|bvals#3| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|bvars#3| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@2|)))))
 (and (forall ((|e#10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |e#10|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |655|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#10|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)))
)) (=> (forall ((|e#10@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#10@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |656|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#10@@0|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|)))
)) (=> (not (|Seq#Contains| |bvars#3| ($Box SeqType |x#0|))) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |body#3|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@2|))))) (let ((|avals#3| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|avars#3| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@2|)))))
 (=> (not (|Seq#Contains| |avars#3| ($Box SeqType |x#0|))) (forall ((|e#11| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |e#11|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |657|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#11|))
 :pattern ( (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)))
)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@2|))))) (let ((|els#3| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|thn#3| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|cond#3| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@2|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |cond#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |cond#3|) (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |thn#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |thn#3|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |els#3|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@2|))))) (let ((|oe2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|oe1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@2|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |oe1#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |oe1#3|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |oe2#3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@2|)))))) (let ((|es#3| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@2|)))))
(forall ((|e#12| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0| |e#12|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |658|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#12|))
 :pattern ( (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| (Lit DatatypeTypeType |e#0@@2|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@2|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@2|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@2|)) (let ((|body#2| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|bvals#2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|bvars#2| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@2|)))))
 (and (forall ((|e#7| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2| ($Box DatatypeTypeType |e#7|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#7|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |652|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#7|))
 :pattern ( (|Seq#Contains| |bvals#2| ($Box DatatypeTypeType |e#7|)))
)) (or (|Seq#Contains| |bvars#2| ($Box SeqType |x#0|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |body#2|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@2|)) (let ((|avals#2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|avars#2| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@2|)))))
 (and (not (|Seq#Contains| |avars#2| ($Box SeqType |x#0|))) (forall ((|e#8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2| ($Box DatatypeTypeType |e#8|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#8|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |653|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#8|))
 :pattern ( (|Seq#Contains| |avals#2| ($Box DatatypeTypeType |e#8|)))
))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@2|)) (let ((|els#2| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|thn#2| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|cond#2| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@2|)))))
 (and (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |cond#2|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |thn#2|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |els#2|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@2|)) (let ((|oe2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@2|)))))
(let ((|oe1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@2|)))))
 (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |oe1#2|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |oe2#2|)))) (let ((|es#2| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@2|)))))
(forall ((|e#9| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#9|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |654|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| |e#9|))
 :pattern ( (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :weight 3
 :skolemid |659|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@0) |x#0| (Lit DatatypeTypeType |e#0@@2|)))
))))
(assert (forall (($ly@@1 T@U) (|x#0@@0| T@U) (|e#0@@3| T@U) ) (! (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@1) |x#0@@0| |e#0@@3|) (VarUnchanged.__default.VarUnchanged $ly@@1 |x#0@@0| |e#0@@3|))
 :qid |VarUnchangeddfy.17:13|
 :skolemid |638|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@1) |x#0@@0| |e#0@@3|))
)))
(assert (forall (($ly@@2 T@U) (|e#0@@4| T@U) (|p#0@@0| T@U) ) (! (= (AST.Expr__Raw.All ($LS $ly@@2) |e#0@@4| |p#0@@0|) (AST.Expr__Raw.All $ly@@2 |e#0@@4| |p#0@@0|))
 :qid |ASTdfy.44:22|
 :skolemid |1153|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@2) |e#0@@4| |p#0@@0|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|e#0@@5| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| (Lit DatatypeTypeType |e#0@@5|)) ($Is DatatypeTypeType |e#0@@5| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@5|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|bvals#2@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvars#2@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@5|)))))
(= (|Seq#Length| |bvars#2@@0|) (|Seq#Length| |bvals#2@@0|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|avals#2@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|avars#2@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@5|)))))
(= (|Seq#Length| |avars#2@@0|) (|Seq#Length| |avals#2@@0|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :weight 3
 :skolemid |1195|
 :pattern ( (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@5|)))
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
 :skolemid |640|
 :pattern ( ($IsBox bx@@1 Tclass.AST.Expr))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.AST.Expr__Raw) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.AST.Expr__Raw)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsBox bx@@2 Tclass.AST.Expr__Raw))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.AST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.AST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsBox bx@@3 Tclass.AST.BinOp))
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
 :skolemid |1124|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|x#0@@1| T@U) (|e#0@@6| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#0@@6|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0@@1| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr)))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@6|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@6|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@6|) (let ((|body#1@@0| (AST.Expr__Raw.body |e#0@@6|)))
(let ((|bvals#1@@0| (AST.Expr__Raw.bvals |e#0@@6|)))
(let ((|bvars#1| (AST.Expr__Raw.bvars |e#0@@6|)))
 (and (forall ((|e#4@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@1|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#4@@1|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |647|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#4@@1|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@1|)))
)) (=> (forall ((|e#4@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@2|))) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#4@@2|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |648|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#4@@2|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@2|)))
)) (=> (not (|Seq#Contains| |bvars#1| ($Box SeqType |x#0@@1|))) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |body#1@@0|)))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@6|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@6|) (let ((|avals#1@@0| (AST.Expr__Raw.avals |e#0@@6|)))
(let ((|avars#1| (AST.Expr__Raw.avars |e#0@@6|)))
 (=> (not (|Seq#Contains| |avars#1| ($Box SeqType |x#0@@1|))) (forall ((|e#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5@@0|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#5@@0|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |649|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#5@@0|))
 :pattern ( (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5@@0|)))
)))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@6|)) (and (=> (AST.Expr__Raw.If_q |e#0@@6|) (let ((|els#1@@0| (AST.Expr__Raw.els |e#0@@6|)))
(let ((|thn#1@@0| (AST.Expr__Raw.thn |e#0@@6|)))
(let ((|cond#1@@0| (AST.Expr__Raw.cond |e#0@@6|)))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |cond#1@@0|) (=> (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |cond#1@@0|) (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |thn#1@@0|) (=> (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |thn#1@@0|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |els#1@@0|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@6|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@6|) (let ((|oe2#1@@0| (AST.Expr__Raw.oe2 |e#0@@6|)))
(let ((|oe1#1@@0| (AST.Expr__Raw.oe1 |e#0@@6|)))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |oe1#1@@0|) (=> (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |oe1#1@@0|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |oe2#1@@0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@6|)) (let ((|es#1@@0| (AST.Expr__Raw.es |e#0@@6|)))
(forall ((|e#6@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6@@0|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#6@@0|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |650|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#6@@0|))
 :pattern ( (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6@@0|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#0@@6|) (ite (AST.Expr__Raw.Var_q |e#0@@6|) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q |e#0@@6|) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q |e#0@@6|) (let ((|body#0@@0| (AST.Expr__Raw.body |e#0@@6|)))
(let ((|bvals#0@@1| (AST.Expr__Raw.bvals |e#0@@6|)))
(let ((|bvars#0@@0| (AST.Expr__Raw.bvars |e#0@@6|)))
 (and (forall ((|e#1@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1@@0|))) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#1@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |644|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#1@@0|))
 :pattern ( (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1@@0|)))
)) (or (|Seq#Contains| |bvars#0@@0| ($Box SeqType |x#0@@1|)) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |body#0@@0|)))))) (ite (AST.Expr__Raw.Assign_q |e#0@@6|) (let ((|avals#0@@1| (AST.Expr__Raw.avals |e#0@@6|)))
(let ((|avars#0@@0| (AST.Expr__Raw.avars |e#0@@6|)))
 (and (not (|Seq#Contains| |avars#0@@0| ($Box SeqType |x#0@@1|))) (forall ((|e#2@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2@@0|))) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#2@@0|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |645|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#2@@0|))
 :pattern ( (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2@@0|)))
))))) (ite (AST.Expr__Raw.If_q |e#0@@6|) (let ((|els#0@@0| (AST.Expr__Raw.els |e#0@@6|)))
(let ((|thn#0@@0| (AST.Expr__Raw.thn |e#0@@6|)))
(let ((|cond#0@@0| (AST.Expr__Raw.cond |e#0@@6|)))
 (and (and (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |cond#0@@0|) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |thn#0@@0|)) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |els#0@@0|))))) (ite (AST.Expr__Raw.Op_q |e#0@@6|) (let ((|oe2#0@@0| (AST.Expr__Raw.oe2 |e#0@@6|)))
(let ((|oe1#0@@0| (AST.Expr__Raw.oe1 |e#0@@6|)))
 (and (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |oe1#0@@0|) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |oe2#0@@0|)))) (let ((|es#0@@0| (AST.Expr__Raw.es |e#0@@6|)))
(forall ((|e#3@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0@@0| ($Box DatatypeTypeType |e#3@@0|))) (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#3@@0|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |646|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@3 |x#0@@1| |e#3@@0|))
 :pattern ( (|Seq#Contains| |es#0@@0| ($Box DatatypeTypeType |e#3@@0|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :skolemid |651|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#0@@6|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
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
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $heap |AST.Expr__Raw.WellFormed__Single#Handle| ($Box DatatypeTypeType |$fh$0x#0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1201|
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
 :skolemid |1076|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (AST.Expr__Raw.avars (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1084|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (AST.Expr__Raw.avals (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1087|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|e#0@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@7| Tclass.AST.Expr__Raw) (= (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@7|) true))
 :qid |ASTdfy.71:46|
 :skolemid |1193|
 :pattern ( (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@7|))
)))
(assert (forall ((v@@1 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@3) h@@2) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@6) t0@@3 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@3) h@@2))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#37#0#0| |a#37#1#0| |a#37#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1067|
 :pattern ( (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (= (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.If| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1098|
 :pattern ( (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Op| |a#69#0#0| |a#69#1#0| |a#69#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1113|
 :pattern ( (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0@@2| T@U) (|e#0@@8| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) (Lit DatatypeTypeType |e#0@@8|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0@@2| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@8| Tclass.AST.Expr)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@8|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@8|))))) (let ((|body#5| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|bvals#5| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|bvars#5| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@8|)))))
 (and (forall ((|e#16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |e#16|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |663|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#16|))
 :pattern ( (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16|)))
)) (=> (forall ((|e#16@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16@@0|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |e#16@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |664|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#16@@0|))
 :pattern ( (|Seq#Contains| |bvals#5| ($Box DatatypeTypeType |e#16@@0|)))
)) (=> (not (|Seq#Contains| |bvars#5| ($Box SeqType |x#0@@2|))) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |body#5|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@8|))))) (let ((|avals#5| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|avars#5| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@8|)))))
 (=> (not (|Seq#Contains| |avars#5| ($Box SeqType |x#0@@2|))) (forall ((|e#17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5| ($Box DatatypeTypeType |e#17|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |e#17|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |665|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#17|))
 :pattern ( (|Seq#Contains| |avals#5| ($Box DatatypeTypeType |e#17|)))
)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@8|))))) (let ((|els#5| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|thn#5| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|cond#5| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@8|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |cond#5|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |cond#5|) (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |thn#5|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |thn#5|) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |els#5|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@8|))))) (let ((|oe2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|oe1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@8|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |oe1#5|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |oe1#5|) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |oe2#5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@8|)))))) (let ((|es#5| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@8|)))))
(forall ((|e#18| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5| ($Box DatatypeTypeType |e#18|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@2|) |e#18|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |666|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#18|))
 :pattern ( (|Seq#Contains| |es#5| ($Box DatatypeTypeType |e#18|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) (Lit DatatypeTypeType |e#0@@8|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@8|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@8|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@8|)) (let ((|body#4| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|bvals#4| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|bvars#4| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@8|)))))
 (and (forall ((|e#13| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4| ($Box DatatypeTypeType |e#13|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |e#13|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |660|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#13|))
 :pattern ( (|Seq#Contains| |bvals#4| ($Box DatatypeTypeType |e#13|)))
)) (or (|Seq#Contains| |bvars#4| ($Box SeqType |x#0@@2|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |body#4|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@8|)) (let ((|avals#4| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|avars#4| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@8|)))))
 (and (not (|Seq#Contains| |avars#4| ($Box SeqType |x#0@@2|))) (forall ((|e#14| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4| ($Box DatatypeTypeType |e#14|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |e#14|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |661|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#14|))
 :pattern ( (|Seq#Contains| |avals#4| ($Box DatatypeTypeType |e#14|)))
))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@8|)) (U_2_bool (let ((|els#4| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|thn#4| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|cond#4| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@8|)))))
(Lit boolType (bool_2_U  (and (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |cond#4|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |thn#4|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |els#4|)))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@8|)) (U_2_bool (let ((|oe2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@8|)))))
(let ((|oe1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@8|)))))
(Lit boolType (bool_2_U  (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |oe1#4|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |oe2#4|))))))) (let ((|es#4| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@8|)))))
(forall ((|e#15| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4| ($Box DatatypeTypeType |e#15|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) |e#15|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |662|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#15|))
 :pattern ( (|Seq#Contains| |es#4| ($Box DatatypeTypeType |e#15|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :weight 3
 :skolemid |667|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) (Lit SeqType |x#0@@2|) (Lit DatatypeTypeType |e#0@@8|)))
))))
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
 :skolemid |1041|
 :pattern ( (|#AST.Expr_Raw.Var| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (AST.Expr__Raw.name (|#AST.Expr_Raw.Var| |a#26#0#0|)) |a#26#0#0|)
 :qid |ASTdfy.15:11|
 :skolemid |1048|
 :pattern ( (|#AST.Expr_Raw.Var| |a#26#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Literal| |a#29#0#0|)) |##AST.Expr_Raw.Literal|)
 :qid |ASTdfy.16:15|
 :skolemid |1051|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (AST.Expr__Raw.n (|#AST.Expr_Raw.Literal| |a#33#0#0|)) |a#33#0#0|)
 :qid |ASTdfy.16:15|
 :skolemid |1058|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#33#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Seq| |a#76#0#0|)) |##AST.Expr_Raw.Seq|)
 :qid |ASTdfy.21:11|
 :skolemid |1120|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#76#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (AST.Expr__Raw.es (|#AST.Expr_Raw.Seq| |a#80#0#0|)) |a#80#0#0|)
 :qid |ASTdfy.21:11|
 :skolemid |1127|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#80#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (|Seq#Rank| |a#40#0#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1070|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (|Seq#Rank| |a#43#1#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1073|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#2#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1075|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1100|
 :pattern ( (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1102|
 :pattern ( (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) ) (! (< (DtRank |a#65#2#0|) (DtRank (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1104|
 :pattern ( (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (|a#71#2#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1115|
 :pattern ( (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) (|a#73#2#0| T@U) ) (! (< (DtRank |a#73#1#0|) (DtRank (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1117|
 :pattern ( (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) (|a#75#2#0| T@U) ) (! (< (DtRank |a#75#2#0|) (DtRank (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1119|
 :pattern ( (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|) (|AST.Expr__Raw.WellFormed__Single#requires| ($Unbox DatatypeTypeType |$fh$0x#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1199|
 :pattern ( (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (|Seq#Rank| |a#52#0#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1086|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (|Seq#Rank| |a#55#1#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1089|
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
 :skolemid |1055|
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
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@4 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@3)) (Requires1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3))
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
 :skolemid |1050|
 :pattern ( (|#AST.Expr_Raw.Var| |a#28#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (< (|Seq#Rank| |a#82#0#0|) (DtRank (|#AST.Expr_Raw.Seq| |a#82#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1129|
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
 :skolemid |1230|
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
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (AST.Expr__Raw.Literal_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass.AST.Expr__Raw $h@@2))) ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@14)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@14)) TInt $h@@2))
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
 :skolemid |1200|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((d@@15 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@15 Tclass.AST.BinOp)) ($IsAlloc DatatypeTypeType d@@15 Tclass.AST.BinOp $h@@3))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass.AST.BinOp $h@@3))
)))
(assert (forall ((d@@16 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@16 Tclass.AST.Expr__Raw)) ($IsAlloc DatatypeTypeType d@@16 Tclass.AST.Expr__Raw $h@@4))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass.AST.Expr__Raw $h@@4))
)))
(assert (= (Tag Tclass.AST.Expr) Tagclass.AST.Expr))
(assert (= (TagFamily Tclass.AST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.AST.Expr__Raw) Tagclass.AST.Expr__Raw))
(assert (= (TagFamily Tclass.AST.Expr__Raw) tytagFamily$Expr_Raw))
(assert (= (Tag Tclass.AST.BinOp) Tagclass.AST.BinOp))
(assert (= (TagFamily Tclass.AST.BinOp) tytagFamily$BinOp))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |ASTdfy.15:11|
 :skolemid |1045|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d@@17 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (AST.Expr__Raw.Var_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.AST.Expr__Raw $h@@5))) ($IsAlloc SeqType (AST.Expr__Raw.name d@@17) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.name d@@17) (TSeq TChar) $h@@5))
)))
(assert (forall (($ly@@5 T@U) ($Heap@@1 T@U) (|e#0@@9| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@9|) |p#0@@1|) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |e#0@@9| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@9|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@9|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|body#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvals#3@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@9|)))))
 (and (forall ((|e#10@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@1|)) (|AST.Expr__Raw.All#canCall| |e#10@@1| |p#0@@1|)))
 :qid |ASTdfy.51:22|
 :skolemid |1168|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#10@@1| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@1|)))
)) (=> (forall ((|e#10@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@2|))) (AST.Expr__Raw.All ($LS $ly@@5) |e#10@@2| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1169|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#10@@2| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@2|)))
)) (|AST.Expr__Raw.All#canCall| |body#3@@0| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|avals#3@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@9|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#11@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3@@0| ($Box DatatypeTypeType |e#11@@0|)) (|AST.Expr__Raw.All#canCall| |e#11@@0| |p#0@@1|)))
 :qid |ASTdfy.54:21|
 :skolemid |1170|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#11@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#3@@0| ($Box DatatypeTypeType |e#11@@0|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|els#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|thn#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|cond#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@9|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@5) |cond#3@@0| |p#0@@1|) (and (|AST.Expr__Raw.All#canCall| |thn#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@5) |thn#3@@0| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |els#3@@0| |p#0@@1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|oe2#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|oe1#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@5) |oe1#3@@0| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |oe2#3@@0| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|)))))) (let ((|es#3@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@9|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#12@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3@@0| ($Box DatatypeTypeType |e#12@@0|)) (|AST.Expr__Raw.All#canCall| |e#12@@0| |p#0@@1|)))
 :qid |ASTdfy.60:21|
 :skolemid |1171|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#12@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#3@@0| ($Box DatatypeTypeType |e#12@@0|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@5) (Lit DatatypeTypeType |e#0@@9|) |p#0@@1|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@9|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|body#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvals#2@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@9|)))))
 (and (forall ((|e#7@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2@@1| ($Box DatatypeTypeType |e#7@@0|))) (AST.Expr__Raw.All ($LS $ly@@5) |e#7@@0| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1165|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#7@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#2@@1| ($Box DatatypeTypeType |e#7@@0|)))
)) (AST.Expr__Raw.All ($LS $ly@@5) |body#2@@0| |p#0@@1|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|avals#2@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@9|)))))
 (and true (forall ((|e#8@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2@@1| ($Box DatatypeTypeType |e#8@@0|))) (AST.Expr__Raw.All ($LS $ly@@5) |e#8@@0| |p#0@@1|))
 :qid |ASTdfy.54:21|
 :skolemid |1166|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#8@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#2@@1| ($Box DatatypeTypeType |e#8@@0|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|els#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|thn#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|cond#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@9|)))))
 (and (and (AST.Expr__Raw.All ($LS $ly@@5) |cond#2@@0| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@5) |thn#2@@0| |p#0@@1|)) (AST.Expr__Raw.All ($LS $ly@@5) |els#2@@0| |p#0@@1|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|oe2#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|oe1#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (AST.Expr__Raw.All ($LS $ly@@5) |oe1#2@@0| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@5) |oe2#2@@0| |p#0@@1|)))) (let ((|es#2@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@9|)))))
 (and true (forall ((|e#9@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2@@0| ($Box DatatypeTypeType |e#9@@0|))) (AST.Expr__Raw.All ($LS $ly@@5) |e#9@@0| |p#0@@1|))
 :qid |ASTdfy.60:21|
 :skolemid |1167|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#9@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#2@@0| ($Box DatatypeTypeType |e#9@@0|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1172|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) (Lit DatatypeTypeType |e#0@@9|) |p#0@@1|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@18 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (AST.Expr__Raw.Bind_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass.AST.Expr__Raw $h@@6))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@18) Tclass.AST.Expr__Raw $h@@6))
 :qid |unknown.0:0|
 :skolemid |1066|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@18) Tclass.AST.Expr__Raw $h@@6))
)))
(assert (forall ((d@@19 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (AST.Expr__Raw.If_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.AST.Expr__Raw $h@@7))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@19) Tclass.AST.Expr__Raw $h@@7))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@19) Tclass.AST.Expr__Raw $h@@7))
)))
(assert (forall ((d@@20 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (AST.Expr__Raw.If_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.AST.Expr__Raw $h@@8))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@20) Tclass.AST.Expr__Raw $h@@8))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@20) Tclass.AST.Expr__Raw $h@@8))
)))
(assert (forall ((d@@21 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (AST.Expr__Raw.If_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.AST.Expr__Raw $h@@9))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@21) Tclass.AST.Expr__Raw $h@@9))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@21) Tclass.AST.Expr__Raw $h@@9))
)))
(assert (forall ((d@@22 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (AST.Expr__Raw.Op_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.AST.Expr__Raw $h@@10))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@22) Tclass.AST.BinOp $h@@10))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@22) Tclass.AST.BinOp $h@@10))
)))
(assert (forall ((d@@23 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (AST.Expr__Raw.Op_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.AST.Expr__Raw $h@@11))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@23) Tclass.AST.Expr__Raw $h@@11))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@23) Tclass.AST.Expr__Raw $h@@11))
)))
(assert (forall ((d@@24 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (AST.Expr__Raw.Op_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.AST.Expr__Raw $h@@12))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@24) Tclass.AST.Expr__Raw $h@@12))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@24) Tclass.AST.Expr__Raw $h@@12))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#49#0#0| |a#49#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1083|
 :pattern ( (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|) ($Box boolType (bool_2_U (AST.Expr__Raw.WellFormed__Single ($Unbox DatatypeTypeType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1198|
 :pattern ( (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((|e#0@@10| T@U) ) (! (= ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr)  (and ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr__Raw) (AST.Expr__Raw.WellFormed |e#0@@10|)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Var| |a#25#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |1047|
 :pattern ( (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#32#0#0|)))
 :qid |ASTdfy.16:15|
 :skolemid |1057|
 :pattern ( (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#79#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#79#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1126|
 :pattern ( (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((d@@25 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (AST.Expr__Raw.Bind_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.AST.Expr__Raw $h@@13))) ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@25) (TSeq (TSeq TChar)) $h@@13))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@25) (TSeq (TSeq TChar)) $h@@13))
)))
(assert (forall ((d@@26 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (AST.Expr__Raw.Assign_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass.AST.Expr__Raw $h@@14))) ($IsAlloc SeqType (AST.Expr__Raw.avars d@@26) (TSeq (TSeq TChar)) $h@@14))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avars d@@26) (TSeq (TSeq TChar)) $h@@14))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall (($ly@@6 T@U) ($Heap@@2 T@U) (|e#0@@11| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@11|) (Lit HandleTypeType |p#0@@2|)) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |e#0@@11| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@11|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@11|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|body#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvals#5@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@11|)))))
 (and (forall ((|e#16@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@1|)) (|AST.Expr__Raw.All#canCall| |e#16@@1| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.51:22|
 :skolemid |1176|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#16@@1| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@1|)))
)) (=> (forall ((|e#16@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@2|))) (AST.Expr__Raw.All ($LS $ly@@6) |e#16@@2| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1177|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#16@@2| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@2|)))
)) (|AST.Expr__Raw.All#canCall| |body#5@@0| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|avals#5@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@11|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#17@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17@@0|)) (|AST.Expr__Raw.All#canCall| |e#17@@0| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.54:21|
 :skolemid |1178|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#17@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17@@0|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|els#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|thn#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|cond#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@6) |cond#5@@0| (Lit HandleTypeType |p#0@@2|)) (and (|AST.Expr__Raw.All#canCall| |thn#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@6) |thn#5@@0| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |els#5@@0| (Lit HandleTypeType |p#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|oe2#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|oe1#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@6) |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |oe2#5@@0| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|)))))) (let ((|es#5@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@11|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#18@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18@@0|)) (|AST.Expr__Raw.All#canCall| |e#18@@0| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.60:21|
 :skolemid |1179|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#18@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18@@0|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@6) (Lit DatatypeTypeType |e#0@@11|) (Lit HandleTypeType |p#0@@2|))  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@11|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@11|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@11|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|body#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvals#4@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@11|)))))
 (and (forall ((|e#13@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13@@0|))) (AST.Expr__Raw.All ($LS $ly@@6) |e#13@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1173|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#13@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13@@0|)))
)) (AST.Expr__Raw.All ($LS $ly@@6) |body#4@@0| (Lit HandleTypeType |p#0@@2|))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|avals#4@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@11|)))))
 (and true (forall ((|e#14@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14@@0|))) (AST.Expr__Raw.All ($LS $ly@@6) |e#14@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.54:21|
 :skolemid |1174|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#14@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14@@0|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|)) (U_2_bool (let ((|els#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|thn#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|cond#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@11|)))))
(Lit boolType (bool_2_U  (and (and (AST.Expr__Raw.All ($LS $ly@@6) |cond#4@@0| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@6) |thn#4@@0| (Lit HandleTypeType |p#0@@2|))) (AST.Expr__Raw.All ($LS $ly@@6) |els#4@@0| (Lit HandleTypeType |p#0@@2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|)) (U_2_bool (let ((|oe2#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|oe1#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@11|)))))
(Lit boolType (bool_2_U  (and (AST.Expr__Raw.All ($LS $ly@@6) |oe1#4@@0| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@6) |oe2#4@@0| (Lit HandleTypeType |p#0@@2|)))))))) (let ((|es#4@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@11|)))))
 (and true (forall ((|e#15@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15@@0|))) (AST.Expr__Raw.All ($LS $ly@@6) |e#15@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.60:21|
 :skolemid |1175|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#15@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15@@0|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1180|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) (Lit DatatypeTypeType |e#0@@11|) (Lit HandleTypeType |p#0@@2|)) ($IsGoodHeap $Heap@@2))
)))
(assert (forall (($Heap@@3 T@U) (this@@0 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| this@@0) (and ($IsGoodHeap $Heap@@3) (and ($Is DatatypeTypeType this@@0 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@0 Tclass.AST.Expr__Raw $Heap@@3)))) (and (|AST.Expr__Raw.All#canCall| this@@0 |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed this@@0) (AST.Expr__Raw.All ($LS $LZ) this@@0 |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :skolemid |1202|
 :pattern ( (AST.Expr__Raw.WellFormed this@@0) ($IsGoodHeap $Heap@@3))
)))
(assert (forall ((d@@27 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (AST.Expr__Raw.Bind_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass.AST.Expr__Raw $h@@15))) ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@27) (TSeq Tclass.AST.Expr__Raw) $h@@15))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@27) (TSeq Tclass.AST.Expr__Raw) $h@@15))
)))
(assert (forall ((d@@28 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (AST.Expr__Raw.Assign_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass.AST.Expr__Raw $h@@16))) ($IsAlloc SeqType (AST.Expr__Raw.avals d@@28) (TSeq Tclass.AST.Expr__Raw) $h@@16))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avals d@@28) (TSeq Tclass.AST.Expr__Raw) $h@@16))
)))
(assert (forall ((d@@29 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (AST.Expr__Raw.Seq_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.AST.Expr__Raw $h@@17))) ($IsAlloc SeqType (AST.Expr__Raw.es d@@29) (TSeq Tclass.AST.Expr__Raw) $h@@17))
 :qid |unknown.0:0|
 :skolemid |1125|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.es d@@29) (TSeq Tclass.AST.Expr__Raw) $h@@17))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@6)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@6))
)))
(assert (forall ((v@@5 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@8)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@7) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@8)))
)))
(assert (forall ((s@@2 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@8))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@8))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is charType v@@8 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@8 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |bvars#Z#0@0| () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun |body#Z#0@0| () T@U)
(declare-fun |e#0@@12| () T@U)
(declare-fun |bvals#Z#0@0| () T@U)
(declare-fun |e#23@0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |let#9#0#0| () T@U)
(declare-fun |let#10#0#0| () T@U)
(declare-fun |let#11#0#0| () T@U)
(declare-fun |avals#Z#0@0| () T@U)
(declare-fun |e#21@0| () T@U)
(declare-fun |avars#Z#0@0| () T@U)
(declare-fun |_mcc#5#0| () T@U)
(declare-fun |_mcc#6#0| () T@U)
(declare-fun |let#7#0#0| () T@U)
(declare-fun |let#8#0#0| () T@U)
(declare-fun |cond#Z#0@0| () T@U)
(declare-fun |thn#Z#0@0| () T@U)
(declare-fun |els#Z#0@0| () T@U)
(declare-fun |_mcc#7#0| () T@U)
(declare-fun |_mcc#8#0| () T@U)
(declare-fun |_mcc#9#0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |let#5#0#0| () T@U)
(declare-fun |let#6#0#0| () T@U)
(declare-fun |oe1#Z#0@0| () T@U)
(declare-fun |oe2#Z#0@0| () T@U)
(declare-fun |_mcc#10#0| () T@U)
(declare-fun |_mcc#11#0| () T@U)
(declare-fun |_mcc#12#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |op#Z#0@0| () T@U)
(declare-fun |es#Z#0@0| () T@U)
(declare-fun |e#19@0| () T@U)
(declare-fun |_mcc#13#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |_mcc#1#0| () Int)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$VarUnchanged.__default.VarUnchanged)
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
 (=> (= (ControlFlow 0 0) 64) (let ((anon12_correct true))
(let ((anon40_Else_correct  (=> (and (|Seq#Contains| |bvars#Z#0@0| ($Box SeqType |x#0@@3|)) (= (ControlFlow 0 52) 47)) anon12_correct)))
(let ((anon40_Then_correct  (=> (and (not (|Seq#Contains| |bvars#Z#0@0| ($Box SeqType |x#0@@3|))) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 49) (- 0 51)) ($Is DatatypeTypeType |body#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |body#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |body#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 49) (- 0 50)) (< (DtRank |body#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |body#Z#0@0|) (DtRank |e#0@@12|)) (=> (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |body#Z#0@0|) (= (ControlFlow 0 49) 47)) anon12_correct)))))))))
(let ((anon39_Then_correct  (=> (forall ((|e#24| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#24| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#24|))) (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |e#24|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |684|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |e#24|))
 :pattern ( (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#24|)))
)) (and (=> (= (ControlFlow 0 53) 49) anon40_Then_correct) (=> (= (ControlFlow 0 53) 52) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not (forall ((|e#24@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#24@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#24@@0|))) (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |e#24@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |684|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |e#24@@0|))
 :pattern ( (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#24@@0|)))
))) (= (ControlFlow 0 48) 47)) anon12_correct)))
(let ((anon38_Else_correct  (=> (not (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#23@0|))) (and (=> (= (ControlFlow 0 58) 53) anon39_Then_correct) (=> (= (ControlFlow 0 58) 48) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (|Seq#Contains| |bvals#Z#0@0| ($Box DatatypeTypeType |e#23@0|)) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 55) (- 0 57)) ($Is DatatypeTypeType |e#23@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |e#23@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |e#23@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 55) (- 0 56)) (< (DtRank |e#23@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |e#23@0|) (DtRank |e#0@@12|)) (=> (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#23@0|) (and (=> (= (ControlFlow 0 55) 53) anon39_Then_correct) (=> (= (ControlFlow 0 55) 48) anon39_Else_correct)))))))))))
(let ((anon37_Then_correct  (=> (and ($Is DatatypeTypeType |e#23@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#23@0| Tclass.AST.Expr__Raw $Heap@@4)) (and (=> (= (ControlFlow 0 59) 55) anon38_Then_correct) (=> (= (ControlFlow 0 59) 58) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (not (and ($Is DatatypeTypeType |e#23@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#23@0| Tclass.AST.Expr__Raw $Heap@@4))) (and (=> (= (ControlFlow 0 54) 53) anon39_Then_correct) (=> (= (ControlFlow 0 54) 48) anon39_Else_correct)))))
(let ((anon36_Then_correct  (=> (= |e#0@@12| (|#AST.Expr_Raw.Bind| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0|)) (=> (and (and ($Is SeqType |_mcc#2#0| (TSeq (TSeq TChar))) ($Is SeqType |_mcc#3#0| (TSeq Tclass.AST.Expr__Raw))) (and ($Is DatatypeTypeType |_mcc#4#0| Tclass.AST.Expr__Raw) (= |let#9#0#0| |_mcc#4#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#9#0#0| Tclass.AST.Expr__Raw) (= |body#Z#0@0| |let#9#0#0|)) (and (= |let#10#0#0| |_mcc#3#0|) ($Is SeqType |let#10#0#0| (TSeq Tclass.AST.Expr__Raw)))) (and (and (= |bvals#Z#0@0| |let#10#0#0|) (= |let#11#0#0| |_mcc#2#0|)) (and ($Is SeqType |let#11#0#0| (TSeq (TSeq TChar))) (= |bvars#Z#0@0| |let#11#0#0|)))) (and (=> (= (ControlFlow 0 60) 59) anon37_Then_correct) (=> (= (ControlFlow 0 60) 54) anon37_Else_correct)))))))
(let ((anon18_correct true))
(let ((anon44_Else_correct  (=> (and (not (|Seq#Contains| |avals#Z#0@0| ($Box DatatypeTypeType |e#21@0|))) (= (ControlFlow 0 42) 36)) anon18_correct)))
(let ((anon44_Then_correct  (=> (and (|Seq#Contains| |avals#Z#0@0| ($Box DatatypeTypeType |e#21@0|)) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 39) (- 0 41)) ($Is DatatypeTypeType |e#21@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |e#21@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |e#21@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< (DtRank |e#21@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |e#21@0|) (DtRank |e#0@@12|)) (=> (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#21@0|) (= (ControlFlow 0 39) 36)) anon18_correct)))))))))
(let ((anon43_Then_correct  (=> (and ($Is DatatypeTypeType |e#21@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#21@0| Tclass.AST.Expr__Raw $Heap@@4)) (and (=> (= (ControlFlow 0 43) 39) anon44_Then_correct) (=> (= (ControlFlow 0 43) 42) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |e#21@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#21@0| Tclass.AST.Expr__Raw $Heap@@4))) (= (ControlFlow 0 38) 36)) anon18_correct)))
(let ((anon42_Then_correct  (=> (not (|Seq#Contains| |avars#Z#0@0| ($Box SeqType |x#0@@3|))) (and (=> (= (ControlFlow 0 44) 43) anon43_Then_correct) (=> (= (ControlFlow 0 44) 38) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (|Seq#Contains| |avars#Z#0@0| ($Box SeqType |x#0@@3|)) (= (ControlFlow 0 37) 36)) anon18_correct)))
(let ((anon41_Then_correct  (=> (= |e#0@@12| (|#AST.Expr_Raw.Assign| |_mcc#5#0| |_mcc#6#0|)) (=> (and (and (and ($Is SeqType |_mcc#5#0| (TSeq (TSeq TChar))) ($Is SeqType |_mcc#6#0| (TSeq Tclass.AST.Expr__Raw))) (and (= |let#7#0#0| |_mcc#6#0|) ($Is SeqType |let#7#0#0| (TSeq Tclass.AST.Expr__Raw)))) (and (and (= |avals#Z#0@0| |let#7#0#0|) (= |let#8#0#0| |_mcc#5#0|)) (and ($Is SeqType |let#8#0#0| (TSeq (TSeq TChar))) (= |avars#Z#0@0| |let#8#0#0|)))) (and (=> (= (ControlFlow 0 45) 44) anon42_Then_correct) (=> (= (ControlFlow 0 45) 37) anon42_Else_correct))))))
(let ((anon23_correct true))
(let ((anon47_Else_correct  (=> (and (not (and (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |cond#Z#0@0|) (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |thn#Z#0@0|))) (= (ControlFlow 0 27) 23)) anon23_correct)))
(let ((anon47_Then_correct  (=> (and (and (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |cond#Z#0@0|) (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |thn#Z#0@0|)) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 24) (- 0 26)) ($Is DatatypeTypeType |els#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |els#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |els#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 24) (- 0 25)) (< (DtRank |els#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |els#Z#0@0|) (DtRank |e#0@@12|)) (=> (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |els#Z#0@0|) (= (ControlFlow 0 24) 23)) anon23_correct)))))))))
(let ((anon46_Else_correct  (=> (not (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |cond#Z#0@0|)) (and (=> (= (ControlFlow 0 31) 24) anon47_Then_correct) (=> (= (ControlFlow 0 31) 27) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (and (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |cond#Z#0@0|) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 28) (- 0 30)) ($Is DatatypeTypeType |thn#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |thn#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |thn#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< (DtRank |thn#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |thn#Z#0@0|) (DtRank |e#0@@12|)) (=> (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |thn#Z#0@0|) (and (=> (= (ControlFlow 0 28) 24) anon47_Then_correct) (=> (= (ControlFlow 0 28) 27) anon47_Else_correct)))))))))))
(let ((anon45_Then_correct  (=> (and (= |e#0@@12| (|#AST.Expr_Raw.If| |_mcc#7#0| |_mcc#8#0| |_mcc#9#0|)) ($Is DatatypeTypeType |_mcc#7#0| Tclass.AST.Expr__Raw)) (=> (and (and ($Is DatatypeTypeType |_mcc#8#0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |_mcc#9#0| Tclass.AST.Expr__Raw)) (and (= |let#4#0#0| |_mcc#9#0|) ($Is DatatypeTypeType |let#4#0#0| Tclass.AST.Expr__Raw))) (=> (and (and (and (= |els#Z#0@0| |let#4#0#0|) (= |let#5#0#0| |_mcc#8#0|)) (and ($Is DatatypeTypeType |let#5#0#0| Tclass.AST.Expr__Raw) (= |thn#Z#0@0| |let#5#0#0|))) (and (and (= |let#6#0#0| |_mcc#7#0|) ($Is DatatypeTypeType |let#6#0#0| Tclass.AST.Expr__Raw)) (and (= |cond#Z#0@0| |let#6#0#0|) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)))) (and (=> (= (ControlFlow 0 32) (- 0 34)) ($Is DatatypeTypeType |cond#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |cond#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |cond#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 32) (- 0 33)) (< (DtRank |cond#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |cond#Z#0@0|) (DtRank |e#0@@12|)) (=> (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |cond#Z#0@0|) (and (=> (= (ControlFlow 0 32) 28) anon46_Then_correct) (=> (= (ControlFlow 0 32) 31) anon46_Else_correct)))))))))))))
(let ((anon26_correct true))
(let ((anon49_Else_correct  (=> (and (not (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |oe1#Z#0@0|)) (= (ControlFlow 0 18) 14)) anon26_correct)))
(let ((anon49_Then_correct  (=> (and (VarUnchanged.__default.VarUnchanged ($LS $LZ) |x#0@@3| |oe1#Z#0@0|) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 15) (- 0 17)) ($Is DatatypeTypeType |oe2#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |oe2#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |oe2#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 15) (- 0 16)) (< (DtRank |oe2#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |oe2#Z#0@0|) (DtRank |e#0@@12|)) (=> (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |oe2#Z#0@0|) (= (ControlFlow 0 15) 14)) anon26_correct)))))))))
(let ((anon48_Then_correct  (=> (and (= |e#0@@12| (|#AST.Expr_Raw.Op| |_mcc#10#0| |_mcc#11#0| |_mcc#12#0|)) ($Is DatatypeTypeType |_mcc#10#0| Tclass.AST.BinOp)) (=> (and (and ($Is DatatypeTypeType |_mcc#11#0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |_mcc#12#0| Tclass.AST.Expr__Raw)) (and (= |let#1#0#0| |_mcc#12#0|) ($Is DatatypeTypeType |let#1#0#0| Tclass.AST.Expr__Raw))) (=> (and (and (and (= |oe2#Z#0@0| |let#1#0#0|) (= |let#2#0#0| |_mcc#11#0|)) (and ($Is DatatypeTypeType |let#2#0#0| Tclass.AST.Expr__Raw) (= |oe1#Z#0@0| |let#2#0#0|))) (and (and (= |let#3#0#0| |_mcc#10#0|) ($Is DatatypeTypeType |let#3#0#0| Tclass.AST.BinOp)) (and (= |op#Z#0@0| |let#3#0#0|) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) ($Is DatatypeTypeType |oe1#Z#0@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |oe1#Z#0@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |oe1#Z#0@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< (DtRank |oe1#Z#0@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |oe1#Z#0@0|) (DtRank |e#0@@12|)) (=> (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |oe1#Z#0@0|) (and (=> (= (ControlFlow 0 19) 15) anon49_Then_correct) (=> (= (ControlFlow 0 19) 18) anon49_Else_correct)))))))))))))
(let ((anon30_correct true))
(let ((anon52_Else_correct  (=> (and (not (|Seq#Contains| |es#Z#0@0| ($Box DatatypeTypeType |e#19@0|))) (= (ControlFlow 0 10) 5)) anon30_correct)))
(let ((anon52_Then_correct  (=> (and (|Seq#Contains| |es#Z#0@0| ($Box DatatypeTypeType |e#19@0|)) ($IsAlloc SeqType |x#0@@3| (TSeq TChar) $Heap@@4)) (and (=> (= (ControlFlow 0 7) (- 0 9)) ($Is DatatypeTypeType |e#19@0| Tclass.AST.Expr)) (=> ($Is DatatypeTypeType |e#19@0| Tclass.AST.Expr) (=> ($IsAlloc DatatypeTypeType |e#19@0| Tclass.AST.Expr $Heap@@4) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< (DtRank |e#19@0|) (DtRank |e#0@@12|))) (=> (< (DtRank |e#19@0|) (DtRank |e#0@@12|)) (=> (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#19@0|) (= (ControlFlow 0 7) 5)) anon30_correct)))))))))
(let ((anon51_Then_correct  (=> (and ($Is DatatypeTypeType |e#19@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#19@0| Tclass.AST.Expr__Raw $Heap@@4)) (and (=> (= (ControlFlow 0 11) 7) anon52_Then_correct) (=> (= (ControlFlow 0 11) 10) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |e#19@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e#19@0| Tclass.AST.Expr__Raw $Heap@@4))) (= (ControlFlow 0 6) 5)) anon30_correct)))
(let ((anon50_Then_correct  (=> (= |e#0@@12| (|#AST.Expr_Raw.Seq| |_mcc#13#0|)) (=> (and (and ($Is SeqType |_mcc#13#0| (TSeq Tclass.AST.Expr__Raw)) (= |let#0#0#0| |_mcc#13#0|)) (and ($Is SeqType |let#0#0#0| (TSeq Tclass.AST.Expr__Raw)) (= |es#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 12) 11) anon51_Then_correct) (=> (= (ControlFlow 0 12) 6) anon51_Else_correct))))))
(let ((anon50_Else_correct true))
(let ((anon48_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.Op| |_mcc#10#0| |_mcc#11#0| |_mcc#12#0|))) (not true)) (and (=> (= (ControlFlow 0 13) 12) anon50_Then_correct) (=> (= (ControlFlow 0 13) 4) anon50_Else_correct)))))
(let ((anon45_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.If| |_mcc#7#0| |_mcc#8#0| |_mcc#9#0|))) (not true)) (and (=> (= (ControlFlow 0 22) 19) anon48_Then_correct) (=> (= (ControlFlow 0 22) 13) anon48_Else_correct)))))
(let ((anon41_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.Assign| |_mcc#5#0| |_mcc#6#0|))) (not true)) (and (=> (= (ControlFlow 0 35) 32) anon45_Then_correct) (=> (= (ControlFlow 0 35) 22) anon45_Else_correct)))))
(let ((anon36_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.Bind| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0|))) (not true)) (and (=> (= (ControlFlow 0 46) 45) anon41_Then_correct) (=> (= (ControlFlow 0 46) 35) anon41_Else_correct)))))
(let ((anon35_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.Literal| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 61) 60) anon36_Then_correct) (=> (= (ControlFlow 0 61) 46) anon36_Else_correct)))))
(let ((anon35_Then_correct true))
(let ((anon34_Else_correct  (=> (or (not (= |e#0@@12| (|#AST.Expr_Raw.Var| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 62) 3) anon35_Then_correct) (=> (= (ControlFlow 0 62) 61) anon35_Else_correct)))))
(let ((anon34_Then_correct true))
(let ((anon33_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (and (and (=> (= (ControlFlow 0 63) 1) anon33_Then_correct) (=> (= (ControlFlow 0 63) 2) anon34_Then_correct)) (=> (= (ControlFlow 0 63) 62) anon34_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and ($Is SeqType |x#0@@3| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@12| Tclass.AST.Expr)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 64) 63))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
