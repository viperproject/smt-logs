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
(declare-fun alloc () T@U)
(declare-fun Tagclass.LitLet.Nat () T@U)
(declare-fun |##LitLet.Nat.O| () T@U)
(declare-fun |##LitLet.Nat.S| () T@U)
(declare-fun tytagFamily$Nat () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun LitLet.__default.mult (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |LitLet.__default.mult#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.LitLet.Nat () T@U)
(declare-fun LitLet.Nat.O_q (T@U) Bool)
(declare-fun LitLet.Nat.pred (T@U) T@U)
(declare-fun |LitLet.__default.plus#canCall| (T@U T@U) Bool)
(declare-fun |#LitLet.Nat.O| () T@U)
(declare-fun LitLet.__default.plus (T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitLet.Nat.S_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#LitLet.Nat.S| (T@U) T@U)
(declare-fun LitLet.__default.factorial (T@U T@U) T@U)
(declare-fun |LitLet.__default.factorial#canCall| (T@U) Bool)
(declare-fun DtRank (T@U) Int)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass.LitLet.Nat |##LitLet.Nat.O| |##LitLet.Nat.S| tytagFamily$Nat)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|n#0| T@U) (|m#0| T@U) ) (!  (=> (or (|LitLet.__default.mult#canCall| |n#0| |m#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0| Tclass.LitLet.Nat)))) (and (=> (not (LitLet.Nat.O_q |n#0|)) (let ((|n'#0| (LitLet.Nat.pred |n#0|)))
 (and (|LitLet.__default.mult#canCall| |n'#0| |m#0|) (|LitLet.__default.plus#canCall| |m#0| (LitLet.__default.mult $ly |n'#0| |m#0|))))) (= (LitLet.__default.mult ($LS $ly) |n#0| |m#0|) (ite (LitLet.Nat.O_q |n#0|) |#LitLet.Nat.O| (let ((|n'#0@@0| (LitLet.Nat.pred |n#0|)))
(LitLet.__default.plus ($LS $LZ) |m#0| (LitLet.__default.mult $ly |n'#0@@0| |m#0|)))))))
 :qid |LetExprdfy.416:18|
 :skolemid |1674|
 :pattern ( (LitLet.__default.mult ($LS $ly) |n#0| |m#0|))
))))
(assert (= (DatatypeCtorId |#LitLet.Nat.O|) |##LitLet.Nat.O|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| T@U) (|m#0@@0| T@U) ) (!  (=> (or (|LitLet.__default.mult#canCall| (Lit DatatypeTypeType |n#0@@0|) (Lit DatatypeTypeType |m#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@0| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0@@0| Tclass.LitLet.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@0|)))))) (let ((|n'#1| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@0|)))))
 (and (|LitLet.__default.mult#canCall| |n'#1| (Lit DatatypeTypeType |m#0@@0|)) (|LitLet.__default.plus#canCall| (Lit DatatypeTypeType |m#0@@0|) (LitLet.__default.mult ($LS $ly@@0) |n'#1| (Lit DatatypeTypeType |m#0@@0|)))))) (= (LitLet.__default.mult ($LS $ly@@0) (Lit DatatypeTypeType |n#0@@0|) (Lit DatatypeTypeType |m#0@@0|)) (ite (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@0|)) |#LitLet.Nat.O| (let ((|n'#1@@0| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@0|)))))
(Lit DatatypeTypeType (LitLet.__default.plus ($LS $LZ) (Lit DatatypeTypeType |m#0@@0|) (Lit DatatypeTypeType (LitLet.__default.mult ($LS $ly@@0) |n'#1@@0| (Lit DatatypeTypeType |m#0@@0|))))))))))
 :qid |LetExprdfy.416:18|
 :weight 3
 :skolemid |1675|
 :pattern ( (LitLet.__default.mult ($LS $ly@@0) (Lit DatatypeTypeType |n#0@@0|) (Lit DatatypeTypeType |m#0@@0|)))
))))
(assert ($Is DatatypeTypeType |#LitLet.Nat.O| Tclass.LitLet.Nat))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1127|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (LitLet.Nat.O_q d) (= (DatatypeCtorId d) |##LitLet.Nat.O|))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (LitLet.Nat.O_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (LitLet.Nat.S_q d@@0) (= (DatatypeCtorId d@@0) |##LitLet.Nat.S|))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (LitLet.Nat.S_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1138|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (LitLet.Nat.O_q d@@1) (= d@@1 |#LitLet.Nat.O|))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( (LitLet.Nat.O_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (LitLet.Nat.S_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#LitLet.Nat.S| |a#5#0#0|))
 :qid |LetExprdfy.408:24|
 :skolemid |1690|
)))
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (LitLet.Nat.S_q d@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| T@U) ) (!  (=> (or (|LitLet.__default.factorial#canCall| (Lit DatatypeTypeType |n#0@@1|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |n#0@@1| Tclass.LitLet.Nat))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@1|)))))) (let ((|n'#3| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@1|)))))
 (and (|LitLet.__default.factorial#canCall| |n'#3|) (|LitLet.__default.mult#canCall| (Lit DatatypeTypeType |n#0@@1|) (LitLet.__default.factorial ($LS $ly@@1) |n'#3|))))) (= (LitLet.__default.factorial ($LS $ly@@1) (Lit DatatypeTypeType |n#0@@1|)) (ite (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@1|)) (|#LitLet.Nat.S| (Lit DatatypeTypeType |#LitLet.Nat.O|)) (let ((|n'#2| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@1|)))))
(Lit DatatypeTypeType (LitLet.__default.mult ($LS $LZ) (Lit DatatypeTypeType |n#0@@1|) (Lit DatatypeTypeType (LitLet.__default.factorial ($LS $ly@@1) |n'#2|)))))))))
 :qid |LetExprdfy.422:18|
 :weight 3
 :skolemid |1683|
 :pattern ( (LitLet.__default.factorial ($LS $ly@@1) (Lit DatatypeTypeType |n#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@2| T@U) (|m#0@@1| T@U) ) (!  (=> (or (|LitLet.__default.plus#canCall| (Lit DatatypeTypeType |n#0@@2|) (Lit DatatypeTypeType |m#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@2| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0@@1| Tclass.LitLet.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@2|)))))) (let ((|n'#3@@0| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@2|)))))
(|LitLet.__default.plus#canCall| |n'#3@@0| (Lit DatatypeTypeType |m#0@@1|)))) (= (LitLet.__default.plus ($LS $ly@@2) (Lit DatatypeTypeType |n#0@@2|) (Lit DatatypeTypeType |m#0@@1|)) (ite (LitLet.Nat.O_q (Lit DatatypeTypeType |n#0@@2|)) |m#0@@1| (let ((|n'#2@@0| (Lit DatatypeTypeType (LitLet.Nat.pred (Lit DatatypeTypeType |n#0@@2|)))))
(Lit DatatypeTypeType (|#LitLet.Nat.S| (Lit DatatypeTypeType (LitLet.__default.plus ($LS $ly@@2) |n'#2@@0| (Lit DatatypeTypeType |m#0@@1|))))))))))
 :qid |LetExprdfy.410:18|
 :weight 3
 :skolemid |1668|
 :pattern ( (LitLet.__default.plus ($LS $ly@@2) (Lit DatatypeTypeType |n#0@@2|) (Lit DatatypeTypeType |m#0@@1|)))
))))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#LitLet.Nat.S| |a#6#0#0|) Tclass.LitLet.Nat) ($Is DatatypeTypeType |a#6#0#0| Tclass.LitLet.Nat))
 :qid |LetExprdfy.408:24|
 :skolemid |1692|
 :pattern ( ($Is DatatypeTypeType (|#LitLet.Nat.S| |a#6#0#0|) Tclass.LitLet.Nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|n#0@@3| T@U) (|m#0@@2| T@U) ) (!  (=> (or (|LitLet.__default.plus#canCall| |n#0@@3| |m#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@3| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0@@2| Tclass.LitLet.Nat)))) ($Is DatatypeTypeType (LitLet.__default.plus $ly@@3 |n#0@@3| |m#0@@2|) Tclass.LitLet.Nat))
 :qid |LetExprdfy.410:18|
 :skolemid |1665|
 :pattern ( (LitLet.__default.plus $ly@@3 |n#0@@3| |m#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|n#0@@4| T@U) (|m#0@@3| T@U) ) (!  (=> (or (|LitLet.__default.mult#canCall| |n#0@@4| |m#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@4| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0@@3| Tclass.LitLet.Nat)))) ($Is DatatypeTypeType (LitLet.__default.mult $ly@@4 |n#0@@4| |m#0@@3|) Tclass.LitLet.Nat))
 :qid |LetExprdfy.416:18|
 :skolemid |1672|
 :pattern ( (LitLet.__default.mult $ly@@4 |n#0@@4| |m#0@@3|))
))))
(assert (forall (($ly@@5 T@U) (|n#0@@5| T@U) (|m#0@@4| T@U) ) (! (= (LitLet.__default.plus ($LS $ly@@5) |n#0@@5| |m#0@@4|) (LitLet.__default.plus $ly@@5 |n#0@@5| |m#0@@4|))
 :qid |LetExprdfy.410:18|
 :skolemid |1662|
 :pattern ( (LitLet.__default.plus ($LS $ly@@5) |n#0@@5| |m#0@@4|))
)))
(assert (forall (($ly@@6 T@U) (|n#0@@6| T@U) (|m#0@@5| T@U) ) (! (= (LitLet.__default.mult ($LS $ly@@6) |n#0@@6| |m#0@@5|) (LitLet.__default.mult $ly@@6 |n#0@@6| |m#0@@5|))
 :qid |LetExprdfy.416:18|
 :skolemid |1670|
 :pattern ( (LitLet.__default.mult ($LS $ly@@6) |n#0@@6| |m#0@@5|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|n#0@@7| T@U) ) (!  (=> (or (|LitLet.__default.factorial#canCall| |n#0@@7|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |n#0@@7| Tclass.LitLet.Nat))) ($Is DatatypeTypeType (LitLet.__default.factorial $ly@@7 |n#0@@7|) Tclass.LitLet.Nat))
 :qid |LetExprdfy.422:18|
 :skolemid |1680|
 :pattern ( (LitLet.__default.factorial $ly@@7 |n#0@@7|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.LitLet.Nat) (or (LitLet.Nat.O_q d@@3) (LitLet.Nat.S_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( (LitLet.Nat.S_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.LitLet.Nat))
 :pattern ( (LitLet.Nat.O_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.LitLet.Nat))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@8 T@U) (|n#0@@8| T@U) ) (!  (=> (or (|LitLet.__default.factorial#canCall| |n#0@@8|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |n#0@@8| Tclass.LitLet.Nat))) (and (=> (not (LitLet.Nat.O_q |n#0@@8|)) (let ((|n'#1@@1| (LitLet.Nat.pred |n#0@@8|)))
 (and (|LitLet.__default.factorial#canCall| |n'#1@@1|) (|LitLet.__default.mult#canCall| |n#0@@8| (LitLet.__default.factorial $ly@@8 |n'#1@@1|))))) (= (LitLet.__default.factorial ($LS $ly@@8) |n#0@@8|) (ite (LitLet.Nat.O_q |n#0@@8|) (|#LitLet.Nat.S| (Lit DatatypeTypeType |#LitLet.Nat.O|)) (let ((|n'#0@@1| (LitLet.Nat.pred |n#0@@8|)))
(LitLet.__default.mult ($LS $LZ) |n#0@@8| (LitLet.__default.factorial $ly@@8 |n'#0@@1|)))))))
 :qid |LetExprdfy.422:18|
 :skolemid |1682|
 :pattern ( (LitLet.__default.factorial ($LS $ly@@8) |n#0@@8|))
))))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#LitLet.Nat.S| |a#4#0#0|)) |##LitLet.Nat.S|)
 :qid |LetExprdfy.408:24|
 :skolemid |1688|
 :pattern ( (|#LitLet.Nat.S| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (LitLet.Nat.pred (|#LitLet.Nat.S| |a#8#0#0|)) |a#8#0#0|)
 :qid |LetExprdfy.408:24|
 :skolemid |1695|
 :pattern ( (|#LitLet.Nat.S| |a#8#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1137|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|n#0@@9| T@U) (|m#0@@6| T@U) ) (!  (=> (or (|LitLet.__default.plus#canCall| |n#0@@9| |m#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@9| Tclass.LitLet.Nat) ($Is DatatypeTypeType |m#0@@6| Tclass.LitLet.Nat)))) (and (=> (not (LitLet.Nat.O_q |n#0@@9|)) (let ((|n'#1@@2| (LitLet.Nat.pred |n#0@@9|)))
(|LitLet.__default.plus#canCall| |n'#1@@2| |m#0@@6|))) (= (LitLet.__default.plus ($LS $ly@@9) |n#0@@9| |m#0@@6|) (ite (LitLet.Nat.O_q |n#0@@9|) |m#0@@6| (let ((|n'#0@@2| (LitLet.Nat.pred |n#0@@9|)))
(|#LitLet.Nat.S| (LitLet.__default.plus $ly@@9 |n'#0@@2| |m#0@@6|)))))))
 :qid |LetExprdfy.410:18|
 :skolemid |1667|
 :pattern ( (LitLet.__default.plus ($LS $ly@@9) |n#0@@9| |m#0@@6|))
))))
(assert (forall (($ly@@10 T@U) (|n#0@@10| T@U) ) (! (= (LitLet.__default.factorial ($LS $ly@@10) |n#0@@10|) (LitLet.__default.factorial $ly@@10 |n#0@@10|))
 :qid |LetExprdfy.422:18|
 :skolemid |1678|
 :pattern ( (LitLet.__default.factorial ($LS $ly@@10) |n#0@@10|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#LitLet.Nat.S| |a#9#0#0|)))
 :qid |LetExprdfy.408:24|
 :skolemid |1696|
 :pattern ( (|#LitLet.Nat.S| |a#9#0#0|))
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
 :skolemid |2612|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass.LitLet.Nat)) ($IsAlloc DatatypeTypeType d@@4 Tclass.LitLet.Nat $h))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.LitLet.Nat $h))
)))
(assert (= (Tag Tclass.LitLet.Nat) Tagclass.LitLet.Nat))
(assert (= (TagFamily Tclass.LitLet.Nat) tytagFamily$Nat))
(assert (= |#LitLet.Nat.O| (Lit DatatypeTypeType |#LitLet.Nat.O|)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (LitLet.Nat.S_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.LitLet.Nat $h@@0))) ($IsAlloc DatatypeTypeType (LitLet.Nat.pred d@@5) Tclass.LitLet.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( ($IsAlloc DatatypeTypeType (LitLet.Nat.pred d@@5) Tclass.LitLet.Nat $h@@0))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#LitLet.Nat.S| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#LitLet.Nat.S| |a#7#0#0|)))
 :qid |LetExprdfy.408:24|
 :skolemid |1694|
 :pattern ( (|#LitLet.Nat.S| (Lit DatatypeTypeType |a#7#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1128|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@11| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |n'#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$LitLet.__default.factorial)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (and (and (and (= |n#0@@11| (|#LitLet.Nat.S| |_mcc#0#0|)) ($Is DatatypeTypeType |_mcc#0#0| Tclass.LitLet.Nat)) (and (= |let#0#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.LitLet.Nat))) (and (and (= |n'#Z#0@0| |let#0#0#0|) ($IsAlloc DatatypeTypeType |n#0@@11| Tclass.LitLet.Nat $Heap)) (and ($IsAlloc DatatypeTypeType |n'#Z#0@0| Tclass.LitLet.Nat $Heap) (= (ControlFlow 0 4) (- 0 3))))) (< (DtRank |n'#Z#0@0|) (DtRank |n#0@@11|)))))
(let ((anon9_Else_correct  (=> (or (not (= |n#0@@11| |#LitLet.Nat.O|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |n#0@@11| Tclass.LitLet.Nat)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
