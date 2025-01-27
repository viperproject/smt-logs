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
(declare-fun field$z () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
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
(declare-fun _module.C.z () T@U)
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
(declare-fun |lambda#8| (T@U T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.C Tagclass._module.C? class._module.C? tytagFamily$C field$x field$z)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |865|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |866|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |864|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |861|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (= (FDim _module.C.z) 0))
(assert (= (FieldOfDecl class._module.C? field$z) _module.C.z))
(assert  (not ($IsGhostField _module.C.z)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |854|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |855|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |751|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |762|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1524|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.x)))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.C.z)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1526|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.C.z)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (or (or (= $o@@3 |l#3|) (= $o@@3 |l#4|)) (= $o@@3 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1679|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@3 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.C)  (and ($Is refType |c#0@@0| Tclass._module.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C?))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |853|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |843|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |761|
 :pattern ( ($Box T@@2 x@@7))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.C.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.C.x)))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.C.z)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1525|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.C.z)))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@8))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |852|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@8)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@9)) (Lit BoxType ($Box T@@3 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |752|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@9)))
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
(declare-fun |d#0| () T@U)
(declare-fun this () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$unchanged#x2_0@0| () T@U)
(declare-fun |$unchanged#x3_0@0| () T@U)
(declare-fun |$unchanged#x3_1@0| () T@U)
(declare-fun |$unchanged#x3_2@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |y#0| () Int)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.C.Unchanged)
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
 (=> (= (ControlFlow 0 0) 47) (let ((anon10_correct  (=> (and (or (not (= |d#0| this)) (not true)) (or (not (= |d#0| |c#0@@1|)) (not true))) (and (=> (= (ControlFlow 0 20) (- 0 23)) ($IsAlloc refType this Tclass._module.C $Heap@2)) (=> ($IsAlloc refType this Tclass._module.C $Heap@2) (and (=> (= (ControlFlow 0 20) (- 0 22)) ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap@2)) (=> ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap@2) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@6 null)) (not true)) (=> (= $o@@6 this) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) $f@@0))))
 :qid |LabelsOldAtdfy.74:14|
 :skolemid |1558|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6) $f@@0))
))) (=> (= (ControlFlow 0 20) (- 0 19)) (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@7 null)) (not true)) (=> (= $o@@7 |c#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) $f@@1))))
 :qid |LabelsOldAtdfy.74:14|
 :skolemid |1559|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) $f@@1))
)))))))))))
(let ((anon20_Else_correct  (=> (and (= |d#0| this) (= (ControlFlow 0 25) 20)) anon10_correct)))
(let ((anon20_Then_correct  (=> (and (or (not (= |d#0| this)) (not true)) (= (ControlFlow 0 24) 20)) anon10_correct)))
(let ((anon24_Else_correct  (=> (and (and (and (and (and (not (and (or (not (= |d#0| this)) (not true)) (or (not (= |d#0| |c#0@@1|)) (not true)))) (= |d#0| this)) (= |d#0| |c#0@@1|)) (= |d#0| |c#0@@1|)) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 18) (- 0 17))) false)))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@1|)) ($Box refType |d#0|)) ($Box refType |$unchanged#x2_0@0|)) ($IsAlloc refType |$unchanged#x2_0@0| Tclass._module.C $Heap@3))) (=> (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@1|)) ($Box refType |d#0|)) ($Box refType |$unchanged#x2_0@0|)) ($IsAlloc refType |$unchanged#x2_0@0| Tclass._module.C $Heap@3)) (=> (= (ControlFlow 0 15) (- 0 14)) (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@8 null)) (not true)) (=> (or (= $o@@8 |c#0@@1|) (= $o@@8 |d#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) $f@@2))))
 :qid |LabelsOldAtdfy.84:14|
 :skolemid |1547|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) $f@@2))
)))))))
(let ((anon23_Then_correct  (=> (or (not (= |d#0| |c#0@@1|)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 13)) (=> (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@1|)) ($Box refType |$unchanged#x3_0@0|)) ($IsAlloc refType |$unchanged#x3_0@0| Tclass._module.C $Heap@2))) (=> (=> (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@1|)) ($Box refType |$unchanged#x3_0@0|)) ($IsAlloc refType |$unchanged#x3_0@0| Tclass._module.C $Heap@2)) (and (=> (= (ControlFlow 0 8) (- 0 12)) (forall (($o@@9 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@9 null)) (not true)) (=> (= $o@@9 |c#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@3))))
 :qid |LabelsOldAtdfy.80:14|
 :skolemid |1549|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) $f@@3))
))) (=> (forall (($o@@10 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@10 null)) (not true)) (=> (= $o@@10 |c#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) $f@@4))))
 :qid |LabelsOldAtdfy.80:14|
 :skolemid |1549|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) $f@@4))
)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType this)) ($Box refType |d#0|)) ($Box refType |$unchanged#x3_1@0|)) ($IsAlloc refType |$unchanged#x3_1@0| Tclass._module.C $Heap@2))) (=> (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType this)) ($Box refType |d#0|)) ($Box refType |$unchanged#x3_1@0|)) ($IsAlloc refType |$unchanged#x3_1@0| Tclass._module.C $Heap@2)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (forall (($o@@11 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (and (or (= $o@@11 this) (= $o@@11 |d#0|)) (or (= $f@@5 _module.C.z) (= $f@@5 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11) $f@@5))))
 :qid |LabelsOldAtdfy.81:14|
 :skolemid |1551|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) $f@@5))
))) (=> (forall (($o@@12 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (and (or (= $o@@12 this) (= $o@@12 |d#0|)) (or (= $f@@6 _module.C.z) (= $f@@6 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12) $f@@6))))
 :qid |LabelsOldAtdfy.81:14|
 :skolemid |1551|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) $f@@6))
)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType this)) ($Box refType |d#0|)) ($Box refType |$unchanged#x3_2@0|)) ($IsAlloc refType |$unchanged#x3_2@0| Tclass._module.C $Heap))) (=> (=> (|Set#IsMember| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType this)) ($Box refType |d#0|)) ($Box refType |$unchanged#x3_2@0|)) ($IsAlloc refType |$unchanged#x3_2@0| Tclass._module.C $Heap)) (=> (= (ControlFlow 0 8) (- 0 7)) (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (and (or (= $o@@13 this) (= $o@@13 |d#0|)) (or (= $f@@7 _module.C.z) (= $f@@7 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) $f@@7))))
 :qid |LabelsOldAtdfy.82:14|
 :skolemid |1553|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) $f@@7))
))))))))))))))))
(let ((anon22_Then_correct  (=> (or (not (= |d#0| |c#0@@1|)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType this Tclass._module.C $Heap@2)) (=> ($IsAlloc refType this Tclass._module.C $Heap@2) (=> (= (ControlFlow 0 5) (- 0 4)) (forall (($o@@14 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (and (= $o@@14 this) (or (= $f@@8 _module.C.x) (= $f@@8 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@14) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14) $f@@8))))
 :qid |LabelsOldAtdfy.78:14|
 :skolemid |1555|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@14) $f@@8))
))))))))
(let ((anon21_Then_correct  (=> (or (not (= |d#0| this)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this Tclass._module.C $Heap@2)) (=> ($IsAlloc refType this Tclass._module.C $Heap@2) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@15 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (and (= $o@@15 this) (or (= $f@@9 _module.C.x) (= $f@@9 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15) $f@@9))))
 :qid |LabelsOldAtdfy.76:14|
 :skolemid |1557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15) $f@@9))
))))))))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 26) (- 0 29)) (or (not (= |d#0| null)) (not true))) (=> (or (not (= |d#0| null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |d#0| _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |d#0| _module.C.x)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= |d#0| null)) (not true))) (=> (or (not (= |d#0| null)) (not true)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |d#0|) _module.C.x))) 1)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 |d#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |d#0|) _module.C.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@3)) (and (and (and (and (and (and (=> (= (ControlFlow 0 26) 2) anon21_Then_correct) (=> (= (ControlFlow 0 26) 5) anon22_Then_correct)) (=> (= (ControlFlow 0 26) 8) anon23_Then_correct)) (=> (= (ControlFlow 0 26) 15) anon24_Then_correct)) (=> (= (ControlFlow 0 26) 18) anon24_Else_correct)) (=> (= (ControlFlow 0 26) 24) anon20_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon20_Else_correct))))))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> (or (not (= |c#0@@1| this)) (not true)) (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@16 null)) (not true)) (=> (= $o@@16 |c#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@16) $f@@10))))
 :qid |LabelsOldAtdfy.64:28|
 :skolemid |1542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) $f@@10))
)))) (=> (=> (or (not (= |c#0@@1| this)) (not true)) (forall (($o@@17 T@U) ($f@@11 T@U) ) (!  (=> (or (not (= $o@@17 null)) (not true)) (=> (= $o@@17 |c#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@17) $f@@11))))
 :qid |LabelsOldAtdfy.64:28|
 :skolemid |1543|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) $f@@11))
))) (=> (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 39) 26)) anon7_correct)))))
(let ((anon17_Else_correct  (=> (and (= |c#0@@1| this) (= (ControlFlow 0 43) 39)) anon3_correct)))
(let ((anon17_Then_correct  (=> (or (not (= |c#0@@1| this)) (not true)) (and (=> (= (ControlFlow 0 41) (- 0 42)) ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap)) (=> ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap) (=> (= (ControlFlow 0 41) 39) anon3_correct))))))
(let ((anon16_Then_correct  (=> (< |y#0| 5) (and (=> (= (ControlFlow 0 44) (- 0 45)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (= |$rhs#0_0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.x))) 1)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.x ($Box intType (int_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 44) 41) anon17_Then_correct) (=> (= (ControlFlow 0 44) 43) anon17_Else_correct)))))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (=> (or (not (= |c#0@@1| this)) (not true)) (forall (($o@@18 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@18 null)) (not true)) (=> (= $o@@18 this) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@18) $f@@12))))
 :qid |LabelsOldAtdfy.67:28|
 :skolemid |1544|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) $f@@12))
)))) (=> (=> (or (not (= |c#0@@1| this)) (not true)) (forall (($o@@19 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@19 null)) (not true)) (=> (= $o@@19 this) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@19) $f@@13))))
 :qid |LabelsOldAtdfy.67:28|
 :skolemid |1545|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19) $f@@13))
))) (=> (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 30) 26)) anon7_correct)))))
(let ((anon18_Else_correct  (=> (and (= |c#0@@1| this) (= (ControlFlow 0 34) 30)) anon6_correct)))
(let ((anon18_Then_correct  (=> (or (not (= |c#0@@1| this)) (not true)) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($IsAlloc refType this Tclass._module.C $Heap)) (=> ($IsAlloc refType this Tclass._module.C $Heap) (=> (= (ControlFlow 0 32) 30) anon6_correct))))))
(let ((anon16_Else_correct  (=> (<= 5 |y#0|) (and (=> (= (ControlFlow 0 35) (- 0 38)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| _module.C.x)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (=> (= |$rhs#1_0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@1|) _module.C.x))) 2)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |c#0@@1| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@1|) _module.C.x ($Box intType (int_2_U |$rhs#1_0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 35) 32) anon18_Then_correct) (=> (= (ControlFlow 0 35) 34) anon18_Else_correct)))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#8| null $Heap alloc this |c#0@@1| |d#0|)) (and (=> (= (ControlFlow 0 46) 44) anon16_Then_correct) (=> (= (ControlFlow 0 46) 35) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap))) (and ($Is refType |c#0@@1| Tclass._module.C) ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap))) (and (and ($Is refType |d#0| Tclass._module.C) ($IsAlloc refType |d#0| Tclass._module.C $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 47) 46)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
