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
(declare-fun Tag (T@U) T@U)
(declare-fun |#_module.Tree.Node| (T@U Int T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree._h4 (T@U) T@U)
(declare-fun _module.Tree.val (T@U) Int)
(declare-fun _module.Tree._h5 (T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun |_module.Tree#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
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
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| Int) (|a#4#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |##_module.Tree.Node|)
 :qid |Letdfy.31:29|
 :skolemid |1005|
 :pattern ( (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| Int) (|a#8#2#0| T@U) ) (! (= (_module.Tree._h4 (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#0#0|)
 :qid |Letdfy.31:29|
 :skolemid |1014|
 :pattern ( (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| Int) (|a#10#2#0| T@U) ) (! (= (_module.Tree.val (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |a#10#1#0|)
 :qid |Letdfy.31:29|
 :skolemid |1016|
 :pattern ( (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| Int) (|a#11#2#0| T@U) ) (! (= (_module.Tree._h5 (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|)) |a#11#2#0|)
 :qid |Letdfy.31:29|
 :skolemid |1017|
 :pattern ( (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
)))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Tree#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (|_module.Tree#Equal| a b))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |518|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |516|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit DatatypeTypeType |t#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Tree))) (and (and (|$IsA#_module.Tree| (Lit DatatypeTypeType |t#0|)) (=> (not (|_module.Tree#Equal| |t#0| |#_module.Tree.Leaf|)) (let ((|right#1| (_module.Tree._h5 (Lit DatatypeTypeType |t#0|))))
(let ((|left#1| (_module.Tree._h4 (Lit DatatypeTypeType |t#0|))))
 (and (|_module.__default.Sum#canCall| |left#1|) (|_module.__default.Sum#canCall| |right#1|)))))) (= (_module.__default.Sum ($LS $ly) (Lit DatatypeTypeType |t#0|)) (ite (|_module.Tree#Equal| |t#0| |#_module.Tree.Leaf|) 0 (let ((|right#1@@0| (_module.Tree._h5 (Lit DatatypeTypeType |t#0|))))
(let ((|value#1| (_module.Tree.val (Lit DatatypeTypeType |t#0|))))
(let ((|left#1@@0| (_module.Tree._h4 (Lit DatatypeTypeType |t#0|))))
(+ (+ (_module.__default.Sum ($LS $ly) |left#1@@0|) |value#1|) (_module.__default.Sum ($LS $ly) |right#1@@0|)))))))))
 :qid |Letdfy.33:10|
 :weight 3
 :skolemid |995|
 :pattern ( (_module.__default.Sum ($LS $ly) (Lit DatatypeTypeType |t#0|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Tree.Leaf_q d) (= (DatatypeCtorId d) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (_module.Tree.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (_module.Tree.Node_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |527|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tree.Node_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| Int) (|a#5#2#0| T@U) ) (! (= d@@1 (|#_module.Tree.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |Letdfy.31:29|
 :skolemid |1007|
)))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (_module.Tree.Node_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@2) (= d@@2 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (_module.Tree.Leaf_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Tree| d@@3) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (|$IsA#_module.Tree| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@4) (_module.Tree.Node_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( (_module.Tree.Node_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Tree))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Tree.Leaf_q a@@0) (_module.Tree.Leaf_q b@@0)) (|_module.Tree#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (|_module.Tree#Equal| a@@0 b@@0) (_module.Tree.Leaf_q a@@0))
 :pattern ( (|_module.Tree#Equal| a@@0 b@@0) (_module.Tree.Leaf_q b@@0))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| Int) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (LitInt |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |Letdfy.31:29|
 :skolemid |1013|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (LitInt |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |526|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| Int) (|a#9#2#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|)))
 :qid |Letdfy.31:29|
 :skolemid |1015|
 :pattern ( (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| Int) (|a#12#2#0| T@U) ) (! (< (DtRank |a#12#2#0|) (DtRank (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|)))
 :qid |Letdfy.31:29|
 :skolemid |1018|
 :pattern ( (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Tree.Node_q a@@1) (_module.Tree.Node_q b@@1)) (= (|_module.Tree#Equal| a@@1 b@@1)  (and (and (|_module.Tree#Equal| (_module.Tree._h4 a@@1) (_module.Tree._h4 b@@1)) (= (_module.Tree.val a@@1) (_module.Tree.val b@@1))) (|_module.Tree#Equal| (_module.Tree._h5 a@@1) (_module.Tree._h5 b@@1)))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|_module.Tree#Equal| a@@1 b@@1) (_module.Tree.Node_q a@@1))
 :pattern ( (|_module.Tree#Equal| a@@1 b@@1) (_module.Tree.Node_q b@@1))
)))
(assert (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@0) |t#0@@0|) (_module.__default.Sum $ly@@0 |t#0@@0|))
 :qid |Letdfy.33:10|
 :skolemid |990|
 :pattern ( (_module.__default.Sum ($LS $ly@@0) |t#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |t#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| Tclass._module.Tree))) (and (and (|$IsA#_module.Tree| |t#0@@1|) (=> (not (|_module.Tree#Equal| |t#0@@1| |#_module.Tree.Leaf|)) (let ((|right#0| (_module.Tree._h5 |t#0@@1|)))
(let ((|left#0| (_module.Tree._h4 |t#0@@1|)))
 (and (|_module.__default.Sum#canCall| |left#0|) (|_module.__default.Sum#canCall| |right#0|)))))) (= (_module.__default.Sum ($LS $ly@@1) |t#0@@1|) (ite (|_module.Tree#Equal| |t#0@@1| |#_module.Tree.Leaf|) 0 (let ((|right#0@@0| (_module.Tree._h5 |t#0@@1|)))
(let ((|value#0| (_module.Tree.val |t#0@@1|)))
(let ((|left#0@@0| (_module.Tree._h4 |t#0@@1|)))
(+ (+ (_module.__default.Sum $ly@@1 |left#0@@0|) |value#0|) (_module.__default.Sum $ly@@1 |right#0@@0|)))))))))
 :qid |Letdfy.33:10|
 :skolemid |994|
 :pattern ( (_module.__default.Sum ($LS $ly@@1) |t#0@@1|))
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
 :skolemid |1041|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Tree.Node_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h))) ($IsAlloc intType (int_2_U (_module.Tree.val d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Tree.val d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@6 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@0))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@0))
)))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Tree $h@@1))) ($IsAlloc DatatypeTypeType (_module.Tree._h4 d@@7) Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h4 d@@7) Tclass._module.Tree $h@@1))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Tree $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree._h5 d@@8) Tclass._module.Tree $h@@2))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h5 d@@8) Tclass._module.Tree $h@@2))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |519|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |517|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |562|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| Int) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree)  (and (and ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Tree) ($Is intType (int_2_U |a#6#1#0|) TInt)) ($Is DatatypeTypeType |a#6#2#0| Tclass._module.Tree)))
 :qid |Letdfy.31:29|
 :skolemid |1009|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) Tclass._module.Tree))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |541|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@2| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |left#Z#0@0| () T@U)
(declare-fun |value#Z#0@0| () Int)
(declare-fun |right#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Sum)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Else_correct  (=> (not (|_module.Tree#Equal| |t#0@@2| |#_module.Tree.Leaf|)) (=> (and (= |let#0#0#0| |t#0@@2|) ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Tree)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (_module.Tree.Node_q |let#0#0#0|)) (=> (_module.Tree.Node_q |let#0#0#0|) (=> (and (= (|#_module.Tree.Node| |left#Z#0@0| |value#Z#0@0| |right#Z#0@0|) |let#0#0#0|) ($IsAlloc DatatypeTypeType |left#Z#0@0| Tclass._module.Tree $Heap)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (DtRank |left#Z#0@0|) (DtRank |t#0@@2|))) (=> (< (DtRank |left#Z#0@0|) (DtRank |t#0@@2|)) (=> (|_module.__default.Sum#canCall| |left#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |right#Z#0@0| Tclass._module.Tree $Heap) (= (ControlFlow 0 4) (- 0 3))) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@2|)))))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
