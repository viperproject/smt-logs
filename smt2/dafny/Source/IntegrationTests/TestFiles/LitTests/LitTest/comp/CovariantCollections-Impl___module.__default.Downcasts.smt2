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
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Number? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.DowncastFunction (T@U T@U) T@U)
(declare-fun |_module.__default.DowncastFunction#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Integer () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.__default.FId (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |_module.__default.FId#canCall| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun implements$_module.Number (T@U) Bool)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Number? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
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
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun _module.__default.TailRecursiveFunction (T@U Int Int T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.TailRecursiveFunction#canCall| (Int Int T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _module.__default.DowncastF (T@U) T@U)
(declare-fun |_module.__default.DowncastF#canCall| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TInt TagInt TagSet TagMultiSet TagSeq TagMap alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Number Tagclass._module.Integer Tagclass._module.Number? Tagclass._module.Integer? tytagFamily$nat tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$Number tytagFamily$Integer)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |772|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.DowncastFunction#canCall| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is refType |a#0| Tclass._module.Integer) ($Is refType |b#0| Tclass._module.Integer)))) (= (_module.__default.DowncastFunction |a#0| |b#0|) (let ((|m#0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |a#0|)) ($Box refType |b#0|))))
(let ((|v#0| |m#0|))
|v#0|))))
 :qid |CovariantCollectionsdfy.371:27|
 :skolemid |1408|
 :pattern ( (_module.__default.DowncastFunction |a#0| |b#0|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |773|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.FId$T T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.FId#canCall| _module._default.FId$T (Lit SetType |s#0|)) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0| (TSet _module._default.FId$T)))) (= (_module.__default.FId _module._default.FId$T (Lit SetType |s#0|)) (Lit SetType |s#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1425|
 :pattern ( (_module.__default.FId _module._default.FId$T (Lit SetType |s#0|)))
))))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |771|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (implements$_module.Number Tclass._module.Integer?))
(assert (= (Ctor DatatypeTypeType) 5))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |768|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 6))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |695|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Integer?)  (or (= $o null) (= (dtype $o) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1473|
 :pattern ( ($Is refType $o Tclass._module.Integer?))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Number? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsAllocBox bx Tclass._module.Number? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Number? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@5)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@5))
)))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1466|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.DowncastFunction#canCall| |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is refType |a#0@@0| Tclass._module.Integer) ($Is refType |b#0@@0| Tclass._module.Integer)))) ($Is SetType (_module.__default.DowncastFunction |a#0@@0| |b#0@@0|) (TSet Tclass._module.Integer)))
 :qid |CovariantCollectionsdfy.371:27|
 :skolemid |1405|
 :pattern ( (_module.__default.DowncastFunction |a#0@@0| |b#0@@0|))
))))
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
(assert (= (Ctor SeqType) 10))
(assert (forall ((s T@U) (bx@@1 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@1 t)) ($Is SeqType (|Seq#Build| s bx@@1) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |901|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@1) (TSeq t)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@8) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@8))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |882|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |883|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@2 T@U) (x@@8 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@8 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@8) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |838|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@8) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1093|
)))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |689|
 :pattern ( (|Set#IsMember| v@@0 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |690|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((a@@3 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@9)) (+ (|MultiSet#Card| a@@3) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |839|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@9)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.FId$T@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.FId#canCall| _module._default.FId$T@@0 |s#0@@0|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@0| (TSet _module._default.FId$T@@0)))) ($Is SetType (_module.__default.FId _module._default.FId$T@@0 |s#0@@0|) (TSet _module._default.FId$T@@0)))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( (_module.__default.FId _module._default.FId$T@@0 |s#0@@0|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((s@@0 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@1)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |867|
 :pattern ( (|Seq#Build| s@@0 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0) ($IsAlloc T@@1 v@@2 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@1 h@@1) ($IsAllocBox bx@@3 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |754|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@2) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |753|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|x#0@@1| Int) (|u#0| Int) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.TailRecursiveFunction#canCall| (LitInt |x#0@@1|) (LitInt |u#0|) (Lit SetType |s#0@@1|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@1|) ($Is SetType |s#0@@1| (TSet Tclass._module.Integer))))) (and (let ((|n#1| (Lit SetType |s#0@@1|)))
 (=> (or (not (= (LitInt |x#0@@1|) (LitInt 0))) (not true)) (|_module.__default.TailRecursiveFunction#canCall| (LitInt (- |x#0@@1| 1)) (LitInt (Mul (LitInt 100) (LitInt |u#0|))) |n#1|))) (= (_module.__default.TailRecursiveFunction ($LS $ly) (LitInt |x#0@@1|) (LitInt |u#0|) (Lit SetType |s#0@@1|)) (let ((|n#1@@0| (Lit SetType |s#0@@1|)))
(ite (= (LitInt |x#0@@1|) (LitInt 0)) 16 (_module.__default.TailRecursiveFunction ($LS $ly) (LitInt (- |x#0@@1| 1)) (LitInt (Mul (LitInt 100) (LitInt |u#0|))) |n#1@@0|))))))
 :qid |CovariantCollectionsdfy.408:27|
 :weight 3
 :skolemid |1441|
 :pattern ( (_module.__default.TailRecursiveFunction ($LS $ly) (LitInt |x#0@@1|) (LitInt |u#0|) (Lit SetType |s#0@@1|)))
))))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsBox bx@@4 Tclass._System.nat))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Number) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@7 Tclass._module.Number))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( ($IsBox bx@@8 Tclass._module.Integer))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Number?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Number?)))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( ($IsBox bx@@9 Tclass._module.Number?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( ($IsBox bx@@10 Tclass._module.Integer?))
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
(assert (forall ((s@@1 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@4) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |868|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@4) i))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |940|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |941|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |942|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass._module.Number? $heap) ($IsAlloc refType $o@@3 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Number? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.Integer? $heap@@0) ($IsAlloc refType $o@@4 Tclass._module.Number? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Integer? $heap@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.DowncastF#canCall| |s#0@@2|) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0@@2| (TSet Tclass._module.Integer)))) (= (_module.__default.DowncastF |s#0@@2|) |s#0@@2|))
 :qid |CovariantCollectionsdfy.377:20|
 :skolemid |1413|
 :pattern ( (_module.__default.DowncastF |s#0@@2|))
))))
(assert (forall ((a@@4 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@4 b) (= a@@4 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |793|
 :pattern ( (|Set#Equal| a@@4 b))
)))
(assert (forall ((a@@5 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@5 b@@0) (= a@@5 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |852|
 :pattern ( (|MultiSet#Equal| a@@5 b@@0))
)))
(assert (forall ((a@@6 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@6 b@@1) (= a@@6 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |884|
 :pattern ( (|Seq#Equal| a@@6 b@@1))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |943|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@5 (TMultiSet t0@@2)) (forall ((bx@@11 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@11)) ($IsBox bx@@11 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |693|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@11))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |694|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|s#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.DowncastF#canCall| |s#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |s#0@@3| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s#0@@3| (TSet Tclass._module.Integer) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.__default.DowncastF |s#0@@3|) (TSet Tclass._module.Number) $Heap))
 :qid |CovariantCollectionsdfy.377:10|
 :skolemid |1411|
 :pattern ( ($IsAlloc SetType (_module.__default.DowncastF |s#0@@3|) (TSet Tclass._module.Number) $Heap))
))))
(assert (forall ((a@@7 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@7 c)) (not true)) (=> (and ($HeapSucc a@@7 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@7 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |760|
 :pattern ( ($HeapSucc a@@7 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TInt) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |670|
 :pattern ( ($IsBox bx@@12 TInt))
)))
(assert (forall ((v@@6 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@3) ($Is T@@3 v@@6 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@3))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@13 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@13)) (<= (|MultiSet#Multiplicity| ms bx@@13) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |826|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@13))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |827|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|MultiSet#Card| s@@2))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |828|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |864|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@3) h@@3) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@14) ($IsAllocBox bx@@14 t0@@3 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |710|
 :pattern ( (|Set#IsMember| v@@7 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |711|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@3) h@@3))
)))
(assert (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |830|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@4 u@@1)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |652|
 :pattern ( (TMap t@@4 u@@1))
)))
(assert (forall ((t@@5 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |653|
 :pattern ( (TMap t@@5 u@@2))
)))
(assert (forall ((t@@6 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@6 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |654|
 :pattern ( (TMap t@@6 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((a@@8 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@10) x@@10) (+ (|MultiSet#Multiplicity| a@@8 x@@10) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |836|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@10))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@4) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@0) t0@@4 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |716|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |717|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@4) h@@4))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |644|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |645|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |648|
 :pattern ( (TMultiSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TMultiSet t@@10)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |649|
 :pattern ( (TMultiSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |650|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |651|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@11)) x@@11)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@4 x@@11))
)))
(assert (= (Ctor MapType) 11))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@0) h@@5) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@15) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15) t1@@0 h@@5) ($IsAllocBox bx@@15 t0@@5 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |718|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@15))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |719|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@0) h@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1107|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((s@@4 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@4) 0) (= s@@4 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@4) 0)) (not true)) (exists ((x@@12 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@4 x@@12))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |831|
 :pattern ( (|MultiSet#Multiplicity| s@@4 x@@12))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |832|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |928|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall (($ly@@0 T@U) (|x#0@@2| Int) (|u#0@@0| Int) (|s#0@@4| T@U) ) (! (= (_module.__default.TailRecursiveFunction ($LS $ly@@0) |x#0@@2| |u#0@@0| |s#0@@4|) (_module.__default.TailRecursiveFunction $ly@@0 |x#0@@2| |u#0@@0| |s#0@@4|))
 :qid |CovariantCollectionsdfy.408:27|
 :skolemid |1436|
 :pattern ( (_module.__default.TailRecursiveFunction ($LS $ly@@0) |x#0@@2| |u#0@@0| |s#0@@4|))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |664|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@16 T@U) (s@@5 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@16 (TMap s@@5 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@16)) bx@@16) ($Is MapType ($Unbox MapType bx@@16) (TMap s@@5 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |679|
 :pattern ( ($IsBox bx@@16 (TMap s@@5 t@@13)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@17)) bx@@17) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@17) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( ($IsBox bx@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.FId$T@@1 T@U) (|s#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.FId#canCall| _module._default.FId$T@@1 |s#0@@5|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@5| (TSet _module._default.FId$T@@1)) ($IsAlloc SetType |s#0@@5| (TSet _module._default.FId$T@@1) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.__default.FId _module._default.FId$T@@1 |s#0@@5|) (TSet _module._default.FId$T@@1) $Heap@@0))
 :qid |CovariantCollectionsdfy.389:10|
 :skolemid |1422|
 :pattern ( ($IsAlloc SetType (_module.__default.FId _module._default.FId$T@@1 |s#0@@5|) (TSet _module._default.FId$T@@1) $Heap@@0))
))))
(assert  (and (forall ((t0@@6 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@1 t2 (MapType1Store t0@@6 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1528|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |866|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.DowncastF#canCall| (Lit SetType |s#0@@6|)) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0@@6| (TSet Tclass._module.Integer)))) (= (_module.__default.DowncastF (Lit SetType |s#0@@6|)) (Lit SetType |s#0@@6|)))
 :qid |CovariantCollectionsdfy.377:20|
 :weight 3
 :skolemid |1414|
 :pattern ( (_module.__default.DowncastF (Lit SetType |s#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.DowncastF#canCall| |s#0@@7|) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0@@7| (TSet Tclass._module.Integer)))) ($Is SetType (_module.__default.DowncastF |s#0@@7|) (TSet Tclass._module.Number)))
 :qid |CovariantCollectionsdfy.377:20|
 :skolemid |1410|
 :pattern ( (_module.__default.DowncastF |s#0@@7|))
))))
(assert (forall ((x@@13 Int) (y@@1 Int) ) (! (= (Mul x@@13 y@@1) (* x@@13 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |981|
 :pattern ( (Mul x@@13 y@@1))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |916|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |917|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |918|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |919|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |927|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@11) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |925|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |926|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@11))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@12 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@12)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@12)) |u'|) v@@12))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@12)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@12)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |933|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@12)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@12)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |727|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@18 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |675|
 :pattern ( ($IsBox bx@@18 (TSet t@@14)))
)))
(assert (forall ((bx@@19 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@19 (TMultiSet t@@15)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@19)) bx@@19) ($Is MultiSetType ($Unbox MultiSetType bx@@19) (TMultiSet t@@15))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |677|
 :pattern ( ($IsBox bx@@19 (TMultiSet t@@15)))
)))
(assert (forall ((bx@@20 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@20 (TSeq t@@16)) (and (= ($Box SeqType ($Unbox SeqType bx@@20)) bx@@20) ($Is SeqType ($Unbox SeqType bx@@20) (TSeq t@@16))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |678|
 :pattern ( ($IsBox bx@@20 (TSeq t@@16)))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.Number?) ($Is refType $o@@7 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@7 Tclass._module.Number?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Number?) ($IsBox bx@@21 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( ($IsBox bx@@21 Tclass._module.Number?))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.Integer?) ($Is refType $o@@8 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($Is refType $o@@8 Tclass._module.Integer?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Integer?) ($IsBox bx@@22 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsBox bx@@22 Tclass._module.Integer?))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |665|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@13 (TMap t0@@7 t1@@2)) (forall ((bx@@23 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@23) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@23) t1@@2) ($IsBox bx@@23 t0@@7)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |698|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@23))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@23))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |699|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.FId$T@@2 T@U) (|s#0@@8| T@U) ) (!  (=> (or (|_module.__default.FId#canCall| _module._default.FId$T@@2 |s#0@@8|) (and (< 0 $FunctionContextHeight) ($Is SetType |s#0@@8| (TSet _module._default.FId$T@@2)))) (= (_module.__default.FId _module._default.FId$T@@2 |s#0@@8|) |s#0@@8|))
 :qid |unknown.0:0|
 :skolemid |1424|
 :pattern ( (_module.__default.FId _module._default.FId$T@@2 |s#0@@8|))
))))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Number?)  (or (= $o@@9 null) (implements$_module.Number (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($Is refType $o@@9 Tclass._module.Number?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.DowncastFunction#canCall| |a#0@@1| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is refType |a#0@@1| Tclass._module.Integer) ($IsAlloc refType |a#0@@1| Tclass._module.Integer $Heap@@1)) (and ($Is refType |b#0@@1| Tclass._module.Integer) ($IsAlloc refType |b#0@@1| Tclass._module.Integer $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SetType (_module.__default.DowncastFunction |a#0@@1| |b#0@@1|) (TSet Tclass._module.Integer) $Heap@@1))
 :qid |CovariantCollectionsdfy.371:10|
 :skolemid |1406|
 :pattern ( ($IsAlloc SetType (_module.__default.DowncastFunction |a#0@@1| |b#0@@1|) (TSet Tclass._module.Integer) $Heap@@1))
))))
(assert (forall ((a@@9 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@9 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@9 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |791|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |792|
 :pattern ( (|Set#Equal| a@@9 b@@3))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |1103|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |1104|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.DowncastFunction#canCall| (Lit refType |a#0@@2|) (Lit refType |b#0@@2|)) (and (< 1 $FunctionContextHeight) (and ($Is refType |a#0@@2| Tclass._module.Integer) ($Is refType |b#0@@2| Tclass._module.Integer)))) (= (_module.__default.DowncastFunction (Lit refType |a#0@@2|) (Lit refType |b#0@@2|)) (let ((|m#1| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (Lit refType |a#0@@2|))) ($Box refType (Lit refType |b#0@@2|))))))
(let ((|v#1| |m#1|))
|v#1|))))
 :qid |CovariantCollectionsdfy.371:27|
 :weight 3
 :skolemid |1409|
 :pattern ( (_module.__default.DowncastFunction (Lit refType |a#0@@2|) (Lit refType |b#0@@2|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1105|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@14 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@14))) (Lit BoxType ($Box intType (int_2_U x@@14))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |661|
 :pattern ( ($Box intType (int_2_U (LitInt x@@14))))
)))
(assert (forall ((x@@15 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@15)) (Lit BoxType ($Box T@@5 x@@15)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |659|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@15)))
)))
(assert (forall ((a@@10 T@U) (x@@16 T@U) (y@@2 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@10 y@@2)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@10 x@@16) y@@2)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |837|
 :pattern ( (|MultiSet#UnionOne| a@@10 x@@16) (|MultiSet#Multiplicity| a@@10 y@@2))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |865|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((a@@11 T@U) (x@@17 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@11 x@@17) o@@4))  (or (= o@@4 x@@17) (< 0 (|MultiSet#Multiplicity| a@@11 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |835|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@11 x@@17) o@@4))
)))
(assert (forall ((a@@12 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Equal| a@@12 b@@4) (forall ((o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| a@@12 o@@5) (|MultiSet#Multiplicity| b@@4 o@@5))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |850|
 :pattern ( (|MultiSet#Multiplicity| a@@12 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@4 o@@5))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |851|
 :pattern ( (|MultiSet#Equal| a@@12 b@@4))
)))
(assert (forall ((v@@14 T@U) (t0@@8 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MultiSetType v@@14 (TMultiSet t0@@8) h@@6) (forall ((bx@@24 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@14 bx@@24)) ($IsAllocBox bx@@24 t0@@8 h@@6))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |714|
 :pattern ( (|MultiSet#Multiplicity| v@@14 bx@@24))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |715|
 :pattern ( ($IsAlloc MultiSetType v@@14 (TMultiSet t0@@8) h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@15 T@U) ) (! ($IsAlloc intType v@@15 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |704|
 :pattern ( ($IsAlloc intType v@@15 TInt h@@7))
)))
(assert (forall ((v@@16 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |696|
 :pattern ( (|Seq#Index| v@@16 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |697|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@9)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@3 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |920|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |921|
 :pattern ( (|Map#Items| m@@11))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@3| Int) (|u#0@@1| Int) (|s#0@@9| T@U) ) (!  (=> (or (|_module.__default.TailRecursiveFunction#canCall| |x#0@@3| |u#0@@1| |s#0@@9|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@3|) ($Is SetType |s#0@@9| (TSet Tclass._module.Integer))))) (and (let ((|n#0| |s#0@@9|))
 (=> (or (not (= |x#0@@3| (LitInt 0))) (not true)) (|_module.__default.TailRecursiveFunction#canCall| (- |x#0@@3| 1) (Mul (LitInt 100) |u#0@@1|) |n#0|))) (= (_module.__default.TailRecursiveFunction ($LS $ly@@1) |x#0@@3| |u#0@@1| |s#0@@9|) (let ((|n#0@@0| |s#0@@9|))
(ite (= |x#0@@3| (LitInt 0)) 16 (_module.__default.TailRecursiveFunction $ly@@1 (- |x#0@@3| 1) (Mul (LitInt 100) |u#0@@1|) |n#0@@0|))))))
 :qid |CovariantCollectionsdfy.408:27|
 :skolemid |1440|
 :pattern ( (_module.__default.TailRecursiveFunction ($LS $ly@@1) |x#0@@3| |u#0@@1| |s#0@@9|))
))))
(assert (forall ((s@@8 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |910|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))))
)))
(assert (forall ((v@@18 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@10 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@10 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |700|
 :pattern ( ($Is MapType v@@18 (TMap t0@@10 t1@@3)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is intType v@@19 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |683|
 :pattern ( ($Is intType v@@19 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |eq#0@1| () Bool)
(declare-fun |call3formal@r0#0@0| () T@U)
(declare-fun |call4formal@m#0@0| () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |u##0@0| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@12 () T@U)
(declare-fun |eq#0@0| () Bool)
(declare-fun |s#0@2| () T@U)
(declare-fun |s''#0@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |s#0@3| () T@U)
(declare-fun |s#0@4| () T@U)
(declare-fun |call3formal@r#0| () T@U)
(declare-fun call0formal@_module._default.MId$T () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun call0formal@_module._default.MId$T@0 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |call3formal@r#0@0| () T@U)
(declare-fun |call3formal@r#0@@0| () T@U)
(declare-fun call0formal@_module._default.MId$T@@0 () T@U)
(declare-fun call0formal@_module._default.MId$T@0@@0 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call3formal@r#0@0@@0| () T@U)
(declare-fun |call3formal@r0#0| () T@U)
(declare-fun call0formal@_module._default.MId2$T () T@U)
(declare-fun |call4formal@r1#0| () T@U)
(declare-fun call0formal@_module._default.MId2$T@0 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |call3formal@r0#0@0@@0| () T@U)
(declare-fun |call4formal@r1#0@0| () T@U)
(declare-fun |call3formal@r0#0@@0| () T@U)
(declare-fun call0formal@_module._default.MId2$T@@0 () T@U)
(declare-fun |call4formal@r1#0@@0| () T@U)
(declare-fun call0formal@_module._default.MId2$T@0@@0 () T@U)
(declare-fun |call4formal@r1#0@0@@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |value##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |value##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |n#0@0| () T@U)
(declare-fun |o#0@0| () T@U)
(declare-fun |p#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |u#0@0| () T@U)
(declare-fun |v#0@0| () T@U)
(declare-fun |call4formal@m#0| () T@U)
(declare-fun call0formal@_module._default.Create$T () T@U)
(declare-fun |call5formal@n#0| () T@U)
(declare-fun |call6formal@o#0| () T@U)
(declare-fun |call7formal@p#0| () T@U)
(declare-fun call0formal@_module._default.Create$T@0 () T@U)
(declare-fun |call1formal@a#0@0| () T@U)
(declare-fun |call2formal@b#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call5formal@n#0@0| () T@U)
(declare-fun |call6formal@o#0@0| () T@U)
(declare-fun |call7formal@p#0@0| () T@U)
(declare-fun |prefix##0@0| () T@U)
(declare-fun charType () T@T)
(declare-fun $Heap@3 () T@U)
(declare-fun |prefix##1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |prefix##2@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |prefix##3@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun |s'#0@0| () T@U)
(declare-fun |call2formal@r0#0| () T@U)
(declare-fun |call3formal@r1#0| () T@U)
(declare-fun |call2formal@r0#0@0| () T@U)
(declare-fun |call3formal@r1#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |v#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |v#Z#1@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |u#Z#0@0| () T@U)
(declare-fun |s'#0@1| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0@@3| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0@@3| () T@U)
(declare-fun |m#0@@0| () T@U)
(declare-fun |n#0@@1| () T@U)
(declare-fun |o#0| () T@U)
(declare-fun |p#0| () T@U)
(declare-fun |s#0@@10| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0@@2| () T@U)
(declare-fun |v#0@@0| () T@U)
(declare-fun |s'#0| () T@U)
(declare-fun |s''#0| () T@U)
(assert (= (Ctor charType) 12))
(set-info :boogie-vc-id Impl$$_module.__default.Downcasts)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon6_correct  (=> (= |eq#0@1|  (and (|Set#Equal| |call3formal@r0#0@0| |call4formal@m#0@0|) (|Set#Equal| |call4formal@m#0@0| |call3formal@r0#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat) (=> (and (= |x##0@0| (LitInt 12)) (= |u##0@0| (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@10)))
 :qid |CovariantCollectionsdfy.401:25|
 :skolemid |1433|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@10))
))) (and ($HeapSucc $Heap@12 $Heap@13) (= (ControlFlow 0 2) (- 0 1)))) ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat))))))))
(let ((anon9_Else_correct  (=> (and (not (|Set#Equal| |call3formal@r0#0@0| |call4formal@m#0@0|)) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and (|Set#Equal| |call3formal@r0#0@0| |call4formal@m#0@0|) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon4_correct  (=> (= |eq#0@0|  (and (and (|Set#Equal| |s#0@2| |call4formal@m#0@0|) (|Set#Equal| |call4formal@m#0@0| |s#0@2|)) (|Set#Equal| |s#0@2| |s''#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 13)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and ($IsAlloc SetType |call4formal@m#0@0| (TSet Tclass._module.Integer) $Heap@8) (|_module.__default.FId#canCall| Tclass._module.Integer |call4formal@m#0@0|)) (=> (and (and (|_module.__default.FId#canCall| Tclass._module.Integer |call4formal@m#0@0|) (= |s#0@3| (_module.__default.FId Tclass._module.Integer |call4formal@m#0@0|))) (and ($IsAlloc SetType |s#0@3| (TSet Tclass._module.Number) $Heap@8) (|_module.__default.FId#canCall| Tclass._module.Number |s#0@3|))) (and (=> (= (ControlFlow 0 6) (- 0 12)) ($Is SetType (_module.__default.FId Tclass._module.Number |s#0@3|) (TSet Tclass._module.Integer))) (=> ($Is SetType (_module.__default.FId Tclass._module.Number |s#0@3|) (TSet Tclass._module.Integer)) (=> (and (|_module.__default.FId#canCall| Tclass._module.Number |s#0@3|) (= |s#0@4| (_module.__default.FId Tclass._module.Number |s#0@3|))) (and (=> (= (ControlFlow 0 6) (- 0 11)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and (and (and (and (and ($Is SetType |call3formal@r#0| (TSet call0formal@_module._default.MId$T)) ($IsAlloc SetType |call3formal@r#0| (TSet call0formal@_module._default.MId$T) $Heap@@2)) (= call0formal@_module._default.MId$T@0 Tclass._module.Integer)) (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9))) (and (and (and ($Is SetType |call3formal@r#0@0| (TSet call0formal@_module._default.MId$T@0)) ($IsAlloc SetType |call3formal@r#0@0| (TSet call0formal@_module._default.MId$T@0) $Heap@9)) (|Set#Equal| |call3formal@r#0@0| |call4formal@m#0@0|)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11)))
 :qid |CovariantCollectionsdfy.390:8|
 :skolemid |1427|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11))
)) ($HeapSucc $Heap@8 $Heap@9)))) (and (and (and (and ($Is SetType |call3formal@r#0@@0| (TSet call0formal@_module._default.MId$T@@0)) ($IsAlloc SetType |call3formal@r#0@@0| (TSet call0formal@_module._default.MId$T@@0) $Heap@@2)) (= call0formal@_module._default.MId$T@0@@0 Tclass._module.Number)) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))) (and (and (and ($Is SetType |call3formal@r#0@0@@0| (TSet call0formal@_module._default.MId$T@0@@0)) ($IsAlloc SetType |call3formal@r#0@0@@0| (TSet call0formal@_module._default.MId$T@0@@0) $Heap@10)) (|Set#Equal| |call3formal@r#0@0@@0| |call3formal@r#0@0|)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@12)))
 :qid |CovariantCollectionsdfy.390:8|
 :skolemid |1427|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@12))
)) ($HeapSucc $Heap@9 $Heap@10))))) (and (=> (= (ControlFlow 0 6) (- 0 10)) ($Is SetType |call3formal@r#0@0@@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call3formal@r#0@0@@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 6) (- 0 9)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and ($Is SetType |call3formal@r0#0| (TSet call0formal@_module._default.MId2$T)) ($IsAlloc SetType |call3formal@r0#0| (TSet call0formal@_module._default.MId2$T) $Heap@@2)) (=> (and (and (and (and (and ($Is SetType |call4formal@r1#0| (TSet call0formal@_module._default.MId2$T)) ($IsAlloc SetType |call4formal@r1#0| (TSet call0formal@_module._default.MId2$T) $Heap@@2)) (= call0formal@_module._default.MId2$T@0 Tclass._module.Integer)) (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and ($Is SetType |call3formal@r0#0@0@@0| (TSet call0formal@_module._default.MId2$T@0)) ($IsAlloc SetType |call3formal@r0#0@0@@0| (TSet call0formal@_module._default.MId2$T@0) $Heap@11)))) (and (and (and ($Is SetType |call4formal@r1#0@0| (TSet call0formal@_module._default.MId2$T@0)) ($IsAlloc SetType |call4formal@r1#0@0| (TSet call0formal@_module._default.MId2$T@0) $Heap@11)) (and (|Set#Equal| |call3formal@r0#0@0@@0| |call4formal@r1#0@0|) (|Set#Equal| |call4formal@r1#0@0| |call4formal@m#0@0|))) (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@13)))
 :qid |CovariantCollectionsdfy.395:8|
 :skolemid |1430|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@13))
)) ($HeapSucc $Heap@10 $Heap@11)) (and ($Is SetType |call3formal@r0#0@@0| (TSet call0formal@_module._default.MId2$T@@0)) ($IsAlloc SetType |call3formal@r0#0@@0| (TSet call0formal@_module._default.MId2$T@@0) $Heap@@2))))) (and (and (and (and ($Is SetType |call4formal@r1#0@@0| (TSet call0formal@_module._default.MId2$T@@0)) ($IsAlloc SetType |call4formal@r1#0@@0| (TSet call0formal@_module._default.MId2$T@@0) $Heap@@2)) (= call0formal@_module._default.MId2$T@0@@0 Tclass._module.Number)) (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12))) (and (and (and ($Is SetType |call3formal@r0#0@0| (TSet call0formal@_module._default.MId2$T@0@@0)) ($IsAlloc SetType |call3formal@r0#0@0| (TSet call0formal@_module._default.MId2$T@0@@0) $Heap@12)) (and ($Is SetType |call4formal@r1#0@0@@0| (TSet call0formal@_module._default.MId2$T@0@@0)) ($IsAlloc SetType |call4formal@r1#0@0@@0| (TSet call0formal@_module._default.MId2$T@0@@0) $Heap@12))) (and (and (|Set#Equal| |call3formal@r0#0@0| |call4formal@r1#0@0@@0|) (|Set#Equal| |call4formal@r1#0@0@@0| |call4formal@m#0@0|)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@14)))
 :qid |CovariantCollectionsdfy.395:8|
 :skolemid |1430|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@14))
)) ($HeapSucc $Heap@11 $Heap@12)))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($Is SetType |call3formal@r0#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call3formal@r0#0@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is SetType |call4formal@r1#0@0@@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@r1#0@0@@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 6) 4) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct)))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (and (not (and (|Set#Equal| |s#0@2| |call4formal@m#0@0|) (|Set#Equal| |call4formal@m#0@0| |s#0@2|))) (= (ControlFlow 0 15) 6)) anon4_correct)))
(let ((anon8_Then_correct  (=> (and (and (|Set#Equal| |s#0@2| |call4formal@m#0@0|) (|Set#Equal| |call4formal@m#0@0| |s#0@2|)) (= (ControlFlow 0 14) 6)) anon4_correct)))
(let ((anon7_Else_correct  (=> (not (|Set#Equal| |s#0@2| |call4formal@m#0@0|)) (and (=> (= (ControlFlow 0 17) 14) anon8_Then_correct) (=> (= (ControlFlow 0 17) 15) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (|Set#Equal| |s#0@2| |call4formal@m#0@0|) (and (=> (= (ControlFlow 0 16) 14) anon8_Then_correct) (=> (= (ControlFlow 0 16) 15) anon8_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (= |value##0@0| (LitInt 20))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Integer) ($IsAlloc refType call2formal@this Tclass._module.Integer $Heap@@2)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0 Tclass._module.Integer $Heap@0))))) (=> (and (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 call2formal@this@0) alloc)))) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@15)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15))
))) (and ($HeapSucc $Heap@@2 $Heap@0) (= |value##1@0| (LitInt 30)))) (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@0 Tclass._module.Integer $Heap@@2))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.Integer $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc))))) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@16))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (and (and (and ($Is SetType |m#0@0| (TSet Tclass._module.Number)) ($IsAlloc SetType |m#0@0| (TSet Tclass._module.Number) $Heap@1)) (and ($Is MultiSetType |n#0@0| (TMultiSet Tclass._module.Number)) ($IsAlloc MultiSetType |n#0@0| (TMultiSet Tclass._module.Number) $Heap@1))) (and (and ($Is SeqType |o#0@0| (TSeq Tclass._module.Number)) ($IsAlloc SeqType |o#0@0| (TSeq Tclass._module.Number) $Heap@1)) (and ($Is MapType |p#0@0| (TMap Tclass._module.Number Tclass._module.Number)) ($IsAlloc MapType |p#0@0| (TMap Tclass._module.Number Tclass._module.Number) $Heap@1)))) (and (and (and ($Is SetType |s#0@0| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s#0@0| (TSet Tclass._module.Integer) $Heap@1)) (and ($Is MultiSetType |t#0@0| (TMultiSet Tclass._module.Integer)) ($IsAlloc MultiSetType |t#0@0| (TMultiSet Tclass._module.Integer) $Heap@1))) (and (and ($Is SeqType |u#0@0| (TSeq Tclass._module.Integer)) ($IsAlloc SeqType |u#0@0| (TSeq Tclass._module.Integer) $Heap@1)) (and ($Is MapType |v#0@0| (TMap Tclass._module.Integer Tclass._module.Integer)) ($IsAlloc MapType |v#0@0| (TMap Tclass._module.Integer Tclass._module.Integer) $Heap@1)))))) (and (=> (= (ControlFlow 0 18) (- 0 40)) true) (and (=> (= (ControlFlow 0 18) (- 0 39)) true) (=> (and ($Is SetType |call4formal@m#0| (TSet call0formal@_module._default.Create$T)) ($IsAlloc SetType |call4formal@m#0| (TSet call0formal@_module._default.Create$T) $Heap@@2)) (=> (and (and ($Is MultiSetType |call5formal@n#0| (TMultiSet call0formal@_module._default.Create$T)) ($IsAlloc MultiSetType |call5formal@n#0| (TMultiSet call0formal@_module._default.Create$T) $Heap@@2)) (and ($Is SeqType |call6formal@o#0| (TSeq call0formal@_module._default.Create$T)) ($IsAlloc SeqType |call6formal@o#0| (TSeq call0formal@_module._default.Create$T) $Heap@@2))) (=> (and (and (and ($Is MapType |call7formal@p#0| (TMap call0formal@_module._default.Create$T call0formal@_module._default.Create$T)) ($IsAlloc MapType |call7formal@p#0| (TMap call0formal@_module._default.Create$T call0formal@_module._default.Create$T) $Heap@@2)) (= call0formal@_module._default.Create$T@0 Tclass._module.Number)) (and (= |call1formal@a#0@0| ($Box refType call2formal@this@0)) (= |call2formal@b#0@0| ($Box refType call2formal@this@0@@0)))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($Is SetType |call4formal@m#0@0| (TSet call0formal@_module._default.Create$T@0)) ($IsAlloc SetType |call4formal@m#0@0| (TSet call0formal@_module._default.Create$T@0) $Heap@2))) (and (and ($Is MultiSetType |call5formal@n#0@0| (TMultiSet call0formal@_module._default.Create$T@0)) ($IsAlloc MultiSetType |call5formal@n#0@0| (TMultiSet call0formal@_module._default.Create$T@0) $Heap@2)) (and ($Is SeqType |call6formal@o#0@0| (TSeq call0formal@_module._default.Create$T@0)) ($IsAlloc SeqType |call6formal@o#0@0| (TSeq call0formal@_module._default.Create$T@0) $Heap@2)))) (and (and (and ($Is MapType |call7formal@p#0@0| (TMap call0formal@_module._default.Create$T@0 call0formal@_module._default.Create$T@0)) ($IsAlloc MapType |call7formal@p#0@0| (TMap call0formal@_module._default.Create$T@0 call0formal@_module._default.Create$T@0) $Heap@2)) (and (|Set#Equal| |call4formal@m#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| |call1formal@a#0@0|) |call2formal@b#0@0|)) (|MultiSet#Equal| |call5formal@n#0@0| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| |call1formal@a#0@0|) |call2formal@b#0@0|)))) (and (and (|Seq#Equal| |call6formal@o#0@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| |call1formal@a#0@0|) |call2formal@b#0@0|)) (|Map#Equal| |call7formal@p#0@0| (|Map#Build| (|Map#Build| |Map#Empty| |call1formal@a#0@0| |call2formal@b#0@0|) |call2formal@b#0@0| |call1formal@a#0@0|))) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17)))
 :qid |CovariantCollectionsdfy.363:8|
 :skolemid |1403|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 18) (- 0 38)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 37)) ($Is MultiSetType |call5formal@n#0@0| (TMultiSet Tclass._module.Integer))) (=> ($Is MultiSetType |call5formal@n#0@0| (TMultiSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 36)) ($Is SeqType |call6formal@o#0@0| (TSeq Tclass._module.Integer))) (=> ($Is SeqType |call6formal@o#0@0| (TSeq Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 35)) ($Is MapType |call7formal@p#0@0| (TMap Tclass._module.Integer Tclass._module.Integer))) (=> ($Is MapType |call7formal@p#0@0| (TMap Tclass._module.Integer Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 34)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 33)) ($Is MultiSetType |call5formal@n#0@0| (TMultiSet Tclass._module.Integer))) (=> ($Is MultiSetType |call5formal@n#0@0| (TMultiSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 32)) ($Is SeqType |call6formal@o#0@0| (TSeq Tclass._module.Integer))) (=> ($Is SeqType |call6formal@o#0@0| (TSeq Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 31)) ($Is MapType |call7formal@p#0@0| (TMap Tclass._module.Integer Tclass._module.Integer))) (=> ($Is MapType |call7formal@p#0@0| (TMap Tclass._module.Integer Tclass._module.Integer)) (=> (= |prefix##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@18)))
 :qid |CovariantCollectionsdfy.94:8|
 :skolemid |1286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |prefix##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@19)))
 :qid |CovariantCollectionsdfy.160:8|
 :skolemid |1320|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |prefix##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))))) (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@20)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |prefix##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@21)))
 :qid |CovariantCollectionsdfy.228:8|
 :skolemid |1355|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21))
)) ($HeapSucc $Heap@5 $Heap@6))))) (and (=> (= (ControlFlow 0 18) (- 0 30)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and ($IsAlloc SetType |call4formal@m#0@0| (TSet Tclass._module.Integer) $Heap@6) (|_module.__default.DowncastF#canCall| |call4formal@m#0@0|)) (and (=> (= (ControlFlow 0 18) (- 0 29)) ($Is SetType (_module.__default.DowncastF |call4formal@m#0@0|) (TSet Tclass._module.Integer))) (=> ($Is SetType (_module.__default.DowncastF |call4formal@m#0@0|) (TSet Tclass._module.Integer)) (=> (and (|_module.__default.DowncastF#canCall| |call4formal@m#0@0|) (= |s#0@1| (_module.__default.DowncastF |call4formal@m#0@0|))) (and (=> (= (ControlFlow 0 18) (- 0 28)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and (and ($Is SetType |call2formal@r#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call2formal@r#0| (TSet Tclass._module.Number) $Heap@@2)) (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7))) (=> (and (and (and ($Is SetType |call2formal@r#0@0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call2formal@r#0@0| (TSet Tclass._module.Number) $Heap@7)) (|Set#Equal| |call2formal@r#0@0| |call4formal@m#0@0|)) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@22)))
 :qid |CovariantCollectionsdfy.378:8|
 :skolemid |1416|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@22))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 18) (- 0 27)) ($Is SetType |call2formal@r#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call2formal@r#0@0| (TSet Tclass._module.Integer)) (=> (and ($Is SetType |s'#0@0| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s'#0@0| (TSet Tclass._module.Integer) $Heap@7)) (and (=> (= (ControlFlow 0 18) (- 0 26)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and ($Is SetType |call2formal@r0#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call2formal@r0#0| (TSet Tclass._module.Number) $Heap@@2)) (=> (and (and ($Is SetType |call3formal@r1#0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call3formal@r1#0| (TSet Tclass._module.Number) $Heap@@2)) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8))) (=> (and (and (and ($Is SetType |call2formal@r0#0@0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call2formal@r0#0@0| (TSet Tclass._module.Number) $Heap@8)) (and ($Is SetType |call3formal@r1#0@0| (TSet Tclass._module.Number)) ($IsAlloc SetType |call3formal@r1#0@0| (TSet Tclass._module.Number) $Heap@8))) (and (and (|Set#Equal| |call2formal@r0#0@0| |call3formal@r1#0@0|) (|Set#Equal| |call3formal@r1#0@0| |call4formal@m#0@0|)) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@23)))
 :qid |CovariantCollectionsdfy.383:8|
 :skolemid |1419|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@23))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 18) (- 0 25)) ($Is SetType |call2formal@r0#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call2formal@r0#0@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 24)) ($Is SetType |call3formal@r1#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call3formal@r1#0@0| (TSet Tclass._module.Integer)) (and (=> (= (ControlFlow 0 18) (- 0 23)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and (and (= |let#0#0#0| |call4formal@m#0@0|) ($Is SetType |let#0#0#0| (TSet Tclass._module.Integer))) (and (= |v#Z#0@0| |let#0#0#0|) (= |s#0@2| (let ((|v#1@@0| |call4formal@m#0@0|))
|v#1@@0|)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer))) (=> ($Is SetType |call4formal@m#0@0| (TSet Tclass._module.Integer)) (=> (and (= |let#2#0#0| |call4formal@m#0@0|) ($Is SetType |let#2#0#0| (TSet Tclass._module.Integer))) (=> (and (and (= |v#Z#1@0| |let#2#0#0|) (= |let#1#0#0| |v#Z#1@0|)) (and ($Is SetType |let#1#0#0| (TSet Tclass._module.Number)) (= |u#Z#0@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 18) (- 0 21)) ($Is SetType (let ((|u#1| (let ((|v#2| |call4formal@m#0@0|))
|v#2|)))
|u#1|) (TSet Tclass._module.Integer))) (=> ($Is SetType (let ((|u#1@@0| (let ((|v#2@@0| |call4formal@m#0@0|))
|v#2@@0|)))
|u#1@@0|) (TSet Tclass._module.Integer)) (=> (= |s'#0@1| (let ((|u#1@@1| (let ((|v#2@@1| |call4formal@m#0@0|))
|v#2@@1|)))
|u#1@@1|)) (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (=> ($IsAlloc refType call2formal@this@0 Tclass._module.Integer $Heap@8) (and (=> (= (ControlFlow 0 18) (- 0 19)) true) (=> (and (and ($IsAlloc refType call2formal@this@0@@0 Tclass._module.Integer $Heap@8) (|_module.__default.DowncastFunction#canCall| call2formal@this@0 call2formal@this@0@@0)) (and (|_module.__default.DowncastFunction#canCall| call2formal@this@0 call2formal@this@0@@0) (= |s''#0@0| (_module.__default.DowncastFunction call2formal@this@0 call2formal@this@0@@0)))) (and (=> (= (ControlFlow 0 18) 16) anon7_Then_correct) (=> (= (ControlFlow 0 18) 17) anon7_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (and (=> |defass#a#0| (and ($Is refType |a#0@@3| Tclass._module.Integer) ($IsAlloc refType |a#0@@3| Tclass._module.Integer $Heap@@2))) true) (and (=> |defass#b#0| (and ($Is refType |b#0@@3| Tclass._module.Integer) ($IsAlloc refType |b#0@@3| Tclass._module.Integer $Heap@@2))) true)) (and (and ($Is SetType |m#0@@0| (TSet Tclass._module.Number)) ($IsAlloc SetType |m#0@@0| (TSet Tclass._module.Number) $Heap@@2)) true)) (and (and (and ($Is MultiSetType |n#0@@1| (TMultiSet Tclass._module.Number)) ($IsAlloc MultiSetType |n#0@@1| (TMultiSet Tclass._module.Number) $Heap@@2)) true) (and (and ($Is SeqType |o#0| (TSeq Tclass._module.Number)) ($IsAlloc SeqType |o#0| (TSeq Tclass._module.Number) $Heap@@2)) true))) (=> (and (and (and (and (and ($Is MapType |p#0| (TMap Tclass._module.Number Tclass._module.Number)) ($IsAlloc MapType |p#0| (TMap Tclass._module.Number Tclass._module.Number) $Heap@@2)) true) (and (and ($Is SetType |s#0@@10| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s#0@@10| (TSet Tclass._module.Integer) $Heap@@2)) true)) (and (and (and ($Is MultiSetType |t#0| (TMultiSet Tclass._module.Integer)) ($IsAlloc MultiSetType |t#0| (TMultiSet Tclass._module.Integer) $Heap@@2)) true) (and (and ($Is SeqType |u#0@@2| (TSeq Tclass._module.Integer)) ($IsAlloc SeqType |u#0@@2| (TSeq Tclass._module.Integer) $Heap@@2)) true))) (and (and (and (and ($Is MapType |v#0@@0| (TMap Tclass._module.Integer Tclass._module.Integer)) ($IsAlloc MapType |v#0@@0| (TMap Tclass._module.Integer Tclass._module.Integer) $Heap@@2)) true) (and (and ($Is SetType |s'#0| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s'#0| (TSet Tclass._module.Integer) $Heap@@2)) true)) (and (and (and ($Is SetType |s''#0| (TSet Tclass._module.Integer)) ($IsAlloc SetType |s''#0| (TSet Tclass._module.Integer) $Heap@@2)) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 41) 18))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
