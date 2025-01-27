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
(declare-fun Tagclass.TypeDescriptorTests.TraitDependencyClass () T@U)
(declare-fun Tagclass.TypeDescriptorTests.TraitDependencyClass? () T@U)
(declare-fun Tagclass.TypeDescriptorTests.TraitDependency? () T@U)
(declare-fun Tagclass.TypeDescriptorTests.TraitDependency () T@U)
(declare-fun tytagFamily$TraitDependencyClass () T@U)
(declare-fun tytagFamily$TraitDependency () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TypeDescriptorTests.TraitDependency (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.TraitDependency? (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TypeDescriptorTests.TraitDependencyClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.TraitDependencyClass () T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$TypeDescriptorTests.TraitDependency (T@U T@U) Bool)
(declare-fun Tclass.TypeDescriptorTests.TraitDependency?_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.TraitDependency_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.TypeDescriptorTests.TraitDependencyClass Tagclass.TypeDescriptorTests.TraitDependencyClass? Tagclass.TypeDescriptorTests.TraitDependency? Tagclass.TypeDescriptorTests.TraitDependency tytagFamily$TraitDependencyClass tytagFamily$TraitDependency)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert (forall ((TypeDescriptorTests.TraitDependency$X T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X) $h) ($IsAlloc refType |c#0| (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X) $h))
 :qid |unknown.0:0|
 :skolemid |3996|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X) $h))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TypeDescriptorTests.TraitDependencyClass?)  (or (= $o null) (= (dtype $o) Tclass.TypeDescriptorTests.TraitDependencyClass?)))
 :qid |unknown.0:0|
 :skolemid |3997|
 :pattern ( ($Is refType $o Tclass.TypeDescriptorTests.TraitDependencyClass?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.TypeDescriptorTests.TraitDependencyClass $h@@0) ($IsAlloc refType |c#0@@0| Tclass.TypeDescriptorTests.TraitDependencyClass? $h@@0))
 :qid |unknown.0:0|
 :skolemid |4000|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TypeDescriptorTests.TraitDependencyClass $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TypeDescriptorTests.TraitDependencyClass? $h@@0))
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
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@0 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@0) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3984|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@0) $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.TypeDescriptorTests.TraitDependencyClass? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3998|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.TypeDescriptorTests.TraitDependencyClass? $h@@2))
)))
(assert (forall (($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 Tclass.TypeDescriptorTests.TraitDependencyClass?) ($Is refType $o@@2 (Tclass.TypeDescriptorTests.TraitDependency? TInt)))
 :qid |unknown.0:0|
 :skolemid |4019|
 :pattern ( ($Is refType $o@@2 Tclass.TypeDescriptorTests.TraitDependencyClass?))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3393|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3394|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3301|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@1))  (and ($Is refType |c#0@@1| (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3995|
 :pattern ( ($Is refType |c#0@@1| (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@1)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3385|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@2 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@2)) Tagclass.TypeDescriptorTests.TraitDependency?) (= (TagFamily (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@2)) tytagFamily$TraitDependency))
 :qid |unknown.0:0|
 :skolemid |3980|
 :pattern ( (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@2))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@3 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@3)) Tagclass.TypeDescriptorTests.TraitDependency) (= (TagFamily (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@3)) tytagFamily$TraitDependency))
 :qid |unknown.0:0|
 :skolemid |3988|
 :pattern ( (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@3))
)))
(assert (implements$TypeDescriptorTests.TraitDependency Tclass.TypeDescriptorTests.TraitDependencyClass? TInt))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.TraitDependencyClass)  (and ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.TraitDependencyClass?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3999|
 :pattern ( ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.TraitDependencyClass))
 :pattern ( ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.TraitDependencyClass?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.TypeDescriptorTests.TraitDependencyClass? $heap) ($IsAlloc refType $o@@3 (Tclass.TypeDescriptorTests.TraitDependency? TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |4020|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.TypeDescriptorTests.TraitDependencyClass? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3392|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@4 T@U) ) (! (= (Tclass.TypeDescriptorTests.TraitDependency?_0 (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@4)) TypeDescriptorTests.TraitDependency$X@@4)
 :qid |unknown.0:0|
 :skolemid |3981|
 :pattern ( (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@4))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@5 T@U) ) (! (= (Tclass.TypeDescriptorTests.TraitDependency_0 (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@5)) TypeDescriptorTests.TraitDependency$X@@5)
 :qid |unknown.0:0|
 :skolemid |3989|
 :pattern ( (Tclass.TypeDescriptorTests.TraitDependency TypeDescriptorTests.TraitDependency$X@@5))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3300|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall ((TypeDescriptorTests.TraitDependency$X@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@6))  (or (= $o@@4 null) (implements$TypeDescriptorTests.TraitDependency (dtype $o@@4) TypeDescriptorTests.TraitDependency$X@@6)))
 :qid |unknown.0:0|
 :skolemid |3983|
 :pattern ( ($Is refType $o@@4 (Tclass.TypeDescriptorTests.TraitDependency? TypeDescriptorTests.TraitDependency$X@@6)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8395|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |3391|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4)))
)))
(assert (= (Tag Tclass.TypeDescriptorTests.TraitDependencyClass) Tagclass.TypeDescriptorTests.TraitDependencyClass))
(assert (= (TagFamily Tclass.TypeDescriptorTests.TraitDependencyClass) tytagFamily$TraitDependencyClass))
(assert (= (Tag Tclass.TypeDescriptorTests.TraitDependencyClass?) Tagclass.TypeDescriptorTests.TraitDependencyClass?))
(assert (= (TagFamily Tclass.TypeDescriptorTests.TraitDependencyClass?) tytagFamily$TraitDependencyClass))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3336|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3315|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TypeDescriptorTests.__default.Test)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.TypeDescriptorTests.TraitDependencyClass?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@3| Tclass.TypeDescriptorTests.TraitDependencyClass) ($IsAlloc refType |c#0@@3| Tclass.TypeDescriptorTests.TraitDependencyClass $Heap))) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct))))
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
