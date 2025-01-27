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
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Tree.Empty| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun tytagFamily$Tree () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Tree.Node| (Int T@U T@U) T@U)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Tree.Elements (T@U T@U) T@U)
(declare-fun |_module.Tree.Elements#canCall| (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree.root (T@U) Int)
(declare-fun _module.Tree.left (T@U) T@U)
(declare-fun _module.Tree.right (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Tree.Empty_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Tree.Empty| () T@U)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Tree.Sum (T@U T@U) Int)
(declare-fun |_module.Tree.Sum#canCall| (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(declare-fun Mod (Int Int) Int)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._module.Tree |##_module.Tree.Empty| |##_module.Tree.Node| tytagFamily$Tree)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree)  (and (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.Tree)) ($Is DatatypeTypeType |a#6#2#0| Tclass._module.Tree)))
 :qid |Terminationdfy.456:30|
 :skolemid |3620|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree))
)))
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (this T@U) ) (!  (=> (or (|_module.Tree.Elements#canCall| this) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this Tclass._module.Tree))) ($Is SetType (_module.Tree.Elements $ly this) (TSet TInt)))
 :qid |Terminationdfy.458:18|
 :skolemid |3638|
 :pattern ( (_module.Tree.Elements $ly this))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2507|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2508|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2512|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2513|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2506|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |##_module.Tree.Node|)
 :qid |Terminationdfy.456:30|
 :skolemid |3616|
 :pattern ( (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Tree.root (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#0#0|)
 :qid |Terminationdfy.456:30|
 :skolemid |3625|
 :pattern ( (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) (|a#9#2#0| T@U) ) (! (= (_module.Tree.left (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|)) |a#9#1#0|)
 :qid |Terminationdfy.456:30|
 :skolemid |3626|
 :pattern ( (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= (_module.Tree.right (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|)) |a#11#2#0|)
 :qid |Terminationdfy.456:30|
 :skolemid |3628|
 :pattern ( (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2522|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2503|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Tree.Elements#canCall| (Lit DatatypeTypeType this@@0)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Empty_q (Lit DatatypeTypeType this@@0)))))) (let ((|right#3| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType this@@0)))))
(let ((|left#3| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType this@@0)))))
 (and (|_module.Tree.Elements#canCall| |left#3|) (|_module.Tree.Elements#canCall| |right#3|))))) (= (_module.Tree.Elements ($LS $ly@@0) (Lit DatatypeTypeType this@@0)) (ite (_module.Tree.Empty_q (Lit DatatypeTypeType this@@0)) |Set#Empty| (let ((|right#2| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType this@@0)))))
(let ((|left#2| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType this@@0)))))
(let ((|x#2| (LitInt (_module.Tree.root (Lit DatatypeTypeType this@@0)))))
(|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2|))) (_module.Tree.Elements ($LS $ly@@0) |left#2|)) (_module.Tree.Elements ($LS $ly@@0) |right#2|)))))))))
 :qid |Terminationdfy.458:18|
 :weight 3
 :skolemid |3641|
 :pattern ( (_module.Tree.Elements ($LS $ly@@0) (Lit DatatypeTypeType this@@0)))
))))
(assert (= (DatatypeCtorId |#_module.Tree.Empty|) |##_module.Tree.Empty|))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2516|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2521|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert ($Is DatatypeTypeType |#_module.Tree.Empty| Tclass._module.Tree))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Tree.Elements#canCall| this@@1) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass._module.Tree))) (and (=> (not (_module.Tree.Empty_q this@@1)) (let ((|right#1| (_module.Tree.right this@@1)))
(let ((|left#1| (_module.Tree.left this@@1)))
 (and (|_module.Tree.Elements#canCall| |left#1|) (|_module.Tree.Elements#canCall| |right#1|))))) (= (_module.Tree.Elements ($LS $ly@@1) this@@1) (ite (_module.Tree.Empty_q this@@1) |Set#Empty| (let ((|right#0| (_module.Tree.right this@@1)))
(let ((|left#0| (_module.Tree.left this@@1)))
(let ((|x#0| (_module.Tree.root this@@1)))
(|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0|))) (_module.Tree.Elements $ly@@1 |left#0|)) (_module.Tree.Elements $ly@@1 |right#0|)))))))))
 :qid |Terminationdfy.458:18|
 :skolemid |3640|
 :pattern ( (_module.Tree.Elements ($LS $ly@@1) this@@1))
))))
(assert (forall ((d T@U) ) (! (= (_module.Tree.Empty_q d) (= (DatatypeCtorId d) |##_module.Tree.Empty|))
 :qid |unknown.0:0|
 :skolemid |3614|
 :pattern ( (_module.Tree.Empty_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |3617|
 :pattern ( (_module.Tree.Node_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tree.Node_q d@@1) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= d@@1 (|#_module.Tree.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |Terminationdfy.456:30|
 :skolemid |3618|
)))
 :qid |unknown.0:0|
 :skolemid |3619|
 :pattern ( (_module.Tree.Node_q d@@1))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@2)) (not (|Set#IsMember| b@@4 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2529|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2530|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Empty_q d@@2) (= d@@2 |#_module.Tree.Empty|))
 :qid |unknown.0:0|
 :skolemid |3615|
 :pattern ( (_module.Tree.Empty_q d@@2))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2424|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2425|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Tree.Sum#canCall| this@@2) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass._module.Tree))) (and (=> (not (_module.Tree.Empty_q this@@2)) (let ((|right#1@@0| (_module.Tree.right this@@2)))
(let ((|left#1@@0| (_module.Tree.left this@@2)))
 (and (|_module.Tree.Sum#canCall| |left#1@@0|) (|_module.Tree.Sum#canCall| |right#1@@0|))))) (= (_module.Tree.Sum ($LS $ly@@2) this@@2) (ite (_module.Tree.Empty_q this@@2) 0 (let ((|right#0@@0| (_module.Tree.right this@@2)))
(let ((|left#0@@0| (_module.Tree.left this@@2)))
(let ((|x#0@@0| (_module.Tree.root this@@2)))
(+ (+ |x#0@@0| (_module.Tree.Sum $ly@@2 |left#0@@0|)) (_module.Tree.Sum $ly@@2 |right#0@@0|)))))))))
 :qid |Terminationdfy.466:18|
 :skolemid |3648|
 :pattern ( (_module.Tree.Sum ($LS $ly@@2) this@@2))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |3069|
 :pattern ( ($IsBox bx@@0 Tclass._module.Tree))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3)  (or (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2511|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2514|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Tree) (or (_module.Tree.Empty_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |3632|
 :pattern ( (_module.Tree.Node_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
 :pattern ( (_module.Tree.Empty_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Tree.Sum#canCall| (Lit DatatypeTypeType this@@3)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Empty_q (Lit DatatypeTypeType this@@3)))))) (let ((|right#3@@0| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType this@@3)))))
(let ((|left#3@@0| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType this@@3)))))
 (and (|_module.Tree.Sum#canCall| |left#3@@0|) (|_module.Tree.Sum#canCall| |right#3@@0|))))) (= (_module.Tree.Sum ($LS $ly@@3) (Lit DatatypeTypeType this@@3)) (ite (_module.Tree.Empty_q (Lit DatatypeTypeType this@@3)) 0 (let ((|right#2@@0| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType this@@3)))))
(let ((|left#2@@0| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType this@@3)))))
(let ((|x#2@@0| (LitInt (_module.Tree.root (Lit DatatypeTypeType this@@3)))))
(LitInt (+ (+ |x#2@@0| (_module.Tree.Sum ($LS $ly@@3) |left#2@@0|)) (_module.Tree.Sum ($LS $ly@@3) |right#2@@0|))))))))))
 :qid |Terminationdfy.466:18|
 :weight 3
 :skolemid |3649|
 :pattern ( (_module.Tree.Sum ($LS $ly@@3) (Lit DatatypeTypeType this@@3)))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2405|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2445|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2446|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |Terminationdfy.456:30|
 :skolemid |3624|
 :pattern ( (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2379|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2380|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|)))
 :qid |Terminationdfy.456:30|
 :skolemid |3627|
 :pattern ( (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (< (DtRank |a#12#2#0|) (DtRank (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|)))
 :qid |Terminationdfy.456:30|
 :skolemid |3629|
 :pattern ( (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall (($ly@@4 T@U) (this@@4 T@U) ) (! (= (_module.Tree.Elements ($LS $ly@@4) this@@4) (_module.Tree.Elements $ly@@4 this@@4))
 :qid |Terminationdfy.458:18|
 :skolemid |3636|
 :pattern ( (_module.Tree.Elements ($LS $ly@@4) this@@4))
)))
(assert (forall (($ly@@5 T@U) (this@@5 T@U) ) (! (= (_module.Tree.Sum ($LS $ly@@5) this@@5) (_module.Tree.Sum $ly@@5 this@@5))
 :qid |Terminationdfy.466:18|
 :skolemid |3644|
 :pattern ( (_module.Tree.Sum ($LS $ly@@5) this@@5))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Union| a@@10 (|Set#Union| a@@10 b@@7)) (|Set#Union| a@@10 b@@7))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2517|
 :pattern ( (|Set#Union| a@@10 (|Set#Union| a@@10 b@@7)))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |3733|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (Mod x@@9 y@@3) (mod x@@9 y@@3))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2718|
 :pattern ( (Mod x@@9 y@@3))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Tree.Node_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Tree $h))) ($IsAlloc intType (int_2_U (_module.Tree.root d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |3621|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Tree.root d@@4)) TInt $h))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2410|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
 :qid |unknown.0:0|
 :skolemid |3630|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
)))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Empty| (Lit DatatypeTypeType |#_module.Tree.Empty|)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@1))) ($IsAlloc DatatypeTypeType (_module.Tree.left d@@6) Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |3622|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.left d@@6) Tclass._module.Tree $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Tree $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree.right d@@7) Tclass._module.Tree $h@@2))
 :qid |unknown.0:0|
 :skolemid |3623|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.right d@@7) Tclass._module.Tree $h@@2))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2439|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2418|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this@@6 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |_mcc#2#0_0@0| () T@U)
(declare-fun |right#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |left#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun |let#0_2#0#0| () Int)
(declare-fun |x#0_0@0| () Int)
(set-info :boogie-vc-id Impl$$_module.Tree.EvensSumToEvenAutoInduction_split1)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType this@@6 Tclass._module.Tree) ($IsAlloc DatatypeTypeType this@@6 Tclass._module.Tree $Heap)) (= 2 $FunctionContextHeight)) (and (forall ((|u#1| T@U) ) (!  (=> (|Set#IsMember| (_module.Tree.Elements ($LS $LZ) this@@6) ($Box intType |u#1|)) (= (Mod (U_2_int |u#1|) (LitInt 2)) (LitInt 0)))
 :qid |Terminationdfy.504:21|
 :skolemid |3671|
 :pattern ( (|Set#IsMember| (_module.Tree.Elements ($LS $LZ) this@@6) ($Box intType |u#1|)))
)) (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#this0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#this0#0| Tclass._module.Tree) (forall ((|u#2| Int) ) (!  (=> (|Set#IsMember| (_module.Tree.Elements ($LS $LZ) |$ih#this0#0|) ($Box intType (int_2_U |u#2|))) (= (Mod |u#2| (LitInt 2)) (LitInt 0)))
 :qid |Terminationdfy.504:21|
 :skolemid |3672|
 :pattern ( (|Set#IsMember| (_module.Tree.Elements ($LS $LZ) |$ih#this0#0|) ($Box intType (int_2_U |u#2|))))
))) (< (DtRank |$ih#this0#0|) (DtRank this@@6))) (= (Mod (_module.Tree.Sum ($LS $LZ) |$ih#this0#0|) (LitInt 2)) (LitInt 0)))
 :qid |Terminationdfy.503:31|
 :skolemid |3673|
 :pattern ( (_module.Tree.Sum ($LS $LZ) |$ih#this0#0|))
 :pattern ( (_module.Tree.Elements ($LS $LZ) |$ih#this0#0|))
)))) (and (and (or (not (= this@@6 |#_module.Tree.Empty|)) (not true)) (= this@@6 (|#_module.Tree.Node| |_mcc#0#0_0@0| |_mcc#1#0_0@0| |_mcc#2#0_0@0|))) (and ($Is DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.Tree) ($Is DatatypeTypeType |_mcc#2#0_0@0| Tclass._module.Tree)))) (and (and (and ($Is DatatypeTypeType |right#0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |right#0_0@0| Tclass._module.Tree $Heap@0)) (= |let#0_0#0#0| |_mcc#2#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Tree) (= |right#0_0@0| |let#0_0#0#0|)))) (and (and (and (and ($Is DatatypeTypeType |left#0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |left#0_0@0| Tclass._module.Tree $Heap@0)) (= |let#0_1#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_1#0#0| Tclass._module.Tree) (= |left#0_0@0| |let#0_1#0#0|))) (and (and (and (= |let#0_2#0#0| |_mcc#0#0_0@0|) ($Is intType (int_2_U |let#0_2#0#0|) TInt)) (and (= |x#0_0@0| |let#0_2#0#0|) ($IsAllocBox ($Box DatatypeTypeType this@@6) Tclass._module.Tree $Heap@0))) (and (and (|_module.Tree.Elements#canCall| this@@6) (|_module.Tree.Elements#canCall| this@@6)) (and (|Set#IsMember| (_module.Tree.Elements ($LS $LZ) this@@6) ($Box intType (int_2_U |x#0_0@0|))) (= (ControlFlow 0 2) (- 0 1))))))) (< (DtRank |left#0_0@0|) (DtRank this@@6)))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
