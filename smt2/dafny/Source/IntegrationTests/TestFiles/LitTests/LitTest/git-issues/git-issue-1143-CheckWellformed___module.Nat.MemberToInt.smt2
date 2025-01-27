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
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Succ| () T@U)
(declare-fun tytagFamily$Nat () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Nat.Zero| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Succ_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Nat.Succ| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Nat.MemberToInt (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.Nat.MemberToInt#canCall| (T@U) Bool)
(declare-fun _module.Nat.pred (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Nat |##_module.Nat.Zero| |##_module.Nat.Succ| tytagFamily$Nat)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
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
(assert (forall ((d T@U) ) (! (= (_module.Nat.Zero_q d) (= (DatatypeCtorId d) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Succ_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Succ|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Nat.Succ_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Nat.Zero_q d@@1) (= d@@1 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.Nat.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Nat.Succ_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.Nat.Succ| |a#5#0#0|))
 :qid |gitissue1143dfy.4:28|
 :skolemid |549|
)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_module.Nat.Succ_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Nat))
 :qid |gitissue1143dfy.4:28|
 :skolemid |551|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (this T@U) ) (!  (=> (or (|_module.Nat.MemberToInt#canCall| (Lit DatatypeTypeType this)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this Tclass._module.Nat))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType this)))))) (let ((|p#3| (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType this)))))
(|_module.Nat.MemberToInt#canCall| |p#3|))) (= (_module.Nat.MemberToInt ($LS $ly) (Lit DatatypeTypeType this)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType this)) 0 (let ((|p#2| (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType this)))))
(LitInt (+ 1 (_module.Nat.MemberToInt ($LS $ly) |p#2|))))))))
 :qid |gitissue1143dfy.6:12|
 :weight 3
 :skolemid |567|
 :pattern ( (_module.Nat.MemberToInt ($LS $ly) (Lit DatatypeTypeType this)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@3) (_module.Nat.Succ_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.Nat.Succ_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Nat))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Succ| |a#4#0#0|)) |##_module.Nat.Succ|)
 :qid |gitissue1143dfy.4:28|
 :skolemid |547|
 :pattern ( (|#_module.Nat.Succ| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Nat.pred (|#_module.Nat.Succ| |a#8#0#0|)) |a#8#0#0|)
 :qid |gitissue1143dfy.4:28|
 :skolemid |554|
 :pattern ( (|#_module.Nat.Succ| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($ly@@0 T@U) (this@@0 T@U) ) (! (= (_module.Nat.MemberToInt ($LS $ly@@0) this@@0) (_module.Nat.MemberToInt $ly@@0 this@@0))
 :qid |gitissue1143dfy.6:12|
 :skolemid |562|
 :pattern ( (_module.Nat.MemberToInt ($LS $ly@@0) this@@0))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Nat.Succ| |a#9#0#0|)))
 :qid |gitissue1143dfy.4:28|
 :skolemid |555|
 :pattern ( (|#_module.Nat.Succ| |a#9#0#0|))
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
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |569|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Nat.Succ_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h@@0))) ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@5) Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@5) Tclass._module.Nat $h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Nat.MemberToInt#canCall| this@@1) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass._module.Nat))) (and (=> (not (_module.Nat.Zero_q this@@1)) (let ((|p#1| (_module.Nat.pred this@@1)))
(|_module.Nat.MemberToInt#canCall| |p#1|))) (= (_module.Nat.MemberToInt ($LS $ly@@1) this@@1) (ite (_module.Nat.Zero_q this@@1) 0 (let ((|p#0| (_module.Nat.pred this@@1)))
(+ 1 (_module.Nat.MemberToInt $ly@@1 |p#0|)))))))
 :qid |gitissue1143dfy.6:12|
 :skolemid |566|
 :pattern ( (_module.Nat.MemberToInt ($LS $ly@@1) this@@1))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Succ| |a#7#0#0|)))
 :qid |gitissue1143dfy.4:28|
 :skolemid |553|
 :pattern ( (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)))
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
(declare-fun this@@2 () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |p#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Nat.MemberToInt)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= this@@2 (|#_module.Nat.Succ| |_mcc#0#0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Nat) (= |let#0#0#0| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Nat) (= |p#Z#0@0| |let#0#0#0|)) (and ($IsAllocBox ($Box DatatypeTypeType |p#Z#0@0|) Tclass._module.Nat $Heap) (= (ControlFlow 0 4) (- 0 3)))) (< (DtRank |p#Z#0@0|) (DtRank this@@2)))))))
(let ((anon9_Else_correct  (=> (or (not (= this@@2 |#_module.Nat.Zero|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType this@@2 Tclass._module.Nat) ($IsAlloc DatatypeTypeType this@@2 Tclass._module.Nat $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
