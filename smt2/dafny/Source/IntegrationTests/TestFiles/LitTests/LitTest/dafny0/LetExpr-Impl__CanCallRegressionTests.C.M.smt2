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
(declare-fun class.CanCallRegressionTests.C? () T@U)
(declare-fun Tagclass.CanCallRegressionTests.C? () T@U)
(declare-fun Tagclass.CanCallRegressionTests.C () T@U)
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
(declare-fun Tclass.CanCallRegressionTests.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.CanCallRegressionTests.C () T@U)
(declare-fun CanCallRegressionTests.C.x () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun CanCallRegressionTests.C.Id (T@U T@U) T@U)
(declare-fun |CanCallRegressionTests.C.Id#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$let#0_c| (T@U) T@U)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |$let#1_c| (T@U) T@U)
(declare-fun |$let#1$canCall| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName class.CanCallRegressionTests.C? Tagclass.CanCallRegressionTests.C? Tagclass.CanCallRegressionTests.C tytagFamily$C field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.CanCallRegressionTests.C?)  (or (= $o null) (= (dtype $o) Tclass.CanCallRegressionTests.C?)))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( ($Is refType $o Tclass.CanCallRegressionTests.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.CanCallRegressionTests.C $h) ($IsAlloc refType |c#0| Tclass.CanCallRegressionTests.C? $h))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAlloc refType |c#0| Tclass.CanCallRegressionTests.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.CanCallRegressionTests.C? $h))
)))
(assert (= (FDim CanCallRegressionTests.C.x) 0))
(assert (= (FieldOfDecl class.CanCallRegressionTests.C? field$x) CanCallRegressionTests.C.x))
(assert  (not ($IsGhostField CanCallRegressionTests.C.x)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.CanCallRegressionTests.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.CanCallRegressionTests.C? $h@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |578|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |589|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|c#0@@0| T@U) ) (!  (=> (or (|CanCallRegressionTests.C.Id#canCall| (Lit refType this) (Lit refType |c#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.CanCallRegressionTests.C)) ($Is refType |c#0@@0| Tclass.CanCallRegressionTests.C)))) (= (CanCallRegressionTests.C.Id (Lit refType this) (Lit refType |c#0@@0|)) (Lit refType |c#0@@0|)))
 :qid |LetExprdfy.362:14|
 :weight 3
 :skolemid |1102|
 :pattern ( (CanCallRegressionTests.C.Id (Lit refType this) (Lit refType |c#0@@0|)))
))))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.CanCallRegressionTests.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) CanCallRegressionTests.C.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1095|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) CanCallRegressionTests.C.x)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |602|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.CanCallRegressionTests.C)  (and ($Is refType |c#0@@1| Tclass.CanCallRegressionTests.C?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($Is refType |c#0@@1| Tclass.CanCallRegressionTests.C))
 :pattern ( ($Is refType |c#0@@1| Tclass.CanCallRegressionTests.C?))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |670|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|c#0@@2| T@U) ) (!  (=> (or (|CanCallRegressionTests.C.Id#canCall| this@@0 |c#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.CanCallRegressionTests.C)) ($Is refType |c#0@@2| Tclass.CanCallRegressionTests.C)))) (= (CanCallRegressionTests.C.Id this@@0 |c#0@@2|) |c#0@@2|))
 :qid |LetExprdfy.362:14|
 :skolemid |1100|
 :pattern ( (CanCallRegressionTests.C.Id this@@0 |c#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this@@1 T@U) (|c#0@@3| T@U) ) (!  (=> (and (or (|CanCallRegressionTests.C.Id#canCall| this@@1 |c#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($IsAlloc refType this@@1 Tclass.CanCallRegressionTests.C $Heap)) (and ($Is refType |c#0@@3| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#0@@3| Tclass.CanCallRegressionTests.C $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc refType (CanCallRegressionTests.C.Id this@@1 |c#0@@3|) Tclass.CanCallRegressionTests.C $Heap))
 :qid |LetExprdfy.362:14|
 :skolemid |1098|
 :pattern ( ($IsAlloc refType (CanCallRegressionTests.C.Id this@@1 |c#0@@3|) Tclass.CanCallRegressionTests.C $Heap))
))))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |588|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.CanCallRegressionTests.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) CanCallRegressionTests.C.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1094|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) CanCallRegressionTests.C.x)))
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
 :skolemid |2613|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|c#0@@4| T@U) ) (!  (=> (or (|CanCallRegressionTests.C.Id#canCall| this@@2 |c#0@@4|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.CanCallRegressionTests.C)) ($Is refType |c#0@@4| Tclass.CanCallRegressionTests.C)))) ($Is refType (CanCallRegressionTests.C.Id this@@2 |c#0@@4|) Tclass.CanCallRegressionTests.C))
 :qid |LetExprdfy.362:14|
 :skolemid |1097|
 :pattern ( (CanCallRegressionTests.C.Id this@@2 |c#0@@4|))
))))
(assert (= (Tag Tclass.CanCallRegressionTests.C?) Tagclass.CanCallRegressionTests.C?))
(assert (= (TagFamily Tclass.CanCallRegressionTests.C?) tytagFamily$C))
(assert (= (Tag Tclass.CanCallRegressionTests.C) Tagclass.CanCallRegressionTests.C))
(assert (= (TagFamily Tclass.CanCallRegressionTests.C) tytagFamily$C))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@3 T@U) (|c#0@@5| T@U) ) (!  (=> (or (|CanCallRegressionTests.C.Id#canCall| this@@3 (Lit refType |c#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.CanCallRegressionTests.C)) ($Is refType |c#0@@5| Tclass.CanCallRegressionTests.C)))) (= (CanCallRegressionTests.C.Id this@@3 (Lit refType |c#0@@5|)) (Lit refType |c#0@@5|)))
 :qid |LetExprdfy.362:14|
 :weight 3
 :skolemid |1101|
 :pattern ( (CanCallRegressionTests.C.Id this@@3 (Lit refType |c#0@@5|)))
))))
(assert (forall ((this@@4 T@U) ) (!  (=> (|$let#0$canCall| this@@4) (and ($Is refType (|$let#0_c| this@@4) Tclass.CanCallRegressionTests.C) (= (|$let#0_c| this@@4) this@@4)))
 :qid |LetExprdfy.368:15|
 :skolemid |1107|
 :pattern ( (|$let#0_c| this@@4))
)))
(assert (forall ((this@@5 T@U) ) (!  (=> (|$let#1$canCall| this@@5) (and ($Is refType (|$let#1_c| this@@5) Tclass.CanCallRegressionTests.C) (= (|$let#1_c| this@@5) this@@5)))
 :qid |LetExprdfy.369:17|
 :skolemid |1108|
 :pattern ( (|$let#1_c| this@@5))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |579|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |624|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |603|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@6 () T@U)
(declare-fun |c#3@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |c#4@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |e#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$CanCallRegressionTests.C.M)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (and ($Is refType this@@6 Tclass.CanCallRegressionTests.C) (= this@@6 this@@6)) (or (and ($Is refType null Tclass.CanCallRegressionTests.C) (= null this@@6)) (exists ((|c#2| T@U) ) (!  (and ($Is refType |c#2| Tclass.CanCallRegressionTests.C) (= |c#2| this@@6))
 :qid |LetExprdfy.369:21|
 :skolemid |1109|
))))) (=> (or (and ($Is refType this@@6 Tclass.CanCallRegressionTests.C) (= this@@6 this@@6)) (or (and ($Is refType null Tclass.CanCallRegressionTests.C) (= null this@@6)) (exists ((|c#2@@0| T@U) ) (!  (and ($Is refType |c#2@@0| Tclass.CanCallRegressionTests.C) (= |c#2@@0| this@@6))
 :qid |LetExprdfy.369:21|
 :skolemid |1109|
)))) (=> (and (and (and ($Is refType |c#3@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#3@0| Tclass.CanCallRegressionTests.C $Heap@@0)) (= |c#3@0| this@@6)) (and (and ($Is refType |c#4@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#4@0| Tclass.CanCallRegressionTests.C $Heap@@0)) (= |c#4@0| this@@6))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |c#3@0| |c#4@0|)) (=> (= |c#3@0| |c#4@0|) (=> (and (|$let#1$canCall| this@@6) (= (ControlFlow 0 2) (- 0 1))) (or (not (= (let ((|c#2@@1| (|$let#1_c| this@@6)))
|c#2@@1|) null)) (not true))))))))))
(let ((anon6_Else_correct  (=> (and (not (and ($Is refType |c#3@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#3@0| Tclass.CanCallRegressionTests.C $Heap@@0))) (= (ControlFlow 0 6) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and ($Is refType |c#3@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#3@0| Tclass.CanCallRegressionTests.C $Heap@@0)) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (and ($Is refType this@@6 Tclass.CanCallRegressionTests.C) (= this@@6 this@@6)) (or (and ($Is refType null Tclass.CanCallRegressionTests.C) (= null this@@6)) (exists ((|c#1| T@U) ) (!  (and ($Is refType |c#1| Tclass.CanCallRegressionTests.C) (= |c#1| this@@6))
 :qid |LetExprdfy.368:19|
 :skolemid |1106|
))))) (=> (or (and ($Is refType this@@6 Tclass.CanCallRegressionTests.C) (= this@@6 this@@6)) (or (and ($Is refType null Tclass.CanCallRegressionTests.C) (= null this@@6)) (exists ((|c#1@@0| T@U) ) (!  (and ($Is refType |c#1@@0| Tclass.CanCallRegressionTests.C) (= |c#1@@0| this@@6))
 :qid |LetExprdfy.368:19|
 :skolemid |1106|
)))) (=> (and (and (and ($Is refType |c#0@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#0@0| Tclass.CanCallRegressionTests.C $Heap@@0)) (= |c#0@0| this@@6)) (and (|$let#0$canCall| this@@6) (|$let#0$canCall| this@@6))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (let ((|c#1@@1| (|$let#0_c| this@@6)))
|c#1@@1|) this@@6)) (=> (= (let ((|c#1@@2| (|$let#0_c| this@@6)))
|c#1@@2|) this@@6) (and (=> (= (ControlFlow 0 7) 5) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))))))
(let ((anon5_Else_correct  (=> (and (not (and ($Is refType |c#0@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#0@0| Tclass.CanCallRegressionTests.C $Heap@@0))) (= (ControlFlow 0 11) 7)) anon2_correct)))
(let ((anon5_Then_correct  (=> (and (and ($Is refType |c#0@0| Tclass.CanCallRegressionTests.C) ($IsAlloc refType |c#0@0| Tclass.CanCallRegressionTests.C $Heap@@0)) (= (ControlFlow 0 10) 7)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (and ($IsAllocBox ($Box refType this@@6) Tclass.CanCallRegressionTests.C? $Heap@@0) ($IsAlloc refType this@@6 Tclass.CanCallRegressionTests.C $Heap@@0)) (and (|CanCallRegressionTests.C.Id#canCall| this@@6 this@@6) (|CanCallRegressionTests.C.Id#canCall| this@@6 this@@6))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= (CanCallRegressionTests.C.Id this@@6 this@@6) this@@6)) (=> (= (CanCallRegressionTests.C.Id this@@6 this@@6) this@@6) (=> ($IsAllocBox ($Box refType this@@6) Tclass.CanCallRegressionTests.C? $Heap@@0) (=> (and ($IsAlloc refType this@@6 Tclass.CanCallRegressionTests.C $Heap@@0) (|CanCallRegressionTests.C.Id#canCall| this@@6 this@@6)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= (CanCallRegressionTests.C.Id this@@6 this@@6) null)) (not true))) (=> (or (not (= (CanCallRegressionTests.C.Id this@@6 this@@6) null)) (not true)) (=> (and (|CanCallRegressionTests.C.Id#canCall| this@@6 this@@6) (= |e#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (CanCallRegressionTests.C.Id this@@6 this@@6)) CanCallRegressionTests.C.x))))) (and (=> (= (ControlFlow 0 12) 10) anon5_Then_correct) (=> (= (ControlFlow 0 12) 11) anon5_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass.CanCallRegressionTests.C) ($IsAlloc refType this@@6 Tclass.CanCallRegressionTests.C $Heap@@0))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 15) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
