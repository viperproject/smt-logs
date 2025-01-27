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
(declare-fun Tagclass.Client.TheClient? () T@U)
(declare-fun Tagclass.Client.TheClient () T@U)
(declare-fun Tagclass.Concrete.MyNumber () T@U)
(declare-fun class.Concrete.MyNumber? () T@U)
(declare-fun Tagclass.Concrete.MyNumber? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$TheClient () T@U)
(declare-fun tytagFamily$MyNumber () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$a () T@U)
(declare-fun field$b () T@U)
(declare-fun field$N () T@U)
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
(declare-fun Concrete.MyNumber.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Concrete.MyNumber.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Concrete.MyNumber () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun Concrete.MyNumber.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Concrete.MyNumber.N () T@U)
(declare-fun Concrete.MyNumber.a () T@U)
(declare-fun Concrete.MyNumber.b () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.Client.TheClient? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Concrete.MyNumber? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Client.TheClient () T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.Client.TheClient? Tagclass.Client.TheClient Tagclass.Concrete.MyNumber class.Concrete.MyNumber? Tagclass.Concrete.MyNumber? tytagFamily$object tytagFamily$TheClient tytagFamily$MyNumber field$Repr field$a field$b field$N)
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
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|Concrete.MyNumber.Valid#canCall| $Heap this) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Concrete.MyNumber) ($IsAlloc refType this Tclass.Concrete.MyNumber $Heap))))) (= (Concrete.MyNumber.Valid $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Concrete.MyNumber.Repr)) ($Box refType this)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Concrete.MyNumber.N))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Concrete.MyNumber.a))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Concrete.MyNumber.b))))))))
 :qid |Refinementdfy.147:21|
 :skolemid |5493|
 :pattern ( (Concrete.MyNumber.Valid $Heap this) ($IsGoodHeap $Heap))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Client.TheClient?)  (or (= $o null) (= (dtype $o) Tclass.Client.TheClient?)))
 :qid |unknown.0:0|
 :skolemid |5469|
 :pattern ( ($Is refType $o Tclass.Client.TheClient?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.Concrete.MyNumber?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.Concrete.MyNumber?)))
 :qid |unknown.0:0|
 :skolemid |5483|
 :pattern ( ($Is refType $o@@0 Tclass.Concrete.MyNumber?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |5340|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Client.TheClient $h@@0) ($IsAlloc refType |c#0@@0| Tclass.Client.TheClient? $h@@0))
 :qid |unknown.0:0|
 :skolemid |5481|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Client.TheClient $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Client.TheClient? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.Concrete.MyNumber $h@@1) ($IsAlloc refType |c#0@@1| Tclass.Concrete.MyNumber? $h@@1))
 :qid |unknown.0:0|
 :skolemid |5506|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.Concrete.MyNumber $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.Concrete.MyNumber? $h@@1))
)))
(assert (= (FDim Concrete.MyNumber.Repr) 0))
(assert (= (FieldOfDecl class.Concrete.MyNumber? field$Repr) Concrete.MyNumber.Repr))
(assert ($IsGhostField Concrete.MyNumber.Repr))
(assert (= (FDim Concrete.MyNumber.N) 0))
(assert (= (FieldOfDecl class.Concrete.MyNumber? field$N) Concrete.MyNumber.N))
(assert ($IsGhostField Concrete.MyNumber.N))
(assert (= (FDim Concrete.MyNumber.a) 0))
(assert (= (FieldOfDecl class.Concrete.MyNumber? field$a) Concrete.MyNumber.a))
(assert  (not ($IsGhostField Concrete.MyNumber.a)))
(assert (= (FDim Concrete.MyNumber.b) 0))
(assert (= (FieldOfDecl class.Concrete.MyNumber? field$b) Concrete.MyNumber.b))
(assert  (not ($IsGhostField Concrete.MyNumber.b)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5337|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.Client.TheClient? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5470|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.Client.TheClient? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.Concrete.MyNumber? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5484|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.Concrete.MyNumber? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |5107|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |5108|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5006|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5004|
 :pattern ( (Lit T x@@3))
)))
(assert (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|Concrete.MyNumber.Valid#canCall| $Heap@@0 this@@0) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.Concrete.MyNumber) ($IsAlloc refType this@@0 Tclass.Concrete.MyNumber $Heap@@0))))) (=> (Concrete.MyNumber.Valid $Heap@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) Concrete.MyNumber.Repr)) ($Box refType this@@0))))
 :qid |Refinementdfy.147:21|
 :skolemid |5491|
 :pattern ( (Concrete.MyNumber.Valid $Heap@@0 this@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5015|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5035|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5036|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Concrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) Concrete.MyNumber.a)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5486|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) Concrete.MyNumber.a)))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.Concrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) Concrete.MyNumber.b)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5488|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) Concrete.MyNumber.b)))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.Concrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) Concrete.MyNumber.N)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5502|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) Concrete.MyNumber.N)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5028|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |5100|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |5099|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |5335|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |5338|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Client.TheClient?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Client.TheClient?)))
 :qid |unknown.0:0|
 :skolemid |5468|
 :pattern ( ($IsBox bx@@3 Tclass.Client.TheClient?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Client.TheClient) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Client.TheClient)))
 :qid |unknown.0:0|
 :skolemid |5471|
 :pattern ( ($IsBox bx@@4 Tclass.Client.TheClient))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Concrete.MyNumber) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.Concrete.MyNumber)))
 :qid |unknown.0:0|
 :skolemid |5475|
 :pattern ( ($IsBox bx@@5 Tclass.Concrete.MyNumber))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Concrete.MyNumber?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.Concrete.MyNumber?)))
 :qid |unknown.0:0|
 :skolemid |5482|
 :pattern ( ($IsBox bx@@6 Tclass.Concrete.MyNumber?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5339|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.Client.TheClient)  (and ($Is refType |c#0@@3| Tclass.Client.TheClient?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5480|
 :pattern ( ($Is refType |c#0@@3| Tclass.Client.TheClient))
 :pattern ( ($Is refType |c#0@@3| Tclass.Client.TheClient?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.Concrete.MyNumber)  (and ($Is refType |c#0@@4| Tclass.Concrete.MyNumber?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5505|
 :pattern ( ($Is refType |c#0@@4| Tclass.Concrete.MyNumber))
 :pattern ( ($Is refType |c#0@@4| Tclass.Concrete.MyNumber?))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.Concrete.MyNumber?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) Concrete.MyNumber.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5503|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) Concrete.MyNumber.Repr)))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.Concrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) Concrete.MyNumber.Repr)) (TSet Tclass._System.object) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5504|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) Concrete.MyNumber.Repr)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |5106|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |5096|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5016|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5027|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5056|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5057|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |5336|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4990|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4991|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5014|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.Concrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) Concrete.MyNumber.a)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5485|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) Concrete.MyNumber.a)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.Concrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) Concrete.MyNumber.b)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5487|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) Concrete.MyNumber.b)))
)))
(assert (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.Concrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) Concrete.MyNumber.N)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5501|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) Concrete.MyNumber.N)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.Concrete.MyNumber))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@13 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (or (= $o@@13 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@1) Concrete.MyNumber.Repr)) ($Box refType $o@@13)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@13) $f)))
 :qid |unknown.0:0|
 :skolemid |5489|
)) (= (Concrete.MyNumber.Valid $h0 this@@1) (Concrete.MyNumber.Valid $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5490|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Concrete.MyNumber.Valid $h1 this@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7050|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |5021|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Client.TheClient?) Tagclass.Client.TheClient?))
(assert (= (TagFamily Tclass.Client.TheClient?) tytagFamily$TheClient))
(assert (= (Tag Tclass.Client.TheClient) Tagclass.Client.TheClient))
(assert (= (TagFamily Tclass.Client.TheClient) tytagFamily$TheClient))
(assert (= (Tag Tclass.Concrete.MyNumber) Tagclass.Concrete.MyNumber))
(assert (= (TagFamily Tclass.Concrete.MyNumber) tytagFamily$MyNumber))
(assert (= (Tag Tclass.Concrete.MyNumber?) Tagclass.Concrete.MyNumber?))
(assert (= (TagFamily Tclass.Concrete.MyNumber?) tytagFamily$MyNumber))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5007|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5005|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5050|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5029|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call2formal@n#0@0| () Int)
(declare-fun this@@2 () T@U)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Client.TheClient.Main)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.Concrete.MyNumber) ($IsAlloc refType call1formal@this Tclass.Concrete.MyNumber $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.Concrete.MyNumber) ($IsAlloc refType call1formal@this@0 Tclass.Concrete.MyNumber $Heap@0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.N))) (LitInt 0))) (and (|Concrete.MyNumber.Valid#canCall| $Heap@0 call1formal@this@0) (Concrete.MyNumber.Valid $Heap@0 call1formal@this@0))) (and (and (and (forall (($o@@15 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@15)) (or (not (= $o@@15 null)) (not true)))
 :qid |Refinementdfy.118:26|
 :skolemid |5494|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@16)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@16) alloc)))))
 :qid |Refinementdfy.118:26|
 :skolemid |5495|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@16)))
))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call1formal@this@0) alloc))))) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@17)))
 :qid |Refinementdfy.152:17|
 :skolemid |5496|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17))
)) ($HeapSucc $Heap@@1 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (forall (($o@@18 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@18) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@18))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@1)))
 :qid |Refinementdfy.177:12|
 :skolemid |5477|
))) (=> (forall (($o@@19 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@19))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@2)))
 :qid |Refinementdfy.177:12|
 :skolemid |5477|
)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (Concrete.MyNumber.Valid $Heap@0 call1formal@this@0)) (=> (Concrete.MyNumber.Valid $Heap@0 call1formal@this@0) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.N))) 1))) (and (|Concrete.MyNumber.Valid#canCall| $Heap@1 call1formal@this@0) (Concrete.MyNumber.Valid $Heap@1 call1formal@this@0))) (and (and (forall (($o@@20 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@20)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@20)))) (or (not (= $o@@20 null)) (not true)))
 :qid |Refinementdfy.128:26|
 :skolemid |5497|
 :pattern (  (or (not (= $o@@20 null)) (not true)))
)) (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@21)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21) alloc)))))
 :qid |Refinementdfy.128:26|
 :skolemid |5498|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21) alloc)))
))) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@22))))
 :qid |Refinementdfy.158:12|
 :skolemid |5499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall (($o@@23 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@23))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@23 $f@@3)))
 :qid |Refinementdfy.178:12|
 :skolemid |5478|
))) (=> (forall (($o@@24 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@24) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@24))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@24 $f@@4)))
 :qid |Refinementdfy.178:12|
 :skolemid |5478|
)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (Concrete.MyNumber.Valid $Heap@1 call1formal@this@0)) (=> (Concrete.MyNumber.Valid $Heap@1 call1formal@this@0) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Concrete.MyNumber.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.N))) 1))) (and (|Concrete.MyNumber.Valid#canCall| $Heap@2 call1formal@this@0) (Concrete.MyNumber.Valid $Heap@2 call1formal@this@0))) (and (and (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@25)))) (or (not (= $o@@25 null)) (not true)))
 :qid |Refinementdfy.128:26|
 :skolemid |5497|
 :pattern (  (or (not (= $o@@25 null)) (not true)))
)) (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@26)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26) alloc)))))
 :qid |Refinementdfy.128:26|
 :skolemid |5498|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26) alloc)))
))) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) Concrete.MyNumber.Repr)) ($Box refType $o@@27))))
 :qid |Refinementdfy.158:12|
 :skolemid |5499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Concrete.MyNumber.Valid $Heap@2 call1formal@this@0)) (=> (Concrete.MyNumber.Valid $Heap@2 call1formal@this@0) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (= |call2formal@n#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) Concrete.MyNumber.N)))) (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28)))
 :qid |Refinementdfy.164:12|
 :skolemid |5500|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= (ControlFlow 0 2) (- 0 1)))) (= |call2formal@n#0@0| (LitInt 2))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.Client.TheClient) ($IsAlloc refType this@@2 Tclass.Client.TheClient $Heap@@1)))) (and (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass.Concrete.MyNumber) ($IsAlloc refType |n#0| Tclass.Concrete.MyNumber $Heap@@1))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 14) 2)))) anon0_correct)))
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
