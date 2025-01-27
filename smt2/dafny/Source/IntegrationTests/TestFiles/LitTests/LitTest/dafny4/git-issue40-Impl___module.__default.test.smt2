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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Num () T@U)
(declare-fun Tagclass._module.Maybe () T@U)
(declare-fun Tagclass._module.D () T@U)
(declare-fun |##_module.Maybe.Nothing| () T@U)
(declare-fun |##_module.D.C| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Num () T@U)
(declare-fun tytagFamily$Maybe () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun _module.D._h0 (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._module.Maybe (T@U) T@U)
(declare-fun Tclass._module.Num () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.D.C_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.D () T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#_module.D| (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.D.C| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Maybe.Nothing| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SeqRepeat (T@U Int T@U) T@U)
(declare-fun |_module.__default.SeqRepeat#canCall| (T@U Int T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |_module.D#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Maybe_0 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TagSeq alloc Tagclass._System.nat Tagclass._module.Num Tagclass._module.Maybe Tagclass._module.D |##_module.Maybe.Nothing| |##_module.D.C| tytagFamily$nat tytagFamily$Num tytagFamily$Maybe tytagFamily$D)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.D.C_q d) ($IsAlloc DatatypeTypeType d Tclass._module.D $h))) ($IsAlloc SeqType (_module.D._h0 d) (TSeq (Tclass._module.Maybe Tclass._module.Num)) $h))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc SeqType (_module.D._h0 d) (TSeq (Tclass._module.Maybe Tclass._module.Num)) $h))
)))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@0)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@0))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.Num $h@@1)
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.Num $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_module.D| d@@0) (_module.D.C_q d@@0))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (|$IsA#_module.D| d@@0))
)))
(assert (forall ((|a#5#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#5#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#5#0#0| i))) (DtRank (|#_module.D.C| |a#5#0#0|))))
 :qid |gitissue40dfy.10:16|
 :skolemid |568|
 :pattern ( (|Seq#Index| |a#5#0#0| i) (|#_module.D.C| |a#5#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Maybe.Nothing|) |##_module.Maybe.Nothing|))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.SeqRepeat$T T@U) (|count#0| Int) (|elt#0| T@U) ) (!  (=> (or (|_module.__default.SeqRepeat#canCall| _module._default.SeqRepeat$T |count#0| |elt#0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |count#0|) ($IsBox |elt#0| _module._default.SeqRepeat$T)))) (and (and (= (|Seq#Length| (_module.__default.SeqRepeat _module._default.SeqRepeat$T |count#0| |elt#0|)) |count#0|) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| |count#0|)) (= (|Seq#Index| (_module.__default.SeqRepeat _module._default.SeqRepeat$T |count#0| |elt#0|) |i#0|) |elt#0|))
 :qid |gitissue40dfy.6:20|
 :skolemid |528|
 :pattern ( (|Seq#Index| (_module.__default.SeqRepeat _module._default.SeqRepeat$T |count#0| |elt#0|) |i#0|))
))) ($Is SeqType (_module.__default.SeqRepeat _module._default.SeqRepeat$T |count#0| |elt#0|) (TSeq _module._default.SeqRepeat$T))))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (_module.__default.SeqRepeat _module._default.SeqRepeat$T |count#0| |elt#0|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass._module.D) (_module.D.C_q d@@1))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (_module.D.C_q d@@1) ($Is DatatypeTypeType d@@1 Tclass._module.D))
)))
(assert (forall ((_module.Maybe$T T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h@@2))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h@@2))
)))
(assert (forall ((_module.Maybe$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.D#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (|_module.D#Equal| a b))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.SeqRepeat$T@@0 T@U) (|count#0@@0| Int) (|elt#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.SeqRepeat#canCall| _module._default.SeqRepeat$T@@0 |count#0@@0| |elt#0@@0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |count#0@@0|) (and ($IsBox |elt#0@@0| _module._default.SeqRepeat$T@@0) ($IsAllocBox |elt#0@@0| _module._default.SeqRepeat$T@@0 $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SeqType (_module.__default.SeqRepeat _module._default.SeqRepeat$T@@0 |count#0@@0| |elt#0@@0|) (TSeq _module._default.SeqRepeat$T@@0) $Heap))
 :qid |gitissue40dfy.4:16|
 :skolemid |530|
 :pattern ( ($IsAlloc SeqType (_module.__default.SeqRepeat _module._default.SeqRepeat$T@@0 |count#0@@0| |elt#0@@0|) (TSeq _module._default.SeqRepeat$T@@0) $Heap))
))))
(assert (forall ((d@@2 T@U) ) (! (= (_module.D.C_q d@@2) (= (DatatypeCtorId d@@2) |##_module.D.C|))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (_module.D.C_q d@@2))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.D.C_q d@@3) (exists ((|a#1#0#0| T@U) ) (! (= d@@3 (|#_module.D.C| |a#1#0#0|))
 :qid |gitissue40dfy.10:16|
 :skolemid |562|
)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (_module.D.C_q d@@3))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Maybe$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Maybe _module.Maybe$T@@1)) Tagclass._module.Maybe) (= (TagFamily (Tclass._module.Maybe _module.Maybe$T@@1)) tytagFamily$Maybe))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@1))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Num) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._module.Num)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@0 Tclass._module.Num))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.D) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.D)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsBox bx@@1 Tclass._module.D))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.D.C| |a#2#0#0|) Tclass._module.D) ($Is SeqType |a#2#0#0| (TSeq (Tclass._module.Maybe Tclass._module.Num))))
 :qid |gitissue40dfy.10:16|
 :skolemid |564|
 :pattern ( ($Is DatatypeTypeType (|#_module.D.C| |a#2#0#0|) Tclass._module.D))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
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
(assert (forall ((_module.Maybe$T@@2 T@U) ) (! (= (Tclass._module.Maybe_0 (Tclass._module.Maybe _module.Maybe$T@@2)) _module.Maybe$T@@2)
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.D.C| |a#0#0#0|)) |##_module.D.C|)
 :qid |gitissue40dfy.10:16|
 :skolemid |560|
 :pattern ( (|#_module.D.C| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.D._h0 (|#_module.D.C| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue40dfy.10:16|
 :skolemid |567|
 :pattern ( (|#_module.D.C| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (< (|Seq#Rank| |a#6#0#0|) (DtRank (|#_module.D.C| |a#6#0#0|)))
 :qid |gitissue40dfy.10:16|
 :skolemid |569|
 :pattern ( (|#_module.D.C| |a#6#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |575|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_module.D#Equal| a@@1 b@@1) (|Seq#Equal| (_module.D._h0 a@@1) (_module.D._h0 b@@1)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (|_module.D#Equal| a@@1 b@@1))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@3)))
)))
(assert (forall ((_module.Maybe$T@@3 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Maybe _module.Maybe$T@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Maybe _module.Maybe$T@@3))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Maybe _module.Maybe$T@@3)))
)))
(assert (forall ((d@@4 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@4 Tclass._module.D)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.D $h@@3))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.D $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Num) Tagclass._module.Num))
(assert (= (TagFamily Tclass._module.Num) tytagFamily$Num))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= |#_module.Maybe.Nothing| (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._module.Num)  (and (<= (LitInt 0) (U_2_int |x#0@@2|)) (< (U_2_int |x#0@@2|) 10)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($Is intType |x#0@@2| Tclass._module.Num))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.D.C| (Lit SeqType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.D.C| |a#3#0#0|)))
 :qid |gitissue40dfy.10:16|
 :skolemid |566|
 :pattern ( (|#_module.D.C| (Lit SeqType |a#3#0#0|)))
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
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##count#0@0| () Int)
(declare-fun |##elt#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |##count#1@0| () Int)
(declare-fun |##elt#1@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |e#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.test)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (and (and (and (= |##count#0@0| (LitInt 1)) ($IsAlloc intType (int_2_U |##count#0@0|) Tclass._System.nat $Heap@@0)) (and (= |##elt#0@0| (Lit DatatypeTypeType |#_module.Maybe.Nothing|)) ($IsAlloc DatatypeTypeType |##elt#0@0| (Tclass._module.Maybe Tclass._module.Num) $Heap@@0))) (and (and (|_module.__default.SeqRepeat#canCall| (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|))) (|_module.__default.SeqRepeat#canCall| (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))) (and (= |s#0@0| (_module.__default.SeqRepeat (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))) (= |e#0@0| (|#_module.D.C| |s#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |##count#1@0| (LitInt 1)) (=> (and (and (and ($IsAlloc intType (int_2_U |##count#1@0|) Tclass._System.nat $Heap@@0) (= |##elt#1@0| (Lit DatatypeTypeType |#_module.Maybe.Nothing|))) (and ($IsAlloc DatatypeTypeType |##elt#1@0| (Tclass._module.Maybe Tclass._module.Num) $Heap@@0) (|_module.__default.SeqRepeat#canCall| (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|))))) (and (and (|$IsA#_module.D| |e#0@0|) (|_module.__default.SeqRepeat#canCall| (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))) (= (ControlFlow 0 2) (- 0 1)))) (|_module.D#Equal| |e#0@0| (|#_module.D.C| (_module.__default.SeqRepeat (Tclass._module.Maybe Tclass._module.Num) (LitInt 1) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is SeqType |s#0| (TSeq (Tclass._module.Maybe Tclass._module.Num))) ($IsAlloc SeqType |s#0| (TSeq (Tclass._module.Maybe Tclass._module.Num)) $Heap@@0)) true) (=> (and (and (and ($Is DatatypeTypeType |e#0| Tclass._module.D) ($IsAlloc DatatypeTypeType |e#0| Tclass._module.D $Heap@@0)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct)))))
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
