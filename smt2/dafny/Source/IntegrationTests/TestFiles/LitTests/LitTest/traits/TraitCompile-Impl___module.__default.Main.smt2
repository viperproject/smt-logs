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
(declare-fun Tagclass._module.TT () T@U)
(declare-fun Tagclass._module.TT? () T@U)
(declare-fun Tagclass._module.CC () T@U)
(declare-fun Tagclass._module.CC? () T@U)
(declare-fun tytagFamily$TT () T@U)
(declare-fun tytagFamily$CC () T@U)
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
(declare-fun implements$_module.TT (T@U) Bool)
(declare-fun Tclass._module.CC? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.TT? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.TT () T@U)
(declare-fun Tclass._module.CC () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.TT.Plus (T@U Int Int) Int)
(declare-fun |_module.TT.Plus#canCall| (T@U Int Int) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.TT.StaticMinus (Int Int) Int)
(declare-fun |_module.TT.StaticMinus#canCall| (Int Int) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun q@Real (Int) Real)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun OtherModule.Y.F (Int) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._module.TT Tagclass._module.TT? Tagclass._module.CC Tagclass._module.CC? tytagFamily$TT tytagFamily$CC)
)
(assert (= (Tag TInt) TagInt))
(assert (implements$_module.TT Tclass._module.CC?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.CC?)  (or (= $o null) (= (dtype $o) Tclass._module.CC?)))
 :qid |unknown.0:0|
 :skolemid |7614|
 :pattern ( ($Is refType $o Tclass._module.CC?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.CC? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.TT? $h))
 :qid |unknown.0:0|
 :skolemid |8385|
 :pattern ( ($IsAllocBox bx Tclass._module.CC? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.TT $h@@0) ($IsAlloc refType |c#0| Tclass._module.TT? $h@@0))
 :qid |unknown.0:0|
 :skolemid |7613|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TT $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TT? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.CC $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.CC? $h@@1))
 :qid |unknown.0:0|
 :skolemid |7630|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CC $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CC? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.TT? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7592|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.TT? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.CC? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7615|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.CC? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |7135|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |7136|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |7034|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |7032|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) (|x#0| Int) (|y#0| Int) ) (!  (=> (or (|_module.TT.Plus#canCall| (Lit refType this) (LitInt |x#0|) (LitInt |y#0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.TT)) (U_2_bool (Lit boolType (bool_2_U (> |x#0| |y#0|))))))) (= (_module.TT.Plus (Lit refType this) (LitInt |x#0|) (LitInt |y#0|)) (LitInt (+ |x#0| |y#0|))))
 :qid |TraitCompiledfy.5:12|
 :weight 3
 :skolemid |7597|
 :pattern ( (_module.TT.Plus (Lit refType this) (LitInt |x#0|) (LitInt |y#0|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |7043|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) (|y#0@@0| Int) ) (!  (=> (or (|_module.TT.StaticMinus#canCall| (LitInt |x#0@@0|) (LitInt |y#0@@0|)) (and (< 0 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U (> |x#0@@0| |y#0@@0|)))))) (= (_module.TT.StaticMinus (LitInt |x#0@@0|) (LitInt |y#0@@0|)) (LitInt (- |x#0@@0| |y#0@@0|))))
 :qid |TraitCompiledfy.12:31|
 :weight 3
 :skolemid |7603|
 :pattern ( (_module.TT.StaticMinus (LitInt |x#0@@0|) (LitInt |y#0@@0|)))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |7056|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |7128|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |7127|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.TT)  (and ($Is refType |c#0@@1| Tclass._module.TT?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7612|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TT))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TT?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.CC)  (and ($Is refType |c#0@@2| Tclass._module.CC?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7629|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.CC))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.CC?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@1| Int) (|y#0@@1| Int) ) (!  (=> (or (|_module.TT.Plus#canCall| this@@0 (LitInt |x#0@@1|) (LitInt |y#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.TT)) (U_2_bool (Lit boolType (bool_2_U (> |x#0@@1| |y#0@@1|))))))) (= (_module.TT.Plus this@@0 (LitInt |x#0@@1|) (LitInt |y#0@@1|)) (LitInt (+ |x#0@@1| |y#0@@1|))))
 :qid |TraitCompiledfy.5:12|
 :weight 3
 :skolemid |7596|
 :pattern ( (_module.TT.Plus this@@0 (LitInt |x#0@@1|) (LitInt |y#0@@1|)))
))))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.CC? $heap) ($IsAlloc refType $o@@2 Tclass._module.TT? $heap))
 :qid |unknown.0:0|
 :skolemid |8387|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.CC? $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) (|y#0@@2| Int) ) (!  (=> (or (|_module.TT.StaticMinus#canCall| |x#0@@2| |y#0@@2|) (and (< 0 $FunctionContextHeight) (> |x#0@@2| |y#0@@2|))) (= (_module.TT.StaticMinus |x#0@@2| |y#0@@2|) (- |x#0@@2| |y#0@@2|)))
 :qid |TraitCompiledfy.12:31|
 :skolemid |7602|
 :pattern ( (_module.TT.StaticMinus |x#0@@2| |y#0@@2|))
))))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |7356|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((x@@6 Int) ) (! (= (q@Real x@@6) (to_real x@@6))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |7131|
 :pattern ( (q@Real x@@6))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |7134|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |7042|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) (|x#0@@3| Int) (|y#0@@3| Int) ) (!  (=> (or (|_module.TT.Plus#canCall| this@@1 |x#0@@3| |y#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.TT)) (> |x#0@@3| |y#0@@3|)))) (= (_module.TT.Plus this@@1 |x#0@@3| |y#0@@3|) (+ |x#0@@3| |y#0@@3|)))
 :qid |TraitCompiledfy.5:12|
 :skolemid |7595|
 :pattern ( (_module.TT.Plus this@@1 |x#0@@3| |y#0@@3|))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8408|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|x#0@@4| Int) ) (! (= (OtherModule.Y.F |x#0@@4|) (Div |x#0@@4| (LitInt 2)))
 :qid |TraitCompiledfy.96:23|
 :skolemid |7636|
 :pattern ( (OtherModule.Y.F |x#0@@4|))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.CC?) ($Is refType $o@@4 Tclass._module.TT?))
 :qid |unknown.0:0|
 :skolemid |8386|
 :pattern ( ($Is refType $o@@4 Tclass._module.CC?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |7133|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8)))
)))
(assert (= (Tag Tclass._module.TT) Tagclass._module.TT))
(assert (= (TagFamily Tclass._module.TT) tytagFamily$TT))
(assert (= (Tag Tclass._module.TT?) Tagclass._module.TT?))
(assert (= (TagFamily Tclass._module.TT?) tytagFamily$TT))
(assert (= (Tag Tclass._module.CC) Tagclass._module.CC))
(assert (= (TagFamily Tclass._module.CC) tytagFamily$CC))
(assert (= (Tag Tclass._module.CC?) Tagclass._module.CC?))
(assert (= (TagFamily Tclass._module.CC?) tytagFamily$CC))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.TT?)  (or (= $o@@5 null) (implements$_module.TT (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |7591|
 :pattern ( ($Is refType $o@@5 Tclass._module.TT?))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |7035|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |7033|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |7078|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@4))
)))
(assert (forall ((|x#0@@5| Int) ) (! (= (OtherModule.Y.F (LitInt |x#0@@5|)) (LitInt (Div |x#0@@5| (LitInt 2))))
 :qid |TraitCompiledfy.96:23|
 :weight 3
 :skolemid |7637|
 :pattern ( (OtherModule.Y.F (LitInt |x#0@@5|)))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |7057|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##x#0@0| () Int)
(declare-fun |##y#0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |##x#1@0| () Int)
(declare-fun |##y#1@0| () Int)
(declare-fun |z#0@0| () Int)
(declare-fun |##x#2@0| () Int)
(declare-fun |##y#2@0| () Int)
(declare-fun |z'#0@0| () Int)
(declare-fun |##x#3@0| () Int)
(declare-fun |##y#3@0| () Int)
(declare-fun |w#0@0| () Int)
(declare-fun |x##0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |x##2@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |x##3@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |x##4@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |##x#4@0| () Int)
(declare-fun |OtherModule.Y.F#canCall| (Int) Bool)
(declare-fun |seven#0@0| () Int)
(declare-fun |t##1@0| () Real)
(declare-fun $Heap@8 () T@U)
(declare-fun |##x#5@0| () Int)
(declare-fun |seven#0@1| () Int)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(declare-fun |defass#cc#0| () Bool)
(declare-fun |cc#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.CC?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> ($IsAllocBox ($Box refType $nw@0) Tclass._module.TT? $Heap@0) (=> (and (and (= |##x#0@0| (LitInt 100)) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap@0)) (and (= |##y#0@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##y#0@0|) TInt $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (> |##x#0@0| |##y#0@0|)) (=> (and (and (> |##x#0@0| |##y#0@0|) (|_module.TT.Plus#canCall| $nw@0 (LitInt 100) (LitInt 20))) (and (|_module.TT.Plus#canCall| $nw@0 (LitInt 100) (LitInt 20)) (= |y#0@0| (_module.TT.Plus $nw@0 (LitInt 100) (LitInt 20))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6)))
 :qid |TraitCompiledfy.42:8|
 :skolemid |7563|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (= |##x#1@0| (LitInt 50)) ($IsAlloc intType (int_2_U |##x#1@0|) TInt $Heap@1)) (and (= |##y#1@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##y#1@0|) TInt $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (> |##x#1@0| |##y#1@0|)) (=> (and (and (and (> |##x#1@0| |##y#1@0|) (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20))) (and (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20)) (= |z#0@0| (LitInt (_module.TT.StaticMinus (LitInt 50) (LitInt 20)))))) (and (and (= |##x#2@0| (LitInt 50)) ($IsAlloc intType (int_2_U |##x#2@0|) TInt $Heap@1)) (and (= |##y#2@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##y#2@0|) TInt $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (> |##x#2@0| |##y#2@0|)) (=> (and (and (> |##x#2@0| |##y#2@0|) (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20))) (and (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20)) (= |z'#0@0| (LitInt (_module.TT.StaticMinus (LitInt 50) (LitInt 20)))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (=> (and (and (= |##x#3@0| (LitInt 50)) ($IsAlloc intType (int_2_U |##x#3@0|) TInt $Heap@1)) (and (= |##y#3@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##y#3@0|) TInt $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (> |##x#3@0| |##y#3@0|)) (=> (and (and (> |##x#3@0| |##y#3@0|) (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20))) (and (|_module.TT.StaticMinus#canCall| (LitInt 50) (LitInt 20)) (= |w#0@0| (LitInt (_module.TT.StaticMinus (LitInt 50) (LitInt 20)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |x##0@0| (LitInt 500)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7)))
 :qid |TraitCompiledfy.18:10|
 :skolemid |7605|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.CC?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc)))) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (=> (= |x##1@0| (LitInt 502)) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8)))
 :qid |TraitCompiledfy.36:10|
 :skolemid |7627|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> (= |x##2@0| (LitInt 504)) (=> (and (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9)))
 :qid |TraitCompiledfy.23:17|
 :skolemid |7610|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |x##3@0| (LitInt 504)))) (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@10)))
 :qid |TraitCompiledfy.23:17|
 :skolemid |7610|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |x##4@0| (LitInt 505))))) (and (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@11)))
 :qid |TraitCompiledfy.23:17|
 :skolemid |7610|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |##x#4@0| (LitInt 15)))) (and (and ($IsAlloc intType (int_2_U |##x#4@0|) TInt $Heap@7) (|OtherModule.Y.F#canCall| (LitInt 15))) (and (|OtherModule.Y.F#canCall| (LitInt 15)) (= |seven#0@0| (LitInt (OtherModule.Y.F (LitInt 15)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |seven#0@0| (LitInt 7))) (=> (= |seven#0@0| (LitInt 7)) (=> (= |t##1@0| (q@Real |seven#0@0|)) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12)))
 :qid |TraitCompiledfy.98:19|
 :skolemid |7638|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= |##x#5@0| (LitInt 15)) ($IsAlloc intType (int_2_U |##x#5@0|) TInt $Heap@8))) (and (and (|OtherModule.Y.F#canCall| (LitInt 15)) (|OtherModule.Y.F#canCall| (LitInt 15))) (and (= |seven#0@1| (LitInt (OtherModule.Y.F (LitInt 15)))) (= (ControlFlow 0 2) (- 0 1))))) (= |seven#0@1| (LitInt 7)))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@3| Tclass._module.CC) ($IsAlloc refType |c#0@@3| Tclass._module.CC $Heap))) true)) (and (and (=> |defass#cc#0| (and ($Is refType |cc#0| Tclass._module.CC) ($IsAlloc refType |cc#0| Tclass._module.CC $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 2)))) anon0_correct)))
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
