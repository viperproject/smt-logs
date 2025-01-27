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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun _module.C.b (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.C? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.C.a (T@U) Int)
(declare-fun _module.C.H (T@U T@U) Int)
(declare-fun |_module.C.H#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.C.x () Int)
(declare-fun _module.C.y () Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.C Tagclass._module.C? tytagFamily$C)
)
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
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc intType (int_2_U (_module.C.b $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2020|
 :pattern ( (_module.C.b $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAlloc intType (int_2_U (_module.C.a $o@@0)) TInt $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2018|
 :pattern ( (_module.C.a $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this T@U) (|c#0| T@U) ) (!  (=> (or (|_module.C.H#canCall| this |c#0|) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.C)) ($Is refType |c#0| Tclass._module.C)))) (and (= (_module.C.H this |c#0|) (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5))) (= (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5)) (LitInt 173))))
 :qid |Constantdfy.62:12|
 :skolemid |2021|
 :pattern ( (_module.C.H this |c#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) (|c#0@@0| T@U) ) (!  (=> (or (|_module.C.H#canCall| this@@0 |c#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.C)) ($Is refType |c#0@@0| Tclass._module.C)))) (= (_module.C.H this@@0 |c#0@@0|) (+ (+ (+ (+ (+ (+ (_module.C.a this@@0) (_module.C.b this@@0)) (_module.C.b |c#0@@0|)) _module.C.x) _module.C.y) _module.C.y) _module.C.y)))
 :qid |Constantdfy.62:12|
 :skolemid |2023|
 :pattern ( (_module.C.H this@@0 |c#0@@0|))
))))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.C?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |2005|
 :pattern ( ($Is refType $o@@1 Tclass._module.C?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.C? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2006|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.C? $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1502|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1500|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1511|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@1 T@U) (|c#0@@2| T@U) ) (!  (=> (or (|_module.C.H#canCall| (Lit refType this@@1) (Lit refType |c#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.C)) ($Is refType |c#0@@2| Tclass._module.C)))) (= (_module.C.H (Lit refType this@@1) (Lit refType |c#0@@2|)) (+ (+ (+ (+ (+ (+ (_module.C.a (Lit refType this@@1)) (_module.C.b (Lit refType this@@1))) (_module.C.b (Lit refType |c#0@@2|))) _module.C.x) _module.C.y) _module.C.y) _module.C.y)))
 :qid |Constantdfy.62:12|
 :weight 3
 :skolemid |2025|
 :pattern ( (_module.C.H (Lit refType this@@1) (Lit refType |c#0@@2|)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.C?)) ($Is intType (int_2_U (_module.C.b $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |2019|
 :pattern ( (_module.C.b $o@@3))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.C?)) ($Is intType (int_2_U (_module.C.a $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |2017|
 :pattern ( (_module.C.a $o@@4))
))))
(assert (= _module.C.x (+ _module.C.y 1)))
(assert (forall ((this@@2 T@U) ) (! (= (_module.C.b this@@2) (LitInt 50))
 :qid |Constantdfy.61:9|
 :skolemid |2015|
 :pattern ( (_module.C.b this@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc intType (int_2_U _module.C.y) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2008|
 :pattern ( ($IsAlloc intType (int_2_U _module.C.y) TInt $h@@3))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc intType (int_2_U _module.C.x) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2007|
 :pattern ( ($IsAlloc intType (int_2_U _module.C.x) TInt $h@@4))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1524|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.C)  (and ($Is refType |c#0@@3| Tclass._module.C?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.C?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@3 T@U) (|c#0@@4| T@U) ) (!  (=> (or (|_module.C.H#canCall| this@@3 (Lit refType |c#0@@4|)) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.C)) ($Is refType |c#0@@4| Tclass._module.C)))) (= (_module.C.H this@@3 (Lit refType |c#0@@4|)) (+ (+ (+ (+ (+ (+ (_module.C.a this@@3) (_module.C.b this@@3)) (_module.C.b (Lit refType |c#0@@4|))) _module.C.x) _module.C.y) _module.C.y) _module.C.y)))
 :qid |Constantdfy.62:12|
 :weight 3
 :skolemid |2024|
 :pattern ( (_module.C.H this@@3 (Lit refType |c#0@@4|)))
))))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U _module.C.y) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U _module.C.x) TInt)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1510|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (= _module.C.y (LitInt 5)))
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
 :skolemid |2206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((this@@4 T@U) ) (! (= (_module.C.a this@@4) (+ (_module.C.b this@@4) 2))
 :qid |Constantdfy.60:9|
 :skolemid |2016|
 :pattern ( (_module.C.a this@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1503|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1501|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1546|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1525|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@5 () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.C.H)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon4_correct true))
(let ((anon8_Else_correct  (=> (and (or (not (= (_module.C.H this@@5 |c#0@@5|) (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5)))) (not true)) (= (ControlFlow 0 8) 6)) anon4_correct)))
(let ((anon8_Then_correct  (=> (and (= (_module.C.H this@@5 |c#0@@5|) (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5))) (= (ControlFlow 0 7) 6)) anon4_correct)))
(let ((anon7_Then_correct  (=> (and ($IsAllocBox ($Box refType this@@5) Tclass._module.C? $Heap) ($IsAlloc refType |c#0@@5| Tclass._module.C $Heap)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (and (= this@@5 this@@5) (= |c#0@@5| |c#0@@5|)) (and (= |c#0@@5| null) (or (not (= |c#0@@5| null)) (not true))))) (=> (or (and (= this@@5 this@@5) (= |c#0@@5| |c#0@@5|)) (and (= |c#0@@5| null) (or (not (= |c#0@@5| null)) (not true)))) (=> (or (and (= this@@5 this@@5) (= |c#0@@5| |c#0@@5|)) (|_module.C.H#canCall| this@@5 |c#0@@5|)) (and (=> (= (ControlFlow 0 9) 7) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (_module.C.H this@@5 |c#0@@5|) (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5)))) (=> (= (_module.C.H this@@5 |c#0@@5|) (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5))) (=> (= (ControlFlow 0 2) (- 0 1)) (= (LitInt (+ (+ (+ (+ (+ (+ 50 52) 50) 6) 5) 5) 5)) (LitInt 173)))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (=> (= (_module.C.H this@@5 |c#0@@5|) (+ (+ (+ (+ (+ (+ (_module.C.a this@@5) (_module.C.b this@@5)) (_module.C.b |c#0@@5|)) _module.C.x) _module.C.y) _module.C.y) _module.C.y)) (=> (and ($Is intType (int_2_U (_module.C.H this@@5 |c#0@@5|)) TInt) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 11) 9) anon7_Then_correct) (=> (= (ControlFlow 0 11) 4) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.C) ($IsAlloc refType this@@5 Tclass._module.C $Heap))) ($Is refType |c#0@@5| Tclass._module.C)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
