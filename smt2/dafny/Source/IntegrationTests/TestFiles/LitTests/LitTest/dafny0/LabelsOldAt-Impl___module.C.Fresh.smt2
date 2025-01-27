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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$x () T@U)
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
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun _module.C.x () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.C Tagclass._module.C? class._module.C? tytagFamily$C field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
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
(assert (= (FDim _module.C.x) 0))
(assert (= (FieldOfDecl class._module.C? field$x) _module.C.x))
(assert  (not ($IsGhostField _module.C.x)))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |751|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |762|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1524|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.x)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |846|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1674|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.C)  (and ($Is refType |c#0@@0| Tclass._module.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |853|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |843|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |761|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.C.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.C.x)))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@5))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |852|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@5)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@6)) (Lit BoxType ($Box T@@3 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |752|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@6)))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |797|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |776|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0| () Bool)
(declare-fun |c#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |y#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#2_0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |defass#e#5_0| () Bool)
(declare-fun |e#5_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.C.Fresh)
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
 (=> (= (ControlFlow 0 0) 54) (let ((anon19_correct  (=> (= (ControlFlow 0 25) (- 0 24)) (or |b#0| (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc)))))))))
(let ((anon32_Else_correct  (=> (and |b#0| (= (ControlFlow 0 28) 25)) anon19_correct)))
(let ((anon32_Then_correct  (=> (not |b#0|) (and (=> (= (ControlFlow 0 26) (- 0 27)) true) (=> (= (ControlFlow 0 26) 25) anon19_correct)))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 29) 26) anon32_Then_correct) (=> (= (ControlFlow 0 29) 28) anon32_Else_correct))))
(let ((anon31_Else_correct  (=> (and (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 23) (- 0 22))) false)))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) true) (=> (= (ControlFlow 0 20) (- 0 19)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc)))))))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 18)) true) (and (=> (= (ControlFlow 0 14) (- 0 17)) true) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc)))))) (=> (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (= (ControlFlow 0 14) (- 0 13)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) alloc)))))))))))))
(let ((anon28_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) true) (=> (= (ControlFlow 0 11) (- 0 10)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |c#0@0|) alloc)))))))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) true) (=> (= (ControlFlow 0 8) (- 0 7)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) alloc)))))))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) true) (=> (= (ControlFlow 0 5) (- 0 4)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc)))))))))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@1) alloc)))))))))
(let ((anon10_correct  (=> (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.C?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc)))) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 30) 2) anon25_Then_correct) (=> (= (ControlFlow 0 30) 5) anon26_Then_correct)) (=> (= (ControlFlow 0 30) 8) anon27_Then_correct)) (=> (= (ControlFlow 0 30) 11) anon28_Then_correct)) (=> (= (ControlFlow 0 30) 14) anon29_Then_correct)) (=> (= (ControlFlow 0 30) 20) anon30_Then_correct)) (=> (= (ControlFlow 0 30) 29) anon31_Then_correct)) (=> (= (ControlFlow 0 30) 23) anon31_Else_correct))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (=> (or (not (= |c#0@0| this)) (not true)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc))))))) (=> (=> (or (not (= |c#0@0| this)) (not true)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc)))))) (=> (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 43) 30)) anon10_correct)))))
(let ((anon23_Else_correct  (=> (and (= |c#0@0| this) (= (ControlFlow 0 47) 43)) anon6_correct)))
(let ((anon23_Then_correct  (=> (or (not (= |c#0@0| this)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) true) (=> (= (ControlFlow 0 45) 43) anon6_correct)))))
(let ((anon22_Then_correct  (=> (< |y#0| 5) (and (=> (= (ControlFlow 0 48) (- 0 49)) true) (and (=> (= (ControlFlow 0 48) 45) anon23_Then_correct) (=> (= (ControlFlow 0 48) 47) anon23_Else_correct))))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> (or (not (= |c#0@0| this)) (not true)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc))))))) (=> (=> (or (not (= |c#0@0| this)) (not true)) (and (or (not (= |c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@0|) alloc)))))) (=> (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 31) 30)) anon10_correct)))))
(let ((anon24_Else_correct  (=> (and (= |c#0@0| this) (= (ControlFlow 0 35) 31)) anon9_correct)))
(let ((anon24_Then_correct  (=> (or (not (= |c#0@0| this)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 34)) true) (=> (= (ControlFlow 0 33) 31) anon9_correct)))))
(let ((anon22_Else_correct  (=> (<= 5 |y#0|) (and (=> (= (ControlFlow 0 36) (- 0 42)) true) (and (=> (= (ControlFlow 0 36) (- 0 41)) (or (not (= |c#0@0| null)) (not true))) (=> (or (not (= |c#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 40)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@0| _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@0| _module.C.x)) (and (=> (= (ControlFlow 0 36) (- 0 39)) true) (and (=> (= (ControlFlow 0 36) (- 0 38)) (or (not (= |c#0@0| null)) (not true))) (=> (or (not (= |c#0@0| null)) (not true)) (=> (= |$rhs#2_0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#0@0|) _module.C.x))) 2)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 |c#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |c#0@0|) _module.C.x ($Box intType (int_2_U |$rhs#2_0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 36) (- 0 37)) true) (and (=> (= (ControlFlow 0 36) 33) anon24_Then_correct) (=> (= (ControlFlow 0 36) 35) anon24_Else_correct))))))))))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 50) 48) anon22_Then_correct) (=> (= (ControlFlow 0 50) 36) anon22_Else_correct))))
(let ((anon21_Else_correct  (=> (not |b#0|) (=> (and (= |c#0@0| $nw@0) (= (ControlFlow 0 52) 50)) anon3_correct))))
(let ((anon21_Then_correct  (=> |b#0| (=> (and (= |c#0@0| this) (= (ControlFlow 0 51) 50)) anon3_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap alloc this)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 53) 51) anon21_Then_correct) (=> (= (ControlFlow 0 53) 52) anon21_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap)))) (=> (and (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass._module.C) ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap))) true) (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass._module.C) ($IsAlloc refType |d#0| Tclass._module.C $Heap))) true)) (and (and (=> |defass#e#5_0| (and ($Is refType |e#5_0| Tclass._module.C) ($IsAlloc refType |e#5_0| Tclass._module.C $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 54) 53)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 11) (- 10))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 19))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
