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
(declare-fun |ORD#Less| (T@U T@U) Bool)
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
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.MyClass.S_h (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.MyClass.S_h#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A T@U) (_module.MyClass$B T@U) (|_module.MyClass.S#$Q| T@U) ($ly T@U) (|_k#0| T@U) ) (!  (=> (or (|_module.MyClass.S_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| (Lit BoxType |_k#0|)) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (|_module.MyClass.S_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0|) (|_module.MyClass.S_h#canCall| _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| |_k'#1|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1357|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) |_k'#1|))
))))) (= (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) (Lit BoxType |_k#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0|) (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) |_k'#1@@0|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1356|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) |_k'#1@@0|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1358|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A _module.MyClass$B |_module.MyClass.S#$Q| ($LS $ly) (Lit BoxType |_k#0|)))
))))
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
(assert (forall ((_module.MyClass$A@@0 T@U) (_module.MyClass$B@@0 T@U) (|_module.MyClass.S#$Q@@0| T@U) ($ly@@0 T@U) (|_k#0@@0| T@U) ) (! (= (_module.MyClass.S_h _module.MyClass$A@@0 _module.MyClass$B@@0 |_module.MyClass.S#$Q@@0| ($LS $ly@@0) |_k#0@@0|) (_module.MyClass.S_h _module.MyClass$A@@0 _module.MyClass$B@@0 |_module.MyClass.S#$Q@@0| $ly@@0 |_k#0@@0|))
 :qid |unknown.0:0|
 :skolemid |1349|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A@@0 _module.MyClass$B@@0 |_module.MyClass.S#$Q@@0| ($LS $ly@@0) |_k#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A@@1 T@U) (_module.MyClass$B@@1 T@U) (|_module.MyClass.S#$Q@@1| T@U) ($ly@@1 T@U) (|_k#0@@1| T@U) ) (!  (=> (= |_k#0@@1| (|ORD#FromNat| 0)) (_module.MyClass.S_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.S#$Q@@1| $ly@@1 |_k#0@@1|))
 :qid |unknown.0:0|
 :skolemid |1347|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A@@1 _module.MyClass$B@@1 |_module.MyClass.S#$Q@@1| $ly@@1 |_k#0@@1|))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |704|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |700|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.MyClass$A@@2 T@U) (_module.MyClass$B@@2 T@U) (|_module.MyClass.S#$Q@@2| T@U) ($ly@@2 T@U) (|_k#0@@2| T@U) ) (!  (=> (or (|_module.MyClass.S_h#canCall| _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| |_k#0@@2|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (|_module.MyClass.S_h#canCall| _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| $ly@@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|_module.MyClass.S_h#canCall| _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| |_k'#0|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1354|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| $ly@@2 |_k'#0|))
))))) (= (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| ($LS $ly@@2) |_k#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| $ly@@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| $ly@@2 |_k'#0@@0|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1353|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| $ly@@2 |_k'#0@@0|))
)))))))
 :qid |unknown.0:0|
 :skolemid |1355|
 :pattern ( (_module.MyClass.S_h _module.MyClass$A@@2 _module.MyClass$B@@2 |_module.MyClass.S#$Q@@2| ($LS $ly@@2) |_k#0@@2|))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |640|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |703|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |1439|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
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
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |631|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module._default.O#$D0| () T@U)
(declare-fun |_module._default.O#$D1| () T@U)
(declare-fun |_module._default.O#$D2| () T@U)
(declare-fun |_k#0@@3| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.O_h)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.MyClass.S_h#canCall| |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| |_k#0@@3|) (or (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k#0@@3|) (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1))))))) (=> (=> (|_module.MyClass.S_h#canCall| |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| |_k#0@@3|) (or (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k#0@@3|) (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.MyClass.S_h#canCall| |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| |_k#0@@3|) (or (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k#0@@3|) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@3|) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS ($LS $LZ)) |_k'#1@@1|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1216|
 :pattern ( (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS ($LS $LZ)) |_k'#1@@1|))
))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@3|) 0) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@3|) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k'#2|))
 :qid |PrefixTypeSubstdfy.44:16|
 :skolemid |1221|
 :pattern ( (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k'#2|))
 :pattern ( (|ORD#Less| |_k'#2| |_k#0@@3|))
)) (= (ControlFlow 0 7) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@3|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@3|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.MyClass.S_h#canCall| |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| |_k##0@0|)) (and (and (|_module.MyClass.S_h#canCall| |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| |_k##0@0|) (and (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k##0@0|) (and (=> (< 0 (|ORD#Offset| |_k##0@0|)) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k##0@0|) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k'#0@@1|))
 :qid |PrefixTypeSubstdfy.13:29|
 :skolemid |1215|
 :pattern ( (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |_k'#0@@1|))
)))))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 4) 2)))) GeneratedUnifiedExit_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) ) (!  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (|ORD#Less| |$ih#_k0#0| |_k#0@@3|)) (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |$ih#_k0#0|))
 :qid |PrefixTypeSubstdfy.44:16|
 :skolemid |1219|
 :pattern ( (_module.MyClass.S_h |_module._default.O#$D0| |_module._default.O#$D1| |_module._default.O#$D2| ($LS $LZ) |$ih#_k0#0|))
)))) (and (=> (= (ControlFlow 0 8) 4) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
