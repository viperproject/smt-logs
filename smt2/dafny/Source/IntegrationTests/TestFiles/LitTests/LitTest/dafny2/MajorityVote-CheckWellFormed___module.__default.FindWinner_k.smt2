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
(declare-fun _module.__default.Count (T@U T@U T@U Int Int T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.Count#canCall| (T@U T@U Int Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun _module.__default.HasMajority (T@U T@U Int Int T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.HasMajority#canCall| (T@U T@U Int Int T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Count$T T@U) ($ly T@U) (|a#0| T@U) (|s#0| Int) (|t#0| Int) (|x#0| T@U) ) (!  (=> (or (|_module.__default.Count#canCall| _module._default.Count$T (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|) |x#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |a#0| (TSeq _module._default.Count$T)) ($IsBox |x#0| _module._default.Count$T)) (and (and (<= (LitInt 0) (LitInt |s#0|)) (<= (LitInt |s#0|) (LitInt |t#0|))) (<= (LitInt |t#0|) (|Seq#Length| (Lit SeqType |a#0|))))))) (and (=> (or (not (= (LitInt |s#0|) (LitInt |t#0|))) (not true)) (|_module.__default.Count#canCall| _module._default.Count$T (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt (- |t#0| 1)) |x#0|)) (= (_module.__default.Count _module._default.Count$T ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|) |x#0|) (ite (= (LitInt |s#0|) (LitInt |t#0|)) 0 (+ (_module.__default.Count _module._default.Count$T ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt (- |t#0| 1)) |x#0|) (ite (= (|Seq#Index| (Lit SeqType |a#0|) (LitInt (- |t#0| 1))) |x#0|) 1 0))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |541|
 :pattern ( (_module.__default.Count _module._default.Count$T ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|) |x#0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.HasMajority$T T@U) (|a#0@@0| T@U) (|s#0@@0| Int) (|t#0@@0| Int) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.HasMajority#canCall| _module._default.HasMajority$T (Lit SeqType |a#0@@0|) (LitInt |s#0@@0|) (LitInt |t#0@@0|) (Lit BoxType |x#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |a#0@@0| (TSeq _module._default.HasMajority$T)) ($IsBox |x#0@@0| _module._default.HasMajority$T)) (and (and (<= (LitInt 0) (LitInt |s#0@@0|)) (<= (LitInt |s#0@@0|) (LitInt |t#0@@0|))) (<= (LitInt |t#0@@0|) (|Seq#Length| (Lit SeqType |a#0@@0|))))))) (and (|_module.__default.Count#canCall| _module._default.HasMajority$T (Lit SeqType |a#0@@0|) (LitInt |s#0@@0|) (LitInt |t#0@@0|) (Lit BoxType |x#0@@0|)) (= (_module.__default.HasMajority _module._default.HasMajority$T (Lit SeqType |a#0@@0|) (LitInt |s#0@@0|) (LitInt |t#0@@0|) (Lit BoxType |x#0@@0|)) (U_2_bool (Lit boolType (bool_2_U (> (Mul (LitInt 2) (LitInt (_module.__default.Count _module._default.HasMajority$T ($LS $LZ) (Lit SeqType |a#0@@0|) (LitInt |s#0@@0|) (LitInt |t#0@@0|) (Lit BoxType |x#0@@0|)))) (- |t#0@@0| |s#0@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |548|
 :pattern ( (_module.__default.HasMajority _module._default.HasMajority$T (Lit SeqType |a#0@@0|) (LitInt |s#0@@0|) (LitInt |t#0@@0|) (Lit BoxType |x#0@@0|)))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Count$T@@0 T@U) ($ly@@0 T@U) (|a#0@@1| T@U) (|s#0@@1| Int) (|t#0@@1| Int) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.Count#canCall| _module._default.Count$T@@0 (Lit SeqType |a#0@@1|) (LitInt |s#0@@1|) (LitInt |t#0@@1|) (Lit BoxType |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |a#0@@1| (TSeq _module._default.Count$T@@0)) ($IsBox |x#0@@1| _module._default.Count$T@@0)) (and (and (<= (LitInt 0) (LitInt |s#0@@1|)) (<= (LitInt |s#0@@1|) (LitInt |t#0@@1|))) (<= (LitInt |t#0@@1|) (|Seq#Length| (Lit SeqType |a#0@@1|))))))) (and (=> (or (not (= (LitInt |s#0@@1|) (LitInt |t#0@@1|))) (not true)) (|_module.__default.Count#canCall| _module._default.Count$T@@0 (Lit SeqType |a#0@@1|) (LitInt |s#0@@1|) (LitInt (- |t#0@@1| 1)) (Lit BoxType |x#0@@1|))) (= (_module.__default.Count _module._default.Count$T@@0 ($LS $ly@@0) (Lit SeqType |a#0@@1|) (LitInt |s#0@@1|) (LitInt |t#0@@1|) (Lit BoxType |x#0@@1|)) (ite (= (LitInt |s#0@@1|) (LitInt |t#0@@1|)) 0 (+ (_module.__default.Count _module._default.Count$T@@0 ($LS $ly@@0) (Lit SeqType |a#0@@1|) (LitInt |s#0@@1|) (LitInt (- |t#0@@1| 1)) (Lit BoxType |x#0@@1|)) (ite (= (|Seq#Index| (Lit SeqType |a#0@@1|) (LitInt (- |t#0@@1| 1))) (Lit BoxType |x#0@@1|)) 1 0))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.Count _module._default.Count$T@@0 ($LS $ly@@0) (Lit SeqType |a#0@@1|) (LitInt |s#0@@1|) (LitInt |t#0@@1|) (Lit BoxType |x#0@@1|)))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module._default.Count$T@@1 T@U) ($ly@@1 T@U) (|a#0@@2| T@U) (|s#0@@2| Int) (|t#0@@2| Int) (|x#0@@2| T@U) ) (! (= (_module.__default.Count _module._default.Count$T@@1 ($LS $ly@@1) |a#0@@2| |s#0@@2| |t#0@@2| |x#0@@2|) (_module.__default.Count _module._default.Count$T@@1 $ly@@1 |a#0@@2| |s#0@@2| |t#0@@2| |x#0@@2|))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.__default.Count _module._default.Count$T@@1 ($LS $ly@@1) |a#0@@2| |s#0@@2| |t#0@@2| |x#0@@2|))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.HasMajority$T@@0 T@U) (|a#0@@3| T@U) (|s#0@@3| Int) (|t#0@@3| Int) (|x#0@@3| T@U) ) (!  (=> (or (|_module.__default.HasMajority#canCall| _module._default.HasMajority$T@@0 (Lit SeqType |a#0@@3|) (LitInt |s#0@@3|) (LitInt |t#0@@3|) |x#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |a#0@@3| (TSeq _module._default.HasMajority$T@@0)) ($IsBox |x#0@@3| _module._default.HasMajority$T@@0)) (and (and (<= (LitInt 0) (LitInt |s#0@@3|)) (<= (LitInt |s#0@@3|) (LitInt |t#0@@3|))) (<= (LitInt |t#0@@3|) (|Seq#Length| (Lit SeqType |a#0@@3|))))))) (and (|_module.__default.Count#canCall| _module._default.HasMajority$T@@0 (Lit SeqType |a#0@@3|) (LitInt |s#0@@3|) (LitInt |t#0@@3|) |x#0@@3|) (= (_module.__default.HasMajority _module._default.HasMajority$T@@0 (Lit SeqType |a#0@@3|) (LitInt |s#0@@3|) (LitInt |t#0@@3|) |x#0@@3|) (> (Mul (LitInt 2) (_module.__default.Count _module._default.HasMajority$T@@0 ($LS $LZ) (Lit SeqType |a#0@@3|) (LitInt |s#0@@3|) (LitInt |t#0@@3|) |x#0@@3|)) (- |t#0@@3| |s#0@@3|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |547|
 :pattern ( (_module.__default.HasMajority _module._default.HasMajority$T@@0 (Lit SeqType |a#0@@3|) (LitInt |s#0@@3|) (LitInt |t#0@@3|) |x#0@@3|))
))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.HasMajority$T@@1 T@U) (|a#0@@4| T@U) (|s#0@@4| Int) (|t#0@@4| Int) (|x#0@@4| T@U) ) (!  (=> (or (|_module.__default.HasMajority#canCall| _module._default.HasMajority$T@@1 |a#0@@4| |s#0@@4| |t#0@@4| |x#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |a#0@@4| (TSeq _module._default.HasMajority$T@@1)) ($IsBox |x#0@@4| _module._default.HasMajority$T@@1)) (and (and (<= (LitInt 0) |s#0@@4|) (<= |s#0@@4| |t#0@@4|)) (<= |t#0@@4| (|Seq#Length| |a#0@@4|)))))) (and (|_module.__default.Count#canCall| _module._default.HasMajority$T@@1 |a#0@@4| |s#0@@4| |t#0@@4| |x#0@@4|) (= (_module.__default.HasMajority _module._default.HasMajority$T@@1 |a#0@@4| |s#0@@4| |t#0@@4| |x#0@@4|) (> (Mul (LitInt 2) (_module.__default.Count _module._default.HasMajority$T@@1 ($LS $LZ) |a#0@@4| |s#0@@4| |t#0@@4| |x#0@@4|)) (- |t#0@@4| |s#0@@4|)))))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.__default.HasMajority _module._default.HasMajority$T@@1 |a#0@@4| |s#0@@4| |t#0@@4| |x#0@@4|))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |621|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Count$T@@2 T@U) ($ly@@2 T@U) (|a#0@@5| T@U) (|s#0@@5| Int) (|t#0@@5| Int) (|x#0@@5| T@U) ) (!  (=> (or (|_module.__default.Count#canCall| _module._default.Count$T@@2 |a#0@@5| |s#0@@5| |t#0@@5| |x#0@@5|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |a#0@@5| (TSeq _module._default.Count$T@@2)) ($IsBox |x#0@@5| _module._default.Count$T@@2)) (and (and (<= (LitInt 0) |s#0@@5|) (<= |s#0@@5| |t#0@@5|)) (<= |t#0@@5| (|Seq#Length| |a#0@@5|)))))) (and (=> (or (not (= |s#0@@5| |t#0@@5|)) (not true)) (|_module.__default.Count#canCall| _module._default.Count$T@@2 |a#0@@5| |s#0@@5| (- |t#0@@5| 1) |x#0@@5|)) (= (_module.__default.Count _module._default.Count$T@@2 ($LS $ly@@2) |a#0@@5| |s#0@@5| |t#0@@5| |x#0@@5|) (ite (= |s#0@@5| |t#0@@5|) 0 (+ (_module.__default.Count _module._default.Count$T@@2 $ly@@2 |a#0@@5| |s#0@@5| (- |t#0@@5| 1) |x#0@@5|) (ite (= (|Seq#Index| |a#0@@5| (- |t#0@@5| 1)) |x#0@@5|) 1 0))))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.__default.Count _module._default.Count$T@@2 ($LS $ly@@2) |a#0@@5| |s#0@@5| |t#0@@5| |x#0@@5|))
))))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@@6| () T@U)
(declare-fun |_module._default.FindWinner'$Candidate| () T@U)
(declare-fun |##s#0@0| () Int)
(declare-fun |##t#0@0| () Int)
(declare-fun |K#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |k#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.FindWinner_k)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($IsAlloc SeqType |a#0@@6| (TSeq |_module._default.FindWinner'$Candidate|) $Heap) (= |##s#0@0| (LitInt 0))) (=> (and (and ($IsAlloc intType (int_2_U |##s#0@0|) TInt $Heap) (= |##t#0@0| (|Seq#Length| |a#0@@6|))) (and ($IsAlloc intType (int_2_U |##t#0@0|) TInt $Heap) ($IsAllocBox |K#0| |_module._default.FindWinner'$Candidate| $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= (LitInt 0) |##s#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= |##s#0@0| |##t#0@0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (<= |##t#0@0| (|Seq#Length| |a#0@@6|))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SeqType |a#0@@6| (TSeq |_module._default.FindWinner'$Candidate|)) ($IsAlloc SeqType |a#0@@6| (TSeq |_module._default.FindWinner'$Candidate|) $Heap)) (and ($IsBox |K#0| |_module._default.FindWinner'$Candidate|) ($IsAllocBox |K#0| |_module._default.FindWinner'$Candidate| $Heap))) (and (and ($IsBox |k#0| |_module._default.FindWinner'$Candidate|) ($IsAllocBox |k#0| |_module._default.FindWinner'$Candidate| $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))) anon0_correct))))
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
