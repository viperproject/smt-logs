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
(declare-fun Tagclass._module.EvenCell () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun |##_module.Cell.Cell| () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.EvenCell () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun _module.Cell.Cell_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._module.EvenCell Tagclass._module.Cell |##_module.Cell.Cell| tytagFamily$EvenCell tytagFamily$Cell)
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |gitissue697dfy.4:6|
 :skolemid |506|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |c#0| Tclass._module.EvenCell $h) ($IsAlloc DatatypeTypeType |c#0| Tclass._module.Cell $h))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAlloc DatatypeTypeType |c#0| Tclass._module.EvenCell $h))
)))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Cell) (_module.Cell.Cell_q d))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (_module.Cell.Cell_q d) ($Is DatatypeTypeType d Tclass._module.Cell))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Cell.Cell_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Cell.Cell|))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_module.Cell.Cell_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|c#0@@0| T@U) ) (!  (=> (or (|_module.__default.doubleEvenCell#canCall| (Lit DatatypeTypeType |c#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@0| Tclass._module.EvenCell))) (and (and (_module.Cell.Cell_q (Lit DatatypeTypeType |c#0@@0|)) (=> (or (not (= (LitInt (Mod (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|)) (LitInt 2))) (LitInt 1))) (not true)) (_module.Cell.Cell_q (Lit DatatypeTypeType |c#0@@0|)))) (= (_module.__default.doubleEvenCell (Lit DatatypeTypeType |c#0@@0|)) (ite (= (LitInt (Mod (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|)) (LitInt 2))) (LitInt 1)) (Div 1 (LitInt 0)) (Mul (LitInt (_module.Cell.x (Lit DatatypeTypeType |c#0@@0|))) (LitInt 2))))))
 :qid |gitissue697dfy.6:25|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.doubleEvenCell (Lit DatatypeTypeType |c#0@@0|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Cell.Cell_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#_module.Cell.Cell| |a#1#0#0|))
 :qid |gitissue697dfy.3:22|
 :skolemid |492|
)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (_module.Cell.Cell_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|c#0@@1| T@U) ) (!  (=> (or (|_module.__default.doubleEvenCell#canCall| |c#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@1| Tclass._module.EvenCell))) (and (and (_module.Cell.Cell_q |c#0@@1|) (=> (or (not (= (Mod (_module.Cell.x |c#0@@1|) (LitInt 2)) (LitInt 1))) (not true)) (_module.Cell.Cell_q |c#0@@1|))) (= (_module.__default.doubleEvenCell |c#0@@1|) (ite (= (Mod (_module.Cell.x |c#0@@1|) (LitInt 2)) (LitInt 1)) (Div 1 (LitInt 0)) (Mul (_module.Cell.x |c#0@@1|) (LitInt 2))))))
 :qid |gitissue697dfy.6:25|
 :skolemid |482|
 :pattern ( (_module.__default.doubleEvenCell |c#0@@1|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.EvenCell) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.EvenCell)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@1 Tclass._module.EvenCell))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Cell) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@2 Tclass._module.Cell))
)))
(assert (forall ((x@@8 Int) (y@@0 Int) ) (! (= (Div x@@8 y@@0) (div x@@8 y@@0))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y@@0))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
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
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Cell.Cell| |a#0#0#0|)) |##_module.Cell.Cell|)
 :qid |gitissue697dfy.3:22|
 :skolemid |490|
 :pattern ( (|#_module.Cell.Cell| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.Cell.x (|#_module.Cell.Cell| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue697dfy.3:22|
 :skolemid |497|
 :pattern ( (|#_module.Cell.Cell| |a#4#0#0|))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is DatatypeTypeType |c#0@@2| Tclass._module.EvenCell)  (and ($Is DatatypeTypeType |c#0@@2| Tclass._module.Cell) (= (Mod (_module.Cell.x |c#0@@2|) (LitInt 2)) (LitInt 0))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Is DatatypeTypeType |c#0@@2| Tclass._module.EvenCell))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0|) Tclass._module.Cell) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue697dfy.3:22|
 :skolemid |494|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cell.Cell| |a#2#0#0|) Tclass._module.Cell))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
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
 :skolemid |505|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@10 Int) (y@@1 Int) ) (! (= (Mod x@@10 y@@1) (mod x@@10 y@@1))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@10 y@@1))
)))
(assert (forall ((d@@2 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Cell.Cell_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.Cell $h@@0))) ($IsAlloc intType (int_2_U (_module.Cell.x d@@2)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Cell.x d@@2)) TInt $h@@0))
)))
(assert (forall ((x@@11 Int) (y@@2 Int) ) (! (= (Mul x@@11 y@@2) (* x@@11 y@@2))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@11 y@@2))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (forall ((d@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@3 Tclass._module.Cell)) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Cell $h@@1))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Cell $h@@1))
)))
(assert (= (Tag Tclass._module.EvenCell) Tagclass._module.EvenCell))
(assert (= (TagFamily Tclass._module.EvenCell) tytagFamily$EvenCell))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.Cell.Cell| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Cell.Cell| |a#3#0#0|)))
 :qid |gitissue697dfy.3:22|
 :skolemid |496|
 :pattern ( (|#_module.Cell.Cell| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0@0| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun |c#3@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon6_correct  (=> (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass._module.EvenCell) (=> (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2|)) (|_module.__default.doubleEvenCell#canCall| |c#2|)))
 :qid |gitissue697dfy.14:19|
 :skolemid |489|
 :pattern ( (_module.__default.doubleEvenCell |c#2|))
 :pattern ( (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2|)))
)) (=> (and (= |b#0@0| (forall ((|c#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2@@0| Tclass._module.EvenCell) (=> (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2@@0|)) (> (_module.__default.doubleEvenCell |c#2@@0|) 0)))
 :qid |gitissue697dfy.14:19|
 :skolemid |488|
 :pattern ( (_module.__default.doubleEvenCell |c#2@@0|))
 :pattern ( (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#2@@0|)))
))) (= (ControlFlow 0 2) (- 0 1))) |b#0@0|))))
(let ((anon10_Else_correct  (=> (and (not (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#3@0|))) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon10_Then_correct  (=> (and (and (|Set#IsMember| |y#0@0| ($Box DatatypeTypeType |c#3@0|)) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap)) (and (|_module.__default.doubleEvenCell#canCall| |c#3@0|) (= (ControlFlow 0 4) 2))) anon6_correct)))
(let ((anon9_Then_correct  (=> (and ($Is DatatypeTypeType |c#3@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |c#3@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#3@0| Tclass._module.EvenCell $Heap))) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon3_correct  (=> (= |y#0@0| (|Set#FromBoogieMap| (|lambda#2| Tclass._module.EvenCell |x#0@0|))) (and (=> (= (ControlFlow 0 7) 6) anon9_Then_correct) (=> (= (ControlFlow 0 7) 3) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (not (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#0@0|))) (= (ControlFlow 0 10) 7)) anon3_correct)))
(let ((anon8_Then_correct  (=> (and (|Set#IsMember| |x#0@0| ($Box DatatypeTypeType |c#0@0|)) (= (ControlFlow 0 9) 7)) anon3_correct)))
(let ((anon7_Then_correct  (=> (and ($Is DatatypeTypeType |c#0@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#0@0| Tclass._module.EvenCell $Heap)) (and (=> (= (ControlFlow 0 11) 9) anon8_Then_correct) (=> (= (ControlFlow 0 11) 10) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |c#0@0| Tclass._module.EvenCell) ($IsAlloc DatatypeTypeType |c#0@0| Tclass._module.EvenCell $Heap))) (= (ControlFlow 0 8) 7)) anon3_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 1))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 2))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 3))))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Cell.Cell| (LitInt 4)))))))) (and (=> (= (ControlFlow 0 12) 11) anon7_Then_correct) (=> (= (ControlFlow 0 12) 8) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |x#0| (TSet Tclass._module.Cell)) ($IsAlloc SetType |x#0| (TSet Tclass._module.Cell) $Heap)) true) (=> (and (and (and ($Is SetType |y#0| (TSet Tclass._module.EvenCell)) ($IsAlloc SetType |y#0| (TSet Tclass._module.EvenCell) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))))
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
