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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._module.Expr () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Expr.Add| () T@U)
(declare-fun |##_module.Expr.Mul| () T@U)
(declare-fun |##_module.Expr.Lit| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun HandleTypeType () T@T)
(declare-fun |lambda#4| (T@U T@U) T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Fold (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Fold#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.List._h0 (T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.Eval (T@U T@U) Int)
(declare-fun MapType1Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun _module.Expr.Add_q (T@U) Bool)
(declare-fun _module.Expr.Mul_q (T@U) Bool)
(declare-fun _module.Expr.Lit_q (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |#_module.Expr.Add| (T@U) T@U)
(declare-fun |#_module.Expr.Mul| (T@U) T@U)
(declare-fun |#_module.Expr.Lit| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |_module.__default.Eval#canCall| (T@U) Bool)
(declare-fun Tclass._module.Expr () T@U)
(declare-fun _module.Expr._h2 (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U Int) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun _module.Expr._h3 (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun _module.Expr._h4 (T@U) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#40| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._module.Expr Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| |##_module.Expr.Add| |##_module.Expr.Mul| |##_module.Expr.Lit| tytagFamily$object |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| tytagFamily$Expr tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor LayerTypeType) 3)) (= (Ctor HandleTypeType) 4)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#3#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#4| |l#0| |l#1|) |$l#3#ly#0|) (Handle2 (|lambda#0| |$l#3#ly#0|) |l#0| |l#1|))
 :qid |nofile.1:7|
 :skolemid |683|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#4| |l#0| |l#1|) |$l#3#ly#0|))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$l#5#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@0| |l#1@@0|) |$l#5#ly#0|) (Handle2 (|lambda#5| |$l#5#ly#0|) |l#0@@0| |l#1@@0|))
 :qid |nofile.1:7|
 :skolemid |685|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@0| |l#1@@0|) |$l#5#ly#0|))
)))
(assert  (and (= (Ctor DatatypeTypeType) 5) (= (Ctor BoxType) 6)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Fold$A T@U) (_module._default.Fold$B T@U) ($ly T@U) ($Heap T@U) (|xs#0| T@U) (|unit#0| T@U) (|f#0| T@U) ) (!  (=> (or (|_module.__default.Fold#canCall| _module._default.Fold$A _module._default.Fold$B (Lit DatatypeTypeType |xs#0|) |unit#0| |f#0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.Fold$A))) ($IsBox |unit#0| _module._default.Fold$B)) ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 _module._default.Fold$A _module._default.Fold$B _module._default.Fold$B))) (forall ((|x#4| T@U) (|y#2| T@U) ) (!  (=> (and ($IsBox |x#4| _module._default.Fold$A) ($IsBox |y#2| _module._default.Fold$B)) (=> (< (BoxRank |x#4|) (DtRank |xs#0|)) (Requires2 _module._default.Fold$A _module._default.Fold$B _module._default.Fold$B $Heap |f#0| |x#4| |y#2|)))
 :qid |Folddfy.16:19|
 :skolemid |612|
 :pattern ( (Requires2 _module._default.Fold$A _module._default.Fold$B _module._default.Fold$B $Heap |f#0| |x#4| |y#2|))
))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|xs#4| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.Fold#canCall| _module._default.Fold$A _module._default.Fold$B |xs#4| |unit#0| |f#0|))) (= (_module.__default.Fold _module._default.Fold$A _module._default.Fold$B ($LS $ly) (Lit DatatypeTypeType |xs#0|) |unit#0| |f#0|) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |unit#0| (let ((|xs#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#5| (Lit BoxType (_module.List._h0 (Lit DatatypeTypeType |xs#0|)))))
(Apply2 _module._default.Fold$A _module._default.Fold$B _module._default.Fold$B $Heap |f#0| |x#5| (_module.__default.Fold _module._default.Fold$A _module._default.Fold$B ($LS $ly) |xs#3| |unit#0| |f#0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |613|
 :pattern ( (_module.__default.Fold _module._default.Fold$A _module._default.Fold$B ($LS $ly) (Lit DatatypeTypeType |xs#0|) |unit#0| |f#0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Fold$A@@0 T@U) (_module._default.Fold$B@@0 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (|xs#0@@0| T@U) (|unit#0@@0| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|_module.__default.Fold#canCall| _module._default.Fold$A@@0 _module._default.Fold$B@@0 |xs#0@@0| |unit#0@@0| |f#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.Fold$A@@0))) ($IsBox |unit#0@@0| _module._default.Fold$B@@0)) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 _module._default.Fold$A@@0 _module._default.Fold$B@@0 _module._default.Fold$B@@0))) (forall ((|x#1| T@U) (|y#1| T@U) ) (!  (=> (and ($IsBox |x#1| _module._default.Fold$A@@0) ($IsBox |y#1| _module._default.Fold$B@@0)) (=> (< (BoxRank |x#1|) (DtRank |xs#0@@0|)) (Requires2 _module._default.Fold$A@@0 _module._default.Fold$B@@0 _module._default.Fold$B@@0 $Heap@@0 |f#0@@0| |x#1| |y#1|)))
 :qid |Folddfy.16:19|
 :skolemid |609|
 :pattern ( (Requires2 _module._default.Fold$A@@0 _module._default.Fold$B@@0 _module._default.Fold$B@@0 $Heap@@0 |f#0@@0| |x#1| |y#1|))
))))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|xs#2| (_module.List._h1 |xs#0@@0|)))
(|_module.__default.Fold#canCall| _module._default.Fold$A@@0 _module._default.Fold$B@@0 |xs#2| |unit#0@@0| |f#0@@0|))) (= (_module.__default.Fold _module._default.Fold$A@@0 _module._default.Fold$B@@0 ($LS $ly@@0) |xs#0@@0| |unit#0@@0| |f#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |unit#0@@0| (let ((|xs#1| (_module.List._h1 |xs#0@@0|)))
(let ((|x#2| (_module.List._h0 |xs#0@@0|)))
(Apply2 _module._default.Fold$A@@0 _module._default.Fold$B@@0 _module._default.Fold$B@@0 $Heap@@0 |f#0@@0| |x#2| (_module.__default.Fold _module._default.Fold$A@@0 _module._default.Fold$B@@0 $ly@@0 |xs#1| |unit#0@@0| |f#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (_module.__default.Fold _module._default.Fold$A@@0 _module._default.Fold$B@@0 ($LS $ly@@0) |xs#0@@0| |unit#0@@0| |f#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)))
)))
(assert (= (Ctor refType) 7))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((_module.List$A T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@0))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A) $h@@0))
)))
(assert (forall ((_module.List$A@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$A@@0)))
)))
(assert  (and (and (and (= (Ctor FieldType) 8) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (t3 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) (x2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 t3 (MapType1Store t0@@0 t1@@0 t2 t3 m@@1 x0@@1 x1 x2 val@@1) x0@@1 x1 x2) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (u3 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (x2@@0 T@U) (y0@@0 T@U) (y1 T@U) (y2 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 u3 (MapType1Store u0@@0 u1@@0 u2 u3 m@@2 x0@@2 x1@@0 x2@@0 val@@2) y0@@0 y1 y2) (MapType1Select u0@@0 u1@@0 u2 u3 m@@2 y0@@0 y1 y2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (u3@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (x2@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) (y2@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 (MapType1Store u0@@1 u1@@1 u2@@0 u3@@0 m@@3 x0@@3 x1@@1 x2@@1 val@@3) y0@@1 y1@@0 y2@@0) (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 m@@3 y0@@1 y1@@0 y2@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (u3@@1 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@2 T@U) (x2@@2 T@U) (y0@@2 T@U) (y1@@1 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 (MapType1Store u0@@2 u1@@2 u2@@1 u3@@1 m@@4 x0@@4 x1@@2 x2@@2 val@@4) y0@@2 y1@@1 y2@@1) (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 m@@4 y0@@2 y1@@1 y2@@1)))
 :qid |mapAx1:MapType1Select:2|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|$l#3#heap#0| T@U) (|$l#3#e#0| T@U) (|$l#3#v#0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#0| |l#0@@1|) |$l#3#heap#0| |$l#3#e#0| |$l#3#v#0|) ($Box intType (int_2_U (+ (_module.__default.Eval |l#0@@1| ($Unbox DatatypeTypeType |$l#3#e#0|)) (U_2_int ($Unbox intType |$l#3#v#0|))))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#0| |l#0@@1|) |$l#3#heap#0| |$l#3#e#0| |$l#3#v#0|))
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
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0@@9|) ($IsBox |x1#0| |#$T1@@9|)) (|Set#Equal| (Reads2 |#$T0@@9| |#$T1@@9| |#$R@@9| $OneHeap |f#0@@1| |x0#0| |x1#0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)))
)))
(assert (forall ((_module.List$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1))  (and ($IsBox |a#6#0#0| _module.List$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$A@@1))))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$A@@1)))
)))
(assert (= (Ctor SetType) 10))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (heap T@U) (h@@0 T@U) (r T@U) (rd T@U) (bx0 T@U) (bx1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@1) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType rd heap bx0 bx1) bx@@1))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@1))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Expr.Add_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Expr.Add|))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( (_module.Expr.Add_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Expr.Mul_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Expr.Mul|))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( (_module.Expr.Mul_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Expr.Lit_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Expr.Lit|))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (_module.Expr.Lit_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Folddfy.3:31|
 :skolemid |630|
)))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType0Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f ly))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Expr.Add_q d@@6) (exists ((|a#13#0#0| T@U) ) (! (= d@@6 (|#_module.Expr.Add| |a#13#0#0|))
 :qid |Folddfy.5:21|
 :skolemid |648|
)))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( (_module.Expr.Add_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Expr.Mul_q d@@7) (exists ((|a#19#0#0| T@U) ) (! (= d@@7 (|#_module.Expr.Mul| |a#19#0#0|))
 :qid |Folddfy.5:39|
 :skolemid |657|
)))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( (_module.Expr.Mul_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Expr.Lit_q d@@8) (exists ((|a#25#0#0| Int) ) (! (= d@@8 (|#_module.Expr.Lit| |a#25#0#0|))
 :qid |Folddfy.5:57|
 :skolemid |666|
)))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (_module.Expr.Lit_q d@@8))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType h@@2 heap@@0 bx0@@0 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@3 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@3) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@3 t@@0 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@4 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@4) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@4))
)))
(assert (forall ((_module._default.Fold$A@@1 T@U) (_module._default.Fold$B@@1 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|unit#0@@1| T@U) (|f#0@@2| T@U) ) (! (= (_module.__default.Fold _module._default.Fold$A@@1 _module._default.Fold$B@@1 ($LS $ly@@1) |xs#0@@1| |unit#0@@1| |f#0@@2|) (_module.__default.Fold _module._default.Fold$A@@1 _module._default.Fold$B@@1 $ly@@1 |xs#0@@1| |unit#0@@1| |f#0@@2|))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (_module.__default.Fold _module._default.Fold$A@@1 _module._default.Fold$B@@1 ($LS $ly@@1) |xs#0@@1| |unit#0@@1| |f#0@@2|))
)))
(assert (forall ((_module.List$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$A@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$A@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (Tclass._module.List _module.List$A@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Fold$A@@2 T@U) (_module._default.Fold$B@@2 T@U) ($ly@@2 T@U) ($Heap@@1 T@U) (|xs#0@@2| T@U) (|unit#0@@2| T@U) (|f#0@@3| T@U) ) (!  (=> (or (|_module.__default.Fold#canCall| _module._default.Fold$A@@2 _module._default.Fold$B@@2 (Lit DatatypeTypeType |xs#0@@2|) (Lit BoxType |unit#0@@2|) (Lit HandleTypeType |f#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.Fold$A@@2))) ($IsBox |unit#0@@2| _module._default.Fold$B@@2)) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 _module._default.Fold$A@@2 _module._default.Fold$B@@2 _module._default.Fold$B@@2))) (forall ((|x#7| T@U) (|y#3| T@U) ) (!  (=> (and ($IsBox |x#7| _module._default.Fold$A@@2) ($IsBox |y#3| _module._default.Fold$B@@2)) (=> (< (BoxRank |x#7|) (DtRank |xs#0@@2|)) (Requires2 _module._default.Fold$A@@2 _module._default.Fold$B@@2 _module._default.Fold$B@@2 $Heap@@1 (Lit HandleTypeType |f#0@@3|) |x#7| |y#3|)))
 :qid |Folddfy.16:19|
 :skolemid |614|
 :pattern ( (Requires2 _module._default.Fold$A@@2 _module._default.Fold$B@@2 _module._default.Fold$B@@2 $Heap@@1 |f#0@@3| |x#7| |y#3|))
))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|xs#6| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.Fold#canCall| _module._default.Fold$A@@2 _module._default.Fold$B@@2 |xs#6| (Lit BoxType |unit#0@@2|) (Lit HandleTypeType |f#0@@3|)))) (= (_module.__default.Fold _module._default.Fold$A@@2 _module._default.Fold$B@@2 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|) (Lit BoxType |unit#0@@2|) (Lit HandleTypeType |f#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |unit#0@@2| (let ((|xs#5| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|x#8| (Lit BoxType (_module.List._h0 (Lit DatatypeTypeType |xs#0@@2|)))))
(Apply2 _module._default.Fold$A@@2 _module._default.Fold$B@@2 _module._default.Fold$B@@2 $Heap@@1 (Lit HandleTypeType |f#0@@3|) |x#8| (Lit BoxType (_module.__default.Fold _module._default.Fold$A@@2 _module._default.Fold$B@@2 ($LS $ly@@2) |xs#5| (Lit BoxType |unit#0@@2|) (Lit HandleTypeType |f#0@@3|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |615|
 :pattern ( (_module.__default.Fold _module._default.Fold$A@@2 _module._default.Fold$B@@2 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|) (Lit BoxType |unit#0@@2|) (Lit HandleTypeType |f#0@@3|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|e#0| T@U) ) (!  (=> (or (|_module.__default.Eval#canCall| (Lit DatatypeTypeType |e#0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |e#0| Tclass._module.Expr))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expr.Add_q (Lit DatatypeTypeType |e#0|))))) (let ((|es#6| (Lit DatatypeTypeType (_module.Expr._h2 (Lit DatatypeTypeType |e#0|)))))
 (and (forall ((|$l#8#e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#8#e#0| Tclass._module.Expr) (=> (< (DtRank |$l#8#e#0|) (DtRank |es#6|)) (|_module.__default.Eval#canCall| |$l#8#e#0|)))
 :qid |unknown.0:0|
 :skolemid |589|
)) (|_module.__default.Fold#canCall| Tclass._module.Expr TInt |es#6| ($Box intType (int_2_U (LitInt 0))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#6|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $ly@@3))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expr.Add_q (Lit DatatypeTypeType |e#0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expr.Mul_q (Lit DatatypeTypeType |e#0|))))) (let ((|es#7| (Lit DatatypeTypeType (_module.Expr._h3 (Lit DatatypeTypeType |e#0|)))))
 (and (forall ((|$l#10#e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#10#e#0| Tclass._module.Expr) (=> (< (DtRank |$l#10#e#0|) (DtRank |es#7|)) (|_module.__default.Eval#canCall| |$l#10#e#0|)))
 :qid |unknown.0:0|
 :skolemid |590|
)) (|_module.__default.Fold#canCall| Tclass._module.Expr TInt |es#7| ($Box intType (int_2_U (LitInt 1))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#7|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $ly@@3))))))))) (= (_module.__default.Eval ($LS $ly@@3) (Lit DatatypeTypeType |e#0|)) (ite (_module.Expr.Add_q (Lit DatatypeTypeType |e#0|)) (let ((|es#4| (Lit DatatypeTypeType (_module.Expr._h2 (Lit DatatypeTypeType |e#0|)))))
(LitInt (U_2_int ($Unbox intType (_module.__default.Fold Tclass._module.Expr TInt ($LS $LZ) |es#4| ($Box intType (int_2_U (LitInt 0))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#4|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $ly@@3)))))))) (ite (_module.Expr.Mul_q (Lit DatatypeTypeType |e#0|)) (let ((|es#5| (Lit DatatypeTypeType (_module.Expr._h3 (Lit DatatypeTypeType |e#0|)))))
(LitInt (U_2_int ($Unbox intType (_module.__default.Fold Tclass._module.Expr TInt ($LS $LZ) |es#5| ($Box intType (int_2_U (LitInt 1))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#5|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $ly@@3)))))))) (let ((|i#2| (LitInt (_module.Expr._h4 (Lit DatatypeTypeType |e#0|)))))
|i#2|))))))
 :qid |Folddfy.7:10|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.Eval ($LS $ly@@3) (Lit DatatypeTypeType |e#0|)))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.Expr)))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsBox bx@@7 Tclass._module.Expr))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@0 T@U) (t0@@4 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5) (forall ((bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@1 t0@@4) ($IsAllocBox bx0@@1 t0@@4 h@@5)) (and ($IsBox bx1@@1 t1@@3) ($IsAllocBox bx1@@1 t1@@3 h@@5))) (Requires2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1))
 :pattern ( (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#3#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#2| |l#0@@2|) |$l#3#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( (MapType0Select refType boolType (|lambda#2| |l#0@@2|) |$l#3#o#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Add| |a#14#0#0|) Tclass._module.Expr) ($Is DatatypeTypeType |a#14#0#0| (Tclass._module.List Tclass._module.Expr)))
 :qid |Folddfy.5:21|
 :skolemid |650|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Add| |a#14#0#0|) Tclass._module.Expr))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Mul| |a#20#0#0|) Tclass._module.Expr) ($Is DatatypeTypeType |a#20#0#0| (Tclass._module.List Tclass._module.Expr)))
 :qid |Folddfy.5:39|
 :skolemid |659|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Mul| |a#20#0#0|) Tclass._module.Expr))
)))
(assert (forall ((f@@1 T@U) (t0@@5 T@U) (t1@@4 T@U) (t2@@3 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)) (forall ((h@@6 T@U) (bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@2 t1@@4))) (Requires2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2)) ($IsBox (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2) t2@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)))
)))
(assert (forall ((_module.List$A@@3 T@U) (d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$A@@3)) (or (_module.List.Nil_q d@@9) (_module.List.Cons_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (_module.List.Cons_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$A@@3)))
 :pattern ( (_module.List.Nil_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$A@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (t2@@4 T@U) (heap@@1 T@U) (f@@2 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@3 t0@@6) ($IsBox bx1@@3 t1@@5)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)))) (= (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) |Set#Empty|) (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@2 bx0@@3 bx1@@3) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) ($IsGoodHeap heap@@1))
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@2 bx0@@3 bx1@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@1| T@U) (|l#2| Int) (|$l#3#heap#0@@0| T@U) (|$l#3#e#0@@0| T@U) (|$l#3#v#0@@0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#1| |l#0@@3| |l#1@@1| |l#2|) |$l#3#heap#0@@0| |$l#3#e#0@@0| |$l#3#v#0@@0|))  (and (and ($IsBox |$l#3#e#0@@0| |l#0@@3|) ($IsBox |$l#3#v#0@@0| |l#1@@1|)) (< (DtRank ($Unbox DatatypeTypeType |$l#3#e#0@@0|)) |l#2|)))
 :qid |Folddfy.5:10|
 :skolemid |680|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#1| |l#0@@3| |l#1@@1| |l#2|) |$l#3#heap#0@@0| |$l#3#e#0@@0| |$l#3#v#0@@0|))
)))
(assert (forall ((f@@3 T@U) (t0@@7 T@U) (t1@@6 T@U) (t2@@5 T@U) (h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7)) (forall ((bx0@@4 T@U) (bx1@@4 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@4 t0@@7 h@@7) ($IsAllocBox bx1@@4 t1@@6 h@@7)) (Requires2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4)) ($IsAllocBox (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4) t2@@5 h@@7))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@8 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@8) h@@8) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@8 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@8) h@@8))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Folddfy.3:31|
 :skolemid |628|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Folddfy.3:31|
 :skolemid |637|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Folddfy.3:31|
 :skolemid |639|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#5#heap#0| T@U) (|$l#5#e#0| T@U) (|$l#5#v#0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#5| |l#0@@4|) |$l#5#heap#0| |$l#5#e#0| |$l#5#v#0|) ($Box intType (int_2_U (Mul (_module.__default.Eval |l#0@@4| ($Unbox DatatypeTypeType |$l#5#e#0|)) (U_2_int ($Unbox intType |$l#5#v#0|))))))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#5| |l#0@@4|) |$l#5#heap#0| |$l#5#e#0| |$l#5#v#0|))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((_module.List$A@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$A@@4)) _module.List$A@@4)
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (Tclass._module.List _module.List$A@@4))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expr.Add| |a#12#0#0|)) |##_module.Expr.Add|)
 :qid |Folddfy.5:21|
 :skolemid |646|
 :pattern ( (|#_module.Expr.Add| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_module.Expr._h2 (|#_module.Expr.Add| |a#16#0#0|)) |a#16#0#0|)
 :qid |Folddfy.5:21|
 :skolemid |653|
 :pattern ( (|#_module.Expr.Add| |a#16#0#0|))
)))
(assert (forall ((|a#18#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expr.Mul| |a#18#0#0|)) |##_module.Expr.Mul|)
 :qid |Folddfy.5:39|
 :skolemid |655|
 :pattern ( (|#_module.Expr.Mul| |a#18#0#0|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (_module.Expr._h3 (|#_module.Expr.Mul| |a#22#0#0|)) |a#22#0#0|)
 :qid |Folddfy.5:39|
 :skolemid |662|
 :pattern ( (|#_module.Expr.Mul| |a#22#0#0|))
)))
(assert (forall ((|a#24#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Expr.Lit| |a#24#0#0|)) |##_module.Expr.Lit|)
 :qid |Folddfy.5:57|
 :skolemid |664|
 :pattern ( (|#_module.Expr.Lit| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| Int) ) (! (= (_module.Expr._h4 (|#_module.Expr.Lit| |a#28#0#0|)) |a#28#0#0|)
 :qid |Folddfy.5:57|
 :skolemid |671|
 :pattern ( (|#_module.Expr.Lit| |a#28#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@9 T@U) (t1@@7 T@U) (t2@@6 T@U) (heap@@2 T@U) (f@@4 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@5 t0@@9) ($IsBox bx1@@5 t1@@7)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@9 t1@@7 t2@@6)))) (|Set#Equal| (Reads2 t0@@9 t1@@7 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) |Set#Empty|)) (= (Requires2 t0@@9 t1@@7 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) (Requires2 t0@@9 t1@@7 t2@@6 heap@@2 f@@4 bx0@@5 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@9 t1@@7 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) ($IsGoodHeap heap@@2))
 :pattern ( (Requires2 t0@@9 t1@@7 t2@@6 heap@@2 f@@4 bx0@@5 bx1@@5))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#3#heap#0@@1| T@U) (|$l#3#e#0@@1| T@U) (|$l#3#v#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#3| |l#0@@5|) |$l#3#heap#0@@1| |$l#3#e#0@@1| |$l#3#v#0@@1|) |l#0@@5|)
 :qid |Folddfy.10:33|
 :skolemid |682|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#3| |l#0@@5|) |$l#3#heap#0@@1| |$l#3#e#0@@1| |$l#3#v#0@@1|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Folddfy.3:31|
 :skolemid |638|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Folddfy.3:31|
 :skolemid |640|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|e#0@@0| T@U) ) (! (= (_module.__default.Eval ($LS $ly@@4) |e#0@@0|) (_module.__default.Eval $ly@@4 |e#0@@0|))
 :qid |Folddfy.7:10|
 :skolemid |581|
 :pattern ( (_module.__default.Eval ($LS $ly@@4) |e#0@@0|))
)))
(assert (forall ((f@@5 T@U) (t0@@10 T@U) (t1@@8 T@U) (t2@@7 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@10 t1@@8 t2@@7)) (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 u0@@3) ($IsBox bx@@10 t0@@10))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@10 u0@@3))
 :pattern ( ($IsBox bx@@10 t0@@10))
))) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 u1@@3) ($IsBox bx@@11 t1@@8))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@11 u1@@3))
 :pattern ( ($IsBox bx@@11 t1@@8))
))) (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 t2@@7) ($IsBox bx@@12 u2@@2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@12 t2@@7))
 :pattern ( ($IsBox bx@@12 u2@@2))
))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@10 t1@@8 t2@@7)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
)))
(assert (forall ((|a#26#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Lit| |a#26#0#0|) Tclass._module.Expr) ($Is intType (int_2_U |a#26#0#0|) TInt))
 :qid |Folddfy.5:57|
 :skolemid |668|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Lit| |a#26#0#0|) Tclass._module.Expr))
)))
(assert (forall ((f@@6 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@6 ($LS ly@@0)) (AtLayer A@@0 f@@6 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@6 ($LS ly@@0)))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (DtRank |a#17#0#0|) (DtRank (|#_module.Expr.Add| |a#17#0#0|)))
 :qid |Folddfy.5:21|
 :skolemid |654|
 :pattern ( (|#_module.Expr.Add| |a#17#0#0|))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (< (DtRank |a#23#0#0|) (DtRank (|#_module.Expr.Mul| |a#23#0#0|)))
 :qid |Folddfy.5:39|
 :skolemid |663|
 :pattern ( (|#_module.Expr.Mul| |a#23#0#0|))
)))
(assert (forall ((d@@10 T@U) (_module.List$A@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$A@@5) $h@@2))) ($IsAllocBox (_module.List._h0 d@@10) _module.List$A@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( ($IsAllocBox (_module.List._h0 d@@10) _module.List$A@@5 $h@@2))
)))
(assert  (and (forall ((t0@@11 T@T) (t1@@9 T@T) (t2@@8 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) ) (! (= (MapType2Select t0@@11 t1@@9 t2@@8 (MapType2Store t0@@11 t1@@9 t2@@8 m@@5 x0@@5 x1@@3 val@@5) x0@@5 x1@@3) val@@5)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (y0@@3 T@U) (y1@@2 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@6 x0@@6 x1@@4 val@@6) y0@@3 y1@@2) (MapType2Select u0@@4 u1@@4 u2@@3 m@@6 y0@@3 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@5 u1@@5 u2@@4 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@6| T@U) (|l#1@@2| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#40| |l#0@@6| |l#1@@2| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |686|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#40| |l#0@@6| |l#1@@2| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) (|f#0@@4| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|) $h@@3) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|) $h@@3))
)))
(assert (forall ((d@@11 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Expr.Lit_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Expr $h@@4))) ($IsAlloc intType (int_2_U (_module.Expr._h4 d@@11)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |669|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expr._h4 d@@11)) TInt $h@@4))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 Tclass._module.Expr) (or (or (_module.Expr.Add_q d@@12) (_module.Expr.Mul_q d@@12)) (_module.Expr.Lit_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Expr.Lit_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Expr))
 :pattern ( (_module.Expr.Mul_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Expr))
 :pattern ( (_module.Expr.Add_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Expr))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((d@@13 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@13)) (DtRank d@@13))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@13)))
)))
(assert (forall ((t0@@12 T@U) (t1@@10 T@U) (t2@@9 T@U) (h0 T@U) (h1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@6 t0@@12) ($IsBox bx1@@6 t1@@10)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@12 t1@@10 t2@@9)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@10 t2@@9 h0 f@@7 bx0@@6 bx1@@6) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@12 t1@@10 t2@@9 h0 f@@7 bx0@@6 bx1@@6) (Requires2 t0@@12 t1@@10 t2@@9 h1 f@@7 bx0@@6 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@12 t1@@10 t2@@9 h1 f@@7 bx0@@6 bx1@@6))
)))
(assert (forall ((t0@@13 T@U) (t1@@11 T@U) (t2@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@7 t0@@13) ($IsBox bx1@@7 t1@@11)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@13 t1@@11 t2@@10)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads2 t0@@13 t1@@11 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@13 t1@@11 t2@@10 h0@@0 f@@8 bx0@@7 bx1@@7) (Requires2 t0@@13 t1@@11 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@13 t1@@11 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((_module.List$A@@6 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._module.List _module.List$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass._module.List _module.List$A@@6))))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx@@14 (Tclass._module.List _module.List$A@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Fold$A@@3 T@U) (_module._default.Fold$B@@3 T@U) ($ly@@5 T@U) ($Heap@@2 T@U) (|xs#0@@3| T@U) (|unit#0@@3| T@U) (|f#0@@5| T@U) ) (!  (=> (or (|_module.__default.Fold#canCall| _module._default.Fold$A@@3 _module._default.Fold$B@@3 |xs#0@@3| |unit#0@@3| |f#0@@5|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@2) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.Fold$A@@3)) ($IsAlloc DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.Fold$A@@3) $Heap@@2))) (and ($IsBox |unit#0@@3| _module._default.Fold$B@@3) ($IsAllocBox |unit#0@@3| _module._default.Fold$B@@3 $Heap@@2))) (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc2 _module._default.Fold$A@@3 _module._default.Fold$B@@3 _module._default.Fold$B@@3)) ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc2 _module._default.Fold$A@@3 _module._default.Fold$B@@3 _module._default.Fold$B@@3) $Heap@@2))) (forall ((|x#0| T@U) (|y#0| T@U) ) (!  (=> (and ($IsBox |x#0| _module._default.Fold$A@@3) ($IsBox |y#0| _module._default.Fold$B@@3)) (=> (< (BoxRank |x#0|) (DtRank |xs#0@@3|)) (Requires2 _module._default.Fold$A@@3 _module._default.Fold$B@@3 _module._default.Fold$B@@3 $Heap@@2 |f#0@@5| |x#0| |y#0|)))
 :qid |Folddfy.16:19|
 :skolemid |607|
 :pattern ( (Requires2 _module._default.Fold$A@@3 _module._default.Fold$B@@3 _module._default.Fold$B@@3 $Heap@@2 |f#0@@5| |x#0| |y#0|))
))))) ($IsBox (_module.__default.Fold _module._default.Fold$A@@3 _module._default.Fold$B@@3 $ly@@5 |xs#0@@3| |unit#0@@3| |f#0@@5|) _module._default.Fold$B@@3))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( (_module.__default.Fold _module._default.Fold$A@@3 _module._default.Fold$B@@3 $ly@@5 |xs#0@@3| |unit#0@@3| |f#0@@5|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((d@@14 T@U) (_module.List$A@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.List.Cons_q d@@14) ($IsAlloc DatatypeTypeType d@@14 (Tclass._module.List _module.List$A@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@14) (Tclass._module.List _module.List$A@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@14) (Tclass._module.List _module.List$A@@7) $h@@5))
)))
(assert (forall ((d@@15 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@15 Tclass._module.Expr)) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Expr $h@@6))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Expr $h@@6))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Expr) Tagclass._module.Expr))
(assert (= (TagFamily Tclass._module.Expr) tytagFamily$Expr))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|e#0@@1| T@U) ) (!  (=> (or (|_module.__default.Eval#canCall| |e#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@1| Tclass._module.Expr))) (and (and (=> (_module.Expr.Add_q |e#0@@1|) (let ((|es#2| (_module.Expr._h2 |e#0@@1|)))
 (and (forall ((|$l#2#e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#2#e#0| Tclass._module.Expr) (=> (< (DtRank |$l#2#e#0|) (DtRank |es#2|)) (|_module.__default.Eval#canCall| |$l#2#e#0|)))
 :qid |unknown.0:0|
 :skolemid |586|
)) (|_module.__default.Fold#canCall| Tclass._module.Expr TInt |es#2| ($Box intType (int_2_U (LitInt 0))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#2|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) $ly@@6)))))) (=> (not (_module.Expr.Add_q |e#0@@1|)) (=> (_module.Expr.Mul_q |e#0@@1|) (let ((|es#3| (_module.Expr._h3 |e#0@@1|)))
 (and (forall ((|$l#4#e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |$l#4#e#0| Tclass._module.Expr) (=> (< (DtRank |$l#4#e#0|) (DtRank |es#3|)) (|_module.__default.Eval#canCall| |$l#4#e#0|)))
 :qid |unknown.0:0|
 :skolemid |587|
)) (|_module.__default.Fold#canCall| Tclass._module.Expr TInt |es#3| ($Box intType (int_2_U (LitInt 1))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#3|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) $ly@@6)))))))) (= (_module.__default.Eval ($LS $ly@@6) |e#0@@1|) (ite (_module.Expr.Add_q |e#0@@1|) (U_2_int (let ((|es#0| (_module.Expr._h2 |e#0@@1|)))
($Unbox intType (_module.__default.Fold Tclass._module.Expr TInt ($LS $LZ) |es#0| ($Box intType (int_2_U (LitInt 0))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#0|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) $ly@@6)))))) (ite (_module.Expr.Mul_q |e#0@@1|) (U_2_int (let ((|es#1| (_module.Expr._h3 |e#0@@1|)))
($Unbox intType (_module.__default.Fold Tclass._module.Expr TInt ($LS $LZ) |es#1| ($Box intType (int_2_U (LitInt 1))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#1|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) $ly@@6)))))) (let ((|i#0| (_module.Expr._h4 |e#0@@1|)))
|i#0|))))))
 :qid |Folddfy.7:10|
 :skolemid |588|
 :pattern ( (_module.__default.Eval ($LS $ly@@6) |e#0@@1|))
))))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@1 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@14 T@U) (t1@@12 T@U) (t2@@11 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@9 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and ($IsBox bx0@@8 t0@@14) ($IsBox bx1@@8 t1@@12)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@14 t1@@12 t2@@11)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads2 t0@@14 t1@@12 t2@@11 h0@@1 f@@9 bx0@@8 bx1@@8) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@14 t1@@12 t2@@11 h0@@1 f@@9 bx0@@8 bx1@@8) (Reads2 t0@@14 t1@@12 t2@@11 h1@@1 f@@9 bx0@@8 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads2 t0@@14 t1@@12 t2@@11 h1@@1 f@@9 bx0@@8 bx1@@8))
)))
(assert (forall ((t0@@15 T@U) (t1@@13 T@U) (t2@@12 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@10 T@U) (bx0@@9 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and ($IsBox bx0@@9 t0@@15) ($IsBox bx1@@9 t1@@13)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@15 t1@@13 t2@@12)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@15 t1@@13 t2@@12 h0@@2 f@@10 bx0@@9 bx1@@9) (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9))
)))
(assert (forall ((t0@@16 T@U) (t1@@14 T@U) (t2@@13 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@11 T@U) (bx0@@10 T@U) (bx1@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@10 t0@@16) ($IsBox bx1@@10 t1@@14)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@16 t1@@14 t2@@13)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@16 t1@@14 t2@@13 h0@@3 f@@11 bx0@@10 bx1@@10) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@16 t1@@14 t2@@13 h0@@3 f@@11 bx0@@10 bx1@@10) (Apply2 t0@@16 t1@@14 t2@@13 h1@@3 f@@11 bx0@@10 bx1@@10)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply2 t0@@16 t1@@14 t2@@13 h1@@3 f@@11 bx0@@10 bx1@@10))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (t2@@14 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@12 T@U) (bx0@@11 T@U) (bx1@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@11 t0@@17) ($IsBox bx1@@11 t1@@15)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@17 t1@@15 t2@@14)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@17 t1@@15 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@17 t1@@15 t2@@14 h0@@4 f@@12 bx0@@11 bx1@@11) (Apply2 t0@@17 t1@@15 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply2 t0@@17 t1@@15 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Folddfy.3:31|
 :skolemid |636|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_module.Expr.Add| (Lit DatatypeTypeType |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Expr.Add| |a#15#0#0|)))
 :qid |Folddfy.5:21|
 :skolemid |652|
 :pattern ( (|#_module.Expr.Add| (Lit DatatypeTypeType |a#15#0#0|)))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (|#_module.Expr.Mul| (Lit DatatypeTypeType |a#21#0#0|)) (Lit DatatypeTypeType (|#_module.Expr.Mul| |a#21#0#0|)))
 :qid |Folddfy.5:39|
 :skolemid |661|
 :pattern ( (|#_module.Expr.Mul| (Lit DatatypeTypeType |a#21#0#0|)))
)))
(assert (forall ((|a#27#0#0| Int) ) (! (= (|#_module.Expr.Lit| (LitInt |a#27#0#0|)) (Lit DatatypeTypeType (|#_module.Expr.Lit| |a#27#0#0|)))
 :qid |Folddfy.5:57|
 :skolemid |670|
 :pattern ( (|#_module.Expr.Lit| (LitInt |a#27#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((t0@@18 T@U) (t1@@16 T@U) (t2@@15 T@U) (heap@@3 T@U) (h@@9 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@12 T@U) (bx1@@12 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType r@@2 heap@@3 bx0@@12 bx1@@12)) (Requires2 t0@@18 t1@@16 t2@@15 heap@@3 (Handle2 h@@9 r@@2 rd@@1) bx0@@12 bx1@@12))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires2 t0@@18 t1@@16 t2@@15 heap@@3 (Handle2 h@@9 r@@2 rd@@1) bx0@@12 bx1@@12))
)))
(assert (forall ((d@@16 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Expr.Add_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Expr $h@@7))) ($IsAlloc DatatypeTypeType (_module.Expr._h2 d@@16) (Tclass._module.List Tclass._module.Expr) $h@@7))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expr._h2 d@@16) (Tclass._module.List Tclass._module.Expr) $h@@7))
)))
(assert (forall ((d@@17 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Expr.Mul_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Expr $h@@8))) ($IsAlloc DatatypeTypeType (_module.Expr._h3 d@@17) (Tclass._module.List Tclass._module.Expr) $h@@8))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expr._h3 d@@17) (Tclass._module.List Tclass._module.Expr) $h@@8))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((_module.List$A@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@9)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$A@@8 $h@@9) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$A@@8) $h@@9))))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$A@@8) $h@@9))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |es#Z#1@0| () T@U)
(declare-fun |e#2@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |e#0@@2| () T@U)
(declare-fun |lambdaResult#1| () Int)
(declare-fun |v#1@0| () Int)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |##f#1@0| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |##unit#1@0| () Int)
(declare-fun |es#Z#0@0| () T@U)
(declare-fun |e#1@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () Int)
(declare-fun |v#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |##f#0@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |##unit#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Eval)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon8_correct true))
(let ((anon23_Else_correct  (=> (and (<= (DtRank |es#Z#1@0|) (DtRank |e#2@0|)) (= (ControlFlow 0 22) 18)) anon8_correct)))
(let ((anon23_Then_correct  (=> (and (< (DtRank |e#2@0|) (DtRank |es#Z#1@0|)) ($IsAlloc DatatypeTypeType |e#2@0| Tclass._module.Expr |$lambdaHeap#1@0|)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< (DtRank |e#2@0|) (DtRank |e#0@@2|))) (=> (< (DtRank |e#2@0|) (DtRank |e#0@@2|)) (=> (|_module.__default.Eval#canCall| |e#2@0|) (=> (and (and (= |lambdaResult#1| (+ (_module.__default.Eval ($LS $LZ) |e#2@0|) |v#1@0|)) (|_module.__default.Eval#canCall| |e#2@0|)) (and ($Is intType (int_2_U |lambdaResult#1|) TInt) (= (ControlFlow 0 20) 18))) anon8_correct)))))))
(let ((anon22_Then_correct  (=> (and (and ($Is DatatypeTypeType |e#2@0| Tclass._module.Expr) ($IsAlloc DatatypeTypeType |e#2@0| Tclass._module.Expr |$lambdaHeap#1@0|)) (= |$_Frame#l1@0| (|lambda#40| null |$lambdaHeap#1@0| alloc false))) (and (=> (= (ControlFlow 0 23) 20) anon23_Then_correct) (=> (= (ControlFlow 0 23) 22) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |e#2@0| Tclass._module.Expr) ($IsAlloc DatatypeTypeType |e#2@0| Tclass._module.Expr |$lambdaHeap#1@0|))) (= (ControlFlow 0 19) 18)) anon8_correct)))
(let ((anon21_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@@3 |$lambdaHeap#1@0|) ($HeapSucc $Heap@@3 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 24) 23) anon22_Then_correct) (=> (= (ControlFlow 0 24) 19) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (= |##f#1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#Z#1@0|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#1@0| (Tclass._System.___hPartialFunc2 Tclass._module.Expr TInt TInt) $Heap@@3) (= (ControlFlow 0 17) (- 0 16))) (forall ((|x#1@@0| T@U) (|y#1@@0| Int) ) (!  (=> ($Is DatatypeTypeType |x#1@@0| Tclass._module.Expr) (=> (< (DtRank |x#1@@0|) (DtRank |es#Z#1@0|)) (Requires2 Tclass._module.Expr TInt TInt $Heap@@3 |##f#1@0| ($Box DatatypeTypeType |x#1@@0|) ($Box intType (int_2_U |y#1@@0|)))))
 :qid |Folddfy.16:19|
 :skolemid |601|
 :pattern ( (Requires2 Tclass._module.Expr TInt TInt $Heap@@3 |##f#1@0| ($Box DatatypeTypeType |x#1@@0|) ($Box intType (int_2_U |y#1@@0|))))
))))))
(let ((anon20_Then_correct  (=> (and (and (and (= |e#0@@2| (|#_module.Expr.Add| |_mcc#0#0|)) ($Is DatatypeTypeType |_mcc#0#0| (Tclass._module.List Tclass._module.Expr))) (and (= |let#2#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#2#0#0| (Tclass._module.List Tclass._module.Expr)))) (and (and (= |es#Z#1@0| |let#2#0#0|) ($IsAlloc DatatypeTypeType |es#Z#1@0| (Tclass._module.List Tclass._module.Expr) $Heap@@3)) (and (= |##unit#1@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##unit#1@0|) TInt $Heap@@3)))) (and (=> (= (ControlFlow 0 25) 24) anon21_Then_correct) (=> (= (ControlFlow 0 25) 17) anon21_Else_correct)))))
(let ((anon14_correct true))
(let ((anon27_Else_correct  (=> (and (<= (DtRank |es#Z#0@0|) (DtRank |e#1@0|)) (= (ControlFlow 0 11) 7)) anon14_correct)))
(let ((anon27_Then_correct  (=> (and (< (DtRank |e#1@0|) (DtRank |es#Z#0@0|)) ($IsAlloc DatatypeTypeType |e#1@0| Tclass._module.Expr |$lambdaHeap#0@0|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< (DtRank |e#1@0|) (DtRank |e#0@@2|))) (=> (< (DtRank |e#1@0|) (DtRank |e#0@@2|)) (=> (|_module.__default.Eval#canCall| |e#1@0|) (=> (and (and (= |lambdaResult#0| (Mul (_module.__default.Eval ($LS $LZ) |e#1@0|) |v#0@0|)) (|_module.__default.Eval#canCall| |e#1@0|)) (and ($Is intType (int_2_U |lambdaResult#0|) TInt) (= (ControlFlow 0 9) 7))) anon14_correct)))))))
(let ((anon26_Then_correct  (=> (and (and ($Is DatatypeTypeType |e#1@0| Tclass._module.Expr) ($IsAlloc DatatypeTypeType |e#1@0| Tclass._module.Expr |$lambdaHeap#0@0|)) (= |$_Frame#l0@0| (|lambda#40| null |$lambdaHeap#0@0| alloc false))) (and (=> (= (ControlFlow 0 12) 9) anon27_Then_correct) (=> (= (ControlFlow 0 12) 11) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |e#1@0| Tclass._module.Expr) ($IsAlloc DatatypeTypeType |e#1@0| Tclass._module.Expr |$lambdaHeap#0@0|))) (= (ControlFlow 0 8) 7)) anon14_correct)))
(let ((anon25_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@3 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@3 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 13) 12) anon26_Then_correct) (=> (= (ControlFlow 0 13) 8) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (= |##f#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (|lambda#1| Tclass._module.Expr TInt (DtRank |es#Z#0@0|)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0@0| (Tclass._System.___hPartialFunc2 Tclass._module.Expr TInt TInt) $Heap@@3) (= (ControlFlow 0 6) (- 0 5))) (forall ((|x#0@@0| T@U) (|y#0@@0| Int) ) (!  (=> ($Is DatatypeTypeType |x#0@@0| Tclass._module.Expr) (=> (< (DtRank |x#0@@0|) (DtRank |es#Z#0@0|)) (Requires2 Tclass._module.Expr TInt TInt $Heap@@3 |##f#0@0| ($Box DatatypeTypeType |x#0@@0|) ($Box intType (int_2_U |y#0@@0|)))))
 :qid |Folddfy.16:19|
 :skolemid |596|
 :pattern ( (Requires2 Tclass._module.Expr TInt TInt $Heap@@3 |##f#0@0| ($Box DatatypeTypeType |x#0@@0|) ($Box intType (int_2_U |y#0@@0|))))
))))))
(let ((anon24_Then_correct  (=> (and (and (and (= |e#0@@2| (|#_module.Expr.Mul| |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List Tclass._module.Expr))) (and (= |let#1#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#1#0#0| (Tclass._module.List Tclass._module.Expr)))) (and (and (= |es#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |es#Z#0@0| (Tclass._module.List Tclass._module.Expr) $Heap@@3)) (and (= |##unit#0@0| (LitInt 1)) ($IsAlloc intType (int_2_U |##unit#0@0|) TInt $Heap@@3)))) (and (=> (= (ControlFlow 0 14) 13) anon25_Then_correct) (=> (= (ControlFlow 0 14) 6) anon25_Else_correct)))))
(let ((anon28_Else_correct true))
(let ((anon28_Then_correct true))
(let ((anon24_Else_correct  (=> (or (not (= |e#0@@2| (|#_module.Expr.Mul| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 4) 2) anon28_Then_correct) (=> (= (ControlFlow 0 4) 3) anon28_Else_correct)))))
(let ((anon20_Else_correct  (=> (or (not (= |e#0@@2| (|#_module.Expr.Add| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 15) 14) anon24_Then_correct) (=> (= (ControlFlow 0 15) 4) anon24_Else_correct)))))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#40| null $Heap@@3 alloc false)) (and (and (=> (= (ControlFlow 0 26) 1) anon19_Then_correct) (=> (= (ControlFlow 0 26) 25) anon20_Then_correct)) (=> (= (ControlFlow 0 26) 15) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) ($Is DatatypeTypeType |e#0@@2| Tclass._module.Expr)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 27) 26))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
