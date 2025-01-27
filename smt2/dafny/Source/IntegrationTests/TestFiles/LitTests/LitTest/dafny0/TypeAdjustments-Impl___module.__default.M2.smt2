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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$array2 () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
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
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |ISet#Empty| () T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal TagSet TagISet TagMultiSet TagMap TagIMap alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.array2? Tagclass._System.array2 tytagFamily$nat tytagFamily$array |tytagFamily$_tuple#2| tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7669|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |7798|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |7800|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |7655|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |7675|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |7806|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |7778|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (Ctor MultiSetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |7362|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |7766|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7668|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7797|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |7428|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |7429|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@0 bx)) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |7358|
 :pattern ( (MapType0Select BoxType boolType v@@0 bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |7359|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |7327|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |7329|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |7325|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@4) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |7767|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@5 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@5))
 :qid |unknown.0:0|
 :skolemid |7666|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |7759|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |7336|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |7760|
)))
 :qid |unknown.0:0|
 :skolemid |7761|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@2)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |7356|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |7357|
 :pattern ( ($Is SetType v@@1 (TSet t0@@2)))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |7415|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |7654|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7674|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7805|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@0) ($IsAlloc T@@1 v@@2 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |7349|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@6 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@5))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@6))
 :qid |unknown.0:0|
 :skolemid |7795|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |7421|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@2) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |7420|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7662|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7671|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7789|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |7802|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |7625|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |7653|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |7667|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |7796|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |7613|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |7614|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@4 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@4))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |7615|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |7616|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@3) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@5 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |7379|
 :pattern ( (MapType0Select BoxType boolType v@@5 bx@@3))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |7380|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@3) h@@3))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |7624|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@6 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@6)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@6 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |7622|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |7623|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@6))
)))
(assert (= (Ctor IMapType) 10))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc IMapType v@@7 (TIMap t0@@4 t1@@0) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@4)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@4) t1@@0 h@@4) ($IsAllocBox bx@@4 t0@@4 h@@4)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |7387|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@4))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@4))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |7388|
 :pattern ( ($IsAlloc IMapType v@@7 (TIMap t0@@4 t1@@0) h@@4))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) ) (! (= ($Is MultiSetType v@@8 (TMultiSet t0@@5)) (forall ((bx@@5 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@8 bx@@5)) ($IsBox bx@@5 t0@@5))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |7360|
 :pattern ( (|MultiSet#Multiplicity| v@@8 bx@@5))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |7361|
 :pattern ( ($Is MultiSetType v@@8 (TMultiSet t0@@5)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |7427|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@7 T@U) ($o@@8 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@8))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@8))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |7794|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |7619|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |7620|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |7621|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@3 T@U) (v@@9 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@9))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |7617|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |7618|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |7337|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TReal) (and (= ($Box realType ($Unbox realType bx@@7)) bx@@7) ($Is realType ($Unbox realType bx@@7) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |7338|
 :pattern ( ($IsBox bx@@7 TReal))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |7339|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@10 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@10) t@@2) ($Is T@@3 v@@10 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |7348|
 :pattern ( ($IsBox ($Box T@@3 v@@10) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@9 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@9)) (<= (|MultiSet#Multiplicity| ms bx@@9) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |7493|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@9))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |7494|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |7422|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |7495|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |7792|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |7793|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@11 (TSet t0@@6) h@@5) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@11 bx@@10) ($IsAllocBox bx@@10 t0@@6 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |7377|
 :pattern ( (|Set#IsMember| v@@11 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |7378|
 :pattern ( ($IsAlloc SetType v@@11 (TSet t0@@6) h@@5))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |7497|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |7319|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |7320|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |7321|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((t@@6 T@U) (u@@4 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@4)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |7322|
 :pattern ( (TIMap t@@6 u@@4))
)))
(assert (forall ((t@@7 T@U) (u@@5 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@5)) u@@5)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |7323|
 :pattern ( (TIMap t@@7 u@@5))
)))
(assert (forall ((t@@8 T@U) (u@@6 T@U) ) (! (= (Tag (TIMap t@@8 u@@6)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |7324|
 :pattern ( (TIMap t@@8 u@@6))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |7758|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |7763|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |7764|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |7773|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |7775|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSet (TSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |7311|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSet t@@10)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |7312|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TISet (TISet t@@11)) t@@11)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |7313|
 :pattern ( (TISet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TISet t@@12)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |7314|
 :pattern ( (TISet t@@12))
)))
(assert (forall ((t@@13 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@13)) t@@13)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |7315|
 :pattern ( (TMultiSet t@@13))
)))
(assert (forall ((t@@14 T@U) ) (! (= (Tag (TMultiSet t@@14)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |7316|
 :pattern ( (TMultiSet t@@14))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |7413|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |7414|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |7663|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7672|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |7790|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |7803|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |7335|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (= (Ctor MapType) 11))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (t1@@1 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MapType v@@12 (TMap t0@@7 t1@@1) h@@6) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@11) t1@@1 h@@6) ($IsAllocBox bx@@11 t0@@7 h@@6)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |7385|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |7386|
 :pattern ( ($IsAlloc MapType v@@12 (TMap t0@@7 t1@@1) h@@6))
)))
(assert (forall ((v@@13 T@U) (t0@@8 T@U) (t1@@2 T@U) ) (! (= ($Is IMapType v@@13 (TIMap t0@@8 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@13) bx@@12)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@13) bx@@12) t1@@2) ($IsBox bx@@12 t0@@8)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |7368|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@13) bx@@12))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@13) bx@@12))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |7369|
 :pattern ( ($Is IMapType v@@13 (TIMap t0@@8 t1@@2)))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@9)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |7670|
 :pattern ( (_System.array.Length $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@10)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |7799|
 :pattern ( (_System.array2.Length0 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@11)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |7801|
 :pattern ( (_System.array2.Length1 $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@11 T@U) ($o@@12 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@12)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |7665|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |7774|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |7776|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@7 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@7))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |7498|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@7))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |7499|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((u@@7 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |7595|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
)))
(assert (forall ((bx@@13 T@U) (s@@1 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@13 (TMap s@@1 t@@15)) (and (= ($Box MapType ($Unbox MapType bx@@13)) bx@@13) ($Is MapType ($Unbox MapType bx@@13) (TMap s@@1 t@@15))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |7346|
 :pattern ( ($IsBox bx@@13 (TMap s@@1 t@@15)))
)))
(assert (forall ((bx@@14 T@U) (s@@2 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@14 (TIMap s@@2 t@@16)) (and (= ($Box IMapType ($Unbox IMapType bx@@14)) bx@@14) ($Is IMapType ($Unbox IMapType bx@@14) (TIMap s@@2 t@@16))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |7347|
 :pattern ( ($IsBox bx@@14 (TIMap s@@2 t@@16)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@15)) bx@@15) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@15) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |7765|
 :pattern ( ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@4 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@4)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |7464|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@4))
)))
(assert  (and (forall ((t0@@9 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@9 t1@@3 t2 (MapType1Store t0@@9 t1@@3 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8059|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |7416|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |7762|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@4 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@12) k@@4)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |7583|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |7584|
 :pattern ( (|Map#Domain| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((v@@14 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@13) v@@14)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |7585|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |7586|
 :pattern ( (|Map#Values| m@@13))
)))
(assert (forall ((m@@14 T@U) (item@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@14) item@@0)  (and (|Set#IsMember| (|Map#Domain| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |7594|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@14) item@@0))
)))
(assert (forall ((m@@15 T@U) (v@@15 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@15) v@@15) (exists ((u@@8 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@15) u@@8) (= v@@15 (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |7592|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@15) u@@8))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |7593|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@15) v@@15))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |7394|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@16 T@U) (t@@17 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@17)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@17))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |7342|
 :pattern ( ($IsBox bx@@16 (TSet t@@17)))
)))
(assert (forall ((bx@@17 T@U) (t@@18 T@U) ) (!  (=> ($IsBox bx@@17 (TISet t@@18)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@17)) bx@@17) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@17) (TISet t@@18))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |7343|
 :pattern ( ($IsBox bx@@17 (TISet t@@18)))
)))
(assert (forall ((bx@@18 T@U) (t@@19 T@U) ) (!  (=> ($IsBox bx@@18 (TMultiSet t@@19)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@18)) bx@@18) ($Is MultiSetType ($Unbox MultiSetType bx@@18) (TMultiSet t@@19))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |7344|
 :pattern ( ($IsBox bx@@18 (TMultiSet t@@19)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |7664|
 :pattern ( ($IsBox bx@@19 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |7673|
 :pattern ( ($IsBox bx@@20 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |7791|
 :pattern ( ($IsBox bx@@21 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |7804|
 :pattern ( ($IsBox bx@@22 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((v@@16 T@U) (t0@@10 T@U) (t1@@4 T@U) ) (! (= ($Is MapType v@@16 (TMap t0@@10 t1@@4)) (forall ((bx@@23 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@16) bx@@23) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@16) bx@@23) t1@@4) ($IsBox bx@@23 t0@@10)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |7365|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@16) bx@@23))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@16) bx@@23))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |7366|
 :pattern ( ($Is MapType v@@16 (TMap t0@@10 t1@@4)))
)))
(assert (forall ((h@@7 T@U) (r T@U) (f@@1 T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f@@1 x@@8))) ($HeapSucc h@@7 (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f@@1 x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |7426|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f@@1 x@@8)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |7768|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |7769|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@12))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |7770|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |7771|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@13))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |7772|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |7328|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@10))) (Lit BoxType ($Box realType (real_2_U x@@10))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |7330|
 :pattern ( ($Box realType (real_2_U (LitReal x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |7326|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((v@@17 T@U) (t0@@11 T@U) (h@@8 T@U) ) (! (= ($IsAlloc MultiSetType v@@17 (TMultiSet t0@@11) h@@8) (forall ((bx@@24 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@17 bx@@24)) ($IsAllocBox bx@@24 t0@@11 h@@8))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |7381|
 :pattern ( (|MultiSet#Multiplicity| v@@17 bx@@24))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |7382|
 :pattern ( ($IsAlloc MultiSetType v@@17 (TMultiSet t0@@11) h@@8))
)))
(assert (forall ((h@@9 T@U) (v@@18 T@U) ) (! ($IsAlloc intType v@@18 TInt h@@9)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |7371|
 :pattern ( ($IsAlloc intType v@@18 TInt h@@9))
)))
(assert (forall ((h@@10 T@U) (v@@19 T@U) ) (! ($IsAlloc realType v@@19 TReal h@@10)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |7372|
 :pattern ( ($IsAlloc realType v@@19 TReal h@@10))
)))
(assert (forall ((h@@11 T@U) (v@@20 T@U) ) (! ($IsAlloc boolType v@@20 TBool h@@11)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |7373|
 :pattern ( ($IsAlloc boolType v@@20 TBool h@@11))
)))
(assert (forall ((m@@16 T@U) ) (!  (or (= m@@16 |Map#Empty|) (exists ((k@@5 T@U) (v@@21 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@16) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@5 v@@21)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |7587|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |7588|
 :pattern ( (|Map#Items| m@@16))
)))
(assert (forall ((v@@22 T@U) (t0@@12 T@U) (t1@@5 T@U) ) (!  (=> ($Is MapType v@@22 (TMap t0@@12 t1@@5)) (and (and ($Is SetType (|Map#Domain| v@@22) (TSet t0@@12)) ($Is SetType (|Map#Values| v@@22) (TSet t1@@5))) ($Is SetType (|Map#Items| v@@22) (TSet (Tclass._System.Tuple2 t0@@12 t1@@5)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |7367|
 :pattern ( ($Is MapType v@@22 (TMap t0@@12 t1@@5)))
)))
(assert (forall ((v@@23 T@U) (t0@@13 T@U) (t1@@6 T@U) ) (!  (=> ($Is IMapType v@@23 (TIMap t0@@13 t1@@6)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@23) (TISet t0@@13)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@23) (TISet t1@@6))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@23) (TISet (Tclass._System.Tuple2 t0@@13 t1@@6)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |7370|
 :pattern ( ($Is IMapType v@@23 (TIMap t0@@13 t1@@6)))
)))
(assert (forall ((v@@24 T@U) ) (! ($Is intType v@@24 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |7350|
 :pattern ( ($Is intType v@@24 TInt))
)))
(assert (forall ((v@@25 T@U) ) (! ($Is realType v@@25 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |7351|
 :pattern ( ($Is realType v@@25 TReal))
)))
(assert (forall ((v@@26 T@U) ) (! ($Is boolType v@@26 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |7352|
 :pattern ( ($Is boolType v@@26 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |z#0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |z#0@1| () Int)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |z#0@2| () Int)
(declare-fun |z#0@3| () Int)
(declare-fun |ms#0| () T@U)
(declare-fun |m0#0| () T@U)
(declare-fun |z#0@4| () Int)
(declare-fun |m1#0| () T@U)
(declare-fun |z#0@5| () Int)
(declare-fun |z#0@6| () Int)
(declare-fun |z#0| () Int)
(declare-fun |nrr#0| () T@U)
(declare-fun |matrix#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M2)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (<= (LitInt 0) |z#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= 0 (LitInt 100))) (=> (<= 0 (LitInt 100)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._System.nat))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 100)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= |z#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (<= 0 (LitInt 100))) (=> (<= 0 (LitInt 100)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= 0 (LitInt 100))) (=> (<= 0 (LitInt 100)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? Tclass._System.nat))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) (LitInt 100)))) (and (and (= (_System.array2.Length1 $nw@1) (LitInt 100)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1))) (=> (and (= |z#0@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3)))))) (= |z#0@3| (|MultiSet#Multiplicity| |ms#0| ($Box realType (real_2_U (LitReal 3.19)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#IsMember| (|Map#Domain| |m0#0|) ($Box boolType (Lit boolType (bool_2_U true))))) (=> (|Set#IsMember| (|Map#Domain| |m0#0|) ($Box boolType (Lit boolType (bool_2_U true)))) (=> (= |z#0@4| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m0#0|) ($Box boolType (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m1#0|) ($Box realType (real_2_U (LitReal 5.9)))))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m1#0|) ($Box realType (real_2_U (LitReal 5.9))))) (=> (= |z#0@5| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |m1#0|) ($Box realType (real_2_U (LitReal 5.9))))))) (=> (and (<= (LitInt 0) |z#0@6|) (= (ControlFlow 0 2) (- 0 1))) (<= (LitInt 0) |z#0@6|)))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MultiSetType |ms#0| (TMultiSet TReal)) ($IsAlloc MultiSetType |ms#0| (TMultiSet TReal) $Heap)) (and ($Is MapType |m0#0| (TMap TBool Tclass._System.nat)) ($IsAlloc MapType |m0#0| (TMap TBool Tclass._System.nat) $Heap))) (=> (and (and (and (and ($Is IMapType |m1#0| (TIMap TReal Tclass._System.nat)) ($IsAlloc IMapType |m1#0| (TIMap TReal Tclass._System.nat) $Heap)) (and (<= (LitInt 0) |z#0|) true)) (and (and ($Is refType |nrr#0| (Tclass._System.array Tclass._System.nat)) ($IsAlloc refType |nrr#0| (Tclass._System.array Tclass._System.nat) $Heap)) true)) (and (and (and ($Is refType |matrix#0| (Tclass._System.array2 Tclass._System.nat)) ($IsAlloc refType |matrix#0| (Tclass._System.array2 Tclass._System.nat) $Heap)) true) (and (and (= 0 $FunctionContextHeight) (|Set#IsMember| (|Map#Domain| |m0#0|) ($Box boolType (Lit boolType (bool_2_U true))))) (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m1#0|) ($Box realType (real_2_U (LitReal 5.9))))) (= (ControlFlow 0 13) 2))))) anon0_correct)))))
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
