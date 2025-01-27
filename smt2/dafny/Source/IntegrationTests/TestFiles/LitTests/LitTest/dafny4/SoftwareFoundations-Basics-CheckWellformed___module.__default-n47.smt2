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
(declare-fun Tagclass._module.bin () T@U)
(declare-fun |##_module.Nat.O| () T@U)
(declare-fun |##_module.Nat.S| () T@U)
(declare-fun |##_module.bin.Zero| () T@U)
(declare-fun |##_module.bin.Twice| () T@U)
(declare-fun |##_module.bin.TwicePlusOne| () T@U)
(declare-fun tytagFamily$Nat () T@U)
(declare-fun tytagFamily$bin () T@U)
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
(declare-fun _module.__default.BinToUnary (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.BinToUnary#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.bin () T@U)
(declare-fun _module.bin.Zero_q (T@U) Bool)
(declare-fun _module.bin.Twice_q (T@U) Bool)
(declare-fun _module.bin._h1 (T@U) T@U)
(declare-fun |_module.__default.plus#canCall| (T@U T@U) Bool)
(declare-fun _module.bin._h2 (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Nat.S| (T@U) T@U)
(declare-fun |#_module.Nat.O| () T@U)
(declare-fun _module.__default.plus (T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.bin.Zero| () T@U)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun _module.Nat.O_q (T@U) Bool)
(declare-fun _module.Nat.S_q (T@U) Bool)
(declare-fun _module.bin.TwicePlusOne_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.bin.Twice| (T@U) T@U)
(declare-fun |#_module.bin.TwicePlusOne| (T@U) T@U)
(declare-fun _module.Nat._h0 (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Nat Tagclass._module.bin |##_module.Nat.O| |##_module.Nat.S| |##_module.bin.Zero| |##_module.bin.Twice| |##_module.bin.TwicePlusOne| tytagFamily$Nat tytagFamily$bin)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.BinToUnary#canCall| |b#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |b#0| Tclass._module.bin))) (and (=> (not (_module.bin.Zero_q |b#0|)) (and (=> (_module.bin.Twice_q |b#0|) (let ((|b'#2| (_module.bin._h1 |b#0|)))
 (and (|_module.__default.BinToUnary#canCall| |b'#2|) (let ((|t#2| (_module.__default.BinToUnary $ly |b'#2|)))
(|_module.__default.plus#canCall| |t#2| |t#2|))))) (=> (not (_module.bin.Twice_q |b#0|)) (let ((|b'#3| (_module.bin._h2 |b#0|)))
 (and (|_module.__default.BinToUnary#canCall| |b'#3|) (let ((|t#3| (_module.__default.BinToUnary $ly |b'#3|)))
 (and (|_module.__default.plus#canCall| |t#3| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|)))) (|_module.__default.plus#canCall| |t#3| (_module.__default.plus ($LS $LZ) |t#3| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|)))))))))))) (= (_module.__default.BinToUnary ($LS $ly) |b#0|) (ite (_module.bin.Zero_q |b#0|) |#_module.Nat.O| (ite (_module.bin.Twice_q |b#0|) (let ((|b'#0| (_module.bin._h1 |b#0|)))
(let ((|t#0| (_module.__default.BinToUnary $ly |b'#0|)))
(_module.__default.plus ($LS $LZ) |t#0| |t#0|))) (let ((|b'#1| (_module.bin._h2 |b#0|)))
(let ((|t#1| (_module.__default.BinToUnary $ly |b'#1|)))
(_module.__default.plus ($LS $LZ) |t#1| (_module.__default.plus ($LS $LZ) |t#1| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|))))))))))))
 :qid |SoftwareFoundationsBasicsdfy.468:16|
 :skolemid |771|
 :pattern ( (_module.__default.BinToUnary ($LS $ly) |b#0|))
))))
(assert (= (DatatypeCtorId |#_module.Nat.O|) |##_module.Nat.O|))
(assert (= (DatatypeCtorId |#_module.bin.Zero|) |##_module.bin.Zero|))
(assert ($Is DatatypeTypeType |#_module.Nat.O| Tclass._module.Nat))
(assert ($Is DatatypeTypeType |#_module.bin.Zero| Tclass._module.bin))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Nat.O_q d) (= (DatatypeCtorId d) |##_module.Nat.O|))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( (_module.Nat.O_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.S_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.S|))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( (_module.Nat.S_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.bin.Zero_q d@@1) (= (DatatypeCtorId d@@1) |##_module.bin.Zero|))
 :qid |unknown.0:0|
 :skolemid |851|
 :pattern ( (_module.bin.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.bin.Twice_q d@@2) (= (DatatypeCtorId d@@2) |##_module.bin.Twice|))
 :qid |unknown.0:0|
 :skolemid |854|
 :pattern ( (_module.bin.Twice_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.bin.TwicePlusOne_q d@@3) (= (DatatypeCtorId d@@3) |##_module.bin.TwicePlusOne|))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( (_module.bin.TwicePlusOne_q d@@3))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Nat.O_q d@@4) (= d@@4 |#_module.Nat.O|))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (_module.Nat.O_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.bin.Zero_q d@@5) (= d@@5 |#_module.bin.Zero|))
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( (_module.bin.Zero_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Nat.S_q d@@6) (exists ((|a#41#0#0| T@U) ) (! (= d@@6 (|#_module.Nat.S| |a#41#0#0|))
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |838|
)))
 :qid |unknown.0:0|
 :skolemid |839|
 :pattern ( (_module.Nat.S_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.bin.Twice_q d@@7) (exists ((|a#51#0#0| T@U) ) (! (= d@@7 (|#_module.bin.Twice| |a#51#0#0|))
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |855|
)))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( (_module.bin.Twice_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.bin.TwicePlusOne_q d@@8) (exists ((|a#57#0#0| T@U) ) (! (= d@@8 (|#_module.bin.TwicePlusOne| |a#57#0#0|))
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |864|
)))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( (_module.bin.TwicePlusOne_q d@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0| T@U) (|m#0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| (Lit DatatypeTypeType |n#0|) (Lit DatatypeTypeType |m#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0| Tclass._module.Nat) ($Is DatatypeTypeType |m#0| Tclass._module.Nat)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.O_q (Lit DatatypeTypeType |n#0|)))))) (let ((|n'#3| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |n#0|)))))
(|_module.__default.plus#canCall| |n'#3| (Lit DatatypeTypeType |m#0|)))) (= (_module.__default.plus ($LS $ly@@0) (Lit DatatypeTypeType |n#0|) (Lit DatatypeTypeType |m#0|)) (ite (_module.Nat.O_q (Lit DatatypeTypeType |n#0|)) |m#0| (let ((|n'#2| (Lit DatatypeTypeType (_module.Nat._h0 (Lit DatatypeTypeType |n#0|)))))
(Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType (_module.__default.plus ($LS $ly@@0) |n'#2| (Lit DatatypeTypeType |m#0|))))))))))
 :qid |SoftwareFoundationsBasicsdfy.180:16|
 :weight 3
 :skolemid |653|
 :pattern ( (_module.__default.plus ($LS $ly@@0) (Lit DatatypeTypeType |n#0|) (Lit DatatypeTypeType |m#0|)))
))))
(assert (forall ((|a#42#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.S| |a#42#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#42#0#0| Tclass._module.Nat))
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |840|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.S| |a#42#0#0|) Tclass._module.Nat))
)))
(assert (forall ((|a#52#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bin.Twice| |a#52#0#0|) Tclass._module.bin) ($Is DatatypeTypeType |a#52#0#0| Tclass._module.bin))
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |857|
 :pattern ( ($Is DatatypeTypeType (|#_module.bin.Twice| |a#52#0#0|) Tclass._module.bin))
)))
(assert (forall ((|a#58#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bin.TwicePlusOne| |a#58#0#0|) Tclass._module.bin) ($Is DatatypeTypeType |a#58#0#0| Tclass._module.bin))
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |866|
 :pattern ( ($Is DatatypeTypeType (|#_module.bin.TwicePlusOne| |a#58#0#0|) Tclass._module.bin))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@0| T@U) (|m#0@@0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |n#0@@0| |m#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@0| Tclass._module.Nat) ($Is DatatypeTypeType |m#0@@0| Tclass._module.Nat)))) ($Is DatatypeTypeType (_module.__default.plus $ly@@1 |n#0@@0| |m#0@@0|) Tclass._module.Nat))
 :qid |SoftwareFoundationsBasicsdfy.180:16|
 :skolemid |650|
 :pattern ( (_module.__default.plus $ly@@1 |n#0@@0| |m#0@@0|))
))))
(assert (forall (($ly@@2 T@U) (|n#0@@1| T@U) (|m#0@@1| T@U) ) (! (= (_module.__default.plus ($LS $ly@@2) |n#0@@1| |m#0@@1|) (_module.__default.plus $ly@@2 |n#0@@1| |m#0@@1|))
 :qid |SoftwareFoundationsBasicsdfy.180:16|
 :skolemid |648|
 :pattern ( (_module.__default.plus ($LS $ly@@2) |n#0@@1| |m#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.BinToUnary#canCall| |b#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@0| Tclass._module.bin))) ($Is DatatypeTypeType (_module.__default.BinToUnary $ly@@3 |b#0@@0|) Tclass._module.Nat))
 :qid |SoftwareFoundationsBasicsdfy.468:16|
 :skolemid |769|
 :pattern ( (_module.__default.BinToUnary $ly@@3 |b#0@@0|))
))))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.Nat) (or (_module.Nat.O_q d@@9) (_module.Nat.S_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |847|
 :pattern ( (_module.Nat.S_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Nat))
 :pattern ( (_module.Nat.O_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Nat))
)))
(assert (forall ((|a#40#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.S| |a#40#0#0|)) |##_module.Nat.S|)
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |836|
 :pattern ( (|#_module.Nat.S| |a#40#0#0|))
)))
(assert (forall ((|a#44#0#0| T@U) ) (! (= (_module.Nat._h0 (|#_module.Nat.S| |a#44#0#0|)) |a#44#0#0|)
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |843|
 :pattern ( (|#_module.Nat.S| |a#44#0#0|))
)))
(assert (forall ((|a#50#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bin.Twice| |a#50#0#0|)) |##_module.bin.Twice|)
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |853|
 :pattern ( (|#_module.bin.Twice| |a#50#0#0|))
)))
(assert (forall ((|a#54#0#0| T@U) ) (! (= (_module.bin._h1 (|#_module.bin.Twice| |a#54#0#0|)) |a#54#0#0|)
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |860|
 :pattern ( (|#_module.bin.Twice| |a#54#0#0|))
)))
(assert (forall ((|a#56#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bin.TwicePlusOne| |a#56#0#0|)) |##_module.bin.TwicePlusOne|)
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |862|
 :pattern ( (|#_module.bin.TwicePlusOne| |a#56#0#0|))
)))
(assert (forall ((|a#60#0#0| T@U) ) (! (= (_module.bin._h2 (|#_module.bin.TwicePlusOne| |a#60#0#0|)) |a#60#0#0|)
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |869|
 :pattern ( (|#_module.bin.TwicePlusOne| |a#60#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|n#0@@2| T@U) (|m#0@@2| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |n#0@@2| |m#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |n#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |m#0@@2| Tclass._module.Nat)))) (and (=> (not (_module.Nat.O_q |n#0@@2|)) (let ((|n'#1| (_module.Nat._h0 |n#0@@2|)))
(|_module.__default.plus#canCall| |n'#1| |m#0@@2|))) (= (_module.__default.plus ($LS $ly@@4) |n#0@@2| |m#0@@2|) (ite (_module.Nat.O_q |n#0@@2|) |m#0@@2| (let ((|n'#0| (_module.Nat._h0 |n#0@@2|)))
(|#_module.Nat.S| (_module.__default.plus $ly@@4 |n'#0| |m#0@@2|)))))))
 :qid |SoftwareFoundationsBasicsdfy.180:16|
 :skolemid |652|
 :pattern ( (_module.__default.plus ($LS $ly@@4) |n#0@@2| |m#0@@2|))
))))
(assert (forall (($ly@@5 T@U) (|b#0@@1| T@U) ) (! (= (_module.__default.BinToUnary ($LS $ly@@5) |b#0@@1|) (_module.__default.BinToUnary $ly@@5 |b#0@@1|))
 :qid |SoftwareFoundationsBasicsdfy.468:16|
 :skolemid |767|
 :pattern ( (_module.__default.BinToUnary ($LS $ly@@5) |b#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.BinToUnary#canCall| (Lit DatatypeTypeType |b#0@@2|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@2| Tclass._module.bin))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bin.Zero_q (Lit DatatypeTypeType |b#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bin.Twice_q (Lit DatatypeTypeType |b#0@@2|))))) (let ((|b'#6| (Lit DatatypeTypeType (_module.bin._h1 (Lit DatatypeTypeType |b#0@@2|)))))
 (and (|_module.__default.BinToUnary#canCall| |b'#6|) (let ((|t#6| (_module.__default.BinToUnary ($LS $ly@@6) |b'#6|)))
(|_module.__default.plus#canCall| |t#6| |t#6|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bin.Twice_q (Lit DatatypeTypeType |b#0@@2|)))))) (let ((|b'#7| (Lit DatatypeTypeType (_module.bin._h2 (Lit DatatypeTypeType |b#0@@2|)))))
 (and (|_module.__default.BinToUnary#canCall| |b'#7|) (let ((|t#7| (_module.__default.BinToUnary ($LS $ly@@6) |b'#7|)))
 (and (|_module.__default.plus#canCall| |t#7| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|)))) (|_module.__default.plus#canCall| |t#7| (_module.__default.plus ($LS $LZ) |t#7| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|)))))))))))) (= (_module.__default.BinToUnary ($LS $ly@@6) (Lit DatatypeTypeType |b#0@@2|)) (ite (_module.bin.Zero_q (Lit DatatypeTypeType |b#0@@2|)) |#_module.Nat.O| (ite (_module.bin.Twice_q (Lit DatatypeTypeType |b#0@@2|)) (let ((|b'#4| (Lit DatatypeTypeType (_module.bin._h1 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|t#4| (Lit DatatypeTypeType (_module.__default.BinToUnary ($LS $ly@@6) |b'#4|))))
(Lit DatatypeTypeType (_module.__default.plus ($LS $LZ) |t#4| |t#4|)))) (let ((|b'#5| (Lit DatatypeTypeType (_module.bin._h2 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|t#5| (Lit DatatypeTypeType (_module.__default.BinToUnary ($LS $ly@@6) |b'#5|))))
(Lit DatatypeTypeType (_module.__default.plus ($LS $LZ) |t#5| (Lit DatatypeTypeType (_module.__default.plus ($LS $LZ) |t#5| (Lit DatatypeTypeType (|#_module.Nat.S| (Lit DatatypeTypeType |#_module.Nat.O|))))))))))))))
 :qid |SoftwareFoundationsBasicsdfy.468:16|
 :weight 3
 :skolemid |772|
 :pattern ( (_module.__default.BinToUnary ($LS $ly@@6) (Lit DatatypeTypeType |b#0@@2|)))
))))
(assert (forall ((|a#45#0#0| T@U) ) (! (< (DtRank |a#45#0#0|) (DtRank (|#_module.Nat.S| |a#45#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |844|
 :pattern ( (|#_module.Nat.S| |a#45#0#0|))
)))
(assert (forall ((|a#55#0#0| T@U) ) (! (< (DtRank |a#55#0#0|) (DtRank (|#_module.bin.Twice| |a#55#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |861|
 :pattern ( (|#_module.bin.Twice| |a#55#0#0|))
)))
(assert (forall ((|a#61#0#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#_module.bin.TwicePlusOne| |a#61#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |870|
 :pattern ( (|#_module.bin.TwicePlusOne| |a#61#0#0|))
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
 :skolemid |878|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.bin) (or (or (_module.bin.Zero_q d@@10) (_module.bin.Twice_q d@@10)) (_module.bin.TwicePlusOne_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |873|
 :pattern ( (_module.bin.TwicePlusOne_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.bin))
 :pattern ( (_module.bin.Twice_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.bin))
 :pattern ( (_module.bin.Zero_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.bin))
)))
(assert (forall ((d@@11 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@11 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Nat $h))
)))
(assert (forall ((d@@12 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@12 Tclass._module.bin)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.bin $h@@0))
 :qid |unknown.0:0|
 :skolemid |871|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.bin $h@@0))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= (Tag Tclass._module.bin) Tagclass._module.bin))
(assert (= (TagFamily Tclass._module.bin) tytagFamily$bin))
(assert (= |#_module.Nat.O| (Lit DatatypeTypeType |#_module.Nat.O|)))
(assert (= |#_module.bin.Zero| (Lit DatatypeTypeType |#_module.bin.Zero|)))
(assert (forall ((d@@13 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Nat.S_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Nat $h@@1))) ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@13) Tclass._module.Nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |841|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat._h0 d@@13) Tclass._module.Nat $h@@1))
)))
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.bin.Twice_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.bin $h@@2))) ($IsAlloc DatatypeTypeType (_module.bin._h1 d@@14) Tclass._module.bin $h@@2))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bin._h1 d@@14) Tclass._module.bin $h@@2))
)))
(assert (forall ((d@@15 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.bin.TwicePlusOne_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.bin $h@@3))) ($IsAlloc DatatypeTypeType (_module.bin._h2 d@@15) Tclass._module.bin $h@@3))
 :qid |unknown.0:0|
 :skolemid |867|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bin._h2 d@@15) Tclass._module.bin $h@@3))
)))
(assert (forall ((|a#43#0#0| T@U) ) (! (= (|#_module.Nat.S| (Lit DatatypeTypeType |a#43#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.S| |a#43#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.138:7|
 :skolemid |842|
 :pattern ( (|#_module.Nat.S| (Lit DatatypeTypeType |a#43#0#0|)))
)))
(assert (forall ((|a#53#0#0| T@U) ) (! (= (|#_module.bin.Twice| (Lit DatatypeTypeType |a#53#0#0|)) (Lit DatatypeTypeType (|#_module.bin.Twice| |a#53#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.458:29|
 :skolemid |859|
 :pattern ( (|#_module.bin.Twice| (Lit DatatypeTypeType |a#53#0#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) ) (! (= (|#_module.bin.TwicePlusOne| (Lit DatatypeTypeType |a#59#0#0|)) (Lit DatatypeTypeType (|#_module.bin.TwicePlusOne| |a#59#0#0|)))
 :qid |SoftwareFoundationsBasicsdfy.458:49|
 :skolemid |868|
 :pattern ( (|#_module.bin.TwicePlusOne| (Lit DatatypeTypeType |a#59#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@@3| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b'#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |b'#Z#1@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.BinToUnary)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon12_Else_correct true))
(let ((anon12_Then_correct  (=> (= |b#0@@3| (|#_module.bin.TwicePlusOne| |_mcc#1#0|)) (=> (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.bin) (= |let#0#0#0| |_mcc#1#0|)) (=> (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.bin) (= |b'#Z#0@0| |let#0#0#0|)) (and ($IsAlloc DatatypeTypeType |b'#Z#0@0| Tclass._module.bin $Heap) (= (ControlFlow 0 6) (- 0 5)))) (< (DtRank |b'#Z#0@0|) (DtRank |b#0@@3|)))))))
(let ((anon11_Else_correct  (=> (or (not (= |b#0@@3| (|#_module.bin.Twice| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 8) 6) anon12_Then_correct) (=> (= (ControlFlow 0 8) 7) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (= |b#0@@3| (|#_module.bin.Twice| |_mcc#0#0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.bin) (= |let#2#0#0| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |let#2#0#0| Tclass._module.bin) (= |b'#Z#1@0| |let#2#0#0|)) (and ($IsAlloc DatatypeTypeType |b'#Z#1@0| Tclass._module.bin $Heap) (= (ControlFlow 0 4) (- 0 3)))) (< (DtRank |b'#Z#1@0|) (DtRank |b#0@@3|)))))))
(let ((anon10_Else_correct  (=> (or (not (= |b#0@@3| |#_module.bin.Zero|)) (not true)) (and (=> (= (ControlFlow 0 9) 4) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 10) 1) anon9_Then_correct) (=> (= (ControlFlow 0 10) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |b#0@@3| Tclass._module.bin)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 11) 10))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
