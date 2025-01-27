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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.InstanceInit () T@U)
(declare-fun Tagclass._module.Trait? () T@U)
(declare-fun Tagclass._module.Six () T@U)
(declare-fun Tagclass._module.Trait () T@U)
(declare-fun class._module.InstanceInit? () T@U)
(declare-fun Tagclass._module.InstanceInit? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$InstanceInit () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$Six () T@U)
(declare-fun field$r () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.InstanceInit.N (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.InstanceInit? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.InstanceInit.y2 (T@U) Int)
(declare-fun Tclass._module.Six () T@U)
(declare-fun _module.InstanceInit.y3 (T@U) Int)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun implements$_module.Trait (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Trait? () T@U)
(declare-fun Tclass._module.Trait () T@U)
(declare-fun Tclass._module.InstanceInit () T@U)
(declare-fun _module.InstanceInit.r () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Trait.x1 (T@U) Int)
(declare-fun _module.Trait.x0 (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.InstanceInit Tagclass._module.Trait? Tagclass._module.Six Tagclass._module.Trait class._module.InstanceInit? Tagclass._module.InstanceInit? tytagFamily$array tytagFamily$InstanceInit tytagFamily$Trait tytagFamily$Six field$r)
)
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.InstanceInit?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc intType (int_2_U (_module.InstanceInit.N $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2075|
 :pattern ( (_module.InstanceInit.N $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( (_System.array.Length $o@@0) (Tclass._System.array? _System.array$arg))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.InstanceInit?)) ($Is intType (int_2_U (_module.InstanceInit.y2 $o@@1)) Tclass._module.Six))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (_module.InstanceInit.y2 $o@@1))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.InstanceInit?)) ($Is intType (int_2_U (_module.InstanceInit.y3 $o@@2)) Tclass._module.Six))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( (_module.InstanceInit.y3 $o@@2))
))))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.Six $h@@0)
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.Six $h@@0))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@1) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@1))
)))
(assert (implements$_module.Trait Tclass._module.InstanceInit?))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.InstanceInit?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_module.InstanceInit.y2 $o@@3)) Tclass._module.Six $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2069|
 :pattern ( (_module.InstanceInit.y2 $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.InstanceInit?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_module.InstanceInit.y3 $o@@4)) Tclass._module.Six $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2072|
 :pattern ( (_module.InstanceInit.y3 $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))
))))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.InstanceInit?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.InstanceInit?)))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@5 Tclass._module.InstanceInit?))
)))
(assert (forall ((bx T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.InstanceInit? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx Tclass._module.Trait? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2197|
 :pattern ( ($IsAllocBox bx Tclass._module.InstanceInit? $h@@4))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Trait $h@@5) ($IsAlloc refType |c#0@@0| Tclass._module.Trait? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Trait $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Trait? $h@@5))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.InstanceInit $h@@6) ($IsAlloc refType |c#0@@1| Tclass._module.InstanceInit? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.InstanceInit $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.InstanceInit? $h@@6))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@6 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@7)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@7))
)))
(assert (= (FDim _module.InstanceInit.r) 0))
(assert (= (FieldOfDecl class._module.InstanceInit? field$r) _module.InstanceInit.r))
(assert  (not ($IsGhostField _module.InstanceInit.r)))
(assert (forall (($o@@7 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Trait? $h@@8)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2049|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Trait? $h@@8))
)))
(assert (forall (($o@@8 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.InstanceInit? $h@@9)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.InstanceInit? $h@@9))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1603|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1604|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1502|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1504|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1500|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@10 T@U) ($o@@9 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) (IndexField $i0)) _System.array$arg@@2 $h@@10))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1511|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.InstanceInit?)) ($Is intType (int_2_U (_module.InstanceInit.N $o@@10)) TInt))
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( (_module.InstanceInit.N $o@@10))
))))
(assert (forall ((this T@U) ) (! (= (_module.Trait.x1 this) (LitInt 7))
 :qid |Constantdfy.94:9|
 :skolemid |1994|
 :pattern ( (_module.Trait.x1 this))
)))
(assert (forall ((this@@0 T@U) ) (! (= (_module.InstanceInit.y3 this@@0) (LitInt 12))
 :qid |Constantdfy.116:9|
 :skolemid |2070|
 :pattern ( (_module.InstanceInit.y3 this@@0))
)))
(assert (forall ((this@@1 T@U) ) (! (= (_module.InstanceInit.N this@@1) (LitInt 20))
 :qid |Constantdfy.117:9|
 :skolemid |2073|
 :pattern ( (_module.InstanceInit.N this@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.Six) (<= (LitInt 6) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.Six))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.InstanceInit?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.InstanceInit.r)) TReal $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2077|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.InstanceInit.r)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1524|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1596|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1595|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Trait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (_module.Trait.x0 $o@@12)) Tclass._module.Six $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2051|
 :pattern ( (_module.Trait.x0 $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Trait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (_module.Trait.x1 $o@@13)) Tclass._module.Six $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2054|
 :pattern ( (_module.Trait.x1 $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))
))))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1837|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1846|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.Trait?)) ($Is intType (int_2_U (_module.Trait.x0 $o@@14)) Tclass._module.Six))
 :qid |unknown.0:0|
 :skolemid |2050|
 :pattern ( (_module.Trait.x0 $o@@14))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 Tclass._module.Trait?)) ($Is intType (int_2_U (_module.Trait.x1 $o@@15)) Tclass._module.Six))
 :qid |unknown.0:0|
 :skolemid |2053|
 :pattern ( (_module.Trait.x1 $o@@15))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.InstanceInit) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.InstanceInit)))
 :qid |unknown.0:0|
 :skolemid |1987|
 :pattern ( ($IsBox bx@@1 Tclass._module.InstanceInit))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Trait?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Trait?)))
 :qid |unknown.0:0|
 :skolemid |1990|
 :pattern ( ($IsBox bx@@2 Tclass._module.Trait?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Six) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.Six)))
 :qid |unknown.0:0|
 :skolemid |1995|
 :pattern ( ($IsBox bx@@3 Tclass._module.Six))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Trait) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Trait)))
 :qid |unknown.0:0|
 :skolemid |2052|
 :pattern ( ($IsBox bx@@4 Tclass._module.Trait))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.InstanceInit?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.InstanceInit?)))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsBox bx@@5 Tclass._module.InstanceInit?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@16 T@U) ) (! (= ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@16 null) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Trait)  (and ($Is refType |c#0@@3| Tclass._module.Trait?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Trait))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Trait?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.InstanceInit)  (and ($Is refType |c#0@@4| Tclass._module.InstanceInit?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.InstanceInit))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.InstanceInit?))
)))
(assert (forall (($o@@17 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@17 Tclass._module.InstanceInit? $heap) ($IsAlloc refType $o@@17 Tclass._module.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |2199|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.InstanceInit? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1602|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1592|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1512|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TReal) (and (= ($Box realType ($Unbox realType bx@@7)) bx@@7) ($Is realType ($Unbox realType bx@@7) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |1513|
 :pattern ( ($IsBox bx@@7 TReal))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1523|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |1597|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |1588|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |1589|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1510|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@14 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@18)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( (_System.array.Length $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@15 T@U) ($o@@19 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@19)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($h@@16 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.InstanceInit?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@20) _module.InstanceInit.r)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2076|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@20) _module.InstanceInit.r)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@21 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))  (=> (and (or (not (= $o@@21 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |1839|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.InstanceInit?) ($Is refType $o@@22 Tclass._module.Trait?))
 :qid |unknown.0:0|
 :skolemid |2198|
 :pattern ( ($Is refType $o@@22 Tclass._module.InstanceInit?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.InstanceInit?) ($IsBox bx@@10 Tclass._module.Trait?))
 :qid |unknown.0:0|
 :skolemid |2196|
 :pattern ( ($IsBox bx@@10 Tclass._module.InstanceInit?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1601|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7)))
)))
(assert (= (Tag Tclass._module.InstanceInit) Tagclass._module.InstanceInit))
(assert (= (TagFamily Tclass._module.InstanceInit) tytagFamily$InstanceInit))
(assert (= (Tag Tclass._module.Trait?) Tagclass._module.Trait?))
(assert (= (TagFamily Tclass._module.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass._module.Six) Tagclass._module.Six))
(assert (= (TagFamily Tclass._module.Six) tytagFamily$Six))
(assert (= (Tag Tclass._module.Trait) Tagclass._module.Trait))
(assert (= (TagFamily Tclass._module.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass._module.InstanceInit?) Tagclass._module.InstanceInit?))
(assert (= (TagFamily Tclass._module.InstanceInit?) tytagFamily$InstanceInit))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass._module.Trait?)  (or (= $o@@23 null) (implements$_module.Trait (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |2048|
 :pattern ( ($Is refType $o@@23 Tclass._module.Trait?))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1503|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1505|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1501|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1546|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1547|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1525|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1526|
 :pattern ( ($Is realType v@@5 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@2 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#1@0| () Real)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |u#0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun this.x0@0 () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () Real)
(declare-fun $Heap@1 () T@U)
(declare-fun this.r@0 () Real)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun this.y2@0 () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |arr#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.InstanceInit.__ctor)
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
 (=> (= (ControlFlow 0 0) 37) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 13)) (= (_module.InstanceInit.y2 this@@2) (LitInt 89))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= (_module.InstanceInit.y3 this@@2) (LitInt 12))) (=> (and (= (_module.InstanceInit.y2 this@@2) (LitInt 89)) (= (_module.InstanceInit.y3 this@@2) (LitInt 12))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (_System.array.Length $nw@0) (LitInt 20))) (=> (= (_System.array.Length $nw@0) (LitInt 20)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 9)) (< (LitInt 9) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 9)) (< (LitInt 9) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 9))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 9)))) (=> (= |$rhs#1@0| (LitReal 3.14)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (LitInt 9)) ($Box realType (real_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.InstanceInit.r))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@2 _module.InstanceInit.r)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 9)) (< (LitInt 9) (_System.array.Length $nw@0))))))))))))))))))))))))))))
(let ((anon6_Else_correct  (=> (and (or (not (= (_module.InstanceInit.y2 this@@2) (LitInt 89))) (not true)) (= (ControlFlow 0 16) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (= (_module.InstanceInit.y2 this@@2) (LitInt 89)) (= |newtype$check#9@0| (LitInt 12))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= (LitInt 6) |newtype$check#9@0|)) (=> (<= (LitInt 6) |newtype$check#9@0|) (=> (= (ControlFlow 0 14) 2) anon4_correct))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 17) (- 0 20)) (= (_module.Trait.x0 this@@2) (+ |u#0| 80))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (= (_module.Trait.x1 this@@2) (LitInt 7))) (=> (and (and (= (_module.Trait.x0 this@@2) (+ |u#0| 80)) (= (_module.Trait.x1 this@@2) (LitInt 7))) (= |newtype$check#8@0| (LitInt 89))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= (LitInt 6) |newtype$check#8@0|)) (=> (<= (LitInt 6) |newtype$check#8@0|) (and (=> (= (ControlFlow 0 17) 14) anon6_Then_correct) (=> (= (ControlFlow 0 17) 16) anon6_Else_correct)))))))))
(let ((anon5_Else_correct  (=> (and (or (not (= (_module.Trait.x0 this@@2) (+ |u#0| 80))) (not true)) (= (ControlFlow 0 23) 17)) anon2_correct)))
(let ((anon5_Then_correct  (=> (and (= (_module.Trait.x0 this@@2) (+ |u#0| 80)) (= |newtype$check#7@0| (LitInt 7))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= (LitInt 6) |newtype$check#7@0|)) (=> (<= (LitInt 6) |newtype$check#7@0|) (=> (= (ControlFlow 0 21) 17) anon2_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#1@0| (LitInt 80))) (and (=> (= (ControlFlow 0 24) (- 0 36)) (<= (LitInt 6) |newtype$check#1@0|)) (=> (<= (LitInt 6) |newtype$check#1@0|) (=> (= |newtype$check#2@0| (+ 80 |u#0|)) (and (=> (= (ControlFlow 0 24) (- 0 35)) (<= (LitInt 6) |newtype$check#2@0|)) (=> (<= (LitInt 6) |newtype$check#2@0|) (=> (= this.x0@0 (+ 80 |u#0|)) (and (=> (= (ControlFlow 0 24) (- 0 34)) (<= 0 (_module.InstanceInit.N this@@2))) (=> (<= 0 (_module.InstanceInit.N this@@2)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TReal))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (_module.InstanceInit.N this@@2)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 24) (- 0 33)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 24) (- 0 32)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 24) (- 0 31)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 8))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 8)))) (=> (= |$rhs#0@0| (LitReal 2.7)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 8)) ($Box realType (real_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 24) (- 0 30)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 24) (- 0 29)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0))) (=> (and (= this.r@0 (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (LitInt 8)))))) (= |newtype$check#3@0| (LitInt 77))) (and (=> (= (ControlFlow 0 24) (- 0 28)) (<= (LitInt 6) |newtype$check#3@0|)) (=> (<= (LitInt 6) |newtype$check#3@0|) (=> (= |newtype$check#4@0| (+ 77 (_module.InstanceInit.y3 this@@2))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (<= (LitInt 6) |newtype$check#4@0|)) (=> (<= (LitInt 6) |newtype$check#4@0|) (=> (= this.y2@0 (+ 77 (_module.InstanceInit.y3 this@@2))) (=> (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.InstanceInit?)) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) alloc)))) (= (_module.Trait.x0 this@@2) this.x0@0)) (and (= (_module.InstanceInit.y2 this@@2) this.y2@0) (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) _module.InstanceInit.r))) this.r@0))) (and (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@2)) (and ($IsHeapAnchor $Heap@2) (= |newtype$check#5@0| (LitInt 80))))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (<= (LitInt 6) |newtype$check#5@0|)) (=> (<= (LitInt 6) |newtype$check#5@0|) (=> (= |newtype$check#6@0| (+ |u#0| 80)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= (LitInt 6) |newtype$check#6@0|)) (=> (<= (LitInt 6) |newtype$check#6@0|) (and (=> (= (ControlFlow 0 24) 21) anon5_Then_correct) (=> (= (ControlFlow 0 24) 23) anon5_Else_correct))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 6) |u#0|)) (=> (and (and (and (and ($Is refType |arr#0| (Tclass._System.array TReal)) ($IsAlloc refType |arr#0| (Tclass._System.array TReal) $Heap)) true) (= 2 $FunctionContextHeight)) (and (<= (LitInt 10) |u#0|) (= (ControlFlow 0 37) 24))) anon0_correct))))
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
