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
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun tytagFamily$MyClass () T@U)
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
(declare-fun _module.MyClass.P_h (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.MyClass.P_h#canCall| (T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.MyClass (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.MyClass? (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._module.MyClass_0 (T@U) T@U)
(declare-fun Tclass._module.MyClass_1 (T@U) T@U)
(declare-fun Tclass._module.MyClass?_0 (T@U) T@U)
(declare-fun Tclass._module.MyClass?_1 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._module.MyClass Tagclass._module.MyClass? tytagFamily$MyClass)
)
(assert  (and (= (Ctor BoxType) 3) (= (Ctor refType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A T@U) (_module.MyClass$B T@U) (|_module.MyClass.P#$X| T@U) (|_module.MyClass.P#$Y| T@U) ($ly T@U) (this T@U) (|_k#0| T@U) (|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|_module.MyClass.P_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| this (Lit BoxType |_k#0|) |x#0| |y#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.MyClass _module.MyClass$A _module.MyClass$B))) ($IsBox |x#0| |_module.MyClass.P#$X|)) ($IsBox |y#0| |_module.MyClass.P#$Y|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (|_module.MyClass.P_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| this (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0| |y#0|)) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0| |y#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0|) (|_module.MyClass.P_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| this |_k'#1| |x#0| |y#0|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1311|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this |_k'#1| |x#0| |y#0|))
))))) (= (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this (Lit BoxType |_k#0|) |x#0| |y#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0| |y#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0|) (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this |_k'#1@@0| |x#0| |y#0|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1310|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this |_k'#1@@0| |x#0| |y#0|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1312|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A _module.MyClass$B |_module.MyClass.P#$X| |_module.MyClass.P#$Y| ($LS $ly) this (Lit BoxType |_k#0|) |x#0| |y#0|))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |705|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |713|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A@@0 T@U) (_module.MyClass$B@@0 T@U) (|_module.MyClass.P#$X@@0| T@U) (|_module.MyClass.P#$Y@@0| T@U) ($ly@@0 T@U) (this@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) (|_k#0@@0| T@U) ) (!  (=> (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.MyClass _module.MyClass$A@@0 _module.MyClass$B@@0))) ($IsBox |x#0@@0| |_module.MyClass.P#$X@@0|)) ($IsBox |y#0@@0| |_module.MyClass.P#$Y@@0|)) (= |_k#0@@0| (|ORD#FromNat| 0))) (_module.MyClass.P_h _module.MyClass$A@@0 _module.MyClass$B@@0 |_module.MyClass.P#$X@@0| |_module.MyClass.P#$Y@@0| $ly@@0 this@@0 |_k#0@@0| |x#0@@0| |y#0@@0|))
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@0 _module.MyClass$B@@0 |_module.MyClass.P#$X@@0| |_module.MyClass.P#$Y@@0| $ly@@0 this@@0 |_k#0@@0| |x#0@@0| |y#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A@@1 T@U) (_module.MyClass$B@@1 T@U) (|_module.MyClass.P#$X@@1| T@U) (|_module.MyClass.P#$Y@@1| T@U) ($ly@@1 T@U) (this@@1 T@U) (|_k#0@@1| T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|_module.MyClass.P_h#canCall| _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| (Lit refType this@@1) (Lit BoxType |_k#0@@1|) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.MyClass _module.MyClass$A@@1 _module.MyClass$B@@1))) ($IsBox |x#0@@1| |_module.MyClass.P#$X@@1|)) ($IsBox |y#0@@1| |_module.MyClass.P#$Y@@1|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (|_module.MyClass.P_h#canCall| _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| (Lit refType this@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) (Lit refType this@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@1|) (|_module.MyClass.P_h#canCall| _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| this@@1 |_k'#2| |x#0@@1| |y#0@@1|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1314|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) this@@1 |_k'#2| |x#0@@1| |y#0@@1|))
))))) (= (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) (Lit refType this@@1) (Lit BoxType |_k#0@@1|) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) (Lit refType this@@1) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@1|) (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) this@@1 |_k'#2@@0| |x#0@@1| |y#0@@1|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1313|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) this@@1 |_k'#2@@0| |x#0@@1| |y#0@@1|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1315|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.P#$X@@1| |_module.MyClass.P#$Y@@1| ($LS $ly@@1) (Lit refType this@@1) (Lit BoxType |_k#0@@1|) (Lit BoxType |x#0@@1|) (Lit BoxType |y#0@@1|)))
))))
(assert (forall ((_module.MyClass$A@@2 T@U) (_module.MyClass$B@@2 T@U) (|_module.MyClass.P#$X@@2| T@U) (|_module.MyClass.P#$Y@@2| T@U) ($ly@@2 T@U) (this@@2 T@U) (|_k#0@@2| T@U) (|x#0@@2| T@U) (|y#0@@2| T@U) ) (! (= (_module.MyClass.P_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.P#$X@@2| |_module.MyClass.P#$Y@@2| ($LS $ly@@2) this@@2 |_k#0@@2| |x#0@@2| |y#0@@2|) (_module.MyClass.P_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.P#$X@@2| |_module.MyClass.P#$Y@@2| $ly@@2 this@@2 |_k#0@@2| |x#0@@2| |y#0@@2|))
 :qid |unknown.0:0|
 :skolemid |1303|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.P#$X@@2| |_module.MyClass.P#$Y@@2| ($LS $ly@@2) this@@2 |_k#0@@2| |x#0@@2| |y#0@@2|))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |632|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |630|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |641|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_module.MyClass$A@@3 T@U) (_module.MyClass$B@@3 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass._module.MyClass _module.MyClass$A@@3 _module.MyClass$B@@3))  (and ($Is refType |c#0| (Tclass._module.MyClass? _module.MyClass$A@@3 _module.MyClass$B@@3)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1416|
 :pattern ( ($Is refType |c#0| (Tclass._module.MyClass _module.MyClass$A@@3 _module.MyClass$B@@3)))
 :pattern ( ($Is refType |c#0| (Tclass._module.MyClass? _module.MyClass$A@@3 _module.MyClass$B@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |654|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.MyClass$A@@4 T@U) (_module.MyClass$B@@4 T@U) ($o T@U) ) (! (= ($Is refType $o (Tclass._module.MyClass? _module.MyClass$A@@4 _module.MyClass$B@@4))  (or (= $o null) (= (dtype $o) (Tclass._module.MyClass? _module.MyClass$A@@4 _module.MyClass$B@@4))))
 :qid |unknown.0:0|
 :skolemid |1291|
 :pattern ( ($Is refType $o (Tclass._module.MyClass? _module.MyClass$A@@4 _module.MyClass$B@@4)))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |710|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |701|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((_module.MyClass$A@@5 T@U) (_module.MyClass$B@@5 T@U) (|c#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.MyClass _module.MyClass$A@@5 _module.MyClass$B@@5) $h) ($IsAlloc refType |c#0@@0| (Tclass._module.MyClass? _module.MyClass$A@@5 _module.MyClass$B@@5) $h))
 :qid |unknown.0:0|
 :skolemid |1417|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.MyClass _module.MyClass$A@@5 _module.MyClass$B@@5) $h))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.MyClass? _module.MyClass$A@@5 _module.MyClass$B@@5) $h))
)))
(assert  (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.MyClass$A@@6 T@U) (_module.MyClass$B@@6 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.MyClass? _module.MyClass$A@@6 _module.MyClass$B@@6) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1292|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.MyClass? _module.MyClass$A@@6 _module.MyClass$B@@6) $h@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |704|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A@@7 T@U) (_module.MyClass$B@@7 T@U) (|_module.MyClass.P#$X@@3| T@U) (|_module.MyClass.P#$Y@@3| T@U) ($ly@@3 T@U) (this@@3 T@U) (|_k#0@@3| T@U) (|x#0@@3| T@U) (|y#0@@3| T@U) ) (!  (=> (or (|_module.MyClass.P_h#canCall| _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| this@@3 |_k#0@@3| |x#0@@3| |y#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass._module.MyClass _module.MyClass$A@@7 _module.MyClass$B@@7))) ($IsBox |x#0@@3| |_module.MyClass.P#$X@@3|)) ($IsBox |y#0@@3| |_module.MyClass.P#$Y@@3|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (|_module.MyClass.P_h#canCall| _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| this@@3 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3| |y#0@@3|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| $ly@@3 this@@3 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3| |y#0@@3|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@3|) (|_module.MyClass.P_h#canCall| _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| this@@3 |_k'#0| |x#0@@3| |y#0@@3|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1308|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| $ly@@3 this@@3 |_k'#0| |x#0@@3| |y#0@@3|))
))))) (= (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| ($LS $ly@@3) this@@3 |_k#0@@3| |x#0@@3| |y#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| $ly@@3 this@@3 (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3| |y#0@@3|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@3|) (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| $ly@@3 this@@3 |_k'#0@@0| |x#0@@3| |y#0@@3|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1307|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| $ly@@3 this@@3 |_k'#0@@0| |x#0@@3| |y#0@@3|))
)))))))
 :qid |unknown.0:0|
 :skolemid |1309|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@7 _module.MyClass$B@@7 |_module.MyClass.P#$X@@3| |_module.MyClass.P#$Y@@3| ($LS $ly@@3) this@@3 |_k#0@@3| |x#0@@3| |y#0@@3|))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |653|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |700|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((_module.MyClass$A@@8 T@U) (_module.MyClass$B@@8 T@U) ) (! (= (Tclass._module.MyClass_0 (Tclass._module.MyClass _module.MyClass$A@@8 _module.MyClass$B@@8)) _module.MyClass$A@@8)
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( (Tclass._module.MyClass _module.MyClass$A@@8 _module.MyClass$B@@8))
)))
(assert (forall ((_module.MyClass$A@@9 T@U) (_module.MyClass$B@@9 T@U) ) (! (= (Tclass._module.MyClass_1 (Tclass._module.MyClass _module.MyClass$A@@9 _module.MyClass$B@@9)) _module.MyClass$B@@9)
 :qid |unknown.0:0|
 :skolemid |1198|
 :pattern ( (Tclass._module.MyClass _module.MyClass$A@@9 _module.MyClass$B@@9))
)))
(assert (forall ((_module.MyClass$A@@10 T@U) (_module.MyClass$B@@10 T@U) ) (! (= (Tclass._module.MyClass?_0 (Tclass._module.MyClass? _module.MyClass$A@@10 _module.MyClass$B@@10)) _module.MyClass$A@@10)
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (Tclass._module.MyClass? _module.MyClass$A@@10 _module.MyClass$B@@10))
)))
(assert (forall ((_module.MyClass$A@@11 T@U) (_module.MyClass$B@@11 T@U) ) (! (= (Tclass._module.MyClass?_1 (Tclass._module.MyClass? _module.MyClass$A@@11 _module.MyClass$B@@11)) _module.MyClass$B@@11)
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( (Tclass._module.MyClass? _module.MyClass$A@@11 _module.MyClass$B@@11))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |640|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |703|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((_module.MyClass$A@@12 T@U) (_module.MyClass$B@@12 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.MyClass _module.MyClass$A@@12 _module.MyClass$B@@12)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass._module.MyClass _module.MyClass$A@@12 _module.MyClass$B@@12))))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( ($IsBox bx (Tclass._module.MyClass _module.MyClass$A@@12 _module.MyClass$B@@12)))
)))
(assert (forall ((_module.MyClass$A@@13 T@U) (_module.MyClass$B@@13 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.MyClass? _module.MyClass$A@@13 _module.MyClass$B@@13)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass._module.MyClass? _module.MyClass$A@@13 _module.MyClass$B@@13))))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( ($IsBox bx@@0 (Tclass._module.MyClass? _module.MyClass$A@@13 _module.MyClass$B@@13)))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1439|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((_module.MyClass$A@@14 T@U) (_module.MyClass$B@@14 T@U) ) (!  (and (= (Tag (Tclass._module.MyClass _module.MyClass$A@@14 _module.MyClass$B@@14)) Tagclass._module.MyClass) (= (TagFamily (Tclass._module.MyClass _module.MyClass$A@@14 _module.MyClass$B@@14)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |1196|
 :pattern ( (Tclass._module.MyClass _module.MyClass$A@@14 _module.MyClass$B@@14))
)))
(assert (forall ((_module.MyClass$A@@15 T@U) (_module.MyClass$B@@15 T@U) ) (!  (and (= (Tag (Tclass._module.MyClass? _module.MyClass$A@@15 _module.MyClass$B@@15)) Tagclass._module.MyClass?) (= (TagFamily (Tclass._module.MyClass? _module.MyClass$A@@15 _module.MyClass$B@@15)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (Tclass._module.MyClass? _module.MyClass$A@@15 _module.MyClass$B@@15))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |702|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |711|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |633|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |631|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.MyClass$A@@16 () T@U)
(declare-fun _module.MyClass$B@@16 () T@U)
(declare-fun |_module.MyClass.L#$U| () T@U)
(declare-fun |_module.MyClass.L#$V| () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |_k#0@@4| () T@U)
(declare-fun |u#1| () T@U)
(declare-fun |v#1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.MyClass.L_h)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.MyClass.P_h#canCall| _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| this@@4 |_k#0@@4| |u#1| |v#1|) (or (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k#0@@4| |u#1| |v#1|) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS ($LS $LZ)) this@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |u#1| |v#1|))))) (=> (=> (|_module.MyClass.P_h#canCall| _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| this@@4 |_k#0@@4| |u#1| |v#1|) (or (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k#0@@4| |u#1| |v#1|) (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS ($LS $LZ)) this@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |u#1| |v#1|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.MyClass.P_h#canCall| _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| this@@4 |_k#0@@4| |u#1| |v#1|) (or (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k#0@@4| |u#1| |v#1|) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@4|) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS ($LS $LZ)) this@@4 |_k'#1@@1| |u#1| |v#1|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1398|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS ($LS $LZ)) this@@4 |_k'#1@@1| |u#1| |v#1|))
))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@4|) 0) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and (forall ((|_k'#2@@1| T@U) (|u#2| T@U) (|v#2| T@U) ) (!  (=> (and (and ($IsBox |u#2| |_module.MyClass.L#$U|) ($IsBox |v#2| |_module.MyClass.L#$V|)) (|ORD#Less| |_k'#2@@1| |_k#0@@4|)) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k'#2@@1| |u#2| |v#2|))
 :qid |PrefixTypeSubstdfy.25:18|
 :skolemid |1403|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k'#2@@1| |u#2| |v#2|))
)) (= (ControlFlow 0 7) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@4|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@4|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.MyClass.P_h#canCall| _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| this@@4 |_k##0@0| |u#1| |v#1|)) (and (and (|_module.MyClass.P_h#canCall| _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| this@@4 |_k##0@0| |u#1| |v#1|) (and (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k##0@0| |u#1| |v#1|) (and (=> (< 0 (|ORD#Offset| |_k##0@0|)) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |u#1| |v#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k##0@0|) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k'#0@@1| |u#1| |v#1|))
 :qid |PrefixTypeSubstdfy.5:22|
 :skolemid |1397|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |_k'#0@@1| |u#1| |v#1|))
)))))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 4) 2)))) GeneratedUnifiedExit_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) ) (!  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (|ORD#Less| |$ih#_k0#0| |_k#0@@4|)) (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |$ih#_k0#0| |u#1| |v#1|))
 :qid |PrefixTypeSubstdfy.25:18|
 :skolemid |1401|
 :pattern ( (_module.MyClass.P_h _module.MyClass$A@@16 _module.MyClass$B@@16 |_module.MyClass.L#$U| |_module.MyClass.L#$V| ($LS $LZ) this@@4 |$ih#_k0#0| |u#1| |v#1|))
)))) (and (=> (= (ControlFlow 0 8) 4) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass._module.MyClass _module.MyClass$A@@16 _module.MyClass$B@@16)) ($IsAlloc refType this@@4 (Tclass._module.MyClass _module.MyClass$A@@16 _module.MyClass$B@@16) $Heap))) (and ($IsBox |u#1| |_module.MyClass.L#$U|) ($IsAllocBox |u#1| |_module.MyClass.L#$U| $Heap))) (and (and ($IsBox |v#1| |_module.MyClass.L#$V|) ($IsAllocBox |v#1| |_module.MyClass.L#$V| $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 8)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
