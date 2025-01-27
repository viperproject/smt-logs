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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Number? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun Tagclass._module.Class () T@U)
(declare-fun class._module.Class? () T@U)
(declare-fun Tagclass._module.Class? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$Number () T@U)
(declare-fun tytagFamily$Integer () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun field$ns () T@U)
(declare-fun field$js () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun implements$_module.Number (T@U) Bool)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._module.Class? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Number? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun Tclass._module.Integer () T@U)
(declare-fun Tclass._module.Class () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Class.ns () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Class.js () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass._module.Number Tagclass._module.Integer Tagclass._module.Number? Tagclass._module.Integer? Tagclass._module.Class class._module.Class? Tagclass._module.Class? tytagFamily$object tytagFamily$array tytagFamily$array2 tytagFamily$Number tytagFamily$Integer tytagFamily$Class field$ns field$js)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |772|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |1235|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |773|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |771|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1241|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (implements$_module.Number Tclass._module.Integer?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |768|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Integer?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1473|
 :pattern ( ($Is refType $o@@2 Tclass._module.Integer?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Class?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Class?)))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( ($Is refType $o@@3 Tclass._module.Class?))
)))
(assert (forall ((bx T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Number? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsAllocBox bx Tclass._module.Number? $h@@1))
)))
(assert (forall ((bx@@0 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@0 Tclass._module.Number? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Number $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.Number? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Number $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Number? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Integer $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.Integer? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Integer $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Integer? $h@@5))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Class $h@@6) ($IsAlloc refType |c#0@@4| Tclass._module.Class? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Class $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Class? $h@@6))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._System.array? _System.array$arg@@1) $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._System.array? _System.array$arg@@1) $h@@7))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@5 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass._System.array2? _System.array2$arg@@2) $h@@8)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1232|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass._System.array2? _System.array2$arg@@2) $h@@8))
)))
(assert (= (FDim _module.Class.ns) 0))
(assert (= (FieldOfDecl class._module.Class? field$ns) _module.Class.ns))
(assert  (not ($IsGhostField _module.Class.ns)))
(assert (= (FDim _module.Class.js) 0))
(assert (= (FieldOfDecl class._module.Class? field$js) _module.Class.js))
(assert  (not ($IsGhostField _module.Class.js)))
(assert (forall (($o@@6 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@9)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@9))
)))
(assert (forall (($o@@7 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Number? $h@@10)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1466|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Number? $h@@10))
)))
(assert (forall (($o@@8 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Integer? $h@@11)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Integer? $h@@11))
)))
(assert (forall (($o@@9 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.Class? $h@@12)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.Class? $h@@12))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |761|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |762|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |660|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |658|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@13 T@U) ($o@@10 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) (IndexField $i0)) _System.array$arg@@2 $h@@13))
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@10) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |689|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |690|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |748|
 :pattern ( (MultiIndexField f i))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v@@0)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |867|
 :pattern ( (|Seq#Build| s v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@5| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@6| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1240|
 :pattern ( ($Is refType |c#0@@6| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@6| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@14 T@U) ($o@@11 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@11))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@11))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@14))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@11) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |754|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |753|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |1224|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |1237|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Number) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@5 Tclass._module.Number))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( ($IsBox bx@@6 Tclass._module.Integer))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Number?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Number?)))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( ($IsBox bx@@7 Tclass._module.Number?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( ($IsBox bx@@8 Tclass._module.Integer?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Class) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Class)))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($IsBox bx@@9 Tclass._module.Class))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Class?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Class?)))
 :qid |unknown.0:0|
 :skolemid |1486|
 :pattern ( ($IsBox bx@@10 Tclass._module.Class?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( ($Is refType $o@@12 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |1231|
 :pattern ( ($Is refType $o@@13 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._System.object)  (and ($Is refType |c#0@@7| Tclass._System.object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Number)  (and ($Is refType |c#0@@8| Tclass._module.Number?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1471|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Number))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Number?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Integer)  (and ($Is refType |c#0@@9| Tclass._module.Integer?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.Class)  (and ($Is refType |c#0@@10| Tclass._module.Class?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1496|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Class))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Class?))
)))
(assert (forall (($o@@14 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.Number? $heap) ($IsAlloc refType $o@@14 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Number? $heap))
)))
(assert (forall (($o@@15 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.Integer? $heap@@0) ($IsAlloc refType $o@@15 Tclass._module.Number? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Integer? $heap@@0))
)))
(assert (forall (($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Class?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Class.ns)) (TSet Tclass._module.Number)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Class.ns)))
)))
(assert (forall (($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Class?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Class.js)) (TSet Tclass._module.Integer)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1494|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Class.js)))
)))
(assert (forall (($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Class?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Class.ns)) (TSet Tclass._module.Number) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Class.ns)))
)))
(assert (forall (($h@@18 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Class?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Class.js)) (TSet Tclass._module.Integer) $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1495|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Class.js)))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |760|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@19 T@U) ($o@@20 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@20))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@20))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |1229|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |750|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |670|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array.Length o@@2))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |755|
 :pattern ( (_System.array.Length o@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |864|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (_System.array2.Length0 o@@3))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (_System.array2.Length0 o@@3))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (_System.array2.Length1 o@@4))
 :qid |unknown.0:0|
 :skolemid |1228|
 :pattern ( (_System.array2.Length1 o@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |710|
 :pattern ( (|Set#IsMember| v@@4 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |711|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@21 T@U) ) (! ($Is refType $o@@21 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@21 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |644|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |645|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |746|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |747|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@22)) TInt $h@@20))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (_System.array.Length $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@23)) TInt $h@@21))
 :qid |unknown.0:0|
 :skolemid |1234|
 :pattern ( (_System.array2.Length0 $o@@23) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@22 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@24)) TInt $h@@22))
 :qid |unknown.0:0|
 :skolemid |1236|
 :pattern ( (_System.array2.Length1 $o@@24) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@23 T@U) ($o@@25 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@25)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@25) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@25) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |664|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@26 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@26 $f))  (=> (and (or (not (= $o@@26 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@26) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1527|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@26 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |749|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |866|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |675|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |1226|
 :pattern ( ($IsBox bx@@16 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( ($IsBox bx@@17 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> ($Is refType $o@@27 Tclass._module.Number?) ($Is refType $o@@27 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@27 Tclass._module.Number?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Number?) ($IsBox bx@@18 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( ($IsBox bx@@18 Tclass._module.Number?))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> ($Is refType $o@@28 Tclass._module.Integer?) ($Is refType $o@@28 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($Is refType $o@@28 Tclass._module.Integer?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Integer?) ($IsBox bx@@19 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsBox bx@@19 Tclass._module.Integer?))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |665|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f@@1 T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@9))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |759|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@9)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= (Tag Tclass._module.Integer) Tagclass._module.Integer))
(assert (= (TagFamily Tclass._module.Integer) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Number?) Tagclass._module.Number?))
(assert (= (TagFamily Tclass._module.Number?) tytagFamily$Number))
(assert (= (Tag Tclass._module.Integer?) Tagclass._module.Integer?))
(assert (= (TagFamily Tclass._module.Integer?) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Class) Tagclass._module.Class))
(assert (= (TagFamily Tclass._module.Class) tytagFamily$Class))
(assert (= (Tag Tclass._module.Class?) Tagclass._module.Class?))
(assert (= (TagFamily Tclass._module.Class?) tytagFamily$Class))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.Number?)  (or (= $o@@29 null) (implements$_module.Number (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($Is refType $o@@29 Tclass._module.Number?))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |661|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |659|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |865|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |704|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |683|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |value##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |ns#0@0| () T@U)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |prefix##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun |S##0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |ns#0@1| () T@U)
(declare-fun |ns#0@2| () T@U)
(declare-fun |prefix##1@0| () T@U)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun |ns#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@11| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SeqType) 8) (= (Ctor charType) 9)))
(set-info :boogie-vc-id Impl$$_module.__default.HeapAssignmentDowncasts)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |value##0@0| (LitInt 22))) (=> (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Integer) ($IsAlloc refType call2formal@this Tclass._module.Integer $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0 Tclass._module.Integer $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc))))) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@30)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 30)) true) (=> (= |ns#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call2formal@this@0))) (and (=> (= (ControlFlow 0 2) (- 0 29)) ($Is SetType |ns#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |ns#0@0| (TSet Tclass._module.Integer)) (=> (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.Class) ($IsAlloc refType call2formal@this@@0 Tclass._module.Class $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.Class) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.Class $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc))))) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31)))
 :qid |CovariantCollectionsdfy.414:3|
 :skolemid |1490|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 28)) true) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (not (= call2formal@this@0@@0 null)) (not true))) (=> (or (not (= call2formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@0 _module.Class.ns))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@0 _module.Class.ns)) (and (=> (= (ControlFlow 0 2) (- 0 25)) true) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (not (= call2formal@this@0@@0 null)) (not true))) (=> (or (not (= call2formal@this@0@@0 null)) (not true)) (=> (= |$rhs#0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@0) _module.Class.js))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@0) _module.Class.ns ($Box SetType |$rhs#0@0|)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 23)) true) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= call2formal@this@0@@0 null)) (not true))) (=> (or (not (= call2formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@0 _module.Class.js))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@0 _module.Class.js)) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= call2formal@this@0@@0 null)) (not true))) (=> (or (not (= call2formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.Class.ns)) (TSet Tclass._module.Integer))) (=> ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.Class.ns)) (TSet Tclass._module.Integer)) (=> (and (and (= |$rhs#1@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.Class.ns))) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.Class.js ($Box SetType |$rhs#1@0|))))) (and ($IsGoodHeap $Heap@3) (= |prefix##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 106))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= call2formal@this@0@@0 null)) (not true))) (=> (or (not (= call2formal@this@0@@0 null)) (not true)) (=> (= |S##0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call2formal@this@0@@0) _module.Class.js))) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@32)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? (TSet Tclass._module.Integer)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 20)) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (<= 0 (LitInt 18))) (=> (<= 0 (LitInt 18)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= 0 (LitInt 18))) (=> (<= 0 (LitInt 18)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? (TSet Tclass._module.Integer)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) (LitInt 18)))) (and (and (= (_System.array2.Length1 $nw@1) (LitInt 18)) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 7))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 7)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is SetType |ns#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |ns#0@0| (TSet Tclass._module.Integer)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField (LitInt 7)) ($Box SetType |ns#0@0|)))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0))) (=> (= |ns#0@1| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField (LitInt 1))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1))) (=> (and (= |ns#0@2| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) (MultiIndexField (IndexField (LitInt 3)) (LitInt 3))))) (= |prefix##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 91))) ($Box charType (|char#FromInt| 55))) ($Box charType (|char#FromInt| 93))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass._module.Number) ($IsAlloc refType |n#0| Tclass._module.Number $Heap))) true)) (=> (and (and (and (and (and ($Is SetType |ns#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |ns#0| (TSet Tclass._module.Number) $Heap)) true) (and (=> |defass#c#0| (and ($Is refType |c#0@@11| Tclass._module.Class) ($IsAlloc refType |c#0@@11| Tclass._module.Class $Heap))) true)) (and (and ($Is refType |a#0| (Tclass._System.array (TSet Tclass._module.Integer))) ($IsAlloc refType |a#0| (Tclass._System.array (TSet Tclass._module.Integer)) $Heap)) true)) (and (and (and ($Is refType |m#0| (Tclass._System.array2 (TSet Tclass._module.Integer))) ($IsAlloc refType |m#0| (Tclass._System.array2 (TSet Tclass._module.Integer)) $Heap)) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 31) 2)))) anon0_correct))))
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
