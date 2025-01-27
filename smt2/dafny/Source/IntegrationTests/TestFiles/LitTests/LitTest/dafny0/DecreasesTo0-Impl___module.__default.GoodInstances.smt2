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
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
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
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |_System.Tuple3#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSet alloc |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 |tytagFamily$_tuple#3|)
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
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|_System.Tuple3#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (|_System.Tuple3#Equal| a@@4 b@@1))
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
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Subset| a@@5 b@@2) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@5 o@@2) (|Set#IsMember| b@@2 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@5 b@@2))
)))
(assert (forall ((d T@U) ) (! (= (_System.Tuple3.___hMake3_q d) (= (DatatypeCtorId d) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple3.___hMake3_q d))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@0) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@0 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |481|
)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.Tuple3.___hMake3_q d@@0))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@1))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_System.Tuple3.___hMake3_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (!  (=> (|Set#Equal| a@@6 b@@3) (= a@@6 b@@3))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@6 b@@3))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (= (Ctor BoxType) 5))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |558|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@9 Int) (y@@1 Int) ) (! (= (Mul x@@9 y@@1) (* x@@9 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@9 y@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple3.___hMake3_q d@@3) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@0))
)))) ($IsAllocBox (_System.Tuple3._0 d@@3) |_System._tuple#3$T0@@7| $h@@0))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@3) |_System._tuple#3$T0@@7| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple3.___hMake3_q d@@4) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@1))
)))) ($IsAllocBox (_System.Tuple3._1 d@@4) |_System._tuple#3$T1@@8| $h@@1))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@4) |_System._tuple#3$T1@@8| $h@@1))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple3.___hMake3_q d@@5) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@2))
)))) ($IsAllocBox (_System.Tuple3._2 d@@5) |_System._tuple#3$T2@@9| $h@@2))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@5) |_System._tuple#3$T2@@9| $h@@2))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_System.Tuple3#Equal| a@@7 b@@4)  (and (and (= (_System.Tuple3._0 a@@7) (_System.Tuple3._0 b@@4)) (= (_System.Tuple3._1 a@@7) (_System.Tuple3._1 b@@4))) (= (_System.Tuple3._2 a@@7) (_System.Tuple3._2 b@@4))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (|_System.Tuple3#Equal| a@@7 b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Equal| a@@8 b@@5) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@8 b@@5))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
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
(declare-fun |y#0| () Int)
(declare-fun |x#0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |s'#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |s'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.GoodInstances)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon2_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (> |y#0| |x#0|) (|_System.Tuple3#Equal| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#0|)) ($Box boolType (bool_2_U (< |x#0| |y#0|))) ($Box intType (int_2_U (- |y#0| 1)))) (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#0|)) ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (- |y#0| 1))))))) (=> (=> (> |y#0| |x#0|) (|_System.Tuple3#Equal| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#0|)) ($Box boolType (bool_2_U (< |x#0| |y#0|))) ($Box intType (int_2_U (- |y#0| 1)))) (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#0|)) ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (- |y#0| 1)))))) (=> (and (= |s#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0|))) ($Box intType (int_2_U |y#0|))) ($Box intType (int_2_U (Mul |x#0| |y#0|))))) (= |s'#0@0| (|Set#Difference| |s#0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and (|Set#Subset| |s#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s#0@0|))) (and (|Set#Equal| |s#0@0| |s#0@0|) (or (and (|Set#Subset| |s#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s#0@0|))) (and (|Set#Equal| |s#0@0| |s#0@0|) (and (|Set#Subset| |s'#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s'#0@0|)))))))) (=> (or (and (|Set#Subset| |s#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s#0@0|))) (and (|Set#Equal| |s#0@0| |s#0@0|) (or (and (|Set#Subset| |s#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s#0@0|))) (and (|Set#Equal| |s#0@0| |s#0@0|) (and (|Set#Subset| |s'#0@0| |s#0@0|) (not (|Set#Subset| |s#0@0| |s'#0@0|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= (LitInt 0) (LitInt 0))))))))))
(let ((anon3_Else_correct  (=> (and (>= |x#0| |y#0|) (= (ControlFlow 0 6) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (> |y#0| |x#0|) (= (ControlFlow 0 5) 2)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (and (not (U_2_bool (Lit boolType (bool_2_U false)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (and (not (U_2_bool (Lit boolType (bool_2_U false)))) (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (< (LitInt 0) (LitInt 1))) (=> (< (LitInt 0) (LitInt 1)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (< (- |x#0| 1) |x#0|)) (=> (< (- |x#0| 1) |x#0|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< |x#0| |x#0|) (and (= |x#0| |x#0|) (< (- |y#0| 1) |y#0|)))) (=> (or (< |x#0| |x#0|) (and (= |x#0| |x#0|) (< (- |y#0| 1) |y#0|))) (and (=> (= (ControlFlow 0 7) 5) anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) anon3_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) true) (=> (and (and (and ($Is SetType |s'#0| (TSet TInt)) ($IsAlloc SetType |s'#0| (TSet TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 12) 7))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
