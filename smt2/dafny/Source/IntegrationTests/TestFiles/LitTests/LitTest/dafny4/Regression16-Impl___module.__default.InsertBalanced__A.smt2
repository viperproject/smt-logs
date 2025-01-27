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
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
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
(declare-fun _module.__default.Elements (T@U T@U) T@U)
(declare-fun |_module.__default.Elements#canCall| (T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree.x (T@U) Int)
(declare-fun _module.Tree.left (T@U) T@U)
(declare-fun _module.Tree.right (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun _module.__default.Insert (T@U T@U Int) T@U)
(declare-fun |_module.__default.Insert#canCall| (T@U Int) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun _module.__default.IsBalanced (T@U T@U) Bool)
(declare-fun |_module.__default.IsBalanced#canCall| (T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $LZ () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| tytagFamily$Tree)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree)  (and (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.Tree)) ($Is DatatypeTypeType |a#6#2#0| Tclass._module.Tree)))
 :qid |Regression16dfy.4:29|
 :skolemid |563|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree))
)))
(assert (= (Ctor MultiSetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| |t#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Tree))) ($Is MultiSetType (_module.__default.Elements $ly |t#0|) (TMultiSet TInt)))
 :qid |Regression16dfy.17:16|
 :skolemid |539|
 :pattern ( (_module.__default.Elements $ly |t#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |##_module.Tree.Node|)
 :qid |Regression16dfy.4:29|
 :skolemid |559|
 :pattern ( (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Tree.x (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#0#0|)
 :qid |Regression16dfy.4:29|
 :skolemid |568|
 :pattern ( (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) (|a#9#2#0| T@U) ) (! (= (_module.Tree.left (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|)) |a#9#1#0|)
 :qid |Regression16dfy.4:29|
 :skolemid |569|
 :pattern ( (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= (_module.Tree.right (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|)) |a#11#2#0|)
 :qid |Regression16dfy.4:29|
 :skolemid |571|
 :pattern ( (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| (Lit DatatypeTypeType |t#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@0|)))))) (let ((|right#3| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|left#3| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@0|)))))
 (and (|_module.__default.Elements#canCall| |left#3|) (|_module.__default.Elements#canCall| |right#3|))))) (= (_module.__default.Elements ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@0|)) |MultiSet#Empty| (let ((|right#2| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|left#2| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|x#2| (LitInt (_module.Tree.x (Lit DatatypeTypeType |t#0@@0|)))))
(|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#2|))) (_module.__default.Elements ($LS $ly@@0) |left#2|)) (_module.__default.Elements ($LS $ly@@0) |right#2|)))))))))
 :qid |Regression16dfy.17:16|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.Elements ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|t#0@@1| T@U) (|y#0| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| |t#0@@1| |y#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| Tclass._module.Tree))) (and (=> (not (_module.Tree.Leaf_q |t#0@@1|)) (let ((|right#1| (_module.Tree.right |t#0@@1|)))
(let ((|x#1| (_module.Tree.x |t#0@@1|)))
 (and (=> (< |y#0| |x#1|) (|_module.__default.Insert#canCall| |right#1| |x#1|)) (=> (<= |x#1| |y#0|) (|_module.__default.Insert#canCall| |right#1| |y#0|)))))) (= (_module.__default.Insert ($LS $ly@@1) |t#0@@1| |y#0|) (ite (_module.Tree.Leaf_q |t#0@@1|) (|#_module.Tree.Node| |y#0| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (Lit DatatypeTypeType |#_module.Tree.Leaf|)) (let ((|right#0| (_module.Tree.right |t#0@@1|)))
(let ((|left#0| (_module.Tree.left |t#0@@1|)))
(let ((|x#0| (_module.Tree.x |t#0@@1|)))
(ite (< |y#0| |x#0|) (|#_module.Tree.Node| |y#0| (_module.__default.Insert $ly@@1 |right#0| |x#0|) |left#0|) (|#_module.Tree.Node| |x#0| (_module.__default.Insert $ly@@1 |right#0| |y#0|) |left#0|)))))))))
 :qid |Regression16dfy.6:10|
 :skolemid |533|
 :pattern ( (_module.__default.Insert ($LS $ly@@1) |t#0@@1| |y#0|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| |t#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree))) (and (=> (not (_module.Tree.Leaf_q |t#0@@2|)) (let ((|right#1@@0| (_module.Tree.right |t#0@@2|)))
(let ((|left#1| (_module.Tree.left |t#0@@2|)))
 (and (|_module.__default.Elements#canCall| |left#1|) (|_module.__default.Elements#canCall| |right#1@@0|))))) (= (_module.__default.Elements ($LS $ly@@2) |t#0@@2|) (ite (_module.Tree.Leaf_q |t#0@@2|) |MultiSet#Empty| (let ((|right#0@@0| (_module.Tree.right |t#0@@2|)))
(let ((|left#0@@0| (_module.Tree.left |t#0@@2|)))
(let ((|x#0@@0| (_module.Tree.x |t#0@@2|)))
(|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#0@@0|))) (_module.__default.Elements $ly@@2 |left#0@@0|)) (_module.__default.Elements $ly@@2 |right#0@@0|)))))))))
 :qid |Regression16dfy.17:16|
 :skolemid |541|
 :pattern ( (_module.__default.Elements ($LS $ly@@2) |t#0@@2|))
))))
(assert (forall ((d T@U) ) (! (= (_module.Tree.Leaf_q d) (= (DatatypeCtorId d) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_module.Tree.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_module.Tree.Node_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tree.Node_q d@@1) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= d@@1 (|#_module.Tree.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |Regression16dfy.4:29|
 :skolemid |561|
)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_module.Tree.Node_q d@@1))
)))
(assert (forall ((a T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a x@@5) (|MultiSet#Multiplicity| a y))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|t#0@@3| T@U) ) (!  (=> (or (|_module.__default.IsBalanced#canCall| (Lit DatatypeTypeType |t#0@@3|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@3| Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@3|)))))) (let ((|right#3@@0| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@3|)))))
(let ((|left#3@@0| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@3|)))))
 (and (|_module.__default.IsBalanced#canCall| |left#3@@0|) (=> (_module.__default.IsBalanced ($LS $ly@@3) |left#3@@0|) (and (|_module.__default.IsBalanced#canCall| |right#3@@0|) (=> (_module.__default.IsBalanced ($LS $ly@@3) |right#3@@0|) (and (|_module.__default.Elements#canCall| |left#3@@0|) (|_module.__default.Elements#canCall| |right#3@@0|))))))))) (= (_module.__default.IsBalanced ($LS $ly@@3) (Lit DatatypeTypeType |t#0@@3|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@3|)) true (let ((|right#2@@0| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@3|)))))
(let ((|left#2@@0| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@3|)))))
 (and (and (_module.__default.IsBalanced ($LS $ly@@3) |left#2@@0|) (_module.__default.IsBalanced ($LS $ly@@3) |right#2@@0|)) (let ((|R#2| (|MultiSet#Card| (Lit MultiSetType (_module.__default.Elements ($LS $LZ) |right#2@@0|)))))
(let ((|L#2| (|MultiSet#Card| (Lit MultiSetType (_module.__default.Elements ($LS $LZ) |left#2@@0|)))))
 (or (= |L#2| |R#2|) (= |L#2| (+ |R#2| 1))))))))))))
 :qid |Regression16dfy.24:17|
 :weight 3
 :skolemid |550|
 :pattern ( (_module.__default.IsBalanced ($LS $ly@@3) (Lit DatatypeTypeType |t#0@@3|)))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@2) (= d@@2 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.Tree.Leaf_q d@@2))
)))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|t#0@@4| T@U) (|y#0@@0| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| |t#0@@4| |y#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@4| Tclass._module.Tree))) ($Is DatatypeTypeType (_module.__default.Insert $ly@@4 |t#0@@4| |y#0@@0|) Tclass._module.Tree))
 :qid |Regression16dfy.6:10|
 :skolemid |531|
 :pattern ( (_module.__default.Insert $ly@@4 |t#0@@4| |y#0@@0|))
))))
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
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsBox bx Tclass._module.Tree))
)))
(assert (forall (($ly@@5 T@U) (|t#0@@5| T@U) (|y#0@@1| Int) ) (! (= (_module.__default.Insert ($LS $ly@@5) |t#0@@5| |y#0@@1|) (_module.__default.Insert $ly@@5 |t#0@@5| |y#0@@1|))
 :qid |Regression16dfy.6:10|
 :skolemid |528|
 :pattern ( (_module.__default.Insert ($LS $ly@@5) |t#0@@5| |y#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Tree| d@@3) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (|$IsA#_module.Tree| d@@3))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@2 b@@0) (= a@@2 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@2 b@@0))
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
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@4) (_module.Tree.Node_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.Tree.Node_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Tree))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall (($ly@@6 T@U) (|t#0@@6| T@U) ) (! (= (_module.__default.IsBalanced ($LS $ly@@6) |t#0@@6|) (_module.__default.IsBalanced $ly@@6 |t#0@@6|))
 :qid |Regression16dfy.24:17|
 :skolemid |545|
 :pattern ( (_module.__default.IsBalanced ($LS $ly@@6) |t#0@@6|))
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
(assert (forall ((a@@3 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@3 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@3 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@3 x@@7))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |Regression16dfy.4:29|
 :skolemid |567|
 :pattern ( (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
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
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|)))
 :qid |Regression16dfy.4:29|
 :skolemid |570|
 :pattern ( (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (< (DtRank |a#12#2#0|) (DtRank (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|)))
 :qid |Regression16dfy.4:29|
 :skolemid |572|
 :pattern ( (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall (($ly@@7 T@U) (|t#0@@7| T@U) ) (! (= (_module.__default.Elements ($LS $ly@@7) |t#0@@7|) (_module.__default.Elements $ly@@7 |t#0@@7|))
 :qid |Regression16dfy.17:16|
 :skolemid |537|
 :pattern ( (_module.__default.Elements ($LS $ly@@7) |t#0@@7|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|t#0@@8| T@U) (|y#0@@2| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| (Lit DatatypeTypeType |t#0@@8|) (LitInt |y#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@8| Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@8|)))))) (let ((|right#3@@1| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@8|)))))
(let ((|x#3| (LitInt (_module.Tree.x (Lit DatatypeTypeType |t#0@@8|)))))
 (and (=> (< |y#0@@2| |x#3|) (|_module.__default.Insert#canCall| |right#3@@1| |x#3|)) (=> (<= |x#3| |y#0@@2|) (|_module.__default.Insert#canCall| |right#3@@1| (LitInt |y#0@@2|))))))) (= (_module.__default.Insert ($LS $ly@@8) (Lit DatatypeTypeType |t#0@@8|) (LitInt |y#0@@2|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@8|)) (|#_module.Tree.Node| (LitInt |y#0@@2|) (Lit DatatypeTypeType |#_module.Tree.Leaf|) (Lit DatatypeTypeType |#_module.Tree.Leaf|)) (let ((|right#2@@1| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@8|)))))
(let ((|left#2@@1| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@8|)))))
(let ((|x#2@@0| (LitInt (_module.Tree.x (Lit DatatypeTypeType |t#0@@8|)))))
(ite (< |y#0@@2| |x#2@@0|) (|#_module.Tree.Node| (LitInt |y#0@@2|) (Lit DatatypeTypeType (_module.__default.Insert ($LS $ly@@8) |right#2@@1| |x#2@@0|)) |left#2@@1|) (|#_module.Tree.Node| |x#2@@0| (Lit DatatypeTypeType (_module.__default.Insert ($LS $ly@@8) |right#2@@1| (LitInt |y#0@@2|))) |left#2@@1|)))))))))
 :qid |Regression16dfy.6:10|
 :weight 3
 :skolemid |534|
 :pattern ( (_module.__default.Insert ($LS $ly@@8) (Lit DatatypeTypeType |t#0@@8|) (LitInt |y#0@@2|)))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@4 b@@1) o@@0) (+ (|MultiSet#Multiplicity| a@@4 o@@0) (|MultiSet#Multiplicity| b@@1 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@4 b@@1) o@@0))
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
 :skolemid |579|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Tree.Node_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h))) ($IsAlloc intType (int_2_U (_module.Tree.x d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Tree.x d@@5)) TInt $h))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@3)) bx@@3) ($Is MultiSetType ($Unbox MultiSetType bx@@3) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@3 (TMultiSet t@@3)))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@6 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@0))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@0))
)))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Tree $h@@1))) ($IsAlloc DatatypeTypeType (_module.Tree.left d@@7) Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.left d@@7) Tclass._module.Tree $h@@1))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Tree $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree.right d@@8) Tclass._module.Tree $h@@2))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.right d@@8) Tclass._module.Tree $h@@2))
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
(assert (forall ((a@@5 T@U) (x@@12 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@5 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@12) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@12) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@13 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@13) o@@1))  (or (= o@@1 x@@13) (< 0 (|MultiSet#Multiplicity| a@@6 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@13) o@@1))
)))
(assert (forall ((a@@7 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Equal| a@@7 b@@2) (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| a@@7 o@@2) (|MultiSet#Multiplicity| b@@2 o@@2))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@7 o@@2))
 :pattern ( (|MultiSet#Multiplicity| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@7 b@@2))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|t#0@@9| T@U) ) (!  (=> (or (|_module.__default.IsBalanced#canCall| |t#0@@9|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@9| Tclass._module.Tree))) (and (=> (not (_module.Tree.Leaf_q |t#0@@9|)) (let ((|right#1@@1| (_module.Tree.right |t#0@@9|)))
(let ((|left#1@@0| (_module.Tree.left |t#0@@9|)))
 (and (|_module.__default.IsBalanced#canCall| |left#1@@0|) (=> (_module.__default.IsBalanced $ly@@9 |left#1@@0|) (and (|_module.__default.IsBalanced#canCall| |right#1@@1|) (=> (_module.__default.IsBalanced $ly@@9 |right#1@@1|) (and (|_module.__default.Elements#canCall| |left#1@@0|) (|_module.__default.Elements#canCall| |right#1@@1|))))))))) (= (_module.__default.IsBalanced ($LS $ly@@9) |t#0@@9|) (ite (_module.Tree.Leaf_q |t#0@@9|) true (let ((|right#0@@1| (_module.Tree.right |t#0@@9|)))
(let ((|left#0@@1| (_module.Tree.left |t#0@@9|)))
 (and (and (_module.__default.IsBalanced $ly@@9 |left#0@@1|) (_module.__default.IsBalanced $ly@@9 |right#0@@1|)) (let ((|R#0| (|MultiSet#Card| (_module.__default.Elements ($LS $LZ) |right#0@@1|))))
(let ((|L#0| (|MultiSet#Card| (_module.__default.Elements ($LS $LZ) |left#0@@1|))))
 (or (= |L#0| |R#0|) (= |L#0| (+ |R#0| 1))))))))))))
 :qid |Regression16dfy.24:17|
 :skolemid |549|
 :pattern ( (_module.__default.IsBalanced ($LS $ly@@9) |t#0@@9|))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@10| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |y#0@@3| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.InsertBalanced__A)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Tree| |t#0@@10|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#t0#0| T@U) (|$ih#y0#0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#t0#0| Tclass._module.Tree) (_module.__default.IsBalanced ($LS $LZ) |$ih#t0#0|)) (or (< (DtRank |$ih#t0#0|) (DtRank |t#0@@10|)) (and (= (DtRank |$ih#t0#0|) (DtRank |t#0@@10|)) (and (<= 0 |$ih#y0#0|) (< |$ih#y0#0| |y#0@@3|))))) (let ((|t'#1| (_module.__default.Insert ($LS $LZ) |$ih#t0#0| |$ih#y0#0|)))
 (and (|MultiSet#Equal| (_module.__default.Elements ($LS $LZ) (_module.__default.Insert ($LS $LZ) |$ih#t0#0| |$ih#y0#0|)) (|MultiSet#Union| (_module.__default.Elements ($LS $LZ) |$ih#t0#0|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |$ih#y0#0|))))) (_module.__default.IsBalanced ($LS $LZ) |t'#1|))))
 :qid |Regression16dfy.34:24|
 :skolemid |555|
 :pattern ( (|MultiSet#Union| (_module.__default.Elements ($LS $LZ) |$ih#t0#0|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |$ih#y0#0|)))))
 :pattern ( (_module.__default.Insert ($LS $LZ) |$ih#t0#0| |$ih#y0#0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (|MultiSet#Equal| (_module.__default.Elements ($LS ($LS $LZ)) (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)) (|MultiSet#Union| (_module.__default.Elements ($LS ($LS $LZ)) |t#0@@10|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |y#0@@3|)))))) (=> (|MultiSet#Equal| (_module.__default.Elements ($LS ($LS $LZ)) (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)) (|MultiSet#Union| (_module.__default.Elements ($LS ($LS $LZ)) |t#0@@10|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |y#0@@3|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (let ((|t'#0| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0|) (=> (_module.Tree.Leaf_q |t'#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (let ((|t'#0@@0| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@0|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@0|) (=> (_module.Tree.Leaf_q |t'#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (let ((|t'#0@@1| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@1|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@1|) (=> (not (_module.Tree.Leaf_q |t'#0@@1|)) (let ((|left#6| (_module.Tree.left |t'#0@@1|)))
(_module.__default.IsBalanced ($LS ($LS $LZ)) |left#6|))))))) (=> (let ((|t'#0@@2| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@2|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@2|) (=> (not (_module.Tree.Leaf_q |t'#0@@2|)) (let ((|left#6@@0| (_module.Tree.left |t'#0@@2|)))
(_module.__default.IsBalanced ($LS ($LS $LZ)) |left#6@@0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|t'#0@@3| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@3|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@3|) (=> (not (_module.Tree.Leaf_q |t'#0@@3|)) (let ((|right#6| (_module.Tree.right |t'#0@@3|)))
(_module.__default.IsBalanced ($LS ($LS $LZ)) |right#6|))))))) (=> (let ((|t'#0@@4| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@4|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@4|) (=> (not (_module.Tree.Leaf_q |t'#0@@4|)) (let ((|right#6@@0| (_module.Tree.right |t'#0@@4|)))
(_module.__default.IsBalanced ($LS ($LS $LZ)) |right#6@@0|)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|t'#0@@5| (_module.__default.Insert ($LS ($LS $LZ)) |t#0@@10| |y#0@@3|)))
 (=> (|_module.__default.IsBalanced#canCall| |t'#0@@5|) (or (_module.__default.IsBalanced ($LS $LZ) |t'#0@@5|) (=> (not (_module.Tree.Leaf_q |t'#0@@5|)) (let ((|right#6@@1| (_module.Tree.right |t'#0@@5|)))
(let ((|left#6@@1| (_module.Tree.left |t'#0@@5|)))
(let ((|R#6| (|MultiSet#Card| (_module.__default.Elements ($LS ($LS $LZ)) |right#6@@1|))))
(let ((|L#6| (|MultiSet#Card| (_module.__default.Elements ($LS ($LS $LZ)) |left#6@@1|))))
 (or (= |L#6| |R#6|) (= |L#6| (+ |R#6| 1))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |t#0@@10| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t#0@@10| Tclass._module.Tree $Heap)) (|$IsA#_module.Tree| |t#0@@10|)) (= 3 $FunctionContextHeight)) (and (and (|_module.__default.IsBalanced#canCall| |t#0@@10|) (and (_module.__default.IsBalanced ($LS $LZ) |t#0@@10|) (ite (_module.Tree.Leaf_q |t#0@@10|) true (let ((|right#5| (_module.Tree.right |t#0@@10|)))
(let ((|left#5| (_module.Tree.left |t#0@@10|)))
 (and (and (_module.__default.IsBalanced ($LS $LZ) |left#5|) (_module.__default.IsBalanced ($LS $LZ) |right#5|)) (let ((|R#5| (|MultiSet#Card| (_module.__default.Elements ($LS $LZ) |right#5|))))
(let ((|L#5| (|MultiSet#Card| (_module.__default.Elements ($LS $LZ) |left#5|))))
 (or (= |L#5| |R#5|) (= |L#5| (+ |R#5| 1))))))))))) (= (ControlFlow 0 7) 2))) anon0_correct))))
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
