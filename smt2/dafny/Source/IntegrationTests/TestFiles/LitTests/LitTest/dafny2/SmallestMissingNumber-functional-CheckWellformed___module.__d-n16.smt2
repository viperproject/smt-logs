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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IntRange (T@U Bool Int Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.IntRange#canCall| (Int Int) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun reveal__module._default.IntRange () Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc Tagclass._System.nat tytagFamily$nat)
)
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
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|lo#0| Int) (|len#0| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0| (LitInt |len#0|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0|) (<= (LitInt 0) |len#0|)))) (and (=> (or (not (= (LitInt |len#0|) (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (+ |lo#0| 1) (LitInt (- |len#0| 1)))) (= (_module.__default.IntRange ($LS $ly) true |lo#0| (LitInt |len#0|)) (ite (= (LitInt |len#0|) (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange ($LS $ly) reveal__module._default.IntRange (+ |lo#0| 1) (LitInt (- |len#0| 1))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |lo#0|))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :weight 3
 :skolemid |705|
 :pattern ( (_module.__default.IntRange ($LS $ly) true |lo#0| (LitInt |len#0|)))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) ($reveal Bool) (|lo#0@@0| Int) (|len#0@@0| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0@@0| |len#0@@0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@0|) (<= (LitInt 0) |len#0@@0|)))) (and (and (= (|Set#Card| (_module.__default.IntRange $ly@@0 $reveal |lo#0@@0| |len#0@@0|)) |len#0@@0|) (forall ((|x#0@@0| T@U) ) (! (= (|Set#IsMember| (_module.__default.IntRange $ly@@0 $reveal |lo#0@@0| |len#0@@0|) ($Box intType |x#0@@0|))  (and (<= |lo#0@@0| (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) (+ |lo#0@@0| |len#0@@0|))))
 :qid |SmallestMissingNumberfunctionaldfy.221:18|
 :skolemid |701|
 :pattern ( (|Set#IsMember| (_module.__default.IntRange $ly@@0 $reveal |lo#0@@0| |len#0@@0|) ($Box intType |x#0@@0|)))
))) ($Is SetType (_module.__default.IntRange $ly@@0 $reveal |lo#0@@0| |len#0@@0|) (TSet Tclass._System.nat))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |702|
 :pattern ( (_module.__default.IntRange $ly@@0 $reveal |lo#0@@0| |len#0@@0|))
))))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@10 b@@7) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@10 o@@3)) (not (|Set#IsMember| b@@7 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@10 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@10 b@@7))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@4)  (or (|Set#IsMember| a@@11 o@@4) (|Set#IsMember| b@@8 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@4))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@9) a@@12) b@@9) (= (|Set#Difference| (|Set#Union| a@@12 b@@9) b@@9) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@12 b@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|lo#0@@1| Int) (|len#0@@1| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0@@1| |len#0@@1|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@1|) (<= (LitInt 0) |len#0@@1|)))) (and (=> (or (not (= |len#0@@1| (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (+ |lo#0@@1| 1) (- |len#0@@1| 1))) (= (_module.__default.IntRange ($LS $ly@@1) true |lo#0@@1| |len#0@@1|) (ite (= |len#0@@1| (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange $ly@@1 reveal__module._default.IntRange (+ |lo#0@@1| 1) (- |len#0@@1| 1)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |lo#0@@1|))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |704|
 :pattern ( (_module.__default.IntRange ($LS $ly@@1) true |lo#0@@1| |len#0@@1|))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@13 b@@10)) (|Set#Card| (|Set#Difference| b@@10 a@@13))) (|Set#Card| (|Set#Intersection| a@@13 b@@10))) (|Set#Card| (|Set#Union| a@@13 b@@10))) (= (|Set#Card| (|Set#Difference| a@@13 b@@10)) (- (|Set#Card| a@@13) (|Set#Card| (|Set#Intersection| a@@13 b@@10)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@13 b@@10)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
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
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)) (|Set#Union| a@@14 b@@11))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Intersection| a@@15 (|Set#Intersection| a@@15 b@@12)) (|Set#Intersection| a@@15 b@@12))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@15 (|Set#Intersection| a@@15 b@@12)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|lo#0@@2| Int) (|len#0@@2| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| (LitInt |lo#0@@2|) (LitInt |len#0@@2|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@2|) (<= (LitInt 0) |len#0@@2|)))) (and (=> (or (not (= (LitInt |len#0@@2|) (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (LitInt (+ |lo#0@@2| 1)) (LitInt (- |len#0@@2| 1)))) (= (_module.__default.IntRange ($LS $ly@@2) true (LitInt |lo#0@@2|) (LitInt |len#0@@2|)) (ite (= (LitInt |len#0@@2|) (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange ($LS $ly@@2) reveal__module._default.IntRange (LitInt (+ |lo#0@@2| 1)) (LitInt (- |len#0@@2| 1))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt |lo#0@@2|)))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :weight 3
 :skolemid |706|
 :pattern ( (_module.__default.IntRange ($LS $ly@@2) true (LitInt |lo#0@@2|) (LitInt |len#0@@2|)))
))))
(assert (forall (($ly@@3 T@U) ($reveal@@0 Bool) (|lo#0@@3| Int) (|len#0@@3| Int) ) (! (= (_module.__default.IntRange ($LS $ly@@3) $reveal@@0 |lo#0@@3| |len#0@@3|) (_module.__default.IntRange $ly@@3 $reveal@@0 |lo#0@@3| |len#0@@3|))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |699|
 :pattern ( (_module.__default.IntRange ($LS $ly@@3) $reveal@@0 |lo#0@@3| |len#0@@3|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |778|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@16 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@16 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@16 x@@10)) (|Set#Card| a@@16)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@16 x@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert (forall ((a@@17 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@17 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@17 x@@13)) (+ (|Set#Card| a@@17) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@17 x@@13)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#2@0| () Int)
(declare-fun |lo#0@@4| () Int)
(declare-fun $LZ () T@U)
(declare-fun |len#0@@4| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |##lo#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##len#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.IntRange)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon4_correct true))
(let ((anon10_Else_correct  (=> (and (< |x#2@0| |lo#0@@4|) (= (ControlFlow 0 12) 10)) anon4_correct)))
(let ((anon10_Then_correct  (=> (and (<= |lo#0@@4| |x#2@0|) (= (ControlFlow 0 11) 10)) anon4_correct)))
(let ((anon9_Then_correct  (=> ($Is SetType (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) (TSet Tclass._System.nat)) (=> (and ($Is SetType |s#0| (TSet Tclass._System.nat)) (= (|Set#Card| |s#0|) |len#0@@4|)) (and (=> (= (ControlFlow 0 13) 11) anon10_Then_correct) (=> (= (ControlFlow 0 13) 12) anon10_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Set#Card| |s#0|) |len#0@@4|)) (=> (= (|Set#Card| |s#0|) |len#0@@4|) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|x#1| Int) ) (! (= (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#1|)))  (and (<= |lo#0@@4| |x#1|) (< |x#1| (+ |lo#0@@4| |len#0@@4|))))
 :qid |SmallestMissingNumberfunctionaldfy.221:18|
 :skolemid |707|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#1|))))
)))))))
(let ((anon11_Else_correct  (=> (or (not (= |len#0@@4| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 9)) ($Is intType (int_2_U (+ |lo#0@@4| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |lo#0@@4| 1)) Tclass._System.nat) (=> (and (= |##lo#0@0| (+ |lo#0@@4| 1)) ($IsAlloc intType (int_2_U |##lo#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($Is intType (int_2_U (- |len#0@@4| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |len#0@@4| 1)) Tclass._System.nat) (=> (and (= |##len#0@0| (- |len#0@@4| 1)) ($IsAlloc intType (int_2_U |##len#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (<= 0 |len#0@@4|) (= |##len#0@0| |len#0@@4|))) (=> (or (<= 0 |len#0@@4|) (= |##len#0@0| |len#0@@4|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< |##len#0@0| |len#0@@4|)) (=> (< |##len#0@0| |len#0@@4|) (=> (and (|_module.__default.IntRange#canCall| (+ |lo#0@@4| 1) (- |len#0@@4| 1)) (= (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) (|Set#Union| (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange (+ |lo#0@@4| 1) (- |len#0@@4| 1)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |lo#0@@4|)))))) (=> (and (and (|_module.__default.IntRange#canCall| (+ |lo#0@@4| 1) (- |len#0@@4| 1)) ($Is SetType (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) (TSet Tclass._System.nat))) (and (= (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) |s#0|) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct)))))))))))))))
(let ((anon11_Then_correct  (=> (= |len#0@@4| (LitInt 0)) (=> (and (and (= (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) (Lit SetType |Set#Empty|)) ($Is SetType (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) (TSet Tclass._System.nat))) (and (= (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |lo#0@@4| |len#0@@4|) |s#0|) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 14) 13) anon9_Then_correct) (=> (= (ControlFlow 0 14) 4) anon11_Then_correct)) (=> (= (ControlFlow 0 14) 5) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (<= (LitInt 0) |lo#0@@4|) (<= (LitInt 0) |len#0@@4|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
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
