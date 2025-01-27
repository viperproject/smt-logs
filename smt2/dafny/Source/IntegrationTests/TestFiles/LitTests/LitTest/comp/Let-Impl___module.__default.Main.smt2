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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun |_module.Tree#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.F#canCall| () Bool)
(declare-fun _module.__default.F () Int)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| |tytagFamily$_tuple#2| tytagFamily$Tree)
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
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Tree#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (|_module.Tree#Equal| a b))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |619|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |620|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |950|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Tree.Leaf_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (_module.Tree.Leaf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Tree.Node_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Tree.Node|))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (_module.Tree.Node_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |527|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Tree.Node_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| Int) (|a#5#2#0| T@U) ) (! (= d@@3 (|#_module.Tree.Node| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
 :qid |Letdfy.31:29|
 :skolemid |1007|
)))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (_module.Tree.Node_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |951|
)))
 :qid |unknown.0:0|
 :skolemid |952|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@5) (= d@@5 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (_module.Tree.Leaf_q d@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.F#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.F (let ((|r#0| (LitInt 58)))
|r#0|)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.F#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.F (let ((|r#1| (LitInt 58)))
|r#1|)))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |540|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |612|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |611|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsBox bx@@0 Tclass._module.Tree))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.Tree| d@@6) (or (_module.Tree.Leaf_q d@@6) (_module.Tree.Node_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (|$IsA#_module.Tree| d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@7) (_module.Tree.Node_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( (_module.Tree.Node_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.Tree))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |618|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |528|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |539|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Tree.Leaf_q a@@1) (_module.Tree.Leaf_q b@@1)) (|_module.Tree#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (|_module.Tree#Equal| a@@1 b@@1) (_module.Tree.Leaf_q a@@1))
 :pattern ( (|_module.Tree#Equal| a@@1 b@@1) (_module.Tree.Leaf_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |949|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |954|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |955|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |966|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| Int) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (LitInt |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |Letdfy.31:29|
 :skolemid |1013|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (LitInt |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |526|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Tree.Node_q a@@2) (_module.Tree.Node_q b@@2)) (= (|_module.Tree#Equal| a@@2 b@@2)  (and (and (|_module.Tree#Equal| (_module.Tree._h4 a@@2) (_module.Tree._h4 b@@2)) (= (_module.Tree.val a@@2) (_module.Tree.val b@@2))) (|_module.Tree#Equal| (_module.Tree._h5 a@@2) (_module.Tree._h5 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|_module.Tree#Equal| a@@2 b@@2) (_module.Tree.Node_q a@@2))
 :pattern ( (|_module.Tree#Equal| a@@2 b@@2) (_module.Tree.Node_q b@@2))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (BoxRank |a#7#1#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |967|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|))
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
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1041|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Tree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Tree $h@@0))) ($IsAlloc intType (int_2_U (_module.Tree.val d@@8)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Tree.val d@@8)) TInt $h@@0))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |585|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((d@@10 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@10 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Tree $h@@1))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Tree $h@@1))
)))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@2))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@3))
)))
(assert (forall ((d@@13 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Tree.Node_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Tree $h@@4))) ($IsAlloc DatatypeTypeType (_module.Tree._h4 d@@13) Tclass._module.Tree $h@@4))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h4 d@@13) Tclass._module.Tree $h@@4))
)))
(assert (forall ((d@@14 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Tree.Node_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Tree $h@@5))) ($IsAlloc DatatypeTypeType (_module.Tree._h5 d@@14) Tclass._module.Tree $h@@5))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h5 d@@14) Tclass._module.Tree $h@@5))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |519|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |517|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |562|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| Int) (|a#6#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0|) Tclass._module.Tree)  (and (and ($Is DatatypeTypeType |a#6#0#0@@0| Tclass._module.Tree) ($Is intType (int_2_U |a#6#1#0@@0|) TInt)) ($Is DatatypeTypeType |a#6#2#0| Tclass._module.Tree)))
 :qid |Letdfy.31:29|
 :skolemid |1009|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0|) Tclass._module.Tree))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |541|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f#0@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |s#0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |_v0#0@0| () T@U)
