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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Foo () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun Tagclass._module.Result () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun |##_module.C.C1| () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun |##_module.C.C2| () T@U)
(declare-fun Tagclass._module.Foo? () T@U)
(declare-fun tytagFamily$Foo () T@U)
(declare-fun tytagFamily$Result () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.C.C1| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Foo () T@U)
(declare-fun Tclass._module.Foo? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun _module.C.C1_q (T@U) Bool)
(declare-fun _module.C.C2_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun |#_module.C.C2| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$IsA#_module.Result| (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun _module.Result.error (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun _module.C.x (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun implements$_module.Foo (T@U) Bool)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._module.Foo |##_module.Result.Success| Tagclass._module.Result |##_module.Result.Failure| |##_module.C.C1| Tagclass._module.C |##_module.C.C2| Tagclass._module.Foo? tytagFamily$Foo tytagFamily$Result tytagFamily$C)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |gitissue283dfy.5:13|
 :skolemid |519|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.C.C1|) |##_module.C.C1|))
(assert (= (Ctor refType) 4))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Foo $h) ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
)))
(assert ($Is DatatypeTypeType |#_module.C.C1| Tclass._module.C))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.Foo? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsAlloc refType $o Tclass._module.Foo? $h@@0))
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
(assert (forall ((d T@U) ) (! (= (_module.Result.Success_q d) (= (DatatypeCtorId d) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Result.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (_module.Result.Failure_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.C.C1_q d@@1) (= (DatatypeCtorId d@@1) |##_module.C.C1|))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.C.C1_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.C.C2_q d@@2) (= (DatatypeCtorId d@@2) |##_module.C.C2|))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (_module.C.C2_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.C.C1_q d@@3) (= d@@3 |#_module.C.C1|))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.C.C1_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Result.Success_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#_module.Result.Success| |a#1#0#0|))
 :qid |gitissue283dfy.4:13|
 :skolemid |498|
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.Result.Success_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Result.Failure_q d@@5) (exists ((|a#7#0#0| T@U) ) (! (= d@@5 (|#_module.Result.Failure| |a#7#0#0|))
 :qid |gitissue283dfy.5:13|
 :skolemid |511|
)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.Result.Failure_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.C.C2_q d@@6) (exists ((|a#18#0#0| Int) ) (! (= d@@6 (|#_module.C.C2| |a#18#0#0|))
 :qid |gitissue283dfy.7:22|
 :skolemid |531|
)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.C.C2_q d@@6))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Result$T T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._module.Result _module.Result$T))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.Foo) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.Foo)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx Tclass._module.Foo))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.C) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@0 Tclass._module.C))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Foo?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Foo?)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsBox bx@@1 Tclass._module.Foo?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Foo)  (and ($Is refType |c#0@@0| Tclass._module.Foo?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo?))
)))
(assert (forall ((_module.Result$T@@0 T@U) (|a#2#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@0) $h@@1) ($IsAllocBox |a#2#0#0| _module.Result$T@@0 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@0) $h@@1))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Result| d@@7) (or (_module.Result.Success_q d@@7) (_module.Result.Failure_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (|$IsA#_module.Result| d@@7))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Failure_q d@@8) (exists ((_module.Result$T@@1 T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@1) $h@@2)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@1) $h@@2))
)))) ($IsAlloc SeqType (_module.Result.error d@@8) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAlloc SeqType (_module.Result.error d@@8) (TSeq TChar) $h@@2))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#8#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@3)))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3))
)))
(assert (forall ((_module.Result$T@@3 T@U) (d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 (Tclass._module.Result _module.Result$T@@3)) (or (_module.Result.Success_q d@@9) (_module.Result.Failure_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (_module.Result.Failure_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.Result _module.Result$T@@3)))
 :pattern ( (_module.Result.Success_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.Result _module.Result$T@@3)))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.C) (or (_module.C.C1_q d@@10) (_module.C.C2_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (_module.C.C2_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.C))
 :pattern ( (_module.C.C1_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.C))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0|)) |##_module.Result.Success|)
 :qid |gitissue283dfy.4:13|
 :skolemid |496|
 :pattern ( (|#_module.Result.Success| |a#0#0#0|))
)))
(assert (forall ((_module.Result$T@@4 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@4)) _module.Result$T@@4)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.Result _module.Result$T@@4))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue283dfy.4:13|
 :skolemid |507|
 :pattern ( (|#_module.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0|)) |##_module.Result.Failure|)
 :qid |gitissue283dfy.5:13|
 :skolemid |509|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.error (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue283dfy.5:13|
 :skolemid |518|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((|a#17#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.C.C2| |a#17#0#0|)) |##_module.C.C2|)
 :qid |gitissue283dfy.7:22|
 :skolemid |529|
 :pattern ( (|#_module.C.C2| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| Int) ) (! (= (_module.C.x (|#_module.C.C2| |a#21#0#0|)) |a#21#0#0|)
 :qid |gitissue283dfy.7:22|
 :skolemid |536|
 :pattern ( (|#_module.C.C2| |a#21#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Result$T@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@5)) ($IsBox |a#2#0#0@@0| _module.Result$T@@5))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@5)))
)))
(assert (forall ((|a#19#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.C.C2| |a#19#0#0|) Tclass._module.C) ($Is intType (int_2_U |a#19#0#0|) TInt))
 :qid |gitissue283dfy.7:22|
 :skolemid |533|
 :pattern ( ($Is DatatypeTypeType (|#_module.C.C2| |a#19#0#0|) Tclass._module.C))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Result.Success| |a#5#0#0|)))
 :qid |gitissue283dfy.4:13|
 :skolemid |508|
 :pattern ( (|#_module.Result.Success| |a#5#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Result.Failure| |a#12#0#0|)))
 :qid |gitissue283dfy.5:13|
 :skolemid |520|
 :pattern ( (|#_module.Result.Failure| |a#12#0#0|))
)))
(assert (forall ((d@@11 T@U) (_module.Result$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Result.Success_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.Result _module.Result$T@@6) $h@@4))) ($IsAllocBox (_module.Result.value d@@11) _module.Result$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAllocBox (_module.Result.value d@@11) _module.Result$T@@6 $h@@4))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |577|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.C.C2_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.C $h@@5))) ($IsAlloc intType (int_2_U (_module.C.x d@@12)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc intType (int_2_U (_module.C.x d@@12)) TInt $h@@5))
)))
(assert (forall ((d@@13 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@13)) (DtRank d@@13))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@13)))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@3)))
)))
(assert (forall ((_module.Result$T@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Result _module.Result$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Result _module.Result$T@@7))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Result _module.Result$T@@7)))
)))
(assert (forall ((_module.Result$T@@8 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@14 Tclass._module.C)) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.C $h@@6))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._module.C $h@@6))
)))
(assert (= (Tag Tclass._module.Foo) Tagclass._module.Foo))
(assert (= (TagFamily Tclass._module.Foo) tytagFamily$Foo))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.Foo?) Tagclass._module.Foo?))
(assert (= (TagFamily Tclass._module.Foo?) tytagFamily$Foo))
(assert (= |#_module.C.C1| (Lit DatatypeTypeType |#_module.C.C1|)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Foo?)  (or (= $o@@1 null) (implements$_module.Foo (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($Is refType $o@@1 Tclass._module.Foo?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0|)))
 :qid |gitissue283dfy.4:13|
 :skolemid |506|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0|)))
 :qid |gitissue283dfy.5:13|
 :skolemid |517|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)))
)))
(assert (forall ((|a#20#0#0| Int) ) (! (= (|#_module.C.C2| (LitInt |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.C.C2| |a#20#0#0|)))
 :qid |gitissue283dfy.7:22|
 :skolemid |535|
 :pattern ( (|#_module.C.C2| (LitInt |a#20#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |r#0| () T@U)
(declare-fun |x#5@4| () Int)
(declare-fun |_mcc#0#1_0@0| () T@U)
(declare-fun |_mcc#1#1_0_0@0| () Int)
(declare-fun |x#5@3| () Int)
(declare-fun |x#5@2| () Int)
(declare-fun $Heap () T@U)
(declare-fun |_mcc#2#0_0@0| () T@U)
(declare-fun |e#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |x#5@1| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x#5@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Foo.FooMethod3)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon11_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (_module.Result.Success_q |r#0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r#0|))) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (_module.Result.Success_q |r#0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r#0|))) (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (_module.Result.Success_q |r#0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r#0|)))) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (_module.Result.Success_q |r#0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r#0|)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> (not (_module.Result.Success_q |r#0|)) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
(let ((anon13_Else_correct  (=> (and (= |x#5@4| (LitInt 1)) (= (ControlFlow 0 7) 4)) GeneratedUnifiedExit_correct)))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (> |x#5@4| 0)) (=> (> |x#5@4| 0) (and (=> (= (ControlFlow 0 8) 2) anon13_Then_correct) (=> (= (ControlFlow 0 8) 7) anon13_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (and (= |_mcc#0#1_0@0| (|#_module.C.C2| |_mcc#1#1_0_0@0|)) (= |x#5@3| (LitInt 2))) (and (= |x#5@4| |x#5@3|) (= (ControlFlow 0 13) 8))) anon7_correct)))
(let ((anon10_Else_correct  (=> (or (not (= |_mcc#0#1_0@0| |#_module.C.C1|)) (not true)) (and (=> (= (ControlFlow 0 15) 13) anon11_Then_correct) (=> (= (ControlFlow 0 15) 14) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (and (= |_mcc#0#1_0@0| |#_module.C.C1|) (= |x#5@2| (LitInt 1))) (and (= |x#5@4| |x#5@2|) (= (ControlFlow 0 12) 8))) anon7_correct)))
(let ((anon9_Then_correct  (=> (= |r#0| (|#_module.Result.Success| ($Box DatatypeTypeType |_mcc#0#1_0@0|))) (=> (and ($Is DatatypeTypeType |_mcc#0#1_0@0| Tclass._module.C) ($IsAlloc DatatypeTypeType |_mcc#0#1_0@0| Tclass._module.C $Heap)) (and (=> (= (ControlFlow 0 16) 12) anon10_Then_correct) (=> (= (ControlFlow 0 16) 15) anon10_Else_correct))))))
(let ((anon12_Then_correct  (=> (= |r#0| (|#_module.Result.Failure| |_mcc#2#0_0@0|)) (=> (and ($Is SeqType |_mcc#2#0_0@0| (TSeq TChar)) ($IsAlloc SeqType |_mcc#2#0_0@0| (TSeq TChar) $Heap)) (=> (and (and (and ($Is SeqType |e#0_0@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0@0| (TSeq TChar) $Heap)) (and (= |let#0_0#0#0| |_mcc#2#0_0@0|) ($Is SeqType |let#0_0#0#0| (TSeq TChar)))) (and (and (= |e#0_0@0| |let#0_0#0#0|) (= |x#5@1| (LitInt 3))) (and (= |x#5@4| |x#5@1|) (= (ControlFlow 0 10) 8)))) anon7_correct)))))
(let ((anon12_Else_correct true))
(let ((anon9_Else_correct  (=> (or (not (= |r#0| (|#_module.Result.Success| ($Box DatatypeTypeType |_mcc#0#1_0@0|)))) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon12_Then_correct) (=> (= (ControlFlow 0 11) 1) anon12_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#5@0| (LitInt 0))) (and (=> (= (ControlFlow 0 17) 16) anon9_Then_correct) (=> (= (ControlFlow 0 17) 11) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Foo) ($IsAlloc refType this Tclass._module.Foo $Heap)))) (=> (and (and (and ($Is DatatypeTypeType |r#0| (Tclass._module.Result Tclass._module.C)) ($IsAlloc DatatypeTypeType |r#0| (Tclass._module.Result Tclass._module.C) $Heap)) (|$IsA#_module.Result| |r#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct))))
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
