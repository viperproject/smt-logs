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
(assert (forall ((|a#61#0#0| Int) (|a#61#1#0| Int) (|a#61#2#0| Int) (|a#61#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C0| |a#61#0#0| |a#61#1#0| |a#61#2#0| |a#61#3#0|)) |##_module.Klef.C0|)
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |637|
 :pattern ( (|#_module.Klef.C0| |a#61#0#0| |a#61#1#0| |a#61#2#0| |a#61#3#0|))
)))
(assert (forall ((|a#65#0#0| Int) (|a#65#1#0| Int) (|a#65#2#0| Int) (|a#65#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C0| |a#65#0#0| |a#65#1#0| |a#65#2#0| |a#65#3#0|)) |a#65#0#0|)
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |647|
 :pattern ( (|#_module.Klef.C0| |a#65#0#0| |a#65#1#0| |a#65#2#0| |a#65#3#0|))
)))
(assert (forall ((|a#66#0#0| Int) (|a#66#1#0| Int) (|a#66#2#0| Int) (|a#66#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C0| |a#66#0#0| |a#66#1#0| |a#66#2#0| |a#66#3#0|)) |a#66#1#0|)
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |648|
 :pattern ( (|#_module.Klef.C0| |a#66#0#0| |a#66#1#0| |a#66#2#0| |a#66#3#0|))
)))
(assert (forall ((|a#67#0#0| Int) (|a#67#1#0| Int) (|a#67#2#0| Int) (|a#67#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C0| |a#67#0#0| |a#67#1#0| |a#67#2#0| |a#67#3#0|)) |a#67#2#0|)
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |649|
 :pattern ( (|#_module.Klef.C0| |a#67#0#0| |a#67#1#0| |a#67#2#0| |a#67#3#0|))
)))
(assert (forall ((|a#68#0#0| Int) (|a#68#1#0| Int) (|a#68#2#0| Int) (|a#68#3#0| Int) ) (! (= (_module.Klef.c0 (|#_module.Klef.C0| |a#68#0#0| |a#68#1#0| |a#68#2#0| |a#68#3#0|)) |a#68#3#0|)
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |650|
 :pattern ( (|#_module.Klef.C0| |a#68#0#0| |a#68#1#0| |a#68#2#0| |a#68#3#0|))
)))
(assert (forall ((|a#69#0#0| Int) (|a#69#1#0| Int) (|a#69#2#0| Int) (|a#69#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C1| |a#69#0#0| |a#69#1#0| |a#69#2#0| |a#69#3#0|)) |##_module.Klef.C1|)
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |651|
 :pattern ( (|#_module.Klef.C1| |a#69#0#0| |a#69#1#0| |a#69#2#0| |a#69#3#0|))
)))
(assert (forall ((|a#73#0#0| Int) (|a#73#1#0| Int) (|a#73#2#0| Int) (|a#73#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C1| |a#73#0#0| |a#73#1#0| |a#73#2#0| |a#73#3#0|)) |a#73#0#0|)
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |661|
 :pattern ( (|#_module.Klef.C1| |a#73#0#0| |a#73#1#0| |a#73#2#0| |a#73#3#0|))
)))
(assert (forall ((|a#74#0#0| Int) (|a#74#1#0| Int) (|a#74#2#0| Int) (|a#74#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C1| |a#74#0#0| |a#74#1#0| |a#74#2#0| |a#74#3#0|)) |a#74#1#0|)
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |662|
 :pattern ( (|#_module.Klef.C1| |a#74#0#0| |a#74#1#0| |a#74#2#0| |a#74#3#0|))
)))
(assert (forall ((|a#75#0#0| Int) (|a#75#1#0| Int) (|a#75#2#0| Int) (|a#75#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C1| |a#75#0#0| |a#75#1#0| |a#75#2#0| |a#75#3#0|)) |a#75#2#0|)
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |663|
 :pattern ( (|#_module.Klef.C1| |a#75#0#0| |a#75#1#0| |a#75#2#0| |a#75#3#0|))
)))
(assert (forall ((|a#76#0#0| Int) (|a#76#1#0| Int) (|a#76#2#0| Int) (|a#76#3#0| Int) ) (! (= (_module.Klef.c1 (|#_module.Klef.C1| |a#76#0#0| |a#76#1#0| |a#76#2#0| |a#76#3#0|)) |a#76#3#0|)
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |664|
 :pattern ( (|#_module.Klef.C1| |a#76#0#0| |a#76#1#0| |a#76#2#0| |a#76#3#0|))
)))
(assert (forall ((|a#77#0#0| Int) (|a#77#1#0| Int) (|a#77#2#0| Int) (|a#77#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C2| |a#77#0#0| |a#77#1#0| |a#77#2#0| |a#77#3#0|)) |##_module.Klef.C2|)
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |665|
 :pattern ( (|#_module.Klef.C2| |a#77#0#0| |a#77#1#0| |a#77#2#0| |a#77#3#0|))
)))
(assert (forall ((|a#81#0#0| Int) (|a#81#1#0| Int) (|a#81#2#0| Int) (|a#81#3#0| Int) ) (! (= (_module.Klef._2 (|#_module.Klef.C2| |a#81#0#0| |a#81#1#0| |a#81#2#0| |a#81#3#0|)) |a#81#0#0|)
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |675|
 :pattern ( (|#_module.Klef.C2| |a#81#0#0| |a#81#1#0| |a#81#2#0| |a#81#3#0|))
)))
(assert (forall ((|a#82#0#0| Int) (|a#82#1#0| Int) (|a#82#2#0| Int) (|a#82#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C2| |a#82#0#0| |a#82#1#0| |a#82#2#0| |a#82#3#0|)) |a#82#1#0|)
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |676|
 :pattern ( (|#_module.Klef.C2| |a#82#0#0| |a#82#1#0| |a#82#2#0| |a#82#3#0|))
)))
(assert (forall ((|a#83#0#0| Int) (|a#83#1#0| Int) (|a#83#2#0| Int) (|a#83#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C2| |a#83#0#0| |a#83#1#0| |a#83#2#0| |a#83#3#0|)) |a#83#2#0|)
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |677|
 :pattern ( (|#_module.Klef.C2| |a#83#0#0| |a#83#1#0| |a#83#2#0| |a#83#3#0|))
)))
(assert (forall ((|a#84#0#0| Int) (|a#84#1#0| Int) (|a#84#2#0| Int) (|a#84#3#0| Int) ) (! (= (_module.Klef.c2 (|#_module.Klef.C2| |a#84#0#0| |a#84#1#0| |a#84#2#0| |a#84#3#0|)) |a#84#3#0|)
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |678|
 :pattern ( (|#_module.Klef.C2| |a#84#0#0| |a#84#1#0| |a#84#2#0| |a#84#3#0|))
)))
(assert (forall ((|a#85#0#0| Int) (|a#85#1#0| Int) (|a#85#2#0| Int) (|a#85#3#0| Int) ) (! (= (DatatypeCtorId (|#_module.Klef.C3| |a#85#0#0| |a#85#1#0| |a#85#2#0| |a#85#3#0|)) |##_module.Klef.C3|)
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |679|
 :pattern ( (|#_module.Klef.C3| |a#85#0#0| |a#85#1#0| |a#85#2#0| |a#85#3#0|))
)))
(assert (forall ((|a#89#0#0| Int) (|a#89#1#0| Int) (|a#89#2#0| Int) (|a#89#3#0| Int) ) (! (= (_module.Klef._3 (|#_module.Klef.C3| |a#89#0#0| |a#89#1#0| |a#89#2#0| |a#89#3#0|)) |a#89#0#0|)
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |689|
 :pattern ( (|#_module.Klef.C3| |a#89#0#0| |a#89#1#0| |a#89#2#0| |a#89#3#0|))
)))
(assert (forall ((|a#90#0#0| Int) (|a#90#1#0| Int) (|a#90#2#0| Int) (|a#90#3#0| Int) ) (! (= (_module.Klef._0 (|#_module.Klef.C3| |a#90#0#0| |a#90#1#0| |a#90#2#0| |a#90#3#0|)) |a#90#1#0|)
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |690|
 :pattern ( (|#_module.Klef.C3| |a#90#0#0| |a#90#1#0| |a#90#2#0| |a#90#3#0|))
)))
(assert (forall ((|a#91#0#0| Int) (|a#91#1#0| Int) (|a#91#2#0| Int) (|a#91#3#0| Int) ) (! (= (_module.Klef._1 (|#_module.Klef.C3| |a#91#0#0| |a#91#1#0| |a#91#2#0| |a#91#3#0|)) |a#91#2#0|)
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |691|
 :pattern ( (|#_module.Klef.C3| |a#91#0#0| |a#91#1#0| |a#91#2#0| |a#91#3#0|))
)))
(assert (forall ((|a#92#0#0| Int) (|a#92#1#0| Int) (|a#92#2#0| Int) (|a#92#3#0| Int) ) (! (= (_module.Klef.c3 (|#_module.Klef.C3| |a#92#0#0| |a#92#1#0| |a#92#2#0| |a#92#3#0|)) |a#92#3#0|)
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |692|
 :pattern ( (|#_module.Klef.C3| |a#92#0#0| |a#92#1#0| |a#92#2#0| |a#92#3#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Klef#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (|_module.Klef#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Klef.C0_q a@@0) (_module.Klef.C0_q b@@0)) (= (|_module.Klef#Equal| a@@0 b@@0)  (and (and (and (= (_module.Klef._0 a@@0) (_module.Klef._0 b@@0)) (= (_module.Klef._1 a@@0) (_module.Klef._1 b@@0))) (= (_module.Klef._2 a@@0) (_module.Klef._2 b@@0))) (= (_module.Klef.c0 a@@0) (_module.Klef.c0 b@@0)))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( (|_module.Klef#Equal| a@@0 b@@0) (_module.Klef.C0_q a@@0))
 :pattern ( (|_module.Klef#Equal| a@@0 b@@0) (_module.Klef.C0_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Klef.C1_q a@@1) (_module.Klef.C1_q b@@1)) (= (|_module.Klef#Equal| a@@1 b@@1)  (and (and (and (= (_module.Klef._1 a@@1) (_module.Klef._1 b@@1)) (= (_module.Klef._2 a@@1) (_module.Klef._2 b@@1))) (= (_module.Klef._3 a@@1) (_module.Klef._3 b@@1))) (= (_module.Klef.c1 a@@1) (_module.Klef.c1 b@@1)))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (|_module.Klef#Equal| a@@1 b@@1) (_module.Klef.C1_q a@@1))
 :pattern ( (|_module.Klef#Equal| a@@1 b@@1) (_module.Klef.C1_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Klef.C2_q a@@2) (_module.Klef.C2_q b@@2)) (= (|_module.Klef#Equal| a@@2 b@@2)  (and (and (and (= (_module.Klef._2 a@@2) (_module.Klef._2 b@@2)) (= (_module.Klef._3 a@@2) (_module.Klef._3 b@@2))) (= (_module.Klef._0 a@@2) (_module.Klef._0 b@@2))) (= (_module.Klef.c2 a@@2) (_module.Klef.c2 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (|_module.Klef#Equal| a@@2 b@@2) (_module.Klef.C2_q a@@2))
 :pattern ( (|_module.Klef#Equal| a@@2 b@@2) (_module.Klef.C2_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Klef.C3_q a@@3) (_module.Klef.C3_q b@@3)) (= (|_module.Klef#Equal| a@@3 b@@3)  (and (and (and (= (_module.Klef._3 a@@3) (_module.Klef._3 b@@3)) (= (_module.Klef._0 a@@3) (_module.Klef._0 b@@3))) (= (_module.Klef._1 a@@3) (_module.Klef._1 b@@3))) (= (_module.Klef.c3 a@@3) (_module.Klef.c3 b@@3)))))
 :qid |unknown.0:0|
 :skolemid |699|
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
 :skolemid |638|
 :pattern ( (_module.Klef.C0_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Klef.C1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Klef.C1|))
 :qid |unknown.0:0|
 :skolemid |652|
 :pattern ( (_module.Klef.C1_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Klef.C2_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Klef.C2|))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (_module.Klef.C2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Klef.C3_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Klef.C3|))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (_module.Klef.C3_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#64#0#0| Int) (|a#64#1#0| Int) (|a#64#2#0| Int) (|a#64#3#0| Int) ) (! (= (|#_module.Klef.C0| (LitInt |a#64#0#0|) (LitInt |a#64#1#0|) (LitInt |a#64#2#0|) (LitInt |a#64#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C0| |a#64#0#0| |a#64#1#0| |a#64#2#0| |a#64#3#0|)))
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |646|
 :pattern ( (|#_module.Klef.C0| (LitInt |a#64#0#0|) (LitInt |a#64#1#0|) (LitInt |a#64#2#0|) (LitInt |a#64#3#0|)))
)))
(assert (forall ((|a#72#0#0| Int) (|a#72#1#0| Int) (|a#72#2#0| Int) (|a#72#3#0| Int) ) (! (= (|#_module.Klef.C1| (LitInt |a#72#0#0|) (LitInt |a#72#1#0|) (LitInt |a#72#2#0|) (LitInt |a#72#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C1| |a#72#0#0| |a#72#1#0| |a#72#2#0| |a#72#3#0|)))
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |660|
 :pattern ( (|#_module.Klef.C1| (LitInt |a#72#0#0|) (LitInt |a#72#1#0|) (LitInt |a#72#2#0|) (LitInt |a#72#3#0|)))
)))
(assert (forall ((|a#80#0#0| Int) (|a#80#1#0| Int) (|a#80#2#0| Int) (|a#80#3#0| Int) ) (! (= (|#_module.Klef.C2| (LitInt |a#80#0#0|) (LitInt |a#80#1#0|) (LitInt |a#80#2#0|) (LitInt |a#80#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C2| |a#80#0#0| |a#80#1#0| |a#80#2#0| |a#80#3#0|)))
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |674|
 :pattern ( (|#_module.Klef.C2| (LitInt |a#80#0#0|) (LitInt |a#80#1#0|) (LitInt |a#80#2#0|) (LitInt |a#80#3#0|)))
)))
(assert (forall ((|a#88#0#0| Int) (|a#88#1#0| Int) (|a#88#2#0| Int) (|a#88#3#0| Int) ) (! (= (|#_module.Klef.C3| (LitInt |a#88#0#0|) (LitInt |a#88#1#0|) (LitInt |a#88#2#0|) (LitInt |a#88#3#0|)) (Lit DatatypeTypeType (|#_module.Klef.C3| |a#88#0#0| |a#88#1#0| |a#88#2#0| |a#88#3#0|)))
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |688|
 :pattern ( (|#_module.Klef.C3| (LitInt |a#88#0#0|) (LitInt |a#88#1#0|) (LitInt |a#88#2#0|) (LitInt |a#88#3#0|)))
)))
(assert (forall ((|a#63#0#0| Int) (|a#63#1#0| Int) (|a#63#2#0| Int) (|a#63#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C0| |a#63#0#0| |a#63#1#0| |a#63#2#0| |a#63#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#63#0#0|) TInt) ($Is intType (int_2_U |a#63#1#0|) TInt)) ($Is intType (int_2_U |a#63#2#0|) TInt)) ($Is intType (int_2_U |a#63#3#0|) TInt)))
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |641|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C0| |a#63#0#0| |a#63#1#0| |a#63#2#0| |a#63#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#71#0#0| Int) (|a#71#1#0| Int) (|a#71#2#0| Int) (|a#71#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C1| |a#71#0#0| |a#71#1#0| |a#71#2#0| |a#71#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#71#0#0|) TInt) ($Is intType (int_2_U |a#71#1#0|) TInt)) ($Is intType (int_2_U |a#71#2#0|) TInt)) ($Is intType (int_2_U |a#71#3#0|) TInt)))
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |655|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C1| |a#71#0#0| |a#71#1#0| |a#71#2#0| |a#71#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#79#0#0| Int) (|a#79#1#0| Int) (|a#79#2#0| Int) (|a#79#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C2| |a#79#0#0| |a#79#1#0| |a#79#2#0| |a#79#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#79#0#0|) TInt) ($Is intType (int_2_U |a#79#1#0|) TInt)) ($Is intType (int_2_U |a#79#2#0|) TInt)) ($Is intType (int_2_U |a#79#3#0|) TInt)))
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |669|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C2| |a#79#0#0| |a#79#1#0| |a#79#2#0| |a#79#3#0|) Tclass._module.Klef))
)))
(assert (forall ((|a#87#0#0| Int) (|a#87#1#0| Int) (|a#87#2#0| Int) (|a#87#3#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Klef.C3| |a#87#0#0| |a#87#1#0| |a#87#2#0| |a#87#3#0|) Tclass._module.Klef)  (and (and (and ($Is intType (int_2_U |a#87#0#0|) TInt) ($Is intType (int_2_U |a#87#1#0|) TInt)) ($Is intType (int_2_U |a#87#2#0|) TInt)) ($Is intType (int_2_U |a#87#3#0|) TInt)))
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |683|
 :pattern ( ($Is DatatypeTypeType (|#_module.Klef.C3| |a#87#0#0| |a#87#1#0| |a#87#2#0| |a#87#3#0|) Tclass._module.Klef))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Klef.C0_q d@@3) (exists ((|a#62#0#0| Int) (|a#62#1#0| Int) (|a#62#2#0| Int) (|a#62#3#0| Int) ) (! (= d@@3 (|#_module.Klef.C0| |a#62#0#0| |a#62#1#0| |a#62#2#0| |a#62#3#0|))
 :qid |SharedDestructorsdfy.111:8|
 :skolemid |639|
)))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (_module.Klef.C0_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Klef.C1_q d@@4) (exists ((|a#70#0#0| Int) (|a#70#1#0| Int) (|a#70#2#0| Int) (|a#70#3#0| Int) ) (! (= d@@4 (|#_module.Klef.C1| |a#70#0#0| |a#70#1#0| |a#70#2#0| |a#70#3#0|))
 :qid |SharedDestructorsdfy.112:8|
 :skolemid |653|
)))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (_module.Klef.C1_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Klef.C2_q d@@5) (exists ((|a#78#0#0| Int) (|a#78#1#0| Int) (|a#78#2#0| Int) (|a#78#3#0| Int) ) (! (= d@@5 (|#_module.Klef.C2| |a#78#0#0| |a#78#1#0| |a#78#2#0| |a#78#3#0|))
 :qid |SharedDestructorsdfy.113:8|
 :skolemid |667|
)))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (_module.Klef.C2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Klef.C3_q d@@6) (exists ((|a#86#0#0| Int) (|a#86#1#0| Int) (|a#86#2#0| Int) (|a#86#3#0| Int) ) (! (= d@@6 (|#_module.Klef.C3| |a#86#0#0| |a#86#1#0| |a#86#2#0| |a#86#3#0|))
 :qid |SharedDestructorsdfy.114:8|
 :skolemid |681|
)))
 :qid |unknown.0:0|
 :skolemid |682|
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
 :skolemid |769|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Klef.C0_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Klef $h))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@7)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@7)) TInt $h))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Klef.C0_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Klef $h@@0))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@8)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@8)) TInt $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Klef.C0_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Klef $h@@1))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@9)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@9)) TInt $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Klef.C0_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Klef $h@@2))) ($IsAlloc intType (int_2_U (_module.Klef.c0 d@@10)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c0 d@@10)) TInt $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Klef.C1_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Klef $h@@3))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@11)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@11)) TInt $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Klef.C1_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Klef $h@@4))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@12)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@12)) TInt $h@@4))
)))
(assert (forall ((d@@13 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Klef.C1_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Klef $h@@5))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@13)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@13)) TInt $h@@5))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Klef.C1_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Klef $h@@6))) ($IsAlloc intType (int_2_U (_module.Klef.c1 d@@14)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c1 d@@14)) TInt $h@@6))
)))
(assert (forall ((d@@15 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Klef.C2_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Klef $h@@7))) ($IsAlloc intType (int_2_U (_module.Klef._2 d@@15)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._2 d@@15)) TInt $h@@7))
)))
(assert (forall ((d@@16 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Klef.C2_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Klef $h@@8))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@16)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@16)) TInt $h@@8))
)))
(assert (forall ((d@@17 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Klef.C2_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Klef $h@@9))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@17)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@17)) TInt $h@@9))
)))
(assert (forall ((d@@18 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Klef.C2_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Klef $h@@10))) ($IsAlloc intType (int_2_U (_module.Klef.c2 d@@18)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c2 d@@18)) TInt $h@@10))
)))
(assert (forall ((d@@19 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Klef.C3_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Klef $h@@11))) ($IsAlloc intType (int_2_U (_module.Klef._3 d@@19)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._3 d@@19)) TInt $h@@11))
)))
(assert (forall ((d@@20 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Klef.C3_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Klef $h@@12))) ($IsAlloc intType (int_2_U (_module.Klef._0 d@@20)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._0 d@@20)) TInt $h@@12))
)))
(assert (forall ((d@@21 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Klef.C3_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Klef $h@@13))) ($IsAlloc intType (int_2_U (_module.Klef._1 d@@21)) TInt $h@@13))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef._1 d@@21)) TInt $h@@13))
)))
(assert (forall ((d@@22 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Klef.C3_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Klef $h@@14))) ($IsAlloc intType (int_2_U (_module.Klef.c3 d@@22)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Klef.c3 d@@22)) TInt $h@@14))
)))
(assert (forall ((d@@23 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@23 Tclass._module.Klef)) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Klef $h@@15))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Klef $h@@15))
)))
(assert (= (Tag Tclass._module.Klef) Tagclass._module.Klef))
(assert (= (TagFamily Tclass._module.Klef) tytagFamily$Klef))
(assert (forall ((d@@24 T@U) ) (!  (=> (|$IsA#_module.Klef| d@@24) (or (or (or (_module.Klef.C0_q d@@24) (_module.Klef.C1_q d@@24)) (_module.Klef.C2_q d@@24)) (_module.Klef.C3_q d@@24)))
 :qid |unknown.0:0|
 :skolemid |694|
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
 :skolemid |695|
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
(declare-fun |k'#0@2| () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#1#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |dt_update#c3#1#Z#0_0@0| () Int)
(declare-fun |let#0_2#0#0| () Int)
(declare-fun |dt_update#0#1#Z#0_0@0| () Int)
(declare-fun |k'#0@1| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#1_0@0| () T@U)
(declare-fun |let#1_1#0#0| () Int)
(declare-fun |dt_update#c3#0#Z#1_0@0| () Int)
(declare-fun |let#1_2#0#0| () Int)
(declare-fun |dt_update#0#0#Z#1_0@0| () Int)
(declare-fun |k'#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |k'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TroubleKlef)
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
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (_module.Klef.C3_q |k'#0@2|))))
(let ((anon5_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 15)) (_module.Klef.C3_q |k#0|)) (=> (_module.Klef.C3_q |k#0|) (=> (= |let#0_0#0#0| |k#0|) (=> (and (and (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Klef) (= |dt_update_tmp#1#Z#0_0@0| |let#0_0#0#0|)) (and (= |let#0_1#0#0| (LitInt 200)) ($Is intType (int_2_U |let#0_1#0#0|) TInt))) (and (and (= |dt_update#c3#1#Z#0_0@0| |let#0_1#0#0|) (= |let#0_2#0#0| (LitInt 100))) (and ($Is intType (int_2_U |let#0_2#0#0|) TInt) (= |dt_update#0#1#Z#0_0@0| |let#0_2#0#0|)))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (or (_module.Klef.C1_q |dt_update_tmp#1#Z#0_0@0|) (_module.Klef.C2_q |dt_update_tmp#1#Z#0_0@0|)) (_module.Klef.C3_q |dt_update_tmp#1#Z#0_0@0|))) (=> (or (or (_module.Klef.C1_q |dt_update_tmp#1#Z#0_0@0|) (_module.Klef.C2_q |dt_update_tmp#1#Z#0_0@0|)) (_module.Klef.C3_q |dt_update_tmp#1#Z#0_0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (or (_module.Klef.C0_q |dt_update_tmp#1#Z#0_0@0|) (_module.Klef.C1_q |dt_update_tmp#1#Z#0_0@0|)) (_module.Klef.C3_q |dt_update_tmp#1#Z#0_0@0|))) (=> (or (or (_module.Klef.C0_q |dt_update_tmp#1#Z#0_0@0|) (_module.Klef.C1_q |dt_update_tmp#1#Z#0_0@0|)) (_module.Klef.C3_q |dt_update_tmp#1#Z#0_0@0|)) (=> (= |k'#0@1| (let ((|dt_update_tmp#1#0_0| |k#0|))
(let ((|dt_update#c3#1#0_0| (LitInt 200)))
(let ((|dt_update#0#1#0_0| (LitInt 100)))
(|#_module.Klef.C3| (_module.Klef._3 |dt_update_tmp#1#0_0|) |dt_update#0#1#0_0| (_module.Klef._1 |dt_update_tmp#1#0_0|) |dt_update#c3#1#0_0|))))) (=> (and (= |k'#0@2| |k'#0@1|) (= (ControlFlow 0 12) 4)) GeneratedUnifiedExit_correct))))))))))))
(let ((anon4_Then_correct  (=> (_module.Klef.C3_q |k#0|) (and (=> (= (ControlFlow 0 5) (- 0 11)) (_module.Klef.C3_q |k#0|)) (=> (_module.Klef.C3_q |k#0|) (=> (= |let#1_0#0#0| |k#0|) (=> (and (and (and ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.Klef) (= |dt_update_tmp#0#Z#1_0@0| |let#1_0#0#0|)) (and (= |let#1_1#0#0| (LitInt 200)) ($Is intType (int_2_U |let#1_1#0#0|) TInt))) (and (and (= |dt_update#c3#0#Z#1_0@0| |let#1_1#0#0|) (= |let#1_2#0#0| (LitInt 100))) (and ($Is intType (int_2_U |let#1_2#0#0|) TInt) (= |dt_update#0#0#Z#1_0@0| |let#1_2#0#0|)))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (or (_module.Klef.C1_q |dt_update_tmp#0#Z#1_0@0|) (_module.Klef.C2_q |dt_update_tmp#0#Z#1_0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#1_0@0|))) (=> (or (or (_module.Klef.C1_q |dt_update_tmp#0#Z#1_0@0|) (_module.Klef.C2_q |dt_update_tmp#0#Z#1_0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#1_0@0|)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (or (or (_module.Klef.C0_q |dt_update_tmp#0#Z#1_0@0|) (_module.Klef.C1_q |dt_update_tmp#0#Z#1_0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#1_0@0|))) (=> (or (or (_module.Klef.C0_q |dt_update_tmp#0#Z#1_0@0|) (_module.Klef.C1_q |dt_update_tmp#0#Z#1_0@0|)) (_module.Klef.C3_q |dt_update_tmp#0#Z#1_0@0|)) (=> (= |k'#0@0| (let ((|dt_update_tmp#0#1_0| |k#0|))
(let ((|dt_update#c3#0#1_0| (LitInt 200)))
(let ((|dt_update#0#0#1_0| (LitInt 100)))
(|#_module.Klef.C3| (_module.Klef._3 |dt_update_tmp#0#1_0|) |dt_update#0#0#1_0| (_module.Klef._1 |dt_update_tmp#0#1_0|) |dt_update#c3#0#1_0|))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (or (_module.Klef.C1_q |k#0|) (_module.Klef.C2_q |k#0|)) (_module.Klef.C3_q |k#0|))) (=> (or (or (_module.Klef.C1_q |k#0|) (_module.Klef.C2_q |k#0|)) (_module.Klef.C3_q |k#0|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (or (_module.Klef.C0_q |k#0|) (_module.Klef.C1_q |k#0|)) (_module.Klef.C3_q |k#0|))) (=> (or (or (_module.Klef.C0_q |k#0|) (_module.Klef.C1_q |k#0|)) (_module.Klef.C3_q |k#0|)) (=> (|$IsA#_module.Klef| |k'#0@0|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|_module.Klef#Equal| |k'#0@0| (|#_module.Klef.C3| (_module.Klef._3 |k#0|) (LitInt 100) (_module.Klef._1 |k#0|) (LitInt 200)))) (=> (|_module.Klef#Equal| |k'#0@0| (|#_module.Klef.C3| (_module.Klef._3 |k#0|) (LitInt 100) (_module.Klef._1 |k#0|) (LitInt 200))) (=> (and (= |k'#0@2| |k'#0@0|) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))))))))))))))))))
(let ((anon5_Else_correct  (=> (and (and (not (_module.Klef.C3_q |k#0|)) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 5) anon4_Then_correct) (=> (= (ControlFlow 0 16) 12) anon5_Then_correct)) (=> (= (ControlFlow 0 16) 2) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |k#0| Tclass._module.Klef) ($IsAlloc DatatypeTypeType |k#0| Tclass._module.Klef $Heap)) (|$IsA#_module.Klef| |k#0|)) (and (and ($Is DatatypeTypeType |k'#0| Tclass._module.Klef) ($IsAlloc DatatypeTypeType |k'#0| Tclass._module.Klef $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 17) 16)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 15))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
