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
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.T () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSeq alloc)
)
(assert ($AlwaysAllocated Tclass._module.T))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((s@@0 T@U) (x@@5 T@U) ) (! (= (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s@@0))) (= x@@5 (|Seq#Index| s@@0 i)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@0 i))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@0) x@@5)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@0) x@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|MultiSet#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@0 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@0)) (<= (|MultiSet#Multiplicity| ms bx@@0) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@0))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|MultiSet#Card| s@@1))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@3 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@3))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@3))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@0) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@0 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@0) h@@4))
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
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((s@@3 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@3) 0) (= s@@3 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@3) 0)) (not true)) (exists ((x@@7 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@3 x@@7))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@3 x@@7))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@3))
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
 :skolemid |494|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@4)) (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@4)))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|MultiSet#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| a@@1 o@@1) (|MultiSet#Multiplicity| b@@1 o@@1))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@1 o@@1))
 :pattern ( (|MultiSet#Multiplicity| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@1 b@@1))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun |r2#0@0| () T@U)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun _module.__default.f (T@U) Bool)
(declare-fun |_module.__default.f#canCall| (T@U) Bool)
(declare-fun |call2formal@r#0@@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@r#0@0@@0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |r2#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is SeqType |r1#0@0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |r1#0@0| (TSeq Tclass._module.T) $Heap)) (and ($Is SeqType |r2#0@0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |r2#0@0| (TSeq Tclass._module.T) $Heap))) (=> (and (and (and (and (and ($Is SeqType |call2formal@r#0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |call2formal@r#0| (TSeq Tclass._module.T) $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is SeqType |call2formal@r#0@0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |call2formal@r#0@0| (TSeq Tclass._module.T) $Heap@0)) (and (forall ((|e#1| T@U) ) (!  (=> ($IsBox |e#1| Tclass._module.T) (|_module.__default.f#canCall| |e#1|))
 :qid |Bug165dfy.8:19|
 :skolemid |484|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#1|))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1|))
 :pattern ( (_module.__default.f |e#1|))
)) (forall ((|e#1@@0| T@U) ) (!  (=> ($IsBox |e#1@@0| Tclass._module.T) (=> (_module.__default.f |e#1@@0|) (= (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1@@0|) (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#1@@0|))))
 :qid |Bug165dfy.8:19|
 :skolemid |485|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#1@@0|))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1@@0|))
 :pattern ( (_module.__default.f |e#1@@0|))
))))) (and (and (and (forall ((|e#3| T@U) ) (!  (=> ($IsBox |e#3| Tclass._module.T) (|_module.__default.f#canCall| |e#3|))
 :qid |Bug165dfy.9:19|
 :skolemid |486|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#3|))
 :pattern ( (_module.__default.f |e#3|))
)) (forall ((|e#3@@0| T@U) ) (!  (=> ($IsBox |e#3@@0| Tclass._module.T) (=> (not (_module.__default.f |e#3@@0|)) (= (LitInt 0) (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#3@@0|))))
 :qid |Bug165dfy.9:19|
 :skolemid |487|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0|) |e#3@@0|))
 :pattern ( (_module.__default.f |e#3@@0|))
))) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Bug165dfy.7:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (and (and ($Is SeqType |call2formal@r#0@@0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |call2formal@r#0@@0| (TSeq Tclass._module.T) $Heap)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))))) (and (and (and (and ($Is SeqType |call2formal@r#0@0@@0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |call2formal@r#0@0@@0| (TSeq Tclass._module.T) $Heap@1)) (forall ((|e#1@@1| T@U) ) (!  (=> ($IsBox |e#1@@1| Tclass._module.T) (|_module.__default.f#canCall| |e#1@@1|))
 :qid |Bug165dfy.8:19|
 :skolemid |484|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#1@@1|))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1@@1|))
 :pattern ( (_module.__default.f |e#1@@1|))
))) (and (forall ((|e#1@@2| T@U) ) (!  (=> ($IsBox |e#1@@2| Tclass._module.T) (=> (_module.__default.f |e#1@@2|) (= (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1@@2|) (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#1@@2|))))
 :qid |Bug165dfy.8:19|
 :skolemid |485|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#1@@2|))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |s1#0|) |e#1@@2|))
 :pattern ( (_module.__default.f |e#1@@2|))
)) (forall ((|e#3@@1| T@U) ) (!  (=> ($IsBox |e#3@@1| Tclass._module.T) (|_module.__default.f#canCall| |e#3@@1|))
 :qid |Bug165dfy.9:19|
 :skolemid |486|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#3@@1|))
 :pattern ( (_module.__default.f |e#3@@1|))
)))) (and (and (forall ((|e#3@@2| T@U) ) (!  (=> ($IsBox |e#3@@2| Tclass._module.T) (=> (not (_module.__default.f |e#3@@2|)) (= (LitInt 0) (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#3@@2|))))
 :qid |Bug165dfy.9:19|
 :skolemid |487|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| |call2formal@r#0@0@@0|) |e#3@@2|))
 :pattern ( (_module.__default.f |e#3@@2|))
)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Bug165dfy.7:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= (ControlFlow 0 2) (- 0 1)))))) (|MultiSet#Equal| (|MultiSet#FromSeq| |call2formal@r#0@0|) (|MultiSet#FromSeq| |call2formal@r#0@0@@0|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |s1#0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |s1#0| (TSeq Tclass._module.T) $Heap))) (and (and ($Is SeqType |r1#0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |r1#0| (TSeq Tclass._module.T) $Heap)) true)) (and (and (and ($Is SeqType |r2#0| (TSeq Tclass._module.T)) ($IsAlloc SeqType |r2#0| (TSeq Tclass._module.T) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
