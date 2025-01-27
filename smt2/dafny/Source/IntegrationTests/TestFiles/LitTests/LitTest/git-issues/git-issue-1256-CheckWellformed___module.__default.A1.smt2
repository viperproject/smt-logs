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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Clx () T@U)
(declare-fun Tagclass._module.MyClx () T@U)
(declare-fun Tagclass._module.Clx? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Clx () T@U)
(declare-fun tytagFamily$MyClx () T@U)
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
(declare-fun _module.__default.A1 (T@U T@U T@U) T@U)
(declare-fun |_module.__default.A1#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.MyClx (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Clx? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Clx () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |$let#25_n| (T@U T@U) T@U)
(declare-fun |$let#25$canCall| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.MyClx_0 (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Clx Tagclass._module.MyClx Tagclass._module.Clx? tytagFamily$object tytagFamily$Clx tytagFamily$MyClx)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.A1$U T@U) (|o#0| T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.A1#canCall| _module._default.A1$U |o#0| |c#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is refType |o#0| Tclass._System.object) ($Is refType |c#0| (Tclass._module.MyClx _module._default.A1$U))) (= |o#0| |c#0|)))) ($Is refType (_module.__default.A1 _module._default.A1$U |o#0| |c#0|) Tclass._System.object))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (_module.__default.A1 _module._default.A1$U |o#0| |c#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.A1$U@@0 T@U) (|o#0@@0| T@U) (|c#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.A1#canCall| _module._default.A1$U@@0 |o#0@@0| |c#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is refType |o#0@@0| Tclass._System.object) ($IsAlloc refType |o#0@@0| Tclass._System.object $Heap)) (and ($Is refType |c#0@@0| (Tclass._module.MyClx _module._default.A1$U@@0)) ($IsAlloc refType |c#0@@0| (Tclass._module.MyClx _module._default.A1$U@@0) $Heap))) (= |o#0@@0| |c#0@@0|)))) ($IsGoodHeap $Heap)) ($IsAlloc refType (_module.__default.A1 _module._default.A1$U@@0 |o#0@@0| |c#0@@0|) Tclass._System.object $Heap))
 :qid |gitissue1256dfy.95:16|
 :skolemid |628|
 :pattern ( ($IsAlloc refType (_module.__default.A1 _module._default.A1$U@@0 |o#0@@0| |c#0@@0|) Tclass._System.object $Heap))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Clx?)  (or (= $o null) (= (dtype $o) Tclass._module.Clx?)))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($Is refType $o Tclass._module.Clx?))
)))
(assert (forall ((_module.MyClx$U T@U) (|c#0@@1| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._module.MyClx _module.MyClx$U) $h) ($IsAlloc refType |c#0@@1| Tclass._module.Clx $h))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.MyClx _module.MyClx$U) $h))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Clx $h@@1) ($IsAlloc refType |c#0@@3| Tclass._module.Clx? $h@@1))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Clx $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Clx? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Clx? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Clx? $h@@3))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module._default.A1$U@@1 T@U) (o T@U) ) (!  (=> (|$let#25$canCall| _module._default.A1$U@@1 o) (and ($Is refType (|$let#25_n| _module._default.A1$U@@1 o) Tclass._System.object) (= (|$let#25_n| _module._default.A1$U@@1 o) o)))
 :qid |gitissue1256dfy.98:3|
 :skolemid |630|
 :pattern ( (|$let#25_n| _module._default.A1$U@@1 o))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((_module.MyClx$U@@0 T@U) ) (!  (and (= (Tag (Tclass._module.MyClx _module.MyClx$U@@0)) Tagclass._module.MyClx) (= (TagFamily (Tclass._module.MyClx _module.MyClx$U@@0)) tytagFamily$MyClx))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (Tclass._module.MyClx _module.MyClx$U@@0))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Clx)  (and ($Is refType |c#0@@5| Tclass._module.Clx?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Clx))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Clx?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.A1$U@@2 T@U) ($Heap@@0 T@U) (|o#0@@1| T@U) (|c#0@@6| T@U) ) (!  (=> (or (|_module.__default.A1#canCall| _module._default.A1$U@@2 (Lit refType |o#0@@1|) (Lit refType |c#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is refType |o#0@@1| Tclass._System.object)) ($Is refType |c#0@@6| (Tclass._module.MyClx _module._default.A1$U@@2))) (= (Lit refType |o#0@@1|) (Lit refType |c#0@@6|))))) (and (|$let#25$canCall| _module._default.A1$U@@2 (Lit refType |o#0@@1|)) (= (_module.__default.A1 _module._default.A1$U@@2 (Lit refType |o#0@@1|) (Lit refType |c#0@@6|)) (let ((|n#1| (|$let#25_n| _module._default.A1$U@@2 (Lit refType |o#0@@1|))))
|n#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |632|
 :pattern ( (_module.__default.A1 _module._default.A1$U@@2 (Lit refType |o#0@@1|) (Lit refType |c#0@@6|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.A1$U@@3 T@U) ($Heap@@1 T@U) (|o#0@@2| T@U) (|c#0@@7| T@U) ) (!  (=> (or (|_module.__default.A1#canCall| _module._default.A1$U@@3 |o#0@@2| |c#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is refType |o#0@@2| Tclass._System.object)) ($Is refType |c#0@@7| (Tclass._module.MyClx _module._default.A1$U@@3))) (= |o#0@@2| |c#0@@7|)))) (and (|$let#25$canCall| _module._default.A1$U@@3 |o#0@@2|) (= (_module.__default.A1 _module._default.A1$U@@3 |o#0@@2| |c#0@@7|) (let ((|n#0| (|$let#25_n| _module._default.A1$U@@3 |o#0@@2|)))
|n#0|))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.__default.A1 _module._default.A1$U@@3 |o#0@@2| |c#0@@7|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o@@2 T@U) ) (! ($Is refType $o@@2 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@2 Tclass._System.object?))
)))
(assert (forall ((_module.MyClx$U@@1 T@U) ) (! (= (Tclass._module.MyClx_0 (Tclass._module.MyClx _module.MyClx$U@@1)) _module.MyClx$U@@1)
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (Tclass._module.MyClx _module.MyClx$U@@1))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |724|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Clx) Tagclass._module.Clx))
(assert (= (TagFamily Tclass._module.Clx) tytagFamily$Clx))
(assert (= (Tag Tclass._module.Clx?) Tagclass._module.Clx?))
(assert (= (TagFamily Tclass._module.Clx?) tytagFamily$Clx))
(assert (forall ((_module.MyClx$U@@2 T@U) (|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| (Tclass._module.MyClx _module.MyClx$U@@2))  (and ($Is refType |c#0@@8| Tclass._module.Clx) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($Is refType |c#0@@8| (Tclass._module.MyClx _module.MyClx$U@@2)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |o#0@@3| () T@U)
(declare-fun |n#2@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun _module._default.A1$U@@4 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |c#0@@9| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.A1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (or (and ($Is refType |o#0@@3| Tclass._System.object) (= |o#0@@3| |o#0@@3|)) (or (and ($Is refType null Tclass._System.object) (= null |o#0@@3|)) (exists ((|n#3| T@U) ) (!  (and ($Is refType |n#3| Tclass._System.object) (= |n#3| |o#0@@3|))
 :qid |gitissue1256dfy.98:7|
 :skolemid |633|
)))))))
(let ((anon8_Else_correct  (=> (and (not (and ($Is refType |n#2@0| Tclass._System.object) ($IsAlloc refType |n#2@0| Tclass._System.object $Heap@@2))) (= (ControlFlow 0 6) 3)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and ($Is refType |n#2@0| Tclass._System.object) ($IsAlloc refType |n#2@0| Tclass._System.object $Heap@@2)) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($Is refType |o#0@@3| (Tclass._module.MyClx _module._default.A1$U@@4))) (=> ($Is refType |o#0@@3| (Tclass._module.MyClx _module._default.A1$U@@4)) (=> (= (ControlFlow 0 4) 3) anon5_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (= |o#0@@3| |c#0@@9|)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is refType |o#0@@3| Tclass._System.object) ($Is refType |c#0@@9| (Tclass._module.MyClx _module._default.A1$U@@4))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
