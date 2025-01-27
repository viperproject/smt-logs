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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.int8 () T@U)
(declare-fun Tagclass._module.int32 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$int8 () T@U)
(declare-fun tytagFamily$int32 () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._module.int32 () T@U)
(declare-fun Tclass._module.int8 () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun q@Real (Int) Real)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array Tagclass._module.int8 Tagclass._module.int32 tytagFamily$nat tytagFamily$array tytagFamily$int8 tytagFamily$int32)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |5785|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |6015|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |5786|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |6001|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|c1#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |c1#0| Tclass._module.int32 $h@@0)
 :qid |unknown.0:0|
 :skolemid |6208|
 :pattern ( ($IsAlloc intType |c1#0| Tclass._module.int32 $h@@0))
)))
(assert (forall ((|c1#0@@0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |c1#0@@0| Tclass._module.int8 $h@@1)
 :qid |unknown.0:0|
 :skolemid |6213|
 :pattern ( ($IsAlloc intType |c1#0@@0| Tclass._module.int8 $h@@1))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |5784|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |6021|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |5781|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6014|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |5774|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |5775|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Real) ) (! (= (q@Int x@@5) (to_int x@@5))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |5769|
 :pattern ( (q@Int x@@5))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5673|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 Real) ) (! (= (LitReal x@@7) x@@7)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |5675|
 :pattern ( (LitReal x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5671|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5682|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5702|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5703|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |6000|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6020|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5695|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |5767|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |5766|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |6008|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |6017|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |5999|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.int8) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.int8)))
 :qid |unknown.0:0|
 :skolemid |6205|
 :pattern ( ($IsBox bx@@2 Tclass._module.int8))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.int32) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.int32)))
 :qid |unknown.0:0|
 :skolemid |6206|
 :pattern ( ($IsBox bx@@3 Tclass._module.int32))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@1 null) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |6013|
 :pattern ( ($Is refType $o@@1 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((x@@10 Int) (y@@0 Int) ) (! (= (Div x@@10 y@@0) (div x@@10 y@@0))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |5995|
 :pattern ( (Div x@@10 y@@0))
)))
(assert (forall ((x@@11 Int) ) (! (= (q@Real x@@11) (to_real x@@11))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |5770|
 :pattern ( (q@Real x@@11))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |5773|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5683|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5694|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array.Length o@@2))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |5768|
 :pattern ( (_System.array.Length o@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5723|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5724|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |5657|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |5658|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((i Int) ) (! (= (q@Int (q@Real i)) i)
 :qid |DafnyPreludebpl.580:15|
 :skolemid |5771|
 :pattern ( (q@Int (q@Real i)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |6009|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |6018|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@12)) x@@12)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5681|
 :pattern ( ($Box T@@4 x@@12))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@2)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |6016|
 :pattern ( (_System.array.Length $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((|c0#0| T@U) ) (! (= ($Is intType |c0#0| Tclass._module.int32) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |6207|
 :pattern ( ($Is intType |c0#0| Tclass._module.int32))
)))
(assert (forall ((|c0#0@@0| T@U) ) (! (= ($Is intType |c0#0@@0| Tclass._module.int8) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |6212|
 :pattern ( ($Is intType |c0#0@@0| Tclass._module.int8))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6335|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@13 Int) (y@@1 Int) ) (! (= (Mul x@@13 y@@1) (* x@@13 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |5994|
 :pattern ( (Mul x@@13 y@@1))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |5688|
 :pattern ( ($IsBox bx@@6 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array? _System.array$arg@@9))))
 :qid |unknown.0:0|
 :skolemid |6010|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |6019|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@14 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@14))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@14))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |5772|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@14)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.int8) Tagclass._module.int8))
(assert (= (TagFamily Tclass._module.int8) tytagFamily$int8))
(assert (= (Tag Tclass._module.int32) Tagclass._module.int32))
(assert (= (TagFamily Tclass._module.int32) tytagFamily$int32))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5674|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@16))) (Lit BoxType ($Box realType (real_2_U x@@16))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |5676|
 :pattern ( ($Box realType (real_2_U (LitReal x@@16))))
)))
(assert (forall ((x@@17 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@17)) (Lit BoxType ($Box T@@5 x@@17)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5672|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@17)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5717|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5696|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0@0| () Real)
(declare-fun |floored#0_0@0| () Int)
(declare-fun |x#0@2| () Real)
(declare-fun |rounded#0_0@0| () Int)
(declare-fun |r1#0@0| () Real)
(declare-fun |newtype$check#6@0| () Real)
(declare-fun |newtype$check#7@0| () Real)
(declare-fun |z#0@1| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |di#0@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |newtype$check#16@0| () Real)
(declare-fun |y#0@1| () Real)
(declare-fun |newtype$check#17@0| () Real)
(declare-fun |newtype$check#18@0| () Real)
(declare-fun |newtype$check#19@0| () Real)
(declare-fun |newtype$check#20@0| () Real)
(declare-fun |newtype$check#21@0| () Real)
(declare-fun |dr#0@0| () Real)
(declare-fun |newtype$check#22@0| () Real)
(declare-fun |newtype$check#23@0| () Real)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@0| () T@U)
(declare-fun |newtype$check#0@0| () Real)
(declare-fun |x#0@1| () Real)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |s#0@1| () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |s#0@2| () T@U)
(declare-fun |newtype$check#4@0| () Real)
(declare-fun |i1#0@0| () Int)
(declare-fun |newtype$check#5@0| () Real)
(declare-fun |k8#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |i1#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (= |y#0@0| (LitReal 0.3)) (= |floored#0_0@0| (+ (q@Int |x#0@2|) (q@Int |x#0@2|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |floored#0_0@0| (LitInt (+ 5 5)))) (=> (= |floored#0_0@0| (LitInt (+ 5 5))) (=> (and (= |rounded#0_0@0| (q@Int (+ |x#0@2| 0.5))) (= (ControlFlow 0 2) (- 0 1))) (= |rounded#0_0@0| (LitInt 6))))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 5) (- 0 16)) (=> (= |y#0@0| (LitReal 0.0)) (= |r1#0@0| (LitReal 10.6)))) (=> (=> (= |y#0@0| (LitReal 0.0)) (= |r1#0@0| (LitReal 10.6))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (= |x#0@2| |x#0@2|)) (=> (= |x#0@2| |x#0@2|) (=> (and (= |newtype$check#6@0| (LitReal 2.0)) (= |newtype$check#7@0| (* 2.0 |x#0@2|))) (and (=> (= (ControlFlow 0 5) (- 0 14)) (= (* 2.0 |x#0@2|) (* 2.0 |x#0@2|))) (=> (= (* 2.0 |x#0@2|) (* 2.0 |x#0@2|)) (and (=> (= (ControlFlow 0 5) (- 0 13)) (= (q@Real |z#0@1|) (q@Real |z#0@1|))) (=> (= (q@Real |z#0@1|) (q@Real |z#0@1|)) (=> (and (= |newtype$check#8@0| (LitInt 2)) (= |newtype$check#9@0| (Mul (LitInt 2) |z#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (= (Mul (LitInt 2) |z#0@1|) (Mul (LitInt 2) |z#0@1|))) (=> (= (Mul (LitInt 2) |z#0@1|) (Mul (LitInt 2) |z#0@1|)) (=> (= |newtype$check#10@0| (LitInt 2)) (and (=> (= (ControlFlow 0 5) (- 0 11)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (and (= |newtype$check#11@0| (Div |z#0@1| (LitInt 2))) (= |newtype$check#12@0| (LitInt 24))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (not (= |z#0@1| 0)) (not true))) (=> (or (not (= |z#0@1| 0)) (not true)) (=> (and (and (= |newtype$check#13@0| (Div 24 |z#0@1|)) (= |newtype$check#14@0| (+ (Div |z#0@1| (LitInt 2)) (Div 24 |z#0@1|)))) (and (= |di#0@0| (+ (Div |z#0@1| (LitInt 2)) (Div 24 |z#0@1|))) (= |newtype$check#15@0| (LitInt 8)))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (= |di#0@0| (LitInt 8))) (=> (= |di#0@0| (LitInt 8)) (=> (= |newtype$check#16@0| (LitReal 60.0)) (=> (and (= |y#0@1| (LitReal 60.0)) (= |newtype$check#17@0| (LitReal 2.0))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (not (= (LitReal 2.0) 0.0)) (not true))) (=> (or (not (= (LitReal 2.0) 0.0)) (not true)) (=> (and (= |newtype$check#18@0| (/ |y#0@1| 2.0)) (= |newtype$check#19@0| (LitReal 120.0))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= |y#0@1| 0.0)) (not true))) (=> (or (not (= |y#0@1| 0.0)) (not true)) (=> (and (and (= |newtype$check#20@0| (/ 120.0 |y#0@1|)) (= |newtype$check#21@0| (+ (/ |y#0@1| 2.0) (/ 120.0 |y#0@1|)))) (and (= |dr#0@0| (+ (/ |y#0@1| 2.0) (/ 120.0 |y#0@1|))) (= |newtype$check#22@0| (LitReal 32.0)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= |dr#0@0| (LitReal 32.0))) (=> (= |dr#0@0| (LitReal 32.0)) (=> (= |newtype$check#23@0| (LitReal 0.3)) (and (=> (= (ControlFlow 0 5) 2) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct))))))))))))))))))))))))))))))))))))
(let ((anon5_Else_correct  (=> (and (or (not (= |y#0@0| (LitReal 0.0))) (not true)) (= (ControlFlow 0 18) 5)) anon2_correct)))
(let ((anon5_Then_correct  (=> (and (= |y#0@0| (LitReal 0.0)) (= (ControlFlow 0 17) 5)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 19) (- 0 22)) (<= 0 (LitInt 100))) (=> (<= 0 (LitInt 100)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.int8))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 100)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (=> (and (and (and (and ($Is SetType |s#0@0| (TSet Tclass._module.int32)) ($IsAlloc SetType |s#0@0| (TSet Tclass._module.int32) $Heap@0)) (and (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true))))) (and (and (U_2_bool (Lit boolType (bool_2_U true))) (= |newtype$check#0@0| (LitReal 5.3))) (and (= |x#0@1| (LitReal 5.3)) (= |newtype$check#1@0| (LitInt 12))))) (and (and (and (= |z#0@1| (LitInt 12)) (= |s#0@1| (Lit SetType |Set#Empty|))) (and (= |newtype$check#2@0| (LitInt 40)) (= |newtype$check#3@0| (LitInt 20)))) (and (and (= |s#0@2| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 40)))) ($Box intType (int_2_U (LitInt 20)))))) (= |newtype$check#4@0| (+ |x#0@1| |y#0@0|))) (and (= |x#0@2| (+ |x#0@1| |y#0@0|)) (= |r1#0@0| (* 2.0 |x#0@2|)))))) (and (=> (= (ControlFlow 0 19) (- 0 21)) ($Is intType (int_2_U (Mul (LitInt 2) |z#0@1|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (Mul (LitInt 2) |z#0@1|)) Tclass._System.nat) (=> (= |i1#0@0| (Mul (LitInt 2) |z#0@1|)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= |i1#0@0| (LitInt 24))) (=> (= |i1#0@0| (LitInt 24)) (=> (= |newtype$check#5@0| (LitReal 0.0)) (and (=> (= (ControlFlow 0 19) 17) anon5_Then_correct) (=> (= (ControlFlow 0 19) 18) anon5_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |k8#0| (Tclass._System.array Tclass._module.int8)) ($IsAlloc refType |k8#0| (Tclass._System.array Tclass._module.int8) $Heap)) true) (and (and ($Is SetType |s#0| (TSet Tclass._module.int32)) ($IsAlloc SetType |s#0| (TSet Tclass._module.int32) $Heap)) true)) (=> (and (and (and (and (U_2_bool (Lit boolType (bool_2_U true))) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true)) (and (and (U_2_bool (Lit boolType (bool_2_U true))) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true))) (and (and (and (<= (LitInt 0) |i1#0|) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true)) (and (and (U_2_bool (Lit boolType (bool_2_U true))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 23) 19))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
