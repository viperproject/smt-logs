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
(declare-fun Tagclass.M1.Asker () T@U)
(declare-fun Tagclass.M1.DoubleAsker () T@U)
(declare-fun Tagclass.M1.AC1? () T@U)
(declare-fun Tagclass.M1.Asker? () T@U)
(declare-fun Tagclass.M1.DoubleAsker? () T@U)
(declare-fun Tagclass.M1.AC1 () T@U)
(declare-fun tytagFamily$Asker () T@U)
(declare-fun tytagFamily$DoubleAsker () T@U)
(declare-fun tytagFamily$AC1 () T@U)
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
(declare-fun implements$M1.DoubleAsker (T@U) Bool)
(declare-fun Tclass.M1.AC1? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.M1.Asker () T@U)
(declare-fun Tclass.M1.Asker? () T@U)
(declare-fun Tclass.M1.DoubleAsker () T@U)
(declare-fun Tclass.M1.DoubleAsker? () T@U)
(declare-fun Tclass.M1.AC1 () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$M1.Asker (T@U) Bool)
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
(assert (distinct alloc Tagclass.M1.Asker Tagclass.M1.DoubleAsker Tagclass.M1.AC1? Tagclass.M1.Asker? Tagclass.M1.DoubleAsker? Tagclass.M1.AC1 tytagFamily$Asker tytagFamily$DoubleAsker tytagFamily$AC1)
)
(assert (implements$M1.DoubleAsker Tclass.M1.AC1?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.AC1?)  (or (= $o null) (= (dtype $o) Tclass.M1.AC1?)))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($Is refType $o Tclass.M1.AC1?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M1.Asker $h) ($IsAlloc refType |c#0| Tclass.M1.Asker? $h))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Asker $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Asker? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M1.DoubleAsker $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M1.DoubleAsker? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.DoubleAsker $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.DoubleAsker? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M1.AC1 $h@@1) ($IsAlloc refType |c#0@@1| Tclass.M1.AC1? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.AC1 $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.AC1? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.M1.Asker? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.M1.Asker? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M1.DoubleAsker? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M1.DoubleAsker? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M1.AC1? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1047|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M1.AC1? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |645|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |646|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |553|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |637|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.M1.Asker)  (and ($Is refType |c#0@@2| Tclass.M1.Asker?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.Asker))
 :pattern ( ($Is refType |c#0@@2| Tclass.M1.Asker?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M1.DoubleAsker)  (and ($Is refType |c#0@@3| Tclass.M1.DoubleAsker?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.DoubleAsker))
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.DoubleAsker?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M1.AC1)  (and ($Is refType |c#0@@4| Tclass.M1.AC1?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.AC1))
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.AC1?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.M1.DoubleAsker? $heap) ($IsAlloc refType $o@@3 Tclass.M1.Asker? $heap))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M1.DoubleAsker? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass.M1.AC1? $heap@@0) ($IsAlloc refType $o@@4 Tclass.M1.DoubleAsker? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.M1.AC1? $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |644|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |552|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall (($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 Tclass.M1.DoubleAsker?) ($Is refType $o@@5 Tclass.M1.Asker?))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($Is refType $o@@5 Tclass.M1.DoubleAsker?))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass.M1.AC1?) ($Is refType $o@@6 Tclass.M1.DoubleAsker?))
 :qid |unknown.0:0|
 :skolemid |1072|
 :pattern ( ($Is refType $o@@6 Tclass.M1.AC1?))
)))
(assert (= (Tag Tclass.M1.Asker) Tagclass.M1.Asker))
(assert (= (TagFamily Tclass.M1.Asker) tytagFamily$Asker))
(assert (= (Tag Tclass.M1.DoubleAsker) Tagclass.M1.DoubleAsker))
(assert (= (TagFamily Tclass.M1.DoubleAsker) tytagFamily$DoubleAsker))
(assert (= (Tag Tclass.M1.AC1?) Tagclass.M1.AC1?))
(assert (= (TagFamily Tclass.M1.AC1?) tytagFamily$AC1))
(assert (= (Tag Tclass.M1.Asker?) Tagclass.M1.Asker?))
(assert (= (TagFamily Tclass.M1.Asker?) tytagFamily$Asker))
(assert (= (Tag Tclass.M1.DoubleAsker?) Tagclass.M1.DoubleAsker?))
(assert (= (TagFamily Tclass.M1.DoubleAsker?) tytagFamily$DoubleAsker))
(assert (= (Tag Tclass.M1.AC1) Tagclass.M1.AC1))
(assert (= (TagFamily Tclass.M1.AC1) tytagFamily$AC1))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass.M1.Asker?)  (or (= $o@@7 null) (implements$M1.Asker (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( ($Is refType $o@@7 Tclass.M1.Asker?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass.M1.DoubleAsker?)  (or (= $o@@8 null) (implements$M1.DoubleAsker (dtype $o@@8))))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($Is refType $o@@8 Tclass.M1.DoubleAsker?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$M1.AC1.Speak)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@9 T@U) ($f T@U) ) (! true
 :qid |ExternCopyFromTraitdfy.72:12|
 :skolemid |1050|
))) (=> (forall (($o@@10 T@U) ($f@@0 T@U) ) (! true
 :qid |ExternCopyFromTraitdfy.72:12|
 :skolemid |1050|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@11 T@U) ($f@@1 T@U) ) (! true
 :qid |ExternCopyFromTraitdfy.72:12|
 :skolemid |1051|
))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M1.AC1) ($IsAlloc refType this Tclass.M1.AC1 $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct))))
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
