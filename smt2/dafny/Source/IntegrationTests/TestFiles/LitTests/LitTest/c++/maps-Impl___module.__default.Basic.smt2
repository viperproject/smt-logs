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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.map__holder () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$map_holder () T@U)
(declare-fun tytagFamily$uint32 () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Tclass._module.map__holder () T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.map__holder Tagclass._module.uint32 |tytagFamily$_tuple#2| tytagFamily$map_holder tytagFamily$uint32)
)
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((s T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v@@0)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v@@0))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.map__holder) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.map__holder)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@1 Tclass._module.map__holder))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.uint32) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.uint32)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@2 Tclass._module.uint32))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (= (Ctor MapType) 9))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@5 (TMap t0@@2 t1@@0) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@5) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@4) t1@@0 h@@4) ($IsAllocBox bx@@4 t0@@2 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@5) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@5 (TMap t0@@2 t1@@0) h@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@5 T@U) (s@@1 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s@@1 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s@@1 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s@@1 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |567|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@2 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@2 val@@4)) s@@2) (= (|Seq#Build_inv1| (|Seq#Build| s@@2 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@2 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@7) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@7))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@8 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@8)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@8)) |u'|) v@@8))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@8)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@8)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@8)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@8)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@4 t1@@2)) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@8) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@8) t1@@2) ($IsBox bx@@8 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@8))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@9 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((d@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@3 Tclass._module.map__holder)) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.map__holder $h@@1))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._module.map__holder $h@@1))
)))
(assert (= (Tag Tclass._module.map__holder) Tagclass._module.map__holder))
(assert (= (TagFamily Tclass._module.map__holder) tytagFamily$map_holder))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@1 o@@0) (|Set#IsMember| b@@1 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@0))
 :pattern ( (|Set#IsMember| b@@1 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@4) |_System._tuple#2$T0@@6| $h@@2))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@5) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@5) |_System._tuple#2$T1@@7| $h@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@3 T@U) (v@@10 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@10)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((v@@11 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@11 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@11) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@11) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@11) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@11 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |name##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun |b##0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |name##1@0| () T@U)
(declare-fun |b##1@0| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |name##2@0| () T@U)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |b##2@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |name##3@0| () T@U)
(declare-fun |newtype$check#17@0| () Int)
(declare-fun |newtype$check#18@0| () Int)
(declare-fun |b##3@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |name##4@0| () T@U)
(declare-fun |newtype$check#19@0| () Int)
(declare-fun |newtype$check#20@0| () Int)
(declare-fun |b##4@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#21@0| () Int)
(declare-fun |newtype$check#22@0| () Int)
(declare-fun |u#0@0| () T@U)
(declare-fun |name##5@0| () T@U)
(declare-fun |b##5@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |name##6@0| () T@U)
(declare-fun |b##6@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun |name##7@0| () T@U)
(declare-fun |newtype$check#23@0| () Int)
(declare-fun |newtype$check#24@0| () Int)
(declare-fun |b##7@0| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun |name##8@0| () T@U)
(declare-fun |newtype$check#25@0| () Int)
(declare-fun |newtype$check#26@0| () Int)
(declare-fun |b##8@0| () Bool)
(declare-fun $Heap@8 () T@U)
(declare-fun |name##9@0| () T@U)
(declare-fun |newtype$check#27@0| () Int)
(declare-fun |newtype$check#28@0| () Int)
(declare-fun |b##9@0| () Bool)
(declare-fun $Heap@9 () T@U)
(declare-fun |s_keys#0@0| () T@U)
(declare-fun |t_keys#0@0| () T@U)
(declare-fun |name##10@0| () T@U)
(declare-fun |b##10@0| () Bool)
(declare-fun $Heap@10 () T@U)
(declare-fun |name##11@0| () T@U)
(declare-fun |newtype$check#29@0| () Int)
(declare-fun |b##11@0| () Bool)
(declare-fun $Heap@11 () T@U)
(declare-fun |name##12@0| () T@U)
(declare-fun |newtype$check#30@0| () Int)
(declare-fun |b##12@0| () Bool)
(declare-fun $Heap@12 () T@U)
(declare-fun |name##13@0| () T@U)
(declare-fun |newtype$check#31@0| () Int)
(declare-fun |b##13@0| () Bool)
(declare-fun $Heap@13 () T@U)
(declare-fun |name##14@0| () T@U)
(declare-fun |newtype$check#32@0| () Int)
(declare-fun |b##14@0| () Bool)
(declare-fun |f#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |s_keys#0| () T@U)
(declare-fun |t_keys#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SeqType) 10) (= (Ctor charType) 11)))
(set-info :boogie-vc-id Impl$$_module.__default.Basic)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is DatatypeTypeType |f#0@0| Tclass._module.map__holder) ($IsAlloc DatatypeTypeType |f#0@0| Tclass._module.map__holder $Heap)) (= |newtype$check#0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 54)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |newtype$check#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 53)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |newtype$check#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 52)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (= |newtype$check#3@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 51)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |newtype$check#4@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 50)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (= |newtype$check#5@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 49)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |newtype$check#6@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 48)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (=> (= |newtype$check#7@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 47)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296)) (=> (and (= |s#0@0| (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 3)))))) (= |newtype$check#8@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296)) (=> (= |newtype$check#9@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 45)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296)) (=> (= |newtype$check#10@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 44)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296)) (=> (= |newtype$check#11@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 43)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296)) (=> (= |newtype$check#12@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 42)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296)) (=> (= |newtype$check#13@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 41)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296)) (=> (= |newtype$check#14@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 40)) (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296)) (=> (= |newtype$check#15@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 39)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 4294967296)) (=> (= |t#0@0| (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 3)))))) (=> (and (= |name##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 73))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 121))))) (= |b##0@0| (|Map#Equal| |s#0@0| |s#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 38)) |b##0@0|) (=> |b##0@0| (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (= |name##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 73))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 121))))) (= |b##1@0| (|Map#Equal| |s#0@0| |t#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 37)) |b##1@0|) (=> |b##1@0| (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |name##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))))) (= |newtype$check#16@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 4294967296)) (=> (= |b##2@0| (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U 1)))) (and (=> (= (ControlFlow 0 2) (- 0 35)) |b##2@0|) (=> |b##2@0| (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |name##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 49))))) (= |newtype$check#17@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U (LitInt 1))))) (=> (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U (LitInt 1)))) (=> (= |newtype$check#18@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (and (<= (LitInt 0) |newtype$check#18@0|) (< |newtype$check#18@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#18@0|) (< |newtype$check#18@0| 4294967296)) (=> (= |b##3@0| (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 31)) |b##3@0|) (=> |b##3@0| (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= |name##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 50))))) (= |newtype$check#19@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= (LitInt 0) |newtype$check#19@0|) (< |newtype$check#19@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#19@0|) (< |newtype$check#19@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (|Set#IsMember| (|Map#Domain| |t#0@0|) ($Box intType (int_2_U (LitInt 2))))) (=> (|Set#IsMember| (|Map#Domain| |t#0@0|) ($Box intType (int_2_U (LitInt 2)))) (=> (= |newtype$check#20@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (<= (LitInt 0) |newtype$check#20@0|) (< |newtype$check#20@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#20@0|) (< |newtype$check#20@0| 4294967296)) (=> (= |b##4@0| (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |t#0@0|) ($Box intType (int_2_U (LitInt 2)))))) (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 27)) |b##4@0|) (=> |b##4@0| (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |newtype$check#21@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= (LitInt 0) |newtype$check#21@0|) (< |newtype$check#21@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#21@0|) (< |newtype$check#21@0| 4294967296)) (=> (= |newtype$check#22@0| (LitInt 42)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= (LitInt 0) |newtype$check#22@0|) (< |newtype$check#22@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#22@0|) (< |newtype$check#22@0| 4294967296)) (=> (= |u#0@0| (|Map#Build| |s#0@0| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 42))))) (=> (and (= |name##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 85))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 73))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 121))))) (= |b##5@0|  (not (|Map#Equal| |s#0@0| |u#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) |b##5@0|) (=> |b##5@0| (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |name##6@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 85))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 73))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 49))))) (= |b##6@0| (|Map#Equal| |s#0@0| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 23)) |b##6@0|) (=> |b##6@0| (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= |name##7@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 85))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 73))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 50))))) (= |newtype$check#23@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= (LitInt 0) |newtype$check#23@0|) (< |newtype$check#23@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#23@0|) (< |newtype$check#23@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U (LitInt 1))))) (=> (|Set#IsMember| (|Map#Domain| |s#0@0|) ($Box intType (int_2_U (LitInt 1)))) (=> (= |newtype$check#24@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= (LitInt 0) |newtype$check#24@0|) (< |newtype$check#24@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#24@0|) (< |newtype$check#24@0| 4294967296)) (=> (= |b##7@0| (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |s#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 19)) |b##7@0|) (=> |b##7@0| (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
)) ($HeapSucc $Heap@6 $Heap@7)) (and (= |name##8@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 85))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 82))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 116))))) (= |newtype$check#25@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= (LitInt 0) |newtype$check#25@0|) (< |newtype$check#25@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#25@0|) (< |newtype$check#25@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 1))))) (=> (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))) (=> (= |newtype$check#26@0| (LitInt 42)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= (LitInt 0) |newtype$check#26@0|) (< |newtype$check#26@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#26@0|) (< |newtype$check#26@0| 4294967296)) (=> (= |b##8@0| (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 15)) |b##8@0|) (=> |b##8@0| (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= |name##9@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 85))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 79))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))))) (= |newtype$check#27@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= (LitInt 0) |newtype$check#27@0|) (< |newtype$check#27@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#27@0|) (< |newtype$check#27@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 2))))) (=> (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 2)))) (=> (= |newtype$check#28@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt 0) |newtype$check#28@0|) (< |newtype$check#28@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#28@0|) (< |newtype$check#28@0| 4294967296)) (=> (= |b##9@0| (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 2)))))) (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 11)) |b##9@0|) (=> |b##9@0| (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (and (= |s_keys#0@0| (|Map#Domain| |s#0@0|)) (= |t_keys#0@0| (|Map#Domain| |t#0@0|))) (and (= |name##10@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))))) (= |b##10@0| (|Set#Equal| |s_keys#0@0| |t_keys#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) |b##10@0|) (=> |b##10@0| (=> (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (=> (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (= |name##11@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 49))))) (= |newtype$check#29@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= (LitInt 0) |newtype$check#29@0|) (< |newtype$check#29@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#29@0|) (< |newtype$check#29@0| 4294967296)) (=> (= |b##11@0| (|Set#IsMember| |s_keys#0@0| ($Box intType (int_2_U (LitInt 1))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) |b##11@0|) (=> |b##11@0| (=> (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (=> (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11))
)) ($HeapSucc $Heap@10 $Heap@11)) (and (= |name##12@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 50))))) (= |newtype$check#30@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= (LitInt 0) |newtype$check#30@0|) (< |newtype$check#30@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#30@0|) (< |newtype$check#30@0| 4294967296)) (=> (= |b##12@0| (|Set#IsMember| |s_keys#0@0| ($Box intType (int_2_U (LitInt 2))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) |b##12@0|) (=> |b##12@0| (=> (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (=> (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12))
)) ($HeapSucc $Heap@11 $Heap@12)) (and (= |name##13@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 51))))) (= |newtype$check#31@0| (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt 0) |newtype$check#31@0|) (< |newtype$check#31@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#31@0|) (< |newtype$check#31@0| 4294967296)) (=> (= |b##13@0| (|Set#IsMember| |s_keys#0@0| ($Box intType (int_2_U (LitInt 3))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) |b##13@0|) (=> |b##13@0| (=> (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (=> (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13)))
 :qid |mapsdfy.5:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13))
)) ($HeapSucc $Heap@12 $Heap@13)) (and (= |name##14@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 52))))) (= |newtype$check#32@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= (LitInt 0) |newtype$check#32@0|) (< |newtype$check#32@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#32@0|) (< |newtype$check#32@0| 4294967296)) (=> (and (= |b##14@0| (|Set#IsMember| |s_keys#0@0| ($Box intType (int_2_U (LitInt 4))))) (= (ControlFlow 0 2) (- 0 1))) |b##14@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |f#0| Tclass._module.map__holder) ($IsAlloc DatatypeTypeType |f#0| Tclass._module.map__holder $Heap)) true) (=> (and (and (and ($Is MapType |s#0| (TMap Tclass._module.uint32 Tclass._module.uint32)) ($IsAlloc MapType |s#0| (TMap Tclass._module.uint32 Tclass._module.uint32) $Heap)) true) (and (and ($Is MapType |t#0| (TMap Tclass._module.uint32 Tclass._module.uint32)) ($IsAlloc MapType |t#0| (TMap Tclass._module.uint32 Tclass._module.uint32) $Heap)) true)) (=> (and (and (and (and ($Is MapType |u#0| (TMap Tclass._module.uint32 Tclass._module.uint32)) ($IsAlloc MapType |u#0| (TMap Tclass._module.uint32 Tclass._module.uint32) $Heap)) true) (and (and ($Is SetType |s_keys#0| (TSet Tclass._module.uint32)) ($IsAlloc SetType |s_keys#0| (TSet Tclass._module.uint32) $Heap)) true)) (and (and (and ($Is SetType |t_keys#0| (TSet Tclass._module.uint32)) ($IsAlloc SetType |t_keys#0| (TSet Tclass._module.uint32) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 55) 2)))) anon0_correct))))))
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
