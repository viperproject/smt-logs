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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.Multi () T@U)
(declare-fun Tagclass._module.Multi? () T@U)
(declare-fun class._module.Multi? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$Multi () T@U)
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
(declare-fun Tclass._module.Multi? () T@U)
(declare-fun Tclass._module.Multi () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Multi.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Multi.y () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.Multi Tagclass._module.Multi? class._module.Multi? tytagFamily$array tytagFamily$Multi field$x field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |2620|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2626|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Multi?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Multi?)))
 :qid |unknown.0:0|
 :skolemid |2916|
 :pattern ( ($Is refType $o@@0 Tclass._module.Multi?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Multi $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Multi? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2931|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Multi $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Multi? $h@@0))
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
 :skolemid |2619|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (= (FDim _module.Multi.x) 0))
(assert (= (FieldOfDecl class._module.Multi? field$x) _module.Multi.x))
(assert  (not ($IsGhostField _module.Multi.x)))
(assert (= (FDim _module.Multi.y) 0))
(assert (= (FieldOfDecl class._module.Multi? field$y) _module.Multi.y))
(assert  (not ($IsGhostField _module.Multi.y)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Multi? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2917|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Multi? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2379|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2380|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2278|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2276|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2287|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Multi?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Multi.x)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2919|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Multi.x)))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Multi?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Multi.y)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2921|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Multi.y)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2625|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2300|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2372|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2371|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2622|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Multi) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Multi)))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($IsBox bx@@0 Tclass._module.Multi))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Multi?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Multi?)))
 :qid |unknown.0:0|
 :skolemid |2834|
 :pattern ( ($IsBox bx@@1 Tclass._module.Multi?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |2618|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Multi)  (and ($Is refType |c#0@@2| Tclass._module.Multi?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2930|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Multi))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Multi?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2378|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2368|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2288|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2299|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |2373|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |2364|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |2365|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |2623|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2286|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |2621|
 :pattern ( (_System.array.Length $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@7 T@U) ($o@@8 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@8)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |2616|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Multi?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Multi.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2918|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Multi.x)))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Multi?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Multi.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2920|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Multi.y)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |2624|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2377|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.Multi) Tagclass._module.Multi))
