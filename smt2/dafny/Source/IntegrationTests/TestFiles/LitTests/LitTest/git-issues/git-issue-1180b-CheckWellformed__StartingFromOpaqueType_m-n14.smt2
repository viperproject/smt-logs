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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.StartingFromOpaqueType_mClass.Ty () T@U)
(declare-fun Tagclass.StartingFromOpaqueType_mClass.Ty? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Ty () T@U)
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
(declare-fun StartingFromOpaqueType_mClass.Ty.c (T@U) Int)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.StartingFromOpaqueType_mClass.Ty? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.StartingFromOpaqueType_mClass.Ty () T@U)
(declare-fun StartingFromOpaqueType_mClass.Ty.F (T@U Int) Int)
(declare-fun |StartingFromOpaqueType_mClass.Ty.F#canCall| (T@U Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct alloc Tagclass._System.nat Tagclass.StartingFromOpaqueType_mClass.Ty Tagclass.StartingFromOpaqueType_mClass.Ty? tytagFamily$nat tytagFamily$Ty)
)
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.StartingFromOpaqueType_mClass.Ty?)) ($Is intType (int_2_U (StartingFromOpaqueType_mClass.Ty.c $o)) Tclass._System.nat))
 :pattern ( (StartingFromOpaqueType_mClass.Ty.c $o))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (= (Ctor (MapType0Type arg0@@2 arg1)) 6))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.StartingFromOpaqueType_mClass.Ty?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAlloc intType (int_2_U (StartingFromOpaqueType_mClass.Ty.c $o@@0)) Tclass._System.nat $h@@0))
 :pattern ( (StartingFromOpaqueType_mClass.Ty.c $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))
))))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.StartingFromOpaqueType_mClass.Ty?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.StartingFromOpaqueType_mClass.Ty?)))
 :pattern ( ($Is refType $o@@1 Tclass.StartingFromOpaqueType_mClass.Ty?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.StartingFromOpaqueType_mClass.Ty $h@@1) ($IsAlloc refType |c#0| Tclass.StartingFromOpaqueType_mClass.Ty? $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.StartingFromOpaqueType_mClass.Ty $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.StartingFromOpaqueType_mClass.Ty? $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|x#0@@0| Int) ) (!  (=> (or (|StartingFromOpaqueType_mClass.Ty.F#canCall| this |x#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.StartingFromOpaqueType_mClass.Ty)) (<= (LitInt 0) |x#0@@0|)) (or (not (= |x#0@@0| 7)) (not true))))) (= (StartingFromOpaqueType_mClass.Ty.F this |x#0@@0|) |x#0@@0|))
 :pattern ( (StartingFromOpaqueType_mClass.Ty.F this |x#0@@0|))
))))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.StartingFromOpaqueType_mClass.Ty? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :pattern ( ($IsAlloc refType $o@@2 Tclass.StartingFromOpaqueType_mClass.Ty? $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@1| Int) ) (!  (=> (or (|StartingFromOpaqueType_mClass.Ty.F#canCall| this@@0 |x#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.StartingFromOpaqueType_mClass.Ty)) (<= (LitInt 0) |x#0@@1|)) (or (not (= |x#0@@1| 7)) (not true))))) (and (= (StartingFromOpaqueType_mClass.Ty.F this@@0 |x#0@@1|) (StartingFromOpaqueType_mClass.Ty.c this@@0)) (<= (LitInt 0) (StartingFromOpaqueType_mClass.Ty.F this@@0 |x#0@@1|))))
 :pattern ( (StartingFromOpaqueType_mClass.Ty.F this@@0 |x#0@@1|))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|x#0@@3| Int) ) (!  (=> (or (|StartingFromOpaqueType_mClass.Ty.F#canCall| this@@1 (LitInt |x#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.StartingFromOpaqueType_mClass.Ty)) (<= (LitInt 0) |x#0@@3|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@3| 7)) (not true)))))))) (= (StartingFromOpaqueType_mClass.Ty.F this@@1 (LitInt |x#0@@3|)) (LitInt |x#0@@3|)))
 :weight 3
 :pattern ( (StartingFromOpaqueType_mClass.Ty.F this@@1 (LitInt |x#0@@3|)))
))))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.StartingFromOpaqueType_mClass.Ty)  (and ($Is refType |c#0@@0| Tclass.StartingFromOpaqueType_mClass.Ty?) (or (not (= |c#0@@0| null)) (not true))))
 :pattern ( ($Is refType |c#0@@0| Tclass.StartingFromOpaqueType_mClass.Ty))
 :pattern ( ($Is refType |c#0@@0| Tclass.StartingFromOpaqueType_mClass.Ty?))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.StartingFromOpaqueType_mClass.Ty) Tagclass.StartingFromOpaqueType_mClass.Ty))
(assert (= (TagFamily Tclass.StartingFromOpaqueType_mClass.Ty) tytagFamily$Ty))
(assert (= (Tag Tclass.StartingFromOpaqueType_mClass.Ty?) Tagclass.StartingFromOpaqueType_mClass.Ty?))
(assert (= (TagFamily Tclass.StartingFromOpaqueType_mClass.Ty?) tytagFamily$Ty))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|x#0@@4| Int) ) (!  (=> (or (|StartingFromOpaqueType_mClass.Ty.F#canCall| (Lit refType this@@2) (LitInt |x#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.StartingFromOpaqueType_mClass.Ty)) (<= (LitInt 0) |x#0@@4|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@4| 7)) (not true)))))))) (= (StartingFromOpaqueType_mClass.Ty.F (Lit refType this@@2) (LitInt |x#0@@4|)) (LitInt |x#0@@4|)))
 :weight 3
 :pattern ( (StartingFromOpaqueType_mClass.Ty.F (Lit refType this@@2) (LitInt |x#0@@4|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun |x#0@@5| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= (StartingFromOpaqueType_mClass.Ty.F this@@3 |x#0@@5|) (StartingFromOpaqueType_mClass.Ty.c this@@3)))))
(let ((anon5_Else_correct  (=> (= (StartingFromOpaqueType_mClass.Ty.F this@@3 |x#0@@5|) |x#0@@5|) (=> (and ($Is intType (int_2_U (StartingFromOpaqueType_mClass.Ty.F this@@3 |x#0@@5|)) Tclass._System.nat) (= (ControlFlow 0 7) 6)) GeneratedUnifiedExit_correct))))
(let ((anon5_Then_correct  (=> (<= (LitInt 0) (StartingFromOpaqueType_mClass.Ty.F this@@3 |x#0@@5|)) (=> (and ($IsAllocBox ($Box refType this@@3) Tclass.StartingFromOpaqueType_mClass.Ty? $Heap) ($IsAlloc intType (int_2_U |x#0@@5|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |x#0@@5| 7)) (not true))) (=> (or (not (= |x#0@@5| 7)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|))) (=> (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= this@@3 this@@3) (= |x#0@@5| |x#0@@5|)) (< |x#0@@5| |x#0@@5|)))))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (or (not (= |x#0@@5| 7)) (not true))) (and (=> (= (ControlFlow 0 8) 2) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.StartingFromOpaqueType_mClass.Ty) ($IsAlloc refType this@@3 Tclass.StartingFromOpaqueType_mClass.Ty $Heap))) (<= (LitInt 0) |x#0@@5|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
