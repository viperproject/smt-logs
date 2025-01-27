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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.DafnyNaCl.GF64__Any__Limb () T@U)
(declare-fun Tagclass.DafnyNaCl.GF64 () T@U)
(declare-fun tytagFamily$GF64_Any_Limb () T@U)
(declare-fun tytagFamily$GF64 () T@U)
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
(declare-fun Tclass.DafnyNaCl.GF64__Any__Limb () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DafnyNaCl.__default.LM () Int)
(declare-fun Mul (Int Int) Int)
(declare-fun DafnyNaCl.__default.MGFLC () Int)
(declare-fun DafnyNaCl.__default.MGFLP () Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Tclass.DafnyNaCl.GF64 () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DafnyNaCl.__default.NGFD () Int)
(declare-fun DafnyNaCl.__default.R2256 () Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DafnyNaCl.__default.M2256 () Int)
(declare-fun Mod (Int Int) Int)
(declare-fun DafnyNaCl.__default.P () Int)
(declare-fun DafnyNaCl.__default.LMM1 () Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass.DafnyNaCl.GF64__Any__Limb Tagclass.DafnyNaCl.GF64 tytagFamily$GF64_Any_Limb tytagFamily$GF64)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|i#0| T@U) ) (! (= ($Is intType |i#0| Tclass.DafnyNaCl.GF64__Any__Limb)  (and (and (<= (LitInt (- 0 9223372036854775808)) (U_2_int |i#0|)) (< (U_2_int |i#0|) 9223372036854775808)) (and (<= (- 0 DafnyNaCl.__default.LM) (U_2_int |i#0|)) (<= (U_2_int |i#0|) (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Is intType |i#0| Tclass.DafnyNaCl.GF64__Any__Limb))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((|a#0| T@U) ) (! (= ($Is SeqType |a#0| Tclass.DafnyNaCl.GF64)  (and ($Is SeqType |a#0| (TSeq Tclass.DafnyNaCl.GF64__Any__Limb)) (= (|Seq#Length| |a#0|) DafnyNaCl.__default.NGFD)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is SeqType |a#0| Tclass.DafnyNaCl.GF64))
)))
(assert (= DafnyNaCl.__default.MGFLC (+ (Mul DafnyNaCl.__default.R2256 (LitInt 15)) 1)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.DafnyNaCl.GF64__Any__Limb) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass.DafnyNaCl.GF64__Any__Limb)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx Tclass.DafnyNaCl.GF64__Any__Limb))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.DafnyNaCl.GF64) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) Tclass.DafnyNaCl.GF64)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsBox bx@@0 Tclass.DafnyNaCl.GF64))
)))
(assert (= DafnyNaCl.__default.M2256 (LitInt 115792089237316195423570985008687907853269984665640564039457584007913129639936)))
(assert (= DafnyNaCl.__default.R2256 (Mod DafnyNaCl.__default.M2256 DafnyNaCl.__default.P)))
(assert (= DafnyNaCl.__default.MGFLP (Mul DafnyNaCl.__default.LMM1 DafnyNaCl.__default.LMM1)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.M2256) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.P) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.NGFD) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.LM) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.LMM1) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.R2256) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.MGFLP) TInt)))
(assert  (=> (< 2 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.MGFLC) TInt)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSeq (TSeq t@@0)) t@@0)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSeq t@@1)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (= DafnyNaCl.__default.NGFD (LitInt 16)))
(assert (= DafnyNaCl.__default.LMM1 (LitInt 65535)))
(assert (= DafnyNaCl.__default.LM (LitInt 65536)))
(assert (= DafnyNaCl.__default.P (LitInt (- 57896044618658097711785492504343953926634992332820282019728792003956564819968 19))))
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
 :skolemid |568|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (forall ((bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@2)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@2))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@2)))
)))
(assert (= (Tag Tclass.DafnyNaCl.GF64__Any__Limb) Tagclass.DafnyNaCl.GF64__Any__Limb))
(assert (= (TagFamily Tclass.DafnyNaCl.GF64__Any__Limb) tytagFamily$GF64_Any_Limb))
(assert (= (Tag Tclass.DafnyNaCl.GF64) Tagclass.DafnyNaCl.GF64))
(assert (= (TagFamily Tclass.DafnyNaCl.GF64) tytagFamily$GF64))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@9)) (Lit BoxType ($Box T@@3 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@9)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@0 (TSeq t0@@1)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@0))) ($IsBox (|Seq#Index| v@@0 i) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@0 i))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@0 (TSeq t0@@1)))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$DafnyNaCl.Normal__GF64__OK)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon5_correct true))
(let ((anon10_Else_correct  (=> (and (< (U_2_int ($Unbox intType (|Seq#Index| |a#0@@0| |i#0@0|))) (LitInt 0)) (= (ControlFlow 0 10) 2)) anon5_correct)))
(let ((anon10_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |a#0@@0| |i#0@0|)))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|))) (=> (= |newtype$check#1@0| DafnyNaCl.__default.LMM1) (and (=> (= (ControlFlow 0 4) (- 0 8)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#1@0|) (< |newtype$check#1@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#1@0|) (< |newtype$check#1@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#1@0|) (<= |newtype$check#1@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))) (=> (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#1@0|) (<= |newtype$check#1@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP))) (=> (= |newtype$check#2@0| DafnyNaCl.__default.LMM1) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#2@0|) (<= |newtype$check#2@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))) (=> (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#2@0|) (<= |newtype$check#2@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP))) (=> (= (ControlFlow 0 4) 2) anon5_correct))))))))))))))))
(let ((anon9_Then_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| DafnyNaCl.__default.NGFD))) (= |newtype$check#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#0@0|) (< |newtype$check#0@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#0@0|) (< |newtype$check#0@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|))) (and (=> (= (ControlFlow 0 11) 4) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))))))
(let ((anon9_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| DafnyNaCl.__default.NGFD)))) (= (ControlFlow 0 3) 2)) anon5_correct)))
(let ((anon8_Then_correct  (=> ($Is SeqType |a#0@@0| Tclass.DafnyNaCl.GF64) (and (=> (= (ControlFlow 0 14) 11) anon9_Then_correct) (=> (= (ControlFlow 0 14) 3) anon9_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 15) 14) anon8_Then_correct) (=> (= (ControlFlow 0 15) 1) anon11_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 16) 15))) anon0_correct)))
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
