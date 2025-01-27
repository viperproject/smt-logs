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
(declare-fun TagChar () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun Tagclass._module.Result () T@U)
(declare-fun |##_module.Result.Failure| () T@U)
(declare-fun |##_module.Bar.C1| () T@U)
(declare-fun Tagclass._module.Bar () T@U)
(declare-fun |##_module.Bar.C2| () T@U)
(declare-fun Tagclass._module.Foo? () T@U)
(declare-fun Tagclass._module.Foo () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$Bar () T@U)
(declare-fun tytagFamily$Foo () T@U)
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
(declare-fun |_module.Result#Equal| (T@U T@U) Bool)
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Result.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Bar.C2| (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Bar.C1| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Foo () T@U)
(declare-fun Tclass._module.Foo? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Bar () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Result.Failure_q (T@U) Bool)
(declare-fun _module.Bar.C1_q (T@U) Bool)
(declare-fun _module.Bar.C2_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Result (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Result.error (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Result_0 (T@U) T@U)
(declare-fun _module.Bar.bl (T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc |##_module.Result.Success| Tagclass._module.Result |##_module.Result.Failure| |##_module.Bar.C1| Tagclass._module.Bar |##_module.Bar.C2| Tagclass._module.Foo? Tagclass._module.Foo tytagFamily$Result tytagFamily$Bar tytagFamily$Foo)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Result.Success_q a) (_module.Result.Success_q b)) (= (|_module.Result#Equal| a b) (= (_module.Result.value a) (_module.Result.value b))))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (|_module.Result#Equal| a b) (_module.Result.Success_q a))
 :pattern ( (|_module.Result#Equal| a b) (_module.Result.Success_q b))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Result.Failure| |a#11#0#0|))))
 :qid |gitissue283cdfy.6:13|
 :skolemid |504|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Result.Failure| |a#11#0#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#22#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#0#0| i@@0))) (DtRank (|#_module.Bar.C2| |a#22#0#0|))))
 :qid |gitissue283cdfy.8:26|
 :skolemid |522|
 :pattern ( (|Seq#Index| |a#22#0#0| i@@0) (|#_module.Bar.C2| |a#22#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Bar.C1|) |##_module.Bar.C1|))
(assert (= (Ctor refType) 4))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Foo $h) ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
)))
(assert ($Is DatatypeTypeType |#_module.Bar.C1| Tclass._module.Bar))
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
 :skolemid |532|
 :pattern ( ($IsAlloc refType $o Tclass._module.Foo? $h@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Result#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (|_module.Result#Equal| a@@0 b@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Result.Success_q d) (= (DatatypeCtorId d) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_module.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Result.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (_module.Result.Failure_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Bar.C1_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Bar.C1|))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (_module.Bar.C1_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Bar.C2_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Bar.C2|))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.Bar.C2_q d@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Bar.C1_q d@@3) (= d@@3 |#_module.Bar.C1|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.Bar.C1_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Result.Success_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#_module.Result.Success| |a#1#0#0|))
 :qid |gitissue283cdfy.5:13|
 :skolemid |483|
)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (_module.Result.Success_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Result.Failure_q d@@5) (exists ((|a#7#0#0| T@U) ) (! (= d@@5 (|#_module.Result.Failure| |a#7#0#0|))
 :qid |gitissue283cdfy.6:13|
 :skolemid |496|
)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.Result.Failure_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Bar.C2_q d@@6) (exists ((|a#18#0#0| T@U) ) (! (= d@@6 (|#_module.Bar.C2| |a#18#0#0|))
 :qid |gitissue283cdfy.8:26|
 :skolemid |516|
)))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( (_module.Bar.C2_q d@@6))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Result$T T@U) ) (!  (and (= (Tag (Tclass._module.Result _module.Result$T)) Tagclass._module.Result) (= (TagFamily (Tclass._module.Result _module.Result$T)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Result _module.Result$T))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Bar) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Bar)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsBox bx@@0 Tclass._module.Bar))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Foo?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Foo?)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsBox bx@@1 Tclass._module.Foo?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Foo) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Foo)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@2 Tclass._module.Foo))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Foo)  (and ($Is refType |c#0@@0| Tclass._module.Foo?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo?))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Result.Failure_q a@@1) (_module.Result.Failure_q b@@1)) (= (|_module.Result#Equal| a@@1 b@@1) (|Seq#Equal| (_module.Result.error a@@1) (_module.Result.error b@@1))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (|_module.Result#Equal| a@@1 b@@1) (_module.Result.Failure_q a@@1))
 :pattern ( (|_module.Result#Equal| a@@1 b@@1) (_module.Result.Failure_q b@@1))
)))
(assert (forall ((_module.Result$T@@0 T@U) (|a#2#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@0) $h@@1) ($IsAllocBox |a#2#0#0| _module.Result$T@@0 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Success| |a#2#0#0|) (Tclass._module.Result _module.Result$T@@0) $h@@1))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Result.Failure_q d@@7) (exists ((_module.Result$T@@1 T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@1) $h@@2)
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Result _module.Result$T@@1) $h@@2))
)))) ($IsAlloc SeqType (_module.Result.error d@@7) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc SeqType (_module.Result.error d@@7) (TSeq TChar) $h@@2))
)))
(assert (forall ((_module.Result$T@@2 T@U) (|a#8#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@3)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0|) (Tclass._module.Result _module.Result$T@@2) $h@@3))
)))
(assert (forall ((_module.Result$T@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@3)) (or (_module.Result.Success_q d@@8) (_module.Result.Failure_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (_module.Result.Failure_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@3)))
 :pattern ( (_module.Result.Success_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Result _module.Result$T@@3)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Seq#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@2 b@@2))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.Bar) (or (_module.Bar.C1_q d@@9) (_module.Bar.C2_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Bar.C2_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Bar))
 :pattern ( (_module.Bar.C1_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Bar))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@1) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0|)) |##_module.Result.Success|)
 :qid |gitissue283cdfy.5:13|
 :skolemid |481|
 :pattern ( (|#_module.Result.Success| |a#0#0#0|))
)))
(assert (forall ((_module.Result$T@@4 T@U) ) (! (= (Tclass._module.Result_0 (Tclass._module.Result _module.Result$T@@4)) _module.Result$T@@4)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Result _module.Result$T@@4))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue283cdfy.5:13|
 :skolemid |492|
 :pattern ( (|#_module.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Failure| |a#6#0#0|)) |##_module.Result.Failure|)
 :qid |gitissue283cdfy.6:13|
 :skolemid |494|
 :pattern ( (|#_module.Result.Failure| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.Result.error (|#_module.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue283cdfy.6:13|
 :skolemid |503|
 :pattern ( (|#_module.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Bar.C2| |a#17#0#0|)) |##_module.Bar.C2|)
 :qid |gitissue283cdfy.8:26|
 :skolemid |514|
 :pattern ( (|#_module.Bar.C2| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (_module.Bar.bl (|#_module.Bar.C2| |a#21#0#0|)) |a#21#0#0|)
 :qid |gitissue283cdfy.8:26|
 :skolemid |521|
 :pattern ( (|#_module.Bar.C2| |a#21#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((_module.Result$T@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@5)) ($IsBox |a#2#0#0@@0| _module.Result$T@@5))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Success| |a#2#0#0@@0|) (Tclass._module.Result _module.Result$T@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Result.Success| |a#5#0#0|)))
 :qid |gitissue283cdfy.5:13|
 :skolemid |493|
 :pattern ( (|#_module.Result.Success| |a#5#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Result.Failure| |a#12#0#0|)))
 :qid |gitissue283cdfy.6:13|
 :skolemid |505|
 :pattern ( (|#_module.Result.Failure| |a#12#0#0|))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (< (|Seq#Rank| |a#23#0#0|) (DtRank (|#_module.Bar.C2| |a#23#0#0|)))
 :qid |gitissue283cdfy.8:26|
 :skolemid |523|
 :pattern ( (|#_module.Bar.C2| |a#23#0#0|))
)))
(assert (forall ((d@@10 T@U) (_module.Result$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Result.Success_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.Result _module.Result$T@@6) $h@@4))) ($IsAllocBox (_module.Result.value d@@10) _module.Result$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAllocBox (_module.Result.value d@@10) _module.Result$T@@6 $h@@4))
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
 :skolemid |541|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@5)))
)))
(assert (forall ((_module.Result$T@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Result _module.Result$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Result _module.Result$T@@7))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Result _module.Result$T@@7)))
)))
(assert (forall ((_module.Result$T@@8 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Is DatatypeTypeType (|#_module.Result.Failure| |a#8#0#0@@0|) (Tclass._module.Result _module.Result$T@@8)))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@12 Tclass._module.Bar)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Bar $h@@5))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Bar $h@@5))
)))
(assert (= (Tag Tclass._module.Bar) Tagclass._module.Bar))
(assert (= (TagFamily Tclass._module.Bar) tytagFamily$Bar))
(assert (= (Tag Tclass._module.Foo?) Tagclass._module.Foo?))
(assert (= (TagFamily Tclass._module.Foo?) tytagFamily$Foo))
(assert (= (Tag Tclass._module.Foo) Tagclass._module.Foo))
(assert (= (TagFamily Tclass._module.Foo) tytagFamily$Foo))
(assert (= |#_module.Bar.C1| (Lit DatatypeTypeType |#_module.Bar.C1|)))
(assert (forall ((|a#19#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Bar.C2| |a#19#0#0|) Tclass._module.Bar) ($Is SeqType |a#19#0#0| (TSeq TChar)))
 :qid |gitissue283cdfy.8:26|
 :skolemid |518|
 :pattern ( ($Is DatatypeTypeType (|#_module.Bar.C2| |a#19#0#0|) Tclass._module.Bar))
)))
(assert (forall ((d@@13 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Bar.C2_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Bar $h@@6))) ($IsAlloc SeqType (_module.Bar.bl d@@13) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc SeqType (_module.Bar.bl d@@13) (TSeq TChar) $h@@6))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Foo?)  (or (= $o@@1 null) (implements$_module.Foo (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is refType $o@@1 Tclass._module.Foo?))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0|)))
 :qid |gitissue283cdfy.5:13|
 :skolemid |491|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Failure| |a#9#0#0|)))
 :qid |gitissue283cdfy.6:13|
 :skolemid |502|
 :pattern ( (|#_module.Result.Failure| (Lit SeqType |a#9#0#0|)))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (|#_module.Bar.C2| (Lit SeqType |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.Bar.C2| |a#20#0#0|)))
 :qid |gitissue283cdfy.8:26|
 :skolemid |520|
 :pattern ( (|#_module.Bar.C2| (Lit SeqType |a#20#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@3))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@3))))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |e#Z#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |r#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$_module.Foo.FooMethod2)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon11_Else_correct true))
(let ((anon8_correct true))
(let ((anon11_Then_correct  (=> (and (= |_mcc#0#0| (|#_module.Bar.C2| |_mcc#1#0|)) ($Is SeqType |_mcc#1#0| (TSeq TChar))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= |_mcc#1#0| (Lit SeqType |Seq#Empty|))) (=> (= |_mcc#1#0| (Lit SeqType |Seq#Empty|)) (=> (= (ControlFlow 0 6) 2) anon8_correct))))))
(let ((anon10_Else_correct  (=> (or (not (= |_mcc#0#0| |#_module.Bar.C1|)) (not true)) (and (=> (= (ControlFlow 0 9) 6) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (= |_mcc#0#0| |#_module.Bar.C1|) (= (ControlFlow 0 5) 2)) anon8_correct)))
(let ((anon9_Then_correct  (=> (and (= |r#0@0| (|#_module.Result.Success| ($Box DatatypeTypeType |_mcc#0#0|))) ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Bar)) (and (=> (= (ControlFlow 0 10) 5) anon10_Then_correct) (=> (= (ControlFlow 0 10) 9) anon10_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (= |r#0@0| (|#_module.Result.Failure| |_mcc#2#0|)) ($Is SeqType |_mcc#2#0| (TSeq TChar))) (=> (and (and (= |let#0#0#0| |_mcc#2#0|) ($Is SeqType |let#0#0#0| (TSeq TChar))) (and (= |e#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 3) 2))) anon8_correct))))
(let ((anon12_Else_correct true))
(let ((anon9_Else_correct  (=> (or (not (= |r#0@0| (|#_module.Result.Success| ($Box DatatypeTypeType |_mcc#0#0|)))) (not true)) (and (=> (= (ControlFlow 0 4) 3) anon12_Then_correct) (=> (= (ControlFlow 0 4) 1) anon12_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |gitissue283cdfy.17:10|
 :skolemid |535|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0)) (and ($Is DatatypeTypeType |r#0@0| (Tclass._module.Result Tclass._module.Bar)) ($IsAlloc DatatypeTypeType |r#0@0| (Tclass._module.Result Tclass._module.Bar) $Heap@0))) (and (=> (= (ControlFlow 0 11) 10) anon9_Then_correct) (=> (= (ControlFlow 0 11) 4) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Foo) ($IsAlloc refType this Tclass._module.Foo $Heap)))) (and (and ($Is DatatypeTypeType |r#0| (Tclass._module.Result Tclass._module.Bar)) ($IsAlloc DatatypeTypeType |r#0| (Tclass._module.Result Tclass._module.Bar) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 12) 11)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
