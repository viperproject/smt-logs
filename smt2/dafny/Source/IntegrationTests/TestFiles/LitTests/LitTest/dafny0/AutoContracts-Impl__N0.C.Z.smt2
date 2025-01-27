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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.N0.C? () T@U)
(declare-fun Tagclass.N0.C? () T@U)
(declare-fun Tagclass.N0.C () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun N0.C.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |N0.C.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.N0.C () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun N0.C.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass.N0.C? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.N0.C? Tagclass.N0.C? Tagclass.N0.C tytagFamily$object tytagFamily$C field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |685|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |686|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |684|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|N0.C.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.N0.C) ($IsAlloc refType this Tclass.N0.C $Heap)))))) (= (N0.C.Valid $Heap this)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) N0.C.Repr)) ($Box refType this)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) N0.C.Repr)) ($Box refType null)))) true)))
 :qid |AutoContractsdfy.65:21|
 :skolemid |1085|
 :pattern ( (N0.C.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |681|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.N0.C?)  (or (= $o null) (= (dtype $o) Tclass.N0.C?)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is refType $o Tclass.N0.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.N0.C $h@@0) ($IsAlloc refType |c#0@@0| Tclass.N0.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.N0.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.N0.C? $h@@0))
)))
(assert (= (FDim N0.C.Repr) 0))
(assert (= (FieldOfDecl class.N0.C? field$Repr) N0.C.Repr))
(assert ($IsGhostField N0.C.Repr))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.N0.C? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.N0.C? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |674|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |675|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |571|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |582|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |602|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |603|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |595|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |667|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |666|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.N0.C?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.N0.C?)))
 :qid |unknown.0:0|
 :skolemid |1035|
 :pattern ( ($IsBox bx@@3 Tclass.N0.C?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.N0.C) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.N0.C)))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsBox bx@@4 Tclass.N0.C))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.N0.C)  (and ($Is refType |c#0@@2| Tclass.N0.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( ($Is refType |c#0@@2| Tclass.N0.C))
 :pattern ( ($Is refType |c#0@@2| Tclass.N0.C?))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.N0.C?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) N0.C.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1086|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) N0.C.Repr)))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.N0.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) N0.C.Repr)) (TSet Tclass._System.object?) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1087|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) N0.C.Repr)))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |673|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |663|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |594|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |623|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |624|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |903|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |557|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |558|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |581|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.N0.C))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) N0.C.Repr)) ($Box refType $o@@5)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |1081|
)) (= (N0.C.Valid $h0 this@@0) (N0.C.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1082|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (N0.C.Valid $h1 this@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@0))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2239|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@0))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |588|
 :pattern ( ($IsBox bx@@6 (TSet t@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |672|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|N0.C.Valid#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.N0.C) ($IsAlloc refType this@@1 Tclass.N0.C $Heap@@0)))))) (=> (N0.C.Valid $Heap@@0 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) N0.C.Repr)) ($Box refType this@@1))))
 :qid |AutoContractsdfy.65:21|
 :skolemid |1083|
 :pattern ( (N0.C.Valid $Heap@@0 this@@1))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.N0.C?) Tagclass.N0.C?))
(assert (= (TagFamily Tclass.N0.C?) tytagFamily$C))
(assert (= (Tag Tclass.N0.C) Tagclass.N0.C))
(assert (= (TagFamily Tclass.N0.C) tytagFamily$C))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |572|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun this.Repr () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(set-info :boogie-vc-id Impl$$N0.C.Z)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.N0.C?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) alloc))))) (and (and (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) N0.C.Repr)) this.Repr) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 N0.C.Repr))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 N0.C.Repr)) (=> (= |$rhs#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) N0.C.Repr ($Box SetType |$rhs#0@0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType this@@2))))) (=> (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType this@@2)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType null)))))) (=> (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|N0.C.Valid#canCall| $Heap@1 this@@2) (or (N0.C.Valid $Heap@1 this@@2) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall (($o@@7 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType $o@@7)) (or (not (= $o@@7 null)) (not true)))
 :qid |AutoContractsdfy.61:17|
 :skolemid |1057|
 :pattern (  (or (not (= $o@@7 null)) (not true)))
)) (forall (($o@@8 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType $o@@8)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@8) alloc)))))
 :qid |AutoContractsdfy.61:17|
 :skolemid |1058|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) N0.C.Repr)) ($Box refType $o@@8)))
))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 7) 2))) anon0_correct)))
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
