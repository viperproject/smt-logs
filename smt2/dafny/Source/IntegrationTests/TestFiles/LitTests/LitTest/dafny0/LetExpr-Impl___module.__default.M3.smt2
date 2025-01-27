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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Fib (T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Fib#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array tytagFamily$nat tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Fib#canCall| |n#0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) (and (=> (<= 2 |n#0|) (and (|_module.__default.Fib#canCall| (- |n#0| 1)) (|_module.__default.Fib#canCall| (- |n#0| 2)))) (= (_module.__default.Fib ($LS $ly) |n#0|) (ite (< |n#0| 2) |n#0| (+ (_module.__default.Fib $ly (- |n#0| 1)) (_module.__default.Fib $ly (- |n#0| 2)))))))
 :qid |LetExprdfy.22:10|
 :skolemid |2244|
 :pattern ( (_module.__default.Fib ($LS $ly) |n#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2048|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Fib#canCall| |n#0@@0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (<= (LitInt 0) (_module.__default.Fib $ly@@0 |n#0@@0|)))
 :qid |LetExprdfy.22:10|
 :skolemid |2242|
 :pattern ( (_module.__default.Fib $ly@@0 |n#0@@0|))
))))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2061|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1720|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1718|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1729|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2047|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1742|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2055|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Fib#canCall| (LitInt |n#0@@1|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@1|))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0@@1| 2))))) (and (|_module.__default.Fib#canCall| (LitInt (- |n#0@@1| 1))) (|_module.__default.Fib#canCall| (LitInt (- |n#0@@1| 2))))) (= (_module.__default.Fib ($LS $ly@@1) (LitInt |n#0@@1|)) (ite (< |n#0@@1| 2) |n#0@@1| (+ (_module.__default.Fib ($LS $ly@@1) (LitInt (- |n#0@@1| 1))) (_module.__default.Fib ($LS $ly@@1) (LitInt (- |n#0@@1| 2))))))))
 :qid |LetExprdfy.22:10|
 :weight 3
 :skolemid |2245|
 :pattern ( (_module.__default.Fib ($LS $ly@@1) (LitInt |n#0@@1|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1730|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1741|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |1815|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |1806|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |1807|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1728|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@4 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($ly@@2 T@U) (|n#0@@2| Int) ) (! (= (_module.__default.Fib ($LS $ly@@2) |n#0@@2|) (_module.__default.Fib $ly@@2 |n#0@@2|))
 :qid |LetExprdfy.22:10|
 :skolemid |2240|
 :pattern ( (_module.__default.Fib ($LS $ly@@2) |n#0@@2|))
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
 :skolemid |2615|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |2041|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1721|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1719|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1764|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1743|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#0_0@0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |i#0_0@0| () Int)
(declare-fun |r#0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |##n#10@0| () Int)
(declare-fun |##n#11@0| () Int)
(declare-fun |##n#12@0| () Int)
(declare-fun |##n#13@0| () Int)
(declare-fun |##n#14@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |##n#15@0| () Int)
(declare-fun |##n#9@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |##n#1@0| () Int)
(declare-fun |##n#2@0| () Int)
(declare-fun |##n#3@0| () Int)
(declare-fun |##n#4@0| () Int)
(declare-fun |##n#5@0| () Int)
(declare-fun |##n#6@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |##n#7@0| () Int)
(declare-fun |##n#8@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0@@1| () Int)
(declare-fun |y#0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M3)
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
 (=> (= (ControlFlow 0 0) 46) (let ((anon9_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (< |j#0_0@0| (_System.array.Length |a#0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_0@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#0_0@0|))))))) (=> (and (=> (< |j#0_0@0| (_System.array.Length |a#0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_0@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#0_0@0|)))))) (= (ControlFlow 0 6) (- 0 5))) (U_2_bool (Lit boolType (bool_2_U true)))))))
(let ((anon15_Else_correct  (=> (and (<= (_System.array.Length |a#0|) |j#0_0@0|) (= (ControlFlow 0 13) 6)) anon9_correct)))
(let ((anon15_Then_correct  (=> (< |j#0_0@0| (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 8) (- 0 12)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (_System.array.Length |a#0|)))) (=> (= (ControlFlow 0 8) 6) anon9_correct))))))))))
(let ((anon14_Else_correct  (=> (= |j#0_0@0| (+ |i#0_0@0| 1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= |a#0| null)) (not true))) (and (=> (= (ControlFlow 0 14) 8) anon15_Then_correct) (=> (= (ControlFlow 0 14) 13) anon15_Else_correct))))))
(let ((anon14_Then_correct true))
(let ((anon5_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 16) 4) anon14_Then_correct) (=> (= (ControlFlow 0 16) 14) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (< |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 19) 16)) anon5_correct)))
(let ((anon13_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= |a#0| null)) (not true))) (=> (= (ControlFlow 0 17) 16) anon5_correct)))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 20) 17) anon13_Then_correct) (=> (= (ControlFlow 0 20) 19) anon13_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ |r#0| (let ((|t#0| |r#0|))
(Mul |t#0| (LitInt 2)))) (Mul (LitInt 3) |r#0|)))))
(let ((anon12_Else_correct  (=> (and (forall ((|i#0_1| Int) ) (!  (=> (and (<= (LitInt 0) |i#0_1|) (< |i#0_1| (_System.array.Length |a#0|))) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |LetExprdfy.45:10|
 :skolemid |2254|
)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon2_correct  (=> (and (|_module.__default.Fib#canCall| (LitInt 7)) (=> (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 7))) (LitInt 3)) (|_module.__default.Fib#canCall| (LitInt 9)))) (and (=> (= (ControlFlow 0 21) (- 0 31)) (=> (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 7))) (LitInt 3)) (= (LitInt (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 9))) (LitInt 24)))) (=> (=> (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 7))) (LitInt 3)) (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 9))) (LitInt 24))) (and (=> (= (ControlFlow 0 21) (- 0 30)) ($Is intType (int_2_U (LitInt 1000)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1000)) Tclass._System.nat) (=> (= |##n#10@0| (LitInt 1000)) (=> (and (and ($IsAlloc intType (int_2_U |##n#10@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 1000))) (and (|_module.__default.Fib#canCall| (LitInt 1000)) (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 1000))) (LitInt 1000)))) (and (=> (= (ControlFlow 0 21) (- 0 29)) ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat) (=> (= |##n#11@0| (LitInt 9)) (=> (and ($IsAlloc intType (int_2_U |##n#11@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 9))) (and (=> (= (ControlFlow 0 21) (- 0 28)) ($Is intType (int_2_U (LitInt 8)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 8)) Tclass._System.nat) (=> (= |##n#12@0| (LitInt 8)) (=> (and ($IsAlloc intType (int_2_U |##n#12@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 8))) (=> (and (and (|_module.__default.Fib#canCall| (LitInt 9)) (|_module.__default.Fib#canCall| (LitInt 8))) (= (LitInt (- (_module.__default.Fib ($LS $LZ) (LitInt 9)) (_module.__default.Fib ($LS $LZ) (LitInt 8)))) (LitInt 13))) (and (=> (= (ControlFlow 0 21) (- 0 27)) ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat) (=> (= |##n#13@0| (LitInt 9)) (=> (and ($IsAlloc intType (int_2_U |##n#13@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 9))) (and (=> (= (ControlFlow 0 21) (- 0 26)) ($Is intType (int_2_U (LitInt 10)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 10)) Tclass._System.nat) (=> (= |##n#14@0| (LitInt 10)) (=> (and (and ($IsAlloc intType (int_2_U |##n#14@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 10))) (and (|_module.__default.Fib#canCall| (LitInt 9)) (|_module.__default.Fib#canCall| (LitInt 10)))) (and (=> (= (ControlFlow 0 21) (- 0 25)) (<= (LitInt (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 9))) (LitInt (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 10))))) (=> (<= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 9))) (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 10)))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (= |$rhs#1@0| (LitInt 89))) (=> (= |$rhs#1@0| (LitInt 89)) (and (=> (= (ControlFlow 0 21) (- 0 23)) ($Is intType (int_2_U (LitInt 1000)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1000)) Tclass._System.nat) (=> (and (and (= |##n#15@0| (LitInt 1000)) ($IsAlloc intType (int_2_U |##n#15@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Fib#canCall| (LitInt 1000)) (|_module.__default.Fib#canCall| (LitInt 1000)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= (LitInt (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 1000))) (LitInt 1000))) (=> (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 1000))) (LitInt 1000)) (and (=> (= (ControlFlow 0 21) 20) anon12_Then_correct) (=> (= (ControlFlow 0 21) 3) anon12_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct  (=> (and (or (not (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 7))) (LitInt 3))) (not true)) (= (ControlFlow 0 34) 21)) anon2_correct)))
(let ((anon11_Then_correct  (=> (= (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 7))) (LitInt 3)) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat) (=> (and (and (= |##n#9@0| (LitInt 9)) ($IsAlloc intType (int_2_U |##n#9@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Fib#canCall| (LitInt 9)) (= (ControlFlow 0 32) 21))) anon2_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 35) (- 0 45)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= |##n#0@0| (LitInt 2)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 2))) (and (=> (= (ControlFlow 0 35) (- 0 44)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= |##n#1@0| (LitInt 4)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 4))) (and (=> (= (ControlFlow 0 35) (- 0 43)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |##n#2@0| (LitInt 0)) (=> (and ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 0))) (and (=> (= (ControlFlow 0 35) (- 0 42)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |##n#3@0| (LitInt 1)) (=> (and ($IsAlloc intType (int_2_U |##n#3@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 1))) (and (=> (= (ControlFlow 0 35) (- 0 41)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= |##n#4@0| (LitInt 2)) (=> (and ($IsAlloc intType (int_2_U |##n#4@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 2))) (and (=> (= (ControlFlow 0 35) (- 0 40)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= |##n#5@0| (LitInt 3)) (=> (and ($IsAlloc intType (int_2_U |##n#5@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 3))) (=> (and (and (|_module.__default.Fib#canCall| (LitInt 2)) (|_module.__default.Fib#canCall| (LitInt 4))) (and (and (and (|_module.__default.Fib#canCall| (LitInt 0)) (|_module.__default.Fib#canCall| (LitInt 1))) (|_module.__default.Fib#canCall| (LitInt 2))) (|_module.__default.Fib#canCall| (LitInt 3)))) (and (=> (= (ControlFlow 0 35) (- 0 39)) (= (LitInt (+ (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 2)) (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 4)))) (LitInt (+ (+ (+ (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 0)) (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 1))) (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 2))) (_module.__default.Fib ($LS ($LS $LZ)) (LitInt 3)))))) (=> (= (LitInt (+ (_module.__default.Fib ($LS $LZ) (LitInt 2)) (_module.__default.Fib ($LS $LZ) (LitInt 4)))) (LitInt (+ (+ (+ (_module.__default.Fib ($LS $LZ) (LitInt 0)) (_module.__default.Fib ($LS $LZ) (LitInt 1))) (_module.__default.Fib ($LS $LZ) (LitInt 2))) (_module.__default.Fib ($LS $LZ) (LitInt 3))))) (and (=> (= (ControlFlow 0 35) (- 0 38)) ($Is intType (int_2_U (LitInt 8)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 8)) Tclass._System.nat) (=> (= |##n#6@0| (LitInt 8)) (=> (and (and ($IsAlloc intType (int_2_U |##n#6@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 8))) (and (|_module.__default.Fib#canCall| (LitInt 8)) (= |$rhs#0@0| (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 8)))))) (and (=> (= (ControlFlow 0 35) (- 0 37)) ($Is intType (int_2_U (LitInt 11)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 11)) Tclass._System.nat) (=> (and (= |##n#7@0| (LitInt 11)) ($IsAlloc intType (int_2_U |##n#7@0|) Tclass._System.nat $Heap)) (=> (and (and (|_module.__default.Fib#canCall| (LitInt 11)) (|_module.__default.Fib#canCall| (LitInt 11))) (and (= |$rhs#1@0| (LitInt (_module.__default.Fib ($LS $LZ) (LitInt 11)))) (= |$rhs#0@0| (LitInt 21)))) (and (=> (= (ControlFlow 0 35) (- 0 36)) ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat) (=> (= |##n#8@0| (LitInt 7)) (=> (and ($IsAlloc intType (int_2_U |##n#8@0|) Tclass._System.nat $Heap) (|_module.__default.Fib#canCall| (LitInt 7))) (and (=> (= (ControlFlow 0 35) 32) anon11_Then_correct) (=> (= (ControlFlow 0 35) 34) anon11_Else_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) (and (<= (LitInt 0) |x#0@@1|) true)) (=> (and (and (and (<= (LitInt 0) |y#0|) true) (= 1 $FunctionContextHeight)) (and (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array.Length |a#0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|)))) (LitInt 6)))
 :qid |LetExprdfy.28:19|
 :skolemid |2252|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|))))
)) (= (ControlFlow 0 46) 35))) anon0_correct)))))
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