(declare-fun |right#0@0| () T@U)
(declare-fun |Right#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |y#0@0| () Int)
(declare-fun |_v1#0@0| () Int)
(declare-fun |u1#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |_v2#Z#0@0| () T@U)
(declare-fun |xy#Z#0@0| () Int)
(declare-fun |xright#Z#0@0| () T@U)
(declare-fun |_v3#Z#0@0| () Int)
(declare-fun |xRight#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |u0#0@0| () Int)
(declare-fun |t#0@@2| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Letdfy.3:8|
 :skolemid |981|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (and (and |_module.__default.F#canCall| |_module.__default.F#canCall|) (and (= |f#0@0| (LitInt _module.__default.F)) (= |t#0@0| (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (LitInt 5) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (LitInt 7) (Lit DatatypeTypeType |#_module.Tree.Leaf|))))) (LitInt 9) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (LitInt 10) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (LitInt 12) (Lit DatatypeTypeType (|#_module.Tree.Node| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (LitInt 30) (Lit DatatypeTypeType |#_module.Tree.Leaf|))))))))))))) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |t#0@0| Tclass._module.Tree $Heap@0) (|_module.__default.Sum#canCall| |t#0@0|)) (and (|_module.__default.Sum#canCall| |t#0@0|) (= |s#0@0| (_module.__default.Sum ($LS $LZ) |t#0@0|)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Letdfy.41:8|
 :skolemid |999|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (and (and ($Is DatatypeTypeType |_v0#0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_v0#0@0| Tclass._module.Tree $Heap@1)) (and ($Is DatatypeTypeType |right#0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |right#0@0| Tclass._module.Tree $Heap@1))) (and (and ($Is DatatypeTypeType |Right#0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |Right#0@0| Tclass._module.Tree $Heap@1)) (and (= |let#0#0#0| |t#0@0|) ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Tree))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (_module.Tree.Node_q |let#0#0#0|)) (=> (_module.Tree.Node_q |let#0#0#0|) (and (=> (= (ControlFlow 0 2) (- 0 6)) (_module.Tree.Node_q (_module.Tree._h4 |let#0#0#0|))) (=> (_module.Tree.Node_q (_module.Tree._h4 |let#0#0#0|)) (=> (= (|#_module.Tree.Node| (|#_module.Tree.Node| |_v0#0@0| |y#0@0| |right#0@0|) |_v1#0@0| |Right#0@0|) |let#0#0#0|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (_module.Tree.Node_q |right#0@0|)) (=> (_module.Tree.Node_q |right#0@0|) (=> (and (and ($Is DatatypeTypeType |u1#0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |u1#0@0| Tclass._module.Tree $Heap@1)) (and (= |let#2#0#0| |t#0@0|) ($Is DatatypeTypeType |let#2#0#0| Tclass._module.Tree))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (_module.Tree.Node_q |let#2#0#0|)) (=> (_module.Tree.Node_q |let#2#0#0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.Tree.Node_q (_module.Tree._h4 |let#2#0#0|))) (=> (_module.Tree.Node_q (_module.Tree._h4 |let#2#0#0|)) (=> (and (= (|#_module.Tree.Node| (|#_module.Tree.Node| |_v2#Z#0@0| |xy#Z#0@0| |xright#Z#0@0|) |_v3#Z#0@0| |xRight#Z#0@0|) |let#2#0#0|) (= |let#1#0#0| (let ((|xright#0| (_module.Tree._h5 (_module.Tree._h4 |t#0@0|))))
(let ((|xy#0| (_module.Tree.val (_module.Tree._h4 |t#0@0|))))
(|#_System._tuple#2._#Make2| ($Box intType (int_2_U |xy#0|)) ($Box DatatypeTypeType |xright#0|)))))) (=> (and (and ($Is DatatypeTypeType |let#1#0#0| (Tclass._System.Tuple2 TInt Tclass._module.Tree)) (_System.Tuple2.___hMake2_q |let#1#0#0|)) (and (= (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |u0#0@0|)) ($Box DatatypeTypeType |u1#0@0|)) |let#1#0#0|) (= (ControlFlow 0 2) (- 0 1)))) (_module.Tree.Node_q |u1#0@0|))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t#0@@2| Tclass._module.Tree $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct))))
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
