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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U Int Int T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.M0 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.M0#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc Tagclass._module.C Tagclass._module.C? tytagFamily$C)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |968|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.C $h) ($IsAlloc refType |c#0| Tclass._module.C? $h))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C? $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |854|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |855|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |762|
 :pattern ( ($Unbox T x@@3))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |782|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |783|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |775|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |847|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |846|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( ($IsBox bx@@1 Tclass._module.C))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1410|
 :pattern ( ($IsBox bx@@2 Tclass._module.C?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.C)  (and ($Is refType |c#0@@0| Tclass._module.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C?))
)))
(assert (forall ((s T@U) (x@@4 T@U) ) (! (= (|Seq#Contains| s x@@4) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@4))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |966|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |967|
 :pattern ( (|Seq#Contains| s x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| Int) (|l#6| Int) (|l#7| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (or (= $o@@1 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@1))) (exists (($i Int) ) (!  (and (and (<= |l#5| $i) (< $i |l#6|)) (= (|Seq#Index| |l#7| $i) ($Box refType $o@@1)))
 :qid |LabelsOldAtdfy.256:20|
 :skolemid |1409|
)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1673|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) $o@@1 $f))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |853|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |765|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |774|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |957|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |803|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |804|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |809|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |810|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |737|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |738|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |743|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |744|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |761|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |768|
 :pattern ( ($IsBox bx@@5 (TSet t@@7)))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |771|
 :pattern ( ($IsBox bx@@6 (TSeq t@@8)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (|u#0| T@U) (|s#0| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.M0#canCall| $prevHeap $Heap |u#0| |s#0| |t#0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) ($Is refType |u#0| Tclass._module.C)) ($Is SetType |s#0| (TSet Tclass._module.C))) ($Is SeqType |t#0| (TSeq Tclass._module.C))))) (= (_module.__default.M0 $prevHeap $Heap |u#0| |s#0| |t#0|)  (and (and (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@2 null)) (not true)) (=> (= $o@@2 |u#0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@2) $f@@0))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1402|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) $f@@0))
)) (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@3 null)) (not true)) (=> (|Set#IsMember| |s#0| ($Box refType $o@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@3) $f@@1))))
 :qid |LabelsOldAtdfy.260:6|
 :skolemid |1403|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
))) (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@4 null)) (not true)) (=> (exists (($i@@0 Int) ) (!  (and (and (<= 0 $i@@0) (< $i@@0 (|Seq#Length| |t#0|))) (= (|Seq#Index| |t#0| $i@@0) ($Box refType $o@@4)))
 :qid |LabelsOldAtdfy.261:6|
 :skolemid |1404|
)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@4) $f@@2))))
 :qid |LabelsOldAtdfy.261:6|
 :skolemid |1405|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) $f@@2))
)))))
 :qid |LabelsOldAtdfy.256:20|
 :skolemid |1408|
 :pattern ( (_module.__default.M0 $prevHeap $Heap |u#0| |s#0| |t#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |958|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |799|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |789|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |790|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |778|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (|u#0@@0| T@U) (|s#0@@0| T@U) (|t#0@@0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.M0#canCall| $prevHeap@@0 $h0 |u#0@@0| |s#0@@0| |t#0@@0|) (and (and ($Is refType |u#0@@0| Tclass._module.C) ($Is SetType |s#0@@0| (TSet Tclass._module.C))) ($Is SeqType |t#0@@0| (TSeq Tclass._module.C))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (or (= $o@@5 |u#0@@0|) (|Set#IsMember| |s#0@@0| ($Box refType $o@@5))) (exists (($i@@1 Int) ) (!  (and (and (<= 0 $i@@1) (< $i@@1 (|Seq#Length| |t#0@@0|))) (= (|Seq#Index| |t#0@@0| $i@@1) ($Box refType $o@@5)))
 :qid |LabelsOldAtdfy.256:20|
 :skolemid |1396|
)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.__default.M0 $prevHeap@@0 $h0 |u#0@@0| |s#0@@0| |t#0@@0|) (_module.__default.M0 $prevHeap@@0 $h1 |u#0@@0| |s#0@@0| |t#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1399|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.M0 $prevHeap@@0 $h1 |u#0@@0| |s#0@@0| |t#0@@0|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun |u#0@@1| () T@U)
(declare-fun |s#0@@1| () T@U)
(declare-fun |t#0@@1| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |$unchanged#x1@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |$unchanged#x0@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |_s2s_0#0@0| () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.M0)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon10_correct  (=> (and (= (_module.__default.M0 $Heap@@0 current$Heap |u#0@@1| |s#0@@1| |t#0@@1|)  (and (and (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@6 null)) (not true)) (=> (= $o@@6 |u#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) $f@@4))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1422|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@6) $f@@4))
)) (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@7 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@7) $f@@5))))
 :qid |LabelsOldAtdfy.260:6|
 :skolemid |1423|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@7) $f@@5))
))) (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@8 null)) (not true)) (=> (exists (($i@@2 Int) ) (!  (and (and (<= 0 $i@@2) (< $i@@2 (|Seq#Length| |t#0@@1|))) (= (|Seq#Index| |t#0@@1| $i@@2) ($Box refType $o@@8)))
 :qid |LabelsOldAtdfy.261:6|
 :skolemid |1424|
)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@8) $f@@6))))
 :qid |LabelsOldAtdfy.261:6|
 :skolemid |1425|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@6))
)))) ($Is boolType (bool_2_U (_module.__default.M0 $Heap@@0 current$Heap |u#0@@1| |s#0@@1| |t#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#2@1|))))))))
(let ((anon16_Else_correct  (=> (not (and (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@9 null)) (not true)) (=> (= $o@@9 |u#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@9) $f@@7))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1416|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@7))
)) (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@10 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@10)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@10) $f@@8))))
 :qid |LabelsOldAtdfy.260:6|
 :skolemid |1417|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@8))
)))) (=> (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 8) 3)) anon10_correct))))
(let ((anon16_Then_correct  (=> (and (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (= $o@@11 |u#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11) $f@@9))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1416|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@9))
)) (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (|Set#IsMember| |s#0@@1| ($Box refType $o@@12)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@12) $f@@10))))
 :qid |LabelsOldAtdfy.260:6|
 :skolemid |1417|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@12) $f@@10))
))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (and (<= 0 |$unchanged#x1@0|) (< |$unchanged#x1@0| (|Seq#Length| |t#0@@1|))) ($IsAlloc refType ($Unbox refType (|Seq#Index| |t#0@@1| |$unchanged#x1@0|)) Tclass._module.C $Heap@@0))) (=> (=> (and (<= 0 |$unchanged#x1@0|) (< |$unchanged#x1@0| (|Seq#Length| |t#0@@1|))) ($IsAlloc refType ($Unbox refType (|Seq#Index| |t#0@@1| |$unchanged#x1@0|)) Tclass._module.C $Heap@@0)) (=> (= |b$reqreads#2@0| (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@13) alloc)))) (exists (($i@@3 Int) ) (!  (and (and (<= 0 $i@@3) (< $i@@3 (|Seq#Length| |t#0@@1|))) (= (|Seq#Index| |t#0@@1| $i@@3) ($Box refType $o@@13)))
 :qid |LabelsOldAtdfy.261:16|
 :skolemid |1414|
))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@13 $f@@11)))
 :qid |LabelsOldAtdfy.261:16|
 :skolemid |1415|
))) (=> (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 6) 3)) anon10_correct)))))))
(let ((anon15_Else_correct  (=> (and (not (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 |u#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@14) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@14) $f@@12))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1413|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@14) $f@@12))
))) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 11) 6) anon16_Then_correct) (=> (= (ControlFlow 0 11) 8) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (forall (($o@@15 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |u#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@15) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@15) $f@@13))))
 :qid |LabelsOldAtdfy.259:6|
 :skolemid |1413|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@15) $f@@13))
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (|Set#IsMember| |s#0@@1| ($Box refType |$unchanged#x0@0|)) ($IsAlloc refType |$unchanged#x0@0| Tclass._module.C $Heap@@0))) (=> (=> (|Set#IsMember| |s#0@@1| ($Box refType |$unchanged#x0@0|)) ($IsAlloc refType |$unchanged#x0@0| Tclass._module.C $Heap@@0)) (=> (and (= |b$reqreads#1@0| (forall (($o@@16 T@U) ($f@@14 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@16) alloc)))) (|Set#IsMember| |s#0@@1| ($Box refType $o@@16))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@16 $f@@14)))
 :qid |LabelsOldAtdfy.260:16|
 :skolemid |1412|
))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 9) 6) anon16_Then_correct) (=> (= (ControlFlow 0 9) 8) anon16_Else_correct))))))))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) ($IsAlloc refType |u#0@@1| Tclass._module.C $Heap@@0)) (=> ($IsAlloc refType |u#0@@1| Tclass._module.C $Heap@@0) (=> (= |b$reqreads#0@0| (forall (($o@@17 T@U) ($f@@15 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@17) alloc)))) (= $o@@17 |u#0@@1|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@17 $f@@15)))
 :qid |LabelsOldAtdfy.259:16|
 :skolemid |1411|
))) (and (=> (= (ControlFlow 0 12) 9) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct)))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (not (|Seq#Contains| |t#0@@1| ($Box refType |_s2s_0#0@0|))) (and (=> (= (ControlFlow 0 16) 1) anon14_Then_correct) (=> (= (ControlFlow 0 16) 12) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (|Seq#Contains| |t#0@@1| ($Box refType |_s2s_0#0@0|)) (and (=> (= (ControlFlow 0 15) 1) anon14_Then_correct) (=> (= (ControlFlow 0 15) 12) anon14_Else_correct)))))
(let ((anon12_Then_correct  (=> (and ($Is refType |_s2s_0#0@0| Tclass._module.C?) ($IsAlloc refType |_s2s_0#0@0| Tclass._module.C? current$Heap)) (and (=> (= (ControlFlow 0 17) 15) anon13_Then_correct) (=> (= (ControlFlow 0 17) 16) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not (and ($Is refType |_s2s_0#0@0| Tclass._module.C?) ($IsAlloc refType |_s2s_0#0@0| Tclass._module.C? current$Heap))) (and (=> (= (ControlFlow 0 14) 1) anon14_Then_correct) (=> (= (ControlFlow 0 14) 12) anon14_Else_correct)))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null current$Heap alloc |u#0@@1| |s#0@@1| 0 (|Seq#Length| |t#0@@1|) |t#0@@1|)) (and (=> (= (ControlFlow 0 18) 17) anon12_Then_correct) (=> (= (ControlFlow 0 18) 14) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is refType |u#0@@1| Tclass._module.C) ($IsAlloc refType |u#0@@1| Tclass._module.C previous$Heap)) (and ($Is SetType |s#0@@1| (TSet Tclass._module.C)) ($IsAlloc SetType |s#0@@1| (TSet Tclass._module.C) previous$Heap))) (=> (and (and (and ($Is SeqType |t#0@@1| (TSeq Tclass._module.C)) ($IsAlloc SeqType |t#0@@1| (TSeq Tclass._module.C) previous$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 19) 18))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
