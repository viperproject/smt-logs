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
(declare-fun Tagclass.MatchInCalc__Module.T () T@U)
(declare-fun |##MatchInCalc_Module.T.Leaf| () T@U)
(declare-fun |##MatchInCalc_Module.T.Node| () T@U)
(declare-fun tytagFamily$T () T@U)
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
(declare-fun |MatchInCalc__Module.T#Equal| (T@U T@U) Bool)
(declare-fun MatchInCalc__Module.T.Leaf_q (T@U) Bool)
(declare-fun MatchInCalc__Module.T.h (T@U) Int)
(declare-fun MatchInCalc__Module.T.Node_q (T@U) Bool)
(declare-fun MatchInCalc__Module.T.g (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun MatchInCalc__Module.__default.F (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |MatchInCalc__Module.__default.F#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.MatchInCalc__Module.T () T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#MatchInCalc_Module.T.Leaf| (Int) T@U)
(declare-fun |#MatchInCalc_Module.T.Node| (Int) T@U)
(declare-fun |$IsA#MatchInCalc__Module.T| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.MatchInCalc__Module.T |##MatchInCalc_Module.T.Leaf| |##MatchInCalc_Module.T.Node| tytagFamily$T)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (MatchInCalc__Module.T.Leaf_q a) (MatchInCalc__Module.T.Leaf_q b)) (= (|MatchInCalc__Module.T#Equal| a b) (= (MatchInCalc__Module.T.h a) (MatchInCalc__Module.T.h b))))
 :qid |unknown.0:0|
 :skolemid |1162|
 :pattern ( (|MatchInCalc__Module.T#Equal| a b) (MatchInCalc__Module.T.Leaf_q a))
 :pattern ( (|MatchInCalc__Module.T#Equal| a b) (MatchInCalc__Module.T.Leaf_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (MatchInCalc__Module.T.Node_q a@@0) (MatchInCalc__Module.T.Node_q b@@0)) (= (|MatchInCalc__Module.T#Equal| a@@0 b@@0) (= (MatchInCalc__Module.T.g a@@0) (MatchInCalc__Module.T.g b@@0))))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (|MatchInCalc__Module.T#Equal| a@@0 b@@0) (MatchInCalc__Module.T.Node_q a@@0))
 :pattern ( (|MatchInCalc__Module.T#Equal| a@@0 b@@0) (MatchInCalc__Module.T.Node_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|MatchInCalc__Module.T#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1164|
 :pattern ( (|MatchInCalc__Module.T#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |623|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |621|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|MatchInCalc__Module.__default.F#canCall| (Lit DatatypeTypeType |t#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass.MatchInCalc__Module.T))) (= (MatchInCalc__Module.__default.F (Lit DatatypeTypeType |t#0|)) (ite (MatchInCalc__Module.T.Leaf_q (Lit DatatypeTypeType |t#0|)) (let ((|r0#2| (LitInt (MatchInCalc__Module.T.h (Lit DatatypeTypeType |t#0|)))))
|r0#2|) (let ((|r1#2| (LitInt (MatchInCalc__Module.T.g (Lit DatatypeTypeType |t#0|)))))
(LitInt (Mul (LitInt 2) |r1#2|))))))
 :qid |NestedMatchdfy.67:20|
 :weight 3
 :skolemid |1142|
 :pattern ( (MatchInCalc__Module.__default.F (Lit DatatypeTypeType |t#0|)))
))))
(assert (forall ((d T@U) ) (! (= (MatchInCalc__Module.T.Leaf_q d) (= (DatatypeCtorId d) |##MatchInCalc_Module.T.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1144|
 :pattern ( (MatchInCalc__Module.T.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (MatchInCalc__Module.T.Node_q d@@0) (= (DatatypeCtorId d@@0) |##MatchInCalc_Module.T.Node|))
 :qid |unknown.0:0|
 :skolemid |1152|
 :pattern ( (MatchInCalc__Module.T.Node_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |632|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (MatchInCalc__Module.T.Leaf_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#MatchInCalc_Module.T.Leaf| |a#1#0#0|))
 :qid |NestedMatchdfy.64:21|
 :skolemid |1145|
)))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (MatchInCalc__Module.T.Leaf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (MatchInCalc__Module.T.Node_q d@@2) (exists ((|a#6#0#0| Int) ) (! (= d@@2 (|#MatchInCalc_Module.T.Node| |a#6#0#0|))
 :qid |NestedMatchdfy.64:36|
 :skolemid |1153|
)))
 :qid |unknown.0:0|
 :skolemid |1154|
 :pattern ( (MatchInCalc__Module.T.Node_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#MatchInCalc__Module.T| d@@3) (or (MatchInCalc__Module.T.Leaf_q d@@3) (MatchInCalc__Module.T.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1160|
 :pattern ( (|$IsA#MatchInCalc__Module.T| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.MatchInCalc__Module.T) (or (MatchInCalc__Module.T.Leaf_q d@@4) (MatchInCalc__Module.T.Node_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1161|
 :pattern ( (MatchInCalc__Module.T.Node_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.MatchInCalc__Module.T))
 :pattern ( (MatchInCalc__Module.T.Leaf_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.MatchInCalc__Module.T))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#MatchInCalc_Module.T.Leaf| |a#0#0#0|)) |##MatchInCalc_Module.T.Leaf|)
 :qid |NestedMatchdfy.64:21|
 :skolemid |1143|
 :pattern ( (|#MatchInCalc_Module.T.Leaf| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (MatchInCalc__Module.T.h (|#MatchInCalc_Module.T.Leaf| |a#4#0#0|)) |a#4#0#0|)
 :qid |NestedMatchdfy.64:21|
 :skolemid |1150|
 :pattern ( (|#MatchInCalc_Module.T.Leaf| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Int) ) (! (= (DatatypeCtorId (|#MatchInCalc_Module.T.Node| |a#5#0#0|)) |##MatchInCalc_Module.T.Node|)
 :qid |NestedMatchdfy.64:36|
 :skolemid |1151|
 :pattern ( (|#MatchInCalc_Module.T.Node| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (MatchInCalc__Module.T.g (|#MatchInCalc_Module.T.Node| |a#9#0#0|)) |a#9#0#0|)
 :qid |NestedMatchdfy.64:36|
 :skolemid |1158|
 :pattern ( (|#MatchInCalc_Module.T.Node| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |631|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@0| T@U) ) (!  (=> (or (|MatchInCalc__Module.__default.F#canCall| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass.MatchInCalc__Module.T))) (= (MatchInCalc__Module.__default.F |t#0@@0|) (ite (MatchInCalc__Module.T.Leaf_q |t#0@@0|) (let ((|r0#0| (MatchInCalc__Module.T.h |t#0@@0|)))
|r0#0|) (let ((|r1#0| (MatchInCalc__Module.T.g |t#0@@0|)))
(Mul (LitInt 2) |r1#0|)))))
 :qid |NestedMatchdfy.67:20|
 :skolemid |1141|
 :pattern ( (MatchInCalc__Module.__default.F |t#0@@0|))
))))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#MatchInCalc_Module.T.Leaf| |a#2#0#0|) Tclass.MatchInCalc__Module.T) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |NestedMatchdfy.64:21|
 :skolemid |1147|
 :pattern ( ($Is DatatypeTypeType (|#MatchInCalc_Module.T.Leaf| |a#2#0#0|) Tclass.MatchInCalc__Module.T))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#MatchInCalc_Module.T.Node| |a#7#0#0|) Tclass.MatchInCalc__Module.T) ($Is intType (int_2_U |a#7#0#0|) TInt))
 :qid |NestedMatchdfy.64:36|
 :skolemid |1155|
 :pattern ( ($Is DatatypeTypeType (|#MatchInCalc_Module.T.Node| |a#7#0#0|) Tclass.MatchInCalc__Module.T))
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
 :skolemid |1165|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (MatchInCalc__Module.T.Leaf_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.MatchInCalc__Module.T $h))) ($IsAlloc intType (int_2_U (MatchInCalc__Module.T.h d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( ($IsAlloc intType (int_2_U (MatchInCalc__Module.T.h d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (MatchInCalc__Module.T.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.MatchInCalc__Module.T $h@@0))) ($IsAlloc intType (int_2_U (MatchInCalc__Module.T.g d@@6)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($IsAlloc intType (int_2_U (MatchInCalc__Module.T.g d@@6)) TInt $h@@0))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |944|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@7 Tclass.MatchInCalc__Module.T)) ($IsAlloc DatatypeTypeType d@@7 Tclass.MatchInCalc__Module.T $h@@1))
 :qid |unknown.0:0|
 :skolemid |1159|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.MatchInCalc__Module.T $h@@1))
)))
(assert (= (Tag Tclass.MatchInCalc__Module.T) Tagclass.MatchInCalc__Module.T))
(assert (= (TagFamily Tclass.MatchInCalc__Module.T) tytagFamily$T))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |624|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#MatchInCalc_Module.T.Leaf| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#MatchInCalc_Module.T.Leaf| |a#3#0#0|)))
 :qid |NestedMatchdfy.64:21|
 :skolemid |1149|
 :pattern ( (|#MatchInCalc_Module.T.Leaf| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (|#MatchInCalc_Module.T.Node| (LitInt |a#8#0#0|)) (Lit DatatypeTypeType (|#MatchInCalc_Module.T.Node| |a#8#0#0|)))
 :qid |NestedMatchdfy.64:36|
 :skolemid |1157|
 :pattern ( (|#MatchInCalc_Module.T.Node| (LitInt |a#8#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |622|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |667|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |646|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@1| () T@U)
(declare-fun |_mcc#1#0_1_0| () Int)
(declare-fun |let#0_2_0#0#0| () Int)
(declare-fun |s1#Z#0_2_0@0| () Int)
(declare-fun |_mcc#0#0_1_0| () Int)
(declare-fun |let#0_2_1#0#0| () Int)
(declare-fun |s0#Z#0_2_0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |_mcc#3#0_0_0| () Int)
(declare-fun |let#0_0_0#0#0| () Int)
(declare-fun |s1#Z#0_0_0@0| () Int)
(declare-fun |_mcc#2#0_0_0| () Int)
(declare-fun |let#0_0_1#0#0| () Int)
(declare-fun |s0#Z#0_0_0@0| () Int)
(declare-fun |let#0_1_2#0#0| () Int)
(declare-fun |s1#Z#0_1_1@0| () Int)
(declare-fun |let#0_1_3#0#0| () Int)
(declare-fun |s0#Z#0_1_1@0| () Int)
(declare-fun |let#0_1_0#0#0| () Int)
(declare-fun |s1#Z#0_1_0@0| () Int)
(declare-fun |let#0_1_1#0#0| () Int)
(declare-fun |s0#Z#0_1_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$MatchInCalc__Module.__default.FunctionY)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon6_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (= (= (MatchInCalc__Module.__default.F |t#0@@1|) (LitInt 11)) (= (ite (MatchInCalc__Module.T.Leaf_q |t#0@@1|) (let ((|s0#0_2_2| (MatchInCalc__Module.T.h |t#0@@1|)))
|s0#0_2_2|) (let ((|s1#0_2_2| (MatchInCalc__Module.T.g |t#0@@1|)))
(Mul (LitInt 2) |s1#0_2_2|))) (LitInt 11))))))
(let ((anon25_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Node| |_mcc#1#0_1_0|)) (=> (and (and (= |let#0_2_0#0#0| |_mcc#1#0_1_0|) ($Is intType (int_2_U |let#0_2_0#0#0|) TInt)) (and (= |s1#Z#0_2_0@0| |let#0_2_0#0#0|) (= (ControlFlow 0 24) 22))) anon6_correct))))
(let ((anon24_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#0#0_1_0|)) (=> (and (and (= |let#0_2_1#0#0| |_mcc#0#0_1_0|) ($Is intType (int_2_U |let#0_2_1#0#0|) TInt)) (and (= |s0#Z#0_2_0@0| |let#0_2_1#0#0|) (= (ControlFlow 0 23) 22))) anon6_correct))))
(let ((anon25_Else_correct true))
(let ((anon24_Else_correct  (=> (or (not (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#0#0_1_0|))) (not true)) (and (=> (= (ControlFlow 0 25) 24) anon25_Then_correct) (=> (= (ControlFlow 0 25) 20) anon25_Else_correct)))))
(let ((anon23_Then_correct  (=> ($IsAlloc DatatypeTypeType |t#0@@1| Tclass.MatchInCalc__Module.T $Heap) (=> (and (|MatchInCalc__Module.__default.F#canCall| |t#0@@1|) (|MatchInCalc__Module.__default.F#canCall| |t#0@@1|)) (and (=> (= (ControlFlow 0 26) 23) anon24_Then_correct) (=> (= (ControlFlow 0 26) 25) anon24_Else_correct))))))
(let ((anon20_correct  (=> (and (|$IsA#MatchInCalc__Module.T| |t#0@@1|) (= (ControlFlow 0 16) (- 0 15))) (= (ite (MatchInCalc__Module.T.Leaf_q |t#0@@1|) (let ((|s0#0_0_2| (MatchInCalc__Module.T.h |t#0@@1|)))
(= |s0#0_0_2| (LitInt 11))) (let ((|s1#0_0_2| (MatchInCalc__Module.T.g |t#0@@1|)))
(= (Mul (LitInt 2) |s1#0_0_2|) (LitInt 11)))) (|MatchInCalc__Module.T#Equal| |t#0@@1| (|#MatchInCalc_Module.T.Leaf| (LitInt 11)))))))
(let ((anon33_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Node| |_mcc#3#0_0_0|)) (=> (and (and (= |let#0_0_0#0#0| |_mcc#3#0_0_0|) ($Is intType (int_2_U |let#0_0_0#0#0|) TInt)) (and (= |s1#Z#0_0_0@0| |let#0_0_0#0#0|) (= (ControlFlow 0 18) 16))) anon20_correct))))
(let ((anon32_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#2#0_0_0|)) (=> (and (and (= |let#0_0_1#0#0| |_mcc#2#0_0_0|) ($Is intType (int_2_U |let#0_0_1#0#0|) TInt)) (and (= |s0#Z#0_0_0@0| |let#0_0_1#0#0|) (= (ControlFlow 0 17) 16))) anon20_correct))))
(let ((anon33_Else_correct true))
(let ((anon32_Else_correct  (=> (or (not (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#2#0_0_0|))) (not true)) (and (=> (= (ControlFlow 0 19) 18) anon33_Then_correct) (=> (= (ControlFlow 0 19) 14) anon33_Else_correct)))))
(let ((anon15_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= (= (ite (MatchInCalc__Module.T.Leaf_q |t#0@@1|) (let ((|s0#0_1_4| (MatchInCalc__Module.T.h |t#0@@1|)))
|s0#0_1_4|) (let ((|s1#0_1_4| (MatchInCalc__Module.T.g |t#0@@1|)))
(Mul (LitInt 2) |s1#0_1_4|))) (LitInt 11)) (ite (MatchInCalc__Module.T.Leaf_q |t#0@@1|) (let ((|s0#0_1_5| (MatchInCalc__Module.T.h |t#0@@1|)))
(= |s0#0_1_5| (LitInt 11))) (let ((|s1#0_1_5| (MatchInCalc__Module.T.g |t#0@@1|)))
(= (Mul (LitInt 2) |s1#0_1_5|) (LitInt 11))))))))
(let ((anon30_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Node| |_mcc#3#0_0_0|)) (=> (and (and (= |let#0_1_2#0#0| |_mcc#3#0_0_0|) ($Is intType (int_2_U |let#0_1_2#0#0|) TInt)) (and (= |s1#Z#0_1_1@0| |let#0_1_2#0#0|) (= (ControlFlow 0 8) 6))) anon15_correct))))
(let ((anon29_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#2#0_0_0|)) (=> (and (and (= |let#0_1_3#0#0| |_mcc#2#0_0_0|) ($Is intType (int_2_U |let#0_1_3#0#0|) TInt)) (and (= |s0#Z#0_1_1@0| |let#0_1_3#0#0|) (= (ControlFlow 0 7) 6))) anon15_correct))))
(let ((anon30_Else_correct true))
(let ((anon29_Else_correct  (=> (or (not (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#2#0_0_0|))) (not true)) (and (=> (= (ControlFlow 0 9) 8) anon30_Then_correct) (=> (= (ControlFlow 0 9) 4) anon30_Else_correct)))))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 10) 7) anon29_Then_correct) (=> (= (ControlFlow 0 10) 9) anon29_Else_correct))))
(let ((anon28_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Node| |_mcc#1#0_1_0|)) (=> (and (and (= |let#0_1_0#0#0| |_mcc#1#0_1_0|) ($Is intType (int_2_U |let#0_1_0#0#0|) TInt)) (and (= |s1#Z#0_1_0@0| |let#0_1_0#0#0|) (= (ControlFlow 0 12) 10))) anon11_correct))))
(let ((anon27_Then_correct  (=> (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#0#0_1_0|)) (=> (and (and (= |let#0_1_1#0#0| |_mcc#0#0_1_0|) ($Is intType (int_2_U |let#0_1_1#0#0|) TInt)) (and (= |s0#Z#0_1_0@0| |let#0_1_1#0#0|) (= (ControlFlow 0 11) 10))) anon11_correct))))
(let ((anon28_Else_correct true))
(let ((anon27_Else_correct  (=> (or (not (= |t#0@@1| (|#MatchInCalc_Module.T.Leaf| |_mcc#0#0_1_0|))) (not true)) (and (=> (= (ControlFlow 0 13) 12) anon28_Then_correct) (=> (= (ControlFlow 0 13) 3) anon28_Else_correct)))))
(let ((anon31_Else_correct true))
(let ((anon22_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (=> (= (ControlFlow 0 27) 1) anon22_Then_correct) (=> (= (ControlFlow 0 27) 26) anon23_Then_correct)) (=> (= (ControlFlow 0 27) 2) anon31_Else_correct)) (=> (= (ControlFlow 0 27) 17) anon32_Then_correct)) (=> (= (ControlFlow 0 27) 19) anon32_Else_correct)) (=> (= (ControlFlow 0 27) 11) anon27_Then_correct)) (=> (= (ControlFlow 0 27) 13) anon27_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |t#0@@1| Tclass.MatchInCalc__Module.T) ($IsAlloc DatatypeTypeType |t#0@@1| Tclass.MatchInCalc__Module.T $Heap)) (|$IsA#MatchInCalc__Module.T| |t#0@@1|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 28) 27))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