(assert (= (TagFamily Tclass._module.Multi) tytagFamily$Multi))
(assert (= (Tag Tclass._module.Multi?) Tagclass._module.Multi?))
(assert (= (TagFamily Tclass._module.Multi?) tytagFamily$Multi))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@11 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@11 $f))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) (or (= $o@@11 |l#3|) (= $o@@11 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2985|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@11 $f))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2279|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2277|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2322|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2301|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $index0@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $index1@0 () T@U)
(declare-fun $index2@0 () T@U)
(declare-fun $index3@0 () T@U)
(declare-fun $index4@0 () T@U)
(declare-fun |$rhs#13@0| () Int)
(declare-fun |$rhs#14@0| () Int)
(declare-fun |$rhs#15@0| () Int)
(declare-fun |$rhs#16@0| () Int)
(declare-fun |$rhs#17@0| () Int)
(declare-fun $Heap@17 () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun $index0@1 () T@U)
(declare-fun $index1@1 () T@U)
(declare-fun |$rhs#18@0| () Int)
(declare-fun |$rhs#19@0| () Int)
(declare-fun $Heap@22 () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun $index0@2 () T@U)
(declare-fun $index1@2 () T@U)
(declare-fun |$rhs#20@0| () Int)
(declare-fun |$rhs#21@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |p#0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |$rhs#2_0@0| () Int)
(declare-fun |$rhs#2_1@0| () Int)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |$rhs#2_2@0| () Int)
(declare-fun |$rhs#2_3@0| () Int)
(declare-fun $Heap@12 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun |$rhs#1_1@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#4@0| () Int)
(declare-fun |$rhs#5@0| () Int)
(declare-fun |u#0@0| () Int)
(declare-fun |t#0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#6@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#7@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#8@0| () Int)
(declare-fun |$rhs#9@0| () Int)
(declare-fun |$rhs#10@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestMulti)
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
 (=> (= (ControlFlow 0 0) 96) (let ((anon9_correct  (and (=> (= (ControlFlow 0 2) (- 0 46)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 20)) (= $Heap@15 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@14 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (<= 0 (LitInt 30))) (=> (<= 0 (LitInt 30)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 30)) (= $Heap@16 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@15 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 43)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0))) (=> (= $index0@0 (IndexField (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0)) (and (=> (= (ControlFlow 0 2) (- 0 41)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 40)) (and (<= 0 (LitInt 10)) (< (LitInt 10) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 10)) (< (LitInt 10) (_System.array.Length $nw@1))) (=> (= $index1@0 (IndexField (LitInt 10))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@0)) (and (=> (= (ControlFlow 0 2) (- 0 38)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 37)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= $index2@0 (IndexField (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index2@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index2@0)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0))) (=> (= $index3@0 (IndexField (LitInt 3))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index3@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index3@0)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1))) (=> (= $index4@0 (IndexField (LitInt 18))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index4@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index4@0)) (=> (= |$rhs#13@0| (LitInt 0)) (=> (and (and (= |$rhs#14@0| (LitInt 1)) (= |$rhs#15@0| (LitInt 2))) (and (= |$rhs#16@0| (LitInt 3)) (= |$rhs#17@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 10) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#14@0|)) ($Box intType (int_2_U |$rhs#13@0|))))) (=> (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 10) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#14@0|)) ($Box intType (int_2_U |$rhs#13@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 0) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#15@0|)) ($Box intType (int_2_U |$rhs#13@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 0) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#15@0|)) ($Box intType (int_2_U |$rhs#13@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (or (or (not (= $nw@0 $nw@1)) (not true)) (or (not (= (LitInt 0) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#15@0|)) ($Box intType (int_2_U |$rhs#14@0|))))) (=> (or (or (or (not (= $nw@0 $nw@1)) (not true)) (or (not (= (LitInt 0) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#15@0|)) ($Box intType (int_2_U |$rhs#14@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#13@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#13@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (or (or (not (= $nw@0 $nw@1)) (not true)) (or (not (= (LitInt 3) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#14@0|))))) (=> (or (or (or (not (= $nw@0 $nw@1)) (not true)) (or (not (= (LitInt 3) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#14@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#15@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#16@0|)) ($Box intType (int_2_U |$rhs#15@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#13@0|))))) (=> (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#13@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= (LitInt 18) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#14@0|))))) (=> (or (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= (LitInt 18) (LitInt 10))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#14@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#15@0|))))) (=> (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#15@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 3))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#16@0|))))) (=> (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (LitInt 18) (LitInt 3))) (not true))) (= ($Box intType (int_2_U |$rhs#17@0|)) ($Box intType (int_2_U |$rhs#16@0|)))) (=> (and (= $Heap@17 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@16 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $nw@0) $index0@0 ($Box intType (int_2_U |$rhs#13@0|))))) ($IsGoodHeap $Heap@17)) (=> (and (and (and (= $Heap@18 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@17 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $nw@1) $index1@0 ($Box intType (int_2_U |$rhs#14@0|))))) ($IsGoodHeap $Heap@18)) (and (= $Heap@19 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@18 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $nw@0) $index2@0 ($Box intType (int_2_U |$rhs#15@0|))))) ($IsGoodHeap $Heap@19))) (and (and (= $Heap@20 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@19 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $nw@0) $index3@0 ($Box intType (int_2_U |$rhs#16@0|))))) ($IsGoodHeap $Heap@20)) (and (= $Heap@21 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@20 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $nw@1) $index4@0 ($Box intType (int_2_U |$rhs#17@0|))))) ($IsGoodHeap $Heap@21)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0))) (=> (= $index0@1 (IndexField (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@1)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18)))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18))))) (_System.array.Length $nw@1)))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18)))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18))))) (_System.array.Length $nw@1))) (=> (= $index1@1 (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1)) (=> (and (= |$rhs#18@0| (LitInt 271)) (= |$rhs#19@0| (LitInt 272))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18))))) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#19@0|)) ($Box intType (int_2_U |$rhs#18@0|))))) (=> (or (or (or (not (= $nw@1 $nw@0)) (not true)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (IndexField (LitInt 18))))) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#19@0|)) ($Box intType (int_2_U |$rhs#18@0|)))) (=> (and (and (= $Heap@22 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@21 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@0) $index0@1 ($Box intType (int_2_U |$rhs#18@0|))))) ($IsGoodHeap $Heap@22)) (and (= $Heap@23 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@22 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $nw@1) $index1@1 ($Box intType (int_2_U |$rhs#19@0|))))) ($IsGoodHeap $Heap@23))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0))) (=> (= $index0@2 (IndexField (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@2))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@2)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array.Length $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18)))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18))))) (_System.array.Length $nw@0)))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18)))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18))))) (_System.array.Length $nw@0))) (=> (= $index1@2 (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@2))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@2)) (=> (= |$rhs#20@0| (LitInt 273)) (=> (and (= |$rhs#21@0| (LitInt 274)) (= (ControlFlow 0 2) (- 0 1))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $nw@1) (IndexField (LitInt 18))))) (LitInt 4))) (not true))) (= ($Box intType (int_2_U |$rhs#21@0|)) ($Box intType (int_2_U |$rhs#20@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon12_Else_correct  (=> (and (= $Heap@14 $Heap@9) (= (ControlFlow 0 57) 2)) anon9_correct)))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 47) (- 0 56)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 47) (- 0 55)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x)) (and (=> (= (ControlFlow 0 47) (- 0 54)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 47) (- 0 53)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.y)) (=> (and (= |$rhs#2_0@0| (LitInt 10)) (= |$rhs#2_1@0| (LitInt 10))) (=> (and (and (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 |p#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |p#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#2_0@0|))))) ($IsGoodHeap $Heap@10)) (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |m#0|) _module.Multi.y ($Box intType (int_2_U |$rhs#2_1@0|))))) ($IsGoodHeap $Heap@11))) (and (=> (= (ControlFlow 0 47) (- 0 52)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 47) (- 0 51)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x)) (and (=> (= (ControlFlow 0 47) (- 0 50)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 47) (- 0 49)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (=> (and (= |$rhs#2_2@0| (LitInt 8)) (= |$rhs#2_3@0| (LitInt 8))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (or (or (not (= |m#0| |p#0|)) (not true)) (= |$rhs#2_3@0| |$rhs#2_2@0|))) (=> (or (or (not (= |m#0| |p#0|)) (not true)) (= |$rhs#2_3@0| |$rhs#2_2@0|)) (=> (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 |p#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |p#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#2_2@0|))))) ($IsGoodHeap $Heap@12)) (=> (and (and (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@12 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#2_3@0|))))) ($IsGoodHeap $Heap@13)) (and (= $Heap@14 $Heap@13) (= (ControlFlow 0 47) 2))) anon9_correct)))))))))))))))))))))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 58) (- 0 60)) (or (not (= |p#0| null)) (not true))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |p#0|) _module.Multi.x))) (LitInt 300))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |p#0|) _module.Multi.x))) (LitInt 300)) (and (=> (= (ControlFlow 0 58) 47) anon12_Then_correct) (=> (= (ControlFlow 0 58) 57) anon12_Else_correct)))))))
(let ((anon11_Else_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |p#0|) _module.Multi.x))) 300) (=> (and (= $Heap@9 $Heap@6) (= (ControlFlow 0 69) 58)) anon6_correct))))
(let ((anon11_Then_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |p#0|) _module.Multi.x))) 300)) (not true)) (and (=> (= (ControlFlow 0 61) (- 0 68)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 61) (- 0 67)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x)) (and (=> (= (ControlFlow 0 61) (- 0 66)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 61) (- 0 65)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (and (=> (= (ControlFlow 0 61) (- 0 64)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (=> (= |$rhs#1_0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |m#0|) _module.Multi.x)))) (and (=> (= (ControlFlow 0 61) (- 0 63)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (=> (= |$rhs#1_1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |p#0|) _module.Multi.x)))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (or (or (not (= |m#0| |p#0|)) (not true)) (= |$rhs#1_1@0| |$rhs#1_0@0|))) (=> (or (or (not (= |m#0| |p#0|)) (not true)) (= |$rhs#1_1@0| |$rhs#1_0@0|)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 |p#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |p#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#1_0@0|))))) ($IsGoodHeap $Heap@7)) (=> (and (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#1_1@0|))))) ($IsGoodHeap $Heap@8)) (and (= $Heap@9 $Heap@8) (= (ControlFlow 0 61) 58))) anon6_correct)))))))))))))))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 70) (- 0 81)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 70) (- 0 80)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (=> (= |$rhs#4@0| (LitInt 100)) (and (=> (= (ControlFlow 0 70) (- 0 79)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (=> (and (and (= |$rhs#5@0| (+ (+ |u#0@0| |t#0@0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) _module.Multi.x))))) (= |$rhs#6@0| (LitInt 200))) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#5@0|))))) ($IsGoodHeap $Heap@4))) (and (=> (= (ControlFlow 0 70) (- 0 78)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 70) (- 0 77)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (=> (= |$rhs#7@0| (LitInt 0)) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#7@0|))))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 70) (- 0 76)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 70) (- 0 75)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (=> (= |$rhs#8@0| (LitInt 200)) (and (=> (= (ControlFlow 0 70) (- 0 74)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (=> (and (and (= |$rhs#9@0| (+ (+ |$rhs#4@0| |$rhs#6@0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |m#0|) _module.Multi.x))))) (= |$rhs#10@0| (LitInt 400))) (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#9@0|))))) ($IsGoodHeap $Heap@6))) (and (=> (= (ControlFlow 0 70) (- 0 73)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 70) (- 0 72)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |m#0|) _module.Multi.x))) (LitInt 300))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |m#0|) _module.Multi.x))) (LitInt 300)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 70) 61) anon11_Then_correct) (=> (= (ControlFlow 0 70) 69) anon11_Else_correct)))))))))))))))))))))))))))))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 82) (- 0 86)) (or (not (= |p#0| null)) (not true))) (and (=> (= (ControlFlow 0 82) (- 0 85)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |p#0|) _module.Multi.x))) (LitInt 20))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |p#0|) _module.Multi.x))) (LitInt 20)) (and (=> (= (ControlFlow 0 82) (- 0 84)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) _module.Multi.x))) (LitInt 10))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) _module.Multi.x))) (LitInt 10)) (=> (= (ControlFlow 0 82) 70) anon3_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#5| null $Heap alloc |m#0| |p#0|)) (and (=> (= (ControlFlow 0 87) (- 0 95)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 87) (- 0 94)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.x)) (=> (= |$rhs#0@0| (LitInt 10)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 87) (- 0 93)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 87) (- 0 92)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| _module.Multi.y)) (=> (= |$rhs#1@0| (LitInt 12)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) _module.Multi.y ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 87) (- 0 91)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 87) (- 0 90)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.x)) (=> (= |$rhs#2@0| (LitInt 20)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |p#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |p#0|) _module.Multi.x ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 87) (- 0 89)) (or (not (= |p#0| null)) (not true))) (=> (or (not (= |p#0| null)) (not true)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0| _module.Multi.y)) (=> (= |$rhs#3@0| (LitInt 22)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 |p#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0|) _module.Multi.y ($Box intType (int_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 87) 82) anon10_Then_correct) (=> (= (ControlFlow 0 87) 70) anon3_correct)))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |m#0| Tclass._module.Multi) ($IsAlloc refType |m#0| Tclass._module.Multi $Heap)) (and ($Is refType |p#0| Tclass._module.Multi) ($IsAlloc refType |p#0| Tclass._module.Multi $Heap))) (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true)) (and (and (and ($Is refType |b#0| (Tclass._System.array TInt)) ($IsAlloc refType |b#0| (Tclass._System.array TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 96) 87)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 82) (- 83))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
