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
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass.DafnyAST.Expr () T@U)
(declare-fun Tagclass.DafnyAST.BinOp () T@U)
(declare-fun |##DafnyAST.BinOp.Add| () T@U)
(declare-fun |##DafnyAST.BinOp.Sub| () T@U)
(declare-fun |##DafnyAST.Expr.Const| () T@U)
(declare-fun |##DafnyAST.Expr.Var| () T@U)
(declare-fun |##DafnyAST.Expr.Op| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$Expr () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun |DafnyAST.Expr#Equal| (T@U T@U) Bool)
(declare-fun DafnyAST.Expr.Const_q (T@U) Bool)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun DafnyAST.Expr.Op_q (T@U) Bool)
(declare-fun |DafnyAST.BinOp#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Rewriter.__default.simplifyExpr (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Rewriter.__default.simplifyExpr#canCall| (T@U) Bool)
(declare-fun DafnyAST.Expr.Var_q (T@U) Bool)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun DafnyAST.BinOp.Add_q (T@U) Bool)
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DafnyAST.BinOp.Sub_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun DafnyAST.__default.interpExpr (T@U T@U T@U) Int)
(declare-fun MapType () T@T)
(declare-fun |DafnyAST.__default.interpExpr#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
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
(declare-fun $LZ () T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 Tagclass.DafnyAST.Expr Tagclass.DafnyAST.BinOp |##DafnyAST.BinOp.Add| |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |tytagFamily$_tuple#2| |tytagFamily$_tuple#3| tytagFamily$Expr tytagFamily$BinOp)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr)  (and (and ($Is DatatypeTypeType |a#22#0#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |a#22#1#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType |a#22#2#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.29:10|
 :skolemid |1438|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (DafnyAST.Expr.Const_q a) (DafnyAST.Expr.Const_q b)) (= (|DafnyAST.Expr#Equal| a b) (= (DafnyAST.Expr.n a) (DafnyAST.Expr.n b))))
 :qid |unknown.0:0|
 :skolemid |1452|
 :pattern ( (|DafnyAST.Expr#Equal| a b) (DafnyAST.Expr.Const_q a))
 :pattern ( (|DafnyAST.Expr#Equal| a b) (DafnyAST.Expr.Const_q b))
)))
(assert (forall ((|a#18#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#18#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#18#0#0| i))) (DtRank (|#DafnyAST.Expr.Var| |a#18#0#0|))))
 :qid |Compilerdfy.28:11|
 :skolemid |1432|
 :pattern ( (|Seq#Index| |a#18#0#0| i) (|#DafnyAST.Expr.Var| |a#18#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |1284|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |1285|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0@@0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0@@0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |1299|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0@@0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#20#0#0@@0| T@U) (|a#20#1#0@@0| T@U) (|a#20#2#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Op| |a#20#0#0@@0| |a#20#1#0@@0| |a#20#2#0@@0|)) |##DafnyAST.Expr.Op|)
 :qid |Compilerdfy.29:10|
 :skolemid |1434|
 :pattern ( (|#DafnyAST.Expr.Op| |a#20#0#0@@0| |a#20#1#0@@0| |a#20#2#0@@0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) ) (! (= (DafnyAST.Expr.op (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|)) |a#24#0#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |1443|
 :pattern ( (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (DafnyAST.Expr.e1 (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#1#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |1445|
 :pattern ( (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ) (! (= (DafnyAST.Expr.e2 (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |1447|
 :pattern ( (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1219|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |1283|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1207|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Add| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Sub| Tclass.DafnyAST.BinOp))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (DafnyAST.Expr.Op_q a@@0) (DafnyAST.Expr.Op_q b@@0)) (= (|DafnyAST.Expr#Equal| a@@0 b@@0)  (and (and (|DafnyAST.BinOp#Equal| (DafnyAST.Expr.op a@@0) (DafnyAST.Expr.op b@@0)) (|DafnyAST.Expr#Equal| (DafnyAST.Expr.e1 a@@0) (DafnyAST.Expr.e1 b@@0))) (|DafnyAST.Expr#Equal| (DafnyAST.Expr.e2 a@@0) (DafnyAST.Expr.e2 b@@0)))))
 :qid |unknown.0:0|
 :skolemid |1454|
 :pattern ( (|DafnyAST.Expr#Equal| a@@0 b@@0) (DafnyAST.Expr.Op_q a@@0))
 :pattern ( (|DafnyAST.Expr#Equal| a@@0 b@@0) (DafnyAST.Expr.Op_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|DafnyAST.BinOp#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1415|
 :pattern ( (|DafnyAST.BinOp#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|DafnyAST.Expr#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( (|DafnyAST.Expr#Equal| a@@2 b@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |768|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |766|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|e#0| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| |e#0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0| Tclass.DafnyAST.Expr))) (and (=> (not (DafnyAST.Expr.Const_q |e#0|)) (=> (not (DafnyAST.Expr.Var_q |e#0|)) (let ((|e2#25| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#28| (DafnyAST.Expr.e1 |e#0|)))
(let ((|op#1| (DafnyAST.Expr.op |e#0|)))
 (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))))))) (=> (not (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#28|) (|Rewriter.__default.simplifyExpr#canCall| |e2#25|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#1|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#28|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#25|))))))))))))))))))))) (= (Rewriter.__default.simplifyExpr ($LS $ly) |e#0|) (ite (DafnyAST.Expr.Const_q |e#0|) |e#0| (ite (DafnyAST.Expr.Var_q |e#0|) |e#0| (let ((|e2#0| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#0| (DafnyAST.Expr.e1 |e#0|)))
(let ((|op#0| (DafnyAST.Expr.op |e#0|)))
(ite (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#1| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e2#1|)) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#2| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e2#2|) (let ((|e2#3| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e2#3|))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#1| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#1|) (let ((|e2#4| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#2| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#2| |e2#4|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#5| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#3| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#3| |e2#5|))) (let ((|e2#6| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#4| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#4| |e2#6|)))))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#5| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#5|) (let ((|e2#7| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#6| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#6| |e2#7|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#8| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#7| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#7| |e2#8|))) (let ((|e2#9| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#8| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#8| |e2#9|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#9| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#9|) (let ((|e2#10| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#10| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#10| |e2#10|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#11| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#11| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#11| |e2#11|))) (let ((|e2#12| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#12| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#12| |e2#12|))))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#13| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#13| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#13| |e2#13|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#14| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#14| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#14| |e2#14|))) (let ((|e2#15| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#15| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#15| |e2#15|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#16| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#16|) (let ((|e2#16| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#17| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#17| |e2#16|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#17| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#18| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#18| |e2#17|))) (let ((|e2#18| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#19| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#19| |e2#18|)))))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#20| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#20|) (let ((|e2#19| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#21| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#21| |e2#19|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#20| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#22| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#22| |e2#20|))) (let ((|e2#21| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#23| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#23| |e2#21|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (LitInt 0)) (let ((|e1#24| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
|e1#24|) (let ((|e2#22| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#25| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#25| |e2#22|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))) (let ((|e2#23| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#26| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#26| |e2#23|))) (let ((|e2#24| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(let ((|e1#27| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e1#0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly |e2#0|)))))))
(|#DafnyAST.Expr.Op| |op#0| |e1#27| |e2#24|))))))))))))))))
 :qid |Compilerdfy.84:12|
 :skolemid |1366|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly) |e#0|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |1208|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |1280|
 :pattern ( (_System.Tuple3.___hMake3_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (DafnyAST.BinOp.Add_q d@@2) (= (DatatypeCtorId d@@2) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1406|
 :pattern ( (DafnyAST.BinOp.Add_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@3) (= (DatatypeCtorId d@@3) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@4) (= (DatatypeCtorId d@@4) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |1417|
 :pattern ( (DafnyAST.Expr.Const_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@5) (= (DatatypeCtorId d@@5) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |1425|
 :pattern ( (DafnyAST.Expr.Var_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@6) (= (DatatypeCtorId d@@6) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( (DafnyAST.Expr.Op_q d@@6))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |990|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |991|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |777|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@7) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@7 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |1281|
)))
 :qid |unknown.0:0|
 :skolemid |1282|
 :pattern ( (_System.Tuple3.___hMake3_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@8) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@8 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |1436|
)))
 :qid |unknown.0:0|
 :skolemid |1437|
 :pattern ( (DafnyAST.Expr.Op_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@9) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@9 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1201|
)))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( (_System.Tuple2.___hMake2_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@10) (= d@@10 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( (DafnyAST.BinOp.Add_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@11) (= d@@11 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1409|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@11))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |797|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |798|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@12) (exists ((|a#9#0#0| Int) ) (! (= d@@12 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |1418|
)))
 :qid |unknown.0:0|
 :skolemid |1419|
 :pattern ( (DafnyAST.Expr.Const_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@13) (exists ((|a#14#0#0| T@U) ) (! (= d@@13 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |1426|
)))
 :qid |unknown.0:0|
 :skolemid |1427|
 :pattern ( (DafnyAST.Expr.Var_q d@@13))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0)  (and (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#3$T0@@4| $h@@0) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@0)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1289|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |790|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |1362|
 :pattern ( ($IsBox bx@@1 Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |1371|
 :pattern ( ($IsBox bx@@2 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@14))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( (_System.Tuple3.___hMake3_q d@@14) ($Is DatatypeTypeType d@@14 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (DafnyAST.Expr.Var_q a@@3) (DafnyAST.Expr.Var_q b@@3)) (= (|DafnyAST.Expr#Equal| a@@3 b@@3) (|Seq#Equal| (DafnyAST.Expr.v a@@3) (DafnyAST.Expr.v b@@3))))
 :qid |unknown.0:0|
 :skolemid |1453|
 :pattern ( (|DafnyAST.Expr#Equal| a@@3 b@@3) (DafnyAST.Expr.Var_q a@@3))
 :pattern ( (|DafnyAST.Expr#Equal| a@@3 b@@3) (DafnyAST.Expr.Var_q b@@3))
)))
(assert (forall (($ly@@0 T@U) (|e#0@@0| T@U) (|ctx#0| T@U) ) (! (= (DafnyAST.__default.interpExpr ($LS $ly@@0) |e#0@@0| |ctx#0|) (DafnyAST.__default.interpExpr $ly@@0 |e#0@@0| |ctx#0|))
 :qid |Compilerdfy.44:12|
 :skolemid |1389|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@0) |e#0@@0| |ctx#0|))
)))
(assert  (and (and (and (and (= (Ctor MapType) 5) (= (Ctor SeqType) 6)) (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall (($ly@@1 T@U) (|e#0@@1| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@0|)) (and ($Is DatatypeTypeType |e#0@@1| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|))))))) (let ((|e2#14@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#14@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#14@@0| (Lit MapType |ctx#0@@0|)) (|DafnyAST.__default.interpExpr#canCall| |e2#14@@0| (Lit MapType |ctx#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))))))) (let ((|e2#15@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#15@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#15@@0| (Lit MapType |ctx#0@@0|)) (|DafnyAST.__default.interpExpr#canCall| |e2#15@@0| (Lit MapType |ctx#0@@0|))))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@0|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)) (let ((|n#6| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@1|)))))
|n#6|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)) (let ((|v#6| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@1|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@0|))) ($Box SeqType |v#6|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@0|)) ($Box SeqType |v#6|)))) 0)) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))) (let ((|e2#12@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#12@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(LitInt (+ (DafnyAST.__default.interpExpr ($LS $ly@@1) |e1#12@@0| (Lit MapType |ctx#0@@0|)) (DafnyAST.__default.interpExpr ($LS $ly@@1) |e2#12@@0| (Lit MapType |ctx#0@@0|)))))) (let ((|e2#13@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#13@@0| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(LitInt (- (DafnyAST.__default.interpExpr ($LS $ly@@1) |e1#13@@0| (Lit MapType |ctx#0@@0|)) (DafnyAST.__default.interpExpr ($LS $ly@@1) |e2#13@@0| (Lit MapType |ctx#0@@0|))))))))))))
 :qid |Compilerdfy.44:12|
 :weight 3
 :skolemid |1394|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@0|)))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@1| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@1| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@1| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@1| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (|Seq#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |992|
 :pattern ( (|Seq#Equal| a@@4 b@@4))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@15) (DafnyAST.BinOp.Sub_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@15) ($Is DatatypeTypeType d@@15 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@15) ($Is DatatypeTypeType d@@15 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |778|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TChar) (and (= ($Box charType ($Unbox charType bx@@4)) bx@@4) ($Is charType ($Unbox charType bx@@4) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |781|
 :pattern ( ($IsBox bx@@4 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |789|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |972|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (DafnyAST.BinOp.Add_q a@@5) (DafnyAST.BinOp.Add_q b@@5)) (|DafnyAST.BinOp#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |1413|
 :pattern ( (|DafnyAST.BinOp#Equal| a@@5 b@@5) (DafnyAST.BinOp.Add_q a@@5))
 :pattern ( (|DafnyAST.BinOp#Equal| a@@5 b@@5) (DafnyAST.BinOp.Add_q b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (DafnyAST.BinOp.Sub_q a@@6) (DafnyAST.BinOp.Sub_q b@@6)) (|DafnyAST.BinOp#Equal| a@@6 b@@6))
 :qid |unknown.0:0|
 :skolemid |1414|
 :pattern ( (|DafnyAST.BinOp#Equal| a@@6 b@@6) (DafnyAST.BinOp.Sub_q a@@6))
 :pattern ( (|DafnyAST.BinOp#Equal| a@@6 b@@6) (DafnyAST.BinOp.Sub_q b@@6))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |818|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |819|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |760|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |761|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |762|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1216|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |824|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |825|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1296|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |1442|
 :pattern ( (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |752|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |753|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |758|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |759|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Const| |a#8#0#0|)) |##DafnyAST.Expr.Const|)
 :qid |Compilerdfy.27:13|
 :skolemid |1416|
 :pattern ( (|#DafnyAST.Expr.Const| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0@@0| Int) ) (! (= (DafnyAST.Expr.n (|#DafnyAST.Expr.Const| |a#12#0#0@@0|)) |a#12#0#0@@0|)
 :qid |Compilerdfy.27:13|
 :skolemid |1423|
 :pattern ( (|#DafnyAST.Expr.Const| |a#12#0#0@@0|))
)))
(assert (forall ((|a#13#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Var| |a#13#0#0@@0|)) |##DafnyAST.Expr.Var|)
 :qid |Compilerdfy.28:11|
 :skolemid |1424|
 :pattern ( (|#DafnyAST.Expr.Var| |a#13#0#0@@0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DafnyAST.Expr.v (|#DafnyAST.Expr.Var| |a#17#0#0|)) |a#17#0#0|)
 :qid |Compilerdfy.28:11|
 :skolemid |1431|
 :pattern ( (|#DafnyAST.Expr.Var| |a#17#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |776|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@6) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@6) t1@@0 h@@2) ($IsAllocBox bx@@6 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |826|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@6))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |827|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#17#0#0@@0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0@@0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0@@0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1298|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0@@0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1300|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0@@0| T@U) (|a#21#1#0@@0| T@U) (|a#21#2#0@@0| T@U) ) (! (< (BoxRank |a#21#2#0@@0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0@@0| |a#21#1#0@@0| |a#21#2#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0@@0| |a#21#1#0@@0| |a#21#2#0@@0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#DafnyAST.Expr.Op| |a#25#0#0| |a#25#1#0| |a#25#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |1444|
 :pattern ( (|#DafnyAST.Expr.Op| |a#25#0#0| |a#25#1#0| |a#25#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (< (DtRank |a#27#1#0|) (DtRank (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |1446|
 :pattern ( (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (< (DtRank |a#29#2#0|) (DtRank (|#DafnyAST.Expr.Op| |a#29#0#0| |a#29#1#0| |a#29#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |1448|
 :pattern ( (|#DafnyAST.Expr.Op| |a#29#0#0| |a#29#1#0| |a#29#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1215|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($ly@@2 T@U) (|e#0@@2| T@U) ) (! (= (Rewriter.__default.simplifyExpr ($LS $ly@@2) |e#0@@2|) (Rewriter.__default.simplifyExpr $ly@@2 |e#0@@2|))
 :qid |Compilerdfy.84:12|
 :skolemid |1360|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly@@2) |e#0@@2|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1036|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#10#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0|) Tclass.DafnyAST.Expr) ($Is intType (int_2_U |a#10#0#0|) TInt))
 :qid |Compilerdfy.27:13|
 :skolemid |1420|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@7 T@U) (s@@0 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TMap s@@0 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@7)) bx@@7) ($Is MapType ($Unbox MapType bx@@7) (TMap s@@0 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |787|
 :pattern ( ($IsBox bx@@7 (TMap s@@0 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1206|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#19#0#0@@0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0@@0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0@@0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |1433|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0@@0|))
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
 :skolemid |9868|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|e#0@@3| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| |e#0@@3|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@3| Tclass.DafnyAST.Expr))) (and (forall ((|ctx#0@@1| T@U) ) (!  (=> ($Is MapType |ctx#0@@1| (TMap (TSeq TChar) TInt)) (= (DafnyAST.__default.interpExpr ($LS $LZ) (Rewriter.__default.simplifyExpr $ly@@3 |e#0@@3|) |ctx#0@@1|) (DafnyAST.__default.interpExpr ($LS $LZ) |e#0@@3| |ctx#0@@1|)))
 :qid |Compilerdfy.85:20|
 :skolemid |1363|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $LZ) |e#0@@3| |ctx#0@@1|))
 :pattern ( (DafnyAST.__default.interpExpr ($LS $LZ) (Rewriter.__default.simplifyExpr $ly@@3 |e#0@@3|) |ctx#0@@1|))
)) ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@3 |e#0@@3|) Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.84:12|
 :skolemid |1364|
 :pattern ( (Rewriter.__default.simplifyExpr $ly@@3 |e#0@@3|))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@16 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (DafnyAST.Expr.Const_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.DafnyAST.Expr $h@@1))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@16)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@16)) TInt $h@@1))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@17) (DafnyAST.Expr.Var_q d@@17)) (DafnyAST.Expr.Op_q d@@17)))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( (DafnyAST.Expr.Op_q d@@17) ($Is DatatypeTypeType d@@17 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@17) ($Is DatatypeTypeType d@@17 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@17) ($Is DatatypeTypeType d@@17 Tclass.DafnyAST.Expr))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1024|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1025|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1026|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1027|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1035|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1033|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1034|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@6))
)))
(assert (forall ((d@@18 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@18)) (DtRank d@@18))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |835|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@18)))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |783|
 :pattern ( ($IsBox bx@@9 (TSet t@@9)))
)))
(assert (forall ((bx@@10 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |786|
 :pattern ( ($IsBox bx@@10 (TSeq t@@10)))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@5 t1@@2)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11) t1@@2) ($IsBox bx@@11 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |806|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |807|
 :pattern ( ($Is MapType v@@7 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@19 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple3.___hMake3_q d@@19) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1290|
 :pattern ( ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@2))
)))) ($IsAllocBox (_System.Tuple3._0 d@@19) |_System._tuple#3$T0@@7| $h@@2))
 :qid |unknown.0:0|
 :skolemid |1291|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@19) |_System._tuple#3$T0@@7| $h@@2))
)))
(assert (forall ((d@@20 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple3.___hMake3_q d@@20) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |1292|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@3))
)))) ($IsAllocBox (_System.Tuple3._1 d@@20) |_System._tuple#3$T1@@8| $h@@3))
 :qid |unknown.0:0|
 :skolemid |1293|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@20) |_System._tuple#3$T1@@8| $h@@3))
)))
(assert (forall ((d@@21 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple3.___hMake3_q d@@21) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@21 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |1294|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@4))
)))) ($IsAllocBox (_System.Tuple3._2 d@@21) |_System._tuple#3$T2@@9| $h@@4))
 :qid |unknown.0:0|
 :skolemid |1295|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@21) |_System._tuple#3$T2@@9| $h@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@4 T@U) (|e#0@@4| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| (Lit DatatypeTypeType |e#0@@4|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@4| Tclass.DafnyAST.Expr))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@4|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@4|)))))) (let ((|e2#75| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@4|)))))
(let ((|e1#84| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@4|)))))
(let ((|op#3| (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@4|)))))
 (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))))))) (=> (not (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#84|) (|Rewriter.__default.simplifyExpr#canCall| |e2#75|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#3|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#84|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#75|))))))))))))))))))))) (= (Rewriter.__default.simplifyExpr ($LS $ly@@4) (Lit DatatypeTypeType |e#0@@4|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@4|)) (Lit DatatypeTypeType |e#0@@4|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@4|)) (Lit DatatypeTypeType |e#0@@4|) (let ((|e2#50| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@4|)))))
(let ((|e1#56| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@4|)))))
(let ((|op#2| (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@4|)))))
(ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._0 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#51| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e2#51|)) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#52| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e2#52|) (let ((|e2#53| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e2#53|))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#57| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#57|) (let ((|e2#54| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#58| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#58| |e2#54|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#55| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#59| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#59| |e2#55|)))) (let ((|e2#56| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#60| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#60| |e2#56|))))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#61| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#61|) (let ((|e2#57| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#62| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#62| |e2#57|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#58| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#63| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#63| |e2#58|)))) (let ((|e2#59| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#64| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#64| |e2#59|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#65| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#65|) (let ((|e2#60| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#66| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#66| |e2#60|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#61| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#67| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#67| |e2#61|)))) (let ((|e2#62| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#68| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#68| |e2#62|)))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#63| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#69| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#69| |e2#63|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#64| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#70| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#70| |e2#64|)))) (let ((|e2#65| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#71| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#71| |e2#65|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#72| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#72|) (let ((|e2#66| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#73| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#73| |e2#66|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#67| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#74| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#74| |e2#67|)))) (let ((|e2#68| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#75| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#75| |e2#68|))))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#76| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#76|) (let ((|e2#69| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#77| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#77| |e2#69|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#70| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#78| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#78| |e2#70|)))) (let ((|e2#71| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#79| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#79| |e2#71|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|)))))))))) (LitInt 0)) (let ((|e1#80| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
|e1#80|) (let ((|e2#72| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#81| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#81| |e2#72|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))) (let ((|e2#73| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#82| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#82| |e2#73|)))) (let ((|e2#74| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(let ((|e1#83| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e1#56|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@4) |e2#50|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#2| |e1#83| |e2#74|)))))))))))))))))
 :qid |Compilerdfy.84:12|
 :weight 3
 :skolemid |1367|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly@@4) (Lit DatatypeTypeType |e#0@@4|)))
))))
(assert (forall ((d@@22 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@22 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@22 Tclass.DafnyAST.BinOp $h@@5))
 :qid |unknown.0:0|
 :skolemid |1410|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 Tclass.DafnyAST.BinOp $h@@5))
)))
(assert (forall ((d@@23 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@23 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@23 Tclass.DafnyAST.Expr $h@@6))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass.DafnyAST.Expr $h@@6))
)))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (= |#DafnyAST.BinOp.Add| (Lit DatatypeTypeType |#DafnyAST.BinOp.Add|)))
(assert (= |#DafnyAST.BinOp.Sub| (Lit DatatypeTypeType |#DafnyAST.BinOp.Sub|)))
(assert (forall ((|a#15#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0@@0|) Tclass.DafnyAST.Expr) ($Is SeqType |a#15#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.28:11|
 :skolemid |1428|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0@@0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((d@@24 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (DafnyAST.Expr.Var_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.DafnyAST.Expr $h@@7))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@24) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |1429|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@24) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@25 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@25) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |1209|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._0 d@@25) |_System._tuple#2$T0@@6| $h@@8))
 :qid |unknown.0:0|
 :skolemid |1210|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@25) |_System._tuple#2$T0@@6| $h@@8))
)))
(assert (forall ((d@@26 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@26) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |1211|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._1 d@@26) |_System._tuple#2$T1@@7| $h@@9))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@26) |_System._tuple#2$T1@@7| $h@@9))
)))
(assert (forall ((d@@27 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (DafnyAST.Expr.Op_q d@@27) ($IsAlloc DatatypeTypeType d@@27 Tclass.DafnyAST.Expr $h@@10))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@27) Tclass.DafnyAST.BinOp $h@@10))
 :qid |unknown.0:0|
 :skolemid |1439|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@27) Tclass.DafnyAST.BinOp $h@@10))
)))
(assert (forall ((d@@28 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (DafnyAST.Expr.Op_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass.DafnyAST.Expr $h@@11))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@28) Tclass.DafnyAST.Expr $h@@11))
 :qid |unknown.0:0|
 :skolemid |1440|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@28) Tclass.DafnyAST.Expr $h@@11))
)))
(assert (forall ((d@@29 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (DafnyAST.Expr.Op_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.DafnyAST.Expr $h@@12))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@29) Tclass.DafnyAST.Expr $h@@12))
 :qid |unknown.0:0|
 :skolemid |1441|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@29) Tclass.DafnyAST.Expr $h@@12))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |769|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0| Int) ) (! (= (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| |a#11#0#0|)))
 :qid |Compilerdfy.27:13|
 :skolemid |1422|
 :pattern ( (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0|)))
)))
(assert (forall ((|a#16#0#0@@0| T@U) ) (! (= (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Var| |a#16#0#0@@0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |1430|
 :pattern ( (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0@@0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |767|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall (($ly@@5 T@U) (|e#0@@5| T@U) (|ctx#0@@2| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| |e#0@@5| |ctx#0@@2|) (and ($Is DatatypeTypeType |e#0@@5| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@2| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@5|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@5|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@5|)) (let ((|e2#10@@0| (DafnyAST.Expr.e2 |e#0@@5|)))
(let ((|e1#10@@0| (DafnyAST.Expr.e1 |e#0@@5|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#10@@0| |ctx#0@@2|) (|DafnyAST.__default.interpExpr#canCall| |e2#10@@0| |ctx#0@@2|))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@5|))) (let ((|e2#11@@0| (DafnyAST.Expr.e2 |e#0@@5|)))
(let ((|e1#11@@0| (DafnyAST.Expr.e1 |e#0@@5|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#11@@0| |ctx#0@@2|) (|DafnyAST.__default.interpExpr#canCall| |e2#11@@0| |ctx#0@@2|)))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@5) |e#0@@5| |ctx#0@@2|) (ite (DafnyAST.Expr.Const_q |e#0@@5|) (let ((|n#4| (DafnyAST.Expr.n |e#0@@5|)))
|n#4|) (ite (DafnyAST.Expr.Var_q |e#0@@5|) (let ((|v#4| (DafnyAST.Expr.v |e#0@@5|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@2|) ($Box SeqType |v#4|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@2|) ($Box SeqType |v#4|)))) 0)) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@5|)) (let ((|e2#8@@0| (DafnyAST.Expr.e2 |e#0@@5|)))
(let ((|e1#8@@0| (DafnyAST.Expr.e1 |e#0@@5|)))
(+ (DafnyAST.__default.interpExpr $ly@@5 |e1#8@@0| |ctx#0@@2|) (DafnyAST.__default.interpExpr $ly@@5 |e2#8@@0| |ctx#0@@2|)))) (let ((|e2#9@@0| (DafnyAST.Expr.e2 |e#0@@5|)))
(let ((|e1#9@@0| (DafnyAST.Expr.e1 |e#0@@5|)))
(- (DafnyAST.__default.interpExpr $ly@@5 |e1#9@@0| |ctx#0@@2|) (DafnyAST.__default.interpExpr $ly@@5 |e2#9@@0| |ctx#0@@2|))))))))))
 :qid |Compilerdfy.44:12|
 :skolemid |1393|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@5) |e#0@@5| |ctx#0@@2|))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |973|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |812|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@9 T@U) ) (! ($IsAlloc charType v@@9 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |815|
 :pattern ( ($IsAlloc charType v@@9 TChar h@@4))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@10 (TSeq t0@@6)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@10))) ($IsBox (|Seq#Index| v@@10 i@@1) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |804|
 :pattern ( (|Seq#Index| v@@10 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |805|
 :pattern ( ($Is SeqType v@@10 (TSeq t0@@6)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@11 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@11)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1028|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1029|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1018|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@12 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@12) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@12) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@12) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |808|
 :pattern ( ($Is MapType v@@12 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |791|
 :pattern ( ($Is intType v@@13 TInt))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is charType v@@14 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |794|
 :pattern ( ($Is charType v@@14 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |e#0@@6| () T@U)
(declare-fun |_mcc#11#0| () Int)
(declare-fun |let#46#0#0| () T@U)
(declare-fun |_mcc#7#0| () T@U)
(declare-fun |e2#Z#21@0| () T@U)
(declare-fun |_mcc#17#0| () T@U)
(declare-fun |_mcc#18#0| () T@U)
(declare-fun |_mcc#19#0| () T@U)
(declare-fun |let#44#0#0| () T@U)
(declare-fun |e2#Z#19@0| () T@U)
(declare-fun |_mcc#14#0| () T@U)
(declare-fun |let#45#0#0| () T@U)
(declare-fun |e2#Z#20@0| () T@U)
(declare-fun |_mcc#8#0| () Int)
(declare-fun |_mcc#26#0| () Int)
(declare-fun |let#52#0#0| () T@U)
(declare-fun |e2#Z#24@0| () T@U)
(declare-fun |let#53#0#0| () T@U)
(declare-fun |_mcc#6#0| () T@U)
(declare-fun |e1#Z#27@0| () T@U)
(declare-fun |op#Z#0@0| () T@U)
(declare-fun |let#51#0#0| () T@U)
(declare-fun |e1#Z#26@0| () T@U)
(declare-fun |_mcc#30#0| () T@U)
(declare-fun |_mcc#31#0| () T@U)
(declare-fun |_mcc#32#0| () T@U)
(declare-fun |let#47#0#0| () T@U)
(declare-fun |e2#Z#22@0| () T@U)
(declare-fun |let#48#0#0| () T@U)
(declare-fun |e1#Z#24@0| () T@U)
(declare-fun |_mcc#28#0| () T@U)
(declare-fun |let#49#0#0| () T@U)
(declare-fun |e2#Z#23@0| () T@U)
(declare-fun |let#50#0#0| () T@U)
(declare-fun |e1#Z#25@0| () T@U)
(declare-fun |_mcc#39#0| () Int)
(declare-fun |let#42#0#0| () T@U)
(declare-fun |e2#Z#18@0| () T@U)
(declare-fun |let#43#0#0| () T@U)
(declare-fun |e1#Z#23@0| () T@U)
(declare-fun |let#41#0#0| () T@U)
(declare-fun |e1#Z#22@0| () T@U)
(declare-fun |_mcc#43#0| () T@U)
(declare-fun |_mcc#44#0| () T@U)
(declare-fun |_mcc#45#0| () T@U)
(declare-fun |let#37#0#0| () T@U)
(declare-fun |e2#Z#16@0| () T@U)
(declare-fun |let#38#0#0| () T@U)
(declare-fun |e1#Z#20@0| () T@U)
(declare-fun |_mcc#41#0| () T@U)
(declare-fun |let#39#0#0| () T@U)
(declare-fun |e2#Z#17@0| () T@U)
(declare-fun |let#40#0#0| () T@U)
(declare-fun |e1#Z#21@0| () T@U)
(declare-fun |_mcc#36#0| () T@U)
(declare-fun |_mcc#58#0| () Int)
(declare-fun |let#35#0#0| () T@U)
(declare-fun |e2#Z#15@0| () T@U)
(declare-fun |let#36#0#0| () T@U)
(declare-fun |e1#Z#19@0| () T@U)
(declare-fun |let#34#0#0| () T@U)
(declare-fun |e1#Z#18@0| () T@U)
(declare-fun |_mcc#62#0| () T@U)
(declare-fun |_mcc#63#0| () T@U)
(declare-fun |_mcc#64#0| () T@U)
(declare-fun |let#30#0#0| () T@U)
(declare-fun |e2#Z#13@0| () T@U)
(declare-fun |let#31#0#0| () T@U)
(declare-fun |e1#Z#16@0| () T@U)
(declare-fun |_mcc#60#0| () T@U)
(declare-fun |let#32#0#0| () T@U)
(declare-fun |e2#Z#14@0| () T@U)
(declare-fun |let#33#0#0| () T@U)
(declare-fun |e1#Z#17@0| () T@U)
(declare-fun |_mcc#49#0| () T@U)
(declare-fun |_mcc#50#0| () T@U)
(declare-fun |_mcc#51#0| () T@U)
(declare-fun |_mcc#5#0| () T@U)
(declare-fun |_mcc#71#0| () Int)
(declare-fun |let#21#0#0| () T@U)
(declare-fun |e2#Z#9@0| () T@U)
(declare-fun |let#22#0#0| () T@U)
(declare-fun |e1#Z#11@0| () T@U)
(declare-fun |_mcc#75#0| () T@U)
(declare-fun |_mcc#76#0| () T@U)
(declare-fun |_mcc#77#0| () T@U)
(declare-fun |let#17#0#0| () T@U)
(declare-fun |e2#Z#7@0| () T@U)
(declare-fun |let#18#0#0| () T@U)
(declare-fun |e1#Z#9@0| () T@U)
(declare-fun |_mcc#73#0| () T@U)
(declare-fun |let#19#0#0| () T@U)
(declare-fun |e2#Z#8@0| () T@U)
(declare-fun |let#20#0#0| () T@U)
(declare-fun |e1#Z#10@0| () T@U)
(declare-fun |_mcc#68#0| () Int)
(declare-fun |_mcc#81#0| () Int)
(declare-fun |let#28#0#0| () T@U)
(declare-fun |e2#Z#12@0| () T@U)
(declare-fun |let#29#0#0| () T@U)
(declare-fun |e1#Z#15@0| () T@U)
(declare-fun |let#27#0#0| () T@U)
(declare-fun |e1#Z#14@0| () T@U)
(declare-fun |_mcc#85#0| () T@U)
(declare-fun |_mcc#86#0| () T@U)
(declare-fun |_mcc#87#0| () T@U)
(declare-fun |let#23#0#0| () T@U)
(declare-fun |e2#Z#10@0| () T@U)
(declare-fun |let#24#0#0| () T@U)
(declare-fun |e1#Z#12@0| () T@U)
(declare-fun |_mcc#83#0| () T@U)
(declare-fun |let#25#0#0| () T@U)
(declare-fun |e2#Z#11@0| () T@U)
(declare-fun |let#26#0#0| () T@U)
(declare-fun |e1#Z#13@0| () T@U)
(declare-fun |_mcc#94#0| () Int)
(declare-fun |let#15#0#0| () T@U)
(declare-fun |e2#Z#6@0| () T@U)
(declare-fun |let#16#0#0| () T@U)
(declare-fun |e1#Z#8@0| () T@U)
(declare-fun |let#14#0#0| () T@U)
(declare-fun |e1#Z#7@0| () T@U)
(declare-fun |_mcc#98#0| () T@U)
(declare-fun |_mcc#99#0| () T@U)
(declare-fun |_mcc#100#0| () T@U)
(declare-fun |let#10#0#0| () T@U)
(declare-fun |e2#Z#4@0| () T@U)
(declare-fun |let#11#0#0| () T@U)
(declare-fun |e1#Z#5@0| () T@U)
(declare-fun |_mcc#96#0| () T@U)
(declare-fun |let#12#0#0| () T@U)
(declare-fun |e2#Z#5@0| () T@U)
(declare-fun |let#13#0#0| () T@U)
(declare-fun |e1#Z#6@0| () T@U)
(declare-fun |_mcc#91#0| () T@U)
(declare-fun |_mcc#113#0| () Int)
(declare-fun |let#8#0#0| () T@U)
(declare-fun |e2#Z#3@0| () T@U)
(declare-fun |let#9#0#0| () T@U)
(declare-fun |e1#Z#4@0| () T@U)
(declare-fun |let#7#0#0| () T@U)
(declare-fun |e1#Z#3@0| () T@U)
(declare-fun |_mcc#117#0| () T@U)
(declare-fun |_mcc#118#0| () T@U)
(declare-fun |_mcc#119#0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |e2#Z#1@0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |e1#Z#1@0| () T@U)
(declare-fun |_mcc#115#0| () T@U)
(declare-fun |let#5#0#0| () T@U)
(declare-fun |e2#Z#2@0| () T@U)
(declare-fun |let#6#0#0| () T@U)
(declare-fun |e1#Z#2@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#54#0#0| () T@U)
(declare-fun |v#Z#0@0| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |let#55#0#0| () Int)
(declare-fun |n#Z#0@0| () Int)
(declare-fun |_mcc#104#0| () T@U)
(declare-fun |_mcc#105#0| () T@U)
(declare-fun |_mcc#106#0| () T@U)
(declare-fun |e1#Z#0@0| () T@U)
(declare-fun |e2#Z#0@0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |ctx#2@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Rewriter.__default.simplifyExpr)
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
 (=> (= (ControlFlow 0 0) 100) (let ((anon85_Else_correct true))
(let ((anon89_Else_correct true))
(let ((anon94_Else_correct true))
(let ((anon99_Else_correct true))
(let ((anon95_Else_correct true))
(let ((anon106_Else_correct true))
(let ((anon110_Else_correct true))
(let ((anon115_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((|ctx#1| T@U) ) (!  (=> ($Is MapType |ctx#1| (TMap (TSeq TChar) TInt)) (= (DafnyAST.__default.interpExpr ($LS ($LS $LZ)) (Rewriter.__default.simplifyExpr ($LS ($LS $LZ)) |e#0@@6|) |ctx#1|) (DafnyAST.__default.interpExpr ($LS ($LS $LZ)) |e#0@@6| |ctx#1|)))
 :qid |Compilerdfy.85:20|
 :skolemid |1368|
 :pattern ( (DafnyAST.__default.interpExpr ($LS ($LS $LZ)) |e#0@@6| |ctx#1|))
 :pattern ( (DafnyAST.__default.interpExpr ($LS ($LS $LZ)) (Rewriter.__default.simplifyExpr ($LS ($LS $LZ)) |e#0@@6|) |ctx#1|))
)))))
(let ((anon83_Else_correct  (=> (or (not (= |_mcc#11#0| (LitInt 0))) (not true)) (=> (and (= |let#46#0#0| |_mcc#7#0|) ($Is DatatypeTypeType |let#46#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e2#Z#21@0| |let#46#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e2#Z#21@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 88) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon83_Then_correct  (=> (and (and (= |_mcc#11#0| (LitInt 0)) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| (LitInt 0))))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 87) 9))) GeneratedUnifiedExit_correct)))
(let ((anon82_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#11#0|)) (and (=> (= (ControlFlow 0 89) 87) anon83_Then_correct) (=> (= (ControlFlow 0 89) 88) anon83_Else_correct)))))
(let ((anon85_Then_correct  (=> (and (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#17#0| |_mcc#18#0| |_mcc#19#0|)) ($Is DatatypeTypeType |_mcc#17#0| Tclass.DafnyAST.BinOp)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#18#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#19#0| Tclass.DafnyAST.Expr)) (and (= |let#44#0#0| |_mcc#7#0|) ($Is DatatypeTypeType |let#44#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e2#Z#19@0| |let#44#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e2#Z#19@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 83) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon84_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#14#0|))) (not true)) (and (=> (= (ControlFlow 0 85) 83) anon85_Then_correct) (=> (= (ControlFlow 0 85) 84) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (and (and (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#14#0|)) ($Is SeqType |_mcc#14#0| (TSeq TChar))) (and (= |let#45#0#0| |_mcc#7#0|) ($Is DatatypeTypeType |let#45#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e2#Z#20@0| |let#45#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e2#Z#20@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 82) 9)))) GeneratedUnifiedExit_correct)))
(let ((anon82_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#11#0|))) (not true)) (and (=> (= (ControlFlow 0 86) 82) anon84_Then_correct) (=> (= (ControlFlow 0 86) 85) anon84_Else_correct)))))
(let ((anon81_Then_correct  (=> (= |_mcc#8#0| (LitInt 0)) (and (=> (= (ControlFlow 0 90) 89) anon82_Then_correct) (=> (= (ControlFlow 0 90) 86) anon82_Else_correct)))))
(let ((anon87_Else_correct  (=> (and (or (not (= |_mcc#26#0| (LitInt 0))) (not true)) (= |let#52#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#52#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#24@0| |let#52#0#0|)) (and (= |let#53#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#53#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#27@0| |let#53#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#27@0| |e2#Z#24@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 79) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon87_Then_correct  (=> (= |_mcc#26#0| (LitInt 0)) (=> (and (= |let#51#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#51#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#26@0| |let#51#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#26@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 78) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon86_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#26#0|)) (and (=> (= (ControlFlow 0 80) 78) anon87_Then_correct) (=> (= (ControlFlow 0 80) 79) anon87_Else_correct)))))
(let ((anon89_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#30#0| |_mcc#31#0| |_mcc#32#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#30#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#31#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#32#0| Tclass.DafnyAST.Expr) (= |let#47#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#47#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#22@0| |let#47#0#0|)) (and (= |let#48#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#48#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#24@0| |let#48#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#24@0| |e2#Z#22@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 74) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon88_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#28#0|))) (not true)) (and (=> (= (ControlFlow 0 76) 74) anon89_Then_correct) (=> (= (ControlFlow 0 76) 75) anon89_Else_correct)))))
(let ((anon88_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#28#0|)) (=> (and ($Is SeqType |_mcc#28#0| (TSeq TChar)) (= |let#49#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#49#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#23@0| |let#49#0#0|)) (and (= |let#50#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#50#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#25@0| |let#50#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#25@0| |e2#Z#23@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 73) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon86_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#26#0|))) (not true)) (and (=> (= (ControlFlow 0 77) 73) anon88_Then_correct) (=> (= (ControlFlow 0 77) 76) anon88_Else_correct)))))
(let ((anon81_Else_correct  (=> (or (not (= |_mcc#8#0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 81) 80) anon86_Then_correct) (=> (= (ControlFlow 0 81) 77) anon86_Else_correct)))))
(let ((anon80_Then_correct  (=> (= |_mcc#6#0| (|#DafnyAST.Expr.Const| |_mcc#8#0|)) (and (=> (= (ControlFlow 0 91) 90) anon81_Then_correct) (=> (= (ControlFlow 0 91) 81) anon81_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (or (not (= |_mcc#39#0| (LitInt 0))) (not true)) (= |let#42#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#42#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#18@0| |let#42#0#0|)) (and (= |let#43#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#43#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#23@0| |let#43#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#23@0| |e2#Z#18@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 69) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon92_Then_correct  (=> (= |_mcc#39#0| (LitInt 0)) (=> (and (= |let#41#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#41#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#22@0| |let#41#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#22@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 68) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon91_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#39#0|)) (and (=> (= (ControlFlow 0 70) 68) anon92_Then_correct) (=> (= (ControlFlow 0 70) 69) anon92_Else_correct)))))
(let ((anon94_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#43#0| |_mcc#44#0| |_mcc#45#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#43#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#44#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#45#0| Tclass.DafnyAST.Expr) (= |let#37#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#37#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#16@0| |let#37#0#0|)) (and (= |let#38#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#38#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#20@0| |let#38#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#20@0| |e2#Z#16@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 64) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon93_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#41#0|))) (not true)) (and (=> (= (ControlFlow 0 66) 64) anon94_Then_correct) (=> (= (ControlFlow 0 66) 65) anon94_Else_correct)))))
(let ((anon93_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#41#0|)) (=> (and ($Is SeqType |_mcc#41#0| (TSeq TChar)) (= |let#39#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#39#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#17@0| |let#39#0#0|)) (and (= |let#40#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#40#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#21@0| |let#40#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#21@0| |e2#Z#17@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 63) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon91_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#39#0|))) (not true)) (and (=> (= (ControlFlow 0 67) 63) anon93_Then_correct) (=> (= (ControlFlow 0 67) 66) anon93_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (= |_mcc#6#0| (|#DafnyAST.Expr.Var| |_mcc#36#0|)) ($Is SeqType |_mcc#36#0| (TSeq TChar))) (and (=> (= (ControlFlow 0 71) 70) anon91_Then_correct) (=> (= (ControlFlow 0 71) 67) anon91_Else_correct)))))
(let ((anon97_Else_correct  (=> (and (or (not (= |_mcc#58#0| (LitInt 0))) (not true)) (= |let#35#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#35#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#15@0| |let#35#0#0|)) (and (= |let#36#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#36#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#19@0| |let#36#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#19@0| |e2#Z#15@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 59) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon97_Then_correct  (=> (= |_mcc#58#0| (LitInt 0)) (=> (and (= |let#34#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#34#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#18@0| |let#34#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#18@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 58) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon96_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#58#0|)) (and (=> (= (ControlFlow 0 60) 58) anon97_Then_correct) (=> (= (ControlFlow 0 60) 59) anon97_Else_correct)))))
(let ((anon99_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#62#0| |_mcc#63#0| |_mcc#64#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#62#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#63#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#64#0| Tclass.DafnyAST.Expr) (= |let#30#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#30#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#13@0| |let#30#0#0|)) (and (= |let#31#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#31#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#16@0| |let#31#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#16@0| |e2#Z#13@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 54) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon98_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#60#0|))) (not true)) (and (=> (= (ControlFlow 0 56) 54) anon99_Then_correct) (=> (= (ControlFlow 0 56) 55) anon99_Else_correct)))))
(let ((anon98_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#60#0|)) (=> (and ($Is SeqType |_mcc#60#0| (TSeq TChar)) (= |let#32#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#32#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#14@0| |let#32#0#0|)) (and (= |let#33#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#33#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#17@0| |let#33#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#17@0| |e2#Z#14@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 53) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon96_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#58#0|))) (not true)) (and (=> (= (ControlFlow 0 57) 53) anon98_Then_correct) (=> (= (ControlFlow 0 57) 56) anon98_Else_correct)))))
(let ((anon95_Then_correct  (=> (and (and (= |_mcc#6#0| (|#DafnyAST.Expr.Op| |_mcc#49#0| |_mcc#50#0| |_mcc#51#0|)) ($Is DatatypeTypeType |_mcc#49#0| Tclass.DafnyAST.BinOp)) (and ($Is DatatypeTypeType |_mcc#50#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#51#0| Tclass.DafnyAST.Expr))) (and (=> (= (ControlFlow 0 61) 60) anon96_Then_correct) (=> (= (ControlFlow 0 61) 57) anon96_Else_correct)))))
(let ((anon90_Else_correct  (=> (or (not (= |_mcc#6#0| (|#DafnyAST.Expr.Var| |_mcc#36#0|))) (not true)) (and (=> (= (ControlFlow 0 62) 61) anon95_Then_correct) (=> (= (ControlFlow 0 62) 52) anon95_Else_correct)))))
(let ((anon80_Else_correct  (=> (or (not (= |_mcc#6#0| (|#DafnyAST.Expr.Const| |_mcc#8#0|))) (not true)) (and (=> (= (ControlFlow 0 72) 71) anon90_Then_correct) (=> (= (ControlFlow 0 72) 62) anon90_Else_correct)))))
(let ((anon79_Then_correct  (=> (= |_mcc#5#0| |#DafnyAST.BinOp.Add|) (and (=> (= (ControlFlow 0 92) 91) anon80_Then_correct) (=> (= (ControlFlow 0 92) 72) anon80_Else_correct)))))
(let ((anon104_Else_correct  (=> (and (or (not (= |_mcc#71#0| (LitInt 0))) (not true)) (= |let#21#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#21#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#9@0| |let#21#0#0|)) (and (= |let#22#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#22#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#11@0| |let#22#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#11@0| |e2#Z#9@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 46) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon104_Then_correct  (=> (and (and (= |_mcc#71#0| (LitInt 0)) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| (LitInt 0))))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 45) 9))) GeneratedUnifiedExit_correct)))
(let ((anon103_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#71#0|)) (and (=> (= (ControlFlow 0 47) 45) anon104_Then_correct) (=> (= (ControlFlow 0 47) 46) anon104_Else_correct)))))
(let ((anon106_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#75#0| |_mcc#76#0| |_mcc#77#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#75#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#76#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#77#0| Tclass.DafnyAST.Expr) (= |let#17#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#17#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#7@0| |let#17#0#0|)) (and (= |let#18#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#18#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#9@0| |let#18#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#9@0| |e2#Z#7@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 41) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon105_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#73#0|))) (not true)) (and (=> (= (ControlFlow 0 43) 41) anon106_Then_correct) (=> (= (ControlFlow 0 43) 42) anon106_Else_correct)))))
(let ((anon105_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#73#0|)) (=> (and ($Is SeqType |_mcc#73#0| (TSeq TChar)) (= |let#19#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#19#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#8@0| |let#19#0#0|)) (and (= |let#20#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#20#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#10@0| |let#20#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#10@0| |e2#Z#8@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 40) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon103_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#71#0|))) (not true)) (and (=> (= (ControlFlow 0 44) 40) anon105_Then_correct) (=> (= (ControlFlow 0 44) 43) anon105_Else_correct)))))
(let ((anon102_Then_correct  (=> (= |_mcc#68#0| (LitInt 0)) (and (=> (= (ControlFlow 0 48) 47) anon103_Then_correct) (=> (= (ControlFlow 0 48) 44) anon103_Else_correct)))))
(let ((anon108_Else_correct  (=> (and (or (not (= |_mcc#81#0| (LitInt 0))) (not true)) (= |let#28#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#28#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#12@0| |let#28#0#0|)) (and (= |let#29#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#29#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#15@0| |let#29#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#15@0| |e2#Z#12@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 37) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon108_Then_correct  (=> (= |_mcc#81#0| (LitInt 0)) (=> (and (= |let#27#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#27#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#14@0| |let#27#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#14@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 36) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon107_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#81#0|)) (and (=> (= (ControlFlow 0 38) 36) anon108_Then_correct) (=> (= (ControlFlow 0 38) 37) anon108_Else_correct)))))
(let ((anon110_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#85#0| |_mcc#86#0| |_mcc#87#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#85#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#86#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#87#0| Tclass.DafnyAST.Expr) (= |let#23#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#23#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#10@0| |let#23#0#0|)) (and (= |let#24#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#24#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#12@0| |let#24#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#12@0| |e2#Z#10@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 32) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon109_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#83#0|))) (not true)) (and (=> (= (ControlFlow 0 34) 32) anon110_Then_correct) (=> (= (ControlFlow 0 34) 33) anon110_Else_correct)))))
(let ((anon109_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#83#0|)) (=> (and ($Is SeqType |_mcc#83#0| (TSeq TChar)) (= |let#25#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#25#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#11@0| |let#25#0#0|)) (and (= |let#26#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#26#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#13@0| |let#26#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#13@0| |e2#Z#11@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 31) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon107_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#81#0|))) (not true)) (and (=> (= (ControlFlow 0 35) 31) anon109_Then_correct) (=> (= (ControlFlow 0 35) 34) anon109_Else_correct)))))
(let ((anon102_Else_correct  (=> (or (not (= |_mcc#68#0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 39) 38) anon107_Then_correct) (=> (= (ControlFlow 0 39) 35) anon107_Else_correct)))))
(let ((anon101_Then_correct  (=> (= |_mcc#6#0| (|#DafnyAST.Expr.Const| |_mcc#68#0|)) (and (=> (= (ControlFlow 0 49) 48) anon102_Then_correct) (=> (= (ControlFlow 0 49) 39) anon102_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (or (not (= |_mcc#94#0| (LitInt 0))) (not true)) (= |let#15#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#15#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#6@0| |let#15#0#0|)) (and (= |let#16#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#16#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#8@0| |let#16#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#8@0| |e2#Z#6@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 27) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon113_Then_correct  (=> (= |_mcc#94#0| (LitInt 0)) (=> (and (= |let#14#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#14#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#7@0| |let#14#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#7@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 26) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon112_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#94#0|)) (and (=> (= (ControlFlow 0 28) 26) anon113_Then_correct) (=> (= (ControlFlow 0 28) 27) anon113_Else_correct)))))
(let ((anon115_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#98#0| |_mcc#99#0| |_mcc#100#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#98#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#99#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#100#0| Tclass.DafnyAST.Expr) (= |let#10#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#10#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#4@0| |let#10#0#0|)) (and (= |let#11#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#11#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#5@0| |let#11#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#5@0| |e2#Z#4@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 22) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon114_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#96#0|))) (not true)) (and (=> (= (ControlFlow 0 24) 22) anon115_Then_correct) (=> (= (ControlFlow 0 24) 23) anon115_Else_correct)))))
(let ((anon114_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#96#0|)) (=> (and ($Is SeqType |_mcc#96#0| (TSeq TChar)) (= |let#12#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#12#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#5@0| |let#12#0#0|)) (and (= |let#13#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#13#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#6@0| |let#13#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#6@0| |e2#Z#5@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 21) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon112_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#94#0|))) (not true)) (and (=> (= (ControlFlow 0 25) 21) anon114_Then_correct) (=> (= (ControlFlow 0 25) 24) anon114_Else_correct)))))
(let ((anon111_Then_correct  (=> (and (= |_mcc#6#0| (|#DafnyAST.Expr.Var| |_mcc#91#0|)) ($Is SeqType |_mcc#91#0| (TSeq TChar))) (and (=> (= (ControlFlow 0 29) 28) anon112_Then_correct) (=> (= (ControlFlow 0 29) 25) anon112_Else_correct)))))
(let ((anon118_Else_correct  (=> (and (or (not (= |_mcc#113#0| (LitInt 0))) (not true)) (= |let#8#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#8#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#3@0| |let#8#0#0|)) (and (= |let#9#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#9#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#4@0| |let#9#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#4@0| |e2#Z#3@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 17) 9)))) GeneratedUnifiedExit_correct))))
(let ((anon118_Then_correct  (=> (= |_mcc#113#0| (LitInt 0)) (=> (and (= |let#7#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#7#0#0| Tclass.DafnyAST.Expr)) (=> (and (and (= |e1#Z#3@0| |let#7#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e1#Z#3@0|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 16) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon117_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#113#0|)) (and (=> (= (ControlFlow 0 18) 16) anon118_Then_correct) (=> (= (ControlFlow 0 18) 17) anon118_Else_correct)))))
(let ((anon120_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Op| |_mcc#117#0| |_mcc#118#0| |_mcc#119#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#117#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |_mcc#118#0| Tclass.DafnyAST.Expr)) (and ($Is DatatypeTypeType |_mcc#119#0| Tclass.DafnyAST.Expr) (= |let#3#0#0| |_mcc#7#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#3#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#1@0| |let#3#0#0|)) (and (= |let#4#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#4#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#1@0| |let#4#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#1@0| |e2#Z#1@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 13) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon119_Then_correct  (=> (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#115#0|)) (=> (and ($Is SeqType |_mcc#115#0| (TSeq TChar)) (= |let#5#0#0| |_mcc#7#0|)) (=> (and (and (and ($Is DatatypeTypeType |let#5#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#2@0| |let#5#0#0|)) (and (= |let#6#0#0| |_mcc#6#0|) ($Is DatatypeTypeType |let#6#0#0| Tclass.DafnyAST.Expr))) (and (and (= |e1#Z#2@0| |let#6#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) (|#DafnyAST.Expr.Op| |op#Z#0@0| |e1#Z#2@0| |e2#Z#2@0|))) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 12) 9)))) GeneratedUnifiedExit_correct)))))
(let ((anon76_Then_correct  (=> (and (and (and (= |e#0@@6| (|#DafnyAST.Expr.Var| |_mcc#1#0|)) ($Is SeqType |_mcc#1#0| (TSeq TChar))) (and (= |let#54#0#0| |_mcc#1#0|) ($Is SeqType |let#54#0#0| (TSeq TChar)))) (and (and (= |v#Z#0@0| |let#54#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e#0@@6|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 11) 9)))) GeneratedUnifiedExit_correct)))
(let ((anon75_Then_correct  (=> (= |e#0@@6| (|#DafnyAST.Expr.Const| |_mcc#0#0|)) (=> (and (= |let#55#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#55#0#0|) TInt)) (=> (and (and (= |n#Z#0@0| |let#55#0#0|) (= (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) |e#0@@6|)) (and ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (= (ControlFlow 0 10) 9))) GeneratedUnifiedExit_correct)))))
(let ((anon120_Else_correct true))
(let ((anon119_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Var| |_mcc#115#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 13) anon120_Then_correct) (=> (= (ControlFlow 0 14) 7) anon120_Else_correct)))))
(let ((anon117_Else_correct  (=> (or (not (= |_mcc#7#0| (|#DafnyAST.Expr.Const| |_mcc#113#0|))) (not true)) (and (=> (= (ControlFlow 0 15) 12) anon119_Then_correct) (=> (= (ControlFlow 0 15) 14) anon119_Else_correct)))))
(let ((anon116_Then_correct  (=> (and (and (= |_mcc#6#0| (|#DafnyAST.Expr.Op| |_mcc#104#0| |_mcc#105#0| |_mcc#106#0|)) ($Is DatatypeTypeType |_mcc#104#0| Tclass.DafnyAST.BinOp)) (and ($Is DatatypeTypeType |_mcc#105#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#106#0| Tclass.DafnyAST.Expr))) (and (=> (= (ControlFlow 0 19) 18) anon117_Then_correct) (=> (= (ControlFlow 0 19) 15) anon117_Else_correct)))))
(let ((anon116_Else_correct true))
(let ((anon111_Else_correct  (=> (or (not (= |_mcc#6#0| (|#DafnyAST.Expr.Var| |_mcc#91#0|))) (not true)) (and (=> (= (ControlFlow 0 20) 19) anon116_Then_correct) (=> (= (ControlFlow 0 20) 6) anon116_Else_correct)))))
(let ((anon101_Else_correct  (=> (or (not (= |_mcc#6#0| (|#DafnyAST.Expr.Const| |_mcc#68#0|))) (not true)) (and (=> (= (ControlFlow 0 30) 29) anon111_Then_correct) (=> (= (ControlFlow 0 30) 20) anon111_Else_correct)))))
(let ((anon100_Then_correct  (=> (= |_mcc#5#0| |#DafnyAST.BinOp.Sub|) (and (=> (= (ControlFlow 0 50) 49) anon101_Then_correct) (=> (= (ControlFlow 0 50) 30) anon101_Else_correct)))))
(let ((anon100_Else_correct true))
(let ((anon79_Else_correct  (=> (or (not (= |_mcc#5#0| |#DafnyAST.BinOp.Add|)) (not true)) (and (=> (= (ControlFlow 0 51) 50) anon100_Then_correct) (=> (= (ControlFlow 0 51) 5) anon100_Else_correct)))))
(let ((anon78_Then_correct  (=> (and (and (= (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#Z#0@0|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e1#Z#0@0|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e2#Z#0@0|))) (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |_mcc#5#0|) ($Box DatatypeTypeType |_mcc#6#0|) ($Box DatatypeTypeType |_mcc#7#0|))) ($Is DatatypeTypeType |_mcc#5#0| Tclass.DafnyAST.BinOp)) (and ($Is DatatypeTypeType |_mcc#6#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#7#0| Tclass.DafnyAST.Expr))) (and (=> (= (ControlFlow 0 93) 92) anon79_Then_correct) (=> (= (ControlFlow 0 93) 51) anon79_Else_correct)))))
(let ((anon78_Else_correct true))
(let ((anon77_Then_correct  (=> (and (= |e#0@@6| (|#DafnyAST.Expr.Op| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0|)) ($Is DatatypeTypeType |_mcc#2#0| Tclass.DafnyAST.BinOp)) (=> (and (and ($Is DatatypeTypeType |_mcc#3#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#4#0| Tclass.DafnyAST.Expr)) (and (= |let#0#0#0| |_mcc#4#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.DafnyAST.Expr))) (=> (and (and (and (= |e2#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#3#0|)) (and ($Is DatatypeTypeType |let#1#0#0| Tclass.DafnyAST.Expr) (= |e1#Z#0@0| |let#1#0#0|))) (and (and (= |let#2#0#0| |_mcc#2#0|) ($Is DatatypeTypeType |let#2#0#0| Tclass.DafnyAST.BinOp)) (and (= |op#Z#0@0| |let#2#0#0|) ($IsAlloc DatatypeTypeType |e1#Z#0@0| Tclass.DafnyAST.Expr $Heap)))) (and (=> (= (ControlFlow 0 94) (- 0 96)) (< (DtRank |e1#Z#0@0|) (DtRank |e#0@@6|))) (=> (< (DtRank |e1#Z#0@0|) (DtRank |e#0@@6|)) (=> (and (|Rewriter.__default.simplifyExpr#canCall| |e1#Z#0@0|) ($IsAlloc DatatypeTypeType |e2#Z#0@0| Tclass.DafnyAST.Expr $Heap)) (and (=> (= (ControlFlow 0 94) (- 0 95)) (< (DtRank |e2#Z#0@0|) (DtRank |e#0@@6|))) (=> (< (DtRank |e2#Z#0@0|) (DtRank |e#0@@6|)) (=> (|Rewriter.__default.simplifyExpr#canCall| |e2#Z#0@0|) (and (=> (= (ControlFlow 0 94) 93) anon78_Then_correct) (=> (= (ControlFlow 0 94) 4) anon78_Else_correct)))))))))))))
(let ((anon77_Else_correct true))
(let ((anon76_Else_correct  (=> (or (not (= |e#0@@6| (|#DafnyAST.Expr.Var| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 97) 94) anon77_Then_correct) (=> (= (ControlFlow 0 97) 3) anon77_Else_correct)))))
(let ((anon75_Else_correct  (=> (or (not (= |e#0@@6| (|#DafnyAST.Expr.Const| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 98) 11) anon76_Then_correct) (=> (= (ControlFlow 0 98) 97) anon76_Else_correct)))))
(let ((anon74_Then_correct  (=> ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#0@@6|) Tclass.DafnyAST.Expr) (=> (and (and ($Is MapType |ctx#2@0| (TMap (TSeq TChar) TInt)) ($IsAlloc MapType |ctx#2@0| (TMap (TSeq TChar) TInt) $Heap)) (and ($IsAlloc DatatypeTypeType |e#0@@6| Tclass.DafnyAST.Expr $Heap) (= (ControlFlow 0 2) (- 0 1)))) (or (|DafnyAST.Expr#Equal| |e#0@@6| |e#0@@6|) (< (DtRank |e#0@@6|) (DtRank |e#0@@6|)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 99) 2) anon74_Then_correct) (=> (= (ControlFlow 0 99) 10) anon75_Then_correct)) (=> (= (ControlFlow 0 99) 98) anon75_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |e#0@@6| Tclass.DafnyAST.Expr)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 100) 99))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
