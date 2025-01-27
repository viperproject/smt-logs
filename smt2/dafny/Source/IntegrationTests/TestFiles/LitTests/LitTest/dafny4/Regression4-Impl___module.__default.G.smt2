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
(declare-fun Tagclass._module.Maybe () T@U)
(declare-fun Tagclass._module.AbsPTE () T@U)
(declare-fun |##_module.Maybe.Nothing| () T@U)
(declare-fun |##_module.Maybe.Just| () T@U)
(declare-fun tytagFamily$Maybe () T@U)
(declare-fun tytagFamily$AbsPTE () T@U)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.__default.fromJust (T@U T@U) T@U)
(declare-fun |_module.__default.fromJust#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Maybe (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Maybe.Just_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Maybe.Nothing| () T@U)
(declare-fun _module.Maybe._h0 (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Maybe.Nothing_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Maybe.Just| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.AbsPTE () T@U)
(declare-fun BoxType () T@T)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Maybe_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TagSeq alloc Tagclass._module.Maybe Tagclass._module.AbsPTE |##_module.Maybe.Nothing| |##_module.Maybe.Just| tytagFamily$Maybe tytagFamily$AbsPTE)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.fromJust$T T@U) (|x#0| T@U) ) (!  (=> (and (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T |x#0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |x#0| (Tclass._module.Maybe _module._default.fromJust$T)) ($IsAlloc DatatypeTypeType |x#0| (Tclass._module.Maybe _module._default.fromJust$T) $Heap)) (_module.Maybe.Just_q |x#0|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.fromJust _module._default.fromJust$T |x#0|) _module._default.fromJust$T $Heap))
 :qid |Regression4dfy.7:10|
 :skolemid |486|
 :pattern ( ($IsAllocBox (_module.__default.fromJust _module._default.fromJust$T |x#0|) _module._default.fromJust$T $Heap))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Maybe.Nothing|) |##_module.Maybe.Nothing|))
(assert (forall ((_module.Maybe$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h))
)))
(assert (forall ((_module.Maybe$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@0 |x#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| (Tclass._module.Maybe _module._default.fromJust$T@@0)) (_module.Maybe.Just_q |x#0@@0|)))) (= (_module.__default.fromJust _module._default.fromJust$T@@0 |x#0@@0|) (let ((|v#0| (_module.Maybe._h0 |x#0@@0|)))
|v#0|)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@0 |x#0@@0|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@1 |x#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| (Tclass._module.Maybe _module._default.fromJust$T@@1)) (_module.Maybe.Just_q |x#0@@1|)))) ($IsBox (_module.__default.fromJust _module._default.fromJust$T@@1 |x#0@@1|) _module._default.fromJust$T@@1))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@1 |x#0@@1|))
))))
(assert (forall ((d T@U) ) (! (= (_module.Maybe.Nothing_q d) (= (DatatypeCtorId d) |##_module.Maybe.Nothing|))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (_module.Maybe.Nothing_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Maybe.Just_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Maybe.Just|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.Maybe.Just_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Maybe.Nothing_q d@@1) (= d@@1 |#_module.Maybe.Nothing|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.Maybe.Nothing_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Maybe.Just_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.Maybe.Just| |a#5#0#0|))
 :qid |Regression4dfy.5:36|
 :skolemid |517|
)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (_module.Maybe.Just_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Maybe$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Maybe _module.Maybe$T@@1)) Tagclass._module.Maybe) (= (TagFamily (Tclass._module.Maybe _module.Maybe$T@@1)) tytagFamily$Maybe))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@1))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.AbsPTE) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.AbsPTE)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx Tclass._module.AbsPTE))
)))
(assert (forall ((_module.Maybe$T@@2 T@U) (|a#6#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@0) ($IsAllocBox |a#6#0#0| _module.Maybe$T@@2 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@0))
)))
(assert (forall ((_module.Maybe$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)) (or (_module.Maybe.Nothing_q d@@3) (_module.Maybe.Just_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Maybe.Just_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)))
 :pattern ( (_module.Maybe.Nothing_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| (Tclass._module.Maybe _module._default.fromJust$T@@2)) (U_2_bool (Lit boolType (bool_2_U (_module.Maybe.Just_q (Lit DatatypeTypeType |x#0@@2|)))))))) (= (_module.__default.fromJust _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)) (let ((|v#2| (Lit BoxType (_module.Maybe._h0 (Lit DatatypeTypeType |x#0@@2|)))))
|v#2|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |489|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)))
))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
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
(assert (forall ((_module.Maybe$T@@4 T@U) ) (! (= (Tclass._module.Maybe_0 (Tclass._module.Maybe _module.Maybe$T@@4)) _module.Maybe$T@@4)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@4))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Maybe.Just| |a#4#0#0|)) |##_module.Maybe.Just|)
 :qid |Regression4dfy.5:36|
 :skolemid |515|
 :pattern ( (|#_module.Maybe.Just| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Maybe._h0 (|#_module.Maybe.Just| |a#8#0#0|)) |a#8#0#0|)
 :qid |Regression4dfy.5:36|
 :skolemid |523|
 :pattern ( (|#_module.Maybe.Just| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Maybe$T@@5 T@U) (|a#6#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)) ($IsBox |a#6#0#0@@0| _module.Maybe$T@@5))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Is DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.Maybe.Just| |a#9#0#0|)))
 :qid |Regression4dfy.5:36|
 :skolemid |524|
 :pattern ( (|#_module.Maybe.Just| |a#9#0#0|))
)))
(assert (forall ((d@@4 T@U) (_module.Maybe$T@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Maybe.Just_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Maybe _module.Maybe$T@@6) $h@@1))) ($IsAllocBox (_module.Maybe._h0 d@@4) _module.Maybe$T@@6 $h@@1))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAllocBox (_module.Maybe._h0 d@@4) _module.Maybe$T@@6 $h@@1))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |547|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((_module.Maybe$T@@7 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Maybe _module.Maybe$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Maybe _module.Maybe$T@@7))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Maybe _module.Maybe$T@@7)))
)))
(assert (forall ((d@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@6 Tclass._module.AbsPTE)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.AbsPTE $h@@2))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.AbsPTE $h@@2))
)))
(assert (= (Tag Tclass._module.AbsPTE) Tagclass._module.AbsPTE))
(assert (= (TagFamily Tclass._module.AbsPTE) tytagFamily$AbsPTE))
(assert (= |#_module.Maybe.Nothing| (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Maybe.Just| (Lit BoxType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Maybe.Just| |a#7#0#0|)))
 :qid |Regression4dfy.5:36|
 :skolemid |522|
 :pattern ( (|#_module.Maybe.Just| (Lit BoxType |a#7#0#0|)))
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
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |i#0| () Int)
(declare-fun |pt#0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |j#0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |z#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.G)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |pt#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |pt#0|))) (=> (and (= |s#0@0| ($Unbox DatatypeTypeType (|Seq#Index| |pt#0| |i#0|))) ($IsAlloc DatatypeTypeType |s#0@0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.Maybe.Just_q |s#0@0|)) (=> (_module.Maybe.Just_q |s#0@0|) (=> (and (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |s#0@0|) (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |s#0@0|)) (and (= |aa#0@0| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |s#0@0|))) (= (ControlFlow 0 2) (- 0 1)))) (and (<= 0 |j#0|) (< |j#0| (|Seq#Length| |aa#0@0|))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($Is SeqType |pt#0| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))))) ($IsAlloc SeqType |pt#0| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)))) $Heap@@0))) (=> (and (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)))) ($IsAlloc DatatypeTypeType |s#0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) true) (and (and ($Is SeqType |aa#0| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) ($IsAlloc SeqType |aa#0| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) $Heap@@0)) true)) (=> (and (and (and (and (and ($Is DatatypeTypeType |z#0| (Tclass._module.Maybe Tclass._module.AbsPTE)) ($IsAlloc DatatypeTypeType |z#0| (Tclass._module.Maybe Tclass._module.AbsPTE) $Heap@@0)) true) (= 4 $FunctionContextHeight)) (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |pt#0|)))) (and (and (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0| |i#0|))) (<= (LitInt 0) |j#0|)) (and (< |j#0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0| |i#0|)))))) (= (ControlFlow 0 5) 2)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
