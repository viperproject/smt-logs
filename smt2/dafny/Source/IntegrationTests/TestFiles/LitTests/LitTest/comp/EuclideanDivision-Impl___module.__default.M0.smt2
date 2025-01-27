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
(declare-fun LitInt (Int) Int)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Div (Int Int) Int)
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
(declare-fun Mod (Int Int) Int)
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
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
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
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |524|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@9)) (Lit BoxType ($Box T@@2 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@9)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun |b#0@0| () Int)
(declare-fun |c#0@0| () Int)
(declare-fun |d#0@0| () Int)
(declare-fun |a#0@1| () Int)
(declare-fun |b#0@1| () Int)
(declare-fun |c#0@1| () Int)
(declare-fun |d#0@1| () Int)
(declare-fun |a#0@2| () Int)
(declare-fun |b#0@2| () Int)
(declare-fun |c#0@2| () Int)
(declare-fun |d#0@2| () Int)
(declare-fun |a#0@3| () Int)
(declare-fun |b#0@3| () Int)
(declare-fun |c#0@3| () Int)
(declare-fun |d#0@3| () Int)
(declare-fun |a#0@4| () Int)
(declare-fun |b#0@4| () Int)
(declare-fun |c#0@4| () Int)
(declare-fun |d#0@4| () Int)
(declare-fun |a#0@5| () Int)
(declare-fun |b#0@5| () Int)
(declare-fun |c#0@5| () Int)
(declare-fun |d#0@5| () Int)
(declare-fun |a#0@6| () Int)
(declare-fun |b#0@6| () Int)
(declare-fun |c#0@6| () Int)
(declare-fun |d#0@6| () Int)
(declare-fun |a#0@7| () Int)
(declare-fun |b#0@7| () Int)
(declare-fun |c#0@7| () Int)
(declare-fun |d#0@7| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M0)
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
 (=> (= (ControlFlow 0 0) 66) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |$rhs#0@0| (LitInt (- 0 6))) (= |$rhs#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 2) (- 0 65)) (or (not (= (LitInt (- 0 4)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 4)) 0)) (not true)) (=> (= |a#0@0| (Div |$rhs#0@0| (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 64)) (= |a#0@0| (LitInt 2))) (=> (= |a#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 63)) (or (not (= (LitInt (- 0 4)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 4)) 0)) (not true)) (=> (= |b#0@0| (Div |$rhs#1@0| (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 62)) (= |b#0@0| (LitInt (- 0 1)))) (=> (= |b#0@0| (LitInt (- 0 1))) (and (=> (= (ControlFlow 0 2) (- 0 61)) (or (not (= (LitInt 4) 0)) (not true))) (=> (or (not (= (LitInt 4) 0)) (not true)) (=> (= |c#0@0| (Div |$rhs#0@0| (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 60)) (= |c#0@0| (LitInt (- 0 2)))) (=> (= |c#0@0| (LitInt (- 0 2))) (and (=> (= (ControlFlow 0 2) (- 0 59)) (or (not (= (LitInt 4) 0)) (not true))) (=> (or (not (= (LitInt 4) 0)) (not true)) (=> (= |d#0@0| (Div |$rhs#1@0| (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 58)) (= |d#0@0| (LitInt 1))) (=> (= |d#0@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 57)) (or (not (= (LitInt (- 0 2)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 2)) 0)) (not true)) (=> (= |a#0@1| (LitInt (Div (- 0 4) (LitInt (- 0 2))))) (and (=> (= (ControlFlow 0 2) (- 0 56)) (= |a#0@1| (LitInt 2))) (=> (= |a#0@1| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 55)) (or (not (= (LitInt (- 0 2)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 2)) 0)) (not true)) (=> (= |b#0@1| (LitInt (Div 4 (LitInt (- 0 2))))) (and (=> (= (ControlFlow 0 2) (- 0 54)) (= |b#0@1| (LitInt (- 0 2)))) (=> (= |b#0@1| (LitInt (- 0 2))) (and (=> (= (ControlFlow 0 2) (- 0 53)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |c#0@1| (LitInt (Div (- 0 4) (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 52)) (= |c#0@1| (LitInt (- 0 2)))) (=> (= |c#0@1| (LitInt (- 0 2))) (and (=> (= (ControlFlow 0 2) (- 0 51)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |d#0@1| (LitInt (Div 4 (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 50)) (= |d#0@1| (LitInt 2))) (=> (= |d#0@1| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 49)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |a#0@2| (LitInt (Div 101 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (= |a#0@2| (LitInt (- 0 33)))) (=> (= |a#0@2| (LitInt (- 0 33))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |b#0@2| (LitInt (Div 100 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (= |b#0@2| (LitInt (- 0 33)))) (=> (= |b#0@2| (LitInt (- 0 33))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |c#0@2| (LitInt (Div 99 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (= |c#0@2| (LitInt (- 0 33)))) (=> (= |c#0@2| (LitInt (- 0 33))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |d#0@2| (LitInt (Div 98 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (= |d#0@2| (LitInt (- 0 32)))) (=> (= |d#0@2| (LitInt (- 0 32))) (and (=> (= (ControlFlow 0 2) (- 0 41)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |a#0@3| (LitInt (Div (- 0 101) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (= |a#0@3| (LitInt (- 0 34)))) (=> (= |a#0@3| (LitInt (- 0 34))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |b#0@3| (LitInt (Div (- 0 100) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (= |b#0@3| (LitInt (- 0 34)))) (=> (= |b#0@3| (LitInt (- 0 34))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |c#0@3| (LitInt (Div (- 0 99) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (= |c#0@3| (LitInt (- 0 33)))) (=> (= |c#0@3| (LitInt (- 0 33))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |d#0@3| (LitInt (Div (- 0 98) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (= |d#0@3| (LitInt (- 0 33)))) (=> (= |d#0@3| (LitInt (- 0 33))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |a#0@4| (LitInt (Mod (- 0 101) (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (= |a#0@4| (LitInt 1))) (=> (= |a#0@4| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |b#0@4| (LitInt (Mod (- 0 100) (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (= |b#0@4| (LitInt 2))) (=> (= |b#0@4| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |c#0@4| (LitInt (Mod (- 0 99) (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (= |c#0@4| (LitInt 0))) (=> (= |c#0@4| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |d#0@4| (LitInt (Mod (- 0 98) (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (= |d#0@4| (LitInt 1))) (=> (= |d#0@4| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |a#0@5| (LitInt (Mod 101 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (= |a#0@5| (LitInt 2))) (=> (= |a#0@5| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |b#0@5| (LitInt (Mod 100 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (= |b#0@5| (LitInt 1))) (=> (= |b#0@5| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |c#0@5| (LitInt (Mod 99 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (= |c#0@5| (LitInt 0))) (=> (= |c#0@5| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= (LitInt (- 0 3)) 0)) (not true))) (=> (or (not (= (LitInt (- 0 3)) 0)) (not true)) (=> (= |d#0@5| (LitInt (Mod 98 (LitInt (- 0 3))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (= |d#0@5| (LitInt 2))) (=> (= |d#0@5| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |a#0@6| (LitInt (Mod (- 0 101) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (= |a#0@6| (LitInt 1))) (=> (= |a#0@6| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |b#0@6| (LitInt (Mod (- 0 100) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (= |b#0@6| (LitInt 2))) (=> (= |b#0@6| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |c#0@6| (LitInt (Mod (- 0 99) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= |c#0@6| (LitInt 0))) (=> (= |c#0@6| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |d#0@6| (LitInt (Mod (- 0 98) (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= |d#0@6| (LitInt 1))) (=> (= |d#0@6| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |a#0@7| (LitInt (Mod 101 (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= |a#0@7| (LitInt 2))) (=> (= |a#0@7| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |b#0@7| (LitInt (Mod 100 (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= |b#0@7| (LitInt 1))) (=> (= |b#0@7| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |c#0@7| (LitInt (Mod 99 (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= |c#0@7| (LitInt 0))) (=> (= |c#0@7| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (and (= |d#0@7| (LitInt (Mod 98 (LitInt 3)))) (= (ControlFlow 0 2) (- 0 1))) (= |d#0@7| (LitInt 2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 66) 2))) anon0_correct)))
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
