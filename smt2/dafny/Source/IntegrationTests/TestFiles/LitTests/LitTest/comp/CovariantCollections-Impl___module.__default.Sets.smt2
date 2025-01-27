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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Number? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Number () T@U)
(declare-fun tytagFamily$Integer () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.Number (T@U) Bool)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Number? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun Tclass._module.Integer () T@U)
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
(declare-fun |lambda#7| (T@U T@U Int Int) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun _module.Number.value (T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Number Tagclass._module.Integer Tagclass._module.Number? Tagclass._module.Integer? tytagFamily$object tytagFamily$Number tytagFamily$Integer)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |772|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |773|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |777|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |778|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |771|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |787|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (implements$_module.Number Tclass._module.Integer?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |768|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |780|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Integer?)  (or (= $o null) (= (dtype $o) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1473|
 :pattern ( ($Is refType $o Tclass._module.Integer?))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |781|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |783|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |786|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Number? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsAllocBox bx Tclass._module.Number? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Number? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@3))
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
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1466|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |761|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| Int) (|l#3| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0|) (= (Mod (_module.Number.value ($Unbox refType |$y#0|)) |l#2|) |l#3|))))
 :qid |CovariantCollectionsdfy.13:7|
 :skolemid |1528|
 :pattern ( (MapType0Select BoxType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) |$y#0|))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@7 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.Number?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_module.Number.value $o@@3)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1468|
 :pattern ( (_module.Number.value $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@4)) (not (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |794|
 :pattern ( (|Set#IsMember| a@@9 o@@4))
 :pattern ( (|Set#IsMember| b@@6 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |795|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |796|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |689|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |690|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((s T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v@@0)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |867|
 :pattern ( (|Seq#Build| s v@@0))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |754|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |753|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Number) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@6 Tclass._module.Number))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( ($IsBox bx@@7 Tclass._module.Integer))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Number?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Number?)))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( ($IsBox bx@@8 Tclass._module.Number?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( ($IsBox bx@@9 Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Number)  (and ($Is refType |c#0@@3| Tclass._module.Number?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1471|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Number))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Number?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Integer)  (and ($Is refType |c#0@@4| Tclass._module.Integer?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Integer?))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5)  (or (|Set#IsMember| a@@10 o@@5) (|Set#IsMember| b@@7 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |776|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |779|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.Number? $heap) ($IsAlloc refType $o@@4 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Number? $heap))
)))
(assert (forall (($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.Integer? $heap@@0) ($IsAlloc refType $o@@5 Tclass._module.Number? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Integer? $heap@@0))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |760|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |670|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |864|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@11) ($IsAllocBox bx@@11 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |710|
 :pattern ( (|Set#IsMember| v@@4 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |711|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Number?)) ($Is intType (int_2_U (_module.Number.value $o@@7)) TInt))
 :qid |unknown.0:0|
 :skolemid |1467|
 :pattern ( (_module.Number.value $o@@7))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |782|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)) (|Set#Intersection| a@@14 b@@11))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |784|
 :pattern ( (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |664|
 :pattern ( (|char#FromInt| n))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@8) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1527|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@8 $f))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (Mod x@@9 y@@3) (mod x@@9 y@@3))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |983|
 :pattern ( (Mod x@@9 y@@3))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |866|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |675|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass._module.Number?) ($Is refType $o@@9 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@9 Tclass._module.Number?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Number?) ($IsBox bx@@13 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( ($IsBox bx@@13 Tclass._module.Number?))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass._module.Integer?) ($Is refType $o@@10 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($Is refType $o@@10 Tclass._module.Integer?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Integer?) ($IsBox bx@@14 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsBox bx@@14 Tclass._module.Integer?))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |665|
 :pattern ( (|char#ToInt| ch))
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
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.Number?)  (or (= $o@@11 null) (implements$_module.Number (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($Is refType $o@@11 Tclass._module.Number?))
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
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |704|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@4))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |683|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |comprehension#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |prefix##3@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun $Heap@7 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun |prefix##4@0| () T@U)
(declare-fun |S##4@0| () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |prefix##5@0| () T@U)
(declare-fun |S##5@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |prefix##6@0| () T@U)
(declare-fun |S##6@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |prefix##7@0| () T@U)
(declare-fun |S##7@0| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |prefix##8@0| () T@U)
(declare-fun |S##8@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |prefix##9@0| () T@U)
(declare-fun |S##9@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |n#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |value##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |value##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |value##2@0| () Int)
(declare-fun call2formal@this@@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0@@1 () T@U)
(declare-fun |value##3@0| () Int)
(declare-fun call2formal@this@@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call2formal@this@0@@2 () T@U)
(declare-fun |prefix##0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |prefix##1@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |prefix##2@0| () T@U)
(declare-fun |defass#twelve#0| () Bool)
(declare-fun |twelve#0| () T@U)
(declare-fun |defass#seventeen#0| () Bool)
(declare-fun |seventeen#0| () T@U)
(declare-fun |defass#fortyTwo#0| () Bool)
(declare-fun |fortyTwo#0| () T@U)
(declare-fun |defass#eightyTwo#0| () Bool)
(declare-fun |eightyTwo#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun |comprehension#0| () T@U)
(assert  (and (= (Ctor SeqType) 8) (= (Ctor charType) 9)))
(set-info :boogie-vc-id Impl$$_module.__default.Sets)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon5_correct  (=> (and (= |comprehension#0@0| (|Set#FromBoogieMap| (|lambda#7| Tclass._module.Number |b#0@0| (LitInt 2) (LitInt 0)))) (= |prefix##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@12)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (and (= |prefix##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))) (= |S##4@0| (|Set#Union| |a#0@0| |b#0@0|))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)))) (=> (and (and (and (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@13)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@13))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= |prefix##5@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |S##5@0| (|Set#Union| |b#0@0| |c#0@0|)))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@14)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@14))
)) ($HeapSucc $Heap@8 $Heap@9)))) (and (and (and (= |prefix##6@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))) (= |S##6@0| (|Set#Intersection| |a#0@0| |b#0@0|))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))) (and (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@15)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@15))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (= |prefix##7@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |S##7@0| (|Set#Intersection| |b#0@0| |c#0@0|)))))) (and (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@16)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@16))
)) ($HeapSucc $Heap@10 $Heap@11))) (and (and (= |prefix##8@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))) (= |S##8@0| (|Set#Difference| |a#0@0| |b#0@0|))) (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)))) (and (and (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@17)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@17))
)) ($HeapSucc $Heap@11 $Heap@12)) (and (= |prefix##9@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |S##9@0| (|Set#Difference| |b#0@0| |c#0@0|)))) (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@18)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@18))
)) ($HeapSucc $Heap@12 $Heap@13)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true))))))))
(let ((anon8_Else_correct  (=> (and (not (and (|Set#IsMember| |b#0@0| ($Box refType |n#0@0|)) (= (Mod (_module.Number.value |n#0@0|) (LitInt 2)) (LitInt 0)))) (= (ControlFlow 0 7) 2)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (and (|Set#IsMember| |b#0@0| ($Box refType |n#0@0|)) (= (Mod (_module.Number.value |n#0@0|) (LitInt 2)) (LitInt 0))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon7_Else_correct  (=> (not (|Set#IsMember| |b#0@0| ($Box refType |n#0@0|))) (and (=> (= (ControlFlow 0 11) 6) anon8_Then_correct) (=> (= (ControlFlow 0 11) 7) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (|Set#IsMember| |b#0@0| ($Box refType |n#0@0|)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (not (= |n#0@0| null)) (not true))) (=> (or (not (= |n#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 8) 6) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))))))
(let ((anon6_Then_correct  (=> (and ($Is refType |n#0@0| Tclass._module.Number) ($IsAlloc refType |n#0@0| Tclass._module.Number $Heap@6)) (and (=> (= (ControlFlow 0 12) 8) anon7_Then_correct) (=> (= (ControlFlow 0 12) 11) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (not (and ($Is refType |n#0@0| Tclass._module.Number) ($IsAlloc refType |n#0@0| Tclass._module.Number $Heap@6))) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |value##0@0| (LitInt 12))) (=> (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Integer) ($IsAlloc refType call2formal@this Tclass._module.Integer $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0 Tclass._module.Integer $Heap@0))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@19)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19))
))))) (=> (and (and (and (and (and ($HeapSucc $Heap $Heap@0) (= |value##1@0| (LitInt 17))) (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@0 Tclass._module.Integer $Heap)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.Integer $Heap@1))))) (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc)))) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |value##2@0| (LitInt 42)))) (and (and (or (not (= call2formal@this@@1 null)) (not true)) (and ($Is refType call2formal@this@@1 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@1 Tclass._module.Integer $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))))) (and (and (and (and (or (not (= call2formal@this@0@@1 null)) (not true)) (and ($Is refType call2formal@this@0@@1 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@1 Tclass._module.Integer $Heap@2))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@1) alloc)))) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@21))
)))) (and (and ($HeapSucc $Heap@1 $Heap@2) (= |value##3@0| (LitInt 82))) (and (or (not (= call2formal@this@@2 null)) (not true)) (and ($Is refType call2formal@this@@2 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@2 Tclass._module.Integer $Heap))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (or (not (= call2formal@this@0@@2 null)) (not true)) (and ($Is refType call2formal@this@0@@2 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@2 Tclass._module.Integer $Heap@3)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@2) alloc)))) (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@22))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |a#0@0| (Lit SetType |Set#Empty|))))))) (and (=> (= (ControlFlow 0 13) (- 0 19)) true) (and (=> (= (ControlFlow 0 13) (- 0 18)) true) (and (=> (= (ControlFlow 0 13) (- 0 17)) true) (and (=> (= (ControlFlow 0 13) (- 0 16)) true) (=> (= |b#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call2formal@this@0@@0)) ($Box refType call2formal@this@0@@2)) ($Box refType call2formal@this@0@@0)) ($Box refType call2formal@this@0@@2))) (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (and (=> (= (ControlFlow 0 13) (- 0 14)) true) (=> (and (= |c#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call2formal@this@0)) ($Box refType call2formal@this@0@@0))) (= |prefix##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@23)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@23))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |prefix##1@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@24)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@24))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |prefix##2@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@25)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@25))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 13) 12) anon6_Then_correct) (=> (= (ControlFlow 0 13) 5) anon6_Else_correct)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#twelve#0| (and ($Is refType |twelve#0| Tclass._module.Integer) ($IsAlloc refType |twelve#0| Tclass._module.Integer $Heap))) true) (and (=> |defass#seventeen#0| (and ($Is refType |seventeen#0| Tclass._module.Integer) ($IsAlloc refType |seventeen#0| Tclass._module.Integer $Heap))) true)) (=> (and (and (and (=> |defass#fortyTwo#0| (and ($Is refType |fortyTwo#0| Tclass._module.Integer) ($IsAlloc refType |fortyTwo#0| Tclass._module.Integer $Heap))) true) (and (=> |defass#eightyTwo#0| (and ($Is refType |eightyTwo#0| Tclass._module.Integer) ($IsAlloc refType |eightyTwo#0| Tclass._module.Integer $Heap))) true)) (and (and ($Is SetType |a#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |a#0| (TSet Tclass._module.Number) $Heap)) true)) (=> (and (and (and (and ($Is SetType |b#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |b#0| (TSet Tclass._module.Number) $Heap)) true) (and (and ($Is SetType |c#0@@5| (TSet Tclass._module.Integer)) ($IsAlloc SetType |c#0@@5| (TSet Tclass._module.Integer) $Heap)) true)) (and (and (and ($Is SetType |comprehension#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |comprehension#0| (TSet Tclass._module.Number) $Heap)) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 20) 13)))) anon0_correct))))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
