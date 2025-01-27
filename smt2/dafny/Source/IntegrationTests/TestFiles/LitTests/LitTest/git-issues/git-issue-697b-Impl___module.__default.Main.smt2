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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.EvenCell () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun |##_module.Cell.Cell| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$EvenCell () T@U)
(declare-fun tytagFamily$Cell () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._module.EvenCell () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun _module.Cell.Cell_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.doubleEvenCell (T@U) Int)
(declare-fun |_module.__default.doubleEvenCell#canCall| (T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun _module.Cell.x (T@U) Int)
(declare-fun Div (Int Int) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun |#_module.Cell.Cell| (Int) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |lambda#3| () T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.EvenCell Tagclass._module.Cell |##_module.Cell.Cell| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$EvenCell tytagFamily$Cell)
)
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |gitissue697bdfy.4:6|
 :skolemid |507|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@2 T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@2 b t)) a@@2)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@2 b t)))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@3 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@3 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |c#0| Tclass._module.EvenCell $h@@0) ($IsAlloc DatatypeTypeType |c#0| Tclass._module.Cell $h@@0))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc DatatypeTypeType |c#0| Tclass._module.EvenCell $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Cell) (_module.Cell.Cell_q d@@0))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.Cell.Cell_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Cell))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor MapType) 5))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@4 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@4 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@4 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Cell.Cell_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Cell.Cell|))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (_module.Cell.Cell_q d@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|c#0@@0| T@U) ) (!  (=> (or (|_module.__default.doubleEvenCell#canCall| (Lit DatatypeTypeType |c#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@0| Tclass._module.EvenCell))) (and (and (_module.Cell.Cell_q (Lit DatatypeTypeType |c#0@@0|)) (=> (or (not (= (LitInt (Mod (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|)) (LitInt 2))) (LitInt 1))) (not true)) (_module.Cell.Cell_q (Lit DatatypeTypeType |c#0@@0|)))) (= (_module.__default.doubleEvenCell (Lit DatatypeTypeType |c#0@@0|)) (ite (= (LitInt (Mod (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|)) (LitInt 2))) (LitInt 1)) (Div 1 (LitInt 0)) (Mul (LitInt (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|))) (LitInt 2))))))
 :qid |gitissue697bdfy.6:25|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.doubleEvenCell (Lit DatatypeTypeType |c#0@@0|)))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Cell.Cell_q d@@4) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@4 (|#_module.Cell.Cell| |a#1#0#0@@0|))
 :qid |gitissue697bdfy.3:22|
 :skolemid |493|
)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (_module.Cell.Cell_q d@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|c#0@@1| T@U) ) (!  (=> (or (|_module.__default.doubleEvenCell#canCall| |c#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@1| Tclass._module.EvenCell))) (and (and (_module.Cell.Cell_q |c#0@@1|) (=> (or (not (= (Mod (_module.Cell.x |c#0@@1|) (LitInt 2)) (LitInt 1))) (not true)) (_module.Cell.Cell_q |c#0@@1|))) (= (_module.__default.doubleEvenCell |c#0@@1|) (ite (= (Mod (_module.Cell.x |c#0@@1|) (LitInt 2)) (LitInt 1)) (Div 1 (LitInt 0)) (Mul (_module.Cell.x |c#0@@1|) (LitInt 2))))))
 :qid |gitissue697bdfy.6:25|
 :skolemid |482|
 :pattern ( (_module.__default.doubleEvenCell |c#0@@1|))
))))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.EvenCell) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.EvenCell)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass._module.EvenCell))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cell) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cell))
)))
(assert (forall ((x@@8 Int) (y@@0 Int) ) (! (= (Div x@@8 y@@0) (div x@@8 y@@0))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y@@0))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
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
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#_module.Cell.Cell| |a#0#0#0@@0|)) |##_module.Cell.Cell|)
 :qid |gitissue697bdfy.3:22|
 :skolemid |491|
 :pattern ( (|#_module.Cell.Cell| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (_module.Cell.x (|#_module.Cell.Cell| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |gitissue697bdfy.3:22|
 :skolemid |498|
 :pattern ( (|#_module.Cell.Cell| |a#4#0#0@@0|))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7) t1@@1 h@@1) ($IsAllocBox bx@@7 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is DatatypeTypeType |c#0@@2| Tclass._module.EvenCell)  (and ($Is DatatypeTypeType |c#0@@2| Tclass._module.Cell) (= (Mod (_module.Cell.x |c#0@@2|) (LitInt 2)) (LitInt 0))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is DatatypeTypeType |c#0@@2| Tclass._module.EvenCell))
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
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@1|) Tclass._module.Cell) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |gitissue697bdfy.3:22|
 :skolemid |495|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0@@1|) Tclass._module.Cell))
)))
(assert (forall ((bx@@8 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@8 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |506|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@10 Int) (y@@1 Int) ) (! (= (Mod x@@10 y@@1) (mod x@@10 y@@1))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@10 y@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Cell.Cell_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Cell $h@@2))) ($IsAlloc intType (int_2_U (_module.Cell.x d@@5)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Cell.x d@@5)) TInt $h@@2))
)))
(assert (forall ((x@@11 Int) (y@@2 Int) ) (! (= (Mul x@@11 y@@2) (* x@@11 y@@2))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@11 y@@2))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@10 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@9)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@11) t1@@3) ($IsBox bx@@11 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((d@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@7 Tclass._module.Cell)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Cell $h@@3))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Cell $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.EvenCell) Tagclass._module.EvenCell))
(assert (= (TagFamily Tclass._module.EvenCell) tytagFamily$EvenCell))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#3| |$w#0@@0|) ($Box intType (int_2_U (_module.Cell.x ($Unbox DatatypeTypeType |$w#0@@0|)))))
 :qid |gitissue697bdfy.13:32|
 :skolemid |508|
 :pattern ( (MapType0Select BoxType BoxType |lambda#3| |$w#0@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#_module.Cell.Cell| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Cell.Cell| |a#3#0#0@@0|)))
 :qid |gitissue697bdfy.3:22|
 :skolemid |497|
 :pattern ( (|#_module.Cell.Cell| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0@0| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun |z#0@0| () T@U)
(declare-fun |c#3@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0@@1| () T@U)
(declare-fun |z#0| () T@U)
(declare-fun |y#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon6_correct  (=> (and (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass._module.EvenCell) (=> (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2|)) (|_module.__default.doubleEvenCell#canCall| |c#2|)))
 :qid |gitissue697bdfy.15:19|
 :skolemid |490|
 :pattern ( (_module.__default.doubleEvenCell |c#2|))
 :pattern ( (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2|)))
)) (= |b#0@0| (forall ((|c#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2@@0| Tclass._module.EvenCell) (=> (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2@@0|)) (> (_module.__default.doubleEvenCell |c#2@@0|) 0)))
 :qid |gitissue697bdfy.15:19|
 :skolemid |489|
 :pattern ( (_module.__default.doubleEvenCell |c#2@@0|))
 :pattern ( (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) |b#0@0|) (=> |b#0@0| (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#IsMember| (|Map#Domain| |z#0@0|) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 2)))))))))))
(let ((anon10_Else_correct  (=> (and (not (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#3@0|))) (= (ControlFlow 0 6) 2)) anon6_correct)))
(let ((anon10_Then_correct  (=> (and (and (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#3@0|)) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap)) (and (|_module.__default.doubleEvenCell#canCall| |c#3@0|) (= (ControlFlow 0 5) 2))) anon6_correct)))
(let ((anon9_Then_correct  (=> (and ($Is DatatypeTypeType |c#3@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap)) (and (=> (= (ControlFlow 0 7) 5) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |c#3@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap))) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) ($Is MapType (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| Tclass._module.EvenCell |x#0@0|)) |lambda#3| (TMap Tclass._module.EvenCell TInt)) (TMap Tclass._module.EvenCell Tclass._System.nat))) (=> ($Is MapType (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| Tclass._module.EvenCell |x#0@0|)) |lambda#3| (TMap Tclass._module.EvenCell TInt)) (TMap Tclass._module.EvenCell Tclass._System.nat)) (=> (forall ((|c#1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1| Tclass._module.EvenCell) (=> (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#1|)) (_module.Cell.Cell_q |c#1|)))
 :qid |gitissue697bdfy.13:36|
 :skolemid |488|
 :pattern ( (_module.Cell.x |c#1|))
 :pattern ( (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#1|)))
)) (=> (and (= |z#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| Tclass._module.EvenCell |x#0@0|)) |lambda#3| (TMap Tclass._module.EvenCell TInt))) (= |y#0@0| (|Map#Domain| |z#0@0|))) (and (=> (= (ControlFlow 0 8) 7) anon9_Then_correct) (=> (= (ControlFlow 0 8) 4) anon9_Else_correct))))))))
(let ((anon8_Else_correct  (=> (and (not (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#0@0|))) (= (ControlFlow 0 12) 8)) anon3_correct)))
(let ((anon8_Then_correct  (=> (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#0@0|)) (=> (and (_module.Cell.Cell_q |c#0@0|) (= (ControlFlow 0 11) 8)) anon3_correct))))
(let ((anon7_Then_correct  (=> (and ($Is DatatypeTypeType |c#0@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#0@0| Tclass._module.EvenCell $Heap)) (and (=> (= (ControlFlow 0 13) 11) anon8_Then_correct) (=> (= (ControlFlow 0 13) 12) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |c#0@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#0@0| Tclass._module.EvenCell $Heap))) (= (ControlFlow 0 10) 8)) anon3_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 1))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 2))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 3))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 4)))))))) (and (=> (= (ControlFlow 0 14) 13) anon7_Then_correct) (=> (= (ControlFlow 0 14) 10) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is SetType |x#0@@1| (TSet Tclass._module.Cell)) ($IsAlloc SetType |x#0@@1| (TSet Tclass._module.Cell) $Heap)) true) (and (and ($Is MapType |z#0| (TMap Tclass._module.EvenCell Tclass._System.nat)) ($IsAlloc MapType |z#0| (TMap Tclass._module.EvenCell Tclass._System.nat) $Heap)) true)) (and (and (and ($Is SetType |y#0| (TSet Tclass._module.EvenCell)) ($IsAlloc SetType |y#0| (TSet Tclass._module.EvenCell) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 15) 14)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
