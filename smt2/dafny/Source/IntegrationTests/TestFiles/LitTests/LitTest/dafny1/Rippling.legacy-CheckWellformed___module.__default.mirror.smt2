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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun tytagFamily$Nat () T@U)
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
(declare-fun |#_module.Tree.Node| (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree._h7 (T@U) T@U)
(declare-fun _module.Tree._h8 (T@U) T@U)
(declare-fun _module.Tree._h9 (T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.mirror (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.mirror#canCall| (T@U) Bool)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Nat Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| tytagFamily$Nat tytagFamily$Tree)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#56#0#0| |a#56#1#0| |a#56#2#0|) Tclass._module.Tree)  (and (and ($Is DatatypeTypeType |a#56#0#0| Tclass._module.Tree) ($Is DatatypeTypeType |a#56#1#0| Tclass._module.Nat)) ($Is DatatypeTypeType |a#56#2#0| Tclass._module.Tree)))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1303|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#56#0#0| |a#56#1#0| |a#56#2#0|) Tclass._module.Tree))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (|a#54#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Node| |a#54#0#0| |a#54#1#0| |a#54#2#0|)) |##_module.Tree.Node|)
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1299|
 :pattern ( (|#_module.Tree.Node| |a#54#0#0| |a#54#1#0| |a#54#2#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) (|a#58#2#0| T@U) ) (! (= (_module.Tree._h7 (|#_module.Tree.Node| |a#58#0#0| |a#58#1#0| |a#58#2#0|)) |a#58#0#0|)
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1308|
 :pattern ( (|#_module.Tree.Node| |a#58#0#0| |a#58#1#0| |a#58#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (_module.Tree._h8 (|#_module.Tree.Node| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#1#0|)
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1310|
 :pattern ( (|#_module.Tree.Node| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (_module.Tree._h9 (|#_module.Tree.Node| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#2#0|)
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1312|
 :pattern ( (|#_module.Tree.Node| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.mirror#canCall| (Lit DatatypeTypeType |t#0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0| Tclass._module.Tree))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0|)))))) (let ((|r#3| (Lit DatatypeTypeType (_module.Tree._h9 (Lit DatatypeTypeType |t#0|)))))
(let ((|l#3| (Lit DatatypeTypeType (_module.Tree._h7 (Lit DatatypeTypeType |t#0|)))))
 (and (|_module.__default.mirror#canCall| |r#3|) (|_module.__default.mirror#canCall| |l#3|))))) (= (_module.__default.mirror ($LS $ly) (Lit DatatypeTypeType |t#0|)) (ite (_module.Tree.Leaf_q (Lit DatatypeTypeType |t#0|)) |#_module.Tree.Leaf| (let ((|r#2| (Lit DatatypeTypeType (_module.Tree._h9 (Lit DatatypeTypeType |t#0|)))))
(let ((|x#2| (Lit DatatypeTypeType (_module.Tree._h8 (Lit DatatypeTypeType |t#0|)))))
(let ((|l#2| (Lit DatatypeTypeType (_module.Tree._h7 (Lit DatatypeTypeType |t#0|)))))
(Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType (_module.__default.mirror ($LS $ly) |r#2|)) |x#2| (Lit DatatypeTypeType (_module.__default.mirror ($LS $ly) |l#2|)))))))))))
 :qid |Ripplinglegacydfy.274:16|
 :weight 3
 :skolemid |799|
 :pattern ( (_module.__default.mirror ($LS $ly) (Lit DatatypeTypeType |t#0|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Tree.Leaf_q d) (= (DatatypeCtorId d) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( (_module.Tree.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |1300|
 :pattern ( (_module.Tree.Node_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tree.Node_q d@@1) (exists ((|a#55#0#0| T@U) (|a#55#1#0| T@U) (|a#55#2#0| T@U) ) (! (= d@@1 (|#_module.Tree.Node| |a#55#0#0| |a#55#1#0| |a#55#2#0|))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1301|
)))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( (_module.Tree.Node_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@2) (= d@@2 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1298|
 :pattern ( (_module.Tree.Leaf_q d@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.mirror#canCall| |t#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.Tree))) ($Is DatatypeTypeType (_module.__default.mirror $ly@@0 |t#0@@0|) Tclass._module.Tree))
 :qid |Ripplinglegacydfy.274:16|
 :skolemid |796|
 :pattern ( (_module.__default.mirror $ly@@0 |t#0@@0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1316|
 :pattern ( (_module.Tree.Node_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Tree))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|) (Lit DatatypeTypeType |a#57#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#57#0#0| |a#57#1#0| |a#57#2#0|)))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1307|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|) (Lit DatatypeTypeType |a#57#2#0|)))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (< (DtRank |a#59#0#0|) (DtRank (|#_module.Tree.Node| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1309|
 :pattern ( (|#_module.Tree.Node| |a#59#0#0| |a#59#1#0| |a#59#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#1#0|) (DtRank (|#_module.Tree.Node| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1311|
 :pattern ( (|#_module.Tree.Node| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#2#0|) (DtRank (|#_module.Tree.Node| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |Ripplinglegacydfy.16:29|
 :skolemid |1313|
 :pattern ( (|#_module.Tree.Node| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall (($ly@@1 T@U) (|t#0@@1| T@U) ) (! (= (_module.__default.mirror ($LS $ly@@1) |t#0@@1|) (_module.__default.mirror $ly@@1 |t#0@@1|))
 :qid |Ripplinglegacydfy.274:16|
 :skolemid |794|
 :pattern ( (_module.__default.mirror ($LS $ly@@1) |t#0@@1|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1320|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Nat $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Tree $h@@0))
)))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Tree.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Tree $h@@1))) ($IsAlloc DatatypeTypeType (_module.Tree._h7 d@@6) Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h7 d@@6) Tclass._module.Tree $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Tree $h@@2))) ($IsAlloc DatatypeTypeType (_module.Tree._h8 d@@7) Tclass._module.Nat $h@@2))
 :qid |unknown.0:0|
 :skolemid |1305|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h8 d@@7) Tclass._module.Nat $h@@2))
)))
(assert (forall ((d@@8 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Tree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Tree $h@@3))) ($IsAlloc DatatypeTypeType (_module.Tree._h9 d@@8) Tclass._module.Tree $h@@3))
 :qid |unknown.0:0|
 :skolemid |1306|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h9 d@@8) Tclass._module.Tree $h@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.mirror#canCall| |t#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree))) (and (=> (not (_module.Tree.Leaf_q |t#0@@2|)) (let ((|r#1| (_module.Tree._h9 |t#0@@2|)))
(let ((|l#1@@0| (_module.Tree._h7 |t#0@@2|)))
 (and (|_module.__default.mirror#canCall| |r#1|) (|_module.__default.mirror#canCall| |l#1@@0|))))) (= (_module.__default.mirror ($LS $ly@@2) |t#0@@2|) (ite (_module.Tree.Leaf_q |t#0@@2|) |#_module.Tree.Leaf| (let ((|r#0| (_module.Tree._h9 |t#0@@2|)))
(let ((|x#0| (_module.Tree._h8 |t#0@@2|)))
(let ((|l#0@@0| (_module.Tree._h7 |t#0@@2|)))
(|#_module.Tree.Node| (_module.__default.mirror $ly@@2 |r#0|) |x#0| (_module.__default.mirror $ly@@2 |l#0@@0|)))))))))
 :qid |Ripplinglegacydfy.274:16|
 :skolemid |798|
 :pattern ( (_module.__default.mirror ($LS $ly@@2) |t#0@@2|))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |r#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |l#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.mirror)
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
(let ((anon10_Then_correct  (=> (and (= |t#0@@3| (|#_module.Tree.Node| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0|)) ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.Tree)) (=> (and (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.Nat) ($Is DatatypeTypeType |_mcc#2#0| Tclass._module.Tree)) (and (= |let#0#0#0| |_mcc#2#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Tree))) (=> (and (and (and (= |r#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#1#0#0| Tclass._module.Nat) (= |x#Z#0@0| |let#1#0#0|))) (and (and (= |let#2#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#2#0#0| Tclass._module.Tree)) (and (= |l#Z#0@0| |let#2#0#0|) ($IsAlloc DatatypeTypeType |r#Z#0@0| Tclass._module.Tree $Heap)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (DtRank |r#Z#0@0|) (DtRank |t#0@@3|))) (=> (< (DtRank |r#Z#0@0|) (DtRank |t#0@@3|)) (=> (|_module.__default.mirror#canCall| |r#Z#0@0|) (=> (and ($IsAlloc DatatypeTypeType |l#Z#0@0| Tclass._module.Tree $Heap) (= (ControlFlow 0 4) (- 0 3))) (< (DtRank |l#Z#0@0|) (DtRank |t#0@@3|)))))))))))
(let ((anon9_Else_correct  (=> (or (not (= |t#0@@3| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 7) 4) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon8_Then_correct) (=> (= (ControlFlow 0 8) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@3| Tclass._module.Tree)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
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
