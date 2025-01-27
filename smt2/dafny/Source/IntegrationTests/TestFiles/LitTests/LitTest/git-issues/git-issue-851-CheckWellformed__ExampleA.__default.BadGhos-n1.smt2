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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.ExampleA.C () T@U)
(declare-fun Tagclass.ExampleA.C? () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ExampleA.C () T@U)
(declare-fun Tclass.ExampleA.C? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ExampleA.C.F (T@U) Bool)
(declare-fun |ExampleA.C.F#canCall| (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun ExampleA.__default.BadGhost () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |ExampleA.__default.BadGhost#canCall| () Bool)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_c| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ExampleA.C (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass.ExampleA.C Tagclass.ExampleA.C? tytagFamily$C)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ExampleA.C $h) ($IsAlloc refType |c#0| Tclass.ExampleA.C? $h))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExampleA.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExampleA.C? $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|ExampleA.C.F#canCall| this) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ExampleA.C)))) (U_2_bool (Lit boolType (bool_2_U false))))
 :qid |gitissue851dfy.9:21|
 :skolemid |491|
 :pattern ( (ExampleA.C.F this))
))))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass.ExampleA.C? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o Tclass.ExampleA.C? $h@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) ) (!  (=> (or |ExampleA.__default.BadGhost#canCall| (and (< 1 $FunctionContextHeight) ($IsGoodHeap $Heap))) (and (and |$let#0$canCall| (|ExampleA.C.F#canCall| |$let#0_c|)) (= ExampleA.__default.BadGhost (let ((|c#0@@0| |$let#0_c|))
(ExampleA.C.F |c#0@@0|)))))
 :qid |gitissue851dfy.13:19|
 :skolemid |481|
 :pattern ( ExampleA.__default.BadGhost ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) ) (!  (=> (or |ExampleA.__default.BadGhost#canCall| (and (< 1 $FunctionContextHeight) ($IsGoodHeap $Heap@@0))) (and (and |$let#0$canCall| (|ExampleA.C.F#canCall| |$let#0_c|)) (= ExampleA.__default.BadGhost (let ((|c#1| |$let#0_c|))
(ExampleA.C.F |c#1|)))))
 :qid |gitissue851dfy.13:19|
 :weight 3
 :skolemid |482|
 :pattern ( ExampleA.__default.BadGhost ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |ExampleA.__default.BadGhost#canCall| (< 1 $FunctionContextHeight)) (U_2_bool (Lit boolType (bool_2_U false))))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.ExampleA.C)  (and ($Is refType |c#0@@1| Tclass.ExampleA.C?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Is refType |c#0@@1| Tclass.ExampleA.C))
 :pattern ( ($Is refType |c#0@@1| Tclass.ExampleA.C?))
)))
(assert  (=> |$let#0$canCall| (and ($Is refType |$let#0_c| Tclass.ExampleA.C) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4096|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (= (Tag Tclass.ExampleA.C) Tagclass.ExampleA.C))
(assert (= (TagFamily Tclass.ExampleA.C) tytagFamily$C))
(assert (= (Tag Tclass.ExampleA.C?) Tagclass.ExampleA.C?))
(assert (= (TagFamily Tclass.ExampleA.C?) tytagFamily$C))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.ExampleA.C?)  (or (= $o@@1 null) (implements$ExampleA.C (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@1 Tclass.ExampleA.C?))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#2@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$ExampleA.__default.BadGhost)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (and ($Is refType null Tclass.ExampleA.C) (U_2_bool (Lit boolType (bool_2_U true)))) (exists ((|c#3| T@U) ) (!  (and ($Is refType |c#3| Tclass.ExampleA.C) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |gitissue851dfy.17:9|
 :skolemid |483|
)))) (=> (or (and ($Is refType null Tclass.ExampleA.C) (U_2_bool (Lit boolType (bool_2_U true)))) (exists ((|c#3@@0| T@U) ) (!  (and ($Is refType |c#3@@0| Tclass.ExampleA.C) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |gitissue851dfy.17:9|
 :skolemid |483|
))) (=> (and ($Is refType |c#2@0| Tclass.ExampleA.C) ($IsAlloc refType |c#2@0| Tclass.ExampleA.C $Heap@@1)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= |c#2@0| null)) (not true))) (=> (or (not (= |c#2@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |c#2@0|) Tclass.ExampleA.C? $Heap@@1) (=> (and (|ExampleA.C.F#canCall| |c#2@0|) |$let#0$canCall|) (=> (and (and (= ExampleA.__default.BadGhost (ExampleA.C.F |c#2@0|)) (|ExampleA.C.F#canCall| |c#2@0|)) (and ($Is boolType (bool_2_U ExampleA.__default.BadGhost) TBool) (= (ControlFlow 0 4) 3))) GeneratedUnifiedExit_correct))))))))))
(let ((anon8_Else_correct  (=> (and (not (and ($Is refType |c#2@0| Tclass.ExampleA.C) ($IsAlloc refType |c#2@0| Tclass.ExampleA.C $Heap@@1))) (= (ControlFlow 0 8) 4)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (and ($Is refType |c#2@0| Tclass.ExampleA.C) ($IsAlloc refType |c#2@0| Tclass.ExampleA.C $Heap@@1)) (= (ControlFlow 0 7) 4)) anon5_correct)))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon7_Then_correct) (=> (= (ControlFlow 0 9) 7) anon8_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
