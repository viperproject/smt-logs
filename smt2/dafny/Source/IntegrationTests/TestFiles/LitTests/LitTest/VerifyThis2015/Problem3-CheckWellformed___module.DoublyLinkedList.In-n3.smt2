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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.DoublyLinkedList () T@U)
(declare-fun Tagclass._module.DoublyLinkedList? () T@U)
(declare-fun tytagFamily$DoublyLinkedList () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.DoublyLinkedList? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.DoublyLinkedList.Injective (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |_module.DoublyLinkedList.Injective#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._module.DoublyLinkedList () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSeq alloc Tagclass._module.DoublyLinkedList Tagclass._module.DoublyLinkedList? tytagFamily$DoublyLinkedList)
)
(assert (= (Tag TBool) TagBool))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.DoublyLinkedList?)  (or (= $o null) (= (dtype $o) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is refType $o Tclass._module.DoublyLinkedList?))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T T@U) (this T@U) (|s#0| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T this (Lit SeqType |s#0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0| (TSeq _module.DoublyLinkedList.Injective$T))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T this (Lit SeqType |s#0|)) (forall ((|j#1| Int) (|k#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#1|) (< |j#1| |k#1|)) (< |k#1| (|Seq#Length| (Lit SeqType |s#0|)))) (or (not (= (|Seq#Index| (Lit SeqType |s#0|) |j#1|) (|Seq#Index| (Lit SeqType |s#0|) |k#1|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |714|
 :pattern ( (|Seq#Index| |s#0| |k#1|) (|Seq#Index| |s#0| |j#1|))
))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |715|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T this (Lit SeqType |s#0|)))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList $h) ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList? $h))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList? $h))
)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.DoublyLinkedList? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.DoublyLinkedList? $h@@0))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.DoublyLinkedList) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.DoublyLinkedList)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx Tclass._module.DoublyLinkedList))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.DoublyLinkedList?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@0 Tclass._module.DoublyLinkedList?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList)  (and ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T@@0 T@U) (this@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@0) (Lit SeqType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@0| (TSeq _module.DoublyLinkedList.Injective$T@@0))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@0) (Lit SeqType |s#0@@0|)) (forall ((|j#2| Int) (|k#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#2|) (< |j#2| |k#2|)) (< |k#2| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (or (not (= (|Seq#Index| (Lit SeqType |s#0@@0|) |j#2|) (|Seq#Index| (Lit SeqType |s#0@@0|) |k#2|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |716|
 :pattern ( (|Seq#Index| |s#0@@0| |k#2|) (|Seq#Index| |s#0@@0| |j#2|))
))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |717|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@0) (Lit SeqType |s#0@@0|)))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
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
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |796|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@3)))
)))
(assert (= (Tag Tclass._module.DoublyLinkedList) Tagclass._module.DoublyLinkedList))
(assert (= (TagFamily Tclass._module.DoublyLinkedList) tytagFamily$DoublyLinkedList))
(assert (= (Tag Tclass._module.DoublyLinkedList?) Tagclass._module.DoublyLinkedList?))
(assert (= (TagFamily Tclass._module.DoublyLinkedList?) tytagFamily$DoublyLinkedList))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T@@1 T@U) (this@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T@@1 this@@1 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@1| (TSeq _module.DoublyLinkedList.Injective$T@@1))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@1 this@@1 |s#0@@1|) (forall ((|j#0| Int) (|k#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#0|) (< |j#0| |k#0|)) (< |k#0| (|Seq#Length| |s#0@@1|))) (or (not (= (|Seq#Index| |s#0@@1| |j#0|) (|Seq#Index| |s#0@@1| |k#0|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |712|
 :pattern ( (|Seq#Index| |s#0@@1| |k#0|) (|Seq#Index| |s#0@@1| |j#0|))
))))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@1 this@@1 |s#0@@1|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
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
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#3@0| () Int)
(declare-fun |k#3@0| () Int)
(declare-fun |s#0@@2| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this@@2 () T@U)
(declare-fun _module.DoublyLinkedList.Injective$T@@2 () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.DoublyLinkedList.Injective)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon10_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |j#3@0|) (< |j#3@0| |k#3@0|)) (< |k#3@0| (|Seq#Length| |s#0@@2|)))) (= (ControlFlow 0 7) 3)) anon10_correct)))
(let ((anon16_Then_correct  (=> (and (and (<= (LitInt 0) |j#3@0|) (< |j#3@0| |k#3@0|)) (< |k#3@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= 0 |j#3@0|) (< |j#3@0| (|Seq#Length| |s#0@@2|)))) (=> (and (<= 0 |j#3@0|) (< |j#3@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 |k#3@0|) (< |k#3@0| (|Seq#Length| |s#0@@2|)))) (=> (and (<= 0 |k#3@0|) (< |k#3@0| (|Seq#Length| |s#0@@2|))) (=> (= (ControlFlow 0 4) 3) anon10_correct))))))))
(let ((anon15_Else_correct  (=> (not (and (<= (LitInt 0) |j#3@0|) (< |j#3@0| |k#3@0|))) (and (=> (= (ControlFlow 0 9) 4) anon16_Then_correct) (=> (= (ControlFlow 0 9) 7) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (<= (LitInt 0) |j#3@0|) (< |j#3@0| |k#3@0|)) (and (=> (= (ControlFlow 0 8) 4) anon16_Then_correct) (=> (= (ControlFlow 0 8) 7) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (< |j#3@0| (LitInt 0)) (and (=> (= (ControlFlow 0 11) 8) anon15_Then_correct) (=> (= (ControlFlow 0 11) 9) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (<= (LitInt 0) |j#3@0|) (and (=> (= (ControlFlow 0 10) 8) anon15_Then_correct) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct)))))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))
(let ((anon13_Else_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon12_Then_correct) (=> (= (ControlFlow 0 13) 12) anon13_Then_correct)) (=> (= (ControlFlow 0 13) 2) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.DoublyLinkedList) ($IsAlloc refType this@@2 Tclass._module.DoublyLinkedList $Heap))) ($Is SeqType |s#0@@2| (TSeq _module.DoublyLinkedList.Injective$T@@2))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
