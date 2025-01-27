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
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.GTree () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.GTree.Node| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$GTree () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.GTree.Node| (T@U T@U) T@U)
(declare-fun Tclass._module.GTree (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.GInc (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.GInc#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.GTree.Node_q (T@U) Bool)
(declare-fun _module.GTree._h5 (T@U) T@U)
(declare-fun |_module.__default.GForestInc#canCall| (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.GTree._h4 (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.GForestInc (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun _module.List._h0 (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.GTree_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._module.List Tagclass._module.GTree |##_module.List.Nil| |##_module.List.Cons| |##_module.GTree.Node| tytagFamily$List tytagFamily$GTree)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.GTree$T T@U) (|a#21#0#0| T@U) (|a#21#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.GTree.Node| |a#21#0#0| |a#21#1#0|) (Tclass._module.GTree _module.GTree$T) $h)  (and ($IsAllocBox |a#21#0#0| _module.GTree$T $h) ($IsAlloc DatatypeTypeType |a#21#1#0| (Tclass._module.List (Tclass._module.GTree _module.GTree$T)) $h))))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.GTree.Node| |a#21#0#0| |a#21#1#0|) (Tclass._module.GTree _module.GTree$T) $h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.GInc#canCall| |t#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| (Tclass._module.GTree TInt)))) (and (and (_module.GTree.Node_q |t#0|) (let ((|children#1| (_module.GTree._h5 |t#0|)))
 (and (_module.GTree.Node_q |t#0|) (|_module.__default.GForestInc#canCall| |children#1|)))) (= (_module.__default.GInc ($LS $ly) |t#0|) (let ((|children#0| (_module.GTree._h5 |t#0|)))
(let ((|n#0| (U_2_int ($Unbox intType (_module.GTree._h4 |t#0|)))))
(|#_module.GTree.Node| ($Box intType (int_2_U (+ |n#0| 1))) (_module.__default.GForestInc $ly |children#0|)))))))
 :qid |TreeDatatypedfy.27:16|
 :skolemid |554|
 :pattern ( (_module.__default.GInc ($LS $ly) |t#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.GInc#canCall| (Lit DatatypeTypeType |t#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| (Tclass._module.GTree TInt)))) (and (and (_module.GTree.Node_q (Lit DatatypeTypeType |t#0@@0|)) (let ((|children#3| (Lit DatatypeTypeType (_module.GTree._h5 (Lit DatatypeTypeType |t#0@@0|)))))
 (and (_module.GTree.Node_q (Lit DatatypeTypeType |t#0@@0|)) (|_module.__default.GForestInc#canCall| |children#3|)))) (= (_module.__default.GInc ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)) (let ((|children#2| (Lit DatatypeTypeType (_module.GTree._h5 (Lit DatatypeTypeType |t#0@@0|)))))
(let ((|n#2| (LitInt (U_2_int ($Unbox intType (_module.GTree._h4 (Lit DatatypeTypeType |t#0@@0|)))))))
(Lit DatatypeTypeType (|#_module.GTree.Node| ($Box intType (int_2_U (LitInt (+ |n#2| 1)))) (Lit DatatypeTypeType (_module.__default.GForestInc ($LS $ly@@0) |children#2|)))))))))
 :qid |TreeDatatypedfy.27:16|
 :weight 3
 :skolemid |555|
 :pattern ( (_module.__default.GInc ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.GTree$T@@0 T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.GTree _module.GTree$T@@0)) (_module.GTree.Node_q d))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( (_module.GTree.Node_q d) ($Is DatatypeTypeType d (Tclass._module.GTree _module.GTree$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|forest#0| T@U) ) (!  (=> (or (|_module.__default.GForestInc#canCall| (Lit DatatypeTypeType |forest#0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0| (Tclass._module.List (Tclass._module.GTree TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |forest#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |forest#0|)))))
(let ((|tree#3| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |forest#0|))))))
 (and (|_module.__default.GInc#canCall| |tree#3|) (|_module.__default.GForestInc#canCall| |tail#3|))))) (= (_module.__default.GForestInc ($LS $ly@@1) (Lit DatatypeTypeType |forest#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |forest#0|)) |forest#0| (let ((|tail#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |forest#0|)))))
(let ((|tree#2| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |forest#0|))))))
(Lit DatatypeTypeType (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.GInc ($LS $ly@@1) |tree#2|))) (Lit DatatypeTypeType (_module.__default.GForestInc ($LS $ly@@1) |tail#2|))))))))))
 :qid |TreeDatatypedfy.33:16|
 :weight 3
 :skolemid |562|
 :pattern ( (_module.__default.GForestInc ($LS $ly@@1) (Lit DatatypeTypeType |forest#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|forest#0@@0| T@U) ) (!  (=> (or (|_module.__default.GForestInc#canCall| |forest#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0@@0| (Tclass._module.List (Tclass._module.GTree TInt))))) ($Is DatatypeTypeType (_module.__default.GForestInc $ly@@2 |forest#0@@0|) (Tclass._module.List (Tclass._module.GTree TInt))))
 :qid |TreeDatatypedfy.33:16|
 :skolemid |559|
 :pattern ( (_module.__default.GForestInc $ly@@2 |forest#0@@0|))
))))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
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
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (_module.List.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.GTree.Node_q d@@2) (= (DatatypeCtorId d@@2) |##_module.GTree.Node|))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (_module.GTree.Node_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |TreeDatatypedfy.6:31|
 :skolemid |618|
)))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.GTree.Node_q d@@4) (exists ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= d@@4 (|#_module.GTree.Node| |a#20#0#0| |a#20#1#0|))
 :qid |TreeDatatypedfy.25:26|
 :skolemid |652|
)))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.GTree.Node_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((_module.GTree$T@@1 T@U) (|a#21#0#0@@0| T@U) (|a#21#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.GTree.Node| |a#21#0#0@@0| |a#21#1#0@@0|) (Tclass._module.GTree _module.GTree$T@@1))  (and ($IsBox |a#21#0#0@@0| _module.GTree$T@@1) ($Is DatatypeTypeType |a#21#1#0@@0| (Tclass._module.List (Tclass._module.GTree _module.GTree$T@@1)))))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($Is DatatypeTypeType (|#_module.GTree.Node| |a#21#0#0@@0| |a#21#1#0@@0|) (Tclass._module.GTree _module.GTree$T@@1)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((_module.GTree$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.GTree _module.GTree$T@@2)) Tagclass._module.GTree) (= (TagFamily (Tclass._module.GTree _module.GTree$T@@2)) tytagFamily$GTree))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Tclass._module.GTree _module.GTree$T@@2))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |TreeDatatypedfy.6:31|
 :skolemid |616|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |TreeDatatypedfy.6:31|
 :skolemid |625|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |TreeDatatypedfy.6:31|
 :skolemid |627|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.GTree.Node| |a#19#0#0| |a#19#1#0|)) |##_module.GTree.Node|)
 :qid |TreeDatatypedfy.25:26|
 :skolemid |650|
 :pattern ( (|#_module.GTree.Node| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= (_module.GTree._h4 (|#_module.GTree.Node| |a#23#0#0| |a#23#1#0|)) |a#23#0#0|)
 :qid |TreeDatatypedfy.25:26|
 :skolemid |659|
 :pattern ( (|#_module.GTree.Node| |a#23#0#0| |a#23#1#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= (_module.GTree._h5 (|#_module.GTree.Node| |a#25#0#0| |a#25#1#0|)) |a#25#1#0|)
 :qid |TreeDatatypedfy.25:26|
 :skolemid |661|
 :pattern ( (|#_module.GTree.Node| |a#25#0#0| |a#25#1#0|))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.GTree$T@@3 T@U) ) (! (= (Tclass._module.GTree_0 (Tclass._module.GTree _module.GTree$T@@3)) _module.GTree$T@@3)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Tclass._module.GTree _module.GTree$T@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |TreeDatatypedfy.6:31|
 :skolemid |626|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |TreeDatatypedfy.6:31|
 :skolemid |628|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (< (BoxRank |a#24#0#0|) (DtRank (|#_module.GTree.Node| |a#24#0#0| |a#24#1#0|)))
 :qid |TreeDatatypedfy.25:26|
 :skolemid |660|
 :pattern ( (|#_module.GTree.Node| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (< (DtRank |a#26#1#0|) (DtRank (|#_module.GTree.Node| |a#26#0#0| |a#26#1#0|)))
 :qid |TreeDatatypedfy.25:26|
 :skolemid |662|
 :pattern ( (|#_module.GTree.Node| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall (($ly@@3 T@U) (|t#0@@1| T@U) ) (! (= (_module.__default.GInc ($LS $ly@@3) |t#0@@1|) (_module.__default.GInc $ly@@3 |t#0@@1|))
 :qid |TreeDatatypedfy.27:16|
 :skolemid |547|
 :pattern ( (_module.__default.GInc ($LS $ly@@3) |t#0@@1|))
)))
(assert (forall (($ly@@4 T@U) (|forest#0@@1| T@U) ) (! (= (_module.__default.GForestInc ($LS $ly@@4) |forest#0@@1|) (_module.__default.GForestInc $ly@@4 |forest#0@@1|))
 :qid |TreeDatatypedfy.33:16|
 :skolemid |557|
 :pattern ( (_module.__default.GForestInc ($LS $ly@@4) |forest#0@@1|))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@5) $h@@1))) ($IsAllocBox (_module.List._h0 d@@7) _module.List$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAllocBox (_module.List._h0 d@@7) _module.List$T@@5 $h@@1))
)))
(assert (forall ((d@@8 T@U) (_module.GTree$T@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.GTree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.GTree _module.GTree$T@@4) $h@@2))) ($IsAllocBox (_module.GTree._h4 d@@8) _module.GTree$T@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($IsAllocBox (_module.GTree._h4 d@@8) _module.GTree$T@@4 $h@@2))
)))
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
 :skolemid |703|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsBox bx@@0 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((_module.GTree$T@@5 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.GTree _module.GTree$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.GTree _module.GTree$T@@5))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@1 (Tclass._module.GTree _module.GTree$T@@5)))
)))
(assert (forall ((d@@10 T@U) (_module.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@10) (Tclass._module.List _module.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@10) (Tclass._module.List _module.List$T@@7) $h@@3))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |TreeDatatypedfy.6:31|
 :skolemid |624|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= (|#_module.GTree.Node| (Lit BoxType |a#22#0#0|) (Lit DatatypeTypeType |a#22#1#0|)) (Lit DatatypeTypeType (|#_module.GTree.Node| |a#22#0#0| |a#22#1#0|)))
 :qid |TreeDatatypedfy.25:26|
 :skolemid |658|
 :pattern ( (|#_module.GTree.Node| (Lit BoxType |a#22#0#0|) (Lit DatatypeTypeType |a#22#1#0|)))
)))
(assert (forall ((d@@11 T@U) (_module.GTree$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.GTree.Node_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.GTree _module.GTree$T@@6) $h@@4))) ($IsAlloc DatatypeTypeType (_module.GTree._h5 d@@11) (Tclass._module.List (Tclass._module.GTree _module.GTree$T@@6)) $h@@4))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.GTree._h5 d@@11) (Tclass._module.List (Tclass._module.GTree _module.GTree$T@@6)) $h@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@5)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.GInc#canCall| |t#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| (Tclass._module.GTree TInt)))) ($Is DatatypeTypeType (_module.__default.GInc $ly@@5 |t#0@@2|) (Tclass._module.GTree TInt)))
 :qid |TreeDatatypedfy.27:16|
 :skolemid |552|
 :pattern ( (_module.__default.GInc $ly@@5 |t#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|forest#0@@2| T@U) ) (!  (=> (or (|_module.__default.GForestInc#canCall| |forest#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0@@2| (Tclass._module.List (Tclass._module.GTree TInt))))) (and (=> (not (_module.List.Nil_q |forest#0@@2|)) (let ((|tail#1| (_module.List._h1 |forest#0@@2|)))
(let ((|tree#1| ($Unbox DatatypeTypeType (_module.List._h0 |forest#0@@2|))))
 (and (|_module.__default.GInc#canCall| |tree#1|) (|_module.__default.GForestInc#canCall| |tail#1|))))) (= (_module.__default.GForestInc ($LS $ly@@6) |forest#0@@2|) (ite (_module.List.Nil_q |forest#0@@2|) |forest#0@@2| (let ((|tail#0| (_module.List._h1 |forest#0@@2|)))
(let ((|tree#0| ($Unbox DatatypeTypeType (_module.List._h0 |forest#0@@2|))))
(|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.GInc $ly@@6 |tree#0|)) (_module.__default.GForestInc $ly@@6 |tail#0|))))))))
 :qid |TreeDatatypedfy.33:16|
 :skolemid |561|
 :pattern ( (_module.__default.GForestInc ($LS $ly@@6) |forest#0@@2|))
))))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@3| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |children#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |n#Z#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.GInc)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (= |t#0@@3| (|#_module.GTree.Node| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List (Tclass._module.GTree TInt)))) (=> (and (and (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List (Tclass._module.GTree TInt)))) (and (= |children#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|))) (and (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |n#Z#0@0| |let#1#0#0|)) (and ($IsAlloc DatatypeTypeType |children#Z#0@0| (Tclass._module.List (Tclass._module.GTree TInt)) $Heap) (= (ControlFlow 0 3) (- 0 2))))) (< (DtRank |children#Z#0@0|) (DtRank |t#0@@3|))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 5) 1) anon7_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@3| (Tclass._module.GTree TInt))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
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
