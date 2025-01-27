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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun tytagFamily$Object () T@U)
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
(declare-fun _module.__default.A_h (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.A_h#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |_module.__default.B_h#canCall| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.__default.B_h (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.A (T@U T@U) Bool)
(declare-fun _module.__default.B (T@U T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.A#canCall| (T@U) Bool)
(declare-fun |_module.__default.B#canCall| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Object Tagclass._module.Object? tytagFamily$Object)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.A_h#canCall| |_k#0| |x#0|) (and (< 2 $FunctionContextHeight) ($Is refType |x#0| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (|_module.__default.B_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0|)) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0|) (|_module.__default.A_h#canCall| |_k'#0| |x#0|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |641|
 :pattern ( (_module.__default.A_h $ly |_k'#0| |x#0|))
))))) (= (_module.__default.A_h ($LS $ly) |_k#0| |x#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |x#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0|) (_module.__default.A_h $ly |_k'#0@@0| |x#0|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |640|
 :pattern ( (_module.__default.A_h $ly |_k'#0@@0| |x#0|))
)))))))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |642|
 :pattern ( (_module.__default.A_h ($LS $ly) |_k#0| |x#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.B_h#canCall| |_k#0@@0| |x#0@@0|) (and (< 2 $FunctionContextHeight) ($Is refType |x#0@@0| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (|_module.__default.A_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |x#0@@0|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |x#0@@0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k#0@@0|) (|_module.__default.B_h#canCall| |_k'#0@@1| |x#0@@0|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |664|
 :pattern ( (_module.__default.B_h $ly@@0 |_k'#0@@1| |x#0@@0|))
))))) (= (_module.__default.B_h ($LS $ly@@0) |_k#0@@0| |x#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |x#0@@0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@2| |_k#0@@0|) (_module.__default.B_h $ly@@0 |_k'#0@@2| |x#0@@0|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |663|
 :pattern ( (_module.__default.B_h $ly@@0 |_k'#0@@2| |x#0@@0|))
)))))))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |665|
 :pattern ( (_module.__default.B_h ($LS $ly@@0) |_k#0@@0| |x#0@@0|))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h) ($IsAlloc refType |c#0| Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.Object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |791|
 :pattern ( ($IsAlloc refType $o Tclass._module.Object? $h@@0))
)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| T@U) (|_k#0@@1| T@U) ) (!  (=> (and ($Is refType |x#0@@1| Tclass._module.Object) (= |_k#0@@1| (|ORD#FromNat| 0))) (_module.__default.A_h $ly@@1 |_k#0@@1| |x#0@@1|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |634|
 :pattern ( (_module.__default.A_h $ly@@1 |_k#0@@1| |x#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@2| T@U) (|_k#0@@2| T@U) ) (!  (=> (and ($Is refType |x#0@@2| Tclass._module.Object) (= |_k#0@@2| (|ORD#FromNat| 0))) (_module.__default.B_h $ly@@2 |_k#0@@2| |x#0@@2|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |657|
 :pattern ( (_module.__default.B_h $ly@@2 |_k#0@@2| |x#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|x#0@@3| T@U) ) (!  (=> (and ($Is refType |x#0@@3| Tclass._module.Object) (forall ((|_k#0@@3| T@U) ) (! (_module.__default.A_h ($LS $ly@@3) |_k#0@@3| |x#0@@3|)
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |631|
 :pattern ( (_module.__default.A_h ($LS $ly@@3) |_k#0@@3| |x#0@@3|))
))) (_module.__default.A ($LS $ly@@3) |x#0@@3|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |633|
 :pattern ( (_module.__default.A ($LS $ly@@3) |x#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0@@4| T@U) ) (!  (=> (and ($Is refType |x#0@@4| Tclass._module.Object) (forall ((|_k#0@@4| T@U) ) (! (_module.__default.B_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|)
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |654|
 :pattern ( (_module.__default.B_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|))
))) (_module.__default.B ($LS $ly@@4) |x#0@@4|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |656|
 :pattern ( (_module.__default.B ($LS $ly@@4) |x#0@@4|))
))))
(assert (forall (($ly@@5 T@U) (|_k#0@@5| T@U) (|x#0@@5| T@U) ) (! (= (_module.__default.A_h ($LS $ly@@5) |_k#0@@5| |x#0@@5|) (_module.__default.A_h $ly@@5 |_k#0@@5| |x#0@@5|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |636|
 :pattern ( (_module.__default.A_h ($LS $ly@@5) |_k#0@@5| |x#0@@5|))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@6| T@U) (|x#0@@6| T@U) ) (! (= (_module.__default.B_h ($LS $ly@@6) |_k#0@@6| |x#0@@6|) (_module.__default.B_h $ly@@6 |_k#0@@6| |x#0@@6|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |659|
 :pattern ( (_module.__default.B_h ($LS $ly@@6) |_k#0@@6| |x#0@@6|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|x#0@@7| T@U) ) (!  (=> (and ($Is refType |x#0@@7| Tclass._module.Object) (_module.__default.A ($LS $ly@@7) |x#0@@7|)) (forall ((|_k#0@@7| T@U) ) (! (_module.__default.A_h ($LS $ly@@7) |_k#0@@7| |x#0@@7|)
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |631|
 :pattern ( (_module.__default.A_h ($LS $ly@@7) |_k#0@@7| |x#0@@7|))
)))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |632|
 :pattern ( (_module.__default.A ($LS $ly@@7) |x#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|x#0@@8| T@U) ) (!  (=> (and ($Is refType |x#0@@8| Tclass._module.Object) (_module.__default.B ($LS $ly@@8) |x#0@@8|)) (forall ((|_k#0@@8| T@U) ) (! (_module.__default.B_h ($LS $ly@@8) |_k#0@@8| |x#0@@8|)
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |654|
 :pattern ( (_module.__default.B_h ($LS $ly@@8) |_k#0@@8| |x#0@@8|))
)))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |655|
 :pattern ( (_module.__default.B ($LS $ly@@8) |x#0@@8|))
))))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Object)  (and ($Is refType |c#0@@0| Tclass._module.Object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |792|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@9| T@U) (|x#0@@9| T@U) ) (!  (=> (or (|_module.__default.A_h#canCall| (Lit BoxType |_k#0@@9|) |x#0@@9|) (and (< 2 $FunctionContextHeight) ($Is refType |x#0@@9| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (|_module.__default.B_h#canCall| (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@9|) (|_module.__default.A_h#canCall| |_k'#1| |x#0@@9|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |644|
 :pattern ( (_module.__default.A_h ($LS $ly@@9) |_k'#1| |x#0@@9|))
))))) (= (_module.__default.A_h ($LS $ly@@9) (Lit BoxType |_k#0@@9|) |x#0@@9|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@9|) (_module.__default.A_h ($LS $ly@@9) |_k'#1@@0| |x#0@@9|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |643|
 :pattern ( (_module.__default.A_h ($LS $ly@@9) |_k'#1@@0| |x#0@@9|))
)))))))
 :qid |_04LeastGreatestdfy.45:20|
 :weight 3
 :skolemid |645|
 :pattern ( (_module.__default.A_h ($LS $ly@@9) (Lit BoxType |_k#0@@9|) |x#0@@9|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|_k#0@@10| T@U) (|x#0@@10| T@U) ) (!  (=> (or (|_module.__default.B_h#canCall| (Lit BoxType |_k#0@@10|) |x#0@@10|) (and (< 2 $FunctionContextHeight) ($Is refType |x#0@@10| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (|_module.__default.A_h#canCall| (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@10|) (|_module.__default.B_h#canCall| |_k'#1@@1| |x#0@@10|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |667|
 :pattern ( (_module.__default.B_h ($LS $ly@@10) |_k'#1@@1| |x#0@@10|))
))))) (= (_module.__default.B_h ($LS $ly@@10) (Lit BoxType |_k#0@@10|) |x#0@@10|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@2| |_k#0@@10|) (_module.__default.B_h ($LS $ly@@10) |_k'#1@@2| |x#0@@10|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |666|
 :pattern ( (_module.__default.B_h ($LS $ly@@10) |_k'#1@@2| |x#0@@10|))
)))))))
 :qid |_04LeastGreatestdfy.49:20|
 :weight 3
 :skolemid |668|
 :pattern ( (_module.__default.B_h ($LS $ly@@10) (Lit BoxType |_k#0@@10|) |x#0@@10|))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@11 T@U) (|x#0@@11| T@U) ) (!  (=> (or (|_module.__default.A#canCall| |x#0@@11|) (and (< 1 $FunctionContextHeight) ($Is refType |x#0@@11| Tclass._module.Object))) (and (|_module.__default.B#canCall| |x#0@@11|) (= (_module.__default.A ($LS $ly@@11) |x#0@@11|) (_module.__default.B $ly@@11 |x#0@@11|))))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |630|
 :pattern ( (_module.__default.A ($LS $ly@@11) |x#0@@11|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@12 T@U) (|x#0@@12| T@U) ) (!  (=> (or (|_module.__default.B#canCall| |x#0@@12|) (and (< 1 $FunctionContextHeight) ($Is refType |x#0@@12| Tclass._module.Object))) (and (|_module.__default.A#canCall| |x#0@@12|) (= (_module.__default.B ($LS $ly@@12) |x#0@@12|) (_module.__default.A $ly@@12 |x#0@@12|))))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |653|
 :pattern ( (_module.__default.B ($LS $ly@@12) |x#0@@12|))
))))
(assert (forall (($ly@@13 T@U) (|x#0@@13| T@U) ) (! (= (_module.__default.A ($LS $ly@@13) |x#0@@13|) (_module.__default.A $ly@@13 |x#0@@13|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |625|
 :pattern ( (_module.__default.A ($LS $ly@@13) |x#0@@13|))
)))
(assert (forall (($ly@@14 T@U) (|x#0@@14| T@U) ) (! (= (_module.__default.B ($LS $ly@@14) |x#0@@14|) (_module.__default.B $ly@@14 |x#0@@14|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |649|
 :pattern ( (_module.__default.B ($LS $ly@@14) |x#0@@14|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |808|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@15 T@U) (|_k#0@@11| T@U) (|x#0@@15| T@U) ) (!  (=> (or (|_module.__default.A_h#canCall| (Lit BoxType |_k#0@@11|) (Lit refType |x#0@@15|)) (and (< 2 $FunctionContextHeight) ($Is refType |x#0@@15| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (|_module.__default.B_h#canCall| (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (Lit refType |x#0@@15|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (Lit refType |x#0@@15|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@11|) (|_module.__default.A_h#canCall| |_k'#2| |x#0@@15|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |647|
 :pattern ( (_module.__default.A_h ($LS $ly@@15) |_k'#2| |x#0@@15|))
))))) (= (_module.__default.A_h ($LS $ly@@15) (Lit BoxType |_k#0@@11|) (Lit refType |x#0@@15|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (_module.__default.B_h ($LS $LZ) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (Lit refType |x#0@@15|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@11|) (_module.__default.A_h ($LS $ly@@15) |_k'#2@@0| |x#0@@15|))
 :qid |_04LeastGreatestdfy.45:20|
 :skolemid |646|
 :pattern ( (_module.__default.A_h ($LS $ly@@15) |_k'#2@@0| |x#0@@15|))
)))))))
 :qid |_04LeastGreatestdfy.45:20|
 :weight 3
 :skolemid |648|
 :pattern ( (_module.__default.A_h ($LS $ly@@15) (Lit BoxType |_k#0@@11|) (Lit refType |x#0@@15|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) (|_k#0@@12| T@U) (|x#0@@16| T@U) ) (!  (=> (or (|_module.__default.B_h#canCall| (Lit BoxType |_k#0@@12|) (Lit refType |x#0@@16|)) (and (< 2 $FunctionContextHeight) ($Is refType |x#0@@16| Tclass._module.Object))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (|_module.__default.A_h#canCall| (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) (Lit refType |x#0@@16|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) (Lit refType |x#0@@16|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@1| |_k#0@@12|) (|_module.__default.B_h#canCall| |_k'#2@@1| |x#0@@16|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |670|
 :pattern ( (_module.__default.B_h ($LS $ly@@16) |_k'#2@@1| |x#0@@16|))
))))) (= (_module.__default.B_h ($LS $ly@@16) (Lit BoxType |_k#0@@12|) (Lit refType |x#0@@16|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@12|)) (_module.__default.A_h ($LS $LZ) (|ORD#Minus| |_k#0@@12| (|ORD#FromNat| 1)) (Lit refType |x#0@@16|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@12|)) (forall ((|_k'#2@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@2| |_k#0@@12|) (_module.__default.B_h ($LS $ly@@16) |_k'#2@@2| |x#0@@16|))
 :qid |_04LeastGreatestdfy.49:20|
 :skolemid |669|
 :pattern ( (_module.__default.B_h ($LS $ly@@16) |_k'#2@@2| |x#0@@16|))
)))))))
 :qid |_04LeastGreatestdfy.49:20|
 :weight 3
 :skolemid |671|
 :pattern ( (_module.__default.B_h ($LS $ly@@16) (Lit BoxType |_k#0@@12|) (Lit refType |x#0@@16|)))
))))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Object?)  (or (= $o@@1 null) (implements$_module.Object (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |790|
 :pattern ( ($Is refType $o@@1 Tclass._module.Object?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@@17| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.BuildA)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|_module.__default.A#canCall| |x#0@@17|) (or (_module.__default.A ($LS $LZ) |x#0@@17|) (_module.__default.B ($LS ($LS $LZ)) |x#0@@17|))))))
(let ((anon3_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and (forall ((|k#0_1| T@U) ) (!  (=> (U_2_bool (Lit boolType (bool_2_U true))) (_module.__default.A_h ($LS $LZ) |k#0_1| |x#0@@17|))
 :qid |_04LeastGreatestdfy.54:10|
 :skolemid |674|
 :pattern ( (_module.__default.A_h ($LS $LZ) |k#0_1| |x#0@@17|))
)) (= (ControlFlow 0 4) 3))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#x0#0| T@U) ) (!  (=> (and (and ($Is refType |$ih#x0#0| Tclass._module.Object) (U_2_bool (Lit boolType (bool_2_U true)))) (and (= |$ih#x0#0| null) (or (not (= |x#0@@17| null)) (not true)))) (_module.__default.A ($LS $LZ) |$ih#x0#0|))
 :qid |_04LeastGreatestdfy.53:14|
 :skolemid |672|
 :pattern ( (_module.__default.A ($LS $LZ) |$ih#x0#0|))
)))) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |x#0@@17| Tclass._module.Object) ($IsAlloc refType |x#0@@17| Tclass._module.Object $Heap)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
