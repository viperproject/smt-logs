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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SumAgain (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.SumAgain#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List () T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.List.head (T@U) Int)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple0 () T@U)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (Int T@U) T@U)
(declare-fun _module.__default.Up (T@U Int Int) T@U)
(declare-fun |_module.__default.Up#canCall| (Int Int) Bool)
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.SumAgain#canCall| (Lit DatatypeTypeType |xs#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|tail#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.SumAgain#canCall| |tail#4|))) (= (_module.__default.SumAgain ($LS $ly) (Lit DatatypeTypeType |xs#0|)) (let ((|r#1| (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) 0 (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#3| (LitInt (_module.List.head (Lit DatatypeTypeType |xs#0|)))))
(LitInt (+ |x#3| (_module.__default.SumAgain ($LS $ly) |tail#3|))))))))
|r#1|))))
 :qid |_7DtAlgebraicdfy.48:10|
 :weight 3
 :skolemid |1100|
 :pattern ( (_module.__default.SumAgain ($LS $ly) (Lit DatatypeTypeType |xs#0|)))
))))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |663|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |664|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |562|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |560|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |571|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |995|
)))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1131|
)))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|m#0| Int) (|n#0| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |m#0| |n#0|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0|) (<= (LitInt 0) |n#0|)) (<= |m#0| |n#0|)))) (and (=> (or (not (= |m#0| |n#0|)) (not true)) (|_module.__default.Up#canCall| (+ |m#0| 1) |n#0|)) (= (_module.__default.Up ($LS $ly@@0) |m#0| |n#0|) (ite (= |m#0| |n#0|) |#_module.List.Nil| (|#_module.List.Cons| |m#0| (_module.__default.Up $ly@@0 (+ |m#0| 1) |n#0|))))))
 :qid |_7DtAlgebraicdfy.35:10|
 :skolemid |1085|
 :pattern ( (_module.__default.Up ($LS $ly@@0) |m#0| |n#0|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |584|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |656|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |655|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( ($IsBox bx@@1 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.List)))
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( ($IsBox bx@@2 Tclass._module.List))
)))
(assert (forall (($ly@@1 T@U) (|m#0@@0| Int) (|n#0@@0| Int) ) (! (= (_module.__default.Up ($LS $ly@@1) |m#0@@0| |n#0@@0|) (_module.__default.Up $ly@@1 |m#0@@0| |n#0@@0|))
 :qid |_7DtAlgebraicdfy.35:10|
 :skolemid |1081|
 :pattern ( (_module.__default.Up ($LS $ly@@1) |m#0@@0| |n#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|m#0@@1| Int) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Up#canCall| (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0@@1|) (<= (LitInt 0) |n#0@@1|)) (<= (LitInt |m#0@@1|) (LitInt |n#0@@1|))))) (and (=> (or (not (= (LitInt |m#0@@1|) (LitInt |n#0@@1|))) (not true)) (|_module.__default.Up#canCall| (LitInt (+ |m#0@@1| 1)) (LitInt |n#0@@1|))) (= (_module.__default.Up ($LS $ly@@2) (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (ite (= (LitInt |m#0@@1|) (LitInt |n#0@@1|)) |#_module.List.Nil| (|#_module.List.Cons| (LitInt |m#0@@1|) (Lit DatatypeTypeType (_module.__default.Up ($LS $ly@@2) (LitInt (+ |m#0@@1| 1)) (LitInt |n#0@@1|))))))))
 :qid |_7DtAlgebraicdfy.35:10|
 :weight 3
 :skolemid |1086|
 :pattern ( (_module.__default.Up ($LS $ly@@2) (LitInt |m#0@@1|) (LitInt |n#0@@1|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.List) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1142|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.List))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |662|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |572|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |583|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|tail#1| (_module.List.tail |xs#0@@0|)))
(|_module.__default.Sum#canCall| |tail#1|))) (= (_module.__default.Sum ($LS $ly@@3) |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) 0 (let ((|tail#0| (_module.List.tail |xs#0@@0|)))
(let ((|x#0@@1| (_module.List.head |xs#0@@0|)))
(+ |x#0@@1| (_module.__default.Sum $ly@@3 |tail#0|))))))))
 :qid |_7DtAlgebraicdfy.42:10|
 :skolemid |1092|
 :pattern ( (_module.__default.Sum ($LS $ly@@3) |xs#0@@0|))
))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |766|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1129|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1137|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1138|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |570|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1139|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@4) |xs#0@@1|) (_module.__default.Sum $ly@@4 |xs#0@@1|))
 :qid |_7DtAlgebraicdfy.42:10|
 :skolemid |1088|
 :pattern ( (_module.__default.Sum ($LS $ly@@4) |xs#0@@1|))
)))
(assert (forall (($ly@@5 T@U) (|xs#0@@2| T@U) ) (! (= (_module.__default.SumAgain ($LS $ly@@5) |xs#0@@2|) (_module.__default.SumAgain $ly@@5 |xs#0@@2|))
 :qid |_7DtAlgebraicdfy.48:10|
 :skolemid |1095|
 :pattern ( (_module.__default.SumAgain ($LS $ly@@5) |xs#0@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1208|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|m#0@@2| Int) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |m#0@@2| |n#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0@@2|) (<= (LitInt 0) |n#0@@2|)) (<= |m#0@@2| |n#0@@2|)))) ($Is DatatypeTypeType (_module.__default.Up $ly@@6 |m#0@@2| |n#0@@2|) Tclass._module.List))
 :qid |_7DtAlgebraicdfy.35:10|
 :skolemid |1083|
 :pattern ( (_module.__default.Up $ly@@6 |m#0@@2| |n#0@@2|))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.List $h@@1))) ($IsAlloc intType (int_2_U (_module.List.head d@@7)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |1134|
 :pattern ( ($IsAlloc intType (int_2_U (_module.List.head d@@7)) TInt $h@@1))
)))
(assert (forall ((d@@8 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@8)) (DtRank d@@8))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |629|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@8)))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@9 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@9 Tclass._System.Tuple0 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._System.Tuple0 $h@@2))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@10 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.List $h@@3))
 :qid |unknown.0:0|
 :skolemid |1140|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.List $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit DatatypeTypeType |xs#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(|_module.__default.Sum#canCall| |tail#3@@0|))) (= (_module.__default.Sum ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|x#2| (LitInt (_module.List.head (Lit DatatypeTypeType |xs#0@@3|)))))
(LitInt (+ |x#2| (_module.__default.Sum ($LS $ly@@7) |tail#2|)))))))))
 :qid |_7DtAlgebraicdfy.42:10|
 :weight 3
 :skolemid |1093|
 :pattern ( (_module.__default.Sum ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@3|)))
))))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((d@@13 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.Cons_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.List $h@@6))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@13) Tclass._module.List $h@@6))
 :qid |unknown.0:0|
 :skolemid |1135|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@13) Tclass._module.List $h@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.SumAgain#canCall| |xs#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0@@4|)) (let ((|tail#1@@0| (_module.List.tail |xs#0@@4|)))
(|_module.__default.SumAgain#canCall| |tail#1@@0|))) (= (_module.__default.SumAgain ($LS $ly@@8) |xs#0@@4|) (let ((|r#0| (ite (_module.List.Nil_q |xs#0@@4|) 0 (let ((|tail#0@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#0@@2| (_module.List.head |xs#0@@4|)))
(+ |x#0@@2| (_module.__default.SumAgain $ly@@8 |tail#0@@0|)))))))
|r#0|))))
 :qid |_7DtAlgebraicdfy.48:10|
 :skolemid |1099|
 :pattern ( (_module.__default.SumAgain ($LS $ly@@8) |xs#0@@4|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| Int) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (LitInt |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1136|
 :pattern ( (|#_module.List.Cons| (LitInt |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |563|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |561|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((|a#6#0#0@@0| Int) (|a#6#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List)  (and ($Is intType (int_2_U |a#6#0#0@@0|) TInt) ($Is DatatypeTypeType |a#6#1#0@@0| Tclass._module.List)))
 :qid |_7DtAlgebraicdfy.6:28|
 :skolemid |1133|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |767|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |606|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |585|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |##m#0@0| () Int)
(declare-fun |##n#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |e#0| () T@U)
(declare-fun |u#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |a#0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (=> (and (and (and (= |b#0@0| (|#_module.List.Cons| (LitInt 5) |a#0@0|)) (= |c#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |a#0@0|) ($Box DatatypeTypeType |b#0@0|)))) (and (_System.Tuple2.___hMake2_q |c#0@0|) (_System.Tuple2.___hMake2_q |c#0@0|))) (and (and (_System.Tuple2.___hMake2_q |c#0@0|) (_System.Tuple2.___hMake2_q |c#0@0|)) (and (= |d#0@0| (|#_System._tuple#2._#Make2| (_System.Tuple2._1 |c#0@0|) (_System.Tuple2._0 |c#0@0|))) (= |e#0@0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (_module.List.Cons_q |b#0@0|)) (=> (_module.List.Cons_q |b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (_module.List.Cons_q |b#0@0|)) (=> (_module.List.Cons_q |b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (and (= |##m#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##m#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat) (=> (= |##n#0@0| (LitInt 7)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap) (= (ControlFlow 0 2) (- 0 1))) (<= |##m#0@0| |##n#0@0|))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |a#0| Tclass._module.List $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |b#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |b#0| Tclass._module.List $Heap)) true) (and (and ($Is DatatypeTypeType |c#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List)) ($IsAlloc DatatypeTypeType |c#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List) $Heap)) true)) (=> (and (and (and (and ($Is DatatypeTypeType |d#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List)) ($IsAlloc DatatypeTypeType |d#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List) $Heap)) true) (and (and ($Is DatatypeTypeType |e#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |e#0| Tclass._System.Tuple0 $Heap)) true)) (and (and (and ($Is DatatypeTypeType |u#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |u#0| Tclass._module.List $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 7) 2)))) anon0_correct))))))
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
