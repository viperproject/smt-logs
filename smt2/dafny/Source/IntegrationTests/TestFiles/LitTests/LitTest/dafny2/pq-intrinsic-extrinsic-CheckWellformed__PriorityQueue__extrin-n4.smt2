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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.PriorityQueue__extrinsic.T () T@U)
(declare-fun |##PriorityQueue_extrinsic.T.Leaf| () T@U)
(declare-fun |##PriorityQueue_extrinsic.T.Node| () T@U)
(declare-fun tytagFamily$T () T@U)
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
(declare-fun |#PriorityQueue_extrinsic.T.Node| (Int T@U T@U) T@U)
(declare-fun Tclass.PriorityQueue__extrinsic.T () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun PriorityQueue__extrinsic.__default.Elements (T@U T@U) T@U)
(declare-fun |PriorityQueue__extrinsic.__default.Elements#canCall| (T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun PriorityQueue__extrinsic.T.val (T@U) Int)
(declare-fun PriorityQueue__extrinsic.T.left (T@U) T@U)
(declare-fun PriorityQueue__extrinsic.T.right (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun PriorityQueue__extrinsic.T.Leaf_q (T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#PriorityQueue_extrinsic.T.Leaf| () T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun PriorityQueue__extrinsic.T.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass.PriorityQueue__extrinsic.T |##PriorityQueue_extrinsic.T.Leaf| |##PriorityQueue_extrinsic.T.Node| tytagFamily$T)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#PriorityQueue_extrinsic.T.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass.PriorityQueue__extrinsic.T)  (and (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass.PriorityQueue__extrinsic.T)) ($Is DatatypeTypeType |a#6#2#0| Tclass.PriorityQueue__extrinsic.T)))
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |572|
 :pattern ( ($Is DatatypeTypeType (|#PriorityQueue_extrinsic.T.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass.PriorityQueue__extrinsic.T))
)))
(assert (= (Ctor MultiSetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass.PriorityQueue__extrinsic.T))) ($Is MultiSetType (PriorityQueue__extrinsic.__default.Elements $ly |t#0|) (TMultiSet TInt)))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |539|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements $ly |t#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (DatatypeCtorId (|#PriorityQueue_extrinsic.T.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |##PriorityQueue_extrinsic.T.Node|)
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |568|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (PriorityQueue__extrinsic.T.val (|#PriorityQueue_extrinsic.T.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#0#0|)
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |577|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) (|a#9#2#0| T@U) ) (! (= (PriorityQueue__extrinsic.T.left (|#PriorityQueue_extrinsic.T.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|)) |a#9#1#0|)
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |578|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= (PriorityQueue__extrinsic.T.right (|#PriorityQueue_extrinsic.T.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|)) |a#11#2#0|)
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |580|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Elements#canCall| (Lit DatatypeTypeType |t#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass.PriorityQueue__extrinsic.T))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (PriorityQueue__extrinsic.T.Leaf_q (Lit DatatypeTypeType |t#0@@0|)))))) (let ((|right#3| (Lit DatatypeTypeType (PriorityQueue__extrinsic.T.right (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|left#3| (Lit DatatypeTypeType (PriorityQueue__extrinsic.T.left (Lit DatatypeTypeType |t#0@@0|)))))
 (and (|PriorityQueue__extrinsic.__default.Elements#canCall| |left#3|) (|PriorityQueue__extrinsic.__default.Elements#canCall| |right#3|))))) (= (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)) (ite (PriorityQueue__extrinsic.T.Leaf_q (Lit DatatypeTypeType |t#0@@0|)) |MultiSet#Empty| (let ((|right#2| (Lit DatatypeTypeType (PriorityQueue__extrinsic.T.right (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|left#2| (Lit DatatypeTypeType (PriorityQueue__extrinsic.T.left (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|x#2| (LitInt (PriorityQueue__extrinsic.T.val (Lit DatatypeTypeType |t#0@@0|)))))
(|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#2|))) (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@0) |left#2|)) (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@0) |right#2|)))))))))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :weight 3
 :skolemid |542|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (= (DatatypeCtorId |#PriorityQueue_extrinsic.T.Leaf|) |##PriorityQueue_extrinsic.T.Leaf|))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert ($Is DatatypeTypeType |#PriorityQueue_extrinsic.T.Leaf| Tclass.PriorityQueue__extrinsic.T))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|t#0@@1| T@U) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| Tclass.PriorityQueue__extrinsic.T))) (and (=> (not (PriorityQueue__extrinsic.T.Leaf_q |t#0@@1|)) (let ((|right#1| (PriorityQueue__extrinsic.T.right |t#0@@1|)))
(let ((|left#1| (PriorityQueue__extrinsic.T.left |t#0@@1|)))
 (and (|PriorityQueue__extrinsic.__default.Elements#canCall| |left#1|) (|PriorityQueue__extrinsic.__default.Elements#canCall| |right#1|))))) (= (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@1) |t#0@@1|) (ite (PriorityQueue__extrinsic.T.Leaf_q |t#0@@1|) |MultiSet#Empty| (let ((|right#0| (PriorityQueue__extrinsic.T.right |t#0@@1|)))
(let ((|left#0| (PriorityQueue__extrinsic.T.left |t#0@@1|)))
(let ((|x#0| (PriorityQueue__extrinsic.T.val |t#0@@1|)))
(|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#0|))) (PriorityQueue__extrinsic.__default.Elements $ly@@1 |left#0|)) (PriorityQueue__extrinsic.__default.Elements $ly@@1 |right#0|)))))))))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |541|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@1) |t#0@@1|))
))))
(assert (forall ((d T@U) ) (! (= (PriorityQueue__extrinsic.T.Leaf_q d) (= (DatatypeCtorId d) |##PriorityQueue_extrinsic.T.Leaf|))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (PriorityQueue__extrinsic.T.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (PriorityQueue__extrinsic.T.Node_q d@@0) (= (DatatypeCtorId d@@0) |##PriorityQueue_extrinsic.T.Node|))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (PriorityQueue__extrinsic.T.Node_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (PriorityQueue__extrinsic.T.Node_q d@@1) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= d@@1 (|#PriorityQueue_extrinsic.T.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |570|
)))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (PriorityQueue__extrinsic.T.Node_q d@@1))
)))
(assert (forall ((a T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a x@@5) (|MultiSet#Multiplicity| a y))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (PriorityQueue__extrinsic.T.Leaf_q d@@2) (= d@@2 |#PriorityQueue_extrinsic.T.Leaf|))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (PriorityQueue__extrinsic.T.Leaf_q d@@2))
)))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@1 b)) (+ (|MultiSet#Card| a@@1) (|MultiSet#Card| b)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@1 b)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.PriorityQueue__extrinsic.T) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.PriorityQueue__extrinsic.T)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsBox bx Tclass.PriorityQueue__extrinsic.T))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx@@0)) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.PriorityQueue__extrinsic.T) (or (PriorityQueue__extrinsic.T.Leaf_q d@@3) (PriorityQueue__extrinsic.T.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (PriorityQueue__extrinsic.T.Node_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.PriorityQueue__extrinsic.T))
 :pattern ( (PriorityQueue__extrinsic.T.Leaf_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.PriorityQueue__extrinsic.T))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((a@@2 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@2 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@7))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#PriorityQueue_extrinsic.T.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#PriorityQueue_extrinsic.T.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |576|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#PriorityQueue_extrinsic.T.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|)))
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |579|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (< (DtRank |a#12#2#0|) (DtRank (|#PriorityQueue_extrinsic.T.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|)))
 :qid |pqintrinsicextrinsicdfy.189:28|
 :skolemid |581|
 :pattern ( (|#PriorityQueue_extrinsic.T.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall (($ly@@2 T@U) (|t#0@@2| T@U) ) (! (= (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@2) |t#0@@2|) (PriorityQueue__extrinsic.__default.Elements $ly@@2 |t#0@@2|))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |537|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@2) |t#0@@2|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0) (+ (|MultiSet#Multiplicity| a@@3 o@@0) (|MultiSet#Multiplicity| b@@0 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0))
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
 :skolemid |3527|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (PriorityQueue__extrinsic.T.Node_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.PriorityQueue__extrinsic.T $h))) ($IsAlloc intType (int_2_U (PriorityQueue__extrinsic.T.val d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsAlloc intType (int_2_U (PriorityQueue__extrinsic.T.val d@@4)) TInt $h))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@3)) bx@@3) ($Is MultiSetType ($Unbox MultiSetType bx@@3) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@3 (TMultiSet t@@3)))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass.PriorityQueue__extrinsic.T)) ($IsAlloc DatatypeTypeType d@@5 Tclass.PriorityQueue__extrinsic.T $h@@0))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.PriorityQueue__extrinsic.T $h@@0))
)))
(assert (= (Tag Tclass.PriorityQueue__extrinsic.T) Tagclass.PriorityQueue__extrinsic.T))
(assert (= (TagFamily Tclass.PriorityQueue__extrinsic.T) tytagFamily$T))
(assert (= |#PriorityQueue_extrinsic.T.Leaf| (Lit DatatypeTypeType |#PriorityQueue_extrinsic.T.Leaf|)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (PriorityQueue__extrinsic.T.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.PriorityQueue__extrinsic.T $h@@1))) ($IsAlloc DatatypeTypeType (PriorityQueue__extrinsic.T.left d@@6) Tclass.PriorityQueue__extrinsic.T $h@@1))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsAlloc DatatypeTypeType (PriorityQueue__extrinsic.T.left d@@6) Tclass.PriorityQueue__extrinsic.T $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (PriorityQueue__extrinsic.T.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass.PriorityQueue__extrinsic.T $h@@2))) ($IsAlloc DatatypeTypeType (PriorityQueue__extrinsic.T.right d@@7) Tclass.PriorityQueue__extrinsic.T $h@@2))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsAlloc DatatypeTypeType (PriorityQueue__extrinsic.T.right d@@7) Tclass.PriorityQueue__extrinsic.T $h@@2))
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
(assert (forall ((a@@4 T@U) (x@@12 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@4 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@12) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@12) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((a@@5 T@U) (x@@13 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@13) o@@1))  (or (= o@@1 x@@13) (< 0 (|MultiSet#Multiplicity| a@@5 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@13) o@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@4)) ($IsAllocBox bx@@4 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@3| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |right#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |left#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () Int)
(declare-fun |x#Z#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$PriorityQueue__extrinsic.__default.Elements)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= |t#0@@3| (|#PriorityQueue_extrinsic.T.Node| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#1#0| Tclass.PriorityQueue__extrinsic.T) ($Is DatatypeTypeType |_mcc#2#0| Tclass.PriorityQueue__extrinsic.T)) (and (= |let#0#0#0| |_mcc#2#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.PriorityQueue__extrinsic.T))) (=> (and (and (and (= |right#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#1#0#0| Tclass.PriorityQueue__extrinsic.T) (= |left#Z#0@0| |let#1#0#0|))) (and (and (= |let#2#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#2#0#0|) TInt)) (and (= |x#Z#0@0| |let#2#0#0|) ($IsAlloc DatatypeTypeType |left#Z#0@0| Tclass.PriorityQueue__extrinsic.T $Heap)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (DtRank |left#Z#0@0|) (DtRank |t#0@@3|))) (=> (< (DtRank |left#Z#0@0|) (DtRank |t#0@@3|)) (=> (|PriorityQueue__extrinsic.__default.Elements#canCall| |left#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |right#Z#0@0| Tclass.PriorityQueue__extrinsic.T $Heap) (= (ControlFlow 0 4) (- 0 3))) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)))))))))))
(let ((anon9_Else_correct  (=> (or (not (= |t#0@@3| |#PriorityQueue_extrinsic.T.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 7) 4) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon8_Then_correct) (=> (= (ControlFlow 0 8) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@3| Tclass.PriorityQueue__extrinsic.T)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
