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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Succ| () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ThProperty (T@U Int T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ThProperty#canCall| (Int T@U Int) Bool)
(declare-fun _module.Nat.tail (T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._System.nat Tagclass._module.Nat |##_module.Nat.Zero| |##_module.Nat.Succ| tytagFamily$nat tytagFamily$Nat)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
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
 :skolemid |586|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Succ_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Succ|))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.Nat.Succ_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Nat.Zero_q d@@1) (= d@@1 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.Nat.Zero_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Nat.Succ_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.Nat.Succ| |a#5#0#0|))
 :qid |ComputationsNegdfy.14:28|
 :skolemid |590|
)))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.Nat.Succ_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|step#0| Int) (|t#0| T@U) (|r#0| Int) ) (!  (=> (or (|_module.__default.ThProperty#canCall| |step#0| |t#0| |r#0|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |step#0|) ($Is DatatypeTypeType |t#0| Tclass._module.Nat)) (<= (LitInt 0) |r#0|)))) (and (=> (not (_module.Nat.Zero_q |t#0|)) (let ((|o#1| (_module.Nat.tail |t#0|)))
 (=> (> |step#0| 0) (forall ((|ro#1| Int) (|ss#1| Int) ) (!  (=> (and (<= (LitInt 0) |ro#1|) (<= (LitInt 0) |ss#1|)) (=> (= |ss#1| (- |step#0| 1)) (|_module.__default.ThProperty#canCall| |ss#1| |o#1| |ro#1|)))
 :qid |ComputationsNegdfy.19:36|
 :skolemid |548|
 :pattern ( (_module.__default.ThProperty $ly |ss#1| |o#1| |ro#1|))
))))) (= (_module.__default.ThProperty ($LS $ly) |step#0| |t#0| |r#0|) (ite (_module.Nat.Zero_q |t#0|) true (let ((|o#0| (_module.Nat.tail |t#0|)))
 (and (> |step#0| 0) (exists ((|ro#0| Int) (|ss#0| Int) ) (!  (and (and (<= (LitInt 0) |ro#0|) (<= (LitInt 0) |ss#0|)) (and (= |ss#0| (- |step#0| 1)) (_module.__default.ThProperty $ly |ss#0| |o#0| |ro#0|)))
 :qid |ComputationsNegdfy.19:36|
 :skolemid |547|
 :pattern ( (_module.__default.ThProperty $ly |ss#0| |o#0| |ro#0|))
))))))))
 :qid |ComputationsNegdfy.15:17|
 :skolemid |549|
 :pattern ( (_module.__default.ThProperty ($LS $ly) |step#0| |t#0| |r#0|))
))))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Nat))
 :qid |ComputationsNegdfy.14:28|
 :skolemid |592|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Succ| |a#6#0#0|) Tclass._module.Nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|step#0@@0| Int) (|t#0@@0| T@U) (|r#0@@0| Int) ) (!  (=> (or (|_module.__default.ThProperty#canCall| (LitInt |step#0@@0|) (Lit DatatypeTypeType |t#0@@0|) (LitInt |r#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |step#0@@0|) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Nat)) (<= (LitInt 0) |r#0@@0|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Nat.Zero_q (Lit DatatypeTypeType |t#0@@0|)))))) (let ((|o#3| (Lit DatatypeTypeType (_module.Nat.tail (Lit DatatypeTypeType |t#0@@0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (> |step#0@@0| 0)))) (forall ((|ro#3| Int) (|ss#3| Int) ) (!  (=> (and (<= (LitInt 0) |ro#3|) (<= (LitInt 0) |ss#3|)) (=> (= |ss#3| (LitInt (- |step#0@@0| 1))) (|_module.__default.ThProperty#canCall| |ss#3| |o#3| |ro#3|)))
 :qid |ComputationsNegdfy.19:36|
 :skolemid |551|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@0) |ss#3| |o#3| |ro#3|))
))))) (= (_module.__default.ThProperty ($LS $ly@@0) (LitInt |step#0@@0|) (Lit DatatypeTypeType |t#0@@0|) (LitInt |r#0@@0|)) (ite (_module.Nat.Zero_q (Lit DatatypeTypeType |t#0@@0|)) true (let ((|o#2| (Lit DatatypeTypeType (_module.Nat.tail (Lit DatatypeTypeType |t#0@@0|)))))
 (and (> |step#0@@0| 0) (exists ((|ro#2| Int) (|ss#2| Int) ) (!  (and (and (<= (LitInt 0) |ro#2|) (<= (LitInt 0) |ss#2|)) (and (= |ss#2| (LitInt (- |step#0@@0| 1))) (_module.__default.ThProperty ($LS $ly@@0) |ss#2| |o#2| |ro#2|)))
 :qid |ComputationsNegdfy.19:36|
 :skolemid |550|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@0) |ss#2| |o#2| |ro#2|))
))))))))
 :qid |ComputationsNegdfy.15:17|
 :weight 3
 :skolemid |552|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@0) (LitInt |step#0@@0|) (Lit DatatypeTypeType |t#0@@0|) (LitInt |r#0@@0|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@3) (_module.Nat.Succ_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.Nat.Succ_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Nat))
)))
(assert (forall (($ly@@1 T@U) (|step#0@@1| Int) (|t#0@@1| T@U) (|r#0@@1| Int) ) (! (= (_module.__default.ThProperty ($LS $ly@@1) |step#0@@1| |t#0@@1| |r#0@@1|) (_module.__default.ThProperty $ly@@1 |step#0@@1| |t#0@@1| |r#0@@1|))
 :qid |ComputationsNegdfy.15:17|
 :skolemid |542|
 :pattern ( (_module.__default.ThProperty ($LS $ly@@1) |step#0@@1| |t#0@@1| |r#0@@1|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Succ| |a#4#0#0|)) |##_module.Nat.Succ|)
 :qid |ComputationsNegdfy.14:28|
 :skolemid |588|
 :pattern ( (|#_module.Nat.Succ| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Nat.tail (|#_module.Nat.Succ| |a#8#0#0|)) |a#8#0#0|)
 :qid |ComputationsNegdfy.14:28|
 :skolemid |595|
 :pattern ( (|#_module.Nat.Succ| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Nat.Succ| |a#9#0#0|)))
 :qid |ComputationsNegdfy.14:28|
 :skolemid |596|
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
 :skolemid |603|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Nat.Succ_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h@@1))) ($IsAlloc DatatypeTypeType (_module.Nat.tail d@@5) Tclass._module.Nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat.tail d@@5) Tclass._module.Nat $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Succ| |a#7#0#0|)))
 :qid |ComputationsNegdfy.14:28|
 :skolemid |594|
 :pattern ( (|#_module.Nat.Succ| (Lit DatatypeTypeType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc boolType v TBool h)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v TBool h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is boolType v@@0 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@0 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ss#4@0| () Int)
(declare-fun |step#0@@2| () Int)
(declare-fun $Heap () T@U)
(declare-fun |o#Z#0@0| () T@U)
(declare-fun |ro#4@0| () Int)
(declare-fun |r#0@@2| () Int)
(declare-fun |t#0@@2| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.ThProperty)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon10_correct true))
(let ((anon18_Else_correct  (=> (and (or (not (= |ss#4@0| (- |step#0@@2| 1))) (not true)) (= (ControlFlow 0 11) 4)) anon10_correct)))
(let ((anon18_Then_correct  (=> (and (and (= |ss#4@0| (- |step#0@@2| 1)) ($IsAlloc intType (int_2_U |ss#4@0|) Tclass._System.nat $Heap)) (and ($IsAlloc DatatypeTypeType |o#Z#0@0| Tclass._module.Nat $Heap) ($IsAlloc intType (int_2_U |ro#4@0|) Tclass._System.nat $Heap))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (<= 0 |step#0@@2|) (= |ss#4@0| |step#0@@2|))) (=> (or (<= 0 |step#0@@2|) (= |ss#4@0| |step#0@@2|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (or (or (<= 0 |r#0@@2|) (< |ss#4@0| |step#0@@2|)) (< (DtRank |o#Z#0@0|) (DtRank |t#0@@2|))) (= |ro#4@0| |r#0@@2|))) (=> (or (or (or (<= 0 |r#0@@2|) (< |ss#4@0| |step#0@@2|)) (< (DtRank |o#Z#0@0|) (DtRank |t#0@@2|))) (= |ro#4@0| |r#0@@2|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< |ss#4@0| |step#0@@2|) (and (= |ss#4@0| |step#0@@2|) (or (< (DtRank |o#Z#0@0|) (DtRank |t#0@@2|)) (and (= (DtRank |o#Z#0@0|) (DtRank |t#0@@2|)) (< |ro#4@0| |r#0@@2|)))))) (=> (or (< |ss#4@0| |step#0@@2|) (and (= |ss#4@0| |step#0@@2|) (or (< (DtRank |o#Z#0@0|) (DtRank |t#0@@2|)) (and (= (DtRank |o#Z#0@0|) (DtRank |t#0@@2|)) (< |ro#4@0| |r#0@@2|))))) (=> (and (|_module.__default.ThProperty#canCall| |ss#4@0| |o#Z#0@0| |ro#4@0|) (= (ControlFlow 0 7) 4)) anon10_correct))))))))))
(let ((anon17_Then_correct  (=> (and (<= (LitInt 0) |ro#4@0|) (<= (LitInt 0) |ss#4@0|)) (and (=> (= (ControlFlow 0 12) 7) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (and (<= (LitInt 0) |ro#4@0|) (<= (LitInt 0) |ss#4@0|))) (= (ControlFlow 0 6) 4)) anon10_correct)))
(let ((anon16_Then_correct  (=> (> |step#0@@2| 0) (and (=> (= (ControlFlow 0 13) 12) anon17_Then_correct) (=> (= (ControlFlow 0 13) 6) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (>= 0 |step#0@@2|) (= (ControlFlow 0 5) 4)) anon10_correct)))
(let ((anon15_Then_correct  (=> (= |t#0@@2| (|#_module.Nat.Succ| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Nat) (= |let#0#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Nat) (= |o#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 14) 13) anon16_Then_correct) (=> (= (ControlFlow 0 14) 5) anon16_Else_correct))))))
(let ((anon15_Else_correct true))
(let ((anon14_Else_correct  (=> (or (not (= |t#0@@2| |#_module.Nat.Zero|)) (not true)) (and (=> (= (ControlFlow 0 15) 14) anon15_Then_correct) (=> (= (ControlFlow 0 15) 3) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon13_Then_correct) (=> (= (ControlFlow 0 16) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |step#0@@2|)) (and (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.Nat) (<= (LitInt 0) |r#0@@2|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 17) 16)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
