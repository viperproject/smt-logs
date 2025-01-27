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
(declare-fun TagISet () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.SubZOT () T@U)
(declare-fun Tagclass._module.Forever () T@U)
(declare-fun |##_module.Forever.More| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$SubZOT () T@U)
(declare-fun tytagFamily$Forever () T@U)
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
(declare-fun |$IsA#_module.Forever| (T@U) Bool)
(declare-fun _module.Forever.More_q (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.ZOT () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.SubZOT () T@U)
(declare-fun Tclass._module.Forever () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
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
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun |#_module.Forever.More| (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun _module.Forever.next (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagISet TagIMap alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.SubZOT Tagclass._module.Forever |##_module.Forever.More| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| tytagFamily$SubZOT tytagFamily$Forever)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Forever| d) (_module.Forever.More_q d))
 :qid |unknown.0:0|
 :skolemid |3686|
 :pattern ( (|$IsA#_module.Forever| d))
)))
(assert ($AlwaysAllocated Tclass._module.ZOT))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2850|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2503|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |2771|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |2772|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |2773|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|z#0| T@U) ($h T@U) ) (! (= ($IsAllocBox |z#0| Tclass._module.SubZOT $h) ($IsAllocBox |z#0| Tclass._module.ZOT $h))
 :qid |unknown.0:0|
 :skolemid |3677|
 :pattern ( ($IsAllocBox |z#0| Tclass._module.SubZOT $h))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass._module.Forever) (_module.Forever.More_q d@@1))
 :qid |unknown.0:0|
 :skolemid |3687|
 :pattern ( (_module.Forever.More_q d@@1) ($Is DatatypeTypeType d@@1 Tclass._module.Forever))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor refType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx@@1)) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |2426|
 :pattern ( (MapType0Select BoxType boolType v bx@@1))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |2427|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@1)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@2 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@2) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@2 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@2 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@2 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2767|
 :pattern ( (Reads1 t0@@2 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@2 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |2839|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2831|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Forever.More_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Forever.More|))
 :qid |unknown.0:0|
 :skolemid |3679|
 :pattern ( (_module.Forever.More_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2832|
)))
 :qid |unknown.0:0|
 :skolemid |2833|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |2759|
))) (= (Requires1 t0@@3 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@3 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |2760|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@3 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@4 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |2761|
))) (= (Requires1 t0@@4 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |2762|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@4 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Forever.More_q d@@5) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@5 (|#_module.Forever.More| |a#1#0#0@@0|))
 :qid |Terminationdfy.585:27|
 :skolemid |3680|
)))
 :qid |unknown.0:0|
 :skolemid |3681|
 :pattern ( (_module.Forever.More_q d@@5))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |2755|
))) (= (Reads1 t0@@5 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@5 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |2756|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@5 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |2757|
))) (= (Reads1 t0@@6 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2758|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@7) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |2763|
))) (= (Apply1 t0@@7 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@7 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |2764|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@7 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@8) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |2765|
))) (= (Apply1 t0@@8 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |2766|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |2693|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|ISet#Equal| a b) (forall ((o@@7 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType a o@@7)) (U_2_bool (MapType0Select BoxType boolType b o@@7)))
 :qid |DafnyPreludebpl.869:32|
 :skolemid |2550|
 :pattern ( (MapType0Select BoxType boolType a o@@7))
 :pattern ( (MapType0Select BoxType boolType b o@@7))
)))
 :qid |DafnyPreludebpl.868:15|
 :skolemid |2551|
 :pattern ( (|ISet#Equal| a b))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2785|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |2792|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Forever) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Forever)))
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( ($IsBox bx@@3 Tclass._module.Forever))
)))
(assert (forall ((|a#2#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Forever.More| |a#2#0#0@@1|) Tclass._module.Forever) ($Is DatatypeTypeType |a#2#0#0@@1| Tclass._module.Forever))
 :qid |Terminationdfy.585:27|
 :skolemid |3682|
 :pattern ( ($Is DatatypeTypeType (|#_module.Forever.More| |a#2#0#0@@1|) Tclass._module.Forever))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |2681|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |2682|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@2))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |2683|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |2684|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((f@@7 T@U) (t0@@9 T@U) (t1@@8 T@U) (h@@3 T@U) ) (!  (=> (and ($IsGoodHeap h@@3) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@9 t1@@8) h@@3)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@9 h@@3) (Requires1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6) t1@@8 h@@3))
 :qid |unknown.0:0|
 :skolemid |2777|
 :pattern ( (Apply1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |2778|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@9 t1@@8) h@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@10 T@U) (h@@4 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@10) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@3 bx@@4)) ($IsAllocBox bx@@4 t0@@10 h@@4))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |2447|
 :pattern ( (MapType0Select BoxType boolType v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |2448|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@10) h@@4))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |2692|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@4 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |2690|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |2691|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4))
)))
(assert (= (Ctor IMapType) 9))
(assert (forall ((v@@5 T@U) (t0@@11 T@U) (t1@@9 T@U) (h@@5 T@U) ) (! (= ($IsAlloc IMapType v@@5 (TIMap t0@@11 t1@@9) h@@5) (forall ((bx@@5 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@5)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@5) t1@@9 h@@5) ($IsAllocBox bx@@5 t0@@11 h@@5)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |2455|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@5))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@5))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |2456|
 :pattern ( ($IsAlloc IMapType v@@5 (TIMap t0@@11 t1@@9) h@@5))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2528|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|ISet#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.870:15|
 :skolemid |2552|
 :pattern ( (|ISet#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@10 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@10)) (forall ((h@@6 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@7 t0@@12)) (Requires1 t0@@12 t1@@10 h@@6 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@12 t1@@10 h@@6 f@@8 bx0@@7) t1@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2769|
 :pattern ( (Apply1 t0@@12 t1@@10 h@@6 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |2770|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@10)))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |2687|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |2688|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |2689|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@3 T@U) (v@@6 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@6))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |2685|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |2686|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2405|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@7 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@7) t@@2) ($Is T@@3 v@@7 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@3 v@@7) t@@2))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@7 T@U) (v@@8 T@U) ) (!  (=> ($IsBox v@@8 ty) ($IsAllocBox v@@8 ty h@@7))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |2457|
 :pattern ( ($IsAllocBox v@@8 ty h@@7))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |2458|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TIMap (TIMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |2390|
 :pattern ( (TIMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TIMap (TIMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |2391|
 :pattern ( (TIMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TIMap t@@5 u@@3)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |2392|
 :pattern ( (TIMap t@@5 u@@3))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |2749|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |2750|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |2780|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2781|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |2787|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |2788|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2830|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2835|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2836|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2845|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2847|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TISet (TISet t@@6)) t@@6)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |2381|
 :pattern ( (TISet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TISet t@@7)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |2382|
 :pattern ( (TISet t@@7))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.Forever.More| |a#0#0#0@@0|)) |##_module.Forever.More|)
 :qid |Terminationdfy.585:27|
 :skolemid |3678|
 :pattern ( (|#_module.Forever.More| |a#0#0#0@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (_module.Forever.next (|#_module.Forever.More| |a#3#0#0|)) |a#3#0#0|)
 :qid |Terminationdfy.585:27|
 :skolemid |3684|
 :pattern ( (|#_module.Forever.More| |a#3#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@9 T@U) (t0@@13 T@U) (t1@@11 T@U) ) (! (= ($Is IMapType v@@9 (TIMap t0@@13 t1@@11)) (forall ((bx@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@9) bx@@7)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@9) bx@@7) t1@@11) ($IsBox bx@@7 t0@@13)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |2436|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@9) bx@@7))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@9) bx@@7))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |2437|
 :pattern ( ($Is IMapType v@@9 (TIMap t0@@13 t1@@11)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2846|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2848|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |2790|
))))
 :qid |unknown.0:0|
 :skolemid |2791|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |2783|
))))
 :qid |unknown.0:0|
 :skolemid |2784|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@9 T@U) (t0@@14 T@U) (t1@@12 T@U) (h@@8 T@U) ) (!  (=> ($IsGoodHeap h@@8) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@14 t1@@12) h@@8) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@14) ($IsAllocBox bx0@@8 t0@@14 h@@8)) (Requires1 t0@@14 t1@@12 h@@8 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@14 t1@@12 h@@8 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2774|
 :pattern ( (|Set#IsMember| (Reads1 t0@@14 t1@@12 h@@8 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2775|
 :pattern ( (Apply1 t0@@14 t1@@12 h@@8 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@14 t1@@12 h@@8 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |2776|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@14 t1@@12) h@@8))
)))
(assert (forall ((bx@@8 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TIMap s t@@8)) (and (= ($Box IMapType ($Unbox IMapType bx@@8)) bx@@8) ($Is IMapType ($Unbox IMapType bx@@8) (TIMap s t@@8))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |2415|
 :pattern ( ($IsBox bx@@8 (TIMap s t@@8)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |2751|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |2782|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |2789|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2837|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@8 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@8)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |2532|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@8))
)))
(assert  (and (forall ((t0@@15 T@T) (t1@@13 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@15 t1@@13 t2 (MapType1Store t0@@15 t1@@13 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2748|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |2779|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |2786|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2834|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((t0@@16 T@U) (t1@@14 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@16) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@16 t1@@14)))) (|Set#Equal| (Reads1 t0@@16 t1@@14 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@16 t1@@14 $OneHeap f@@10 bx0@@9) (Requires1 t0@@16 t1@@14 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |2768|
 :pattern ( (Requires1 t0@@16 t1@@14 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@16 t1@@14 heap@@0 f@@10 bx0@@9))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2462|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@13 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@13 (TISet t@@9)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13)) bx@@13) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13) (TISet t@@9))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |2411|
 :pattern ( ($IsBox bx@@13 (TISet t@@9)))
)))
(assert (forall ((d@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@7 Tclass._module.Forever)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Forever $h@@3))
 :qid |unknown.0:0|
 :skolemid |3685|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Forever $h@@3))
)))
(assert (= (Tag Tclass._module.SubZOT) Tagclass._module.SubZOT))
(assert (= (TagFamily Tclass._module.SubZOT) tytagFamily$SubZOT))
(assert (= (Tag Tclass._module.Forever) Tagclass._module.Forever))
(assert (= (TagFamily Tclass._module.Forever) tytagFamily$Forever))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@3 o@@9) (|Set#IsMember| b@@3 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2526|
 :pattern ( (|Set#IsMember| a@@3 o@@9))
 :pattern ( (|Set#IsMember| b@@3 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2527|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |2840|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |2841|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |2842|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |2843|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((d@@10 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Forever.More_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Forever $h@@6))) ($IsAlloc DatatypeTypeType (_module.Forever.next d@@10) Tclass._module.Forever $h@@6))
 :qid |unknown.0:0|
 :skolemid |3683|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Forever.next d@@10) Tclass._module.Forever $h@@6))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2844|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|z#0@@0| T@U) ) (! (= ($IsBox |z#0@@0| Tclass._module.SubZOT)  (and ($IsBox |z#0@@0| Tclass._module.ZOT) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |3676|
 :pattern ( ($IsBox |z#0@@0| Tclass._module.SubZOT))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@9 T@U) (v@@10 T@U) ) (! ($IsAlloc intType v@@10 TInt h@@9)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2439|
 :pattern ( ($IsAlloc intType v@@10 TInt h@@9))
)))
(assert (forall ((v@@11 T@U) (t0@@17 T@U) (t1@@15 T@U) ) (!  (=> ($Is IMapType v@@11 (TIMap t0@@17 t1@@15)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@11) (TISet t0@@17)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@11) (TISet t1@@15))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@11) (TISet (Tclass._System.Tuple2 t0@@17 t1@@15)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |2438|
 :pattern ( ($Is IMapType v@@11 (TIMap t0@@17 t1@@15)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2418|
 :pattern ( ($Is intType v@@12 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@1| () Int)
(declare-fun |x#0| () Int)
(declare-fun |$decr$loop#07@1| () Int)
(declare-fun |i#0@2| () Int)
(declare-fun |forever#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |z0#0| () T@U)
(declare-fun |z1#0| () T@U)
(declare-fun |f#0@@3| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#07@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module._default.GoodLoop$Y () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.GoodLoop)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon8_Else_correct  (=> (< |i#0@1| |x#0|) (=> (and (= |$decr$loop#07@1| (- |x#0| |i#0@1|)) (= |i#0@2| (+ |i#0@1| 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (or (<= 0 |$decr$loop#07@1|) (< (DtRank |forever#0|) (DtRank |forever#0|))) (= (- |x#0| |i#0@2|) |$decr$loop#07@1|))) (=> (or (or (<= 0 |$decr$loop#07@1|) (< (DtRank |forever#0|) (DtRank |forever#0|))) (= (- |x#0| |i#0@2|) |$decr$loop#07@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (and (= |y#0| |y#0|) (and (= |z0#0| |z0#0|) (and (= |z1#0| |z1#0|) (and (= |f#0@@3| |f#0@@3|) (or (< (DtRank |forever#0|) (DtRank |forever#0|)) (and (= (DtRank |forever#0|) (DtRank |forever#0|)) (and (|ISet#Equal| (|IMap#Domain| |m#0|) (|IMap#Domain| |m#0|)) (and (|ISet#Equal| |s#0| |s#0|) (< (- |x#0| |i#0@2|) |$decr$loop#07@1|))))))))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 7) 3) anon8_Then_correct) (=> (= (ControlFlow 0 7) 5) anon8_Else_correct)))))
(let ((anon7_Then_correct true))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 8) 2) anon7_Then_correct) (=> (= (ControlFlow 0 8) 7) anon7_Else_correct))))
(let ((anon6_LoopDone_correct true))
(let ((anon6_LoopHead_correct  (=> (and (and (and (not false) (<= 0 |i#0@1|)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.599:3|
 :skolemid |3121|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.599:3|
 :skolemid |3122|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))) (and (= |y#0| |y#0|) (=> (= |y#0| |y#0|) (and (= |z0#0| |z0#0|) (=> (= |z0#0| |z0#0|) (and (= |z1#0| |z1#0|) (=> (= |z1#0| |z1#0|) (and (= |f#0@@3| |f#0@@3|) (=> (= |f#0@@3| |f#0@@3|) (and (<= (DtRank |forever#0|) (DtRank |forever#0|)) (=> (= (DtRank |forever#0|) (DtRank |forever#0|)) (and (|ISet#Equal| (|IMap#Domain| |m#0|) (|IMap#Domain| |m#0|)) (=> (|ISet#Equal| (|IMap#Domain| |m#0|) (|IMap#Domain| |m#0|)) (and (|ISet#Equal| |s#0| |s#0|) (=> (|ISet#Equal| |s#0| |s#0|) (<= (- |x#0| |i#0@1|) |$decr_init$loop#07@0|))))))))))))))))) (and (=> (= (ControlFlow 0 9) 1) anon6_LoopDone_correct) (=> (= (ControlFlow 0 9) 8) anon6_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |i#0@0| (LitInt 0))) (and (= |$decr_init$loop#07@0| (- |x#0| |i#0@0|)) (= (ControlFlow 0 10) 9))) anon6_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($IsBox |y#0| _module._default.GoodLoop$Y) ($IsAllocBox |y#0| _module._default.GoodLoop$Y $Heap)) (and ($IsBox |z0#0| Tclass._module.ZOT) ($IsAllocBox |z0#0| Tclass._module.ZOT $Heap))) (and (and ($IsBox |z1#0| Tclass._module.SubZOT) ($IsAllocBox |z1#0| Tclass._module.SubZOT $Heap)) (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap)))) (=> (and (and (and (and ($Is DatatypeTypeType |forever#0| Tclass._module.Forever) ($IsAlloc DatatypeTypeType |forever#0| Tclass._module.Forever $Heap)) (|$IsA#_module.Forever| |forever#0|)) (and ($Is IMapType |m#0| (TIMap TInt TInt)) ($IsAlloc IMapType |m#0| (TIMap TInt TInt) $Heap))) (and (and ($Is (MapType0Type BoxType boolType) |s#0| (TISet TInt)) ($IsAlloc (MapType0Type BoxType boolType) |s#0| (TISet TInt) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 11) 10)))) anon0_correct)))))
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
