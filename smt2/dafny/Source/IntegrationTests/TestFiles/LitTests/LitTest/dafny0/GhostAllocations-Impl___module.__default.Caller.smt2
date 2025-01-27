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
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun tytagFamily$Cell () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Cell () T@U)
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
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Cell Tagclass._module.Cell? tytagFamily$Cell)
)
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cell?)  (or (= $o null) (= (dtype $o) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( ($Is refType $o Tclass._module.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Cell $h) ($IsAlloc refType |c#0| Tclass._module.Cell? $h))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cell $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cell? $h))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Cell? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Cell? $h@@0))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@1 T@U) ) (!  (=> ($HeapSuccGhost h@@1 k@@1) (and ($HeapSucc h@@1 k@@1) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@1 k@@1))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Cell)  (and ($Is refType |c#0@@0| Tclass._module.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Cell?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (|ORD#Offset| o@@1))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@1))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |705|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((o@@2 T@U) ) (!  (=> (|ORD#IsNat| o@@2) (= o@@2 (|ORD#FromNat| (|ORD#Offset| o@@2))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@2))
 :pattern ( (|ORD#IsNat| o@@2))
)))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.__default.P (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |c#1_0@0| () T@U)
(declare-fun |_module.__default.P#canCall| (T@U) Bool)
(declare-fun |c#1_1@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |c#0_0@0| () T@U)
(declare-fun |c#0_1@0| () T@U)
(declare-fun |_k##0_0@0| () T@U)
(declare-fun |call3formal@c#0| () T@U)
(declare-fun call1formal@current$Heap () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@c#0@0| () T@U)
(declare-fun |call1formal@c#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call1formal@c#0@0| () T@U)
(declare-fun |call1formal@c#0@@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call1formal@c#0@0@@0| () T@U)
(declare-fun |call1formal@c#0@@1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call1formal@c#0@0@@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#c#0_0| () Bool)
(declare-fun |c#0_0| () T@U)
(declare-fun |defass#c#1_0| () Bool)
(declare-fun |c#1_0| () T@U)
(declare-fun |defass#c#2_0| () Bool)
(declare-fun |c#2_0| () T@U)
(declare-fun |defass#c#3_0| () Bool)
(declare-fun |c#3_0| () T@U)
(declare-fun |defass#c#4_0| () Bool)
(declare-fun |c#4_0| () T@U)
(declare-fun |defass#c#5_0| () Bool)
(declare-fun |c#5_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Caller)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon9_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (and ($Is refType null Tclass._module.Cell) (and (_module.__default.P null) (and (or (not (= null null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap null) alloc))))))) (exists ((|$as#c1_0#1_0| T@U) ) (!  (and (and ($Is refType |$as#c1_0#1_0| Tclass._module.Cell) ($IsAlloc refType |$as#c1_0#1_0| Tclass._module.Cell $Heap@4)) (and (_module.__default.P |$as#c1_0#1_0|) (and (or (not (= |$as#c1_0#1_0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |$as#c1_0#1_0|) alloc)))))))
 :qid |GhostAllocationsdfy.40:15|
 :skolemid |563|
)))) (=> (or (and ($Is refType null Tclass._module.Cell) (and (_module.__default.P null) (and (or (not (= null null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap null) alloc))))))) (exists ((|$as#c1_0#1_0@@0| T@U) ) (!  (and (and ($Is refType |$as#c1_0#1_0@@0| Tclass._module.Cell) ($IsAlloc refType |$as#c1_0#1_0@@0| Tclass._module.Cell $Heap@4)) (and (_module.__default.P |$as#c1_0#1_0@@0|) (and (or (not (= |$as#c1_0#1_0@@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |$as#c1_0#1_0@@0|) alloc)))))))
 :qid |GhostAllocationsdfy.40:15|
 :skolemid |563|
))) (=> (=> true (and ($Is refType |c#1_0@0| Tclass._module.Cell) ($IsAlloc refType |c#1_0@0| Tclass._module.Cell $Heap@4))) (=> (and (and (_module.__default.P |c#1_0@0|) (and (or (not (= |c#1_0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#1_0@0|) alloc)))))) (= (ControlFlow 0 21) (- 0 20))) (U_2_bool (Lit boolType (bool_2_U false)))))))))
(let ((anon8_correct  (=> (and (|_module.__default.P#canCall| |c#1_1@0|) (= (ControlFlow 0 24) 21)) anon9_correct)))
(let ((anon22_Else_correct  (=> (and (not (_module.__default.P |c#1_1@0|)) (= (ControlFlow 0 26) 24)) anon8_correct)))
(let ((anon22_Then_correct  (=> (and (_module.__default.P |c#1_1@0|) (= (ControlFlow 0 25) 24)) anon8_correct)))
(let ((anon21_Then_correct  (=> (and (and ($Is refType |c#1_1@0| Tclass._module.Cell) ($IsAlloc refType |c#1_1@0| Tclass._module.Cell $Heap@4)) (and ($IsAlloc refType |c#1_1@0| Tclass._module.Cell $Heap@4) (|_module.__default.P#canCall| |c#1_1@0|))) (and (=> (= (ControlFlow 0 27) 25) anon22_Then_correct) (=> (= (ControlFlow 0 27) 26) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and ($Is refType |c#1_1@0| Tclass._module.Cell) ($IsAlloc refType |c#1_1@0| Tclass._module.Cell $Heap@4))) (= (ControlFlow 0 23) 21)) anon9_correct)))
(let ((anon20_Then_correct  (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall ((|c#1| T@U) ) (!  (=> ($Is refType |c#1| Tclass._module.Cell) (|_module.__default.P#canCall| |c#1|))
 :qid |GhostAllocationsdfy.22:18|
 :skolemid |553|
 :pattern ( (_module.__default.P |c#1|))
))) (and (exists ((|c#1@@0| T@U) ) (!  (and (and ($Is refType |c#1@@0| Tclass._module.Cell) ($IsAlloc refType |c#1@@0| Tclass._module.Cell $Heap@4)) (and (_module.__default.P |c#1@@0|) (and (or (not (= |c#1@@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#1@@0|) alloc)))))))
 :qid |GhostAllocationsdfy.22:18|
 :skolemid |554|
 :pattern ( (_module.__default.P |c#1@@0|))
)) (= $Heap $Heap@4))) (and (=> (= (ControlFlow 0 28) 27) anon21_Then_correct) (=> (= (ControlFlow 0 28) 23) anon21_Else_correct)))))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (and ($Is refType null Tclass._module.Cell) (and (_module.__default.P null) (and (or (not (= null null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap null) alloc))))))) (exists ((|$as#c0_0#0_0| T@U) ) (!  (and (and ($Is refType |$as#c0_0#0_0| Tclass._module.Cell) ($IsAlloc refType |$as#c0_0#0_0| Tclass._module.Cell $Heap@5)) (and (_module.__default.P |$as#c0_0#0_0|) (and (or (not (= |$as#c0_0#0_0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |$as#c0_0#0_0|) alloc)))))))
 :qid |GhostAllocationsdfy.44:15|
 :skolemid |561|
)))) (=> (or (and ($Is refType null Tclass._module.Cell) (and (_module.__default.P null) (and (or (not (= null null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap null) alloc))))))) (exists ((|$as#c0_0#0_0@@0| T@U) ) (!  (and (and ($Is refType |$as#c0_0#0_0@@0| Tclass._module.Cell) ($IsAlloc refType |$as#c0_0#0_0@@0| Tclass._module.Cell $Heap@5)) (and (_module.__default.P |$as#c0_0#0_0@@0|) (and (or (not (= |$as#c0_0#0_0@@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |$as#c0_0#0_0@@0|) alloc)))))))
 :qid |GhostAllocationsdfy.44:15|
 :skolemid |561|
))) (=> (=> true (and ($Is refType |c#0_0@0| Tclass._module.Cell) ($IsAlloc refType |c#0_0@0| Tclass._module.Cell $Heap@5))) (=> (and (and (_module.__default.P |c#0_0@0|) (and (or (not (= |c#0_0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0_0@0|) alloc)))))) (= (ControlFlow 0 12) (- 0 11))) (U_2_bool (Lit boolType (bool_2_U false)))))))))
(let ((anon13_correct  (=> (and (|_module.__default.P#canCall| |c#0_1@0|) (= (ControlFlow 0 15) 12)) anon14_correct)))
(let ((anon25_Else_correct  (=> (and (not (_module.__default.P |c#0_1@0|)) (= (ControlFlow 0 17) 15)) anon13_correct)))
(let ((anon25_Then_correct  (=> (and (_module.__default.P |c#0_1@0|) (= (ControlFlow 0 16) 15)) anon13_correct)))
(let ((anon24_Then_correct  (=> (and (and ($Is refType |c#0_1@0| Tclass._module.Cell) ($IsAlloc refType |c#0_1@0| Tclass._module.Cell $Heap@5)) (and ($IsAlloc refType |c#0_1@0| Tclass._module.Cell $Heap@5) (|_module.__default.P#canCall| |c#0_1@0|))) (and (=> (= (ControlFlow 0 18) 16) anon25_Then_correct) (=> (= (ControlFlow 0 18) 17) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not (and ($Is refType |c#0_1@0| Tclass._module.Cell) ($IsAlloc refType |c#0_1@0| Tclass._module.Cell $Heap@5))) (= (ControlFlow 0 14) 12)) anon14_correct)))
(let ((anon23_Then_correct  (=> (= |_k##0_0@0| (Lit BoxType (|ORD#FromNat| 10))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall ((|c#2| T@U) ) (!  (=> ($Is refType |c#2| Tclass._module.Cell) (|_module.__default.P#canCall| |c#2|))
 :qid |GhostAllocationsdfy.22:18|
 :skolemid |555|
 :pattern ( (_module.__default.P |c#2|))
))) (and (exists ((|c#2@@0| T@U) ) (!  (and (and ($Is refType |c#2@@0| Tclass._module.Cell) ($IsAlloc refType |c#2@@0| Tclass._module.Cell $Heap@5)) (and (_module.__default.P |c#2@@0|) (and (or (not (= |c#2@@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#2@@0|) alloc)))))))
 :qid |GhostAllocationsdfy.22:18|
 :skolemid |556|
 :pattern ( (_module.__default.P |c#2@@0|))
)) (= $Heap $Heap@5))) (and (=> (= (ControlFlow 0 19) 18) anon24_Then_correct) (=> (= (ControlFlow 0 19) 14) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 10) (- 0 9))) false)))
(let ((anon19_Then_correct  (=> (and (and ($Is refType |call3formal@c#0| Tclass._module.Cell) ($IsAlloc refType |call3formal@c#0| Tclass._module.Cell call1formal@current$Heap)) (= call0formal@previous$Heap@0 $Heap)) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and ($Is refType |call3formal@c#0@0| Tclass._module.Cell) ($IsAlloc refType |call3formal@c#0@0| Tclass._module.Cell $Heap))) (and (and (or (not (= |call3formal@c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |call3formal@c#0@0|) alloc))))) (and (= $Heap $Heap@3) (= (ControlFlow 0 8) (- 0 7))))) (U_2_bool (Lit boolType (bool_2_U false)))))))
(let ((anon18_Then_correct  (=> (and ($Is refType |call1formal@c#0| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0| Tclass._module.Cell $Heap)) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($Is refType |call1formal@c#0@0| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0@0| Tclass._module.Cell $Heap@2))) (and (and (or (not (= |call1formal@c#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call1formal@c#0@0|) alloc))))) (and (= $Heap $Heap@2) (= (ControlFlow 0 6) (- 0 5))))) (U_2_bool (Lit boolType (bool_2_U false)))))))
(let ((anon17_Then_correct  (=> (and ($Is refType |call1formal@c#0@@0| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0@@0| Tclass._module.Cell $Heap)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and ($Is refType |call1formal@c#0@0@@0| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0@0@@0| Tclass._module.Cell $Heap@1))) (=> (and (and (and (or (not (= |call1formal@c#0@0@@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call1formal@c#0@0@@0|) alloc))))) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |GhostAllocationsdfy.11:14|
 :skolemid |550|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2))
))) (and ($HeapSuccGhost $Heap $Heap@1) (= (ControlFlow 0 4) (- 0 3)))) (U_2_bool (Lit boolType (bool_2_U false))))))))
(let ((anon16_Then_correct  (=> (and ($Is refType |call1formal@c#0@@1| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0@@1| Tclass._module.Cell $Heap)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and ($Is refType |call1formal@c#0@0@@1| Tclass._module.Cell) ($IsAlloc refType |call1formal@c#0@0@@1| Tclass._module.Cell $Heap@0))) (=> (and (and (and (or (not (= |call1formal@c#0@0@@1| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call1formal@c#0@0@@1|) alloc))))) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3)))
 :qid |GhostAllocationsdfy.8:8|
 :skolemid |548|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3))
))) (and ($HeapSucc $Heap $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (U_2_bool (Lit boolType (bool_2_U false))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (=> (= (ControlFlow 0 29) 2) anon16_Then_correct) (=> (= (ControlFlow 0 29) 4) anon17_Then_correct)) (=> (= (ControlFlow 0 29) 6) anon18_Then_correct)) (=> (= (ControlFlow 0 29) 8) anon19_Then_correct)) (=> (= (ControlFlow 0 29) 28) anon20_Then_correct)) (=> (= (ControlFlow 0 29) 19) anon23_Then_correct)) (=> (= (ControlFlow 0 29) 10) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0_0| (and ($Is refType |c#0_0| Tclass._module.Cell) ($IsAlloc refType |c#0_0| Tclass._module.Cell $Heap))) true)) (and (and (=> |defass#c#1_0| (and ($Is refType |c#1_0| Tclass._module.Cell) ($IsAlloc refType |c#1_0| Tclass._module.Cell $Heap))) true) (and (=> |defass#c#2_0| (and ($Is refType |c#2_0| Tclass._module.Cell) ($IsAlloc refType |c#2_0| Tclass._module.Cell $Heap))) true))) (and (and (and (=> |defass#c#3_0| (and ($Is refType |c#3_0| Tclass._module.Cell) ($IsAlloc refType |c#3_0| Tclass._module.Cell $Heap))) true) (and (=> |defass#c#4_0| (and ($Is refType |c#4_0| Tclass._module.Cell) ($IsAlloc refType |c#4_0| Tclass._module.Cell $Heap))) true)) (and (and (=> |defass#c#5_0| (and ($Is refType |c#5_0| Tclass._module.Cell) ($IsAlloc refType |c#5_0| Tclass._module.Cell $Heap))) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 30) 29))))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
