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
(declare-fun Tagclass._module.DoublyLinkedList () T@U)
(declare-fun Tagclass._module.DoublyLinkedList? () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.DoublyLinkedList? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.DoublyLinkedList.PopMiddle (T@U T@U T@U Int) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.DoublyLinkedList.PopMiddle#canCall| (T@U T@U T@U Int) Bool)
(declare-fun Tclass._module.DoublyLinkedList () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun _module.DoublyLinkedList.Injective (T@U T@U T@U) Bool)
(declare-fun |_module.DoublyLinkedList.Injective#canCall| (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass._System.nat Tagclass._module.DoublyLinkedList Tagclass._module.DoublyLinkedList? tytagFamily$nat tytagFamily$DoublyLinkedList)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.DoublyLinkedList?)  (or (= $o null) (= (dtype $o) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is refType $o Tclass._module.DoublyLinkedList?))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.PopMiddle$T T@U) (this T@U) (|s#0| T@U) (|k#0| Int) ) (!  (=> (or (|_module.DoublyLinkedList.PopMiddle#canCall| _module.DoublyLinkedList.PopMiddle$T this (Lit SeqType |s#0|) (LitInt |k#0|)) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0| (TSeq _module.DoublyLinkedList.PopMiddle$T))) (<= (LitInt 0) |k#0|)) (< |k#0| (|Seq#Length| (Lit SeqType |s#0|)))))) (= (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T this (Lit SeqType |s#0|) (LitInt |k#0|)) (|Seq#Append| (|Seq#Take| (Lit SeqType |s#0|) (LitInt |k#0|)) (|Seq#Drop| (Lit SeqType |s#0|) (LitInt (+ |k#0| 1))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |708|
 :pattern ( (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T this (Lit SeqType |s#0|) (LitInt |k#0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T T@U) (this@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T this@@0 (Lit SeqType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@0| (TSeq _module.DoublyLinkedList.Injective$T))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T this@@0 (Lit SeqType |s#0@@0|)) (forall ((|j#1| Int) (|k#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#1|) (< |j#1| |k#1|)) (< |k#1| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (or (not (= (|Seq#Index| (Lit SeqType |s#0@@0|) |j#1|) (|Seq#Index| (Lit SeqType |s#0@@0|) |k#1|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |714|
 :pattern ( (|Seq#Index| |s#0@@0| |k#1|) (|Seq#Index| |s#0@@0| |j#1|))
))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |715|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T this@@0 (Lit SeqType |s#0@@0|)))
))))
(assert (forall ((s T@U) (t T@U) (n Int) ) (!  (=> (= n (|Seq#Length| s)) (and (= (|Seq#Take| (|Seq#Append| s t) n) s) (= (|Seq#Drop| (|Seq#Append| s t) n) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s t) n))
 :pattern ( (|Seq#Drop| (|Seq#Append| s t) n))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList $h@@0) ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList? $h@@0))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DoublyLinkedList? $h@@0))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.DoublyLinkedList? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.DoublyLinkedList? $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.PopMiddle$T@@0 T@U) (this@@1 T@U) (|s#0@@1| T@U) (|k#0@@0| Int) ) (!  (=> (or (|_module.DoublyLinkedList.PopMiddle#canCall| _module.DoublyLinkedList.PopMiddle$T@@0 this@@1 |s#0@@1| |k#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@1| (TSeq _module.DoublyLinkedList.PopMiddle$T@@0))) (<= (LitInt 0) |k#0@@0|)) (< |k#0@@0| (|Seq#Length| |s#0@@1|))))) (= (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@0 this@@1 |s#0@@1| |k#0@@0|) (|Seq#Append| (|Seq#Take| |s#0@@1| |k#0@@0|) (|Seq#Drop| |s#0@@1| (+ |k#0@@0| 1)))))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@0 this@@1 |s#0@@1| |k#0@@0|))
))))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
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
(assert (forall ((s@@1 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@1))) (= (|Seq#Index| (|Seq#Take| s@@1 n@@1) j) (|Seq#Index| s@@1 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@1 n@@1) j))
 :pattern ( (|Seq#Index| s@@1 j) (|Seq#Take| s@@1 n@@1))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@2))) (= (|Seq#Length| (|Seq#Drop| s@@2 n@@2)) (- (|Seq#Length| s@@2) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@2 n@@2)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t@@0 h) ($IsAlloc T@@1 v t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t@@0 h))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@3) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@0) (|Seq#Index| s@@3 (+ j@@0 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.DoublyLinkedList) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.DoublyLinkedList)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@0 Tclass._module.DoublyLinkedList))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.DoublyLinkedList?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@1 Tclass._module.DoublyLinkedList?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList)  (and ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DoublyLinkedList?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T@@0 T@U) (this@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@2) (Lit SeqType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@2| (TSeq _module.DoublyLinkedList.Injective$T@@0))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@2) (Lit SeqType |s#0@@2|)) (forall ((|j#2| Int) (|k#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#2|) (< |j#2| |k#2|)) (< |k#2| (|Seq#Length| (Lit SeqType |s#0@@2|)))) (or (not (= (|Seq#Index| (Lit SeqType |s#0@@2|) |j#2|) (|Seq#Index| (Lit SeqType |s#0@@2|) |k#2|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |716|
 :pattern ( (|Seq#Index| |s#0@@2| |k#2|) (|Seq#Index| |s#0@@2| |j#2|))
))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |717|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@0 (Lit refType this@@2) (Lit SeqType |s#0@@2|)))
))))
(assert (forall ((s@@4 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Take| s@@4 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@4 n@@4)))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@1) ($Is T@@2 v@@0 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@1))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.DoublyLinkedList.PopMiddle$T@@1 T@U) (this@@3 T@U) (|s#0@@3| T@U) (|k#0@@1| Int) ) (!  (=> (and (or (|_module.DoublyLinkedList.PopMiddle#canCall| _module.DoublyLinkedList.PopMiddle$T@@1 this@@3 |s#0@@3| |k#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@3 null)) (not true)) ($IsAlloc refType this@@3 Tclass._module.DoublyLinkedList $Heap)) (and ($Is SeqType |s#0@@3| (TSeq _module.DoublyLinkedList.PopMiddle$T@@1)) ($IsAlloc SeqType |s#0@@3| (TSeq _module.DoublyLinkedList.PopMiddle$T@@1) $Heap))) (<= (LitInt 0) |k#0@@1|)) (< |k#0@@1| (|Seq#Length| |s#0@@3|))))) ($IsGoodHeap $Heap)) ($IsAlloc SeqType (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@1 this@@3 |s#0@@3| |k#0@@1|) (TSeq _module.DoublyLinkedList.PopMiddle$T@@1) $Heap))
 :qid |Problem3dfy.99:18|
 :skolemid |705|
 :pattern ( ($IsAlloc SeqType (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@1 this@@3 |s#0@@3| |k#0@@1|) (TSeq _module.DoublyLinkedList.PopMiddle$T@@1) $Heap))
))))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
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
(assert (forall ((bx@@2 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@4)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.DoublyLinkedList) Tagclass._module.DoublyLinkedList))
(assert (= (TagFamily Tclass._module.DoublyLinkedList) tytagFamily$DoublyLinkedList))
(assert (= (Tag Tclass._module.DoublyLinkedList?) Tagclass._module.DoublyLinkedList?))
(assert (= (TagFamily Tclass._module.DoublyLinkedList?) tytagFamily$DoublyLinkedList))
(assert (forall ((s@@6 T@U) (n@@5 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@5) (<= n@@5 k)) (< k (|Seq#Length| s@@6))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@5) (- k n@@5)) (|Seq#Index| s@@6 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@6 k) (|Seq#Drop| s@@6 n@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.Injective$T@@1 T@U) (this@@4 T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.Injective$T@@1 this@@4 |s#0@@4|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@4| (TSeq _module.DoublyLinkedList.Injective$T@@1))))) (= (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@1 this@@4 |s#0@@4|) (forall ((|j#0| Int) (|k#0@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |j#0|) (< |j#0| |k#0@@2|)) (< |k#0@@2| (|Seq#Length| |s#0@@4|))) (or (not (= (|Seq#Index| |s#0@@4| |j#0|) (|Seq#Index| |s#0@@4| |k#0@@2|))) (not true)))
 :qid |Problem3dfy.105:12|
 :skolemid |712|
 :pattern ( (|Seq#Index| |s#0@@4| |k#0@@2|) (|Seq#Index| |s#0@@4| |j#0|))
))))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.Injective$T@@1 this@@4 |s#0@@4|))
))))
(assert (forall ((s@@7 T@U) (m@@4 Int) (n@@6 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@6)) (<= (+ m@@4 n@@6) (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@6) (|Seq#Drop| s@@7 (+ m@@4 n@@6))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@6))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@7 Int) ) (!  (and (=> (< n@@7 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@7) (|Seq#Index| s0@@0 n@@7))) (=> (<= (|Seq#Length| s0@@0) n@@7) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@7) (|Seq#Index| s1@@0 (- n@@7 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@7))
)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.PopMiddle$T@@2 T@U) (this@@5 T@U) (|s#0@@5| T@U) (|k#0@@3| Int) ) (!  (=> (or (|_module.DoublyLinkedList.PopMiddle#canCall| _module.DoublyLinkedList.PopMiddle$T@@2 this@@5 |s#0@@5| |k#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@5| (TSeq _module.DoublyLinkedList.PopMiddle$T@@2))) (<= (LitInt 0) |k#0@@3|)) (< |k#0@@3| (|Seq#Length| |s#0@@5|))))) ($Is SeqType (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@2 this@@5 |s#0@@5| |k#0@@3|) (TSeq _module.DoublyLinkedList.PopMiddle$T@@2)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@2 this@@5 |s#0@@5| |k#0@@3|))
))))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((s@@9 T@U) (n@@8 Int) ) (!  (=> (= n@@8 0) (= (|Seq#Take| s@@9 n@@8) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@9 n@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.DoublyLinkedList.PopMiddle$T@@3 T@U) (this@@6 T@U) (|s#0@@6| T@U) (|k#0@@4| Int) ) (!  (=> (or (|_module.DoublyLinkedList.PopMiddle#canCall| _module.DoublyLinkedList.PopMiddle$T@@3 (Lit refType this@@6) (Lit SeqType |s#0@@6|) (LitInt |k#0@@4|)) (and (< 0 $FunctionContextHeight) (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.DoublyLinkedList)) ($Is SeqType |s#0@@6| (TSeq _module.DoublyLinkedList.PopMiddle$T@@3))) (<= (LitInt 0) |k#0@@4|)) (< |k#0@@4| (|Seq#Length| (Lit SeqType |s#0@@6|)))))) (= (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@3 (Lit refType this@@6) (Lit SeqType |s#0@@6|) (LitInt |k#0@@4|)) (|Seq#Append| (|Seq#Take| (Lit SeqType |s#0@@6|) (LitInt |k#0@@4|)) (|Seq#Drop| (Lit SeqType |s#0@@6|) (LitInt (+ |k#0@@4| 1))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |709|
 :pattern ( (_module.DoublyLinkedList.PopMiddle _module.DoublyLinkedList.PopMiddle$T@@3 (Lit refType this@@6) (Lit SeqType |s#0@@6|) (LitInt |k#0@@4|)))
))))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |k#0@@5| () Int)
(declare-fun |s#0@@7| () T@U)
(declare-fun this@@7 () T@U)
(declare-fun _module.DoublyLinkedList.InjectiveAfterPop$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.DoublyLinkedList.InjectiveAfterPop)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@0 alloc false)) (< |k#0@@5| (|Seq#Length| |s#0@@7|))) (=> (and (and ($IsAllocBox ($Box refType this@@7) Tclass._module.DoublyLinkedList? $Heap@@0) ($IsAlloc SeqType |s#0@@7| (TSeq _module.DoublyLinkedList.InjectiveAfterPop$T) $Heap@@0)) (and (|_module.DoublyLinkedList.Injective#canCall| _module.DoublyLinkedList.InjectiveAfterPop$T this@@7 |s#0@@7|) (_module.DoublyLinkedList.Injective _module.DoublyLinkedList.InjectiveAfterPop$T this@@7 |s#0@@7|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) ($IsAllocBox ($Box refType this@@7) Tclass._module.DoublyLinkedList? $Heap@0))) (and (and ($IsAllocBox ($Box refType this@@7) Tclass._module.DoublyLinkedList? $Heap@0) ($IsAlloc SeqType |s#0@@7| (TSeq _module.DoublyLinkedList.InjectiveAfterPop$T) $Heap@0)) (and ($IsAlloc intType (int_2_U |k#0@@5|) Tclass._System.nat $Heap@0) (= (ControlFlow 0 2) (- 0 1))))) (< |k#0@@5| (|Seq#Length| |s#0@@7|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.DoublyLinkedList) ($IsAlloc refType this@@7 Tclass._module.DoublyLinkedList $Heap@@0)))) (=> (and (and (and ($Is SeqType |s#0@@7| (TSeq _module.DoublyLinkedList.InjectiveAfterPop$T)) ($IsAlloc SeqType |s#0@@7| (TSeq _module.DoublyLinkedList.InjectiveAfterPop$T) $Heap@@0)) (<= (LitInt 0) |k#0@@5|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
