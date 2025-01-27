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
(declare-fun Tagclass._module.ClassB () T@U)
(declare-fun Tagclass._module.Trait? () T@U)
(declare-fun Tagclass._module.Trait () T@U)
(declare-fun class._module.ClassB? () T@U)
(declare-fun Tagclass._module.ClassB? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$ClassB () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun field$m () T@U)
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
(declare-fun TBitvector (Int) T@U)
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.Trait (T@U) T@U)
(declare-fun Tclass._module.Trait? (T@U) T@U)
(declare-fun Tclass._module.ClassB? () T@U)
(declare-fun Tclass._module.ClassB () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.ClassB.m () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Trait (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Trait.y (T@U T@U) T@U)
(declare-fun _module.Trait.l (T@U T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.Trait?_0 (T@U) T@U)
(declare-fun Tclass._module.Trait_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.ClassB Tagclass._module.Trait? Tagclass._module.Trait class._module.ClassB? Tagclass._module.ClassB? tytagFamily$array tytagFamily$ClassB tytagFamily$Trait field$m)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv8Type) 3) (forall ((arg0@@2 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@2)) x@@2)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv8Type v@@0 (TBitvector 8) heap)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv8Type v@@0 (TBitvector 8) heap))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@1 (TBitvector 0)))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is bv8Type v@@2 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv8Type v@@2 (TBitvector 8)))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_module.Trait$Y T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Trait _module.Trait$Y) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.Trait? _module.Trait$Y) $h@@0))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Trait _module.Trait$Y) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Trait? _module.Trait$Y) $h@@0))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.ClassB?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is refType $o@@0 Tclass._module.ClassB?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.ClassB $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.ClassB? $h@@1))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassB $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassB? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@3 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@3 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@4 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@4 arg1@@0)) arg0@@4)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@4 arg1@@0))
))) (forall ((arg0@@5 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@5 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@5 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall ((_module.Trait$Y@@0 T@U) ($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.Trait? _module.Trait$Y@@0) $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.Trait? _module.Trait$Y@@0) $h@@3))
)))
(assert (= (FDim _module.ClassB.m) 0))
(assert (= (FieldOfDecl class._module.ClassB? field$m) _module.ClassB.m))
(assert  (not ($IsGhostField _module.ClassB.m)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.ClassB? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.ClassB? $h@@4))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((bx T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ClassB? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx (Tclass._module.Trait? (Tclass._System.array (TBitvector 8))) $h@@5))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAllocBox bx Tclass._module.ClassB? $h@@5))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((_module.Trait$Y@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Trait _module.Trait$Y@@1))  (and ($Is refType |c#0@@3| (Tclass._module.Trait? _module.Trait$Y@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Trait _module.Trait$Y@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Trait? _module.Trait$Y@@1)))
)))
(assert (forall ((v@@3 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t h@@1) ($IsAlloc T@@1 v@@3 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t h@@1))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.ClassB?) ($Is refType $o@@4 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($Is refType $o@@4 Tclass._module.ClassB?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.ClassB?) ($IsBox bx@@0 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@0 Tclass._module.ClassB?))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@2) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@4 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@1 h@@3) ($IsAlloc T@@2 v@@4 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@4 t@@1 h@@3))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((_module.Trait$Y@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Trait? _module.Trait$Y@@2)) Tagclass._module.Trait?) (= (TagFamily (Tclass._module.Trait? _module.Trait$Y@@2)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (Tclass._module.Trait? _module.Trait$Y@@2))
)))
(assert (forall ((_module.Trait$Y@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Trait _module.Trait$Y@@3)) Tagclass._module.Trait) (= (TagFamily (Tclass._module.Trait _module.Trait$Y@@3)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (Tclass._module.Trait _module.Trait$Y@@3))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.ClassB) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.ClassB)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsBox bx@@2 Tclass._module.ClassB))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.ClassB?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsBox bx@@3 Tclass._module.ClassB?))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.ClassB)  (and ($Is refType |c#0@@4| Tclass._module.ClassB?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.ClassB))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.ClassB?))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ClassB?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.ClassB.m)) (Tclass._System.array (TBitvector 8)) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |585|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.ClassB.m)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (implements$_module.Trait Tclass._module.ClassB? (Tclass._System.array (TBitvector 8))))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.ClassB? $heap) ($IsAlloc refType $o@@7 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8))) $heap))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.ClassB? $heap))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@2) ($Is T@@3 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@4 T@U) ($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 (Tclass._module.Trait? _module.Trait$Y@@4))) ($IsBox (_module.Trait.y _module.Trait$Y@@4 $o@@8) _module.Trait$Y@@4))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (_module.Trait.y _module.Trait$Y@@4 $o@@8))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@5 T@U) ($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 (Tclass._module.Trait? _module.Trait$Y@@5))) ($IsBox (_module.Trait.l _module.Trait$Y@@5 $o@@9) _module.Trait$Y@@5))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (_module.Trait.l _module.Trait$Y@@5 $o@@9))
))))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@6 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 (Tclass._module.Trait? _module.Trait$Y@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)))) ($IsAllocBox (_module.Trait.y _module.Trait$Y@@6 $o@@10) _module.Trait$Y@@6 $h@@7))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (_module.Trait.y _module.Trait$Y@@6 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@7 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 (Tclass._module.Trait? _module.Trait$Y@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAllocBox (_module.Trait.l _module.Trait$Y@@7 $o@@11) _module.Trait$Y@@7 $h@@8))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (_module.Trait.l _module.Trait$Y@@7 $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))
))))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((_module.Trait$Y@@8 T@U) ) (! (= (Tclass._module.Trait?_0 (Tclass._module.Trait? _module.Trait$Y@@8)) _module.Trait$Y@@8)
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._module.Trait? _module.Trait$Y@@8))
)))
(assert (forall ((_module.Trait$Y@@9 T@U) ) (! (= (Tclass._module.Trait_0 (Tclass._module.Trait _module.Trait$Y@@9)) _module.Trait$Y@@9)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Tclass._module.Trait _module.Trait$Y@@9))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@12)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( (_System.array.Length $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((_module.Trait$Y@@10 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._module.Trait? _module.Trait$Y@@10))  (or (= $o@@13 null) (implements$_module.Trait (dtype $o@@13) _module.Trait$Y@@10)))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType $o@@13 (Tclass._module.Trait? _module.Trait$Y@@10)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |609|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@5 (TBitvector 0)))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array? _System.array$arg@@9))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((_module.Trait$Y@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Trait? _module.Trait$Y@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Trait? _module.Trait$Y@@11))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Trait? _module.Trait$Y@@11)))
)))
(assert (forall ((_module.Trait$Y@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Trait _module.Trait$Y@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Trait _module.Trait$Y@@12))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Trait _module.Trait$Y@@12)))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TBitvector 8)) (and (= ($Box bv8Type ($Unbox bv8Type bx@@10)) bx@@10) ($Is bv8Type ($Unbox bv8Type bx@@10) (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@10 (TBitvector 8)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert (= (Tag Tclass._module.ClassB) Tagclass._module.ClassB))
(assert (= (TagFamily Tclass._module.ClassB) tytagFamily$ClassB))
(assert (= (Tag Tclass._module.ClassB?) Tagclass._module.ClassB?))
(assert (= (TagFamily Tclass._module.ClassB?) tytagFamily$ClassB))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall (($h@@10 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.ClassB?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@15) _module.ClassB.m)) (Tclass._System.array (TBitvector 8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |584|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@15) _module.ClassB.m)))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@5))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.ClassB.__ctor)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (<= 0 (LitInt 42)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
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
