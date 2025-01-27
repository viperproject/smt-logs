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
(declare-fun Tagclass.Variation.Foo () T@U)
(declare-fun Tagclass.Variation.Foo? () T@U)
(declare-fun Tagclass.Variation.UseFooHelper () T@U)
(declare-fun Tagclass.Variation.UseFooHelper? () T@U)
(declare-fun tytagFamily$Foo () T@U)
(declare-fun tytagFamily$UseFooHelper () T@U)
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
(declare-fun refType () T@T)
(declare-fun Tclass.Variation.Foo (T@U) T@U)
(declare-fun Tclass.Variation.Foo? (T@U) T@U)
(declare-fun Tclass.Variation.UseFooHelper (T@U) T@U)
(declare-fun Tclass.Variation.UseFooHelper? (T@U) T@U)
(declare-fun null () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Variation.UseFooHelper.foo (T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.Variation.Foo_0 (T@U) T@U)
(declare-fun Tclass.Variation.Foo?_0 (T@U) T@U)
(declare-fun Tclass.Variation.UseFooHelper_0 (T@U) T@U)
(declare-fun Tclass.Variation.UseFooHelper?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc Tagclass.Variation.Foo Tagclass.Variation.Foo? Tagclass.Variation.UseFooHelper Tagclass.Variation.UseFooHelper? tytagFamily$Foo tytagFamily$UseFooHelper)
)
(assert (= (Ctor refType) 3))
(assert (forall ((Variation.Foo$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Variation.Foo Variation.Foo$T) $h) ($IsAlloc refType |c#0| (Tclass.Variation.Foo? Variation.Foo$T) $h))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Variation.Foo Variation.Foo$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Variation.Foo? Variation.Foo$T) $h))
)))
(assert (forall ((Variation.UseFooHelper$T T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T) $h@@0))
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
(assert (forall ((Variation.Foo$T@@0 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Variation.Foo? Variation.Foo$T@@0) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( ($IsAlloc refType $o (Tclass.Variation.Foo? Variation.Foo$T@@0) $h@@1))
)))
(assert (forall ((Variation.UseFooHelper$T@@0 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@0) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@0) $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |622|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |623|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |530|
 :pattern ( ($Unbox T x@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Variation.UseFooHelper$T@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@1))) ($Is refType (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@1 $o@@1) (Tclass.Variation.Foo Variation.UseFooHelper$T@@1)))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@1 $o@@1))
))))
(assert (forall ((Variation.Foo$T@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.Variation.Foo Variation.Foo$T@@1))  (and ($Is refType |c#0@@1| (Tclass.Variation.Foo? Variation.Foo$T@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( ($Is refType |c#0@@1| (Tclass.Variation.Foo Variation.Foo$T@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.Variation.Foo? Variation.Foo$T@@1)))
)))
(assert (forall ((Variation.UseFooHelper$T@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@2))  (and ($Is refType |c#0@@2| (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( ($Is refType |c#0@@2| (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@2)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |614|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((Variation.Foo$T@@2 T@U) ) (!  (and (= (Tag (Tclass.Variation.Foo Variation.Foo$T@@2)) Tagclass.Variation.Foo) (= (TagFamily (Tclass.Variation.Foo Variation.Foo$T@@2)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |983|
 :pattern ( (Tclass.Variation.Foo Variation.Foo$T@@2))
)))
(assert (forall ((Variation.Foo$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Variation.Foo? Variation.Foo$T@@3)) Tagclass.Variation.Foo?) (= (TagFamily (Tclass.Variation.Foo? Variation.Foo$T@@3)) tytagFamily$Foo))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (Tclass.Variation.Foo? Variation.Foo$T@@3))
)))
(assert (forall ((Variation.UseFooHelper$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@3)) Tagclass.Variation.UseFooHelper) (= (TagFamily (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@3)) tytagFamily$UseFooHelper))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@3))
)))
(assert (forall ((Variation.UseFooHelper$T@@4 T@U) ) (!  (and (= (Tag (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@4)) Tagclass.Variation.UseFooHelper?) (= (TagFamily (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@4)) tytagFamily$UseFooHelper))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@4))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Variation.UseFooHelper$T@@5 T@U) ($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc refType (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@5 $o@@2) (Tclass.Variation.Foo Variation.UseFooHelper$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@5 $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))
))))
(assert (forall ((Variation.Foo$T@@4 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.Variation.Foo? Variation.Foo$T@@4))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass.Variation.Foo? Variation.Foo$T@@4))))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($Is refType $o@@3 (Tclass.Variation.Foo? Variation.Foo$T@@4)))
)))
(assert (forall ((Variation.UseFooHelper$T@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( ($Is refType $o@@4 (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |621|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((Variation.Foo$T@@5 T@U) ) (! (= (Tclass.Variation.Foo_0 (Tclass.Variation.Foo Variation.Foo$T@@5)) Variation.Foo$T@@5)
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (Tclass.Variation.Foo Variation.Foo$T@@5))
)))
(assert (forall ((Variation.Foo$T@@6 T@U) ) (! (= (Tclass.Variation.Foo?_0 (Tclass.Variation.Foo? Variation.Foo$T@@6)) Variation.Foo$T@@6)
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (Tclass.Variation.Foo? Variation.Foo$T@@6))
)))
(assert (forall ((Variation.UseFooHelper$T@@7 T@U) ) (! (= (Tclass.Variation.UseFooHelper_0 (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@7)) Variation.UseFooHelper$T@@7)
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (Tclass.Variation.UseFooHelper Variation.UseFooHelper$T@@7))
)))
(assert (forall ((Variation.UseFooHelper$T@@8 T@U) ) (! (= (Tclass.Variation.UseFooHelper?_0 (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@8)) Variation.UseFooHelper$T@@8)
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@8))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |529|
 :pattern ( ($Box T@@1 x@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2083|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |620|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this () T@U)
(declare-fun Variation.UseFooHelper$T@@9 () T@U)
(declare-fun |foo#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$Variation.UseFooHelper.__ctor)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.Variation.UseFooHelper? Variation.UseFooHelper$T@@9))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc)))) (= (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@9 this) |foo#0|))) (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= (ControlFlow 0 2) (- 0 1))))) (= (Variation.UseFooHelper.foo Variation.UseFooHelper$T@@9 this) |foo#0|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |foo#0| (Tclass.Variation.Foo Variation.UseFooHelper$T@@9)) ($IsAlloc refType |foo#0| (Tclass.Variation.Foo Variation.UseFooHelper$T@@9) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
