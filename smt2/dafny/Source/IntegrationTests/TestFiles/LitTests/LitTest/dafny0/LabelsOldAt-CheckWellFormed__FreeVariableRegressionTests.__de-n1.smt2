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
(declare-fun Tagclass.FreeVariableRegressionTests.C () T@U)
(declare-fun Tagclass.FreeVariableRegressionTests.Color () T@U)
(declare-fun class.FreeVariableRegressionTests.C? () T@U)
(declare-fun Tagclass.FreeVariableRegressionTests.C? () T@U)
(declare-fun |##FreeVariableRegressionTests.Color.Red| () T@U)
(declare-fun |##FreeVariableRegressionTests.Color.Blue| () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#FreeVariableRegressionTests.Color.Red| () T@U)
(declare-fun |#FreeVariableRegressionTests.Color.Blue| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.FreeVariableRegressionTests.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.FreeVariableRegressionTests.C () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.FreeVariableRegressionTests.Color () T@U)
(declare-fun FreeVariableRegressionTests.C.x () T@U)
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
(declare-fun FreeVariableRegressionTests.Color.Red_q (T@U) Bool)
(declare-fun FreeVariableRegressionTests.Color.Blue_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |$IsA#FreeVariableRegressionTests.Color| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.FreeVariableRegressionTests.C Tagclass.FreeVariableRegressionTests.Color class.FreeVariableRegressionTests.C? Tagclass.FreeVariableRegressionTests.C? |##FreeVariableRegressionTests.Color.Red| |##FreeVariableRegressionTests.Color.Blue| tytagFamily$C tytagFamily$Color field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (DatatypeCtorId |#FreeVariableRegressionTests.Color.Red|) |##FreeVariableRegressionTests.Color.Red|))
(assert (= (DatatypeCtorId |#FreeVariableRegressionTests.Color.Blue|) |##FreeVariableRegressionTests.Color.Blue|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.FreeVariableRegressionTests.C?)  (or (= $o null) (= (dtype $o) Tclass.FreeVariableRegressionTests.C?)))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($Is refType $o Tclass.FreeVariableRegressionTests.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.FreeVariableRegressionTests.C $h) ($IsAlloc refType |c#0| Tclass.FreeVariableRegressionTests.C? $h))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( ($IsAlloc refType |c#0| Tclass.FreeVariableRegressionTests.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.FreeVariableRegressionTests.C? $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#FreeVariableRegressionTests.Color.Red| Tclass.FreeVariableRegressionTests.Color))
(assert ($Is DatatypeTypeType |#FreeVariableRegressionTests.Color.Blue| Tclass.FreeVariableRegressionTests.Color))
(assert (= (FDim FreeVariableRegressionTests.C.x) 0))
(assert (= (FieldOfDecl class.FreeVariableRegressionTests.C? field$x) FreeVariableRegressionTests.C.x))
(assert  (not ($IsGhostField FreeVariableRegressionTests.C.x)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.FreeVariableRegressionTests.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.FreeVariableRegressionTests.C? $h@@0))
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
(assert (forall ((d T@U) ) (! (= (FreeVariableRegressionTests.Color.Red_q d) (= (DatatypeCtorId d) |##FreeVariableRegressionTests.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (FreeVariableRegressionTests.Color.Red_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (FreeVariableRegressionTests.Color.Blue_q d@@0) (= (DatatypeCtorId d@@0) |##FreeVariableRegressionTests.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (FreeVariableRegressionTests.Color.Blue_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (FreeVariableRegressionTests.Color.Red_q d@@1) (= d@@1 |#FreeVariableRegressionTests.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (FreeVariableRegressionTests.Color.Red_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (FreeVariableRegressionTests.Color.Blue_q d@@2) (= d@@2 |#FreeVariableRegressionTests.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (FreeVariableRegressionTests.Color.Blue_q d@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.FreeVariableRegressionTests.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) FreeVariableRegressionTests.C.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |718|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) FreeVariableRegressionTests.C.x)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1674|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.FreeVariableRegressionTests.C)  (and ($Is refType |c#0@@0| Tclass.FreeVariableRegressionTests.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( ($Is refType |c#0@@0| Tclass.FreeVariableRegressionTests.C))
 :pattern ( ($Is refType |c#0@@0| Tclass.FreeVariableRegressionTests.C?))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#FreeVariableRegressionTests.Color| d@@3) (or (FreeVariableRegressionTests.Color.Red_q d@@3) (FreeVariableRegressionTests.Color.Blue_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (|$IsA#FreeVariableRegressionTests.Color| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.FreeVariableRegressionTests.Color) (or (FreeVariableRegressionTests.Color.Red_q d@@4) (FreeVariableRegressionTests.Color.Blue_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (FreeVariableRegressionTests.Color.Blue_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.FreeVariableRegressionTests.Color))
 :pattern ( (FreeVariableRegressionTests.Color.Red_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.FreeVariableRegressionTests.Color))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.FreeVariableRegressionTests.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) FreeVariableRegressionTests.C.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |717|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) FreeVariableRegressionTests.C.x)))
)))
(assert (forall ((d@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@5 Tclass.FreeVariableRegressionTests.Color)) ($IsAlloc DatatypeTypeType d@@5 Tclass.FreeVariableRegressionTests.Color $h@@3))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.FreeVariableRegressionTests.Color $h@@3))
)))
(assert (= (Tag Tclass.FreeVariableRegressionTests.C) Tagclass.FreeVariableRegressionTests.C))
(assert (= (TagFamily Tclass.FreeVariableRegressionTests.C) tytagFamily$C))
(assert (= (Tag Tclass.FreeVariableRegressionTests.Color) Tagclass.FreeVariableRegressionTests.Color))
(assert (= (TagFamily Tclass.FreeVariableRegressionTests.Color) tytagFamily$Color))
(assert (= (Tag Tclass.FreeVariableRegressionTests.C?) Tagclass.FreeVariableRegressionTests.C?))
(assert (= (TagFamily Tclass.FreeVariableRegressionTests.C?) tytagFamily$C))
(assert (= |#FreeVariableRegressionTests.Color.Red| (Lit DatatypeTypeType |#FreeVariableRegressionTests.Color.Red|)))
(assert (= |#FreeVariableRegressionTests.Color.Blue| (Lit DatatypeTypeType |#FreeVariableRegressionTests.Color.Blue|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |color#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$FreeVariableRegressionTests.__default.M0)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc |c#0@@1|)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |c#0@@1| null)) (not true)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |c#0@@1| Tclass.FreeVariableRegressionTests.C) ($IsAlloc refType |c#0@@1| Tclass.FreeVariableRegressionTests.C $Heap))) (=> (and (and (and ($Is DatatypeTypeType |color#0| Tclass.FreeVariableRegressionTests.Color) ($IsAlloc DatatypeTypeType |color#0| Tclass.FreeVariableRegressionTests.Color $Heap)) (|$IsA#FreeVariableRegressionTests.Color| |color#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
