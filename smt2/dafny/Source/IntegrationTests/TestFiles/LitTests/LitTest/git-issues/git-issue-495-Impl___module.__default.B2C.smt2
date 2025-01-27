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
(declare-fun Tagclass._module.Gen () T@U)
(declare-fun Tagclass._module.IntB () T@U)
(declare-fun Tagclass._module.IntC () T@U)
(declare-fun |##_module.Gen.Create| () T@U)
(declare-fun tytagFamily$Gen () T@U)
(declare-fun tytagFamily$IntB () T@U)
(declare-fun tytagFamily$IntC () T@U)
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
(declare-fun Tclass._module.IntB () T@U)
(declare-fun Tclass._module.IntC () T@U)
(declare-fun |$IsA#_module.Gen| (T@U) Bool)
(declare-fun _module.Gen.Create_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Gen (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Gen.Create| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun Tclass._module.Gen_0 (T@U) T@U)
(declare-fun _module.Gen.x (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct alloc Tagclass._module.Gen Tagclass._module.IntB Tagclass._module.IntC |##_module.Gen.Create| tytagFamily$Gen tytagFamily$IntB tytagFamily$IntC)
)
(assert (forall ((|k#0| T@U) ($h T@U) ) (! ($IsAlloc intType |k#0| Tclass._module.IntB $h)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc intType |k#0| Tclass._module.IntB $h))
)))
(assert (forall ((|k#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |k#0@@0| Tclass._module.IntC $h@@0)
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc intType |k#0@@0| Tclass._module.IntC $h@@0))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Gen| d) (_module.Gen.Create_q d))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (|$IsA#_module.Gen| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Gen$X T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Gen _module.Gen$X)) (_module.Gen.Create_q d@@0))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( (_module.Gen.Create_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Gen _module.Gen$X)))
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
(assert (forall ((d@@1 T@U) ) (! (= (_module.Gen.Create_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Gen.Create|))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.Gen.Create_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Gen.Create_q d@@2) (exists ((|a#6#0#0| T@U) ) (! (= d@@2 (|#_module.Gen.Create| |a#6#0#0|))
 :qid |gitissue495dfy.32:26|
 :skolemid |534|
)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.Gen.Create_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Gen$X@@0 T@U) ) (!  (and (= (Tag (Tclass._module.Gen _module.Gen$X@@0)) Tagclass._module.Gen) (= (TagFamily (Tclass._module.Gen _module.Gen$X@@0)) tytagFamily$Gen))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Tclass._module.Gen _module.Gen$X@@0))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.IntB) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._module.IntB)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsBox bx Tclass._module.IntB))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.IntC) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._module.IntC)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@0 Tclass._module.IntC))
)))
(assert (forall ((_module.Gen$X@@1 T@U) (|a#7#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0|) (Tclass._module.Gen _module.Gen$X@@1) $h@@1) ($IsAllocBox |a#7#0#0| _module.Gen$X@@1 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0|) (Tclass._module.Gen _module.Gen$X@@1) $h@@1))
)))
(assert (forall ((|k#0@@1| T@U) ) (! (= ($Is intType |k#0@@1| Tclass._module.IntB) (= (Mod (U_2_int |k#0@@1|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Is intType |k#0@@1| Tclass._module.IntB))
)))
(assert (forall ((|k#0@@2| T@U) ) (! (= ($Is intType |k#0@@2| Tclass._module.IntC)  (and (= (Mod (U_2_int |k#0@@2|) (LitInt 2)) (LitInt 0)) (<= (LitInt 0) (U_2_int |k#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($Is intType |k#0@@2| Tclass._module.IntC))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((_module.Gen$X@@2 T@U) ) (! (= (Tclass._module.Gen_0 (Tclass._module.Gen _module.Gen$X@@2)) _module.Gen$X@@2)
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Tclass._module.Gen _module.Gen$X@@2))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Gen.Create| |a#5#0#0|)) |##_module.Gen.Create|)
 :qid |gitissue495dfy.32:26|
 :skolemid |532|
 :pattern ( (|#_module.Gen.Create| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (_module.Gen.x (|#_module.Gen.Create| |a#9#0#0|)) |a#9#0#0|)
 :qid |gitissue495dfy.32:26|
 :skolemid |540|
 :pattern ( (|#_module.Gen.Create| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Gen$X@@3 T@U) (|a#7#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0@@0|) (Tclass._module.Gen _module.Gen$X@@3)) ($IsBox |a#7#0#0@@0| _module.Gen$X@@3))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Is DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0@@0|) (Tclass._module.Gen _module.Gen$X@@3)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (< (BoxRank |a#10#0#0|) (DtRank (|#_module.Gen.Create| |a#10#0#0|)))
 :qid |gitissue495dfy.32:26|
 :skolemid |541|
 :pattern ( (|#_module.Gen.Create| |a#10#0#0|))
)))
(assert (forall ((d@@3 T@U) (_module.Gen$X@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Gen.Create_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Gen _module.Gen$X@@4) $h@@2))) ($IsAllocBox (_module.Gen.x d@@3) _module.Gen$X@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAllocBox (_module.Gen.x d@@3) _module.Gen$X@@4 $h@@2))
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
 :skolemid |556|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((_module.Gen$X@@5 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Gen _module.Gen$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Gen _module.Gen$X@@5))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Gen _module.Gen$X@@5)))
)))
(assert (= (Tag Tclass._module.IntB) Tagclass._module.IntB))
(assert (= (TagFamily Tclass._module.IntB) tytagFamily$IntB))
(assert (= (Tag Tclass._module.IntC) Tagclass._module.IntC))
(assert (= (TagFamily Tclass._module.IntC) tytagFamily$IntC))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#_module.Gen.Create| (Lit BoxType |a#8#0#0|)) (Lit DatatypeTypeType (|#_module.Gen.Create| |a#8#0#0|)))
 :qid |gitissue495dfy.32:26|
 :skolemid |539|
 :pattern ( (|#_module.Gen.Create| (Lit BoxType |a#8#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |g#0| () T@U)
(declare-fun |_mcc#0#0_0_0@0| () Int)
(declare-fun |u#0_0_0@0| () Int)
(declare-fun |m#0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |y#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.B2C)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (= |g#0| (|#_module.Gen.Create| ($Box intType (int_2_U |_mcc#0#0_0_0@0|)))) (= (Mod |_mcc#0#0_0_0@0| (LitInt 2)) (LitInt 0))) (=> (and (and (= (Mod |u#0_0_0@0| (LitInt 2)) (LitInt 0)) (<= (LitInt 0) |u#0_0_0@0|)) (= (ControlFlow 0 3) (- 0 2))) ($Is intType (int_2_U |_mcc#0#0_0_0@0|) Tclass._module.IntC)))))
(let ((anon5_Then_correct  (=> (= (U_2_int ($Unbox intType (_module.Gen.x |g#0|))) |m#0|) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (_module.Gen.Create_q |g#0|) (_module.Gen.Create_q |g#0|)) (and (=> (= (ControlFlow 0 6) 5) anon5_Then_correct) (=> (= (ControlFlow 0 6) 1) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |g#0| (Tclass._module.Gen Tclass._module.IntB)) ($IsAlloc DatatypeTypeType |g#0| (Tclass._module.Gen Tclass._module.IntB) $Heap)) (|$IsA#_module.Gen| |g#0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (and (and (and (= (Mod |y#0| (LitInt 2)) (LitInt 0)) (<= (LitInt 0) |y#0|)) (= 3 $FunctionContextHeight)) (and (=> (< |m#0| 0) (= (Mod |m#0| (LitInt 2)) (LitInt 1))) (= (ControlFlow 0 7) 6)))) anon0_correct))))
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
