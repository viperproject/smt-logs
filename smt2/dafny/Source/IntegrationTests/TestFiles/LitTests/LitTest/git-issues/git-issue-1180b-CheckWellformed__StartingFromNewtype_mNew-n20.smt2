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
(declare-fun Tagclass.StartingFromNewtype_mNewtype.Ty () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.StartingFromNewtype_mNewtype.Ty () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun StartingFromNewtype_mNewtype.Ty.c (Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun StartingFromNewtype_mNewtype.Ty.F (Int Int) Int)
(declare-fun |StartingFromNewtype_mNewtype.Ty.F#canCall| (Int Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.StartingFromNewtype_mNewtype.Ty tytagFamily$nat tytagFamily$Ty)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |5339|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|c1#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |c1#0| Tclass.StartingFromNewtype_mNewtype.Ty $h@@0)
 :qid |unknown.0:0|
 :skolemid |5475|
 :pattern ( ($IsAlloc intType |c1#0| Tclass.StartingFromNewtype_mNewtype.Ty $h@@0))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@1 T@U) ($o Int) ) (!  (=> (and (and ($IsGoodHeap $h@@1) ($Is intType (int_2_U $o) Tclass.StartingFromNewtype_mNewtype.Ty)) ($IsAlloc intType (int_2_U $o) Tclass.StartingFromNewtype_mNewtype.Ty $h@@1)) ($IsAlloc intType (int_2_U (StartingFromNewtype_mNewtype.Ty.c $o)) Tclass._System.nat $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5484|
 :pattern ( (StartingFromNewtype_mNewtype.Ty.c $o) ($IsAlloc intType (int_2_U $o) Tclass.StartingFromNewtype_mNewtype.Ty $h@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@0 Int) ) (!  (=> ($Is intType (int_2_U $o@@0) Tclass.StartingFromNewtype_mNewtype.Ty) ($Is intType (int_2_U (StartingFromNewtype_mNewtype.Ty.c $o@@0)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |5483|
 :pattern ( (StartingFromNewtype_mNewtype.Ty.c $o@@0))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this Int) (|x#0@@0| Int) ) (!  (=> (or (|StartingFromNewtype_mNewtype.Ty.F#canCall| this |x#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (U_2_bool (Lit boolType (bool_2_U true))) (<= (LitInt 0) |x#0@@0|)) (or (not (= |x#0@@0| 7)) (not true))))) (= (StartingFromNewtype_mNewtype.Ty.F this |x#0@@0|) |x#0@@0|))
 :qid |gitissue1180bdfy.103:16|
 :skolemid |5478|
 :pattern ( (StartingFromNewtype_mNewtype.Ty.F this |x#0@@0|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5011|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5009|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5020|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |5338|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5033|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 Int) (|x#0@@2| Int) ) (!  (=> (or (|StartingFromNewtype_mNewtype.Ty.F#canCall| this@@0 |x#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (U_2_bool (Lit boolType (bool_2_U true))) (<= (LitInt 0) |x#0@@2|)) (or (not (= |x#0@@2| 7)) (not true))))) (and (= (StartingFromNewtype_mNewtype.Ty.F this@@0 |x#0@@2|) (StartingFromNewtype_mNewtype.Ty.c this@@0)) (<= (LitInt 0) (StartingFromNewtype_mNewtype.Ty.F this@@0 |x#0@@2|))))
 :qid |gitissue1180bdfy.103:16|
 :skolemid |5476|
 :pattern ( (StartingFromNewtype_mNewtype.Ty.F this@@0 |x#0@@2|))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5019|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|c0#0| T@U) ) (! (= ($Is intType |c0#0| Tclass.StartingFromNewtype_mNewtype.Ty) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |5474|
 :pattern ( ($Is intType |c0#0| Tclass.StartingFromNewtype_mNewtype.Ty))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7465|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.StartingFromNewtype_mNewtype.Ty) Tagclass.StartingFromNewtype_mNewtype.Ty))
(assert (= (TagFamily Tclass.StartingFromNewtype_mNewtype.Ty) tytagFamily$Ty))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5012|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5010|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 Int) (|x#0@@3| Int) ) (!  (=> (or (|StartingFromNewtype_mNewtype.Ty.F#canCall| (LitInt this@@1) (LitInt |x#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and (U_2_bool (Lit boolType (bool_2_U true))) (<= (LitInt 0) |x#0@@3|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@3| 7)) (not true)))))))) (= (StartingFromNewtype_mNewtype.Ty.F (LitInt this@@1) (LitInt |x#0@@3|)) (LitInt |x#0@@3|)))
 :qid |gitissue1180bdfy.103:16|
 :weight 3
 :skolemid |5479|
 :pattern ( (StartingFromNewtype_mNewtype.Ty.F (LitInt this@@1) (LitInt |x#0@@3|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@2 () Int)
(declare-fun |x#0@@4| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$StartingFromNewtype_mNewtype.Ty.F)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (= (StartingFromNewtype_mNewtype.Ty.F this@@2 |x#0@@4|) (StartingFromNewtype_mNewtype.Ty.c this@@2)))))
(let ((anon5_Else_correct  (=> (= (StartingFromNewtype_mNewtype.Ty.F this@@2 |x#0@@4|) |x#0@@4|) (=> (and ($Is intType (int_2_U (StartingFromNewtype_mNewtype.Ty.F this@@2 |x#0@@4|)) Tclass._System.nat) (= (ControlFlow 0 8) 7)) GeneratedUnifiedExit_correct))))
(let ((anon5_Then_correct  (=> (<= (LitInt 0) (StartingFromNewtype_mNewtype.Ty.F this@@2 |x#0@@4|)) (=> (and ($IsAllocBox ($Box intType (int_2_U this@@2)) Tclass.StartingFromNewtype_mNewtype.Ty $Heap) ($IsAlloc intType (int_2_U |x#0@@4|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |x#0@@4| 7)) (not true))) (=> (or (not (= |x#0@@4| 7)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (<= 0 this@@2) (= this@@2 this@@2))) (=> (or (<= 0 this@@2) (= this@@2 this@@2)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (or (<= 0 |x#0@@4|) (< this@@2 this@@2)) (= |x#0@@4| |x#0@@4|))) (=> (or (or (<= 0 |x#0@@4|) (< this@@2 this@@2)) (= |x#0@@4| |x#0@@4|)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= this@@2 this@@2) (= |x#0@@4| |x#0@@4|)) (or (< this@@2 this@@2) (and (= this@@2 this@@2) (< |x#0@@4| |x#0@@4|)))))))))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (or (not (= |x#0@@4| 7)) (not true))) (and (=> (= (ControlFlow 0 9) 2) anon5_Then_correct) (=> (= (ControlFlow 0 9) 8) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (U_2_bool (Lit boolType (bool_2_U true))) (<= (LitInt 0) |x#0@@4|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
