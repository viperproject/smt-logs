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
(declare-fun alloc () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Opaque.y (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Opaque () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Opaque.z (T@U) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Opaque.Q_h (T@U T@U T@U Int) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.Opaque.Q_h#canCall| (T@U T@U Int) Bool)
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
(assert (distinct TInt TagInt alloc)
)
(assert (= (Tag TInt) TagInt))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) ($IsBox $o Tclass._module.Opaque)) ($IsAllocBox $o Tclass._module.Opaque $h)) ($IsAlloc intType (int_2_U (_module.Opaque.y $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |538|
 :pattern ( (_module.Opaque.y $o) ($IsAllocBox $o Tclass._module.Opaque $h))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) ($IsBox $o@@0 Tclass._module.Opaque)) ($IsAllocBox $o@@0 Tclass._module.Opaque $h@@0)) ($IsAlloc intType (int_2_U (_module.Opaque.z $o@@0)) TInt $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |541|
 :pattern ( (_module.Opaque.z $o@@0) ($IsAllocBox $o@@0 Tclass._module.Opaque $h@@0))
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
(assert ($AlwaysAllocated Tclass._module.Opaque))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|u#0| Int) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (_module.Opaque.Q_h $ly this |_k#0| |u#0|) (_module.Opaque.Q_h $ly this _m |u#0|)))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |565|
 :pattern ( (_module.Opaque.Q_h $ly this |_k#0| |u#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (forall ((this@@0 T@U) ) (! (= (_module.Opaque.z this@@0) (LitInt 25))
 :qid |OpaqueTypeWithMembersdfy.6:9|
 :skolemid |539|
 :pattern ( (_module.Opaque.z this@@0))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@1 T@U) ) (!  (=> ($IsBox $o@@1 Tclass._module.Opaque) ($Is intType (int_2_U (_module.Opaque.y $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.Opaque.y $o@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> ($IsBox $o@@2 Tclass._module.Opaque) ($Is intType (int_2_U (_module.Opaque.z $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.Opaque.z $o@@2))
))))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@1 T@U) (|_k#0@@0| T@U) (|u#0@@0| Int) ) (!  (=> (or (|_module.Opaque.Q_h#canCall| (Lit BoxType this@@1) (Lit BoxType |_k#0@@0|) (LitInt |u#0@@0|)) (and (< 2 $FunctionContextHeight) ($IsBox this@@1 Tclass._module.Opaque))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (<= 20 (+ (_module.Opaque.y (Lit BoxType this@@1)) (_module.Opaque.z (Lit BoxType this@@1)))) (|_module.Opaque.Q_h#canCall| (Lit BoxType this@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt (+ |u#0@@0| 1))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (< (+ (_module.Opaque.y (Lit BoxType this@@1)) (_module.Opaque.z (Lit BoxType this@@1))) 20) (_module.Opaque.Q_h ($LS $ly@@0) (Lit BoxType this@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt (+ |u#0@@0| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@0|) (|_module.Opaque.Q_h#canCall| this@@1 |_k'#2| |u#0@@0|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |578|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@0) this@@1 |_k'#2| |u#0@@0|))
))))) (= (_module.Opaque.Q_h ($LS $ly@@0) (Lit BoxType this@@1) (Lit BoxType |_k#0@@0|) (LitInt |u#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (< (+ (_module.Opaque.y (Lit BoxType this@@1)) (_module.Opaque.z (Lit BoxType this@@1))) 20) (_module.Opaque.Q_h ($LS $ly@@0) (Lit BoxType this@@1) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt (+ |u#0@@0| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@0|) (_module.Opaque.Q_h ($LS $ly@@0) this@@1 |_k'#2@@0| |u#0@@0|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |577|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@0) this@@1 |_k'#2@@0| |u#0@@0|))
)))))))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :weight 3
 :skolemid |579|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@0) (Lit BoxType this@@1) (Lit BoxType |_k#0@@0|) (LitInt |u#0@@0|)))
))))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@2 T@U) (|_k#0@@1| T@U) (|u#0@@1| Int) ) (!  (=> (or (|_module.Opaque.Q_h#canCall| this@@2 (Lit BoxType |_k#0@@1|) |u#0@@1|) (and (< 2 $FunctionContextHeight) ($IsBox this@@2 Tclass._module.Opaque))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (<= 20 (+ (_module.Opaque.y this@@2) (_module.Opaque.z this@@2))) (|_module.Opaque.Q_h#canCall| this@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (+ |u#0@@1| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (< (+ (_module.Opaque.y this@@2) (_module.Opaque.z this@@2)) 20) (_module.Opaque.Q_h ($LS $ly@@1) this@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (+ |u#0@@1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@1|) (|_module.Opaque.Q_h#canCall| this@@2 |_k'#1| |u#0@@1|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |575|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@1) this@@2 |_k'#1| |u#0@@1|))
))))) (= (_module.Opaque.Q_h ($LS $ly@@1) this@@2 (Lit BoxType |_k#0@@1|) |u#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (< (+ (_module.Opaque.y this@@2) (_module.Opaque.z this@@2)) 20) (_module.Opaque.Q_h ($LS $ly@@1) this@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (+ |u#0@@1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@1|) (_module.Opaque.Q_h ($LS $ly@@1) this@@2 |_k'#1@@0| |u#0@@1|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |574|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@1) this@@2 |_k'#1@@0| |u#0@@1|))
)))))))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :weight 3
 :skolemid |576|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@1) this@@2 (Lit BoxType |_k#0@@1|) |u#0@@1|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($ly@@2 T@U) (this@@3 T@U) (|_k#0@@2| T@U) (|u#0@@2| Int) ) (! (= (_module.Opaque.Q_h ($LS $ly@@2) this@@3 |_k#0@@2| |u#0@@2|) (_module.Opaque.Q_h $ly@@2 this@@3 |_k#0@@2| |u#0@@2|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |567|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@2) this@@3 |_k#0@@2| |u#0@@2|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (this@@4 T@U) (|u#0@@3| Int) (|_k#0@@3| T@U) ) (!  (=> (and ($IsBox this@@4 Tclass._module.Opaque) (= |_k#0@@3| (|ORD#FromNat| 0))) (not (_module.Opaque.Q_h $ly@@3 this@@4 |_k#0@@3| |u#0@@3|)))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |564|
 :pattern ( (_module.Opaque.Q_h $ly@@3 this@@4 |_k#0@@3| |u#0@@3|))
))))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |698|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (this@@5 T@U) (|_k#0@@4| T@U) (|u#0@@4| Int) ) (!  (=> (or (|_module.Opaque.Q_h#canCall| this@@5 |_k#0@@4| |u#0@@4|) (and (< 2 $FunctionContextHeight) ($IsBox this@@5 Tclass._module.Opaque))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (<= 20 (+ (_module.Opaque.y this@@5) (_module.Opaque.z this@@5))) (|_module.Opaque.Q_h#canCall| this@@5 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |u#0@@4| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (< (+ (_module.Opaque.y this@@5) (_module.Opaque.z this@@5)) 20) (_module.Opaque.Q_h $ly@@4 this@@5 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |u#0@@4| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@4|) (|_module.Opaque.Q_h#canCall| this@@5 |_k'#0| |u#0@@4|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |572|
 :pattern ( (_module.Opaque.Q_h $ly@@4 this@@5 |_k'#0| |u#0@@4|))
))))) (= (_module.Opaque.Q_h ($LS $ly@@4) this@@5 |_k#0@@4| |u#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (< (+ (_module.Opaque.y this@@5) (_module.Opaque.z this@@5)) 20) (_module.Opaque.Q_h $ly@@4 this@@5 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |u#0@@4| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@4|) (_module.Opaque.Q_h $ly@@4 this@@5 |_k'#0@@0| |u#0@@4|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |571|
 :pattern ( (_module.Opaque.Q_h $ly@@4 this@@5 |_k'#0@@0| |u#0@@4|))
)))))))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |573|
 :pattern ( (_module.Opaque.Q_h ($LS $ly@@4) this@@5 |_k#0@@4| |u#0@@4|))
))))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@6 () T@U)
(declare-fun |_k#0@@5| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |w#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |u#1| () Int)
(set-info :boogie-vc-id Impl$$_module.Opaque.QL_h)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< (+ (_module.Opaque.y this@@6) (_module.Opaque.z this@@6)) 20))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@5|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|u#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#2@@1| |_k#0@@5|) (_module.Opaque.Q_h ($LS $LZ) this@@6 |_k'#2@@1| |u#2|)) (< (+ (_module.Opaque.y this@@6) (_module.Opaque.z this@@6)) 20))
 :qid |OpaqueTypeWithMembersdfy.34:15|
 :skolemid |587|
 :pattern ( (_module.Opaque.Q_h ($LS $LZ) this@@6 |_k'#2@@1| |u#2|))
)) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (=> (and (= |w#0@0| (+ (_module.Opaque.y this@@6) (_module.Opaque.z this@@6))) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#u0#0| Int) ) (!  (=> (and (_module.Opaque.Q_h ($LS $LZ) this@@6 |$ih#_k0#0| |$ih#u0#0|) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@5|) (and (= |$ih#_k0#0| |_k#0@@5|) (and (<= 0 |$ih#u0#0|) (< |$ih#u0#0| |u#1|))))) (< (+ (_module.Opaque.y this@@6) (_module.Opaque.z this@@6)) 20))
 :qid |OpaqueTypeWithMembersdfy.34:15|
 :skolemid |586|
 :pattern ( (_module.Opaque.Q_h ($LS $LZ) this@@6 |$ih#_k0#0| |$ih#u0#0|))
)))) (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($IsBox this@@6 Tclass._module.Opaque) ($IsAllocBox this@@6 Tclass._module.Opaque $Heap)) (= 3 $FunctionContextHeight)) (and (and (|_module.Opaque.Q_h#canCall| this@@6 |_k#0@@5| |u#1|) (and (_module.Opaque.Q_h ($LS $LZ) this@@6 |_k#0@@5| |u#1|) (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (< (+ (_module.Opaque.y this@@6) (_module.Opaque.z this@@6)) 20) (_module.Opaque.Q_h ($LS $LZ) this@@6 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (+ |u#1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#1@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@1| |_k#0@@5|) (_module.Opaque.Q_h ($LS $LZ) this@@6 |_k'#1@@1| |u#1|))
 :qid |OpaqueTypeWithMembersdfy.31:19|
 :skolemid |585|
 :pattern ( (_module.Opaque.Q_h ($LS $LZ) this@@6 |_k'#1@@1| |u#1|))
)))))) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
