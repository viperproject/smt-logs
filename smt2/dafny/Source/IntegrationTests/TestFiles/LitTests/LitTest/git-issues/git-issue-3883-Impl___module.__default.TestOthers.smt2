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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.ABC () T@U)
(declare-fun Tagclass._module.XYZ () T@U)
(declare-fun Tagclass._module.SSS () T@U)
(declare-fun |##_module.ABC.MakeABC| () T@U)
(declare-fun |##_module.XYZ.MakeXYZ| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$ABC () T@U)
(declare-fun tytagFamily$XYZ () T@U)
(declare-fun tytagFamily$SSS () T@U)
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
(declare-fun SeqType () T@T)
(declare-fun Tclass._module.SSS (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.ABC.MakeABC_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ABC (T@U) T@U)
(declare-fun _module.XYZ.MakeXYZ_q (T@U) Bool)
(declare-fun Tclass._module.XYZ (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.ABC.MakeABC| (T@U) T@U)
(declare-fun |#_module.XYZ.MakeXYZ| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.ABC_0 (T@U) T@U)
(declare-fun Tclass._module.XYZ_0 (T@U) T@U)
(declare-fun Tclass._module.SSS_0 (T@U) T@U)
(declare-fun _module.ABC._h0 (T@U) T@U)
(declare-fun _module.XYZ._h1 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.ABC Tagclass._module.XYZ Tagclass._module.SSS |##_module.ABC.MakeABC| |##_module.XYZ.MakeXYZ| tytagFamily$object tytagFamily$ABC tytagFamily$XYZ tytagFamily$SSS)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SeqType) 3))
(assert (forall ((_module.SSS$Y T@U) (|s#0| T@U) ($h T@U) ) (! (= ($IsAlloc SeqType |s#0| (Tclass._module.SSS _module.SSS$Y) $h) ($IsAlloc SeqType |s#0| (TSeq _module.SSS$Y) $h))
 :qid |unknown.0:0|
 :skolemid |1223|
 :pattern ( ($IsAlloc SeqType |s#0| (Tclass._module.SSS _module.SSS$Y) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.ABC$X T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.ABC _module.ABC$X)) (_module.ABC.MakeABC_q d))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( (_module.ABC.MakeABC_q d) ($Is DatatypeTypeType d (Tclass._module.ABC _module.ABC$X)))
)))
(assert (forall ((_module.XYZ$A T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.XYZ _module.XYZ$A)) (_module.XYZ.MakeXYZ_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1219|
 :pattern ( (_module.XYZ.MakeXYZ_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.XYZ _module.XYZ$A)))
)))
(assert (= (Ctor refType) 5))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |658|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |656|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |899|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.ABC.MakeABC_q d@@1) (= (DatatypeCtorId d@@1) |##_module.ABC.MakeABC|))
 :qid |unknown.0:0|
 :skolemid |1195|
 :pattern ( (_module.ABC.MakeABC_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.XYZ.MakeXYZ_q d@@2) (= (DatatypeCtorId d@@2) |##_module.XYZ.MakeXYZ|))
 :qid |unknown.0:0|
 :skolemid |1209|
 :pattern ( (_module.XYZ.MakeXYZ_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |667|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.ABC.MakeABC_q d@@3) (exists ((|a#1#0#0| T@U) ) (! (= d@@3 (|#_module.ABC.MakeABC| |a#1#0#0|))
 :qid |gitissue3883dfy.34:27|
 :skolemid |1196|
)))
 :qid |unknown.0:0|
 :skolemid |1197|
 :pattern ( (_module.ABC.MakeABC_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.XYZ.MakeXYZ_q d@@4) (exists ((|a#7#0#0| T@U) ) (! (= d@@4 (|#_module.XYZ.MakeXYZ| |a#7#0#0|))
 :qid |gitissue3883dfy.35:30|
 :skolemid |1210|
)))
 :qid |unknown.0:0|
 :skolemid |1211|
 :pattern ( (_module.XYZ.MakeXYZ_q d@@4))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |865|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |680|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((_module.ABC$X@@0 T@U) ) (!  (and (= (Tag (Tclass._module.ABC _module.ABC$X@@0)) Tagclass._module.ABC) (= (TagFamily (Tclass._module.ABC _module.ABC$X@@0)) tytagFamily$ABC))
 :qid |unknown.0:0|
 :skolemid |1144|
 :pattern ( (Tclass._module.ABC _module.ABC$X@@0))
)))
(assert (forall ((_module.XYZ$A@@0 T@U) ) (!  (and (= (Tag (Tclass._module.XYZ _module.XYZ$A@@0)) Tagclass._module.XYZ) (= (TagFamily (Tclass._module.XYZ _module.XYZ$A@@0)) tytagFamily$XYZ))
 :qid |unknown.0:0|
 :skolemid |1147|
 :pattern ( (Tclass._module.XYZ _module.XYZ$A@@0))
)))
(assert (forall ((_module.SSS$Y@@0 T@U) ) (!  (and (= (Tag (Tclass._module.SSS _module.SSS$Y@@0)) Tagclass._module.SSS) (= (TagFamily (Tclass._module.SSS _module.SSS$Y@@0)) tytagFamily$SSS))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( (Tclass._module.SSS _module.SSS$Y@@0))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |866|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i))
)))
(assert (forall ((_module.ABC$X@@1 T@U) (|a#2#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.ABC.MakeABC| |a#2#0#0|) (Tclass._module.ABC _module.ABC$X@@1) $h@@2) ($IsAllocBox |a#2#0#0| _module.ABC$X@@1 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.ABC.MakeABC| |a#2#0#0|) (Tclass._module.ABC _module.ABC$X@@1) $h@@2))
)))
(assert (forall ((_module.XYZ$A@@1 T@U) (|a#8#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.XYZ.MakeXYZ| |a#8#0#0|) (Tclass._module.XYZ _module.XYZ$A@@1) $h@@3) ($IsAllocBox |a#8#0#0| _module.XYZ$A@@1 $h@@3)))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.XYZ.MakeXYZ| |a#8#0#0|) (Tclass._module.XYZ _module.XYZ$A@@1) $h@@3))
)))
(assert (forall ((_module.SSS$Y@@1 T@U) (|s#0@@0| T@U) ) (! (= ($Is SeqType |s#0@@0| (Tclass._module.SSS _module.SSS$Y@@1))  (and ($Is SeqType |s#0@@0| (TSeq _module.SSS$Y@@1)) (<= (|Seq#Length| |s#0@@0|) (LitInt 10))))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( ($Is SeqType |s#0@@0| (Tclass._module.SSS _module.SSS$Y@@1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |668|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |670|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |679|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |862|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |714|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |715|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |648|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |649|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((_module.ABC$X@@2 T@U) ) (! (= (Tclass._module.ABC_0 (Tclass._module.ABC _module.ABC$X@@2)) _module.ABC$X@@2)
 :qid |unknown.0:0|
 :skolemid |1145|
 :pattern ( (Tclass._module.ABC _module.ABC$X@@2))
)))
(assert (forall ((_module.XYZ$A@@2 T@U) ) (! (= (Tclass._module.XYZ_0 (Tclass._module.XYZ _module.XYZ$A@@2)) _module.XYZ$A@@2)
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( (Tclass._module.XYZ _module.XYZ$A@@2))
)))
(assert (forall ((_module.SSS$Y@@2 T@U) ) (! (= (Tclass._module.SSS_0 (Tclass._module.SSS _module.SSS$Y@@2)) _module.SSS$Y@@2)
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (Tclass._module.SSS _module.SSS$Y@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.ABC.MakeABC| |a#0#0#0|)) |##_module.ABC.MakeABC|)
 :qid |gitissue3883dfy.34:27|
 :skolemid |1194|
 :pattern ( (|#_module.ABC.MakeABC| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.ABC._h0 (|#_module.ABC.MakeABC| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue3883dfy.34:27|
 :skolemid |1202|
 :pattern ( (|#_module.ABC.MakeABC| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.XYZ.MakeXYZ| |a#6#0#0|)) |##_module.XYZ.MakeXYZ|)
 :qid |gitissue3883dfy.35:30|
 :skolemid |1208|
 :pattern ( (|#_module.XYZ.MakeXYZ| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (_module.XYZ._h1 (|#_module.XYZ.MakeXYZ| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue3883dfy.35:30|
 :skolemid |1216|
 :pattern ( (|#_module.XYZ.MakeXYZ| |a#10#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |666|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.ABC$X@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ABC.MakeABC| |a#2#0#0@@0|) (Tclass._module.ABC _module.ABC$X@@3)) ($IsBox |a#2#0#0@@0| _module.ABC$X@@3))
 :qid |unknown.0:0|
 :skolemid |1198|
 :pattern ( ($Is DatatypeTypeType (|#_module.ABC.MakeABC| |a#2#0#0@@0|) (Tclass._module.ABC _module.ABC$X@@3)))
)))
(assert (forall ((_module.XYZ$A@@3 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.XYZ.MakeXYZ| |a#8#0#0@@0|) (Tclass._module.XYZ _module.XYZ$A@@3)) ($IsBox |a#8#0#0@@0| _module.XYZ$A@@3))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( ($Is DatatypeTypeType (|#_module.XYZ.MakeXYZ| |a#8#0#0@@0|) (Tclass._module.XYZ _module.XYZ$A@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.ABC.MakeABC| |a#5#0#0|)))
 :qid |gitissue3883dfy.34:27|
 :skolemid |1203|
 :pattern ( (|#_module.ABC.MakeABC| |a#5#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (BoxRank |a#11#0#0|) (DtRank (|#_module.XYZ.MakeXYZ| |a#11#0#0|)))
 :qid |gitissue3883dfy.35:30|
 :skolemid |1217|
 :pattern ( (|#_module.XYZ.MakeXYZ| |a#11#0#0|))
)))
(assert (forall ((d@@5 T@U) (_module.ABC$X@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.ABC.MakeABC_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.ABC _module.ABC$X@@4) $h@@4))) ($IsAllocBox (_module.ABC._h0 d@@5) _module.ABC$X@@4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( ($IsAllocBox (_module.ABC._h0 d@@5) _module.ABC$X@@4 $h@@4))
)))
(assert (forall ((d@@6 T@U) (_module.XYZ$A@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.XYZ.MakeXYZ_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.XYZ _module.XYZ$A@@4) $h@@5))) ($IsAllocBox (_module.XYZ._h1 d@@6) _module.XYZ$A@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( ($IsAllocBox (_module.XYZ._h1 d@@6) _module.XYZ$A@@4 $h@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1423|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |864|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |725|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@4 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |676|
 :pattern ( ($IsBox bx@@4 (TSeq t@@4)))
)))
(assert (forall ((_module.ABC$X@@5 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.ABC _module.ABC$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.ABC _module.ABC$X@@5))))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( ($IsBox bx@@5 (Tclass._module.ABC _module.ABC$X@@5)))
)))
(assert (forall ((_module.XYZ$A@@5 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.XYZ _module.XYZ$A@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.XYZ _module.XYZ$A@@5))))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( ($IsBox bx@@6 (Tclass._module.XYZ _module.XYZ$A@@5)))
)))
(assert (forall ((_module.SSS$Y@@3 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.SSS _module.SSS$Y@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (Tclass._module.SSS _module.SSS$Y@@3))))
 :qid |unknown.0:0|
 :skolemid |1152|
 :pattern ( ($IsBox bx@@7 (Tclass._module.SSS _module.SSS$Y@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |659|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.ABC.MakeABC| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.ABC.MakeABC| |a#3#0#0|)))
 :qid |gitissue3883dfy.34:27|
 :skolemid |1201|
 :pattern ( (|#_module.ABC.MakeABC| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#_module.XYZ.MakeXYZ| (Lit BoxType |a#9#0#0|)) (Lit DatatypeTypeType (|#_module.XYZ.MakeXYZ| |a#9#0#0|)))
 :qid |gitissue3883dfy.35:30|
 :skolemid |1215|
 :pattern ( (|#_module.XYZ.MakeXYZ| (Lit BoxType |a#9#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |657|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |863|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |702|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |704|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@2))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |694|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |695|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |908|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |681|
 :pattern ( ($Is intType v@@7 TInt))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is boolType v@@8 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |683|
 :pattern ( ($Is boolType v@@8 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestOthers)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |a#0@0| (Lit DatatypeTypeType (|#_module.ABC.MakeABC| ($Box intType (int_2_U (LitInt 10))))))) (and (= |b#0@0| (|#_module.XYZ.MakeXYZ| ($Box refType null))) (= (ControlFlow 0 2) (- 0 1)))) ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false))))) (Tclass._module.SSS TBool)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |a#0| (Tclass._module.ABC TInt)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.ABC TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |b#0| (Tclass._module.XYZ Tclass._System.object?)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.XYZ Tclass._System.object?) $Heap)) true)) (and (and (and ($Is SeqType |c#0@@1| (Tclass._module.SSS TBool)) ($IsAlloc SeqType |c#0@@1| (Tclass._module.SSS TBool) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
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
