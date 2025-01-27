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
(declare-fun |##_module.Nat.Succ| () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Succ_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Nat.Succ| (T@U) T@U)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ThProperty (T@U Int T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ThProperty#canCall| (Int T@U Int) Bool)
(declare-fun _module.Nat.tail (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc Tagclass._module.Nat |##_module.Nat.Zero| |##_module.Nat.Succ| tytagFamily$Nat)
)
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
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
(assert (forall ((d T@U) ) (! (= (_module.Nat.Zero_q d) (= (DatatypeCtorId d) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Succ_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Succ|))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (_module.Nat.Succ_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Nat.Zero_q d@@1) (= d@@1 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (_module.Nat.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Nat.Succ_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.Nat.Succ| |a#5#0#0|))
 :qid |ForallStmtdfy.263:28|
 :skolemid |776|
)))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (_module.Nat.Succ_q d@@2))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Nat))
 :qid |ForallStmtdfy.263:28|
 :skolemid |778|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@3) (or (_module.Nat.Zero_q d@@3) (_module.Nat.Succ_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( (|$IsA#_module.Nat| d@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|step#0| Int) (|t#0| T@U) (|r#0| Int) ) (!  (=> (or (|_module.__default.ThProperty#canCall| |step#0| |t#0| |r#0|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |step#0|) ($Is DatatypeTypeType |t#0| Tclass._module.Nat)) (<= (LitInt 0) |r#0|)))) (and (=> (not (_module.Nat.Zero_q |t#0|)) (let ((|o#1| (_module.Nat.tail |t#0|)))
 (=> (> |step#0| 0) (forall ((|ro#1| Int) (|ss#1| Int) ) (!  (=> (and (<= (LitInt 0) |ro#1|) (<= (LitInt 0) |ss#1|)) (=> (= |ss#1| (- |step#0| 1)) (|_module.__default.ThProperty#canCall| |ss#1| |o#1| |ro#1|)))
 :qid |ForallStmtdfy.269:36|
 :skolemid |720|
 :pattern ( (_module.__default.ThProperty $ly |ss#1| |o#1| |ro#1|))
))))) (= (_module.__default.ThProperty ($LS $ly) |step#0| |t#0| |r#0|) (ite (_module.Nat.Zero_q |t#0|) true (let ((|o#0| (_module.Nat.tail |t#0|)))
 (and (> |step#0| 0) (exists ((|ro#0| Int) (|ss#0| Int) ) (!  (and (and (and (<= (LitInt 0) |ro#0|) (<= (LitInt 0) |ss#0|)) (= |ss#0| (- |step#0| 1))) (_module.__default.ThProperty $ly |ss#0| |o#0| |ro#0|))
 :qid |ForallStmtdfy.269:36|
 :skolemid |719|
 :pattern ( (_module.__default.ThProperty $ly |ss#0| |o#0| |ro#0|))
))))))))
 :qid |ForallStmtdfy.265:17|
 :skolemid |721|
 :pattern ( (_module.__default.ThProperty ($LS $ly) |step#0| |t#0| |r#0|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@4) (_module.Nat.Succ_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (_module.Nat.Succ_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
)))
(assert (forall (($ly@@0 T@U) (|step#0@@0| Int) (|t#0@@0| T@U) (|r#0@@0| Int) ) (! (= (_module.__default.ThProperty ($LS $ly@@0) |step#0@@0| |t#0@@0| |r#0@@0|) (_module.__default.ThProperty $ly@@0 |step#0@@0| |t#0@@0| |r#0@@0|))
 :qid |ForallStmtdfy.265:17|
 :skolemid |714|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@0) |step#0@@0| |t#0@@0| |r#0@@0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Succ| |a#4#0#0|)) |##_module.Nat.Succ|)
 :qid |ForallStmtdfy.263:28|
 :skolemid |774|
 :pattern ( (|#_module.Nat.Succ| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Nat.tail (|#_module.Nat.Succ| |a#8#0#0|)) |a#8#0#0|)
 :qid |ForallStmtdfy.263:28|
 :skolemid |781|
 :pattern ( (|#_module.Nat.Succ| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|step#0@@1| Int) (|t#0@@1| T@U) (|r#0@@1| Int) ) (!  (=> (or (|_module.__default.ThProperty#canCall| (LitInt |step#0@@1|) (Lit DatatypeTypeType |t#0@@1|) (LitInt |r#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |step#0@@1|) ($Is DatatypeTypeType |t#0@@1| Tclass._module.Nat)) (<= (LitInt 0) |r#0@@1|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |t#0@@1|)))))) (let ((|o#3| (Lit DatatypeTypeType (_module.Nat.tail (Lit DatatypeTypeType |t#0@@1|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (> |step#0@@1| 0)))) (forall ((|ro#3| Int) (|ss#3| Int) ) (!  (=> (and (<= (LitInt 0) |ro#3|) (<= (LitInt 0) |ss#3|)) (=> (= |ss#3| (LitInt (- |step#0@@1| 1))) (|_module.__default.ThProperty#canCall| |ss#3| |o#3| |ro#3|)))
 :qid |ForallStmtdfy.269:36|
 :skolemid |723|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@1) |ss#3| |o#3| |ro#3|))
))))) (= (_module.__default.ThProperty ($LS $ly@@1) (LitInt |step#0@@1|) (Lit DatatypeTypeType |t#0@@1|) (LitInt |r#0@@1|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |t#0@@1|)) true (let ((|o#2| (Lit DatatypeTypeType (_module.Nat.tail (Lit DatatypeTypeType |t#0@@1|)))))
 (and (> |step#0@@1| 0) (exists ((|ro#2| Int) (|ss#2| Int) ) (!  (and (and (and (<= (LitInt 0) |ro#2|) (<= (LitInt 0) |ss#2|)) (= |ss#2| (LitInt (- |step#0@@1| 1)))) (_module.__default.ThProperty ($LS $ly@@1) |ss#2| |o#2| |ro#2|))
 :qid |ForallStmtdfy.269:36|
 :skolemid |722|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@1) |ss#2| |o#2| |ro#2|))
))))))))
 :qid |ForallStmtdfy.265:17|
 :weight 3
 :skolemid |724|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@1) (LitInt |step#0@@1|) (Lit DatatypeTypeType |t#0@@1|) (LitInt |r#0@@1|)))
))))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Nat.Succ| |a#9#0#0|)))
 :qid |ForallStmtdfy.263:28|
 :skolemid |782|
 :pattern ( (|#_module.Nat.Succ| |a#9#0#0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |790|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Nat.Succ_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Nat $h@@0))) ($IsAlloc DatatypeTypeType (_module.Nat.tail d@@6) Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat.tail d@@6) Tclass._module.Nat $h@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Succ| |a#7#0#0|)))
 :qid |ForallStmtdfy.263:28|
 :skolemid |780|
 :pattern ( (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |step#0@@2| () Int)
(declare-fun |r#0@@2| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Th)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc false)) (|$IsA#_module.Nat| |t#0@@2|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (forall ((|$ih#step0#0| Int) (|$ih#t0#0| T@U) (|$ih#r0#0| Int) ) (!  (=> (and (and (and (and (<= (LitInt 0) |$ih#step0#0|) ($Is DatatypeTypeType |$ih#t0#0| Tclass._module.Nat)) (<= (LitInt 0) |$ih#r0#0|)) (and (_module.Nat.Succ_q |$ih#t0#0|) (_module.__default.ThProperty ($LS $LZ) |$ih#step0#0| |$ih#t0#0| |$ih#r0#0|))) (or (and (<= 0 |$ih#step0#0|) (< |$ih#step0#0| |step#0@@2|)) (and (= |$ih#step0#0| |step#0@@2|) (or (< (DtRank |$ih#t0#0|) (DtRank |t#0@@2|)) (and (= (DtRank |$ih#t0#0|) (DtRank |t#0@@2|)) (and (<= 0 |$ih#r0#0|) (< |$ih#r0#0| |r#0@@2|))))))) (exists ((|ro#6| Int) (|ss#6| Int) ) (!  (and (and (and (<= (LitInt 0) |ro#6|) (<= (LitInt 0) |ss#6|)) (= |ss#6| (- |$ih#step0#0| 1))) (_module.__default.ThProperty ($LS $LZ) |ss#6| (_module.Nat.tail |$ih#t0#0|) |ro#6|))
 :qid |ForallStmtdfy.275:18|
 :skolemid |741|
 :pattern ( (_module.__default.ThProperty ($LS $LZ) |ss#6| (_module.Nat.tail |$ih#t0#0|) |ro#6|))
)))
 :qid |ForallStmtdfy.272:10|
 :skolemid |742|
 :pattern ( (_module.__default.ThProperty ($LS $LZ) |$ih#step0#0| |$ih#t0#0| |$ih#r0#0|))
)) (= (ControlFlow 0 2) (- 0 1)))) (exists ((|ro#3@@0| Int) (|ss#3@@0| Int) ) (!  (and (and (and (<= (LitInt 0) |ro#3@@0|) (<= (LitInt 0) |ss#3@@0|)) (= |ss#3@@0| (- |step#0@@2| 1))) (_module.__default.ThProperty ($LS $LZ) |ss#3@@0| (_module.Nat.tail |t#0@@2|) |ro#3@@0|))
 :qid |ForallStmtdfy.275:18|
 :skolemid |739|
 :pattern ( (_module.__default.ThProperty ($LS $LZ) |ss#3@@0| (_module.Nat.tail |t#0@@2|) |ro#3@@0|))
))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |step#0@@2|)) (=> (and (and (and (and (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |t#0@@2| Tclass._module.Nat $Heap)) (|$IsA#_module.Nat| |t#0@@2|)) (<= (LitInt 0) |r#0@@2|)) (and (= 2 $FunctionContextHeight) (_module.Nat.Succ_q |t#0@@2|))) (and (and (|_module.__default.ThProperty#canCall| |step#0@@2| |t#0@@2| |r#0@@2|) (and (_module.__default.ThProperty ($LS $LZ) |step#0@@2| |t#0@@2| |r#0@@2|) (ite (_module.Nat.Zero_q |t#0@@2|) true (let ((|o#3@@0| (_module.Nat.tail |t#0@@2|)))
 (and (> |step#0@@2| 0) (exists ((|ro#5| Int) (|ss#5| Int) ) (!  (and (and (and (<= (LitInt 0) |ro#5|) (<= (LitInt 0) |ss#5|)) (= |ss#5| (- |step#0@@2| 1))) (_module.__default.ThProperty ($LS $LZ) |ss#5| |o#3@@0| |ro#5|))
 :qid |ForallStmtdfy.269:36|
 :skolemid |737|
 :pattern ( (_module.__default.ThProperty ($LS $LZ) |ss#5| |o#3@@0| |ro#5|))
))))))) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
