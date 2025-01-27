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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass.NestedMatch.Nat () T@U)
(declare-fun |##NestedMatch.Nat.Zero| () T@U)
(declare-fun |##NestedMatch.Nat.Suc| () T@U)
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
(declare-fun |#NestedMatch.Nat.Zero| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.NestedMatch.Nat () T@U)
(declare-fun |NestedMatch.Nat#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun NestedMatch.Nat.Zero_q (T@U) Bool)
(declare-fun NestedMatch.Nat.Suc_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |#NestedMatch.Nat.Suc| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun NestedMatch.__default.minus (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |NestedMatch.__default.minus#canCall| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun NestedMatch.Nat._h0 (T@U) T@U)
(declare-fun |$IsA#NestedMatch.Nat| (T@U) Bool)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct alloc |##_System._tuple#2._#Make2| Tagclass.NestedMatch.Nat |##NestedMatch.Nat.Zero| |##NestedMatch.Nat.Suc| tytagFamily$Nat)
)
(assert (= (DatatypeCtorId |#NestedMatch.Nat.Zero|) |##NestedMatch.Nat.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#NestedMatch.Nat.Zero| Tclass.NestedMatch.Nat))
(assert (forall ((a T@U) (b T@U) ) (! (= (|NestedMatch.Nat#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (|NestedMatch.Nat#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_System.Tuple2.___hMake2_q d) (= (DatatypeCtorId d) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (NestedMatch.Nat.Zero_q d@@0) (= (DatatypeCtorId d@@0) |##NestedMatch.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (NestedMatch.Nat.Zero_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (NestedMatch.Nat.Suc_q d@@1) (= (DatatypeCtorId d@@1) |##NestedMatch.Nat.Suc|))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (NestedMatch.Nat.Suc_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (NestedMatch.Nat.Zero_q d@@3) (= d@@3 |#NestedMatch.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (NestedMatch.Nat.Zero_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (NestedMatch.Nat.Suc_q d@@4) (exists ((|a#5#0#0| T@U) ) (! (= d@@4 (|#NestedMatch.Nat.Suc| |a#5#0#0|))
 :qid |NestedMatchdfy.5:29|
 :skolemid |571|
)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (NestedMatch.Nat.Suc_q d@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|NestedMatch.__default.minus#canCall| (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0| Tclass.NestedMatch.Nat) ($Is DatatypeTypeType |y#0| Tclass.NestedMatch.Nat)))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (NestedMatch.Nat.Zero_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (NestedMatch.Nat.Zero_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|))))) (let ((|b#3| (Lit DatatypeTypeType (NestedMatch.Nat._h0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))
 (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|))))) (let ((|a#3| (Lit DatatypeTypeType (NestedMatch.Nat._h0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))
(|NestedMatch.__default.minus#canCall| |a#3| |b#3|))))))))) (= (NestedMatch.__default.minus ($LS $ly) (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)) (ite (NestedMatch.Nat.Zero_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))) |#NestedMatch.Nat.Zero| (ite (NestedMatch.Nat.Zero_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))) |x#0| (let ((|b#2| (Lit DatatypeTypeType (NestedMatch.Nat._h0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))
(let ((|a#2| (Lit DatatypeTypeType (NestedMatch.Nat._h0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |x#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |y#0|)))))))))))
(Lit DatatypeTypeType (NestedMatch.__default.minus ($LS $ly) |a#2| |b#2|)))))))))
 :qid |NestedMatchdfy.38:18|
 :weight 3
 :skolemid |558|
 :pattern ( (NestedMatch.__default.minus ($LS $ly) (Lit DatatypeTypeType |x#0|) (Lit DatatypeTypeType |y#0|)))
))))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#NestedMatch.Nat.Suc| |a#6#0#0|) Tclass.NestedMatch.Nat) ($Is DatatypeTypeType |a#6#0#0| Tclass.NestedMatch.Nat))
 :qid |NestedMatchdfy.5:29|
 :skolemid |573|
 :pattern ( ($Is DatatypeTypeType (|#NestedMatch.Nat.Suc| |a#6#0#0|) Tclass.NestedMatch.Nat))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (NestedMatch.Nat.Suc_q a@@0) (NestedMatch.Nat.Suc_q b@@0)) (= (|NestedMatch.Nat#Equal| a@@0 b@@0) (|NestedMatch.Nat#Equal| (NestedMatch.Nat._h0 a@@0) (NestedMatch.Nat._h0 b@@0))))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (|NestedMatch.Nat#Equal| a@@0 b@@0) (NestedMatch.Nat.Suc_q a@@0))
 :pattern ( (|NestedMatch.Nat#Equal| a@@0 b@@0) (NestedMatch.Nat.Suc_q b@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|NestedMatch.__default.minus#canCall| |x#0@@0| |y#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| Tclass.NestedMatch.Nat) ($Is DatatypeTypeType |y#0@@0| Tclass.NestedMatch.Nat)))) ($Is DatatypeTypeType (NestedMatch.__default.minus $ly@@0 |x#0@@0| |y#0@@0|) Tclass.NestedMatch.Nat))
 :qid |NestedMatchdfy.38:18|
 :skolemid |555|
 :pattern ( (NestedMatch.__default.minus $ly@@0 |x#0@@0| |y#0@@0|))
))))
(assert (forall (($ly@@1 T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) ) (! (= (NestedMatch.__default.minus ($LS $ly@@1) |x#0@@1| |y#0@@1|) (NestedMatch.__default.minus $ly@@1 |x#0@@1| |y#0@@1|))
 :qid |NestedMatchdfy.38:18|
 :skolemid |553|
 :pattern ( (NestedMatch.__default.minus ($LS $ly@@1) |x#0@@1| |y#0@@1|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@2| T@U) (|y#0@@2| T@U) ) (!  (=> (or (|NestedMatch.__default.minus#canCall| |x#0@@2| |y#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| Tclass.NestedMatch.Nat) ($Is DatatypeTypeType |y#0@@2| Tclass.NestedMatch.Nat)))) (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))) (=> (not (NestedMatch.Nat.Zero_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))) (=> (not (NestedMatch.Nat.Zero_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))) (let ((|b#1| (NestedMatch.Nat._h0 ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))))
 (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))) (let ((|a#1| (NestedMatch.Nat._h0 ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))))
(|NestedMatch.__default.minus#canCall| |a#1| |b#1|))))))))) (= (NestedMatch.__default.minus ($LS $ly@@2) |x#0@@2| |y#0@@2|) (ite (NestedMatch.Nat.Zero_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))))) |#NestedMatch.Nat.Zero| (ite (NestedMatch.Nat.Zero_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|))))) |x#0@@2| (let ((|b#0| (NestedMatch.Nat._h0 ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))))
(let ((|a#0| (NestedMatch.Nat._h0 ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |x#0@@2|) ($Box DatatypeTypeType |y#0@@2|)))))))
(NestedMatch.__default.minus $ly@@2 |a#0| |b#0|))))))))
 :qid |NestedMatchdfy.38:18|
 :skolemid |557|
 :pattern ( (NestedMatch.__default.minus ($LS $ly@@2) |x#0@@2| |y#0@@2|))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#NestedMatch.Nat| d@@5) (or (NestedMatch.Nat.Zero_q d@@5) (NestedMatch.Nat.Suc_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (|$IsA#NestedMatch.Nat| d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.NestedMatch.Nat) (or (NestedMatch.Nat.Zero_q d@@6) (NestedMatch.Nat.Suc_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (NestedMatch.Nat.Suc_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.NestedMatch.Nat))
 :pattern ( (NestedMatch.Nat.Zero_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.NestedMatch.Nat))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (NestedMatch.Nat.Zero_q a@@1) (NestedMatch.Nat.Zero_q b@@1)) (|NestedMatch.Nat#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (|NestedMatch.Nat#Equal| a@@1 b@@1) (NestedMatch.Nat.Zero_q a@@1))
 :pattern ( (|NestedMatch.Nat#Equal| a@@1 b@@1) (NestedMatch.Nat.Zero_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#NestedMatch.Nat.Suc| |a#4#0#0@@0|)) |##NestedMatch.Nat.Suc|)
 :qid |NestedMatchdfy.5:29|
 :skolemid |569|
 :pattern ( (|#NestedMatch.Nat.Suc| |a#4#0#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (NestedMatch.Nat._h0 (|#NestedMatch.Nat.Suc| |a#8#0#0|)) |a#8#0#0|)
 :qid |NestedMatchdfy.5:29|
 :skolemid |576|
 :pattern ( (|#NestedMatch.Nat.Suc| |a#8#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#NestedMatch.Nat.Suc| |a#9#0#0|)))
 :qid |NestedMatchdfy.5:29|
 :skolemid |577|
 :pattern ( (|#NestedMatch.Nat.Suc| |a#9#0#0|))
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
 :skolemid |1166|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((d@@8 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@8 Tclass.NestedMatch.Nat)) ($IsAlloc DatatypeTypeType d@@8 Tclass.NestedMatch.Nat $h))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 Tclass.NestedMatch.Nat $h))
)))
(assert (= (Tag Tclass.NestedMatch.Nat) Tagclass.NestedMatch.Nat))
(assert (= (TagFamily Tclass.NestedMatch.Nat) tytagFamily$Nat))
(assert (= |#NestedMatch.Nat.Zero| (Lit DatatypeTypeType |#NestedMatch.Nat.Zero|)))
(assert (forall ((d@@9 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (NestedMatch.Nat.Suc_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.NestedMatch.Nat $h@@0))) ($IsAlloc DatatypeTypeType (NestedMatch.Nat._h0 d@@9) Tclass.NestedMatch.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsAlloc DatatypeTypeType (NestedMatch.Nat._h0 d@@9) Tclass.NestedMatch.Nat $h@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ) (! (= (|#NestedMatch.Nat.Suc| (Lit DatatypeTypeType |a#7#0#0@@0|)) (Lit DatatypeTypeType (|#NestedMatch.Nat.Suc| |a#7#0#0@@0|)))
 :qid |NestedMatchdfy.5:29|
 :skolemid |575|
 :pattern ( (|#NestedMatch.Nat.Suc| (Lit DatatypeTypeType |a#7#0#0@@0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##x#0@0| () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun |##y#0@0| () T@U)
(declare-fun |y#0@@3| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$NestedMatch.__default.checkMinus)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and (and (= |##x#0@0| (|#NestedMatch.Nat.Suc| |x#0@@3|)) ($IsAlloc DatatypeTypeType |##x#0@0| Tclass.NestedMatch.Nat $Heap)) (and (= |##y#0@0| (|#NestedMatch.Nat.Suc| |y#0@@3|)) ($IsAlloc DatatypeTypeType |##y#0@0| Tclass.NestedMatch.Nat $Heap))) (and (and (|NestedMatch.__default.minus#canCall| (|#NestedMatch.Nat.Suc| |x#0@@3|) (|#NestedMatch.Nat.Suc| |y#0@@3|)) ($IsAlloc DatatypeTypeType |x#0@@3| Tclass.NestedMatch.Nat $Heap)) (and ($IsAlloc DatatypeTypeType |y#0@@3| Tclass.NestedMatch.Nat $Heap) (|NestedMatch.__default.minus#canCall| |x#0@@3| |y#0@@3|)))) (and (and (and (|$IsA#NestedMatch.Nat| (NestedMatch.__default.minus ($LS $LZ) (|#NestedMatch.Nat.Suc| |x#0@@3|) (|#NestedMatch.Nat.Suc| |y#0@@3|))) (|$IsA#NestedMatch.Nat| (NestedMatch.__default.minus ($LS $LZ) |x#0@@3| |y#0@@3|))) (and (|NestedMatch.__default.minus#canCall| (|#NestedMatch.Nat.Suc| |x#0@@3|) (|#NestedMatch.Nat.Suc| |y#0@@3|)) (|NestedMatch.__default.minus#canCall| |x#0@@3| |y#0@@3|))) (= (ControlFlow 0 2) (- 0 1)))) (|NestedMatch.Nat#Equal| (NestedMatch.__default.minus ($LS ($LS $LZ)) (|#NestedMatch.Nat.Suc| |x#0@@3|) (|#NestedMatch.Nat.Suc| |y#0@@3|)) (NestedMatch.__default.minus ($LS ($LS $LZ)) |x#0@@3| |y#0@@3|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |x#0@@3| Tclass.NestedMatch.Nat) ($IsAlloc DatatypeTypeType |x#0@@3| Tclass.NestedMatch.Nat $Heap)) (|$IsA#NestedMatch.Nat| |x#0@@3|)) (=> (and (and (and ($Is DatatypeTypeType |y#0@@3| Tclass.NestedMatch.Nat) ($IsAlloc DatatypeTypeType |y#0@@3| Tclass.NestedMatch.Nat $Heap)) (|$IsA#NestedMatch.Nat| |y#0@@3|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
