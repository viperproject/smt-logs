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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.M1.Counter () T@U)
(declare-fun class.M1.Cell? () T@U)
(declare-fun Tagclass.M1.Cell? () T@U)
(declare-fun Tagclass.M1.Cell () T@U)
(declare-fun class.M1.Counter? () T@U)
(declare-fun Tagclass.M1.Counter? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Counter () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun field$N () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$data () T@U)
(declare-fun field$c () T@U)
(declare-fun field$d () T@U)
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
(declare-fun M1.Counter.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M1.Counter.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.Counter () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M1.Counter.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun M1.Counter.c () T@U)
(declare-fun M1.Counter.d () T@U)
(declare-fun M1.Counter.N () T@U)
(declare-fun M1.Cell.data () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.M1.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M1.Counter? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.M1.Cell () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.M1.Counter class.M1.Cell? Tagclass.M1.Cell? Tagclass.M1.Cell class.M1.Counter? Tagclass.M1.Counter? tytagFamily$object tytagFamily$Counter tytagFamily$Cell field$N field$Repr field$data field$c field$d)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|M1.Counter.Valid#canCall| $Heap this) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M1.Counter) ($IsAlloc refType this Tclass.M1.Counter $Heap))))) (= (M1.Counter.Valid $Heap this)  (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.Repr)) ($Box refType this)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.c))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.d))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.c)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.d)))) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.N))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.c))) M1.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Counter.d))) M1.Cell.data))))))))
 :qid |ClassRefinementdfy.53:21|
 :skolemid |1585|
 :pattern ( (M1.Counter.Valid $Heap this) ($IsGoodHeap $Heap))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.Cell?)  (or (= $o null) (= (dtype $o) Tclass.M1.Cell?)))
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($Is refType $o Tclass.M1.Cell?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M1.Counter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M1.Counter?)))
 :qid |unknown.0:0|
 :skolemid |1575|
 :pattern ( ($Is refType $o@@0 Tclass.M1.Counter?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1413|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M1.Cell $h@@0) ($IsAlloc refType |c#0@@0| Tclass.M1.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1573|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M1.Cell? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M1.Counter $h@@1) ($IsAlloc refType |c#0@@1| Tclass.M1.Counter? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1598|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.Counter $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M1.Counter? $h@@1))
)))
(assert (= (FDim M1.Counter.N) 0))
(assert (= (FieldOfDecl class.M1.Counter? field$N) M1.Counter.N))
(assert ($IsGhostField M1.Counter.N))
(assert (= (FDim M1.Counter.Repr) 0))
(assert (= (FieldOfDecl class.M1.Counter? field$Repr) M1.Counter.Repr))
(assert ($IsGhostField M1.Counter.Repr))
(assert (= (FDim M1.Cell.data) 0))
(assert (= (FieldOfDecl class.M1.Cell? field$data) M1.Cell.data))
(assert  (not ($IsGhostField M1.Cell.data)))
(assert (= (FDim M1.Counter.c) 0))
(assert (= (FieldOfDecl class.M1.Counter? field$c) M1.Counter.c))
(assert  (not ($IsGhostField M1.Counter.c)))
(assert (= (FDim M1.Counter.d) 0))
(assert (= (FieldOfDecl class.M1.Counter? field$d) M1.Counter.d))
(assert  (not ($IsGhostField M1.Counter.d)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1410|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M1.Cell? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M1.Cell? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M1.Counter? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1576|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M1.Counter? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1181|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1079|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1077|
 :pattern ( (Lit T x@@3))
)))
(assert (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M1.Counter.Valid#canCall| $Heap@@0 this@@0) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M1.Counter) ($IsAlloc refType this@@0 Tclass.M1.Counter $Heap@@0))))) (=> (M1.Counter.Valid $Heap@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Counter.Repr)) ($Box refType this@@0))))
 :qid |ClassRefinementdfy.53:21|
 :skolemid |1583|
 :pattern ( (M1.Counter.Valid $Heap@@0 this@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1088|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1108|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1109|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M1.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Cell.data)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1570|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Cell.data)))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M1.Counter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Counter.N)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1594|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Counter.N)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1101|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1173|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1172|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M1.Counter?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.Counter.c)) Tclass.M1.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1577|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.Counter.c)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M1.Counter?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.Counter.d)) Tclass.M1.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1579|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.Counter.d)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1411|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M1.Counter) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M1.Counter)))
 :qid |unknown.0:0|
 :skolemid |1544|
 :pattern ( ($IsBox bx@@3 Tclass.M1.Counter))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M1.Cell?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M1.Cell?)))
 :qid |unknown.0:0|
 :skolemid |1566|
 :pattern ( ($IsBox bx@@4 Tclass.M1.Cell?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M1.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.M1.Cell)))
 :qid |unknown.0:0|
 :skolemid |1571|
 :pattern ( ($IsBox bx@@5 Tclass.M1.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M1.Counter?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.M1.Counter?)))
 :qid |unknown.0:0|
 :skolemid |1574|
 :pattern ( ($IsBox bx@@6 Tclass.M1.Counter?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M1.Cell)  (and ($Is refType |c#0@@3| Tclass.M1.Cell?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1572|
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.Cell))
 :pattern ( ($Is refType |c#0@@3| Tclass.M1.Cell?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M1.Counter)  (and ($Is refType |c#0@@4| Tclass.M1.Counter?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.Counter))
 :pattern ( ($Is refType |c#0@@4| Tclass.M1.Counter?))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M1.Counter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M1.Counter.c)) Tclass.M1.Cell $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1578|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M1.Counter.c)))
)))
(assert (forall (($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.M1.Counter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) M1.Counter.d)) Tclass.M1.Cell $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1580|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) M1.Counter.d)))
)))
(assert (forall (($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.M1.Counter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) M1.Counter.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1595|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) M1.Counter.Repr)))
)))
(assert (forall (($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.M1.Counter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) M1.Counter.Repr)) (TSet Tclass._System.object) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1596|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) M1.Counter.Repr)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1179|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1169|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1089|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1100|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1129|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1130|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1409|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1063|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1064|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1087|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.M1.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) M1.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1569|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) M1.Cell.data)))
)))
(assert (forall (($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.M1.Counter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) M1.Counter.N)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1593|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) M1.Counter.N)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.M1.Counter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@15 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (or (= $o@@15 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@1) M1.Counter.Repr)) ($Box refType $o@@15)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@15) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@15) $f)))
 :qid |unknown.0:0|
 :skolemid |1581|
)) (= (M1.Counter.Valid $h0 this@@1) (M1.Counter.Valid $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1582|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M1.Counter.Valid $h1 this@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@16 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@0))  (=> (and (or (not (= $o@@16 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@16) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1603|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@0))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1094|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M1.Counter) Tagclass.M1.Counter))
(assert (= (TagFamily Tclass.M1.Counter) tytagFamily$Counter))
(assert (= (Tag Tclass.M1.Cell?) Tagclass.M1.Cell?))
(assert (= (TagFamily Tclass.M1.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass.M1.Cell) Tagclass.M1.Cell))
(assert (= (TagFamily Tclass.M1.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.M1.Counter?) Tagclass.M1.Counter?))
(assert (= (TagFamily Tclass.M1.Counter?) tytagFamily$Counter))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1080|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1078|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1123|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1102|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@n#0@0| () Int)
(declare-fun |call2formal@n#0@0@@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun call1formal@this@0@@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@this@@0 () T@U)
(declare-fun |defass#mx#0| () Bool)
(declare-fun |mx#0| () T@U)
(declare-fun |defass#my#0| () Bool)
(declare-fun |my#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |call2formal@n#0@0| (LitInt 2))) (=> (= (ControlFlow 0 2) (- 0 1)) (= |call2formal@n#0@0@@0| (LitInt 1))))))
(let ((anon6_Else_correct  (=> (and (or (not (= |call2formal@n#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (= |call2formal@n#0@0| (LitInt 2)) (= (ControlFlow 0 4) 2)) anon4_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 6) (- 0 26)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.N))) (LitInt 0))) (and (=> (= (ControlFlow 0 6) (- 0 25)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.N))) (LitInt 0))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.N))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.N))) (LitInt 0))) (and (=> (= (ControlFlow 0 6) (- 0 24)) true) (and (=> (= (ControlFlow 0 6) (- 0 23)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 22)) (forall (($o@@17 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@17))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@1)))
 :qid |ClassRefinementdfy.92:9|
 :skolemid |1547|
))) (=> (forall (($o@@18 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@18))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@2)))
 :qid |ClassRefinementdfy.92:9|
 :skolemid |1547|
)) (and (=> (= (ControlFlow 0 6) (- 0 21)) (M1.Counter.Valid $Heap@1 call1formal@this@0)) (=> (M1.Counter.Valid $Heap@1 call1formal@this@0) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) M1.Counter.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.N))) 1))) (and (|M1.Counter.Valid#canCall| $Heap@2 call1formal@this@0) (M1.Counter.Valid $Heap@2 call1formal@this@0))) (and (and (forall (($o@@19 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@19)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@19)))) (or (not (= $o@@19 null)) (not true)))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1589|
 :pattern (  (or (not (= $o@@19 null)) (not true)))
)) (forall (($o@@20 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@20)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@20)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) alloc)))))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1590|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) alloc)))
))) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@21))))
 :qid |ClassRefinementdfy.72:12|
 :skolemid |1591|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@21))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 6) (- 0 20)) true) (and (=> (= (ControlFlow 0 6) (- 0 19)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (or (not (= call1formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 18)) (forall (($o@@22 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@22))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@22 $f@@3)))
 :qid |ClassRefinementdfy.93:9|
 :skolemid |1548|
))) (=> (forall (($o@@23 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@23))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@23 $f@@4)))
 :qid |ClassRefinementdfy.93:9|
 :skolemid |1548|
)) (and (=> (= (ControlFlow 0 6) (- 0 17)) (M1.Counter.Valid $Heap@2 call1formal@this@0@@0)) (=> (M1.Counter.Valid $Heap@2 call1formal@this@0@@0) (=> (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0@@0) M1.Counter.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.N))) 1))) (and (|M1.Counter.Valid#canCall| $Heap@3 call1formal@this@0@@0) (M1.Counter.Valid $Heap@3 call1formal@this@0@@0))) (and (and (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@24)))) (or (not (= $o@@24 null)) (not true)))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1589|
 :pattern (  (or (not (= $o@@24 null)) (not true)))
)) (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@25)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) alloc)))))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1590|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) alloc)))
))) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@26))))
 :qid |ClassRefinementdfy.72:12|
 :skolemid |1591|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 6) (- 0 16)) true) (and (=> (= (ControlFlow 0 6) (- 0 15)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 14)) (forall (($o@@27 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@27) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@27))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@5)))
 :qid |ClassRefinementdfy.94:9|
 :skolemid |1549|
))) (=> (forall (($o@@28 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@28))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@28 $f@@6)))
 :qid |ClassRefinementdfy.94:9|
 :skolemid |1549|
)) (and (=> (= (ControlFlow 0 6) (- 0 13)) (M1.Counter.Valid $Heap@3 call1formal@this@0)) (=> (M1.Counter.Valid $Heap@3 call1formal@this@0) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) M1.Counter.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.N))) 1))) (and (|M1.Counter.Valid#canCall| $Heap@4 call1formal@this@0) (M1.Counter.Valid $Heap@4 call1formal@this@0))) (and (and (forall (($o@@29 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@29)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@29)))) (or (not (= $o@@29 null)) (not true)))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1589|
 :pattern (  (or (not (= $o@@29 null)) (not true)))
)) (forall (($o@@30 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@30)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30) alloc)))))
 :qid |ClassRefinementdfy.26:26|
 :skolemid |1590|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30) alloc)))
))) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@31) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@31)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@31))))
 :qid |ClassRefinementdfy.72:12|
 :skolemid |1591|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@31))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 6) (- 0 12)) true) (and (=> (= (ControlFlow 0 6) (- 0 11)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 10)) (M1.Counter.Valid $Heap@4 call1formal@this@0)) (=> (M1.Counter.Valid $Heap@4 call1formal@this@0) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (= |call2formal@n#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) M1.Counter.N))))) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32)))
 :qid |ClassRefinementdfy.81:12|
 :skolemid |1592|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@32))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 6) (- 0 9)) true) (and (=> (= (ControlFlow 0 6) (- 0 8)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (or (not (= call1formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (M1.Counter.Valid $Heap@5 call1formal@this@0@@0)) (=> (M1.Counter.Valid $Heap@5 call1formal@this@0@@0) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (= |call2formal@n#0@0@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0@@0) M1.Counter.N))))) (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@33)))
 :qid |ClassRefinementdfy.81:12|
 :skolemid |1592|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@33))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 6) 4) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct)))))))))))))))))))))))))))))))))))))))))))
