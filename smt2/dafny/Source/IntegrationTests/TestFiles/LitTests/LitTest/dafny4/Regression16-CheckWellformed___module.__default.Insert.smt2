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
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree.x (T@U) Int)
(declare-fun _module.Tree.left (T@U) T@U)
(declare-fun _module.Tree.right (T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Insert (T@U T@U Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Insert#canCall| (T@U Int) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| tytagFamily$Tree)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree)  (and (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.Tree)) ($Is DatatypeTypeType |a#6#2#0| Tclass._module.Tree)))
 :qid |Regression16dfy.4:29|
 :skolemid |563|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree))
)))
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
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) (|y#0| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| |t#0| |y#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Tree))) (and (=> (not (_module.Tree.Leaf_q |t#0|)) (let ((|right#1| (_module.Tree.right |t#0|)))
(let ((|x#1| (_module.Tree.x |t#0|)))
 (and (=> (< |y#0| |x#1|) (|_module.__default.Insert#canCall| |right#1| |x#1|)) (=> (<= |x#1| |y#0|) (|_module.__default.Insert#canCall| |right#1| |y#0|)))))) (= (_module.__default.Insert ($LS $ly) |t#0| |y#0|) (ite (_module.Tree.Leaf_q |t#0|) (|#_module.Tree.Node| |y#0| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (Lit DatatypeTypeType |#_module.Tree.Leaf|)) (let ((|right#0| (_module.Tree.right |t#0|)))
(let ((|left#0| (_module.Tree.left |t#0|)))
(let ((|x#0| (_module.Tree.x |t#0|)))
(ite (< |y#0| |x#0|) (|#_module.Tree.Node| |y#0| (_module.__default.Insert $ly |right#0| |x#0|) |left#0|) (|#_module.Tree.Node| |x#0| (_module.__default.Insert $ly |right#0| |y#0|) |left#0|)))))))))
 :qid |Regression16dfy.6:10|
 :skolemid |533|
 :pattern ( (_module.__default.Insert ($LS $ly) |t#0| |y#0|))
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
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@2) (= d@@2 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.Tree.Leaf_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) (|y#0@@0| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| |t#0@@0| |y#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Tree))) ($Is DatatypeTypeType (_module.__default.Insert $ly@@0 |t#0@@0| |y#0@@0|) Tclass._module.Tree))
 :qid |Regression16dfy.6:10|
 :skolemid |531|
 :pattern ( (_module.__default.Insert $ly@@0 |t#0@@0| |y#0@@0|))
))))
(assert (forall (($ly@@1 T@U) (|t#0@@1| T@U) (|y#0@@1| Int) ) (! (= (_module.__default.Insert ($LS $ly@@1) |t#0@@1| |y#0@@1|) (_module.__default.Insert $ly@@1 |t#0@@1| |y#0@@1|))
 :qid |Regression16dfy.6:10|
 :skolemid |528|
 :pattern ( (_module.__default.Insert ($LS $ly@@1) |t#0@@1| |y#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.Tree.Node_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |Regression16dfy.4:29|
 :skolemid |567|
 :pattern ( (|#_module.Tree.Node| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|t#0@@2| T@U) (|y#0@@2| Int) ) (!  (=> (or (|_module.__default.Insert#canCall| (Lit DatatypeTypeType |t#0@@2|) (LitInt |y#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@2|)))))) (let ((|right#3| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@2|)))))
(let ((|x#3| (LitInt (_module.Tree.x (Lit DatatypeTypeType |t#0@@2|)))))
 (and (=> (< |y#0@@2| |x#3|) (|_module.__default.Insert#canCall| |right#3| |x#3|)) (=> (<= |x#3| |y#0@@2|) (|_module.__default.Insert#canCall| |right#3| (LitInt |y#0@@2|))))))) (= (_module.__default.Insert ($LS $ly@@2) (Lit DatatypeTypeType |t#0@@2|) (LitInt |y#0@@2|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@2|)) (|#_module.Tree.Node| (LitInt |y#0@@2|) (Lit DatatypeTypeType |#_module.Tree.Leaf|) (Lit DatatypeTypeType |#_module.Tree.Leaf|)) (let ((|right#2| (Lit DatatypeTypeType (_module.Tree.right (Lit DatatypeTypeType |t#0@@2|)))))
(let ((|left#2| (Lit DatatypeTypeType (_module.Tree.left (Lit DatatypeTypeType |t#0@@2|)))))
(let ((|x#2| (LitInt (_module.Tree.x (Lit DatatypeTypeType |t#0@@2|)))))
(ite (< |y#0@@2| |x#2|) (|#_module.Tree.Node| (LitInt |y#0@@2|) (Lit DatatypeTypeType (_module.__default.Insert ($LS $ly@@2) |right#2| |x#2|)) |left#2|) (|#_module.Tree.Node| |x#2| (Lit DatatypeTypeType (_module.__default.Insert ($LS $ly@@2) |right#2| (LitInt |y#0@@2|))) |left#2|)))))))))
 :qid |Regression16dfy.6:10|
 :weight 3
 :skolemid |534|
 :pattern ( (_module.__default.Insert ($LS $ly@@2) (Lit DatatypeTypeType |t#0@@2|) (LitInt |y#0@@2|)))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |579|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Tree.Node_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Tree $h))) ($IsAlloc intType (int_2_U (_module.Tree.x d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Tree.x d@@4)) TInt $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
)))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@1))) ($IsAlloc DatatypeTypeType (_module.Tree.left d@@6) Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.left d@@6) Tclass._module.Tree $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Tree $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree.right d@@7) Tclass._module.Tree $h@@2))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.right d@@7) Tclass._module.Tree $h@@2))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#Z#0@0| () Int)
(declare-fun |y#0@@3| () Int)
(declare-fun |right#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@3| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |left#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Insert)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon13_Else_correct  (=> (<= |x#Z#0@0| |y#0@@3|) (=> (and ($IsAlloc DatatypeTypeType |right#Z#0@0| Tclass._module.Tree $Heap) ($IsAlloc intType (int_2_U |y#0@@3|) TInt $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (or (<= 0 |y#0@@3|) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|))) (= |y#0@@3| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|))) (= |y#0@@3| |y#0@@3|)) (=> (= (ControlFlow 0 8) (- 0 7)) (or (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)) (and (= (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)) (< |y#0@@3| |y#0@@3|))))))))))
(let ((anon13_Then_correct  (=> (< |y#0@@3| |x#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |right#Z#0@0| Tclass._module.Tree $Heap) ($IsAlloc intType (int_2_U |x#Z#0@0|) TInt $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (or (<= 0 |y#0@@3|) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|))) (= |x#Z#0@0| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|))) (= |x#Z#0@0| |y#0@@3|)) (=> (= (ControlFlow 0 5) (- 0 4)) (or (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)) (and (= (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)) (< |x#Z#0@0| |y#0@@3|))))))))))
(let ((anon12_Then_correct  (=> (and (and (= |t#0@@3| (|#_module.Tree.Node| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0|)) ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.Tree)) (and ($Is DatatypeTypeType |_mcc#2#0| Tclass._module.Tree) (= |let#0#0#0| |_mcc#2#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Tree) (= |right#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#1#0#0| Tclass._module.Tree))) (and (and (= |left#Z#0@0| |let#1#0#0|) (= |let#2#0#0| |_mcc#0#0|)) (and ($Is intType (int_2_U |let#2#0#0|) TInt) (= |x#Z#0@0| |let#2#0#0|)))) (and (=> (= (ControlFlow 0 10) 5) anon13_Then_correct) (=> (= (ControlFlow 0 10) 8) anon13_Else_correct))))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |t#0@@3| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon12_Then_correct) (=> (= (ControlFlow 0 11) 3) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon10_Then_correct) (=> (= (ControlFlow 0 12) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@3| Tclass._module.Tree)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))
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
