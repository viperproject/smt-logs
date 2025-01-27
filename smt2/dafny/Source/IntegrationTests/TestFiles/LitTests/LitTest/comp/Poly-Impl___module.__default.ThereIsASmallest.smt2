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
(declare-fun TReal () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Shape? () T@U)
(declare-fun Tagclass._module.Shape () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Shape () T@U)
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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Shape () T@U)
(declare-fun Tclass._module.Shape? () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Shape.Center (T@U T@U) T@U)
(declare-fun |_module.Shape.Center#canCall| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Shape (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TReal TagReal TagSet alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Shape? Tagclass._module.Shape |tytagFamily$_tuple#2| tytagFamily$Shape)
)
(assert (= (Tag TReal) TagReal))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Shape $h) ($IsAlloc refType |c#0| Tclass._module.Shape? $h))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Shape $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Shape? $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.Shape? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc refType $o Tclass._module.Shape? $h@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
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
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Shape?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Shape?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@0 Tclass._module.Shape?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Shape) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Shape)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@1 Tclass._module.Shape))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Shape)  (and ($Is refType |c#0@@0| Tclass._module.Shape?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Shape))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Shape?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TReal) (and (= ($Box realType ($Unbox realType bx@@2)) bx@@2) ($Is realType ($Unbox realType bx@@2) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@2 TReal))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
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
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Shape.Center#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Shape) ($IsAlloc refType this Tclass._module.Shape $Heap)))))) ($Is DatatypeTypeType (_module.Shape.Center $Heap this) (Tclass._System.Tuple2 TReal TReal)))
 :qid |Polydfy.5:12|
 :skolemid |571|
 :pattern ( (_module.Shape.Center $Heap this))
))))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |628|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (= (Tag Tclass._module.Shape?) Tagclass._module.Shape?))
(assert (= (TagFamily Tclass._module.Shape?) tytagFamily$Shape))
(assert (= (Tag Tclass._module.Shape) Tagclass._module.Shape))
(assert (= (TagFamily Tclass._module.Shape) tytagFamily$Shape))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Shape?)  (or (= $o@@1 null) (implements$_module.Shape (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Is refType $o@@1 Tclass._module.Shape?))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@6 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@6 b@@3))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@2))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@3))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@4 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |shape#0@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |shape#0@0| () T@U)
(declare-fun |shape'#0_0@0| () T@U)
(declare-fun |s'#1_0@0| () T@U)
(declare-fun |call2formal@shape#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@shape#0@0| () T@U)
(declare-fun |eg$shape'#0@0| () T@U)
(declare-fun |shape#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#shape#0| () Bool)
(declare-fun |shape#0| () T@U)
(declare-fun |shape'#0_0| () T@U)
(declare-fun |s'#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.ThereIsASmallest)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon8_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#IsMember| |s#0| ($Box refType |shape#0@1|))) (=> (|Set#IsMember| |s#0| ($Box refType |shape#0@1|)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|shape'#1| T@U) ) (!  (=> ($Is refType |shape'#1| Tclass._module.Shape) (=> (|Set#IsMember| |s#0| ($Box refType |shape'#1|)) (<= (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@1 |shape#0@1|)))) (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@1 |shape'#1|)))))))
 :qid |Polydfy.64:32|
 :skolemid |497|
 :pattern ( (_module.Shape.Center $Heap@1 |shape'#1|))
 :pattern ( (|Set#IsMember| |s#0| ($Box refType |shape'#1|)))
))))))))
(let ((anon12_Else_correct  (=> (and (and (not (exists ((|eg$shape'#1| T@U) ) (!  (and ($Is refType |eg$shape'#1| Tclass._module.Shape) (and (|Set#IsMember| |s#0| ($Box refType |eg$shape'#1|)) (< (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@@0 |eg$shape'#1|)))) (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@@0 |shape#0@0|)))))))
 :qid |Polydfy.67:6|
 :skolemid |501|
 :pattern ( (_module.Shape.Center $Heap@@0 |eg$shape'#1|))
 :pattern ( (|Set#IsMember| |s#0| ($Box refType |eg$shape'#1|)))
))) (= |shape#0@1| |shape#0@0|)) (and (= $Heap@1 $Heap@@0) (= (ControlFlow 0 10) 2))) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (|Set#IsMember| |s#0| ($Box refType |shape'#0_0@0|)) (< (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@@0 |shape'#0_0@0|)))) (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@@0 |shape#0@0|)))))) (and (=> (= (ControlFlow 0 5) (- 0 9)) true) (=> (= |s'#1_0@0| (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box refType |shape#0@0|)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#0_0@0|))) (=> (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#0_0@0|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (|Set#Subset| |s'#1_0@0| |s#0|) (not (|Set#Subset| |s#0| |s'#1_0@0|)))) (=> (and (|Set#Subset| |s'#1_0@0| |s#0|) (not (|Set#Subset| |s#0| |s'#1_0@0|))) (=> (and ($Is refType |call2formal@shape#0| Tclass._module.Shape) ($IsAlloc refType |call2formal@shape#0| Tclass._module.Shape $Heap@@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (not (|Set#Equal| |s'#1_0@0| |Set#Empty|))) (=> (not (|Set#Equal| |s'#1_0@0| |Set#Empty|)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and ($Is refType |call2formal@shape#0@0| Tclass._module.Shape) ($IsAlloc refType |call2formal@shape#0@0| Tclass._module.Shape $Heap@0)) (=> (|Set#IsMember| |s'#1_0@0| ($Box refType |call2formal@shape#0@0|)) (forall ((|shape'#1@@0| T@U) ) (!  (=> ($Is refType |shape'#1@@0| Tclass._module.Shape) (=> (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#1@@0|)) (and (and (|_module.Shape.Center#canCall| $Heap@0 |call2formal@shape#0@0|) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@0 |call2formal@shape#0@0|))) (and (|_module.Shape.Center#canCall| $Heap@0 |shape'#1@@0|) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@0 |shape'#1@@0|))))))
 :qid |Polydfy.64:32|
 :skolemid |494|
 :pattern ( (_module.Shape.Center $Heap@0 |shape'#1@@0|))
 :pattern ( (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#1@@0|)))
)))) (and (|Set#IsMember| |s'#1_0@0| ($Box refType |call2formal@shape#0@0|)) (forall ((|shape'#1@@1| T@U) ) (!  (=> ($Is refType |shape'#1@@1| Tclass._module.Shape) (=> (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#1@@1|)) (<= (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@0 |call2formal@shape#0@0|)))) (U_2_real ($Unbox realType (_System.Tuple2._0 (_module.Shape.Center $Heap@0 |shape'#1@@1|)))))))
 :qid |Polydfy.64:32|
 :skolemid |495|
 :pattern ( (_module.Shape.Center $Heap@0 |shape'#1@@1|))
 :pattern ( (|Set#IsMember| |s'#1_0@0| ($Box refType |shape'#1@@1|)))
)))) (and (and (= $Heap@@0 $Heap@0) (= |shape#0@1| |call2formal@shape#0@0|)) (and (= $Heap@1 $Heap@0) (= (ControlFlow 0 5) 2)))) anon8_correct))))))))))))))
(let ((anon5_correct  (=> (forall ((|eg$shape'#1@@0| T@U) ) (!  (=> ($Is refType |eg$shape'#1@@0| Tclass._module.Shape) (=> (|Set#IsMember| |s#0| ($Box refType |eg$shape'#1@@0|)) (and (and (|_module.Shape.Center#canCall| $Heap@@0 |eg$shape'#1@@0|) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |eg$shape'#1@@0|))) (and (|_module.Shape.Center#canCall| $Heap@@0 |shape#0@0|) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |shape#0@0|))))))
 :qid |Polydfy.67:6|
 :skolemid |499|
 :pattern ( (_module.Shape.Center $Heap@@0 |eg$shape'#1@@0|))
 :pattern ( (|Set#IsMember| |s#0| ($Box refType |eg$shape'#1@@0|)))
)) (=> (and ($Is refType |shape'#0_0@0| Tclass._module.Shape) ($IsAlloc refType |shape'#0_0@0| Tclass._module.Shape $Heap@@0)) (and (=> (= (ControlFlow 0 11) 5) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct))))))
(let ((anon11_Else_correct  (=> (and (not (|Set#IsMember| |s#0| ($Box refType |eg$shape'#0@0|))) (= (ControlFlow 0 17) 11)) anon5_correct)))
(let ((anon11_Then_correct  (=> (|Set#IsMember| |s#0| ($Box refType |eg$shape'#0@0|)) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (not (= |eg$shape'#0@0| null)) (not true))) (=> (or (not (= |eg$shape'#0@0| null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType |eg$shape'#0@0|) Tclass._module.Shape? $Heap@@0) (|_module.Shape.Center#canCall| $Heap@@0 |eg$shape'#0@0|)) (and (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |eg$shape'#0@0|)) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |eg$shape'#0@0|)))) (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |shape#0@0| null)) (not true))) (=> (or (not (= |shape#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |shape#0@0|) Tclass._module.Shape? $Heap@@0) (=> (and (and (|_module.Shape.Center#canCall| $Heap@@0 |shape#0@0|) (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |shape#0@0|))) (and (_System.Tuple2.___hMake2_q (_module.Shape.Center $Heap@@0 |shape#0@0|)) (= (ControlFlow 0 13) 11))) anon5_correct)))))))))))
(let ((anon10_Then_correct  (=> (and ($Is refType |eg$shape'#0@0| Tclass._module.Shape) ($IsAlloc refType |eg$shape'#0@0| Tclass._module.Shape $Heap@@0)) (and (=> (= (ControlFlow 0 18) 13) anon11_Then_correct) (=> (= (ControlFlow 0 18) 17) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and ($Is refType |eg$shape'#0@0| Tclass._module.Shape) ($IsAlloc refType |eg$shape'#0@0| Tclass._module.Shape $Heap@@0))) (= (ControlFlow 0 12) 11)) anon5_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (and ($Is refType null Tclass._module.Shape) (|Set#IsMember| |s#0| ($Box refType null))) (exists ((|$as#shape0#0| T@U) ) (!  (and ($Is refType |$as#shape0#0| Tclass._module.Shape) (|Set#IsMember| |s#0| ($Box refType |$as#shape0#0|)))
 :qid |Polydfy.66:3|
 :skolemid |498|
)))) (=> (or (and ($Is refType null Tclass._module.Shape) (|Set#IsMember| |s#0| ($Box refType null))) (exists ((|$as#shape0#0@@0| T@U) ) (!  (and ($Is refType |$as#shape0#0@@0| Tclass._module.Shape) (|Set#IsMember| |s#0| ($Box refType |$as#shape0#0@@0|)))
 :qid |Polydfy.66:3|
 :skolemid |498|
))) (=> (and (=> true (and ($Is refType |shape#0@0| Tclass._module.Shape) ($IsAlloc refType |shape#0@0| Tclass._module.Shape $Heap@@0))) (|Set#IsMember| |s#0| ($Box refType |shape#0@0|))) (and (=> (= (ControlFlow 0 19) 18) anon10_Then_correct) (=> (= (ControlFlow 0 19) 12) anon10_Else_correct)))))))
(let ((anon9_Else_correct  (=> (and (not (and ($Is refType |shape#1@0| Tclass._module.Shape) ($IsAlloc refType |shape#1@0| Tclass._module.Shape $Heap@@0))) (= (ControlFlow 0 22) 19)) anon2_correct)))
(let ((anon9_Then_correct  (=> (and (and ($Is refType |shape#1@0| Tclass._module.Shape) ($IsAlloc refType |shape#1@0| Tclass._module.Shape $Heap@@0)) (= (ControlFlow 0 21) 19)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 23) 21) anon9_Then_correct) (=> (= (ControlFlow 0 23) 22) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is SetType |s#0| (TSet Tclass._module.Shape)) ($IsAlloc SetType |s#0| (TSet Tclass._module.Shape) $Heap@@0)) (=> |defass#shape#0| (and ($Is refType |shape#0| Tclass._module.Shape) ($IsAlloc refType |shape#0| Tclass._module.Shape $Heap@@0)))) (and (and ($Is refType |shape'#0_0| Tclass._module.Shape) ($IsAlloc refType |shape'#0_0| Tclass._module.Shape $Heap@@0)) true)) (=> (and (and (and (and ($Is SetType |s'#1_0| (TSet Tclass._module.Shape)) ($IsAlloc SetType |s'#1_0| (TSet Tclass._module.Shape) $Heap@@0)) true) (= 2 $FunctionContextHeight)) (and (not (|Set#Equal| |s#0| |Set#Empty|)) (= (ControlFlow 0 24) 23))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
