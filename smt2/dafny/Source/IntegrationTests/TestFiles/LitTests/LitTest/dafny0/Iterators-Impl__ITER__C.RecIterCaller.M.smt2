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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.ITER__C.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__C.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__C.RecIterCaller? () T@U)
(declare-fun Tagclass.ITER__C.RecursiveIterator () T@U)
(declare-fun Tagclass.ITER__C.RecIterCaller () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$RecursiveIterator () T@U)
(declare-fun tytagFamily$RecIterCaller () T@U)
(declare-fun field$_new () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun ITER__C.RecursiveIterator.good (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ITER__C.RecursiveIterator? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun ITER__C.RecursiveIterator.__decreases0 (T@U) Int)
(declare-fun ITER__C.RecursiveIterator.__decreases2 (T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.ITER__C.RecIterCaller? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ITER__C.RecursiveIterator () T@U)
(declare-fun Tclass.ITER__C.RecIterCaller () T@U)
(declare-fun ITER__C.RecursiveIterator.__new () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun ITER__C.RecursiveIterator.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun ITER__C.RecursiveIterator.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun ITER__C.RecursiveIterator.n (T@U) Int)
(declare-fun ITER__C.RecursiveIterator.r (T@U) T@U)
(declare-fun ITER__C.RecursiveIterator.__decreases1 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun ITER__C.RecursiveIterator.__modifies (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object class.ITER__C.RecursiveIterator? Tagclass.ITER__C.RecursiveIterator? Tagclass.ITER__C.RecIterCaller? Tagclass.ITER__C.RecursiveIterator Tagclass.ITER__C.RecIterCaller tytagFamily$nat tytagFamily$object tytagFamily$RecursiveIterator tytagFamily$RecIterCaller field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1395|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.ITER__C.RecursiveIterator?)) ($Is boolType (bool_2_U (ITER__C.RecursiveIterator.good $o)) TBool))
 :qid |unknown.0:0|
 :skolemid |1537|
 :pattern ( (ITER__C.RecursiveIterator.good $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.ITER__C.RecursiveIterator?)) ($Is intType (int_2_U (ITER__C.RecursiveIterator.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |1545|
 :pattern ( (ITER__C.RecursiveIterator.__decreases0 $o@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.ITER__C.RecursiveIterator?)) ($Is boolType (bool_2_U (ITER__C.RecursiveIterator.__decreases2 $o@@1)) TBool))
 :qid |unknown.0:0|
 :skolemid |1549|
 :pattern ( (ITER__C.RecursiveIterator.__decreases2 $o@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1175|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.ITER__C.RecursiveIterator?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.ITER__C.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |1530|
 :pattern ( ($Is refType $o@@2 Tclass.ITER__C.RecursiveIterator?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.ITER__C.RecIterCaller?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.ITER__C.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($Is refType $o@@3 Tclass.ITER__C.RecIterCaller?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ITER__C.RecursiveIterator $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ITER__C.RecursiveIterator? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1562|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__C.RecursiveIterator $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__C.RecursiveIterator? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ITER__C.RecIterCaller $h@@2) ($IsAlloc refType |c#0@@1| Tclass.ITER__C.RecIterCaller? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1577|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__C.RecIterCaller $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__C.RecIterCaller? $h@@2))
)))
(assert (= (FDim ITER__C.RecursiveIterator.__new) 0))
(assert (= (FieldOfDecl class.ITER__C.RecursiveIterator? field$_new) ITER__C.RecursiveIterator.__new))
(assert ($IsGhostField ITER__C.RecursiveIterator.__new))
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
(assert (forall (($o@@4 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@3)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.ITER__C.RecursiveIterator? $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1531|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.ITER__C.RecursiveIterator? $h@@4))
)))
(assert (forall (($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.ITER__C.RecIterCaller? $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1569|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ITER__C.RecIterCaller? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1168|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1169|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1067|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1065|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1076|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1096|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1097|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1394|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ITER__C.RecursiveIterator))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (or (= $o@@7 this) (|Set#IsMember| (ITER__C.RecursiveIterator.__reads this) ($Box refType $o@@7))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) ITER__C.RecursiveIterator.__new)) ($Box refType $o@@7)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |1554|
)) (= (ITER__C.RecursiveIterator.Valid $h0 this) (ITER__C.RecursiveIterator.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1555|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ITER__C.RecursiveIterator.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1089|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1161|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1160|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1396|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1399|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.ITER__C.RecursiveIterator?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.ITER__C.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |1529|
 :pattern ( ($IsBox bx@@4 Tclass.ITER__C.RecursiveIterator?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.ITER__C.RecIterCaller?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.ITER__C.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |1534|
 :pattern ( ($IsBox bx@@5 Tclass.ITER__C.RecIterCaller?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.ITER__C.RecursiveIterator) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.ITER__C.RecursiveIterator)))
 :qid |unknown.0:0|
 :skolemid |1552|
 :pattern ( ($IsBox bx@@6 Tclass.ITER__C.RecursiveIterator))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.ITER__C.RecIterCaller) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.ITER__C.RecIterCaller)))
 :qid |unknown.0:0|
 :skolemid |1570|
 :pattern ( ($IsBox bx@@7 Tclass.ITER__C.RecIterCaller))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1400|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.ITER__C.RecursiveIterator)  (and ($Is refType |c#0@@3| Tclass.ITER__C.RecursiveIterator?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( ($Is refType |c#0@@3| Tclass.ITER__C.RecursiveIterator))
 :pattern ( ($Is refType |c#0@@3| Tclass.ITER__C.RecursiveIterator?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.ITER__C.RecIterCaller)  (and ($Is refType |c#0@@4| Tclass.ITER__C.RecIterCaller?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1576|
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__C.RecIterCaller))
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__C.RecIterCaller?))
)))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.ITER__C.RecursiveIterator?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) ITER__C.RecursiveIterator.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1543|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) ITER__C.RecursiveIterator.__new)))
)))
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) ITER__C.RecursiveIterator.__new)) (TSet Tclass._System.object?) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1544|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) ITER__C.RecursiveIterator.__new)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1200|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1167|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1157|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1077|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1079|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1088|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1117|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1118|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1397|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1051|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1052|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1075|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc boolType (bool_2_U (ITER__C.RecursiveIterator.good $o@@11)) TBool $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1538|
 :pattern ( (ITER__C.RecursiveIterator.good $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (ITER__C.RecursiveIterator.__decreases0 $o@@12)) TInt $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1546|
 :pattern ( (ITER__C.RecursiveIterator.__decreases0 $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))
)))
(assert (forall (($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))) ($IsAlloc boolType (bool_2_U (ITER__C.RecursiveIterator.__decreases2 $o@@13)) TBool $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1550|
 :pattern ( (ITER__C.RecursiveIterator.__decreases2 $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5358|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.ITER__C.RecursiveIterator?)) ($Is intType (int_2_U (ITER__C.RecursiveIterator.n $o@@15)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( (ITER__C.RecursiveIterator.n $o@@15))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.ITER__C.RecursiveIterator?)) ($Is refType (ITER__C.RecursiveIterator.r $o@@16) Tclass.ITER__C.RecIterCaller?))
 :qid |unknown.0:0|
 :skolemid |1535|
 :pattern ( (ITER__C.RecursiveIterator.r $o@@16))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.ITER__C.RecursiveIterator?)) ($Is refType (ITER__C.RecursiveIterator.__decreases1 $o@@17) Tclass.ITER__C.RecIterCaller?))
 :qid |unknown.0:0|
 :skolemid |1547|
 :pattern ( (ITER__C.RecursiveIterator.__decreases1 $o@@17))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1082|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall (($h@@11 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (ITER__C.RecursiveIterator.n $o@@18)) Tclass._System.nat $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1533|
 :pattern ( (ITER__C.RecursiveIterator.n $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@18) alloc)))
)))
(assert (forall (($h@@12 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@19) alloc)))) ($IsAlloc refType (ITER__C.RecursiveIterator.r $o@@19) Tclass.ITER__C.RecIterCaller? $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1536|
 :pattern ( (ITER__C.RecursiveIterator.r $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@19) alloc)))
)))
(assert (forall (($h@@13 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@20) alloc)))) ($IsAlloc refType (ITER__C.RecursiveIterator.__decreases1 $o@@20) Tclass.ITER__C.RecIterCaller? $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( (ITER__C.RecursiveIterator.__decreases1 $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@20) alloc)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ITER__C.RecursiveIterator?) Tagclass.ITER__C.RecursiveIterator?))
(assert (= (TagFamily Tclass.ITER__C.RecursiveIterator?) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__C.RecIterCaller?) Tagclass.ITER__C.RecIterCaller?))
(assert (= (TagFamily Tclass.ITER__C.RecIterCaller?) tytagFamily$RecIterCaller))
(assert (= (Tag Tclass.ITER__C.RecursiveIterator) Tagclass.ITER__C.RecursiveIterator))
(assert (= (TagFamily Tclass.ITER__C.RecursiveIterator) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__C.RecIterCaller) Tagclass.ITER__C.RecIterCaller))
(assert (= (TagFamily Tclass.ITER__C.RecIterCaller) tytagFamily$RecIterCaller))
(assert (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.ITER__C.RecursiveIterator?)) ($Is SetType (ITER__C.RecursiveIterator.__reads $o@@21) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1539|
 :pattern ( (ITER__C.RecursiveIterator.__reads $o@@21))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass.ITER__C.RecursiveIterator?)) ($Is SetType (ITER__C.RecursiveIterator.__modifies $o@@22) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1541|
 :pattern ( (ITER__C.RecursiveIterator.__modifies $o@@22))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1198|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1199|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall (($h@@14 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) alloc)))) ($IsAlloc SetType (ITER__C.RecursiveIterator.__reads $o@@23) (TSet Tclass._System.object?) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( (ITER__C.RecursiveIterator.__reads $o@@23) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@23) alloc)))
)))
(assert (forall (($h@@15 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.ITER__C.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@24) alloc)))) ($IsAlloc SetType (ITER__C.RecursiveIterator.__modifies $o@@24) (TSet Tclass._System.object?) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1542|
 :pattern ( (ITER__C.RecursiveIterator.__modifies $o@@24) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@24) alloc)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1068|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1066|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1111|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1113|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1090|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1092|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call4formal@this () T@U)
