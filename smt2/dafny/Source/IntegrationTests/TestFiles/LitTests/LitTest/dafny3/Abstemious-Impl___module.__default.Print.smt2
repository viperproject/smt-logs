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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((_module.Stream$T@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#14#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#14#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#13#0#0| |a#13#1#0|))
 :qid |Abstemiousdfy.51:29|
 :skolemid |800|
)))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( (_module.Stream.Cons_q d@@2))
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
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TChar) (and (= ($Box charType ($Unbox charType bx@@0)) bx@@0) ($Is charType ($Unbox charType bx@@0) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@0 TChar))
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
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|)) |##_module.Stream.Cons|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |798|
 :pattern ( (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#0#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |806|
 :pattern ( (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|)) |a#16#1#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |807|
 :pattern ( (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i))
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
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@3) $h))) ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |821|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
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
(assert (forall ((_module.Stream$T@@6 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1)  (and ($IsAllocBox |a#14#0#0@@0| _module.Stream$T@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#14#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |defass#s#1@0| () Bool)
(declare-fun |s#1@0| () T@U)
(declare-fun |$rhs#0_0@1| () Int)
(declare-fun |$rhs#0_1@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun _module._default.Print$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |msg#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |defass#s#1| () Bool)
(declare-fun |s#1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Print)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_Else_correct  (=> (and (< |i#0@0| |n#0|) (= |$decr$loop#00@1| (- |n#0| |i#0@0|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) |defass#s#1@0|) (=> |defass#s#1@0| (=> (_module.Stream.Cons_q |s#1@0|) (=> (and (_module.Stream.Cons_q |s#1@0|) (= |$rhs#0_0@1| (+ |i#0@0| 1))) (and (=> (= (ControlFlow 0 5) (- 0 7)) |defass#s#1@0|) (=> |defass#s#1@0| (=> (_module.Stream.Cons_q |s#1@0|) (=> (and (_module.Stream.Cons_q |s#1@0|) (= |$rhs#0_1@1| (_module.Stream.tail |s#1@0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- |n#0| |$rhs#0_0@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |n#0| |$rhs#0_0@1|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- |n#0| |$rhs#0_0@1|) |$decr$loop#00@1|)))))))))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 9) 3) anon9_Then_correct) (=> (= (ControlFlow 0 9) 5) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 10) 2) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (=> |defass#s#1@0| (and ($Is DatatypeTypeType |s#1@0| (Tclass._module.Stream _module._default.Print$T)) ($IsAlloc DatatypeTypeType |s#1@0| (Tclass._module.Stream _module._default.Print$T) $Heap))) (=> (and (and (and (and (and (and (not false) (<= 0 |i#0@0|)) |defass#s#1@0|) (= |$rhs#0@0| 0)) true) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Abstemiousdfy.28:3|
 :skolemid |613|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Abstemiousdfy.28:3|
 :skolemid |614|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))) (and (=> true |defass#s#1@0|) (<= (- |n#0| |i#0@0|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 11) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) anon7_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#0@0| (LitInt 0))) (and (= |$decr_init$loop#00@0| (- |n#0| |$rhs#0@0|)) (= (ControlFlow 0 12) 11))) anon7_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0|)) (and ($Is SeqType |msg#0| (TSeq TChar)) ($IsAlloc SeqType |msg#0| (TSeq TChar) $Heap))) (and (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.Print$T)) ($IsAlloc DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.Print$T) $Heap)) (|$IsA#_module.Stream| |s#0|)) (and (and (=> |defass#s#1| (and ($Is DatatypeTypeType |s#1| (Tclass._module.Stream _module._default.Print$T)) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream _module._default.Print$T) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
