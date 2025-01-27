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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$next () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun Tclass._module.Node () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Node.next () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#16| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.Node Tagclass._module.Node? class._module.Node? tytagFamily$array tytagFamily$Node field$next)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |2993|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2999|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Node?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3289|
 :pattern ( ($Is refType $o@@0 Tclass._module.Node?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Node $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Node? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3325|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Node $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Node? $h@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2992|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Node? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3290|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Node? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2752|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2753|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2651|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |2990|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2680|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2681|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2998|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2745|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2744|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2986|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2995|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.next)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.next)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsBox bx@@2 Tclass._module.Node?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |2991|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Node)  (and ($Is refType |c#0@@2| Tclass._module.Node?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3324|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Node?))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.next)) Tclass._module.Node? $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.next)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2751|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2741|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2661|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |2746|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2701|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2702|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2635|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2636|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |2737|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |2738|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |2987|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |2996|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |2994|
 :pattern ( (_System.array.Length $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@7 T@U) ($o@@8 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@8)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |2989|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2666|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |2988|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |2997|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2750|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2652|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@9))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3850|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2695|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2674|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |n#0@1| () T@U)
(declare-fun |S#0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $obj0@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun |$rhs#1_1@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun |i#0| () Int)
(declare-fun |t#2_0_0@0| () Int)
(declare-fun |j#0| () Int)
(declare-fun $index0@1 () T@U)
(declare-fun $index1@1 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#2_0_0@0| () Int)
(declare-fun |$rhs#2_0_1@0| () Int)
(declare-fun |n#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |n#0_0@0| () T@U)
(declare-fun $index0@0 () T@U)
(declare-fun $index1@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |$rhs#0_2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#0_1@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |$rhs#0_2| () T@U)
(declare-fun |$rhs#1_0| () T@U)
(declare-fun |$rhs#1_1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.AssignSuchThat2)
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
 (=> (= (ControlFlow 0 0) 81) (let ((anon15_correct true))
(let ((anon36_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#0@1|) _module.Node.next)) null) (= (ControlFlow 0 37) 30)) anon15_correct)))
(let ((anon36_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#0@1|) _module.Node.next)) null)) (not true)) (and (=> (= (ControlFlow 0 31) (- 0 36)) true) (and (=> (= (ControlFlow 0 31) (- 0 35)) (or (not (= |n#0@1| null)) (not true))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#0@1|) _module.Node.next)) null)) (not true))) (and (=> (= (ControlFlow 0 31) (- 0 33)) true) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= |n#0@1| null)) (not true))) (=> (= (ControlFlow 0 31) 30) anon15_correct)))))))))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) true) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= |n#0@1| null)) (not true))) (and (=> (= (ControlFlow 0 38) 31) anon36_Then_correct) (=> (= (ControlFlow 0 38) 37) anon36_Else_correct))))))
(let ((anon35_Else_correct true))
(let ((anon12_correct  (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0@1|)) (|Set#IsMember| |S#0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next))) (and (=> (= (ControlFlow 0 41) (- 0 49)) (or (not (= |n#0@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)))) (not true))) (=> (or (not (= |n#0@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)))) (not true)) (and (=> (= (ControlFlow 0 41) (- 0 48)) true) (and (=> (= (ControlFlow 0 41) (- 0 47)) (or (not (= |n#0@1| null)) (not true))) (=> (or (not (= |n#0@1| null)) (not true)) (and (=> (= (ControlFlow 0 41) (- 0 46)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)) null)) (not true)) (=> (= $obj0@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next))) (and (=> (= (ControlFlow 0 41) (- 0 45)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.Node.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.Node.next)) (and (=> (= (ControlFlow 0 41) (- 0 44)) true) (and (=> (= (ControlFlow 0 41) (- 0 43)) (or (not (= |n#0@1| null)) (not true))) (=> (or (not (= |n#0@1| null)) (not true)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |n#0@1| _module.Node.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |n#0@1| _module.Node.next)) (=> (and ($Is refType |$rhs#1_0@0| Tclass._module.Node?) ($Is refType |$rhs#1_1@0| Tclass._module.Node?)) (=> (and (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $obj0@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $obj0@0) _module.Node.next ($Box refType |$rhs#1_0@0|)))) ($IsGoodHeap $Heap@8)) (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 |n#0@1| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |n#0@1|) _module.Node.next ($Box refType |$rhs#1_1@0|)))) ($IsGoodHeap $Heap@9))) (and (=> (= (ControlFlow 0 41) 38) anon35_Then_correct) (=> (= (ControlFlow 0 41) 29) anon35_Else_correct))))))))))))))))))))))
(let ((anon34_Else_correct  (=> (and (not (|Set#IsMember| |S#0| ($Box refType |n#0@1|))) (= (ControlFlow 0 53) 41)) anon12_correct)))
(let ((anon34_Then_correct  (=> (|Set#IsMember| |S#0| ($Box refType |n#0@1|)) (and (=> (= (ControlFlow 0 50) (- 0 52)) true) (and (=> (= (ControlFlow 0 50) (- 0 51)) (or (not (= |n#0@1| null)) (not true))) (=> (= (ControlFlow 0 50) 41) anon12_correct))))))
(let ((anon33_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)) null)) (not true)) (and (=> (= (ControlFlow 0 54) (- 0 55)) true) (and (=> (= (ControlFlow 0 54) 50) anon34_Then_correct) (=> (= (ControlFlow 0 54) 53) anon34_Else_correct))))))
(let ((anon26_correct true))
(let ((anon42_Else_correct  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) (IndexField |i#0|)))) |t#2_0_0@0|) (= (ControlFlow 0 9) 3)) anon26_correct)))
(let ((anon42_Then_correct  (=> (< |t#2_0_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) (IndexField |i#0|))))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 |j#0|) (< |j#0| (_System.array.Length $nw@1)))) (=> (= (ControlFlow 0 4) 3) anon26_correct))))))))))
(let ((anon41_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1)))) (and (=> (= (ControlFlow 0 10) 4) anon42_Then_correct) (=> (= (ControlFlow 0 10) 9) anon42_Else_correct)))))))
(let ((anon41_Else_correct true))
(let ((anon40_Then_correct  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| 25)) (and (<= (LitInt 0) |j#0|) (< |j#0| 25))) (and (=> (= (ControlFlow 0 13) (- 0 20)) (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= |j#0| |i#0|)) (not true)))) (=> (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= |j#0| |i#0|)) (not true))) (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 18)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1))) (=> (= $index0@1 (IndexField |i#0|)) (and (=> (= (ControlFlow 0 13) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@1)) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (and (<= 0 |j#0|) (< |j#0| (_System.array.Length $nw@1)))) (=> (and (<= 0 |j#0|) (< |j#0| (_System.array.Length $nw@1))) (=> (= $index1@1 (IndexField |j#0|)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1)) (=> (and (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) $index0@1 ($Box intType (int_2_U |$rhs#2_0_0@0|))))) ($IsGoodHeap $Heap@6)) (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) $index1@1 ($Box intType (int_2_U |$rhs#2_0_1@0|))))) ($IsGoodHeap $Heap@7))) (and (=> (= (ControlFlow 0 13) 10) anon41_Then_correct) (=> (= (ControlFlow 0 13) 2) anon41_Else_correct))))))))))))))))))))))
(let ((anon40_Else_correct true))
(let ((anon22_correct  (and (=> (= (ControlFlow 0 21) 13) anon40_Then_correct) (=> (= (ControlFlow 0 21) 1) anon40_Else_correct))))
(let ((anon39_Else_correct  (=> (and (< |j#0| (LitInt 0)) (= (ControlFlow 0 24) 21)) anon22_correct)))
(let ((anon39_Then_correct  (=> (and (<= (LitInt 0) |j#0|) (= (ControlFlow 0 23) 21)) anon22_correct)))
(let ((anon38_Then_correct  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| 25)) (and (=> (= (ControlFlow 0 25) 23) anon39_Then_correct) (=> (= (ControlFlow 0 25) 24) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0|) (< |i#0| 25))) (= (ControlFlow 0 22) 21)) anon22_correct)))
(let ((anon37_Else_correct  (=> (< |i#0| (LitInt 0)) (and (=> (= (ControlFlow 0 27) 25) anon38_Then_correct) (=> (= (ControlFlow 0 27) 22) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (<= (LitInt 0) |i#0|) (and (=> (= (ControlFlow 0 26) 25) anon38_Then_correct) (=> (= (ControlFlow 0 26) 22) anon38_Else_correct)))))
(let ((anon33_Else_correct  (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |n#0@1|) _module.Node.next)) null) (and (=> (= (ControlFlow 0 28) 26) anon37_Then_correct) (=> (= (ControlFlow 0 28) 27) anon37_Else_correct)))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 56) (- 0 58)) true) (and (=> (= (ControlFlow 0 56) (- 0 57)) (or (not (= |n#0@1| null)) (not true))) (=> (or (not (= |n#0@1| null)) (not true)) (and (=> (= (ControlFlow 0 56) 54) anon33_Then_correct) (=> (= (ControlFlow 0 56) 28) anon33_Else_correct)))))))
(let ((anon7_correct  (=> (and (and (=> true (and ($Is refType |n#0@0| Tclass._module.Node) ($IsAlloc refType |n#0@0| Tclass._module.Node $Heap@4))) (= $Heap@5 $Heap@4)) (and (= |n#0@1| |n#0@0|) (= (ControlFlow 0 60) 56))) anon9_correct)))
(let ((anon32_Else_correct  (=> (and (not (and ($Is refType |n#0_0@0| Tclass._module.Node) ($IsAlloc refType |n#0_0@0| Tclass._module.Node $Heap@4))) (= (ControlFlow 0 62) 60)) anon7_correct)))
(let ((anon32_Then_correct  (=> (and (and ($Is refType |n#0_0@0| Tclass._module.Node) ($IsAlloc refType |n#0_0@0| Tclass._module.Node $Heap@4)) (= (ControlFlow 0 61) 60)) anon7_correct)))
(let ((anon31_Then_correct  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| 25)) (and (=> (= (ControlFlow 0 63) (- 0 73)) (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= |j#0| |i#0|)) (not true)))) (=> (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= |j#0| |i#0|)) (not true))) (and (=> (= (ControlFlow 0 63) (- 0 72)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 63) (- 0 71)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array.Length $nw@1))) (=> (= $index0@0 (IndexField |i#0|)) (and (=> (= (ControlFlow 0 63) (- 0 70)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@0)) (and (=> (= (ControlFlow 0 63) (- 0 69)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 63) (- 0 68)) (and (<= 0 |j#0|) (< |j#0| (_System.array.Length $nw@1)))) (=> (and (<= 0 |j#0|) (< |j#0| (_System.array.Length $nw@1))) (=> (= $index1@0 (IndexField |j#0|)) (and (=> (= (ControlFlow 0 63) (- 0 67)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@0)) (and (=> (= (ControlFlow 0 63) (- 0 66)) true) (and (=> (= (ControlFlow 0 63) (- 0 65)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.next)) (=> ($Is refType |$rhs#0_2@0| Tclass._module.Node?) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) $index0@0 ($Box intType (int_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@2)) (=> (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) $index1@0 ($Box intType (int_2_U |$rhs#0_1@0|))))) ($IsGoodHeap $Heap@3)) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) _module.Node.next ($Box refType |$rhs#0_2@0|)))) ($IsGoodHeap $Heap@4))) (and (=> (= (ControlFlow 0 63) 61) anon32_Then_correct) (=> (= (ControlFlow 0 63) 62) anon32_Else_correct)))))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (and (not (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| 25))) (= $Heap@5 $Heap@1)) (and (= |n#0@1| $nw@0) (= (ControlFlow 0 59) 56))) anon9_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 74) 63) anon31_Then_correct) (=> (= (ControlFlow 0 74) 59) anon31_Else_correct))))
(let ((anon30_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|))) (= (ControlFlow 0 76) 74)) anon4_correct)))
(let ((anon30_Then_correct  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (= (ControlFlow 0 75) 74)) anon4_correct)))
(let ((anon29_Else_correct  (=> (< |i#0| (LitInt 0)) (and (=> (= (ControlFlow 0 78) 75) anon30_Then_correct) (=> (= (ControlFlow 0 78) 76) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (<= (LitInt 0) |i#0|) (and (=> (= (ControlFlow 0 77) 75) anon30_Then_correct) (=> (= (ControlFlow 0 77) 76) anon30_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#16| null $Heap alloc |S#0|)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Node?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= 0 (LitInt 25))) (=> (<= 0 (LitInt 25)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 25)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 79) 77) anon29_Then_correct) (=> (= (ControlFlow 0 79) 78) anon29_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is SetType |S#0| (TSet Tclass._module.Node)) ($IsAlloc SetType |S#0| (TSet Tclass._module.Node) $Heap)) (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass._module.Node) ($IsAlloc refType |n#0| Tclass._module.Node $Heap))) true)) (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true)) (and (and (and ($Is refType |$rhs#0_2| Tclass._module.Node?) true) (and ($Is refType |$rhs#1_0| Tclass._module.Node?) true)) (and (and ($Is refType |$rhs#1_1| Tclass._module.Node?) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 81) 79))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 41) (- 49))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 13) (- 20))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
