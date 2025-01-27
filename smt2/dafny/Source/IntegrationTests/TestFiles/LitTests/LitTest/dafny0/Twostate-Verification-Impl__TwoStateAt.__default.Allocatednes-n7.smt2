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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass.TwoStateAt.Cell () T@U)
(declare-fun Tagclass.TwoStateAt.Cell? () T@U)
(declare-fun class.TwoStateAt.Cell? () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TwoStateAt.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TwoStateAt.Cell () T@U)
(declare-fun TwoStateAt.Cell.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.TwoStateAt.Cell Tagclass.TwoStateAt.Cell? class.TwoStateAt.Cell? tytagFamily$Cell field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TwoStateAt.Cell?)  (or (= $o null) (= (dtype $o) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($Is refType $o Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h) ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h))
)))
(assert (= (FDim TwoStateAt.Cell.data) 0))
(assert (= (FieldOfDecl class.TwoStateAt.Cell? field$data) TwoStateAt.Cell.data))
(assert  (not ($IsGhostField TwoStateAt.Cell.data)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.TwoStateAt.Cell? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |797|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.TwoStateAt.Cell? $h@@0))
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
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.TwoStateAt.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) TwoStateAt.Cell.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) TwoStateAt.Cell.data)))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell)  (and ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.TwoStateAt.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) TwoStateAt.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |798|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) TwoStateAt.Cell.data)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1820|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass.TwoStateAt.Cell) Tagclass.TwoStateAt.Cell))
(assert (= (TagFamily Tclass.TwoStateAt.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateAt.Cell?) Tagclass.TwoStateAt.Cell?))
(assert (= (TagFamily Tclass.TwoStateAt.Cell?) tytagFamily$Cell))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@4))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y##0_0@0| () Int)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call4formal@y#0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |y##0_1@0| () Int)
(declare-fun |call4formal@y#0@0@@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |y##0_2@0| () Int)
(declare-fun |call4formal@y#0@0@@1| () T@U)
(declare-fun |y##1_0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |call4formal@y#0@0@@2| () T@U)
(declare-fun |y##2_0@0| () Int)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun |call4formal@y#0@0@@3| () T@U)
(declare-fun |y##3_0@0| () Int)
(declare-fun |call4formal@y#0@0@@4| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |y##3_1@0| () Int)
(declare-fun |call4formal@y#0@0@@5| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |y##3_2@0| () Int)
(declare-fun |call4formal@y#0@0@@6| () T@U)
(declare-fun |y##4_0@0| () Int)
(declare-fun |call4formal@y#0@0@@7| () T@U)
(declare-fun |y##5_0@0| () Int)
(declare-fun call0formal@previous$Heap@0@@0 () T@U)
(declare-fun |call4formal@y#0@0@@8| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TwoStateAt.__default.Allocatedness__Lemma)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon13_Else_correct  (=> (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 48) (- 0 47))) false)))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 46)) true) (=> (= |y##0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 35) (- 0 45)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (=> (= |call4formal@y#0@0| ($Box intType (int_2_U |y##0_0@0|))) (and (=> (= (ControlFlow 0 35) (- 0 44)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (and (=> (= (ControlFlow 0 35) (- 0 43)) ($IsAllocBox |call4formal@y#0@0| TInt $Heap@0)) (=> ($IsAllocBox |call4formal@y#0@0| TInt $Heap@0) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) TwoStateAt.Cell.data)))) (= $Heap@1 $Heap@9))) (and (=> (= (ControlFlow 0 35) (- 0 42)) true) (=> (= |y##0_1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 35) (- 0 41)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (=> (= |call4formal@y#0@0@@0| ($Box intType (int_2_U |y##0_1@0|))) (and (=> (= (ControlFlow 0 35) (- 0 40)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (and (=> (= (ControlFlow 0 35) (- 0 39)) ($IsAllocBox |call4formal@y#0@0@@0| TInt $Heap@0)) (=> ($IsAllocBox |call4formal@y#0@0@@0| TInt $Heap@0) (=> (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) TwoStateAt.Cell.data)))) (= $Heap@9 $Heap@10))) (and (=> (= (ControlFlow 0 35) (- 0 38)) true) (=> (= |y##0_2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 35) (- 0 37)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1) (=> (= |call4formal@y#0@0@@1| ($Box intType (int_2_U |y##0_2@0|))) (and (=> (= (ControlFlow 0 35) (- 0 36)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1) (=> (= (ControlFlow 0 35) (- 0 34)) ($IsAllocBox |call4formal@y#0@0@@1| TInt $Heap@1)))))))))))))))))))))))))))))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 30) (- 0 33)) true) (=> (= |y##1_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 30) (- 0 32)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap) (=> (= |call4formal@y#0@0@@2| ($Box intType (int_2_U |y##1_0@0|))) (and (=> (= (ControlFlow 0 30) (- 0 31)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap) (=> (= (ControlFlow 0 30) (- 0 29)) ($IsAllocBox |call4formal@y#0@0@@2| TInt $Heap)))))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 28)) true) (=> (= |y##2_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 25) (- 0 27)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap) (=> (and (= call0formal@previous$Heap@0 $Heap) (= |call4formal@y#0@0@@3| ($Box intType (int_2_U |y##2_0@0|)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell call0formal@previous$Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell call0formal@previous$Heap@0) (=> (= (ControlFlow 0 25) (- 0 24)) ($IsAllocBox |call4formal@y#0@0@@3| TInt call0formal@previous$Heap@0)))))))))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 23)) true) (and (=> (= (ControlFlow 0 12) (- 0 22)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |y##3_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 12) (- 0 21)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (=> (= |call4formal@y#0@0@@4| ($Box intType (int_2_U |y##3_0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 20)) ($IsAllocBox |call4formal@y#0@0@@4| TInt $Heap@0)) (=> ($IsAllocBox |call4formal@y#0@0@@4| TInt $Heap@0) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) TwoStateAt.Cell.data)))) (= $Heap@1 $Heap@4))) (and (=> (= (ControlFlow 0 12) (- 0 19)) true) (and (=> (= (ControlFlow 0 12) (- 0 18)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |y##3_1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 12) (- 0 17)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0) (=> (= |call4formal@y#0@0@@5| ($Box intType (int_2_U |y##3_1@0|))) (and (=> (= (ControlFlow 0 12) (- 0 16)) ($IsAllocBox |call4formal@y#0@0@@5| TInt $Heap@0)) (=> ($IsAllocBox |call4formal@y#0@0@@5| TInt $Heap@0) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0) TwoStateAt.Cell.data)))) (= $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 12) (- 0 15)) true) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |y##3_2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@1) (=> (and (= |call4formal@y#0@0@@6| ($Box intType (int_2_U |y##3_2@0|))) (= (ControlFlow 0 12) (- 0 11))) ($IsAllocBox |call4formal@y#0@0@@6| TInt $Heap@1))))))))))))))))))))))))))))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 10)) true) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |y##4_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap) (=> (and (= |call4formal@y#0@0@@7| ($Box intType (int_2_U |y##4_0@0|))) (= (ControlFlow 0 7) (- 0 6))) ($IsAllocBox |call4formal@y#0@0@@7| TInt $Heap))))))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |y##5_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap)) (=> ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap) (=> (= call0formal@previous$Heap@0@@0 $Heap) (=> (and (= |call4formal@y#0@0@@8| ($Box intType (int_2_U |y##5_0@0|))) (= (ControlFlow 0 2) (- 0 1))) ($IsAllocBox |call4formal@y#0@0@@8| TInt call0formal@previous$Heap@0@@0)))))))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#3| null $Heap alloc false)) (= |x##0@0| (LitInt 5))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.TwoStateAt.Cell) ($IsAlloc refType call2formal@this Tclass.TwoStateAt.Cell $Heap)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.TwoStateAt.Cell) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) |x##0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc))))) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |TwostateVerificationdfy.244:5|
 :skolemid |801|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 49) (- 0 54)) true) (and (=> (= (ControlFlow 0 49) (- 0 53)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 49) (- 0 52)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 TwoStateAt.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 TwoStateAt.Cell.data)) (and (=> (= (ControlFlow 0 49) (- 0 51)) true) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) 400)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (and (and (and (and (and (=> (= (ControlFlow 0 49) 2) anon8_Then_correct) (=> (= (ControlFlow 0 49) 7) anon9_Then_correct)) (=> (= (ControlFlow 0 49) 12) anon10_Then_correct)) (=> (= (ControlFlow 0 49) 25) anon11_Then_correct)) (=> (= (ControlFlow 0 49) 30) anon12_Then_correct)) (=> (= (ControlFlow 0 49) 35) anon13_Then_correct)) (=> (= (ControlFlow 0 49) 48) anon13_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass.TwoStateAt.Cell) ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 55) 49))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 8))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 25) (- 27))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 30) (- 32))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
