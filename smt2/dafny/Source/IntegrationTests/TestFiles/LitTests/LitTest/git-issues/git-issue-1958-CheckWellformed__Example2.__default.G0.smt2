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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.Example2.R () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$R () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.Example2.BaseType () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Example2.__default.Ctor (Int) T@U)
(declare-fun |Example2.__default.Ctor#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Example2.BaseType.i (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.Example2.R () T@U)
(declare-fun Example2.__default.G0 (Int) T@U)
(declare-fun |Example2.__default.G0#canCall| (Int) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_b| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun BoxType () T@T)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.Example2.R tytagFamily$nat tytagFamily$R)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1457|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert ($AlwaysAllocated Tclass.Example2.BaseType))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|Example2.__default.Ctor#canCall| |x#0@@0|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@0|) (exists ((|b#0| T@U) ) (!  (and ($IsBox |b#0| Tclass.Example2.BaseType) (Example2.BaseType.i |b#0|))
 :qid |gitissue1958dfy.49:21|
 :skolemid |1640|
 :pattern ( (Example2.BaseType.i |b#0|))
))))) ($IsBox (Example2.__default.Ctor |x#0@@0|) Tclass.Example2.R))
 :qid |gitissue1958dfy.48:23|
 :skolemid |1641|
 :pattern ( (Example2.__default.Ctor |x#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|v#0| Int) ) (!  (=> (or (|Example2.__default.G0#canCall| |v#0|) (and (< 3 $FunctionContextHeight) (<= (LitInt 0) |v#0|))) ($IsBox (Example2.__default.G0 |v#0|) Tclass.Example2.R))
 :qid |gitissue1958dfy.60:21|
 :skolemid |1657|
 :pattern ( (Example2.__default.G0 |v#0|))
))))
(assert (forall ((|r#0| T@U) ($h@@0 T@U) ) (! (= ($IsAllocBox |r#0| Tclass.Example2.R $h@@0) ($IsAllocBox |r#0| Tclass.Example2.BaseType $h@@0))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( ($IsAllocBox |r#0| Tclass.Example2.R $h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|v#0@@0| Int) ) (!  (=> (or (|Example2.__default.G0#canCall| |v#0@@0|) (and (< 3 $FunctionContextHeight) (<= (LitInt 0) |v#0@@0|))) (and (|Example2.__default.Ctor#canCall| |v#0@@0|) (= (Example2.__default.G0 |v#0@@0|) (Example2.__default.Ctor |v#0@@0|))))
 :qid |gitissue1958dfy.60:21|
 :skolemid |1659|
 :pattern ( (Example2.__default.G0 |v#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|x#0@@1| Int) ) (!  (=> (or (|Example2.__default.Ctor#canCall| |x#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (<= (LitInt 0) |x#0@@1|)) (exists ((|b#1| T@U) ) (!  (and ($IsBox |b#1| Tclass.Example2.BaseType) (Example2.BaseType.i |b#1|))
 :qid |gitissue1958dfy.49:21|
 :skolemid |1642|
 :pattern ( (Example2.BaseType.i |b#1|))
))))) (and |$let#0$canCall| (= (Example2.__default.Ctor |x#0@@1|) (let ((|b#2| |$let#0_b|))
|b#2|))))
 :qid |gitissue1958dfy.48:18|
 :skolemid |1644|
 :pattern ( (Example2.__default.Ctor |x#0@@1|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1129|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1127|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1138|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|x#0@@2| Int) ) (!  (=> (or (|Example2.__default.Ctor#canCall| (LitInt |x#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (<= (LitInt 0) |x#0@@2|)) (exists ((|b#3| T@U) ) (!  (and ($IsBox |b#3| Tclass.Example2.BaseType) (Example2.BaseType.i |b#3|))
 :qid |gitissue1958dfy.49:21|
 :skolemid |1645|
 :pattern ( (Example2.BaseType.i |b#3|))
))))) (and |$let#0$canCall| (= (Example2.__default.Ctor (LitInt |x#0@@2|)) (let ((|b#4| |$let#0_b|))
|b#4|))))
 :qid |gitissue1958dfy.48:18|
 :weight 3
 :skolemid |1646|
 :pattern ( (Example2.__default.Ctor (LitInt |x#0@@2|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |1456|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert  (=> |$let#0$canCall| (and ($IsBox |$let#0_b| Tclass.Example2.BaseType) (Example2.BaseType.i |$let#0_b|))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1151|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|v#0@@1| Int) ) (!  (=> (or (|Example2.__default.G0#canCall| (LitInt |v#0@@1|)) (and (< 3 $FunctionContextHeight) (<= (LitInt 0) |v#0@@1|))) (and (|Example2.__default.Ctor#canCall| (LitInt |v#0@@1|)) (= (Example2.__default.G0 (LitInt |v#0@@1|)) (Lit BoxType (Example2.__default.Ctor (LitInt |v#0@@1|))))))
 :qid |gitissue1958dfy.60:21|
 :weight 3
 :skolemid |1660|
 :pattern ( (Example2.__default.G0 (LitInt |v#0@@1|)))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1150|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |1191|
 :pattern ( ($IsAllocBox v@@1 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |1192|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1137|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
 :skolemid |2829|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.Example2.R) Tagclass.Example2.R))
(assert (= (TagFamily Tclass.Example2.R) tytagFamily$R))
(assert (forall ((|r#0@@0| T@U) ) (! (= ($IsBox |r#0@@0| Tclass.Example2.R)  (and ($IsBox |r#0@@0| Tclass.Example2.BaseType) (Example2.BaseType.i |r#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( ($IsBox |r#0@@0| Tclass.Example2.R))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1130|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1128|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |v#0@@2| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Example2.__default.G0)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (and ($IsAlloc intType (int_2_U |v#0@@2|) Tclass._System.nat $Heap@@1) (= (ControlFlow 0 3) (- 0 2))) (exists ((|b#0@@0| T@U) ) (!  (and ($IsBox |b#0@@0| Tclass.Example2.BaseType) (Example2.BaseType.i |b#0@@0|))
 :qid |gitissue1958dfy.49:21|
 :skolemid |1661|
 :pattern ( (Example2.BaseType.i |b#0@@0|))
)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (<= (LitInt 0) |v#0@@2|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
