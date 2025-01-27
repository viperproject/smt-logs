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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.UseTheVars (Int Int Real Int Real (_ BitVec 67) (_ BitVec 32) (_ BitVec 7) Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun U_2_bv67 (T@U) (_ BitVec 67))
(declare-fun Lit (T@T T@U) T@U)
(declare-fun bv67Type () T@T)
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv32Type () T@T)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv7Type () T@T)
(declare-fun |_module.__default.UseTheVars#canCall| (Int Int Real Int Real (_ BitVec 67) (_ BitVec 32) (_ BitVec 7) Int) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun boolType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bv67_2_U ((_ BitVec 67)) T@U)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun nat_from_bv7 ((_ BitVec 7)) Int)
(declare-fun nat_from_bv32 ((_ BitVec 32)) Int)
(declare-fun nat_from_bv67 ((_ BitVec 67)) Int)
(declare-fun q@Real (Int) Real)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
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
))) (= (Ctor bv67Type) 3)) (forall ((arg0@@2 (_ BitVec 67)) ) (! (= (U_2_bv67 (bv67_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv67|
 :pattern ( (bv67_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv67_2_U (U_2_bv67 x@@2)) x@@2)
 :qid |cast:U_2_bv67|
 :pattern ( (U_2_bv67 x@@2))
))) (= (Ctor bv32Type) 4)) (forall ((arg0@@3 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@3))
))) (forall ((x@@3 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@3)) x@@3)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@3))
))) (= (Ctor bv7Type) 5)) (forall ((arg0@@4 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@4))
))) (forall ((x@@4 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@4)) x@@4)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@4))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0| Int) (|n#0| Int) (|r#0| Real) (|even#0| Int) (|small#0| Real) (|b67#0| T@U) (|w#0| T@U) (|seven#0| T@U) (|noll#0| Int) ) (!  (=> (or (|_module.__default.UseTheVars#canCall| (LitInt |x#0|) (LitInt |n#0|) (LitReal |r#0|) (LitInt |even#0|) (LitReal |small#0|) (U_2_bv67 (Lit bv67Type |b67#0|)) (U_2_bv32 (Lit bv32Type |w#0|)) (U_2_bv7 (Lit bv7Type |seven#0|)) (LitInt |noll#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (<= (LitInt 0) |n#0|) (= (Mod |even#0| (LitInt 2)) (LitInt 0))) (and (<= (LitReal (- 0.0 4.0)) |small#0|) (< |small#0| 300.0))) (= 0 |noll#0|)))) (= (_module.__default.UseTheVars (LitInt |x#0|) (LitInt |n#0|) (LitReal |r#0|) (LitInt |even#0|) (LitReal |small#0|) (U_2_bv67 (Lit bv67Type |b67#0|)) (U_2_bv32 (Lit bv32Type |w#0|)) (U_2_bv7 (Lit bv7Type |seven#0|)) (LitInt |noll#0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |TypeConversionsdfy.8:28|
 :weight 3
 :skolemid |571|
 :pattern ( (_module.__default.UseTheVars (LitInt |x#0|) (LitInt |n#0|) (LitReal |r#0|) (LitInt |even#0|) (LitReal |small#0|) (U_2_bv67 (Lit bv67Type |b67#0|)) (U_2_bv32 (Lit bv32Type |w#0|)) (U_2_bv7 (Lit bv7Type |seven#0|)) (LitInt |noll#0|)))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 Real) ) (! (= (LitReal x@@6) x@@6)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((b (_ BitVec 7)) ) (!  (and (and (<= 0 (nat_from_bv7 b)) (< (nat_from_bv7 b) 128)) (= (nat_from_bv7 b) (bv2int b)))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( (nat_from_bv7 b))
)))
(assert (forall ((b@@0 (_ BitVec 32)) ) (!  (and (and (<= 0 (nat_from_bv32 b@@0)) (< (nat_from_bv32 b@@0) 4294967296)) (= (nat_from_bv32 b@@0) (bv2int b@@0)))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( (nat_from_bv32 b@@0))
)))
(assert (forall ((b@@1 (_ BitVec 67)) ) (!  (and (and (<= 0 (nat_from_bv67 b@@1)) (< (nat_from_bv67 b@@1) 147573952589676412928)) (= (nat_from_bv67 b@@1) (bv2int b@@1)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( (nat_from_bv67 b@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@0| Int) (|n#0@@0| Int) (|r#0@@0| Real) (|even#0@@0| Int) (|small#0@@0| Real) (|b67#0@@0| (_ BitVec 67)) (|w#0@@0| (_ BitVec 32)) (|seven#0@@0| (_ BitVec 7)) (|noll#0@@0| Int) ) (!  (=> (or (|_module.__default.UseTheVars#canCall| |x#0@@0| |n#0@@0| |r#0@@0| |even#0@@0| |small#0@@0| |b67#0@@0| |w#0@@0| |seven#0@@0| |noll#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (<= (LitInt 0) |n#0@@0|) (= (Mod |even#0@@0| (LitInt 2)) (LitInt 0))) (and (<= (LitReal (- 0.0 4.0)) |small#0@@0|) (< |small#0@@0| 300.0))) (= 0 |noll#0@@0|)))) (= (_module.__default.UseTheVars |x#0@@0| |n#0@@0| |r#0@@0| |even#0@@0| |small#0@@0| |b67#0@@0| |w#0@@0| |seven#0@@0| |noll#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |TypeConversionsdfy.8:28|
 :skolemid |570|
 :pattern ( (_module.__default.UseTheVars |x#0@@0| |n#0@@0| |r#0@@0| |even#0@@0| |small#0@@0| |b67#0@@0| |w#0@@0| |seven#0@@0| |noll#0@@0|))
))))
(assert (forall ((x@@9 Int) ) (! (= (q@Real x@@9) (to_real x@@9))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@9))
)))
(assert (forall ((x@@10 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@10))
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
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 8)) (forall ((arg0@@5 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@5 arg1)) 9)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@6 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@6 arg1@@0)) arg0@@6)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@6 arg1@@0))
))) (forall ((arg0@@7 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@7 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@7 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |608|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@11 Int) (y Int) ) (! (= (Mod x@@11 y) (mod x@@11 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@11 y))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@13))) (Lit BoxType ($Box realType (real_2_U x@@13))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@14)) (Lit BoxType ($Box T@@2 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@14)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@1| () Int)
(declare-fun |n#0@@1| () Int)
(declare-fun |r#0@1| () Real)
(declare-fun |even#0@@1| () Int)
(declare-fun |small#0@@1| () Real)
(declare-fun |b67#0@@1| () (_ BitVec 67))
(declare-fun |w#0@@1| () (_ BitVec 32))
(declare-fun |seven#0@@1| () (_ BitVec 7))
(declare-fun |noll#0@@1| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun |r#0@0| () Real)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun |$rhs#0_1@0| () Real)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun |$rhs#1_1@0| () Real)
(declare-fun |$rhs#2_0@0| () Int)
(declare-fun |$rhs#2_1@0| () Real)
(declare-fun |$rhs#3_0@0| () Int)
(declare-fun |$rhs#3_1@0| () Real)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.M3)
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
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (|_module.__default.UseTheVars#canCall| |x#0@1| |n#0@@1| |r#0@1| |even#0@@1| |small#0@@1| |b67#0@@1| |w#0@@1| |seven#0@@1| |noll#0@@1|) (or (_module.__default.UseTheVars |x#0@1| |n#0@@1| |r#0@1| |even#0@@1| |small#0@@1| |b67#0@@1| |w#0@@1| |seven#0@@1| |noll#0@@1|) (U_2_bool (Lit boolType (bool_2_U true))))))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= (LitInt 0) |x#0@0|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= (LitReal 0.0) |r#0@0|)) (=> (and (and (and (<= (LitInt 0) |x#0@0|) (<= (LitReal 0.0) |r#0@0|)) (= |r#0@1| |r#0@0|)) (and (= |x#0@1| |x#0@0|) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct)))))
(let ((anon13_Else_correct  (=> (and (< |x#0@0| (LitInt 0)) (= (ControlFlow 0 9) 5)) anon8_correct)))
(let ((anon13_Then_correct  (=> (and (<= (LitInt 0) |x#0@0|) (= (ControlFlow 0 8) 5)) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (and (= |$rhs#0_0@0| 0) (= |$rhs#0_1@0| (q@Real 0))) (and (= |x#0@0| |$rhs#0_0@0|) (= |r#0@0| |$rhs#0_1@0|))) (and (=> (= (ControlFlow 0 13) 8) anon13_Then_correct) (=> (= (ControlFlow 0 13) 9) anon13_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (and (= |$rhs#1_0@0| (nat_from_bv7 |seven#0@@1|)) (= |$rhs#1_1@0| (q@Real (nat_from_bv7 |seven#0@@1|)))) (and (= |x#0@0| |$rhs#1_0@0|) (= |r#0@0| |$rhs#1_1@0|))) (and (=> (= (ControlFlow 0 12) 8) anon13_Then_correct) (=> (= (ControlFlow 0 12) 9) anon13_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (and (= |$rhs#2_0@0| (nat_from_bv32 |w#0@@1|)) (= |$rhs#2_1@0| (q@Real (nat_from_bv32 |w#0@@1|)))) (and (= |x#0@0| |$rhs#2_0@0|) (= |r#0@0| |$rhs#2_1@0|))) (and (=> (= (ControlFlow 0 11) 8) anon13_Then_correct) (=> (= (ControlFlow 0 11) 9) anon13_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (and (= |$rhs#3_0@0| (nat_from_bv67 |b67#0@@1|)) (= |$rhs#3_1@0| (q@Real (nat_from_bv67 |b67#0@@1|)))) (and (= |x#0@0| |$rhs#3_0@0|) (= |r#0@0| |$rhs#3_1@0|))) (and (=> (= (ControlFlow 0 10) 8) anon13_Then_correct) (=> (= (ControlFlow 0 10) 9) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (=> (= (ControlFlow 0 14) 10) anon9_Then_correct) (=> (= (ControlFlow 0 14) 11) anon10_Then_correct)) (=> (= (ControlFlow 0 14) 12) anon11_Then_correct)) (=> (= (ControlFlow 0 14) 13) anon12_Then_correct)) (=> (= (ControlFlow 0 14) 2) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (<= (LitInt 0) |n#0@@1|) (= (Mod |even#0@@1| (LitInt 2)) (LitInt 0)))) (=> (and (and (and (<= (LitReal (- 0.0 4.0)) |small#0@@1|) (< |small#0@@1| 300.0)) (= 0 |noll#0@@1|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
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
