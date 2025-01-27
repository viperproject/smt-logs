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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass.AssumeTypeAssumptions.Cell () T@U)
(declare-fun class.AssumeTypeAssumptions.Cell? () T@U)
(declare-fun Tagclass.AssumeTypeAssumptions.Cell? () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun field$data () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun AssumeTypeAssumptions.Cell.data () T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.AssumeTypeAssumptions.Cell (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell_0 (T@U) T@U)
(declare-fun Tclass.AssumeTypeAssumptions.Cell?_0 (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass.AssumeTypeAssumptions.Cell class.AssumeTypeAssumptions.Cell? Tagclass.AssumeTypeAssumptions.Cell? tytagFamily$Cell field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
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
(assert (forall ((AssumeTypeAssumptions.Cell$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) AssumeTypeAssumptions.Cell.data) AssumeTypeAssumptions.Cell$T))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) AssumeTypeAssumptions.Cell.data) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) AssumeTypeAssumptions.Cell.data) AssumeTypeAssumptions.Cell$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) AssumeTypeAssumptions.Cell.data) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@0))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@1) $h@@1))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@2 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@2) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@2) $h@@2))
)))
(assert (= (FDim AssumeTypeAssumptions.Cell.data) 0))
(assert (= (FieldOfDecl class.AssumeTypeAssumptions.Cell? field$data) AssumeTypeAssumptions.Cell.data))
(assert  (not ($IsGhostField AssumeTypeAssumptions.Cell.data)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |704|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |705|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |612|
 :pattern ( ($Unbox T x@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@3))  (and ($Is refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( ($Is refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |625|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |697|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |696|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@4 T@U) ) (!  (and (= (Tag (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@4)) Tagclass.AssumeTypeAssumptions.Cell) (= (TagFamily (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@4)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@4))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@5 T@U) ) (!  (and (= (Tag (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@5)) Tagclass.AssumeTypeAssumptions.Cell?) (= (TagFamily (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@5)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@5))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1181|
 :pattern ( ($Is refType $o@@2 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |703|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |693|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |624|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@7 T@U) ) (! (= (Tclass.AssumeTypeAssumptions.Cell_0 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@7)) AssumeTypeAssumptions.Cell$T@@7)
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@7))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@8 T@U) ) (! (= (Tclass.AssumeTypeAssumptions.Cell?_0 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@8)) AssumeTypeAssumptions.Cell$T@@8)
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@8))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |611|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2981|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@9 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@9)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@9))))
 :qid |unknown.0:0|
 :skolemid |1158|
 :pattern ( ($IsBox bx@@0 (Tclass.AssumeTypeAssumptions.Cell AssumeTypeAssumptions.Cell$T@@9)))
)))
(assert (forall ((AssumeTypeAssumptions.Cell$T@@10 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@10)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@10))))
 :qid |unknown.0:0|
 :skolemid |1180|
 :pattern ( ($IsBox bx@@1 (Tclass.AssumeTypeAssumptions.Cell? AssumeTypeAssumptions.Cell$T@@10)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |702|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |t#0| () T@U)
(declare-fun AssumeTypeAssumptions.Cell$T@@11 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$AssumeTypeAssumptions.Cell.__ctor)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) true)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($IsBox |t#0| AssumeTypeAssumptions.Cell$T@@11) ($IsAllocBox |t#0| AssumeTypeAssumptions.Cell$T@@11 $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
