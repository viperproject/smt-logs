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
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Suc| () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Nat.Zero| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun |_module.Nat#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Suc_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Nat.Suc| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.add (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.add#canCall| (T@U T@U) Bool)
(declare-fun _module.Nat._h0 (T@U) T@U)
(declare-fun _module.__default.minus (T@U T@U T@U) T@U)
(declare-fun |_module.__default.minus#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Nat |##_module.Nat.Zero| |##_module.Nat.Suc| tytagFamily$Nat)
)
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Nat#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( (|_module.Nat#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Nat.Zero_q d) (= (DatatypeCtorId d) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Suc_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Suc|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (_module.Nat.Suc_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Nat.Zero_q d@@1) (= d@@1 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1223|
 :pattern ( (_module.Nat.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Nat.Suc_q d@@2) (exists ((|a#13#0#0| T@U) ) (! (= d@@2 (|#_module.Nat.Suc| |a#13#0#0|))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (_module.Nat.Suc_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|_module.__default.add#canCall| (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0| Tclass._module.Nat) ($Is DatatypeTypeType |y#0| Tclass._module.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0|)))))) (let ((|w#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0|)))))
(|_module.__default.add#canCall| |w#3| (Lit DatatypeTypeType |y#0|)))) (= (_module.__default.add ($LS $ly) (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0|)) |y#0| (let ((|w#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0|)))))
(Lit DatatypeTypeType (|#_module.Nat.Suc| (Lit DatatypeTypeType (_module.__default.add ($LS $ly) |w#2| (Lit DatatypeTypeType |y#0|))))))))))
 :qid |Ripplinglegacydfy.34:16|
 :weight 3
 :skolemid |596|
 :pattern ( (_module.__default.add ($LS $ly) (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)))
))))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#14#0#0| Tclass._module.Nat))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Nat.Suc_q a@@0) (_module.Nat.Suc_q b@@0)) (= (|_module.Nat#Equal| a@@0 b@@0) (|_module.Nat#Equal| (_module.Nat._h0 a@@0) (_module.Nat._h0 b@@0))))
 :qid |unknown.0:0|
 :skolemid |1237|
 :pattern ( (|_module.Nat#Equal| a@@0 b@@0) (_module.Nat.Suc_q a@@0))
 :pattern ( (|_module.Nat#Equal| a@@0 b@@0) (_module.Nat.Suc_q b@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |x#0@@0| |y#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@0| Tclass._module.Nat)))) ($Is DatatypeTypeType (_module.__default.add $ly@@0 |x#0@@0| |y#0@@0|) Tclass._module.Nat))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |593|
 :pattern ( (_module.__default.add $ly@@0 |x#0@@0| |y#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|_module.__default.minus#canCall| |x#0@@1| |y#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@1| Tclass._module.Nat)))) ($Is DatatypeTypeType (_module.__default.minus $ly@@1 |x#0@@1| |y#0@@1|) Tclass._module.Nat))
 :qid |Ripplinglegacydfy.41:16|
 :skolemid |600|
 :pattern ( (_module.__default.minus $ly@@1 |x#0@@1| |y#0@@1|))
))))
(assert (forall (($ly@@2 T@U) (|x#0@@2| T@U) (|y#0@@2| T@U) ) (! (= (_module.__default.add ($LS $ly@@2) |x#0@@2| |y#0@@2|) (_module.__default.add $ly@@2 |x#0@@2| |y#0@@2|))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |590|
 :pattern ( (_module.__default.add ($LS $ly@@2) |x#0@@2| |y#0@@2|))
)))
(assert (forall (($ly@@3 T@U) (|x#0@@3| T@U) (|y#0@@3| T@U) ) (! (= (_module.__default.minus ($LS $ly@@3) |x#0@@3| |y#0@@3|) (_module.__default.minus $ly@@3 |x#0@@3| |y#0@@3|))
 :qid |Ripplinglegacydfy.41:16|
 :skolemid |598|
 :pattern ( (_module.__default.minus ($LS $ly@@3) |x#0@@3| |y#0@@3|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0@@4| T@U) (|y#0@@4| T@U) ) (!  (=> (or (|_module.__default.minus#canCall| (Lit DatatypeTypeType |x#0@@4|) (Lit DatatypeTypeType |y#0@@4|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@4| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@4| Tclass._module.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@4|)))))) (let ((|a#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@4|)))))
 (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |y#0@@4|)))))) (let ((|b#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |y#0@@4|)))))
(|_module.__default.minus#canCall| |a#3| |b#3|))))) (= (_module.__default.minus ($LS $ly@@4) (Lit DatatypeTypeType |x#0@@4|) (Lit DatatypeTypeType |y#0@@4|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |x#0@@4|)) |#_module.Nat.Zero| (let ((|a#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |x#0@@4|)))))
(ite (_module.Nat.Zero_q (Lit DatatypeTypeType |y#0@@4|)) |x#0@@4| (let ((|b#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |y#0@@4|)))))
(Lit DatatypeTypeType (_module.__default.minus ($LS $ly@@4) |a#2| |b#2|)))))))))
 :qid |Ripplinglegacydfy.41:16|
 :weight 3
 :skolemid |603|
 :pattern ( (_module.__default.minus ($LS $ly@@4) (Lit DatatypeTypeType |x#0@@4|) (Lit DatatypeTypeType |y#0@@4|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@3) (or (_module.Nat.Zero_q d@@3) (_module.Nat.Suc_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1234|
 :pattern ( (|$IsA#_module.Nat| d@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|x#0@@5| T@U) (|y#0@@5| T@U) ) (!  (=> (or (|_module.__default.minus#canCall| |x#0@@5| |y#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@5| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@5| Tclass._module.Nat)))) (and (=> (not (_module.Nat.Zero_q |x#0@@5|)) (let ((|a#1| (_module.Nat._h0 |x#0@@5|)))
 (=> (not (_module.Nat.Zero_q |y#0@@5|)) (let ((|b#1| (_module.Nat._h0 |y#0@@5|)))
(|_module.__default.minus#canCall| |a#1| |b#1|))))) (= (_module.__default.minus ($LS $ly@@5) |x#0@@5| |y#0@@5|) (ite (_module.Nat.Zero_q |x#0@@5|) |#_module.Nat.Zero| (let ((|a#0| (_module.Nat._h0 |x#0@@5|)))
(ite (_module.Nat.Zero_q |y#0@@5|) |x#0@@5| (let ((|b#0| (_module.Nat._h0 |y#0@@5|)))
(_module.__default.minus $ly@@5 |a#0| |b#0|))))))))
 :qid |Ripplinglegacydfy.41:16|
 :skolemid |602|
 :pattern ( (_module.__default.minus ($LS $ly@@5) |x#0@@5| |y#0@@5|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@4) (_module.Nat.Suc_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1235|
 :pattern ( (_module.Nat.Suc_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Nat.Zero_q a@@1) (_module.Nat.Zero_q b@@1)) (|_module.Nat#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1236|
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Zero_q a@@1))
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Zero_q b@@1))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Suc| |a#12#0#0|)) |##_module.Nat.Suc|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1224|
 :pattern ( (|#_module.Nat.Suc| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_module.Nat._h0 (|#_module.Nat.Suc| |a#16#0#0|)) |a#16#0#0|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1231|
 :pattern ( (|#_module.Nat.Suc| |a#16#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|x#0@@6| T@U) (|y#0@@6| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |x#0@@6| |y#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@6| Tclass._module.Nat) ($Is DatatypeTypeType |y#0@@6| Tclass._module.Nat)))) (and (=> (not (_module.Nat.Zero_q |x#0@@6|)) (let ((|w#1| (_module.Nat._h0 |x#0@@6|)))
(|_module.__default.add#canCall| |w#1| |y#0@@6|))) (= (_module.__default.add ($LS $ly@@6) |x#0@@6| |y#0@@6|) (ite (_module.Nat.Zero_q |x#0@@6|) |y#0@@6| (let ((|w#0| (_module.Nat._h0 |x#0@@6|)))
(|#_module.Nat.Suc| (_module.__default.add $ly@@6 |w#0| |y#0@@6|)))))))
 :qid |Ripplinglegacydfy.34:16|
 :skolemid |595|
 :pattern ( (_module.__default.add ($LS $ly@@6) |x#0@@6| |y#0@@6|))
))))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (DtRank |a#17#0#0|) (DtRank (|#_module.Nat.Suc| |a#17#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1232|
 :pattern ( (|#_module.Nat.Suc| |a#17#0#0|))
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
 :skolemid |1320|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Nat.Suc_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Nat $h@@0))) ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@6) Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@6) Tclass._module.Nat $h@@0))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Suc| |a#15#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1230|
 :pattern ( (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |m#4@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n#4@0| () T@U)
(declare-fun |m#2@0| () T@U)
(declare-fun |n#2@0| () T@U)
(declare-fun |##x#2@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.P54)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon4_correct  (=> (forall ((|m#5| T@U) (|n#5| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#5| Tclass._module.Nat) ($Is DatatypeTypeType |n#5| Tclass._module.Nat)) (and (and (|$IsA#_module.Nat| (_module.__default.add ($LS $LZ) |m#5| |n#5|)) (|$IsA#_module.Nat| (_module.__default.add ($LS $LZ) |n#5| |m#5|))) (and (|_module.__default.add#canCall| |m#5| |n#5|) (|_module.__default.add#canCall| |n#5| |m#5|))))
 :qid |Ripplinglegacydfy.553:17|
 :skolemid |1157|
 :pattern ( (_module.__default.add ($LS $LZ) |n#5| |m#5|))
 :pattern ( (_module.__default.add ($LS $LZ) |m#5| |n#5|))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|m#5@@0| T@U) (|n#5@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#5@@0| Tclass._module.Nat) ($Is DatatypeTypeType |n#5@@0| Tclass._module.Nat)) (|_module.Nat#Equal| (_module.__default.add ($LS ($LS $LZ)) |m#5@@0| |n#5@@0|) (_module.__default.add ($LS ($LS $LZ)) |n#5@@0| |m#5@@0|)))
 :qid |Ripplinglegacydfy.553:17|
 :skolemid |1158|
 :pattern ( (_module.__default.add ($LS ($LS $LZ)) |n#5@@0| |m#5@@0|))
 :pattern ( (_module.__default.add ($LS ($LS $LZ)) |m#5@@0| |n#5@@0|))
))) (=> (and (forall ((|m#5@@1| T@U) (|n#5@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#5@@1| Tclass._module.Nat) ($Is DatatypeTypeType |n#5@@1| Tclass._module.Nat)) (|_module.Nat#Equal| (_module.__default.add ($LS $LZ) |m#5@@1| |n#5@@1|) (_module.__default.add ($LS $LZ) |n#5@@1| |m#5@@1|)))
 :qid |Ripplinglegacydfy.553:17|
 :skolemid |1160|
 :pattern ( (_module.__default.add ($LS $LZ) |n#5@@1| |m#5@@1|))
 :pattern ( (_module.__default.add ($LS $LZ) |m#5@@1| |n#5@@1|))
)) (= (ControlFlow 0 2) (- 0 1))) (forall ((|m#1| T@U) (|n#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#1| Tclass._module.Nat) ($Is DatatypeTypeType |n#1| Tclass._module.Nat)) (|_module.Nat#Equal| (_module.__default.minus ($LS ($LS $LZ)) (_module.__default.add ($LS ($LS $LZ)) |m#1| |n#1|) |n#1|) |m#1|))
 :qid |Ripplinglegacydfy.549:18|
 :skolemid |1151|
 :pattern ( (_module.__default.add ($LS ($LS $LZ)) |m#1| |n#1|))
)))))))
(let ((anon6_Else_correct  (=> (and (not (and (and ($Is DatatypeTypeType |m#4@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |m#4@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |n#4@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |n#4@0| Tclass._module.Nat $Heap)))) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and (and (and (and ($Is DatatypeTypeType |m#4@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |m#4@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |n#4@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |n#4@0| Tclass._module.Nat $Heap))) ($IsAlloc DatatypeTypeType |m#4@0| Tclass._module.Nat $Heap)) (and ($IsAlloc DatatypeTypeType |n#4@0| Tclass._module.Nat $Heap) (|_module.__default.add#canCall| |m#4@0| |n#4@0|))) (and (and ($IsAlloc DatatypeTypeType |n#4@0| Tclass._module.Nat $Heap) ($IsAlloc DatatypeTypeType |m#4@0| Tclass._module.Nat $Heap)) (and (|_module.__default.add#canCall| |n#4@0| |m#4@0|) (= (ControlFlow 0 4) 2)))) anon4_correct)))
(let ((anon2_correct  (=> (forall ((|m#3| T@U) (|n#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#3| Tclass._module.Nat) ($Is DatatypeTypeType |n#3| Tclass._module.Nat)) (and (and (|$IsA#_module.Nat| (_module.__default.minus ($LS $LZ) (_module.__default.add ($LS $LZ) |n#3| |m#3|) |n#3|)) (|$IsA#_module.Nat| |m#3|)) (and (|_module.__default.add#canCall| |n#3| |m#3|) (|_module.__default.minus#canCall| (_module.__default.add ($LS $LZ) |n#3| |m#3|) |n#3|))))
 :qid |Ripplinglegacydfy.552:17|
 :skolemid |1153|
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((|m#3@@0| T@U) (|n#3@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#3@@0| Tclass._module.Nat) ($Is DatatypeTypeType |n#3@@0| Tclass._module.Nat)) (|_module.Nat#Equal| (_module.__default.minus ($LS ($LS $LZ)) (_module.__default.add ($LS ($LS $LZ)) |n#3@@0| |m#3@@0|) |n#3@@0|) |m#3@@0|))
 :qid |Ripplinglegacydfy.552:17|
 :skolemid |1154|
))) (=> (forall ((|m#3@@1| T@U) (|n#3@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |m#3@@1| Tclass._module.Nat) ($Is DatatypeTypeType |n#3@@1| Tclass._module.Nat)) (|_module.Nat#Equal| (_module.__default.minus ($LS $LZ) (_module.__default.add ($LS $LZ) |n#3@@1| |m#3@@1|) |n#3@@1|) |m#3@@1|))
 :qid |Ripplinglegacydfy.552:17|
 :skolemid |1156|
)) (and (=> (= (ControlFlow 0 6) 4) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct)))))))
(let ((anon5_Else_correct  (=> (and (not (and (and ($Is DatatypeTypeType |m#2@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |m#2@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |n#2@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |n#2@0| Tclass._module.Nat $Heap)))) (= (ControlFlow 0 9) 6)) anon2_correct)))
(let ((anon5_Then_correct  (=> (and (and ($Is DatatypeTypeType |m#2@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |m#2@0| Tclass._module.Nat $Heap)) (and ($Is DatatypeTypeType |n#2@0| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |n#2@0| Tclass._module.Nat $Heap))) (=> (and (and (and ($IsAlloc DatatypeTypeType |n#2@0| Tclass._module.Nat $Heap) ($IsAlloc DatatypeTypeType |m#2@0| Tclass._module.Nat $Heap)) (and (|_module.__default.add#canCall| |n#2@0| |m#2@0|) (= |##x#2@0| (_module.__default.add ($LS $LZ) |n#2@0| |m#2@0|)))) (and (and ($IsAlloc DatatypeTypeType |##x#2@0| Tclass._module.Nat $Heap) ($IsAlloc DatatypeTypeType |n#2@0| Tclass._module.Nat $Heap)) (and (|_module.__default.minus#canCall| (_module.__default.add ($LS $LZ) |n#2@0| |m#2@0|) |n#2@0|) (= (ControlFlow 0 8) 6)))) anon2_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 10) 8) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 11) 10))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