(declare-fun this@@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun |n#0| () Int)
(declare-fun |good#0@0| () Bool)
(declare-fun |ITER__C.RecursiveIterator.Valid#canCall| (T@U T@U) Bool)
(declare-fun |defass#iter#0| () Bool)
(declare-fun |iter#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ITER__C.RecIterCaller.M)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc false)) (=> (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this Tclass.ITER__C.RecursiveIterator) ($IsAlloc refType call4formal@this Tclass.ITER__C.RecursiveIterator $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= this@@0 null)) (not true))) (=> (or (not (= this@@0 null)) (not true)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 Tclass.ITER__C.RecursiveIterator) ($IsAlloc refType call4formal@this@0 Tclass.ITER__C.RecursiveIterator $Heap@0))) (and (= (ITER__C.RecursiveIterator.n call4formal@this@0) |n#0|) (= (ITER__C.RecursiveIterator.r call4formal@this@0) this@@0))) (and (and (= (ITER__C.RecursiveIterator.good call4formal@this@0) |good#0@0|) (|ITER__C.RecursiveIterator.Valid#canCall| $Heap@0 call4formal@this@0)) (and (ITER__C.RecursiveIterator.Valid $Heap@0 call4formal@this@0) (|Set#Equal| (ITER__C.RecursiveIterator.__reads call4formal@this@0) |Set#Empty|)))) (and (and (and (|Set#Equal| (ITER__C.RecursiveIterator.__modifies call4formal@this@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call4formal@this@0) ITER__C.RecursiveIterator.__new)) |Set#Empty|)) (and (= (ITER__C.RecursiveIterator.__decreases0 call4formal@this@0) |n#0|) (= (ITER__C.RecursiveIterator.__decreases1 call4formal@this@0) this@@0))) (and (and (= (ITER__C.RecursiveIterator.__decreases2 call4formal@this@0) |good#0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call4formal@this@0) alloc))))) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@25)))
 :qid |Iteratorsdfy.289:12|
 :skolemid |1553|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25))
)) ($HeapSucc $Heap $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall (($o@@26 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@26) alloc)))) (or (or (= $o@@26 call4formal@this@0) (|Set#IsMember| (ITER__C.RecursiveIterator.__modifies call4formal@this@0) ($Box refType $o@@26))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call4formal@this@0) ITER__C.RecursiveIterator.__new)) ($Box refType $o@@26)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@26 $f@@1)))
 :qid |Iteratorsdfy.305:32|
 :skolemid |1575|
))) (=> (forall (($o@@27 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@27) alloc)))) (or (or (= $o@@27 call4formal@this@0) (|Set#IsMember| (ITER__C.RecursiveIterator.__modifies call4formal@this@0) ($Box refType $o@@27))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call4formal@this@0) ITER__C.RecursiveIterator.__new)) ($Box refType $o@@27)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@2)))
 :qid |Iteratorsdfy.305:32|
 :skolemid |1575|
)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (<= 0 |n#0|) (= (ITER__C.RecursiveIterator.__decreases0 call4formal@this@0) |n#0|))) (=> (or (<= 0 |n#0|) (= (ITER__C.RecursiveIterator.__decreases0 call4formal@this@0) |n#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= (ITER__C.RecursiveIterator.__decreases0 call4formal@this@0) |n#0|)) (=> (<= (ITER__C.RecursiveIterator.__decreases0 call4formal@this@0) |n#0|) (=> (= (ControlFlow 0 2) (- 0 1)) (ITER__C.RecursiveIterator.Valid $Heap@0 call4formal@this@0)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.ITER__C.RecIterCaller) ($IsAlloc refType this@@0 Tclass.ITER__C.RecIterCaller $Heap))) (<= (LitInt 0) |n#0|)) (and (and (=> |defass#iter#0| (and ($Is refType |iter#0| Tclass.ITER__C.RecursiveIterator) ($IsAlloc refType |iter#0| Tclass.ITER__C.RecursiveIterator $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 2)))) anon0_correct))))
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
