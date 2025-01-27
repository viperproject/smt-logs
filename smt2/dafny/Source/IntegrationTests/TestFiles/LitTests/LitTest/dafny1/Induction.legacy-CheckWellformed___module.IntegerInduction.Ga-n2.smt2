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
(declare-fun Tagclass._module.IntegerInduction? () T@U)
(declare-fun Tagclass._module.IntegerInduction () T@U)
(declare-fun tytagFamily$IntegerInduction () T@U)
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
(declare-fun _module.IntegerInduction.Gauss (T@U T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.IntegerInduction.Gauss#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.IntegerInduction () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Tclass._module.IntegerInduction? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt alloc Tagclass._module.IntegerInduction? Tagclass._module.IntegerInduction tytagFamily$IntegerInduction)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|n#0| Int) ) (!  (=> (or (|_module.IntegerInduction.Gauss#canCall| this |n#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.IntegerInduction)) (<= (LitInt 0) |n#0|)))) (and (=> (or (not (= |n#0| (LitInt 0))) (not true)) (|_module.IntegerInduction.Gauss#canCall| this (- |n#0| 1))) (= (_module.IntegerInduction.Gauss ($LS $ly) this |n#0|) (ite (= |n#0| (LitInt 0)) 0 (+ (_module.IntegerInduction.Gauss $ly this (- |n#0| 1)) |n#0|)))))
 :qid |Inductionlegacydfy.17:18|
 :skolemid |556|
 :pattern ( (_module.IntegerInduction.Gauss ($LS $ly) this |n#0|))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.IntegerInduction?)  (or (= $o null) (= (dtype $o) Tclass._module.IntegerInduction?)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType $o Tclass._module.IntegerInduction?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.IntegerInduction $h) ($IsAlloc refType |c#0| Tclass._module.IntegerInduction? $h))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.IntegerInduction $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.IntegerInduction? $h))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.IntegerInduction? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.IntegerInduction? $h@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.IntegerInduction.Gauss#canCall| (Lit refType this@@0) (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.IntegerInduction)) (<= (LitInt 0) (LitInt |n#0@@0|))))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (|_module.IntegerInduction.Gauss#canCall| (Lit refType this@@0) (LitInt (- |n#0@@0| 1)))) (= (_module.IntegerInduction.Gauss ($LS $ly@@0) (Lit refType this@@0) (LitInt |n#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) 0 (+ (_module.IntegerInduction.Gauss ($LS $ly@@0) (Lit refType this@@0) (LitInt (- |n#0@@0| 1))) |n#0@@0|)))))
 :qid |Inductionlegacydfy.17:18|
 :weight 3
 :skolemid |558|
 :pattern ( (_module.IntegerInduction.Gauss ($LS $ly@@0) (Lit refType this@@0) (LitInt |n#0@@0|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.IntegerInduction)  (and ($Is refType |c#0@@0| Tclass._module.IntegerInduction?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.IntegerInduction))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.IntegerInduction?))
)))
(assert (forall (($ly@@1 T@U) (this@@1 T@U) (|n#0@@1| Int) ) (! (= (_module.IntegerInduction.Gauss ($LS $ly@@1) this@@1 |n#0@@1|) (_module.IntegerInduction.Gauss $ly@@1 this@@1 |n#0@@1|))
 :qid |Inductionlegacydfy.17:18|
 :skolemid |552|
 :pattern ( (_module.IntegerInduction.Gauss ($LS $ly@@1) this@@1 |n#0@@1|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.IntegerInduction.Gauss#canCall| this@@2 (LitInt |n#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.IntegerInduction)) (<= (LitInt 0) (LitInt |n#0@@2|))))) (and (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (|_module.IntegerInduction.Gauss#canCall| this@@2 (LitInt (- |n#0@@2| 1)))) (= (_module.IntegerInduction.Gauss ($LS $ly@@2) this@@2 (LitInt |n#0@@2|)) (ite (= (LitInt |n#0@@2|) (LitInt 0)) 0 (+ (_module.IntegerInduction.Gauss ($LS $ly@@2) this@@2 (LitInt (- |n#0@@2| 1))) |n#0@@2|)))))
 :qid |Inductionlegacydfy.17:18|
 :weight 3
 :skolemid |557|
 :pattern ( (_module.IntegerInduction.Gauss ($LS $ly@@2) this@@2 (LitInt |n#0@@2|)))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
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
 :skolemid |748|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (= (Tag Tclass._module.IntegerInduction?) Tagclass._module.IntegerInduction?))
(assert (= (TagFamily Tclass._module.IntegerInduction?) tytagFamily$IntegerInduction))
(assert (= (Tag Tclass._module.IntegerInduction) Tagclass._module.IntegerInduction))
(assert (= (TagFamily Tclass._module.IntegerInduction) tytagFamily$IntegerInduction))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@3| () Int)
(declare-fun this@@3 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.IntegerInduction.Gauss)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Else_correct  (=> (and (and (or (not (= |n#0@@3| (LitInt 0))) (not true)) ($IsAllocBox ($Box refType this@@3) Tclass._module.IntegerInduction? $Heap)) (and (= |##n#0@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#0@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (<= (LitInt 0) |##n#0@0|)) (=> (<= (LitInt 0) |##n#0@0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 |n#0@@3|) (= |##n#0@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |##n#0@0| |n#0@@3|)) (=> (= (ControlFlow 0 4) (- 0 3)) (< |##n#0@0| |n#0@@3|)))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (<= (LitInt 0) |n#0@@3|)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.IntegerInduction) ($IsAlloc refType this@@3 Tclass._module.IntegerInduction $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
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
