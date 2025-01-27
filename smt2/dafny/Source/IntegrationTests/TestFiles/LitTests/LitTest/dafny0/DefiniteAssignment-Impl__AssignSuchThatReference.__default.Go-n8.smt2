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
(declare-fun Tagclass.AssignSuchThatReference.D () T@U)
(declare-fun Tagclass.AssignSuchThatReference.D? () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun Tclass.AssignSuchThatReference.D () T@U)
(declare-fun Tclass.AssignSuchThatReference.D? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun AssignSuchThatReference.D.x (T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$AssignSuchThatReference.D (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.AssignSuchThatReference.D Tagclass.AssignSuchThatReference.D? tytagFamily$D)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.AssignSuchThatReference.D $h) ($IsAlloc refType |c#0| Tclass.AssignSuchThatReference.D? $h))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType |c#0| Tclass.AssignSuchThatReference.D $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.AssignSuchThatReference.D? $h))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass.AssignSuchThatReference.D? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsAlloc refType $o Tclass.AssignSuchThatReference.D? $h@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |521|
 :pattern ( ($Unbox T x@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@1 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 Tclass.AssignSuchThatReference.D?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))) ($IsAlloc intType (int_2_U (AssignSuchThatReference.D.x $o@@0)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |991|
 :pattern ( (AssignSuchThatReference.D.x $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))
))))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.AssignSuchThatReference.D)  (and ($Is refType |c#0@@0| Tclass.AssignSuchThatReference.D?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType |c#0@@0| Tclass.AssignSuchThatReference.D))
 :pattern ( ($Is refType |c#0@@0| Tclass.AssignSuchThatReference.D?))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Unbox T@@0 ($Box T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |520|
 :pattern ( ($Box T@@0 x@@3))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass.AssignSuchThatReference.D?)) ($Is intType (int_2_U (AssignSuchThatReference.D.x $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (AssignSuchThatReference.D.x $o@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3851|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (= (Tag Tclass.AssignSuchThatReference.D) Tagclass.AssignSuchThatReference.D))
(assert (= (TagFamily Tclass.AssignSuchThatReference.D) tytagFamily$D))
(assert (= (Tag Tclass.AssignSuchThatReference.D?) Tagclass.AssignSuchThatReference.D?))
(assert (= (TagFamily Tclass.AssignSuchThatReference.D?) tytagFamily$D))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.AssignSuchThatReference.D?)  (or (= $o@@3 null) (implements$AssignSuchThatReference.D (dtype $o@@3))))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($Is refType $o@@3 Tclass.AssignSuchThatReference.D?))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |556|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |535|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun |d#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |y#0| () T@U)
(declare-fun |d#0| () T@U)
(set-info :boogie-vc-id Impl$$AssignSuchThatReference.__default.Good)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (and ($Is refType null Tclass.AssignSuchThatReference.D) (= (AssignSuchThatReference.D.x null) (AssignSuchThatReference.D.x null))) (exists ((|$as#d0#0| T@U) ) (!  (and (and ($Is refType |$as#d0#0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |$as#d0#0| Tclass.AssignSuchThatReference.D $Heap)) (= (AssignSuchThatReference.D.x |$as#d0#0|) (AssignSuchThatReference.D.x |$as#d0#0|)))
 :qid |DefiniteAssignmentdfy.346:5|
 :skolemid |986|
))))))
(let ((anon3_Else_correct  (=> (and (not (and ($Is refType |d#1@0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |d#1@0| Tclass.AssignSuchThatReference.D $Heap))) (= (ControlFlow 0 6) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and ($Is refType |d#1@0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |d#1@0| Tclass.AssignSuchThatReference.D $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |d#1@0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= |d#1@0| null)) (not true))) (=> (= (ControlFlow 0 3) 2) anon2_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> |defass#d#0| (and ($Is refType |d#0@0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |d#0@0| Tclass.AssignSuchThatReference.D $Heap)))) (and (=> (= (ControlFlow 0 7) 3) anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |y#0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |y#0| Tclass.AssignSuchThatReference.D $Heap))) (and (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass.AssignSuchThatReference.D) ($IsAlloc refType |d#0| Tclass.AssignSuchThatReference.D $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7)))) anon0_correct)))
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
