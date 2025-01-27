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
(declare-fun Tagclass.M.Tr () T@U)
(declare-fun Tagclass.M.Tr? () T@U)
(declare-fun Tagclass._module.Cl? () T@U)
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass.M.Top? () T@U)
(declare-fun Tagclass.M.Top () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$Top () T@U)
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
(declare-fun implements$M.Tr (T@U) Bool)
(declare-fun Tclass._module.Cl? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun Tclass.M.Top () T@U)
(declare-fun Tclass.M.Top? () T@U)
(declare-fun Tclass.M.Tr () T@U)
(declare-fun Tclass.M.Tr? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Cl.ActuallyTrue (T@U) Bool)
(declare-fun |_module.Cl.ActuallyTrue#canCall| (T@U) Bool)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$M.Top (T@U) Bool)
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
(assert (distinct alloc Tagclass.M.Tr Tagclass.M.Tr? Tagclass._module.Cl? Tagclass._module.Cl Tagclass.M.Top? Tagclass.M.Top tytagFamily$Tr tytagFamily$Cl tytagFamily$Top)
)
(assert (implements$M.Tr Tclass._module.Cl?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cl?)  (or (= $o null) (= (dtype $o) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |2236|
 :pattern ( ($Is refType $o Tclass._module.Cl?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Cl $h) ($IsAlloc refType |c#0| Tclass._module.Cl? $h))
 :qid |unknown.0:0|
 :skolemid |2282|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cl $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cl? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M.Top $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M.Top? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2291|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M.Top $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M.Top? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M.Tr $h@@1) ($IsAlloc refType |c#0@@1| Tclass.M.Tr? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2307|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M.Tr $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M.Tr? $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.Cl.ActuallyTrue#canCall| this) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Cl)))) (_module.Cl.ActuallyTrue this))
 :qid |gitissue2500dfy.27:13|
 :skolemid |2254|
 :pattern ( (_module.Cl.ActuallyTrue this))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Cl? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2237|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Cl? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M.Top? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2286|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M.Top? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M.Tr? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2293|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M.Tr? $h@@4))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1716|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1727|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Cl)  (and ($Is refType |c#0@@2| Tclass._module.Cl?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2281|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M.Top)  (and ($Is refType |c#0@@3| Tclass.M.Top?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2290|
 :pattern ( ($Is refType |c#0@@3| Tclass.M.Top))
 :pattern ( ($Is refType |c#0@@3| Tclass.M.Top?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M.Tr)  (and ($Is refType |c#0@@4| Tclass.M.Tr?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2306|
 :pattern ( ($Is refType |c#0@@4| Tclass.M.Tr))
 :pattern ( ($Is refType |c#0@@4| Tclass.M.Tr?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.M.Tr? $heap) ($IsAlloc refType $o@@3 Tclass.M.Top? $heap))
 :qid |unknown.0:0|
 :skolemid |2379|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M.Tr? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.Cl? $heap@@0) ($IsAlloc refType $o@@4 Tclass.M.Tr? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2391|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Cl? $heap@@0))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1726|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2393|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.Cl.ActuallyTrue#canCall| this@@0) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Cl)))) (= (_module.Cl.ActuallyTrue this@@0) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue2500dfy.27:13|
 :skolemid |2256|
 :pattern ( (_module.Cl.ActuallyTrue this@@0))
))))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass.M.Tr?) ($Is refType $o@@6 Tclass.M.Top?))
 :qid |unknown.0:0|
 :skolemid |2378|
 :pattern ( ($Is refType $o@@6 Tclass.M.Tr?))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.Cl?) ($Is refType $o@@7 Tclass.M.Tr?))
 :qid |unknown.0:0|
 :skolemid |2390|
 :pattern ( ($Is refType $o@@7 Tclass._module.Cl?))
)))
(assert (= (Tag Tclass.M.Tr) Tagclass.M.Tr))
(assert (= (TagFamily Tclass.M.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass.M.Tr?) Tagclass.M.Tr?))
(assert (= (TagFamily Tclass.M.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Cl?) Tagclass._module.Cl?))
(assert (= (TagFamily Tclass._module.Cl?) tytagFamily$Cl))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass.M.Top?) Tagclass.M.Top?))
(assert (= (TagFamily Tclass.M.Top?) tytagFamily$Top))
(assert (= (Tag Tclass.M.Top) Tagclass.M.Top))
(assert (= (TagFamily Tclass.M.Top) tytagFamily$Top))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass.M.Top?)  (or (= $o@@8 null) (implements$M.Top (dtype $o@@8))))
 :qid |unknown.0:0|
 :skolemid |2285|
 :pattern ( ($Is refType $o@@8 Tclass.M.Top?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass.M.Tr?)  (or (= $o@@9 null) (implements$M.Tr (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |2292|
 :pattern ( ($Is refType $o@@9 Tclass.M.Tr?))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1717|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.Cl.ActuallyTrue#canCall| (Lit refType this@@1)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Cl)))) (= (_module.Cl.ActuallyTrue (Lit refType this@@1)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue2500dfy.27:13|
 :weight 3
 :skolemid |2257|
 :pattern ( (_module.Cl.ActuallyTrue (Lit refType this@@1)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Cl_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$_module.Cl.ActuallyTrue_k)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> (= Cl_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@10 T@U) ($f@@0 T@U) ) (! true
 :qid |gitissue2500dfy.30:13|
 :skolemid |2265|
))) (=> (forall (($o@@11 T@U) ($f@@1 T@U) ) (! true
 :qid |gitissue2500dfy.30:13|
 :skolemid |2265|
)) (=> (and (and (_module.Cl.ActuallyTrue this@@2) (= (ControlFlow 0 2) (- 0 1))) (|_module.Cl.ActuallyTrue#canCall| this@@2)) (or (_module.Cl.ActuallyTrue this@@2) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Cl) ($IsAlloc refType this@@2 Tclass._module.Cl $Heap))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct))))
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
