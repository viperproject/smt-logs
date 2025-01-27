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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.AClass () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun class._module.AClass? () T@U)
(declare-fun Tagclass._module.AClass? () T@U)
(declare-fun tytagFamily$AClass () T@U)
(declare-fun tytagFamily$uint32 () T@U)
(declare-fun field$x () T@U)
(declare-fun field$y () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.AClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.AClass () T@U)
(declare-fun _module.AClass.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.AClass.y () T@U)
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
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc allocName Tagclass._module.AClass Tagclass._module.uint32 class._module.AClass? Tagclass._module.AClass? tytagFamily$AClass tytagFamily$uint32 field$x field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.AClass?)  (or (= $o null) (= (dtype $o) Tclass._module.AClass?)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($Is refType $o Tclass._module.AClass?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.AClass $h@@0) ($IsAlloc refType |c#0| Tclass._module.AClass? $h@@0))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.AClass $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.AClass? $h@@0))
)))
(assert (= (FDim _module.AClass.x) 0))
(assert (= (FieldOfDecl class._module.AClass? field$x) _module.AClass.x))
(assert  (not ($IsGhostField _module.AClass.x)))
(assert (= (FDim _module.AClass.y) 0))
(assert (= (FieldOfDecl class._module.AClass? field$y) _module.AClass.y))
(assert  (not ($IsGhostField _module.AClass.y)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.AClass? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.AClass? $h@@1))
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
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.AClass?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.AClass.x)) Tclass._module.uint32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |550|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.AClass.x)))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.AClass?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.AClass.y)) Tclass._module.uint32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |552|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.AClass.y)))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.AClass)  (and ($Is refType |c#0@@0| Tclass._module.AClass?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.AClass))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.AClass?))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.AClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.AClass.x)) Tclass._module.uint32 $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |551|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.AClass.x)))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.AClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.AClass.y)) Tclass._module.uint32 $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |553|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.AClass.y)))
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
 :skolemid |560|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.AClass) Tagclass._module.AClass))
