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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Lib.__default.Two () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Lib.__default.Ten () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lib.D.PI () Real)
(declare-fun LitInt (Int) Int)
(declare-fun Lib.D.n (T@U) Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.Lib.D () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitReal (Real) Real)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (U_2_bool (Lit boolType (bool_2_U (< Lib.__default.Two 10)))))
(assert (forall (($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc intType (int_2_U Lib.__default.Ten) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1975|
 :pattern ( ($IsAlloc intType (int_2_U Lib.__default.Ten) TInt $h))
)))
(assert (forall (($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc realType (real_2_U Lib.D.PI) TReal $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1977|
 :pattern ( ($IsAlloc realType (real_2_U Lib.D.PI) TReal $h@@0))
)))
(assert (= Lib.__default.Two (LitInt 2)))
(assert (= Lib.__default.Two (LitInt 2)))
(assert (forall (($o T@U) ) (!  (=> ($IsBox $o Tclass.Lib.D) ($Is intType (int_2_U (Lib.D.n $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( (Lib.D.n $o))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1607|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1608|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1506|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1508|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1504|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1515|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((this T@U) ) (! (= (Lib.D.n this) (LitInt 59))
 :qid |ExportVerifydfy.28:11|
 :skolemid |1971|
 :pattern ( (Lib.D.n this))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1528|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1600|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1599|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert ($Is intType (int_2_U Lib.__default.Ten) TInt))
(assert ($Is realType (real_2_U Lib.D.PI) TReal))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1606|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1516|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TReal) (and (= ($Box realType ($Unbox realType bx@@1)) bx@@1) ($Is realType ($Unbox realType bx@@1) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |1517|
 :pattern ( ($IsBox bx@@1 TReal))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1527|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1514|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (= Lib.__default.Ten (LitInt 10)))
(assert (= Lib.D.PI (LitReal 3.14)))
(assert (forall (($h@@1 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) ($IsBox $o@@0 Tclass.Lib.D)) ($IsAllocBox $o@@0 Tclass.Lib.D $h@@1)) ($IsAlloc intType (int_2_U (Lib.D.n $o@@0)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1979|
 :pattern ( (Lib.D.n $o@@0) ($IsAllocBox $o@@0 Tclass.Lib.D $h@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2953|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1507|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@8))) (Lit BoxType ($Box realType (real_2_U x@@8))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1509|
 :pattern ( ($Box realType (real_2_U (LitReal x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1505|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1550|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1551|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1529|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1530|
 :pattern ( ($Is realType v@@5 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |Lib.__default.Two#canCall| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Client__Revealing.__default.M)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= Lib.__default.Ten (LitInt 10))) (=> (= Lib.__default.Ten (LitInt 10)) (=> (and |Lib.__default.Two#canCall| |Lib.__default.Two#canCall|) (and (=> (= (ControlFlow 0 2) (- 0 6)) (U_2_bool (Lit boolType (bool_2_U (< Lib.__default.Two 10))))) (=> (U_2_bool (Lit boolType (bool_2_U (< Lib.__default.Two 10)))) (=> (and |Lib.__default.Two#canCall| |Lib.__default.Two#canCall|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (LitInt Lib.__default.Two) (LitInt 2))) (=> (= (LitInt Lib.__default.Two) (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= Lib.D.PI (LitReal 3.14))) (=> (= Lib.D.PI (LitReal 3.14)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (Lib.D.n |d#0|) (LitInt 59))) (=> (= (Lib.D.n |d#0|) (LitInt 59)) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |ExportVerifydfy.30:12|
 :skolemid |1980|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |ExportVerifydfy.23:10|
 :skolemid |1976|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |ExportVerifydfy.31:19|
 :skolemid |1981|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= (ControlFlow 0 2) (- 0 1))))) (U_2_bool (Lit boolType (bool_2_U false)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($IsBox |d#0| Tclass.Lib.D) ($IsAllocBox |d#0| Tclass.Lib.D $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
