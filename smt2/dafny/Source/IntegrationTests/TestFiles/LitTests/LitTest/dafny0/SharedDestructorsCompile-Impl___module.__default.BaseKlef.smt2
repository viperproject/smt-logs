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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Klef () T@U)
(declare-fun |##_module.Klef.C0| () T@U)
(declare-fun |##_module.Klef.C1| () T@U)
(declare-fun |##_module.Klef.C2| () T@U)
(declare-fun |##_module.Klef.C3| () T@U)
(declare-fun tytagFamily$Klef () T@U)
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
(declare-fun |#_module.Klef.C0| (Int Int Int Int) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Klef._0 (T@U) Int)
(declare-fun _module.Klef._1 (T@U) Int)
(declare-fun _module.Klef._2 (T@U) Int)
(declare-fun _module.Klef.c0 (T@U) Int)
(declare-fun |#_module.Klef.C1| (Int Int Int Int) T@U)
(declare-fun _module.Klef._3 (T@U) Int)
(declare-fun _module.Klef.c1 (T@U) Int)
(declare-fun |#_module.Klef.C2| (Int Int Int Int) T@U)
(declare-fun _module.Klef.c2 (T@U) Int)
(declare-fun |#_module.Klef.C3| (Int Int Int Int) T@U)
(declare-fun _module.Klef.c3 (T@U) Int)
(declare-fun |_module.Klef#Equal| (T@U T@U) Bool)
(declare-fun _module.Klef.C0_q (T@U) Bool)
(declare-fun _module.Klef.C1_q (T@U) Bool)
(declare-fun _module.Klef.C2_q (T@U) Bool)
(declare-fun _module.Klef.C3_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Klef () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.Klef| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Klef |##_module.Klef.C0| |##_module.Klef.C1| |##_module.Klef.C2| |##_module.Klef.C3| tytagFamily$Klef)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#17#0#0| Int) (|a#17#1#0| Int) (|a#17#2#0| Int) (|a#17#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C0| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0|)) |##_module.Klef.C0|)
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |544|
 :pattern ( (|#_module.Klef.C0| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0|))
)))
(assert (forall ((|a#21#0#0| Int) (|a#21#1#0| Int) (|a#21#2#0| Int) (|a#21#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C0| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0|)) |a#21#0#0|)
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |554|
 :pattern ( (|#_module.Klef.C0| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0|))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| Int) (|a#22#2#0| Int) (|a#22#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C0| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0|)) |a#22#1#0|)
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |555|
 :pattern ( (|#_module.Klef.C0| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0|))
)))
(assert (forall ((|a#23#0#0| Int) (|a#23#1#0| Int) (|a#23#2#0| Int) (|a#23#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C0| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0|)) |a#23#2#0|)
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |556|
 :pattern ( (|#_module.Klef.C0| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0|))
)))
(assert (forall ((|a#24#0#0| Int) (|a#24#1#0| Int) (|a#24#2#0| Int) (|a#24#3#0| Int) ) (! (= (_module.Klef.c0 (|#_module.Klef.C0| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0|)) |a#24#3#0|)
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |557|
 :pattern ( (|#_module.Klef.C0| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0|))
)))
(assert (forall ((|a#25#0#0| Int) (|a#25#1#0| Int) (|a#25#2#0| Int) (|a#25#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C1| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0|)) |##_module.Klef.C1|)
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |558|
 :pattern ( (|#_module.Klef.C1| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0|))
)))
(assert (forall ((|a#29#0#0| Int) (|a#29#1#0| Int) (|a#29#2#0| Int) (|a#29#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C1| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0|)) |a#29#0#0|)
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |568|
 :pattern ( (|#_module.Klef.C1| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0|))
)))
(assert (forall ((|a#30#0#0| Int) (|a#30#1#0| Int) (|a#30#2#0| Int) (|a#30#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C1| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0|)) |a#30#1#0|)
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |569|
 :pattern ( (|#_module.Klef.C1| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0|))
)))
(assert (forall ((|a#31#0#0| Int) (|a#31#1#0| Int) (|a#31#2#0| Int) (|a#31#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C1| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0|)) |a#31#2#0|)
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |570|
 :pattern ( (|#_module.Klef.C1| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0|))
)))
(assert (forall ((|a#32#0#0| Int) (|a#32#1#0| Int) (|a#32#2#0| Int) (|a#32#3#0| Int) ) (! (= (_module.Klef.c1 (|#_module.Klef.C1| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0|)) |a#32#3#0|)
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |571|
 :pattern ( (|#_module.Klef.C1| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0|))
)))
(assert (forall ((|a#33#0#0| Int) (|a#33#1#0| Int) (|a#33#2#0| Int) (|a#33#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C2| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0|)) |##_module.Klef.C2|)
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |572|
 :pattern ( (|#_module.Klef.C2| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0|))
)))
(assert (forall ((|a#37#0#0| Int) (|a#37#1#0| Int) (|a#37#2#0| Int) (|a#37#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C2| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0|)) |a#37#0#0|)
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |582|
 :pattern ( (|#_module.Klef.C2| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0|))
)))
(assert (forall ((|a#38#0#0| Int) (|a#38#1#0| Int) (|a#38#2#0| Int) (|a#38#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C2| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0|)) |a#38#1#0|)
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |583|
 :pattern ( (|#_module.Klef.C2| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0|))
)))
(assert (forall ((|a#39#0#0| Int) (|a#39#1#0| Int) (|a#39#2#0| Int) (|a#39#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C2| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0|)) |a#39#2#0|)
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |584|
 :pattern ( (|#_module.Klef.C2| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0|))
)))
(assert (forall ((|a#40#0#0| Int) (|a#40#1#0| Int) (|a#40#2#0| Int) (|a#40#3#0| Int) ) (! (= (_module.Klef.c2 (|#_module.Klef.C2| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0|)) |a#40#3#0|)
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |585|
 :pattern ( (|#_module.Klef.C2| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0|))
)))
(assert (forall ((|a#41#0#0| Int) (|a#41#1#0| Int) (|a#41#2#0| Int) (|a#41#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C3| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0|)) |##_module.Klef.C3|)
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |586|
 :pattern ( (|#_module.Klef.C3| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0|))
)))
(assert (forall ((|a#45#0#0| Int) (|a#45#1#0| Int) (|a#45#2#0| Int) (|a#45#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C3| |a#45#0#0| |a#45#1#0| |a#45#2#0| |a#45#3#0|)) |a#45#0#0|)
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |596|
 :pattern ( (|#_module.Klef.C3| |a#45#0#0| |a#45#1#0| |a#45#2#0| |a#45#3#0|))
)))
(assert (forall ((|a#46#0#0| Int) (|a#46#1#0| Int) (|a#46#2#0| Int) (|a#46#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C3| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0|)) |a#46#1#0|)
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |597|
 :pattern ( (|#_module.Klef.C3| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0|))
)))
(assert (forall ((|a#47#0#0| Int) (|a#47#1#0| Int) (|a#47#2#0| Int) (|a#47#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C3| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0|)) |a#47#2#0|)
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |598|
 :pattern ( (|#_module.Klef.C3| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0|))
)))
(assert (forall ((|a#48#0#0| Int) (|a#48#1#0| Int) (|a#48#2#0| Int) (|a#48#3#0| Int) ) (! (= (_module.Klef.c3 (|#_module.Klef.C3| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0|)) |a#48#3#0|)
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |599|
 :pattern ( (|#_module.Klef.C3| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Klef#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (|_module.Klef#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Klef.C0_q a@@0) (_module.Klef.C0_q b@@0)) (= (|_module.Klef#Equal| a@@0 b@@0)  (and (and (and (= (_module.Klef._0 a@@0) (_module.Klef._0 b@@0)) (= (_module.Klef._1 a@@0) (_module.Klef._1 b@@0))) (= (_module.Klef._2 a@@0) (_module.Klef._2 b@@0))) (= (_module.Klef.c0 a@@0) (_module.Klef.c0 b@@0)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (|_module.Klef#Equal| a@@0 b@@0) (_module.Klef.C0_q a@@0))
 :pattern ( (|_module.Klef#Equal| a@@0 b@@0) (_module.Klef.C0_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Klef.C1_q a@@1) (_module.Klef.C1_q b@@1)) (= (|_module.Klef#Equal| a@@1 b@@1)  (and (and (and (= (_module.Klef._1 a@@1) (_module.Klef._1 b@@1)) (= (_module.Klef._2 a@@1) (_module.Klef._2 b@@1))) (= (_module.Klef._3 a@@1) (_module.Klef._3 b@@1))) (= (_module.Klef.c1 a@@1) (_module.Klef.c1 b@@1)))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (|_module.Klef#Equal| a@@1 b@@1) (_module.Klef.C1_q a@@1))
 :pattern ( (|_module.Klef#Equal| a@@1 b@@1) (_module.Klef.C1_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Klef.C2_q a@@2) (_module.Klef.C2_q b@@2)) (= (|_module.Klef#Equal| a@@2 b@@2)  (and (and (and (= (_module.Klef._2 a@@2) (_module.Klef._2 b@@2)) (= (_module.Klef._3 a@@2) (_module.Klef._3 b@@2))) (= (_module.Klef._0 a@@2) (_module.Klef._0 b@@2))) (= (_module.Klef.c2 a@@2) (_module.Klef.c2 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (|_module.Klef#Equal| a@@2 b@@2) (_module.Klef.C2_q a@@2))
 :pattern ( (|_module.Klef#Equal| a@@2 b@@2) (_module.Klef.C2_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Klef.C3_q a@@3) (_module.Klef.C3_q b@@3)) (= (|_module.Klef#Equal| a@@3 b@@3)  (and (and (and (= (_module.Klef._3 a@@3) (_module.Klef._3 b@@3)) (= (_module.Klef._0 a@@3) (_module.Klef._0 b@@3))) (= (_module.Klef._1 a@@3) (_module.Klef._1 b@@3))) (= (_module.Klef.c3 a@@3) (_module.Klef.c3 b@@3)))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (|_module.Klef#Equal| a@@3 b@@3) (_module.Klef.C3_q a@@3))
 :pattern ( (|_module.Klef#Equal| a@@3 b@@3) (_module.Klef.C3_q b@@3))
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
(assert (forall ((d T@U) ) (! (= (_module.Klef.C0_q d) (= (DatatypeCtorId d) |##_module.Klef.C0|))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (_module.Klef.C0_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Klef.C1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Klef.C1|))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (_module.Klef.C1_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Klef.C2_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Klef.C2|))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (_module.Klef.C2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Klef.C3_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Klef.C3|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.Klef.C3_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| Int) (|a#20#2#0| Int) (|a#20#3#0| Int) ) (! (= (|#_module.Klef.C0| (LitInt |a#20#0#0|) (LitInt |a#20#1#0|) (LitInt |a#20#2#0|) (LitInt |a#20#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C0| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0|)))
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |553|
 :pattern ( (|#_module.Klef.C0| (LitInt |a#20#0#0|) (LitInt |a#20#1#0|) (LitInt |a#20#2#0|) (LitInt |a#20#3#0|)))
)))
(assert (forall ((|a#28#0#0| Int) (|a#28#1#0| Int) (|a#28#2#0| Int) (|a#28#3#0| Int) ) (! (= (|#_module.Klef.C1| (LitInt |a#28#0#0|) (LitInt |a#28#1#0|) (LitInt |a#28#2#0|) (LitInt |a#28#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C1| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0|)))
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |567|
 :pattern ( (|#_module.Klef.C1| (LitInt |a#28#0#0|) (LitInt |a#28#1#0|) (LitInt |a#28#2#0|) (LitInt |a#28#3#0|)))
)))
(assert (forall ((|a#36#0#0| Int) (|a#36#1#0| Int) (|a#36#2#0| Int) (|a#36#3#0| Int) ) (! (= (|#_module.Klef.C2| (LitInt |a#36#0#0|) (LitInt |a#36#1#0|) (LitInt |a#36#2#0|) (LitInt |a#36#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C2| |a#36#0#0| |a#36#1#0| |a#36#2#0| |a#36#3#0|)))
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |581|
 :pattern ( (|#_module.Klef.C2| (LitInt |a#36#0#0|) (LitInt |a#36#1#0|) (LitInt |a#36#2#0|) (LitInt |a#36#3#0|)))
)))
(assert (forall ((|a#44#0#0| Int) (|a#44#1#0| Int) (|a#44#2#0| Int) (|a#44#3#0| Int) ) (! (= (|#_module.Klef.C3| (LitInt |a#44#0#0|) (LitInt |a#44#1#0|) (LitInt |a#44#2#0|) (LitInt |a#44#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C3| |a#44#0#0| |a#44#1#0| |a#44#2#0| |a#44#3#0|)))
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |595|
 :pattern ( (|#_module.Klef.C3| (LitInt |a#44#0#0|) (LitInt |a#44#1#0|) (LitInt |a#44#2#0|) (LitInt |a#44#3#0|)))
)))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| Int) (|a#19#2#0| Int) (|a#19#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C0| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#19#0#0|) TInt) ($Is intType (int_2_U |a#19#1#0|) TInt)) ($Is intType (int_2_U |a#19#2#0|) TInt)) ($Is intType (int_2_U |a#19#3#0|) TInt)))
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |548|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C0| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#27#0#0| Int) (|a#27#1#0| Int) (|a#27#2#0| Int) (|a#27#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C1| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#27#0#0|) TInt) ($Is intType (int_2_U |a#27#1#0|) TInt)) ($Is intType (int_2_U |a#27#2#0|) TInt)) ($Is intType (int_2_U |a#27#3#0|) TInt)))
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |562|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C1| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#35#0#0| Int) (|a#35#1#0| Int) (|a#35#2#0| Int) (|a#35#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C2| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#35#0#0|) TInt) ($Is intType (int_2_U |a#35#1#0|) TInt)) ($Is intType (int_2_U |a#35#2#0|) TInt)) ($Is intType (int_2_U |a#35#3#0|) TInt)))
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |576|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C2| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#43#0#0| Int) (|a#43#1#0| Int) (|a#43#2#0| Int) (|a#43#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C3| |a#43#0#0| |a#43#1#0| |a#43#2#0| |a#43#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#43#0#0|) TInt) ($Is intType (int_2_U |a#43#1#0|) TInt)) ($Is intType (int_2_U |a#43#2#0|) TInt)) ($Is intType (int_2_U |a#43#3#0|) TInt)))
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |590|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C3| |a#43#0#0| |a#43#1#0| |a#43#2#0| |a#43#3#0|) Tclass._module.Klef))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Klef.C0_q d@@3) (exists ((|a#18#0#0| Int) (|a#18#1#0| Int) (|a#18#2#0| Int) (|a#18#3#0| Int) ) (! (= d@@3 (|#_module.Klef.C0| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0|))
 :qid |SharedDestructorsCompiledfy.40:8|
 :skolemid |546|
)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (_module.Klef.C0_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Klef.C1_q d@@4) (exists ((|a#26#0#0| Int) (|a#26#1#0| Int) (|a#26#2#0| Int) (|a#26#3#0| Int) ) (! (= d@@4 (|#_module.Klef.C1| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0|))
 :qid |SharedDestructorsCompiledfy.41:8|
 :skolemid |560|
)))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (_module.Klef.C1_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Klef.C2_q d@@5) (exists ((|a#34#0#0| Int) (|a#34#1#0| Int) (|a#34#2#0| Int) (|a#34#3#0| Int) ) (! (= d@@5 (|#_module.Klef.C2| |a#34#0#0| |a#34#1#0| |a#34#2#0| |a#34#3#0|))
 :qid |SharedDestructorsCompiledfy.42:8|
 :skolemid |574|
)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.Klef.C2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Klef.C3_q d@@6) (exists ((|a#42#0#0| Int) (|a#42#1#0| Int) (|a#42#2#0| Int) (|a#42#3#0| Int) ) (! (= d@@6 (|#_module.Klef.C3| |a#42#0#0| |a#42#1#0| |a#42#2#0| |a#42#3#0|))
 :qid |SharedDestructorsCompiledfy.43:8|
 :skolemid |588|
)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.Klef.C3_q d@@6))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |671|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Klef.C0_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Klef $h))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@7)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@7)) TInt $h))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Klef.C0_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Klef $h@@0))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@8)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@8)) TInt $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Klef.C0_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Klef $h@@1))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@9)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@9)) TInt $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Klef.C0_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Klef $h@@2))) ($IsAlloc intType (int_2_U (_module.Klef.c0 d@@10)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c0 d@@10)) TInt $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Klef.C1_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Klef $h@@3))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@11)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@11)) TInt $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Klef.C1_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Klef $h@@4))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@12)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@12)) TInt $h@@4))
)))
(assert (forall ((d@@13 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Klef.C1_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Klef $h@@5))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@13)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@13)) TInt $h@@5))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Klef.C1_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Klef $h@@6))) ($IsAlloc intType (int_2_U (_module.Klef.c1 d@@14)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c1 d@@14)) TInt $h@@6))
)))
(assert (forall ((d@@15 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Klef.C2_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Klef $h@@7))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@15)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@15)) TInt $h@@7))
)))
(assert (forall ((d@@16 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Klef.C2_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Klef $h@@8))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@16)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@16)) TInt $h@@8))
)))
(assert (forall ((d@@17 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Klef.C2_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Klef $h@@9))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@17)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@17)) TInt $h@@9))
)))
(assert (forall ((d@@18 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Klef.C2_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Klef $h@@10))) ($IsAlloc intType (int_2_U (_module.Klef.c2 d@@18)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c2 d@@18)) TInt $h@@10))
)))
(assert (forall ((d@@19 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Klef.C3_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Klef $h@@11))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@19)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@19)) TInt $h@@11))
)))
(assert (forall ((d@@20 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Klef.C3_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Klef $h@@12))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@20)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@20)) TInt $h@@12))
)))
(assert (forall ((d@@21 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Klef.C3_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Klef $h@@13))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@21)) TInt $h@@13))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@21)) TInt $h@@13))
)))
(assert (forall ((d@@22 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Klef.C3_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Klef $h@@14))) ($IsAlloc intType (int_2_U (_module.Klef.c3 d@@22)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c3 d@@22)) TInt $h@@14))
)))
(assert (forall ((d@@23 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@23 Tclass._module.Klef)) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Klef $h@@15))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Klef $h@@15))
)))
(assert (= (Tag Tclass._module.Klef) Tagclass._module.Klef))
(assert (= (TagFamily Tclass._module.Klef) tytagFamily$Klef))
(assert (forall ((d@@24 T@U) ) (!  (=> (|$IsA#_module.Klef| d@@24) (or (or (or (_module.Klef.C0_q d@@24) (_module.Klef.C1_q d@@24)) (_module.Klef.C2_q d@@24)) (_module.Klef.C3_q d@@24)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (|$IsA#_module.Klef| d@@24))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> ($Is DatatypeTypeType d@@25 Tclass._module.Klef) (or (or (or (_module.Klef.C0_q d@@25) (_module.Klef.C1_q d@@25)) (_module.Klef.C2_q d@@25)) (_module.Klef.C3_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (_module.Klef.C3_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Klef))
 :pattern ( (_module.Klef.C2_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Klef))
 :pattern ( (_module.Klef.C1_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Klef))
 :pattern ( (_module.Klef.C0_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Klef))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |dt_update#c3#0#Z#0@0| () Int)
(declare-fun |let#2#0#0| () Int)
(declare-fun |dt_update#0#0#Z#0@0| () Int)
(declare-fun |k'#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |k'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.BaseKlef)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (_module.Klef.C3_q |k#0|)) (=> (_module.Klef.C3_q |k#0|) (=> (= |let#0#0#0| |k#0|) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Klef) (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| (LitInt 200)) ($Is intType (int_2_U |let#1#0#0|) TInt))) (and (and (= |dt_update#c3#0#Z#0@0| |let#1#0#0|) (= |let#2#0#0| (LitInt 100))) (and ($Is intType (int_2_U |let#2#0#0|) TInt) (= |dt_update#0#0#Z#0@0| |let#2#0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (or (_module.Klef.C1_q |dt_update_tmp#0#Z#0@0|) (_module.Klef.C2_q |dt_update_tmp#0#Z#0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#0@0|))) (=> (or (or (_module.Klef.C1_q |dt_update_tmp#0#Z#0@0|) (_module.Klef.C2_q |dt_update_tmp#0#Z#0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (or (_module.Klef.C0_q |dt_update_tmp#0#Z#0@0|) (_module.Klef.C1_q |dt_update_tmp#0#Z#0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#0@0|))) (=> (or (or (_module.Klef.C0_q |dt_update_tmp#0#Z#0@0|) (_module.Klef.C1_q |dt_update_tmp#0#Z#0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#0@0|)) (=> (= |k'#0@0| (let ((|dt_update_tmp#0#0| |k#0|))
(let ((|dt_update#c3#0#0| (LitInt 200)))
(let ((|dt_update#0#0#0| (LitInt 100)))
(|#_module.Klef.C3| (_module.Klef._3 |dt_update_tmp#0#0|) |dt_update#0#0#0| (_module.Klef._1 |dt_update_tmp#0#0|) |dt_update#c3#0#0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (or (_module.Klef.C1_q |k#0|) (_module.Klef.C2_q |k#0|)) (_module.Klef.C3_q |k#0|))) (=> (or (or (_module.Klef.C1_q |k#0|) (_module.Klef.C2_q |k#0|)) (_module.Klef.C3_q |k#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (or (_module.Klef.C0_q |k#0|) (_module.Klef.C1_q |k#0|)) (_module.Klef.C3_q |k#0|))) (=> (or (or (_module.Klef.C0_q |k#0|) (_module.Klef.C1_q |k#0|)) (_module.Klef.C3_q |k#0|)) (=> (and (|$IsA#_module.Klef| |k'#0@0|) (= (ControlFlow 0 2) (- 0 1))) (|_module.Klef#Equal| |k'#0@0| (|#_module.Klef.C3| (_module.Klef._3 |k#0|) (LitInt 100) (_module.Klef._1 |k#0|) (LitInt 200))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |k#0| Tclass._module.Klef) ($IsAlloc DatatypeTypeType |k#0| Tclass._module.Klef $Heap)) (|$IsA#_module.Klef| |k#0|)) (=> (and (and (and (and ($Is DatatypeTypeType |k'#0| Tclass._module.Klef) ($IsAlloc DatatypeTypeType |k'#0| Tclass._module.Klef $Heap)) true) (= 1 $FunctionContextHeight)) (and (and (not (_module.Klef.C0_q |k#0|)) (not (_module.Klef.C2_q |k#0|))) (and (not (_module.Klef.C1_q |k#0|)) (= (ControlFlow 0 8) 2)))) anon0_correct)))))
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