(assert (= (TagFamily Tclass._module.AClass) tytagFamily$AClass))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (= (Tag Tclass._module.AClass?) Tagclass._module.AClass?))
(assert (= (TagFamily Tclass._module.AClass?) tytagFamily$AClass))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@this@0 () T@U)
(declare-fun call1formal@this@0@@0 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |$rhs#4@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |$rhs#5@0| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun call1formal@this@0@@1 () T@U)
(declare-fun call1formal@this@@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun call1formal@this@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestEquality)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon11_Else_correct true))
(let ((anon11_Then_correct  (=> (and (= call1formal@this@0 call1formal@this@0@@0) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon6_correct  (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.AClass) ($IsAlloc refType call1formal@this Tclass._module.AClass $Heap))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (=> (and (and (and (or (not (= call1formal@this@0@@0 null)) (not true)) (and ($Is refType call1formal@this@0@@0 Tclass._module.AClass) ($IsAlloc refType call1formal@this@0@@0 Tclass._module.AClass $Heap@6))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0@@0) alloc))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |classdfy.132:3|
 :skolemid |555|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 4) (- 0 14)) true) (and (=> (= (ControlFlow 0 4) (- 0 13)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (or (not (= call1formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@0 _module.AClass.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@0 _module.AClass.x)) (=> (= |newtype$check#4@0| (LitInt 25)) (and (=> (= (ControlFlow 0 4) (- 0 11)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (= |$rhs#4@0| (LitInt 25)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0@@0) _module.AClass.x ($Box intType (int_2_U |$rhs#4@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 4) (- 0 10)) true) (and (=> (= (ControlFlow 0 4) (- 0 9)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (or (not (= call1formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@0 _module.AClass.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@0 _module.AClass.y)) (=> (= |newtype$check#5@0| (LitInt 15)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |$rhs#5@0| (LitInt 15)) (=> (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0@@0) _module.AClass.y ($Box intType (int_2_U |$rhs#5@0|))))) ($IsGoodHeap $Heap@8)) (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (and (=> (= (ControlFlow 0 4) 2) anon11_Then_correct) (=> (= (ControlFlow 0 4) 3) anon11_Else_correct))))))))))))))))))))))))))))
(let ((anon10_Else_correct  (=> (and (or (not (= call1formal@this@0 call1formal@this@0@@1)) (not true)) (= (ControlFlow 0 17) 4)) anon6_correct)))
(let ((anon10_Then_correct  (=> (= call1formal@this@0 call1formal@this@0@@1) (and (=> (= (ControlFlow 0 15) (- 0 16)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 15) 4) anon6_correct))))))
(let ((anon3_correct  (=> (and (and (or (not (= call1formal@this@@0 null)) (not true)) (and ($Is refType call1formal@this@@0 Tclass._module.AClass) ($IsAlloc refType call1formal@this@@0 Tclass._module.AClass $Heap))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (=> (and (and (and (or (not (= call1formal@this@0@@1 null)) (not true)) (and ($Is refType call1formal@this@0@@1 Tclass._module.AClass) ($IsAlloc refType call1formal@this@0@@1 Tclass._module.AClass $Heap@3))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@1) alloc))))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7)))
 :qid |classdfy.132:3|
 :skolemid |555|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 18) (- 0 28)) true) (and (=> (= (ControlFlow 0 18) (- 0 27)) (or (not (= call1formal@this@0@@1 null)) (not true))) (=> (or (not (= call1formal@this@0@@1 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@1 _module.AClass.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@1 _module.AClass.x)) (=> (= |newtype$check#2@0| (LitInt 1)) (and (=> (= (ControlFlow 0 18) (- 0 25)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (= |$rhs#2@0| (LitInt 1)) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0@@1) _module.AClass.x ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 18) (- 0 24)) true) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (not (= call1formal@this@0@@1 null)) (not true))) (=> (or (not (= call1formal@this@0@@1 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@1 _module.AClass.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0@@1 _module.AClass.y)) (=> (= |newtype$check#3@0| (LitInt 2)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |$rhs#3@0| (LitInt 2)) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0@@1) _module.AClass.y ($Box intType (int_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (and (=> (= (ControlFlow 0 18) (- 0 19)) true) (and (=> (= (ControlFlow 0 18) 15) anon10_Then_correct) (=> (= (ControlFlow 0 18) 17) anon10_Else_correct))))))))))))))))))))))))))))
(let ((anon9_Else_correct  (=> (or (not (= call1formal@this@0 call1formal@this@0)) (not true)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 30) 18) anon3_correct))))))
(let ((anon9_Then_correct  (=> (and (= call1formal@this@0 call1formal@this@0) (= (ControlFlow 0 29) 18)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this@@1 null)) (not true)) (and ($Is refType call1formal@this@@1 Tclass._module.AClass) ($IsAlloc refType call1formal@this@@1 Tclass._module.AClass $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.AClass) ($IsAlloc refType call1formal@this@0 Tclass._module.AClass $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |classdfy.132:3|
 :skolemid |555|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 32) (- 0 42)) true) (and (=> (= (ControlFlow 0 32) (- 0 41)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 32) (- 0 40)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.AClass.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.AClass.x)) (=> (= |newtype$check#0@0| (LitInt 25)) (and (=> (= (ControlFlow 0 32) (- 0 39)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |$rhs#0@0| (LitInt 25)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) _module.AClass.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 32) (- 0 38)) true) (and (=> (= (ControlFlow 0 32) (- 0 37)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 32) (- 0 36)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.AClass.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.AClass.y)) (=> (= |newtype$check#1@0| (LitInt 15)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |$rhs#1@0| (LitInt 15)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.AClass.y ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 32) (- 0 34)) true) (and (=> (= (ControlFlow 0 32) (- 0 33)) true) (and (=> (= (ControlFlow 0 32) 29) anon9_Then_correct) (=> (= (ControlFlow 0 32) 30) anon9_Else_correct)))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#a#0| (and ($Is refType |a#0| Tclass._module.AClass) ($IsAlloc refType |a#0| Tclass._module.AClass $Heap))) true) (and (=> |defass#b#0| (and ($Is refType |b#0| Tclass._module.AClass) ($IsAlloc refType |b#0| Tclass._module.AClass $Heap))) true)) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass._module.AClass) ($IsAlloc refType |c#0@@1| Tclass._module.AClass $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 43) 32)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
