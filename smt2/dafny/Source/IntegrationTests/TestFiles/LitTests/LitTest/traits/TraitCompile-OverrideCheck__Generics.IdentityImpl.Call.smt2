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
(declare-fun Tagclass.Generics.Identity? () T@U)
(declare-fun Tagclass.Generics.Identity () T@U)
(declare-fun Tagclass.Generics.IdentityImpl? () T@U)
(declare-fun Tagclass.Generics.IdentityImpl () T@U)
(declare-fun tytagFamily$Identity () T@U)
(declare-fun tytagFamily$IdentityImpl () T@U)
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
(declare-fun implements$Generics.Identity (T@U) Bool)
(declare-fun Tclass.Generics.IdentityImpl? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.Generics.Identity? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Generics.Identity () T@U)
(declare-fun Tclass.Generics.IdentityImpl () T@U)
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
(declare-fun $IsBox (T@U T@U) Bool)
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
(assert (distinct alloc Tagclass.Generics.Identity? Tagclass.Generics.Identity Tagclass.Generics.IdentityImpl? Tagclass.Generics.IdentityImpl tytagFamily$Identity tytagFamily$IdentityImpl)
)
(assert (implements$Generics.Identity Tclass.Generics.IdentityImpl?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Generics.IdentityImpl?)  (or (= $o null) (= (dtype $o) Tclass.Generics.IdentityImpl?)))
 :qid |unknown.0:0|
 :skolemid |2471|
 :pattern ( ($Is refType $o Tclass.Generics.IdentityImpl?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.Generics.IdentityImpl? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass.Generics.Identity? $h))
 :qid |unknown.0:0|
 :skolemid |2545|
 :pattern ( ($IsAllocBox bx Tclass.Generics.IdentityImpl? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.Generics.Identity $h@@0) ($IsAlloc refType |c#0| Tclass.Generics.Identity? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2469|
 :pattern ( ($IsAlloc refType |c#0| Tclass.Generics.Identity $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.Generics.Identity? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Generics.IdentityImpl $h@@1) ($IsAlloc refType |c#0@@0| Tclass.Generics.IdentityImpl? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2481|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Generics.IdentityImpl $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Generics.IdentityImpl? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.Generics.Identity? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2464|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.Generics.Identity? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Generics.IdentityImpl? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2472|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Generics.IdentityImpl? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2030|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2031|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1938|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1951|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2023|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2022|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Generics.Identity?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.Generics.Identity?)))
 :qid |unknown.0:0|
 :skolemid |2462|
 :pattern ( ($IsBox bx@@1 Tclass.Generics.Identity?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Generics.Identity) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.Generics.Identity)))
 :qid |unknown.0:0|
 :skolemid |2465|
 :pattern ( ($IsBox bx@@2 Tclass.Generics.Identity))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Generics.IdentityImpl?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Generics.IdentityImpl?)))
 :qid |unknown.0:0|
 :skolemid |2470|
 :pattern ( ($IsBox bx@@3 Tclass.Generics.IdentityImpl?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Generics.IdentityImpl) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Generics.IdentityImpl)))
 :qid |unknown.0:0|
 :skolemid |2473|
 :pattern ( ($IsBox bx@@4 Tclass.Generics.IdentityImpl))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.Generics.Identity)  (and ($Is refType |c#0@@1| Tclass.Generics.Identity?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2468|
 :pattern ( ($Is refType |c#0@@1| Tclass.Generics.Identity))
 :pattern ( ($Is refType |c#0@@1| Tclass.Generics.Identity?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Generics.IdentityImpl)  (and ($Is refType |c#0@@2| Tclass.Generics.IdentityImpl?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2480|
 :pattern ( ($Is refType |c#0@@2| Tclass.Generics.IdentityImpl))
 :pattern ( ($Is refType |c#0@@2| Tclass.Generics.IdentityImpl?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass.Generics.IdentityImpl? $heap) ($IsAlloc refType $o@@2 Tclass.Generics.Identity? $heap))
 :qid |unknown.0:0|
 :skolemid |2547|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.Generics.IdentityImpl? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2029|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1950|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1937|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 Tclass.Generics.IdentityImpl?) ($Is refType $o@@3 Tclass.Generics.Identity?))
 :qid |unknown.0:0|
 :skolemid |2546|
 :pattern ( ($Is refType $o@@3 Tclass.Generics.IdentityImpl?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Generics.IdentityImpl?) ($IsBox bx@@5 Tclass.Generics.Identity?))
 :qid |unknown.0:0|
 :skolemid |2544|
 :pattern ( ($IsBox bx@@5 Tclass.Generics.IdentityImpl?))
)))
(assert (= (Tag Tclass.Generics.Identity?) Tagclass.Generics.Identity?))
(assert (= (TagFamily Tclass.Generics.Identity?) tytagFamily$Identity))
(assert (= (Tag Tclass.Generics.Identity) Tagclass.Generics.Identity))
(assert (= (TagFamily Tclass.Generics.Identity) tytagFamily$Identity))
(assert (= (Tag Tclass.Generics.IdentityImpl?) Tagclass.Generics.IdentityImpl?))
(assert (= (TagFamily Tclass.Generics.IdentityImpl?) tytagFamily$IdentityImpl))
(assert (= (Tag Tclass.Generics.IdentityImpl) Tagclass.Generics.IdentityImpl))
(assert (= (TagFamily Tclass.Generics.IdentityImpl) tytagFamily$IdentityImpl))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass.Generics.Identity?)  (or (= $o@@4 null) (implements$Generics.Identity (dtype $o@@4))))
 :qid |unknown.0:0|
 :skolemid |2463|
 :pattern ( ($Is refType $o@@4 Tclass.Generics.Identity?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Generics.Identity.Call$T () T@U)
(declare-fun Generics.IdentityImpl.Call$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$Generics.IdentityImpl.Call)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= Generics.Identity.Call$T Generics.IdentityImpl.Call$T) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@5 T@U) ($f T@U) ) (! true
 :qid |TraitCompiledfy.339:12|
 :skolemid |2475|
))) (=> (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |TraitCompiledfy.339:12|
 :skolemid |2475|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@7 T@U) ($f@@1 T@U) ) (! true
 :qid |TraitCompiledfy.339:12|
 :skolemid |2476|
)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Generics.IdentityImpl) ($IsAlloc refType this Tclass.Generics.IdentityImpl $Heap))) (and ($IsBox |x#0| Generics.IdentityImpl.Call$T) ($IsAllocBox |x#0| Generics.IdentityImpl.Call$T $Heap))) (and (and ($IsBox |r#0| Generics.IdentityImpl.Call$T) ($IsAllocBox |r#0| Generics.IdentityImpl.Call$T $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))) anon0_correct))))
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
