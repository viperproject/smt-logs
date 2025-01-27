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
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.DafnyAST.Expr () T@U)
(declare-fun Tagclass.DafnyAST.BinOp () T@U)
(declare-fun Tagclass.DafnyAST.Stmt () T@U)
(declare-fun Tagclass.DafnyAST.InterpResult () T@U)
(declare-fun |##DafnyAST.BinOp.Add| () T@U)
(declare-fun |##DafnyAST.BinOp.Sub| () T@U)
(declare-fun |##DafnyAST.Expr.Const| () T@U)
(declare-fun |##DafnyAST.Expr.Var| () T@U)
(declare-fun |##DafnyAST.Expr.Op| () T@U)
(declare-fun |##DafnyAST.Stmt.Skip| () T@U)
(declare-fun |##DafnyAST.Stmt.Print| () T@U)
(declare-fun |##DafnyAST.Stmt.Assign| () T@U)
(declare-fun |##DafnyAST.Stmt.Seq| () T@U)
(declare-fun |##DafnyAST.InterpResult.InterpResult| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$Stmt () T@U)
(declare-fun tytagFamily$InterpResult () T@U)
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
(declare-fun |#DafnyAST.Stmt.Seq| (T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Stmt () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#DafnyAST.Stmt.Assign| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#DafnyAST.InterpResult.InterpResult| (T@U T@U) T@U)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun DafnyAST.__default.interpExpr (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |DafnyAST.__default.interpExpr#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DafnyAST.Expr.Const_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Var_q (T@U) Bool)
(declare-fun DafnyAST.BinOp.Add_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun SeqType () T@T)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun |#DafnyAST.Stmt.Skip| () T@U)
(declare-fun DafnyAST.InterpResult.InterpResult_q (T@U) Bool)
(declare-fun Tclass.DafnyAST.InterpResult () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DafnyAST.BinOp.Sub_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Op_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Skip_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Print_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Assign_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Seq_q (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun DafnyAST.__default.interpStmt_k (T@U T@U T@U) T@U)
(declare-fun |DafnyAST.__default.interpStmt_k#canCall| (T@U T@U) Bool)
(declare-fun DafnyAST.Stmt.e (T@U) T@U)
(declare-fun DafnyAST.Stmt.s2 (T@U) T@U)
(declare-fun DafnyAST.Stmt.s1 (T@U) T@U)
(declare-fun DafnyAST.InterpResult.ctx (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DafnyAST.Stmt.v (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun DafnyAST.InterpResult.output (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun |#DafnyAST.Stmt.Print| (T@U) T@U)
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
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.DafnyAST.Expr Tagclass.DafnyAST.BinOp Tagclass.DafnyAST.Stmt Tagclass.DafnyAST.InterpResult |##DafnyAST.BinOp.Add| |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |##DafnyAST.Stmt.Skip| |##DafnyAST.Stmt.Print| |##DafnyAST.Stmt.Assign| |##DafnyAST.Stmt.Seq| |##DafnyAST.InterpResult.InterpResult| |tytagFamily$_tuple#2| tytagFamily$Expr tytagFamily$BinOp tytagFamily$Stmt tytagFamily$InterpResult)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#51#1#0| Tclass.DafnyAST.Stmt)))
 :qid |Compilerdfy.38:11|
 :skolemid |716|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#45#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#45#0#0| i))) (DtRank (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))))
 :qid |Compilerdfy.37:14|
 :skolemid |708|
 :pattern ( (|Seq#Index| |a#45#0#0| i) (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#65#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#65#1#0| i@@0))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |744|
 :pattern ( (|Seq#Index| |a#65#1#0| i@@0) (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr)  (and (and ($Is DatatypeTypeType |a#22#0#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |a#22#1#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType |a#22#2#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.29:10|
 :skolemid |670|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#18#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#18#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#18#0#0| i@@1))) (DtRank (|#DafnyAST.Expr.Var| |a#18#0#0|))))
 :qid |Compilerdfy.28:11|
 :skolemid |664|
 :pattern ( (|Seq#Index| |a#18#0#0| i@@1) (|#DafnyAST.Expr.Var| |a#18#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |##DafnyAST.Expr.Op|)
 :qid |Compilerdfy.29:10|
 :skolemid |666|
 :pattern ( (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) ) (! (= (DafnyAST.Expr.op (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|)) |a#24#0#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |675|
 :pattern ( (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (DafnyAST.Expr.e1 (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#1#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |677|
 :pattern ( (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ) (! (= (DafnyAST.Expr.e2 (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |679|
 :pattern ( (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert  (and (and (and (and (and (= (Ctor MapType) 4) (= (Ctor SeqType) 5)) (= (Ctor SetType) 6)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|e#0| T@U) (|ctx#0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| (Lit DatatypeTypeType |e#0|) (Lit MapType |ctx#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |e#0| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0|))))))) (let ((|e2#6| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0|)))))
(let ((|e1#6| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#6| (Lit MapType |ctx#0|)) (|DafnyAST.__default.interpExpr#canCall| |e2#6| (Lit MapType |ctx#0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0|)))))))) (let ((|e2#7| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0|)))))
(let ((|e1#7| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#7| (Lit MapType |ctx#0|)) (|DafnyAST.__default.interpExpr#canCall| |e2#7| (Lit MapType |ctx#0|))))))))) (= (DafnyAST.__default.interpExpr ($LS $ly) (Lit DatatypeTypeType |e#0|) (Lit MapType |ctx#0|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0|)) (let ((|n#2| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0|)))))
|n#2|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0|)) (let ((|v#2| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0|))) ($Box SeqType |v#2|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0|)) ($Box SeqType |v#2|)))) 0)) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0|)))) (let ((|e2#4| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0|)))))
(let ((|e1#4| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0|)))))
(LitInt (+ (DafnyAST.__default.interpExpr ($LS $ly) |e1#4| (Lit MapType |ctx#0|)) (DafnyAST.__default.interpExpr ($LS $ly) |e2#4| (Lit MapType |ctx#0|)))))) (let ((|e2#5| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0|)))))
(let ((|e1#5| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0|)))))
(LitInt (- (DafnyAST.__default.interpExpr ($LS $ly) |e1#5| (Lit MapType |ctx#0|)) (DafnyAST.__default.interpExpr ($LS $ly) |e2#5| (Lit MapType |ctx#0|))))))))))))
 :qid |Compilerdfy.44:12|
 :weight 3
 :skolemid |615|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly) (Lit DatatypeTypeType |e#0|) (Lit MapType |ctx#0|)))
))))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#DafnyAST.Stmt.Skip|) |##DafnyAST.Stmt.Skip|))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.DafnyAST.InterpResult) (DafnyAST.InterpResult.InterpResult_q d@@0))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Add| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Sub| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.Stmt.Skip| Tclass.DafnyAST.Stmt))
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
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
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
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (DafnyAST.BinOp.Add_q d@@2) (= (DatatypeCtorId d@@2) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (DafnyAST.BinOp.Add_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@3) (= (DatatypeCtorId d@@3) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@4) (= (DatatypeCtorId d@@4) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( (DafnyAST.Expr.Const_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@5) (= (DatatypeCtorId d@@5) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( (DafnyAST.Expr.Var_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@6) (= (DatatypeCtorId d@@6) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (DafnyAST.Expr.Op_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (DafnyAST.Stmt.Skip_q d@@7) (= (DatatypeCtorId d@@7) |##DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (DafnyAST.Stmt.Print_q d@@8) (= (DatatypeCtorId d@@8) |##DafnyAST.Stmt.Print|))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( (DafnyAST.Stmt.Print_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (DafnyAST.Stmt.Assign_q d@@9) (= (DatatypeCtorId d@@9) |##DafnyAST.Stmt.Assign|))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (DafnyAST.Stmt.Seq_q d@@10) (= (DatatypeCtorId d@@10) |##DafnyAST.Stmt.Seq|))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (DafnyAST.InterpResult.InterpResult_q d@@11) (= (DatatypeCtorId d@@11) |##DafnyAST.InterpResult.InterpResult|))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@11))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@12) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@12 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |668|
)))
 :qid |unknown.0:0|
 :skolemid |669|
 :pattern ( (DafnyAST.Expr.Op_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@13) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@13 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (DafnyAST.Stmt.Assign_q d@@14) (exists ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (= d@@14 (|#DafnyAST.Stmt.Assign| |a#41#0#0| |a#41#1#0|))
 :qid |Compilerdfy.37:14|
 :skolemid |701|
)))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (DafnyAST.Stmt.Seq_q d@@15) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@15 (|#DafnyAST.Stmt.Seq| |a#50#0#0| |a#50#1#0|))
 :qid |Compilerdfy.38:11|
 :skolemid |714|
)))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (DafnyAST.InterpResult.InterpResult_q d@@16) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@16 (|#DafnyAST.InterpResult.InterpResult| |a#58#0#0| |a#58#1#0|))
 :qid |Compilerdfy.55:40|
 :skolemid |734|
)))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@17) (= d@@17 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( (DafnyAST.BinOp.Add_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@18) (= d@@18 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (DafnyAST.Stmt.Skip_q d@@19) (= d@@19 |#DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@19))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0| |ctx#0@@0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt))))) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0|)) (and (=> (DafnyAST.Stmt.Print_q |s#0|) (let ((|e#2| (DafnyAST.Stmt.e |s#0|)))
(|DafnyAST.__default.interpExpr#canCall| |e#2| |ctx#0@@0|))) (=> (not (DafnyAST.Stmt.Print_q |s#0|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0|) (let ((|e#3| (DafnyAST.Stmt.e |s#0|)))
(|DafnyAST.__default.interpExpr#canCall| |e#3| |ctx#0@@0|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0|)) (let ((|s2#1| (DafnyAST.Stmt.s2 |s#0|)))
(let ((|s1#1| (DafnyAST.Stmt.s1 |s#0|)))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#1| |ctx#0@@0|) (let ((|ctx1#1| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@0 |s1#1| |ctx#0@@0|))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#1| |ctx1#1|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@0) |s#0| |ctx#0@@0|) (ite (DafnyAST.Stmt.Skip_q |s#0|) (|#DafnyAST.InterpResult.InterpResult| |ctx#0@@0| (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q |s#0|) (let ((|e#0@@0| (DafnyAST.Stmt.e |s#0|)))
(|#DafnyAST.InterpResult.InterpResult| |ctx#0@@0| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#0@@0| |ctx#0@@0|)))))) (ite (DafnyAST.Stmt.Assign_q |s#0|) (let ((|e#1| (DafnyAST.Stmt.e |s#0|)))
(let ((|v#0| (DafnyAST.Stmt.v |s#0|)))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| |ctx#0@@0| ($Box SeqType |v#0|) ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#1| |ctx#0@@0|)))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#0| (DafnyAST.Stmt.s2 |s#0|)))
(let ((|s1#0| (DafnyAST.Stmt.s1 |s#0|)))
(let ((|o1#0| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@0 |s1#0| |ctx#0@@0|))))
(let ((|ctx1#0| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@0 |s1#0| |ctx#0@@0|))))
(let ((|o2#0| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@0 |s2#0| |ctx1#0|))))
(let ((|ctx2#0| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@0 |s2#0| |ctx1#0|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#0| (|Seq#Append| |o1#0| |o2#0|))))))))))))))
 :qid |Compilerdfy.57:12|
 :skolemid |627|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@0) |s#0| |ctx#0@@0|))
))))
(assert (forall ((d@@20 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@20) (exists ((|a#9#0#0| Int) ) (! (= d@@20 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |650|
)))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (DafnyAST.Expr.Const_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@21) (exists ((|a#14#0#0| T@U) ) (! (= d@@21 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |658|
)))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( (DafnyAST.Expr.Var_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (DafnyAST.Stmt.Print_q d@@22) (exists ((|a#35#0#0| T@U) ) (! (= d@@22 (|#DafnyAST.Stmt.Print| |a#35#0#0|))
 :qid |Compilerdfy.36:13|
 :skolemid |692|
)))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( (DafnyAST.Stmt.Print_q d@@22))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult)  (and ($Is MapType |a#59#0#0| (TMap (TSeq TChar) TInt)) ($Is SeqType |a#59#1#0| (TSeq TInt))))
 :qid |Compilerdfy.55:40|
 :skolemid |736|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (bx@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@1) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#63#0#0|) bx@@1))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |742|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@1) (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsBox bx@@2 Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsBox bx@@3 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.DafnyAST.Stmt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.DafnyAST.Stmt)))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( ($IsBox bx@@4 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.DafnyAST.InterpResult) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.DafnyAST.InterpResult)))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($IsBox bx@@5 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#36#0#0| Tclass.DafnyAST.Expr))
 :qid |Compilerdfy.36:13|
 :skolemid |694|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) (v@@2 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2) v@@2)) (=> (or (not (= i@@2 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2) (|Seq#Index| s@@1 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@0| T@U) (|ctx#0@@1| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@0| |ctx#0@@1|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@1| (TMap (TSeq TChar) TInt))))) ($Is DatatypeTypeType (DafnyAST.__default.interpStmt_k $ly@@1 |s#0@@0| |ctx#0@@1|) Tclass.DafnyAST.InterpResult))
 :qid |Compilerdfy.57:12|
 :skolemid |625|
 :pattern ( (DafnyAST.__default.interpStmt_k $ly@@1 |s#0@@0| |ctx#0@@1|))
))))
(assert (forall (($ly@@2 T@U) (|e#0@@1| T@U) (|ctx#0@@2| T@U) ) (! (= (DafnyAST.__default.interpExpr ($LS $ly@@2) |e#0@@1| |ctx#0@@2|) (DafnyAST.__default.interpExpr $ly@@2 |e#0@@1| |ctx#0@@2|))
 :qid |Compilerdfy.44:12|
 :skolemid |609|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@2) |e#0@@1| |ctx#0@@2|))
)))
(assert (forall (($ly@@3 T@U) (|s#0@@1| T@U) (|ctx#0@@3| T@U) ) (! (= (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s#0@@1| |ctx#0@@3|) (DafnyAST.__default.interpStmt_k $ly@@3 |s#0@@1| |ctx#0@@3|))
 :qid |Compilerdfy.57:12|
 :skolemid |621|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s#0@@1| |ctx#0@@3|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|e#0@@2| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| |e#0@@2| |ctx#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |e#0@@2| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt))))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@2|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@2|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|)) (let ((|e2#2| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#2| (DafnyAST.Expr.e1 |e#0@@2|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#2| |ctx#0@@4|) (|DafnyAST.__default.interpExpr#canCall| |e2#2| |ctx#0@@4|))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|))) (let ((|e2#3| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#3| (DafnyAST.Expr.e1 |e#0@@2|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#3| |ctx#0@@4|) (|DafnyAST.__default.interpExpr#canCall| |e2#3| |ctx#0@@4|)))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@4) |e#0@@2| |ctx#0@@4|) (ite (DafnyAST.Expr.Const_q |e#0@@2|) (let ((|n#0| (DafnyAST.Expr.n |e#0@@2|)))
|n#0|) (ite (DafnyAST.Expr.Var_q |e#0@@2|) (let ((|v#0@@0| (DafnyAST.Expr.v |e#0@@2|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@4|) ($Box SeqType |v#0@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@4|) ($Box SeqType |v#0@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|)) (let ((|e2#0| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#0| (DafnyAST.Expr.e1 |e#0@@2|)))
(+ (DafnyAST.__default.interpExpr $ly@@4 |e1#0| |ctx#0@@4|) (DafnyAST.__default.interpExpr $ly@@4 |e2#0| |ctx#0@@4|)))) (let ((|e2#1| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#1| (DafnyAST.Expr.e1 |e#0@@2|)))
(- (DafnyAST.__default.interpExpr $ly@@4 |e1#1| |ctx#0@@4|) (DafnyAST.__default.interpExpr $ly@@4 |e2#1| |ctx#0@@4|))))))))))
 :qid |Compilerdfy.44:12|
 :skolemid |614|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@4) |e#0@@2| |ctx#0@@4|))
))))
(assert (forall ((d@@23 T@U) ) (!  (=> ($Is DatatypeTypeType d@@23 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@23) (DafnyAST.BinOp.Sub_q d@@23)))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@2 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@2 u)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@2 u))
)))
(assert (forall ((t@@3 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@3 u@@0))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@4 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@4 u@@1))
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
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Assign| |a#40#0#0| |a#40#1#0|)) |##DafnyAST.Stmt.Assign|)
 :qid |Compilerdfy.37:14|
 :skolemid |699|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= (DafnyAST.Stmt.v (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|)) |a#44#0#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |707|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |710|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|)) |##DafnyAST.Stmt.Seq|)
 :qid |Compilerdfy.38:11|
 :skolemid |712|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (DafnyAST.Stmt.s1 (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|)) |a#53#0#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |720|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (DafnyAST.Stmt.s2 (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|)) |a#55#1#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |722|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|)) |##DafnyAST.InterpResult.InterpResult|)
 :qid |Compilerdfy.55:40|
 :skolemid |732|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (DafnyAST.InterpResult.ctx (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|)) |a#61#0#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |740|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= (DafnyAST.InterpResult.output (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|)) |a#64#1#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |743|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@3) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |674|
 :pattern ( (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Const| |a#8#0#0|)) |##DafnyAST.Expr.Const|)
 :qid |Compilerdfy.27:13|
 :skolemid |648|
 :pattern ( (|#DafnyAST.Expr.Const| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DafnyAST.Expr.n (|#DafnyAST.Expr.Const| |a#12#0#0|)) |a#12#0#0|)
 :qid |Compilerdfy.27:13|
 :skolemid |655|
 :pattern ( (|#DafnyAST.Expr.Const| |a#12#0#0|))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Var| |a#13#0#0|)) |##DafnyAST.Expr.Var|)
 :qid |Compilerdfy.28:11|
 :skolemid |656|
 :pattern ( (|#DafnyAST.Expr.Var| |a#13#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DafnyAST.Expr.v (|#DafnyAST.Expr.Var| |a#17#0#0|)) |a#17#0#0|)
 :qid |Compilerdfy.28:11|
 :skolemid |663|
 :pattern ( (|#DafnyAST.Expr.Var| |a#17#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Print| |a#34#0#0|)) |##DafnyAST.Stmt.Print|)
 :qid |Compilerdfy.36:13|
 :skolemid |690|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Print| |a#38#0#0|)) |a#38#0#0|)
 :qid |Compilerdfy.36:13|
 :skolemid |697|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#38#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@9) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@9) t1@@0 h@@2) ($IsAllocBox bx@@9 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@9))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#DafnyAST.Expr.Op| |a#25#0#0| |a#25#1#0| |a#25#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |676|
 :pattern ( (|#DafnyAST.Expr.Op| |a#25#0#0| |a#25#1#0| |a#25#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (< (DtRank |a#27#1#0|) (DtRank (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |678|
 :pattern ( (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (< (DtRank |a#29#2#0|) (DtRank (|#DafnyAST.Expr.Op| |a#29#0#0| |a#29#1#0| |a#29#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |680|
 :pattern ( (|#DafnyAST.Expr.Op| |a#29#0#0| |a#29#1#0| |a#29#2#0|))
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
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (< (|Seq#Rank| |a#46#0#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |709|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#1#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |711|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#0#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |721|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#1#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |723|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (< (|Seq#Rank| |a#66#1#0|) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |745|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|s#0@@2| T@U) (|ctx#0@@5| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0@@2|) (Lit MapType |ctx#0@@5|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@2| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|))))) (let ((|e#6| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#6| (Lit MapType |ctx#0@@5|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|))))) (let ((|e#7| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#7| (Lit MapType |ctx#0@@5|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|)))))) (let ((|s2#3| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|s1#3| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@2|)))))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#3| (Lit MapType |ctx#0@@5|)) (let ((|ctx1#3| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@5) |s1#3| (Lit MapType |ctx#0@@5|)))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#3| |ctx1#3|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@5) (Lit DatatypeTypeType |s#0@@2|) (Lit MapType |ctx#0@@5|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@2|)) (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0@@5|) (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|)) (let ((|e#4| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0@@5|) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#4| (Lit MapType |ctx#0@@5|)))))))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|)) (let ((|e#5| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|v#2@@0| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0@@2|)))))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| (Lit MapType |ctx#0@@5|) ($Box SeqType |v#2@@0|) ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#5| (Lit MapType |ctx#0@@5|)))))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#2| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|s1#2| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|o1#2| (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@5) |s1#2| (Lit MapType |ctx#0@@5|))))))
(let ((|ctx1#2| (DafnyAST.InterpResult.ctx (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@5) |s1#2| (Lit MapType |ctx#0@@5|))))))
(let ((|o2#2| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $ly@@5) |s2#2| |ctx1#2|))))
(let ((|ctx2#2| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@5) |s2#2| |ctx1#2|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#2| (|Seq#Append| |o1#2| |o2#2|))))))))))))))
 :qid |Compilerdfy.57:12|
 :weight 3
 :skolemid |628|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@5) (Lit DatatypeTypeType |s#0@@2|) (Lit MapType |ctx#0@@5|)))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#10#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0|) Tclass.DafnyAST.Expr) ($Is intType (int_2_U |a#10#0#0|) TInt))
 :qid |Compilerdfy.27:13|
 :skolemid |652|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@10 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@10 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |665|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0|))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (< (DtRank |a#39#0#0|) (DtRank (|#DafnyAST.Stmt.Print| |a#39#0#0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |698|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#39#0#0|))
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
 :skolemid |9865|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@24 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (DafnyAST.Expr.Const_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.DafnyAST.Expr $h@@0))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@24)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@24)) TInt $h@@0))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> ($Is DatatypeTypeType d@@25 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@25) (DafnyAST.Expr.Var_q d@@25)) (DafnyAST.Expr.Op_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (DafnyAST.Expr.Op_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.DafnyAST.Expr))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@7)
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
(assert (forall ((m@@7 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@8) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@8))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@9 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) v@@9))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|))
)))
(assert (forall ((d@@26 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@26)) (DtRank d@@26))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@26)))
)))
(assert (forall ((bx@@12 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@10)))
)))
(assert (forall ((bx@@13 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@13 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@13)) bx@@13) ($Is SeqType ($Unbox SeqType bx@@13) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@13 (TSeq t@@11)))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@5 t1@@2)) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@14) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@14) t1@@2) ($IsBox bx@@14 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@14))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@14))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@27 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@27 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@27 Tclass.DafnyAST.BinOp $h@@1))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass.DafnyAST.BinOp $h@@1))
)))
(assert (forall ((d@@28 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@28 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@28 Tclass.DafnyAST.Expr $h@@2))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass.DafnyAST.Expr $h@@2))
)))
(assert (forall ((d@@29 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@29 Tclass.DafnyAST.Stmt)) ($IsAlloc DatatypeTypeType d@@29 Tclass.DafnyAST.Stmt $h@@3))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 Tclass.DafnyAST.Stmt $h@@3))
)))
(assert (forall ((d@@30 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@30 Tclass.DafnyAST.InterpResult)) ($IsAlloc DatatypeTypeType d@@30 Tclass.DafnyAST.InterpResult $h@@4))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( ($IsAlloc DatatypeTypeType d@@30 Tclass.DafnyAST.InterpResult $h@@4))
)))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.DafnyAST.Stmt) Tagclass.DafnyAST.Stmt))
(assert (= (TagFamily Tclass.DafnyAST.Stmt) tytagFamily$Stmt))
(assert (= (Tag Tclass.DafnyAST.InterpResult) Tagclass.DafnyAST.InterpResult))
(assert (= (TagFamily Tclass.DafnyAST.InterpResult) tytagFamily$InterpResult))
(assert (= |#DafnyAST.BinOp.Add| (Lit DatatypeTypeType |#DafnyAST.BinOp.Add|)))
(assert (= |#DafnyAST.BinOp.Sub| (Lit DatatypeTypeType |#DafnyAST.BinOp.Sub|)))
(assert (= |#DafnyAST.Stmt.Skip| (Lit DatatypeTypeType |#DafnyAST.Stmt.Skip|)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr) ($Is SeqType |a#15#0#0| (TSeq TChar)))
 :qid |Compilerdfy.28:11|
 :skolemid |660|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((d@@31 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (DafnyAST.Expr.Var_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.DafnyAST.Expr $h@@5))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@31) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@31) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@32 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (DafnyAST.Stmt.Assign_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass.DafnyAST.Stmt $h@@6))) ($IsAlloc SeqType (DafnyAST.Stmt.v d@@32) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Stmt.v d@@32) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@33 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (DafnyAST.InterpResult.InterpResult_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass.DafnyAST.InterpResult $h@@7))) ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@33) (TSeq TInt) $h@@7))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@33) (TSeq TInt) $h@@7))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (d@@34 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@34)) (< (DtRank d@@34) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |741|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@34)) (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((d@@35 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (DafnyAST.InterpResult.InterpResult_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass.DafnyAST.InterpResult $h@@8))) ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@35) (TMap (TSeq TChar) TInt) $h@@8))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@35) (TMap (TSeq TChar) TInt) $h@@8))
)))
(assert (forall ((d@@36 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@36) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@36 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@36 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@36) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@36) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@37 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@37) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@37) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@37) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((d@@38 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (DafnyAST.Expr.Op_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.DafnyAST.Expr $h@@11))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@38) Tclass.DafnyAST.BinOp $h@@11))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@38) Tclass.DafnyAST.BinOp $h@@11))
)))
(assert (forall ((d@@39 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (DafnyAST.Expr.Op_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass.DafnyAST.Expr $h@@12))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@39) Tclass.DafnyAST.Expr $h@@12))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@39) Tclass.DafnyAST.Expr $h@@12))
)))
(assert (forall ((d@@40 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (DafnyAST.Expr.Op_q d@@40) ($IsAlloc DatatypeTypeType d@@40 Tclass.DafnyAST.Expr $h@@13))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@40) Tclass.DafnyAST.Expr $h@@13))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@40) Tclass.DafnyAST.Expr $h@@13))
)))
(assert (forall ((d@@41 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (DafnyAST.Stmt.Print_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.DafnyAST.Stmt $h@@14))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@41) Tclass.DafnyAST.Expr $h@@14))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@41) Tclass.DafnyAST.Expr $h@@14))
)))
(assert (forall ((d@@42 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (DafnyAST.Stmt.Assign_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.DafnyAST.Stmt $h@@15))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@42) Tclass.DafnyAST.Expr $h@@15))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@42) Tclass.DafnyAST.Expr $h@@15))
)))
(assert (forall ((d@@43 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (DafnyAST.Stmt.Seq_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass.DafnyAST.Stmt $h@@16))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@43) Tclass.DafnyAST.Stmt $h@@16))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@43) Tclass.DafnyAST.Stmt $h@@16))
)))
(assert (forall ((d@@44 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (DafnyAST.Stmt.Seq_q d@@44) ($IsAlloc DatatypeTypeType d@@44 Tclass.DafnyAST.Stmt $h@@17))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@44) Tclass.DafnyAST.Stmt $h@@17))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@44) Tclass.DafnyAST.Stmt $h@@17))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#43#0#0| |a#43#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |706|
 :pattern ( (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#52#0#0| |a#52#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |719|
 :pattern ( (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#60#0#0| |a#60#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |739|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0| Int) ) (! (= (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| |a#11#0#0|)))
 :qid |Compilerdfy.27:13|
 :skolemid |654|
 :pattern ( (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0|)))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Var| |a#16#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |662|
 :pattern ( (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#37#0#0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |696|
 :pattern ( (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> ($Is DatatypeTypeType d@@45 Tclass.DafnyAST.Stmt) (or (or (or (DafnyAST.Stmt.Skip_q d@@45) (DafnyAST.Stmt.Print_q d@@45)) (DafnyAST.Stmt.Assign_q d@@45)) (DafnyAST.Stmt.Seq_q d@@45)))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@45) ($Is DatatypeTypeType d@@45 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Assign_q d@@45) ($Is DatatypeTypeType d@@45 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Print_q d@@45) ($Is DatatypeTypeType d@@45 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Skip_q d@@45) ($Is DatatypeTypeType d@@45 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((h@@3 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@12 T@U) ) (! ($IsAlloc charType v@@12 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@12 TChar h@@4))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@13 (TSeq t0@@6)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@13))) ($IsBox (|Seq#Index| v@@13 i@@4) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@13 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@13 (TSeq t0@@6)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@14 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@14)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@6 T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@5))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@5))))
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
(assert (forall ((v@@17 T@U) ) (! ($Is charType v@@17 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@17 TChar))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0| |a#42#1#0|) Tclass.DafnyAST.Stmt)  (and ($Is SeqType |a#42#0#0| (TSeq TChar)) ($Is DatatypeTypeType |a#42#1#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.37:14|
 :skolemid |703|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0| |a#42#1#0|) Tclass.DafnyAST.Stmt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@3| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |s2#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |s1#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |ctx#0@@6| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |ctx1#Z#0@0| () T@U)
(declare-fun |o1#Z#0@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$DafnyAST.__default.interpStmt_k)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon14_Else_correct true))
(let ((anon14_Then_correct  (=> (= |s#0@@3| (|#DafnyAST.Stmt.Seq| |_mcc#3#0| |_mcc#4#0|)) (=> (and ($Is DatatypeTypeType |_mcc#3#0| Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |_mcc#4#0| Tclass.DafnyAST.Stmt)) (=> (and (and (and (= |let#0#0#0| |_mcc#4#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.DafnyAST.Stmt)) (and (= |s2#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#3#0|))) (and (and ($Is DatatypeTypeType |let#1#0#0| Tclass.DafnyAST.Stmt) (= |s1#Z#0@0| |let#1#0#0|)) (and ($IsAlloc DatatypeTypeType |s1#Z#0@0| Tclass.DafnyAST.Stmt $Heap) ($IsAlloc MapType |ctx#0@@6| (TMap (TSeq TChar) TInt) $Heap)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (< (DtRank |s1#Z#0@0|) (DtRank |s#0@@3|)) (and (= (DtRank |s1#Z#0@0|) (DtRank |s#0@@3|)) (and (|Set#Subset| (|Map#Domain| |ctx#0@@6|) (|Map#Domain| |ctx#0@@6|)) (not (|Set#Subset| (|Map#Domain| |ctx#0@@6|) (|Map#Domain| |ctx#0@@6|))))))) (=> (or (< (DtRank |s1#Z#0@0|) (DtRank |s#0@@3|)) (and (= (DtRank |s1#Z#0@0|) (DtRank |s#0@@3|)) (and (|Set#Subset| (|Map#Domain| |ctx#0@@6|) (|Map#Domain| |ctx#0@@6|)) (not (|Set#Subset| (|Map#Domain| |ctx#0@@6|) (|Map#Domain| |ctx#0@@6|)))))) (=> (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#Z#0@0| |ctx#0@@6|) (DafnyAST.InterpResult.InterpResult_q (DafnyAST.__default.interpStmt_k ($LS $LZ) |s1#Z#0@0| |ctx#0@@6|))) (=> (and (and (and (= |let#2#0#0| (DafnyAST.__default.interpStmt_k ($LS $LZ) |s1#Z#0@0| |ctx#0@@6|)) (|DafnyAST.__default.interpStmt_k#canCall| |s1#Z#0@0| |ctx#0@@6|)) (and ($Is DatatypeTypeType |let#2#0#0| Tclass.DafnyAST.InterpResult) (DafnyAST.InterpResult.InterpResult_q |let#2#0#0|))) (and (and (= (|#DafnyAST.InterpResult.InterpResult| |ctx1#Z#0@0| |o1#Z#0@0|) |let#2#0#0|) ($IsAlloc DatatypeTypeType |s2#Z#0@0| Tclass.DafnyAST.Stmt $Heap)) (and ($IsAlloc MapType |ctx1#Z#0@0| (TMap (TSeq TChar) TInt) $Heap) (= (ControlFlow 0 6) (- 0 5))))) (or (< (DtRank |s2#Z#0@0|) (DtRank |s#0@@3|)) (and (= (DtRank |s2#Z#0@0|) (DtRank |s#0@@3|)) (and (|Set#Subset| (|Map#Domain| |ctx1#Z#0@0|) (|Map#Domain| |ctx#0@@6|)) (not (|Set#Subset| (|Map#Domain| |ctx#0@@6|) (|Map#Domain| |ctx1#Z#0@0|)))))))))))))))
(let ((anon13_Else_correct  (=> (or (not (= |s#0@@3| (|#DafnyAST.Stmt.Assign| |_mcc#1#0| |_mcc#2#0|))) (not true)) (and (=> (= (ControlFlow 0 9) 6) anon14_Then_correct) (=> (= (ControlFlow 0 9) 8) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |s#0@@3| (|#DafnyAST.Stmt.Print| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 10) 4) anon13_Then_correct) (=> (= (ControlFlow 0 10) 9) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |s#0@@3| |#DafnyAST.Stmt.Skip|)) (not true)) (and (=> (= (ControlFlow 0 11) 3) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon10_Then_correct) (=> (= (ControlFlow 0 12) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |s#0@@3| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@6| (TMap (TSeq TChar) TInt))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
