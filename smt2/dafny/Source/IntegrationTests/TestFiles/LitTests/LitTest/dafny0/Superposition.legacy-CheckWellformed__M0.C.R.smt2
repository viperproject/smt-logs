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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M0.C? () T@U)
(declare-fun Tagclass.M0.C () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.C.R (T@U Int) Bool)
(declare-fun |M0.C.R#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M0.C () T@U)
(declare-fun Tclass.M0.C? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.M0.C? Tagclass.M0.C tytagFamily$C)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) (|x#0| Int) ) (!  (=> (or (|M0.C.R#canCall| this |x#0|) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.M0.C)))) (=> (M0.C.R this |x#0|) (< |x#0| 60)))
 :qid |Superpositionlegacydfy.26:21|
 :skolemid |491|
 :pattern ( (M0.C.R this |x#0|))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M0.C?)  (or (= $o null) (= (dtype $o) Tclass.M0.C?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o Tclass.M0.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M0.C $h) ($IsAlloc refType |c#0| Tclass.M0.C? $h))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.C? $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@0| Int) ) (!  (=> (or (|M0.C.R#canCall| this@@0 |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.M0.C)))) (= (M0.C.R this@@0 |x#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Superpositionlegacydfy.26:21|
 :skolemid |493|
 :pattern ( (M0.C.R this@@0 |x#0@@0|))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.M0.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.M0.C? $h@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) (|x#0@@1| Int) ) (!  (=> (or (|M0.C.R#canCall| this@@1 (LitInt |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.M0.C)))) (= (M0.C.R this@@1 (LitInt |x#0@@1|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Superpositionlegacydfy.26:21|
 :weight 3
 :skolemid |494|
 :pattern ( (M0.C.R this@@1 (LitInt |x#0@@1|)))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.M0.C)  (and ($Is refType |c#0@@0| Tclass.M0.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Is refType |c#0@@0| Tclass.M0.C))
 :pattern ( ($Is refType |c#0@@0| Tclass.M0.C?))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) (|x#0@@2| Int) ) (!  (=> (or (|M0.C.R#canCall| (Lit refType this@@2) (LitInt |x#0@@2|)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.M0.C)))) (= (M0.C.R (Lit refType this@@2) (LitInt |x#0@@2|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Superpositionlegacydfy.26:21|
 :weight 3
 :skolemid |495|
 :pattern ( (M0.C.R (Lit refType this@@2) (LitInt |x#0@@2|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |996|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (= (Tag Tclass.M0.C?) Tagclass.M0.C?))
(assert (= (TagFamily Tclass.M0.C?) tytagFamily$C))
(assert (= (Tag Tclass.M0.C) Tagclass.M0.C))
(assert (= (TagFamily Tclass.M0.C) tytagFamily$C))
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
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is boolType v@@3 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@3 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun |x#0@@3| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.C.R)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (=> (M0.C.R this@@3 |x#0@@3|) (< |x#0@@3| 60)))))
(let ((anon8_Else_correct  (=> (= (M0.C.R this@@3 |x#0@@3|) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($Is boolType (bool_2_U (M0.C.R this@@3 |x#0@@3|)) TBool) (= (ControlFlow 0 8) 7)) GeneratedUnifiedExit_correct))))
(let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (=> (M0.C.R this@@3 |x#0@@3|) (< |x#0@@3| 60)) (= (ControlFlow 0 5) 1)) anon5_correct)))
(let ((anon9_Then_correct  (=> (and ($IsAllocBox ($Box refType this@@3) Tclass.M0.C? $Heap) ($IsAlloc intType (int_2_U |x#0@@3|) TInt $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (<= 0 |x#0@@3|) (= |x#0@@3| |x#0@@3|))) (=> (or (<= 0 |x#0@@3|) (= |x#0@@3| |x#0@@3|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and (= this@@3 this@@3) (= |x#0@@3| |x#0@@3|)) (< |x#0@@3| |x#0@@3|))) (=> (or (and (= this@@3 this@@3) (= |x#0@@3| |x#0@@3|)) (< |x#0@@3| |x#0@@3|)) (=> (and (and (or (and (= this@@3 this@@3) (= |x#0@@3| |x#0@@3|)) (|M0.C.R#canCall| this@@3 |x#0@@3|)) (M0.C.R this@@3 |x#0@@3|)) (and (< |x#0@@3| 60) (= (ControlFlow 0 2) 1))) anon5_correct))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 8) anon8_Else_correct) (=> (= (ControlFlow 0 9) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 5) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.M0.C) ($IsAlloc refType this@@3 Tclass.M0.C $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
