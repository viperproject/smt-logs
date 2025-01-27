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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
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
(declare-fun |#_module.Tree.Node| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree._h0 (T@U) T@U)
(declare-fun _module.Tree._h1 (T@U) T@U)
(declare-fun _module.Tree._h2 (T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tree (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Contains (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Contains#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.Tree_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| tytagFamily$Tree)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |##_module.Tree.Node|)
 :qid |TreeFilldfy.4:32|
 :skolemid |559|
 :pattern ( (|#_module.Tree.Node| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Tree._h0 (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#0#0|)
 :qid |TreeFilldfy.4:32|
 :skolemid |569|
 :pattern ( (|#_module.Tree.Node| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (= (_module.Tree._h1 (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |a#10#1#0|)
 :qid |TreeFilldfy.4:32|
 :skolemid |571|
 :pattern ( (|#_module.Tree.Node| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (_module.Tree._h2 (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |a#12#2#0|)
 :qid |TreeFilldfy.4:32|
 :skolemid |573|
 :pattern ( (|#_module.Tree.Node| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Tree$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T) $h))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T) $h))
)))
(assert (forall ((_module.Tree$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T@@0))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Contains$T T@U) ($ly T@U) (|t#0| T@U) (|v#0| T@U) ) (!  (=> (or (|_module.__default.Contains#canCall| _module._default.Contains$T (Lit DatatypeTypeType |t#0|) (Lit BoxType |v#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0| (Tclass._module.Tree _module._default.Contains$T)) ($IsBox |v#0| _module._default.Contains$T)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0|)))))) (let ((|right#5| (Lit DatatypeTypeType (_module.Tree._h2 (Lit DatatypeTypeType |t#0|)))))
(let ((|x#5| (Lit BoxType (_module.Tree._h1 (Lit DatatypeTypeType |t#0|)))))
(let ((|left#5| (Lit DatatypeTypeType (_module.Tree._h0 (Lit DatatypeTypeType |t#0|)))))
 (=> (or (not (= |x#5| (Lit BoxType |v#0|))) (not true)) (and (|_module.__default.Contains#canCall| _module._default.Contains$T |left#5| (Lit BoxType |v#0|)) (=> (not (_module.__default.Contains _module._default.Contains$T ($LS $ly) |left#5| (Lit BoxType |v#0|))) (|_module.__default.Contains#canCall| _module._default.Contains$T |right#5| (Lit BoxType |v#0|))))))))) (= (_module.__default.Contains _module._default.Contains$T ($LS $ly) (Lit DatatypeTypeType |t#0|) (Lit BoxType |v#0|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0|)) false (let ((|right#4| (Lit DatatypeTypeType (_module.Tree._h2 (Lit DatatypeTypeType |t#0|)))))
(let ((|x#4| (Lit BoxType (_module.Tree._h1 (Lit DatatypeTypeType |t#0|)))))
(let ((|left#4| (Lit DatatypeTypeType (_module.Tree._h0 (Lit DatatypeTypeType |t#0|)))))
 (or (or (= |x#4| (Lit BoxType |v#0|)) (_module.__default.Contains _module._default.Contains$T ($LS $ly) |left#4| (Lit BoxType |v#0|))) (_module.__default.Contains _module._default.Contains$T ($LS $ly) |right#4| (Lit BoxType |v#0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |537|
 :pattern ( (_module.__default.Contains _module._default.Contains$T ($LS $ly) (Lit DatatypeTypeType |t#0|) (Lit BoxType |v#0|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Tree.Leaf_q d) (= (DatatypeCtorId d) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (_module.Tree.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_module.Tree.Node_q d@@0))
)))
(assert (forall ((_module.Tree$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) (Tclass._module.Tree _module.Tree$T@@1))  (and (and ($Is DatatypeTypeType |a#6#0#0| (Tclass._module.Tree _module.Tree$T@@1)) ($IsBox |a#6#1#0| _module.Tree$T@@1)) ($Is DatatypeTypeType |a#6#2#0| (Tclass._module.Tree _module.Tree$T@@1))))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0| |a#6#1#0| |a#6#2#0|) (Tclass._module.Tree _module.Tree$T@@1)))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tree.Node_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= d@@1 (|#_module.Tree.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |TreeFilldfy.4:32|
 :skolemid |561|
)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_module.Tree.Node_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@2) (= d@@2 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Tree.Leaf_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Tree$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Tree _module.Tree$T@@2)) Tagclass._module.Tree) (= (TagFamily (Tclass._module.Tree _module.Tree$T@@2)) tytagFamily$Tree))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Tree _module.Tree$T@@2))
)))
(assert (forall ((_module.Tree$T@@3 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) (|a#6#2#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0@@0|) (Tclass._module.Tree _module.Tree$T@@3) $h@@0)  (and (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| (Tclass._module.Tree _module.Tree$T@@3) $h@@0) ($IsAllocBox |a#6#1#0@@0| _module.Tree$T@@3 $h@@0)) ($IsAlloc DatatypeTypeType |a#6#2#0@@0| (Tclass._module.Tree _module.Tree$T@@3) $h@@0))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0@@0|) (Tclass._module.Tree _module.Tree$T@@3) $h@@0))
)))
(assert (forall ((_module.Tree$T@@4 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Tree _module.Tree$T@@4)) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (_module.Tree.Node_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Tree _module.Tree$T@@4)))
 :pattern ( (_module.Tree.Leaf_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Tree _module.Tree$T@@4)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TBool) (and (= ($Box boolType ($Unbox boolType bx)) bx) ($Is boolType ($Unbox boolType bx) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Contains$T@@0 T@U) ($ly@@0 T@U) (|t#0@@0| T@U) (|v#0@@0| T@U) ) (!  (=> (or (|_module.__default.Contains#canCall| _module._default.Contains$T@@0 |t#0@@0| |v#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@0| (Tclass._module.Tree _module._default.Contains$T@@0)) ($IsBox |v#0@@0| _module._default.Contains$T@@0)))) (and (=> (not (_module.Tree.Leaf_q |t#0@@0|)) (let ((|right#1| (_module.Tree._h2 |t#0@@0|)))
(let ((|x#1| (_module.Tree._h1 |t#0@@0|)))
(let ((|left#1| (_module.Tree._h0 |t#0@@0|)))
 (=> (or (not (= |x#1| |v#0@@0|)) (not true)) (and (|_module.__default.Contains#canCall| _module._default.Contains$T@@0 |left#1| |v#0@@0|) (=> (not (_module.__default.Contains _module._default.Contains$T@@0 $ly@@0 |left#1| |v#0@@0|)) (|_module.__default.Contains#canCall| _module._default.Contains$T@@0 |right#1| |v#0@@0|)))))))) (= (_module.__default.Contains _module._default.Contains$T@@0 ($LS $ly@@0) |t#0@@0| |v#0@@0|) (ite (_module.Tree.Leaf_q |t#0@@0|) false (let ((|right#0| (_module.Tree._h2 |t#0@@0|)))
(let ((|x#0| (_module.Tree._h1 |t#0@@0|)))
(let ((|left#0| (_module.Tree._h0 |t#0@@0|)))
 (or (or (= |x#0| |v#0@@0|) (_module.__default.Contains _module._default.Contains$T@@0 $ly@@0 |left#0| |v#0@@0|)) (_module.__default.Contains _module._default.Contains$T@@0 $ly@@0 |right#0| |v#0@@0|)))))))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.__default.Contains _module._default.Contains$T@@0 ($LS $ly@@0) |t#0@@0| |v#0@@0|))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |TreeFilldfy.4:32|
 :skolemid |568|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((_module.Tree$T@@5 T@U) ) (! (= (Tclass._module.Tree_0 (Tclass._module.Tree _module.Tree$T@@5)) _module.Tree$T@@5)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Tree _module.Tree$T@@5))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Contains$T@@1 T@U) ($ly@@1 T@U) (|t#0@@1| T@U) (|v#0@@1| T@U) ) (!  (=> (or (|_module.__default.Contains#canCall| _module._default.Contains$T@@1 (Lit DatatypeTypeType |t#0@@1|) |v#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@1| (Tclass._module.Tree _module._default.Contains$T@@1)) ($IsBox |v#0@@1| _module._default.Contains$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@1|)))))) (let ((|right#3| (Lit DatatypeTypeType (_module.Tree._h2 (Lit DatatypeTypeType |t#0@@1|)))))
(let ((|x#3| (Lit BoxType (_module.Tree._h1 (Lit DatatypeTypeType |t#0@@1|)))))
(let ((|left#3| (Lit DatatypeTypeType (_module.Tree._h0 (Lit DatatypeTypeType |t#0@@1|)))))
 (=> (or (not (= |x#3| |v#0@@1|)) (not true)) (and (|_module.__default.Contains#canCall| _module._default.Contains$T@@1 |left#3| |v#0@@1|) (=> (not (_module.__default.Contains _module._default.Contains$T@@1 ($LS $ly@@1) |left#3| |v#0@@1|)) (|_module.__default.Contains#canCall| _module._default.Contains$T@@1 |right#3| |v#0@@1|)))))))) (= (_module.__default.Contains _module._default.Contains$T@@1 ($LS $ly@@1) (Lit DatatypeTypeType |t#0@@1|) |v#0@@1|) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0@@1|)) false (let ((|right#2| (Lit DatatypeTypeType (_module.Tree._h2 (Lit DatatypeTypeType |t#0@@1|)))))
(let ((|x#2| (Lit BoxType (_module.Tree._h1 (Lit DatatypeTypeType |t#0@@1|)))))
(let ((|left#2| (Lit DatatypeTypeType (_module.Tree._h0 (Lit DatatypeTypeType |t#0@@1|)))))
 (or (or (= |x#2| |v#0@@1|) (_module.__default.Contains _module._default.Contains$T@@1 ($LS $ly@@1) |left#2| |v#0@@1|)) (_module.__default.Contains _module._default.Contains$T@@1 ($LS $ly@@1) |right#2| |v#0@@1|)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |536|
 :pattern ( (_module.__default.Contains _module._default.Contains$T@@1 ($LS $ly@@1) (Lit DatatypeTypeType |t#0@@1|) |v#0@@1|))
))))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (|a#9#2#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|)))
 :qid |TreeFilldfy.4:32|
 :skolemid |570|
 :pattern ( (|#_module.Tree.Node| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (< (BoxRank |a#11#1#0|) (DtRank (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|)))
 :qid |TreeFilldfy.4:32|
 :skolemid |572|
 :pattern ( (|#_module.Tree.Node| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (< (DtRank |a#13#2#0|) (DtRank (|#_module.Tree.Node| |a#13#0#0| |a#13#1#0| |a#13#2#0|)))
 :qid |TreeFilldfy.4:32|
 :skolemid |574|
 :pattern ( (|#_module.Tree.Node| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
)))
(assert (forall ((_module._default.Contains$T@@2 T@U) ($ly@@2 T@U) (|t#0@@2| T@U) (|v#0@@2| T@U) ) (! (= (_module.__default.Contains _module._default.Contains$T@@2 ($LS $ly@@2) |t#0@@2| |v#0@@2|) (_module.__default.Contains _module._default.Contains$T@@2 $ly@@2 |t#0@@2| |v#0@@2|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.Contains _module._default.Contains$T@@2 ($LS $ly@@2) |t#0@@2| |v#0@@2|))
)))
(assert (forall ((d@@4 T@U) (_module.Tree$T@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Tree _module.Tree$T@@6) $h@@1))) ($IsAllocBox (_module.Tree._h1 d@@4) _module.Tree$T@@6 $h@@1))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAllocBox (_module.Tree._h1 d@@4) _module.Tree$T@@6 $h@@1))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |580|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.Tree$T@@7 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Tree _module.Tree$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Tree _module.Tree$T@@7))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Tree _module.Tree$T@@7)))
)))
(assert (forall ((d@@6 T@U) (_module.Tree$T@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Tree _module.Tree$T@@8) $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree._h0 d@@6) (Tclass._module.Tree _module.Tree$T@@8) $h@@2))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h0 d@@6) (Tclass._module.Tree _module.Tree$T@@8) $h@@2))
)))
(assert (forall ((d@@7 T@U) (_module.Tree$T@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Tree _module.Tree$T@@9) $h@@3))) ($IsAlloc DatatypeTypeType (_module.Tree._h2 d@@7) (Tclass._module.Tree _module.Tree$T@@9) $h@@3))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h2 d@@7) (Tclass._module.Tree _module.Tree$T@@9) $h@@3))
)))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |v#0@@3| () T@U)
(declare-fun _module._default.Contains$T@@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |left#Z#0@0| () T@U)
(declare-fun |right#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Contains)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon9_correct true))
(let ((anon16_Else_correct  (=> (and (or (= |x#Z#0@0| |v#0@@3|) (_module.__default.Contains _module._default.Contains$T@@3 ($LS $LZ) |left#Z#0@0| |v#0@@3|)) (= (ControlFlow 0 7) 4)) anon9_correct)))
(let ((anon16_Then_correct  (=> (not (or (= |x#Z#0@0| |v#0@@3|) (_module.__default.Contains _module._default.Contains$T@@3 ($LS $LZ) |left#Z#0@0| |v#0@@3|))) (=> (and ($IsAlloc DatatypeTypeType |right#Z#0@0| (Tclass._module.Tree _module._default.Contains$T@@3) $Heap) ($IsAllocBox |v#0@@3| _module._default.Contains$T@@3 $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|))) (=> (< (DtRank |right#Z#0@0|) (DtRank |t#0@@3|)) (=> (and (|_module.__default.Contains#canCall| _module._default.Contains$T@@3 |right#Z#0@0| |v#0@@3|) (= (ControlFlow 0 5) 4)) anon9_correct)))))))
(let ((anon15_Else_correct  (=> (= |x#Z#0@0| |v#0@@3|) (and (=> (= (ControlFlow 0 10) 5) anon16_Then_correct) (=> (= (ControlFlow 0 10) 7) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (or (not (= |x#Z#0@0| |v#0@@3|)) (not true)) (=> (and ($IsAlloc DatatypeTypeType |left#Z#0@0| (Tclass._module.Tree _module._default.Contains$T@@3) $Heap) ($IsAllocBox |v#0@@3| _module._default.Contains$T@@3 $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< (DtRank |left#Z#0@0|) (DtRank |t#0@@3|))) (=> (< (DtRank |left#Z#0@0|) (DtRank |t#0@@3|)) (=> (|_module.__default.Contains#canCall| _module._default.Contains$T@@3 |left#Z#0@0| |v#0@@3|) (and (=> (= (ControlFlow 0 8) 5) anon16_Then_correct) (=> (= (ControlFlow 0 8) 7) anon16_Else_correct)))))))))
(let ((anon14_Then_correct  (=> (= |t#0@@3| (|#_module.Tree.Node| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0| (Tclass._module.Tree _module._default.Contains$T@@3)) ($IsBox |_mcc#1#0| _module._default.Contains$T@@3)) (and ($Is DatatypeTypeType |_mcc#2#0| (Tclass._module.Tree _module._default.Contains$T@@3)) (= |let#0#0#0| |_mcc#2#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Tree _module._default.Contains$T@@3)) (= |right#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#1#0|) ($IsBox |let#1#0#0| _module._default.Contains$T@@3))) (and (and (= |x#Z#0@0| |let#1#0#0|) (= |let#2#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#2#0#0| (Tclass._module.Tree _module._default.Contains$T@@3)) (= |left#Z#0@0| |let#2#0#0|)))) (and (=> (= (ControlFlow 0 11) 8) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |t#0@@3| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 12) 11) anon14_Then_correct) (=> (= (ControlFlow 0 12) 3) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon12_Then_correct) (=> (= (ControlFlow 0 13) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |t#0@@3| (Tclass._module.Tree _module._default.Contains$T@@3)) ($IsBox |v#0@@3| _module._default.Contains$T@@3)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
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
