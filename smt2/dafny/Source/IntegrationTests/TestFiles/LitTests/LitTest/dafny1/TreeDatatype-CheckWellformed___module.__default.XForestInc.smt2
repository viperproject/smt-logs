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
(declare-fun Tagclass._module.OneTree () T@U)
(declare-fun Tagclass._module.TreeList () T@U)
(declare-fun |##_module.TreeList.Nil| () T@U)
(declare-fun |##_module.TreeList.Cons| () T@U)
(declare-fun |##_module.OneTree.Node| () T@U)
(declare-fun tytagFamily$OneTree () T@U)
(declare-fun tytagFamily$TreeList () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.XInc (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.XInc#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.OneTree () T@U)
(declare-fun _module.OneTree.Node_q (T@U) Bool)
(declare-fun _module.OneTree._h9 (T@U) T@U)
(declare-fun |_module.__default.XForestInc#canCall| (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.OneTree._h8 (T@U) Int)
(declare-fun |#_module.OneTree.Node| (Int T@U) T@U)
(declare-fun _module.__default.XForestInc (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |#_module.TreeList.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.TreeList () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.TreeList.Nil| () T@U)
(declare-fun _module.TreeList.Nil_q (T@U) Bool)
(declare-fun _module.TreeList.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.TreeList._h7 (T@U) T@U)
(declare-fun _module.TreeList._h6 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.OneTree Tagclass._module.TreeList |##_module.TreeList.Nil| |##_module.TreeList.Cons| |##_module.OneTree.Node| tytagFamily$OneTree tytagFamily$TreeList)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.XInc#canCall| (Lit DatatypeTypeType |t#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.OneTree))) (and (and (_module.OneTree.Node_q (Lit DatatypeTypeType |t#0|)) (let ((|children#3| (Lit DatatypeTypeType (_module.OneTree._h9 (Lit DatatypeTypeType |t#0|)))))
 (and (_module.OneTree.Node_q (Lit DatatypeTypeType |t#0|)) (|_module.__default.XForestInc#canCall| |children#3|)))) (= (_module.__default.XInc ($LS $ly) (Lit DatatypeTypeType |t#0|)) (let ((|children#2| (Lit DatatypeTypeType (_module.OneTree._h9 (Lit DatatypeTypeType |t#0|)))))
(let ((|n#2| (LitInt (_module.OneTree._h8 (Lit DatatypeTypeType |t#0|)))))
(Lit DatatypeTypeType (|#_module.OneTree.Node| (LitInt (+ |n#2| 1)) (Lit DatatypeTypeType (_module.__default.XForestInc ($LS $ly) |children#2|)))))))))
 :qid |TreeDatatypedfy.46:16|
 :weight 3
 :skolemid |571|
 :pattern ( (_module.__default.XInc ($LS $ly) (Lit DatatypeTypeType |t#0|)))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.TreeList.Cons| |a#33#0#0| |a#33#1#0|) Tclass._module.TreeList)  (and ($Is DatatypeTypeType |a#33#0#0| Tclass._module.OneTree) ($Is DatatypeTypeType |a#33#1#0| Tclass._module.TreeList)))
 :qid |TreeDatatypedfy.42:32|
 :skolemid |673|
 :pattern ( ($Is DatatypeTypeType (|#_module.TreeList.Cons| |a#33#0#0| |a#33#1#0|) Tclass._module.TreeList))
)))
(assert (= (DatatypeCtorId |#_module.TreeList.Nil|) |##_module.TreeList.Nil|))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.OneTree) (_module.OneTree.Node_q d))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.OneTree.Node_q d) ($Is DatatypeTypeType d Tclass._module.OneTree))
)))
(assert ($Is DatatypeTypeType |#_module.TreeList.Nil| Tclass._module.TreeList))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.TreeList.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.TreeList.Nil|))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (_module.TreeList.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.TreeList.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.TreeList.Cons|))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( (_module.TreeList.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.OneTree.Node_q d@@2) (= (DatatypeCtorId d@@2) |##_module.OneTree.Node|))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (_module.OneTree.Node_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.TreeList.Cons_q d@@3) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) ) (! (= d@@3 (|#_module.TreeList.Cons| |a#32#0#0| |a#32#1#0|))
 :qid |TreeDatatypedfy.42:32|
 :skolemid |671|
)))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( (_module.TreeList.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.OneTree.Node_q d@@4) (exists ((|a#40#0#0| Int) (|a#40#1#0| T@U) ) (! (= d@@4 (|#_module.OneTree.Node| |a#40#0#0| |a#40#1#0|))
 :qid |TreeDatatypedfy.44:25|
 :skolemid |689|
)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (_module.OneTree.Node_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.TreeList.Nil_q d@@5) (= d@@5 |#_module.TreeList.Nil|))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (_module.TreeList.Nil_q d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|forest#0| T@U) ) (!  (=> (or (|_module.__default.XForestInc#canCall| |forest#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0| Tclass._module.TreeList))) (and (=> (not (_module.TreeList.Nil_q |forest#0|)) (let ((|tail#1| (_module.TreeList._h7 |forest#0|)))
(let ((|tree#1| (_module.TreeList._h6 |forest#0|)))
 (and (|_module.__default.XInc#canCall| |tree#1|) (|_module.__default.XForestInc#canCall| |tail#1|))))) (= (_module.__default.XForestInc ($LS $ly@@0) |forest#0|) (ite (_module.TreeList.Nil_q |forest#0|) |forest#0| (let ((|tail#0| (_module.TreeList._h7 |forest#0|)))
(let ((|tree#0| (_module.TreeList._h6 |forest#0|)))
(|#_module.TreeList.Cons| (_module.__default.XInc $ly@@0 |tree#0|) (_module.__default.XForestInc $ly@@0 |tail#0|))))))))
 :qid |TreeDatatypedfy.52:16|
 :skolemid |578|
 :pattern ( (_module.__default.XForestInc ($LS $ly@@0) |forest#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.XInc#canCall| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.OneTree))) ($Is DatatypeTypeType (_module.__default.XInc $ly@@1 |t#0@@0|) Tclass._module.OneTree))
 :qid |TreeDatatypedfy.46:16|
 :skolemid |568|
 :pattern ( (_module.__default.XInc $ly@@1 |t#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|forest#0@@0| T@U) ) (!  (=> (or (|_module.__default.XForestInc#canCall| |forest#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0@@0| Tclass._module.TreeList))) ($Is DatatypeTypeType (_module.__default.XForestInc $ly@@2 |forest#0@@0|) Tclass._module.TreeList))
 :qid |TreeDatatypedfy.52:16|
 :skolemid |576|
 :pattern ( (_module.__default.XForestInc $ly@@2 |forest#0@@0|))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.TreeList) (or (_module.TreeList.Nil_q d@@6) (_module.TreeList.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (_module.TreeList.Cons_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.TreeList))
 :pattern ( (_module.TreeList.Nil_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.TreeList))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|forest#0@@1| T@U) ) (!  (=> (or (|_module.__default.XForestInc#canCall| (Lit DatatypeTypeType |forest#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |forest#0@@1| Tclass._module.TreeList))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.TreeList.Nil_q (Lit DatatypeTypeType |forest#0@@1|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.TreeList._h7 (Lit DatatypeTypeType |forest#0@@1|)))))
(let ((|tree#3| (Lit DatatypeTypeType (_module.TreeList._h6 (Lit DatatypeTypeType |forest#0@@1|)))))
 (and (|_module.__default.XInc#canCall| |tree#3|) (|_module.__default.XForestInc#canCall| |tail#3|))))) (= (_module.__default.XForestInc ($LS $ly@@3) (Lit DatatypeTypeType |forest#0@@1|)) (ite (_module.TreeList.Nil_q (Lit DatatypeTypeType |forest#0@@1|)) |forest#0@@1| (let ((|tail#2| (Lit DatatypeTypeType (_module.TreeList._h7 (Lit DatatypeTypeType |forest#0@@1|)))))
(let ((|tree#2| (Lit DatatypeTypeType (_module.TreeList._h6 (Lit DatatypeTypeType |forest#0@@1|)))))
(Lit DatatypeTypeType (|#_module.TreeList.Cons| (Lit DatatypeTypeType (_module.__default.XInc ($LS $ly@@3) |tree#2|)) (Lit DatatypeTypeType (_module.__default.XForestInc ($LS $ly@@3) |tail#2|))))))))))
 :qid |TreeDatatypedfy.52:16|
 :weight 3
 :skolemid |579|
 :pattern ( (_module.__default.XForestInc ($LS $ly@@3) (Lit DatatypeTypeType |forest#0@@1|)))
))))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.TreeList.Cons| |a#31#0#0| |a#31#1#0|)) |##_module.TreeList.Cons|)
 :qid |TreeDatatypedfy.42:32|
 :skolemid |669|
 :pattern ( (|#_module.TreeList.Cons| |a#31#0#0| |a#31#1#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (= (_module.TreeList._h6 (|#_module.TreeList.Cons| |a#35#0#0| |a#35#1#0|)) |a#35#0#0|)
 :qid |TreeDatatypedfy.42:32|
 :skolemid |677|
 :pattern ( (|#_module.TreeList.Cons| |a#35#0#0| |a#35#1#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= (_module.TreeList._h7 (|#_module.TreeList.Cons| |a#37#0#0| |a#37#1#0|)) |a#37#1#0|)
 :qid |TreeDatatypedfy.42:32|
 :skolemid |679|
 :pattern ( (|#_module.TreeList.Cons| |a#37#0#0| |a#37#1#0|))
)))
(assert (forall ((|a#39#0#0| Int) (|a#39#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.OneTree.Node| |a#39#0#0| |a#39#1#0|)) |##_module.OneTree.Node|)
 :qid |TreeDatatypedfy.44:25|
 :skolemid |687|
 :pattern ( (|#_module.OneTree.Node| |a#39#0#0| |a#39#1#0|))
)))
(assert (forall ((|a#43#0#0| Int) (|a#43#1#0| T@U) ) (! (= (_module.OneTree._h8 (|#_module.OneTree.Node| |a#43#0#0| |a#43#1#0|)) |a#43#0#0|)
 :qid |TreeDatatypedfy.44:25|
 :skolemid |695|
 :pattern ( (|#_module.OneTree.Node| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((|a#44#0#0| Int) (|a#44#1#0| T@U) ) (! (= (_module.OneTree._h9 (|#_module.OneTree.Node| |a#44#0#0| |a#44#1#0|)) |a#44#1#0|)
 :qid |TreeDatatypedfy.44:25|
 :skolemid |696|
 :pattern ( (|#_module.OneTree.Node| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (< (DtRank |a#36#0#0|) (DtRank (|#_module.TreeList.Cons| |a#36#0#0| |a#36#1#0|)))
 :qid |TreeDatatypedfy.42:32|
 :skolemid |678|
 :pattern ( (|#_module.TreeList.Cons| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (< (DtRank |a#38#1#0|) (DtRank (|#_module.TreeList.Cons| |a#38#0#0| |a#38#1#0|)))
 :qid |TreeDatatypedfy.42:32|
 :skolemid |680|
 :pattern ( (|#_module.TreeList.Cons| |a#38#0#0| |a#38#1#0|))
)))
(assert (forall ((|a#45#0#0| Int) (|a#45#1#0| T@U) ) (! (< (DtRank |a#45#1#0|) (DtRank (|#_module.OneTree.Node| |a#45#0#0| |a#45#1#0|)))
 :qid |TreeDatatypedfy.44:25|
 :skolemid |697|
 :pattern ( (|#_module.OneTree.Node| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|t#0@@1| T@U) ) (! (= (_module.__default.XInc ($LS $ly@@4) |t#0@@1|) (_module.__default.XInc $ly@@4 |t#0@@1|))
 :qid |TreeDatatypedfy.46:16|
 :skolemid |565|
 :pattern ( (_module.__default.XInc ($LS $ly@@4) |t#0@@1|))
)))
(assert (forall (($ly@@5 T@U) (|forest#0@@2| T@U) ) (! (= (_module.__default.XForestInc ($LS $ly@@5) |forest#0@@2|) (_module.__default.XForestInc $ly@@5 |forest#0@@2|))
 :qid |TreeDatatypedfy.52:16|
 :skolemid |574|
 :pattern ( (_module.__default.XForestInc ($LS $ly@@5) |forest#0@@2|))
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
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.OneTree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.OneTree $h))) ($IsAlloc intType (int_2_U (_module.OneTree._h8 d@@7)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($IsAlloc intType (int_2_U (_module.OneTree._h8 d@@7)) TInt $h))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@8 Tclass._module.TreeList)) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.TreeList $h@@0))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 Tclass._module.TreeList $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@9 Tclass._module.OneTree)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.OneTree $h@@1))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.OneTree $h@@1))
)))
(assert (= (Tag Tclass._module.OneTree) Tagclass._module.OneTree))
(assert (= (TagFamily Tclass._module.OneTree) tytagFamily$OneTree))
(assert (= (Tag Tclass._module.TreeList) Tagclass._module.TreeList))
(assert (= (TagFamily Tclass._module.TreeList) tytagFamily$TreeList))
(assert (= |#_module.TreeList.Nil| (Lit DatatypeTypeType |#_module.TreeList.Nil|)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.TreeList.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.TreeList $h@@2))) ($IsAlloc DatatypeTypeType (_module.TreeList._h6 d@@10) Tclass._module.OneTree $h@@2))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.TreeList._h6 d@@10) Tclass._module.OneTree $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.TreeList.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.TreeList $h@@3))) ($IsAlloc DatatypeTypeType (_module.TreeList._h7 d@@11) Tclass._module.TreeList $h@@3))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.TreeList._h7 d@@11) Tclass._module.TreeList $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.OneTree.Node_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.OneTree $h@@4))) ($IsAlloc DatatypeTypeType (_module.OneTree._h9 d@@12) Tclass._module.TreeList $h@@4))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.OneTree._h9 d@@12) Tclass._module.TreeList $h@@4))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= (|#_module.TreeList.Cons| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|)) (Lit DatatypeTypeType (|#_module.TreeList.Cons| |a#34#0#0| |a#34#1#0|)))
 :qid |TreeDatatypedfy.42:32|
 :skolemid |676|
 :pattern ( (|#_module.TreeList.Cons| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|)))
)))
(assert (forall ((|a#42#0#0| Int) (|a#42#1#0| T@U) ) (! (= (|#_module.OneTree.Node| (LitInt |a#42#0#0|) (Lit DatatypeTypeType |a#42#1#0|)) (Lit DatatypeTypeType (|#_module.OneTree.Node| |a#42#0#0| |a#42#1#0|)))
 :qid |TreeDatatypedfy.44:25|
 :skolemid |694|
 :pattern ( (|#_module.OneTree.Node| (LitInt |a#42#0#0|) (Lit DatatypeTypeType |a#42#1#0|)))
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
(assert (forall ((|a#41#0#0| Int) (|a#41#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.OneTree.Node| |a#41#0#0| |a#41#1#0|) Tclass._module.OneTree)  (and ($Is intType (int_2_U |a#41#0#0|) TInt) ($Is DatatypeTypeType |a#41#1#0| Tclass._module.TreeList)))
 :qid |TreeDatatypedfy.44:25|
 :skolemid |691|
 :pattern ( ($Is DatatypeTypeType (|#_module.OneTree.Node| |a#41#0#0| |a#41#1#0|) Tclass._module.OneTree))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.XInc#canCall| |t#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| Tclass._module.OneTree))) (and (and (_module.OneTree.Node_q |t#0@@2|) (let ((|children#1| (_module.OneTree._h9 |t#0@@2|)))
 (and (_module.OneTree.Node_q |t#0@@2|) (|_module.__default.XForestInc#canCall| |children#1|)))) (= (_module.__default.XInc ($LS $ly@@6) |t#0@@2|) (let ((|children#0| (_module.OneTree._h9 |t#0@@2|)))
(let ((|n#0| (_module.OneTree._h8 |t#0@@2|)))
(|#_module.OneTree.Node| (+ |n#0| 1) (_module.__default.XForestInc $ly@@6 |children#0|)))))))
 :qid |TreeDatatypedfy.46:16|
 :skolemid |570|
 :pattern ( (_module.__default.XInc ($LS $ly@@6) |t#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |forest#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |tail#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |tree#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.XForestInc)
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
(let ((anon10_Then_correct  (=> (and (= |forest#0@@3| (|#_module.TreeList.Cons| |_mcc#0#0| |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.OneTree)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.TreeList) (= |let#0#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.TreeList) (= |tail#Z#0@0| |let#0#0#0|))) (and (and (= |let#1#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#1#0#0| Tclass._module.OneTree)) (and (= |tree#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |tree#Z#0@0| Tclass._module.OneTree $Heap)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (DtRank |tree#Z#0@0|) (DtRank |forest#0@@3|))) (=> (< (DtRank |tree#Z#0@0|) (DtRank |forest#0@@3|)) (=> (and (and (|_module.__default.XInc#canCall| |tree#Z#0@0|) (_module.OneTree.Node_q (_module.__default.XInc ($LS $LZ) |tree#Z#0@0|))) (and ($IsAlloc DatatypeTypeType |tail#Z#0@0| Tclass._module.TreeList $Heap) (= (ControlFlow 0 4) (- 0 3)))) (< (DtRank |tail#Z#0@0|) (DtRank |forest#0@@3|)))))))))
(let ((anon9_Else_correct  (=> (or (not (= |forest#0@@3| |#_module.TreeList.Nil|)) (not true)) (and (=> (= (ControlFlow 0 7) 4) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon8_Then_correct) (=> (= (ControlFlow 0 8) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |forest#0@@3| Tclass._module.TreeList)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
