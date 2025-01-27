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
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun tytagFamily$array2 () T@U)
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
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array2? Tagclass._System.array2 tytagFamily$array2)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7257|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |7259|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
 :qid |unknown.0:0|
 :skolemid |7265|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7256|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |6871|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |6872|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6770|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6768|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6779|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7264|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |6863|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@4)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@4)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7248|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@5)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7261|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array2? _System.array2$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array2? _System.array2$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |7255|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array2? _System.array2$arg@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |6870|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array2.Length0 o@@0))
 :qid |unknown.0:0|
 :skolemid |7251|
 :pattern ( (_System.array2.Length0 o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length1 o@@1))
 :qid |unknown.0:0|
 :skolemid |7252|
 :pattern ( (_System.array2.Length1 o@@1))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@7)) _System.array2$arg@@7)
 :qid |unknown.0:0|
 :skolemid |7249|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@7))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@8)) _System.array2$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7262|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6778|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ($h@@1 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array2? _System.array2$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@3)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |7258|
 :pattern ( (_System.array2.Length0 $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)) (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@4)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |7260|
 :pattern ( (_System.array2.Length1 $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)) (Tclass._System.array2? _System.array2$arg@@10))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7823|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6771|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6769|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6814|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6793|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#0_0@2| () Int)
(declare-fun |m#0| () T@U)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun |i#0@1| () Int)
(declare-fun |j#0_0@3| () Int)
(declare-fun |i#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun |j#0_0@1| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module._default.PrintMatrix$A () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.PrintMatrix)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon17_Else_correct  (=> (and (< |j#0_0@2| (_System.array2.Length1 |m#0|)) (= |$decr$loop#0_00@2| (- (_System.array2.Length1 |m#0|) |j#0_0@2|))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (and (<= 0 |i#0@1|) (< |i#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (and (<= 0 |j#0_0@2|) (< |j#0_0@2| (_System.array2.Length1 |m#0|)))) (=> (= |j#0_0@3| (+ |j#0_0@2| 1)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (<= 0 |$decr$loop#0_00@2|) (= (- (_System.array2.Length1 |m#0|) |j#0_0@3|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- (_System.array2.Length1 |m#0|) |j#0_0@3|) |$decr$loop#0_00@2|)) (=> (= (ControlFlow 0 12) (- 0 11)) (< (- (_System.array2.Length1 |m#0|) |j#0_0@3|) |$decr$loop#0_00@2|))))))))))))
(let ((anon17_Then_correct  (=> (and (<= (_System.array2.Length1 |m#0|) |j#0_0@2|) (= |i#0@2| (+ |i#0@1| 1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array2.Length0 |m#0|) |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array2.Length0 |m#0|) |i#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 9) (- 0 8)) (< (- (_System.array2.Length0 |m#0|) |i#0@2|) |$decr$loop#00@1|)))))))
(let ((anon16_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 17) 9) anon17_Then_correct) (=> (= (ControlFlow 0 17) 12) anon17_Else_correct)))))))
(let ((anon16_Then_correct  (=> (and (not |$w$loop#0_0@1|) (= (ControlFlow 0 7) (- 0 6))) (or (not (= |m#0| null)) (not true)))))
(let ((anon15_LoopBody_correct  (and (=> (= (ControlFlow 0 19) 7) anon16_Then_correct) (=> (= (ControlFlow 0 19) 17) anon16_Else_correct))))
(let ((anon15_LoopDone_correct true))
(let ((anon15_LoopHead_correct  (=> (and (and (and (and (not false) (<= 0 |i#0@1|)) |$w$loop#0@0|) (<= 0 |j#0_0@2|)) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |Arraysdfy.121:5|
 :skolemid |7529|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0))))
 :qid |Arraysdfy.121:5|
 :skolemid |7530|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0))
)) (<= (- (_System.array2.Length1 |m#0|) |j#0_0@2|) |$decr_init$loop#0_00@1|)))) (and (=> (= (ControlFlow 0 20) 5) anon15_LoopDone_correct) (=> (= (ControlFlow 0 20) 19) anon15_LoopBody_correct)))))
(let ((anon14_Else_correct  (=> (< |i#0@1| (_System.array2.Length0 |m#0|)) (=> (and (and (= |$decr$loop#00@1| (- (_System.array2.Length0 |m#0|) |i#0@1|)) (= |j#0_0@1| (LitInt 0))) (and (= |$decr_init$loop#0_00@1| (- (_System.array2.Length1 |m#0|) |j#0_0@1|)) (= (ControlFlow 0 21) 20))) anon15_LoopHead_correct))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 22) 4) anon14_Then_correct) (=> (= (ControlFlow 0 22) 21) anon14_Else_correct)))))))
(let ((anon13_Then_correct  (=> (and (not |$w$loop#0@0|) (= (ControlFlow 0 3) (- 0 2))) (or (not (= |m#0| null)) (not true)))))
(let ((anon12_LoopBody_correct  (and (=> (= (ControlFlow 0 24) 3) anon13_Then_correct) (=> (= (ControlFlow 0 24) 22) anon13_Else_correct))))
(let ((anon12_LoopDone_correct true))
(let ((anon12_LoopHead_correct  (=> (and (not false) (<= 0 |i#0@1|)) (=> (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |Arraysdfy.119:3|
 :skolemid |7527|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@1))))
 :qid |Arraysdfy.119:3|
 :skolemid |7528|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1))
)) (<= (- (_System.array2.Length0 |m#0|) |i#0@1|) |$decr_init$loop#00@0|))) (and (=> (= (ControlFlow 0 25) 1) anon12_LoopDone_correct) (=> (= (ControlFlow 0 25) 24) anon12_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |i#0@0| (LitInt 0))) (and (= |$decr_init$loop#00@0| (- (_System.array2.Length0 |m#0|) |i#0@0|)) (= (ControlFlow 0 26) 25))) anon12_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |m#0| (Tclass._System.array2 _module._default.PrintMatrix$A)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.PrintMatrix$A) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 27) 26))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