(let ((anon5_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.N))) (LitInt 0))) (not true)) (= (ControlFlow 0 30) 6)) anon2_correct)))
(let ((anon5_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) M1.Counter.N))) (LitInt 0)) (and (=> (= (ControlFlow 0 27) (- 0 29)) true) (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (= (ControlFlow 0 27) 6) anon2_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.M1.Counter) ($IsAlloc refType call1formal@this Tclass.M1.Counter $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.M1.Counter) ($IsAlloc refType call1formal@this@0 Tclass.M1.Counter $Heap@0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) M1.Counter.N))) (LitInt 0))) (and (|M1.Counter.Valid#canCall| $Heap@0 call1formal@this@0) (M1.Counter.Valid $Heap@0 call1formal@this@0))) (=> (and (and (and (and (and (forall (($o@@34 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@34)) (or (not (= $o@@34 null)) (not true)))
 :qid |ClassRefinementdfy.13:26|
 :skolemid |1586|
 :pattern (  (or (not (= $o@@34 null)) (not true)))
)) (forall (($o@@35 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@35)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@35) alloc)))))
 :qid |ClassRefinementdfy.13:26|
 :skolemid |1587|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) M1.Counter.Repr)) ($Box refType $o@@35)))
))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call1formal@this@0) alloc))))) (and (forall (($o@@36 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@36) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@36) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@36)))
 :qid |ClassRefinementdfy.62:17|
 :skolemid |1588|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@36))
)) ($HeapSucc $Heap@@1 $Heap@0))) (and (and (or (not (= call1formal@this@@0 null)) (not true)) (and ($Is refType call1formal@this@@0 Tclass.M1.Counter) ($IsAlloc refType call1formal@this@@0 Tclass.M1.Counter $Heap@@1))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (and (or (not (= call1formal@this@0@@0 null)) (not true)) (and ($Is refType call1formal@this@0@@0 Tclass.M1.Counter) ($IsAlloc refType call1formal@this@0@@0 Tclass.M1.Counter $Heap@1))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.N))) (LitInt 0))) (and (|M1.Counter.Valid#canCall| $Heap@1 call1formal@this@0@@0) (M1.Counter.Valid $Heap@1 call1formal@this@0@@0))) (and (and (and (forall (($o@@37 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@37)) (or (not (= $o@@37 null)) (not true)))
 :qid |ClassRefinementdfy.13:26|
 :skolemid |1586|
 :pattern (  (or (not (= $o@@37 null)) (not true)))
)) (forall (($o@@38 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@38)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@38) alloc)))))
 :qid |ClassRefinementdfy.13:26|
 :skolemid |1587|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0@@0) M1.Counter.Repr)) ($Box refType $o@@38)))
))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0@@0) alloc))))) (and (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@39) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@39)))
 :qid |ClassRefinementdfy.62:17|
 :skolemid |1588|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39))
)) ($HeapSucc $Heap@0 $Heap@1))))) (and (=> (= (ControlFlow 0 31) (- 0 33)) true) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= call1formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 31) 27) anon5_Then_correct) (=> (= (ControlFlow 0 31) 30) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (=> |defass#mx#0| (and ($Is refType |mx#0| Tclass.M1.Counter) ($IsAlloc refType |mx#0| Tclass.M1.Counter $Heap@@1))) true)) (and (and (=> |defass#my#0| (and ($Is refType |my#0| Tclass.M1.Counter) ($IsAlloc refType |my#0| Tclass.M1.Counter $Heap@@1))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 34) 31)))) anon0_correct)))
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
