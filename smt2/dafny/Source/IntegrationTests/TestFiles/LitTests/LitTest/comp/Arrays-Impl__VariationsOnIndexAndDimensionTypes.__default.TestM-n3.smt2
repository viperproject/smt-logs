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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass.VariationsOnIndexAndDimensionTypes.byte () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array3 () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun tytagFamily$byte () T@U)
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
(declare-fun VariationsOnIndexAndDimensionTypes.__default.F (Int Int Int) Int)
(declare-fun |VariationsOnIndexAndDimensionTypes.__default.F#canCall| (Int Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun _System.array3.Length0 (T@U) Int)
(declare-fun Tclass._System.array3? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array3.Length1 (T@U) Int)
(declare-fun _System.array3.Length2 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.VariationsOnIndexAndDimensionTypes.byte () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |VariationsOnIndexAndDimensionTypes.__default.F#requires| (Int Int Int) Bool)
(declare-fun |VariationsOnIndexAndDimensionTypes.__default.F#Handle| () T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._System.array3? Tagclass._System.array3 Tagclass._System.___hFunc3 Tagclass.VariationsOnIndexAndDimensionTypes.byte tytagFamily$nat tytagFamily$array3 |tytagFamily$_#Func3| tytagFamily$byte)
)
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| Int) (|b#0| Int) (|c#0| Int) ) (!  (=> (or (|VariationsOnIndexAndDimensionTypes.__default.F#canCall| |a#0| |b#0| |c#0|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |a#0|) (<= (LitInt 0) |b#0|)) (<= (LitInt 0) |c#0|)))) (= (VariationsOnIndexAndDimensionTypes.__default.F |a#0| |b#0| |c#0|) (ite (= |a#0| (LitInt 0)) 45 (ite (= |a#0| (LitInt 1)) 46 47))))
 :qid |Arraysdfy.816:14|
 :skolemid |5282|
 :pattern ( (VariationsOnIndexAndDimensionTypes.__default.F |a#0| |b#0| |c#0|))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |5132|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |5133|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |5134|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |5135|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (forall ((_System.array3$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array3? _System.array3$arg))) ($Is intType (int_2_U (_System.array3.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |5120|
 :pattern ( (_System.array3.Length0 $o) (Tclass._System.array3? _System.array3$arg))
)))
(assert (forall ((_System.array3$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array3? _System.array3$arg@@0))) ($Is intType (int_2_U (_System.array3.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |5122|
 :pattern ( (_System.array3.Length1 $o@@0) (Tclass._System.array3? _System.array3$arg@@0))
)))
(assert (forall ((_System.array3$arg@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array3? _System.array3$arg@@1))) ($Is intType (int_2_U (_System.array3.Length2 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |5124|
 :pattern ( (_System.array3.Length2 $o@@1) (Tclass._System.array3? _System.array3$arg@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |4909|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.VariationsOnIndexAndDimensionTypes.byte $h@@0)
 :qid |unknown.0:0|
 :skolemid |5285|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.VariationsOnIndexAndDimensionTypes.byte $h@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array3$arg@@2 T@U) (|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg@@2) $h@@1) ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg@@2) $h@@1))
 :qid |unknown.0:0|
 :skolemid |5130|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3 _System.array3$arg@@2) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array3? _System.array3$arg@@2) $h@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |4673|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (t3 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h) (forall ((bx0 T@U) (bx1 T@U) (bx2 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h))) (and ($IsBox bx2 t2) ($IsAllocBox bx2 t2 h))) (Requires3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |5161|
 :pattern ( (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |5162|
 :pattern ( (Apply3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
 :pattern ( (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
))))
 :qid |unknown.0:0|
 :skolemid |5163|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array3? _System.array3$arg@@3) $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5119|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array3? _System.array3$arg@@3) $h@@2))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (t3@@0 T@U) (heap T@U) (f@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1)) ($IsBox bx2@@0 t2@@0)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@1 t1@@1 t2@@0 t3@@0)))) (= (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|) (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |5152|
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) ($IsGoodHeap heap))
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (t3@@1 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) (u3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0@@0) ($IsBox bx t0@@2))
 :qid |unknown.0:0|
 :skolemid |5156|
 :pattern ( ($IsBox bx u0@@0))
 :pattern ( ($IsBox bx t0@@2))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u1@@0) ($IsBox bx@@0 t1@@2))
 :qid |unknown.0:0|
 :skolemid |5157|
 :pattern ( ($IsBox bx@@0 u1@@0))
 :pattern ( ($IsBox bx@@0 t1@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u2) ($IsBox bx@@1 t2@@1))
 :qid |unknown.0:0|
 :skolemid |5158|
 :pattern ( ($IsBox bx@@1 u2))
 :pattern ( ($IsBox bx@@1 t2@@1))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t3@@1) ($IsBox bx@@2 u3))
 :qid |unknown.0:0|
 :skolemid |5159|
 :pattern ( ($IsBox bx@@2 t3@@1))
 :pattern ( ($IsBox bx@@2 u3))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
 :qid |unknown.0:0|
 :skolemid |5160|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4666|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4667|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4565|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4563|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| Int) (|b#0@@0| Int) (|c#0@@1| Int) ) (!  (=> (or (|VariationsOnIndexAndDimensionTypes.__default.F#canCall| (LitInt |a#0@@0|) (LitInt |b#0@@0|) (LitInt |c#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |a#0@@0|) (<= (LitInt 0) |b#0@@0|)) (<= (LitInt 0) |c#0@@1|)))) (= (VariationsOnIndexAndDimensionTypes.__default.F (LitInt |a#0@@0|) (LitInt |b#0@@0|) (LitInt |c#0@@1|)) (ite (= (LitInt |a#0@@0|) (LitInt 0)) 45 (ite (= (LitInt |a#0@@0|) (LitInt 1)) 46 47))))
 :qid |Arraysdfy.816:14|
 :weight 3
 :skolemid |5283|
 :pattern ( (VariationsOnIndexAndDimensionTypes.__default.F (LitInt |a#0@@0|) (LitInt |b#0@@0|) (LitInt |c#0@@1|)))
))))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |5131|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4574|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f@@2 T@U) (i Int) ) (! (= (FDim (MultiIndexField f@@2 i)) (+ (FDim f@@2) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |4653|
 :pattern ( (MultiIndexField f@@2 i))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |4908|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array3$arg@@4 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array3 _System.array3$arg@@4))  (and ($Is refType |c#0@@2| (Tclass._System.array3? _System.array3$arg@@4)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5129|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array3 _System.array3$arg@@4)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@1) ($IsAlloc T@@1 v t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4587|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4659|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@3) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4658|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@3))
)))
(assert (forall ((_System.array3$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@5)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@5)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |5110|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@6)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@6)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |5126|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |5136|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |4907|
 :pattern ( ($IsBox bx@@5 Tclass._System.nat))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.VariationsOnIndexAndDimensionTypes.byte) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.VariationsOnIndexAndDimensionTypes.byte)))
 :qid |unknown.0:0|
 :skolemid |5268|
 :pattern ( ($IsBox bx@@6 Tclass.VariationsOnIndexAndDimensionTypes.byte))
)))
(assert (forall ((_System.array3$arg@@7 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array3? _System.array3$arg@@7))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array3? _System.array3$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |5118|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array3? _System.array3$arg@@7)))
)))
(assert (forall ((|a#0@@1| Int) (|b#0@@1| Int) (|c#0@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |a#0@@1|) (<= (LitInt 0) |b#0@@1|)) (<= (LitInt 0) |c#0@@3|)) (= (|VariationsOnIndexAndDimensionTypes.__default.F#requires| |a#0@@1| |b#0@@1| |c#0@@3|) true))
 :qid |Arraysdfy.816:14|
 :skolemid |5281|
 :pattern ( (|VariationsOnIndexAndDimensionTypes.__default.F#requires| |a#0@@1| |b#0@@1| |c#0@@3|))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| Int) (|$fh$0x#1| Int) (|$fh$0x#2| Int) ) (! (= (VariationsOnIndexAndDimensionTypes.__default.F |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|) (U_2_int ($Unbox intType (Apply3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap |VariationsOnIndexAndDimensionTypes.__default.F#Handle| ($Box intType (int_2_U |$fh$0x#0|)) ($Box intType (int_2_U |$fh$0x#1|)) ($Box intType (int_2_U |$fh$0x#2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5277|
 :pattern ( (VariationsOnIndexAndDimensionTypes.__default.F |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|) ($IsGoodHeap $heap))
)))
(assert (forall ((f@@3 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (t3@@2 T@U) ) (! (= ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2)) (forall ((h@@4 T@U) (bx0@@1 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) (and (and ($IsBox bx0@@1 t0@@3) ($IsBox bx1@@1 t1@@3)) ($IsBox bx2@@1 t2@@2))) (Requires3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@3 bx0@@1 bx1@@1 bx2@@1)) ($IsBox (Apply3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@3 bx0@@1 bx1@@1 bx2@@1) t3@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5154|
 :pattern ( (Apply3 t0@@3 t1@@3 t2@@2 t3@@2 h@@4 f@@3 bx0@@1 bx1@@1 bx2@@1))
)))
 :qid |unknown.0:0|
 :skolemid |5155|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@3 t1@@3 t2@@2 t3@@2)))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@3 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@2 t0@@4) ($IsBox bx1@@2 t1@@4)) ($IsBox bx2@@2 t2@@3)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@3)))) (|Set#Equal| (Reads3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@4 bx0@@2 bx1@@2 bx2@@2) |Set#Empty|)) (= (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@4 bx0@@2 bx1@@2 bx2@@2) (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@4 bx0@@2 bx1@@2 bx2@@2)))
 :qid |unknown.0:0|
 :skolemid |5153|
 :pattern ( (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 $OneHeap f@@4 bx0@@2 bx1@@2 bx2@@2) ($IsGoodHeap heap@@0))
 :pattern ( (Requires3 t0@@4 t1@@4 t2@@3 t3@@3 heap@@0 f@@4 bx0@@2 bx1@@2 bx2@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |4698|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4665|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4575|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4586|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) (|$fh$0x#2@@0| T@U) ) (! (= (Requires3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@0 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|) (|VariationsOnIndexAndDimensionTypes.__default.F#requires| (U_2_int ($Unbox intType |$fh$0x#0@@0|)) (U_2_int ($Unbox intType |$fh$0x#1@@0|)) (U_2_int ($Unbox intType |$fh$0x#2@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5275|
 :pattern ( (Requires3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@0 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@2| Int) (|b#0@@2| Int) (|c#0@@4| Int) ) (!  (=> (or (|VariationsOnIndexAndDimensionTypes.__default.F#canCall| |a#0@@2| |b#0@@2| |c#0@@4|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |a#0@@2|) (<= (LitInt 0) |b#0@@2|)) (<= (LitInt 0) |c#0@@4|)))) (and (<= (LitInt 0) (VariationsOnIndexAndDimensionTypes.__default.F |a#0@@2| |b#0@@2| |c#0@@4|)) (< (VariationsOnIndexAndDimensionTypes.__default.F |a#0@@2| |b#0@@2| |c#0@@4|) 256)))
 :qid |Arraysdfy.816:14|
 :skolemid |5280|
 :pattern ( (VariationsOnIndexAndDimensionTypes.__default.F |a#0@@2| |b#0@@2| |c#0@@4|))
))))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array3.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |5113|
 :pattern ( (_System.array3.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array3.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |5114|
 :pattern ( (_System.array3.Length1 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (_System.array3.Length2 o@@3))
 :qid |unknown.0:0|
 :skolemid |5115|
 :pattern ( (_System.array3.Length2 o@@3))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |4651|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |4652|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array3$arg@@8 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@8)) _System.array3$arg@@8)
 :qid |unknown.0:0|
 :skolemid |5111|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@8))
)))
(assert (forall ((_System.array3$arg@@9 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@9)) _System.array3$arg@@9)
 :qid |unknown.0:0|
 :skolemid |5127|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@9))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4573|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array3$arg@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array3? _System.array3$arg@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length0 $o@@4)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |5121|
 :pattern ( (_System.array3.Length0 $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)) (Tclass._System.array3? _System.array3$arg@@10))
)))
(assert (forall ((_System.array3$arg@@11 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array3? _System.array3$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length1 $o@@5)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |5123|
 :pattern ( (_System.array3.Length1 $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)) (Tclass._System.array3? _System.array3$arg@@11))
)))
(assert (forall ((_System.array3$arg@@12 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array3? _System.array3$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array3.Length2 $o@@6)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |5125|
 :pattern ( (_System.array3.Length2 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)) (Tclass._System.array3? _System.array3$arg@@12))
)))
(assert (forall ((_System.array3$arg@@13 T@U) ($h@@6 T@U) ($o@@7 T@U) ($i0 Int) ($i1 Int) ($i2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array3? _System.array3$arg@@13)))) (and (and (and (<= 0 $i0) (< $i0 (_System.array3.Length0 $o@@7))) (and (<= 0 $i1) (< $i1 (_System.array3.Length1 $o@@7)))) (and (<= 0 $i2) (< $i2 (_System.array3.Length2 $o@@7))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) (MultiIndexField (MultiIndexField (IndexField $i0) $i1) $i2)) _System.array3$arg@@13))
 :qid |unknown.0:0|
 :skolemid |5116|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) (MultiIndexField (MultiIndexField (IndexField $i0) $i1) $i2)) (Tclass._System.array3? _System.array3$arg@@13))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) (|$fh$0x#2@@1| T@U) ) (! (= (|Set#IsMember| (Reads3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@1 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |5276|
 :pattern ( (|Set#IsMember| (Reads3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@1 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|) $bx))
)))
(assert (forall ((f@@5 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (t3@@4 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4) h@@5)) (forall ((bx0@@3 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@3 t0@@5 h@@5) ($IsAllocBox bx1@@3 t1@@5 h@@5)) ($IsAllocBox bx2@@3 t2@@4 h@@5)) (Requires3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@5 bx0@@3 bx1@@3 bx2@@3)) ($IsAllocBox (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@5 bx0@@3 bx1@@3 bx2@@3) t3@@4 h@@5))
 :qid |unknown.0:0|
 :skolemid |5164|
 :pattern ( (Apply3 t0@@5 t1@@5 t2@@4 t3@@4 h@@5 f@@5 bx0@@3 bx1@@3 bx2@@3))
)))
 :qid |unknown.0:0|
 :skolemid |5165|
 :pattern ( ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@4) h@@5))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@6 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@6 t2@@5 (MapType1Store t0@@6 t1@@6 t2@@5 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7805|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))
)))
(assert (forall ((f@@6 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@6 i@@2)) f@@6) (= (MultiIndexField_Inverse1 (MultiIndexField f@@6 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |4654|
 :pattern ( (MultiIndexField f@@6 i@@2))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (t2@@6 T@U) (t3@@5 T@U) (h0 T@U) (h1 T@U) (f@@7 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx2@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and (and ($IsBox bx0@@4 t0@@7) ($IsBox bx1@@4 t1@@7)) ($IsBox bx2@@4 t2@@6)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc3 t0@@7 t1@@7 t2@@6 t3@@5)))) (forall ((o@@4 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@7 bx0@@4 bx1@@4 bx2@@4) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@4) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@4) fld)))
 :qid |unknown.0:0|
 :skolemid |5144|
))) (= (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@7 bx0@@4 bx1@@4 bx2@@4) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@7 bx0@@4 bx1@@4 bx2@@4)))
 :qid |unknown.0:0|
 :skolemid |5145|
 :pattern ( ($HeapSucc h0 h1) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@7 bx0@@4 bx1@@4 bx2@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@8 T@U) (t2@@7 T@U) (t3@@6 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@8 T@U) (bx0@@5 T@U) (bx1@@5 T@U) (bx2@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and (and ($IsBox bx0@@5 t0@@8) ($IsBox bx1@@5 t1@@8)) ($IsBox bx2@@5 t2@@7)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc3 t0@@8 t1@@8 t2@@7 t3@@6)))) (forall ((o@@5 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@8 bx0@@5 bx1@@5 bx2@@5) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@5) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@5) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |5146|
))) (= (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h0@@0 f@@8 bx0@@5 bx1@@5 bx2@@5) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@8 bx0@@5 bx1@@5 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |5147|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@8 bx0@@5 bx1@@5 bx2@@5))
)))
(assert (forall ((_System.array3$arg@@14 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array3? _System.array3$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array3? _System.array3$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |5112|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array3? _System.array3$arg@@14)))
)))
(assert (forall ((_System.array3$arg@@15 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array3 _System.array3$arg@@15)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array3 _System.array3$arg@@15))))
 :qid |unknown.0:0|
 :skolemid |5128|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array3 _System.array3$arg@@15)))
)))
(assert (forall ((h@@6 T@U) (r@@0 T@U) (f@@9 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@0) f@@9 x@@6))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@0) f@@9 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |4664|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@0) f@@9 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.VariationsOnIndexAndDimensionTypes.byte) Tagclass.VariationsOnIndexAndDimensionTypes.byte))
(assert (= (TagFamily Tclass.VariationsOnIndexAndDimensionTypes.byte) tytagFamily$byte))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) (|$fh$0x#2@@2| T@U) ) (! (= (Apply3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@2 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|) ($Box intType (int_2_U (VariationsOnIndexAndDimensionTypes.__default.F (U_2_int ($Unbox intType |$fh$0x#0@@2|)) (U_2_int ($Unbox intType |$fh$0x#1@@2|)) (U_2_int ($Unbox intType |$fh$0x#2@@2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5274|
 :pattern ( (Apply3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $heap@@2 |VariationsOnIndexAndDimensionTypes.__default.F#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@1 o@@6) (|Set#IsMember| b@@1 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |4696|
 :pattern ( (|Set#IsMember| a@@1 o@@6))
 :pattern ( (|Set#IsMember| b@@1 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |4697|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@9 T@U) (t1@@9 T@U) (t2@@8 T@U) (t3@@7 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@10 T@U) (bx0@@6 T@U) (bx1@@6 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and (and ($IsBox bx0@@6 t0@@9) ($IsBox bx1@@6 t1@@9)) ($IsBox bx2@@6 t2@@8)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@9 t1@@9 t2@@8 t3@@7)))) (forall ((o@@7 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@10 bx0@@6 bx1@@6 bx2@@6) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@7) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@7) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |5140|
))) (= (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@10 bx0@@6 bx1@@6 bx2@@6) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@10 bx0@@6 bx1@@6 bx2@@6)))
 :qid |unknown.0:0|
 :skolemid |5141|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@10 bx0@@6 bx1@@6 bx2@@6))
)))
(assert (forall ((t0@@10 T@U) (t1@@10 T@U) (t2@@9 T@U) (t3@@8 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@11 T@U) (bx0@@7 T@U) (bx1@@7 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and (and ($IsBox bx0@@7 t0@@10) ($IsBox bx1@@7 t1@@10)) ($IsBox bx2@@7 t2@@9)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc3 t0@@10 t1@@10 t2@@9 t3@@8)))) (forall ((o@@8 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@11 bx0@@7 bx1@@7 bx2@@7) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@8) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@8) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |5142|
))) (= (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h0@@2 f@@11 bx0@@7 bx1@@7 bx2@@7) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@11 bx0@@7 bx1@@7 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |5143|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@11 bx0@@7 bx1@@7 bx2@@7))
)))
(assert (forall ((t0@@11 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@9 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@12 T@U) (bx0@@8 T@U) (bx1@@8 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and (and ($IsBox bx0@@8 t0@@11) ($IsBox bx1@@8 t1@@11)) ($IsBox bx2@@8 t2@@10)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc3 t0@@11 t1@@11 t2@@10 t3@@9)))) (forall ((o@@9 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@12 bx0@@8 bx1@@8 bx2@@8) ($Box refType o@@9))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@9) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@9) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |5148|
))) (= (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@12 bx0@@8 bx1@@8 bx2@@8) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@12 bx0@@8 bx1@@8 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |5149|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@12 bx0@@8 bx1@@8 bx2@@8))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (t2@@11 T@U) (t3@@10 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@13 T@U) (bx0@@9 T@U) (bx1@@9 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and (and ($IsBox bx0@@9 t0@@12) ($IsBox bx1@@9 t1@@12)) ($IsBox bx2@@9 t2@@11)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc3 t0@@12 t1@@12 t2@@11 t3@@10)))) (forall ((o@@10 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@13 bx0@@9 bx1@@9 bx2@@9) ($Box refType o@@10))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@10) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@10) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |5150|
))) (= (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h0@@4 f@@13 bx0@@9 bx1@@9 bx2@@9) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@13 bx0@@9 bx1@@9 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |5151|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@13 bx0@@9 bx1@@9 bx2@@9))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.VariationsOnIndexAndDimensionTypes.byte)  (and (<= (LitInt 0) (U_2_int |x#0@@2|)) (< (U_2_int |x#0@@2|) 256)))
 :qid |unknown.0:0|
 :skolemid |5284|
 :pattern ( ($Is intType |x#0@@2| Tclass.VariationsOnIndexAndDimensionTypes.byte))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4566|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4564|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((_System.array3$arg@@16 T@U) ($h@@7 T@U) ($o@@9 T@U) ($i0@@0 Int) ($i1@@0 Int) ($i2@@0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array3? _System.array3$arg@@16)))) (and (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array3.Length0 $o@@9))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array3.Length1 $o@@9)))) (and (<= 0 $i2@@0) (< $i2@@0 (_System.array3.Length2 $o@@9))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) (MultiIndexField (MultiIndexField (IndexField $i0@@0) $i1@@0) $i2@@0)) _System.array3$arg@@16 $h@@7))
 :qid |unknown.0:0|
 :skolemid |5117|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) (MultiIndexField (MultiIndexField (IndexField $i0@@0) $i1@@0) $i2@@0)) (Tclass._System.array3? _System.array3$arg@@16))
)))
(assert (forall ((h@@7 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4609|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@7))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4588|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |newtype$check#17@0| () Int)
(declare-fun |newtype$check#18@0| () Int)
(declare-fun |a#0@@3| () Int)
(declare-fun |c#0@@5| () Int)
(declare-fun |m#0| () T@U)
(set-info :boogie-vc-id Impl$$VariationsOnIndexAndDimensionTypes.__default.TestMatrix)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon2_Else_correct true))
(let ((anon2_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 3))) (and (=> (= (ControlFlow 0 3) (- 0 39)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256)) (=> (= |newtype$check#1@0| (LitInt 3)) (and (=> (= (ControlFlow 0 3) (- 0 38)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256)) (=> (= |$rhs#0@0| (LitInt 3)) (=> (and (= |$rhs#1@0| (LitInt 2)) (= |newtype$check#2@0| (LitInt 5))) (and (=> (= (ControlFlow 0 3) (- 0 37)) (and (< (- 0 9223372036854775808) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808)) (=> (= |newtype$check#3@0| (LitInt 5)) (and (=> (= (ControlFlow 0 3) (- 0 36)) (and (< (- 0 9223372036854775808) |newtype$check#3@0|) (< |newtype$check#3@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#3@0|) (< |newtype$check#3@0| 9223372036854775808)) (=> (= |$rhs#2@0| (LitInt 5)) (and (=> (= (ControlFlow 0 3) (- 0 35)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 3) (- 0 34)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (and (=> (= (ControlFlow 0 3) (- 0 33)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (and (=> (= (ControlFlow 0 3) (- 0 32)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array3? Tclass.VariationsOnIndexAndDimensionTypes.byte))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array3.Length0 $nw@0) |$rhs#0@0|)) (and (= (_System.array3.Length1 $nw@0) |$rhs#1@0|) (= (_System.array3.Length2 $nw@0) |$rhs#2@0|))) (and (=> (= (ControlFlow 0 3) (- 0 31)) (forall ((|arrayinit#0#i0#0| Int) (|arrayinit#0#i1#0| Int) (|arrayinit#0#i2#0| Int) ) (!  (=> (and (and (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| |$rhs#0@0|)) (and (<= 0 |arrayinit#0#i1#0|) (< |arrayinit#0#i1#0| |$rhs#1@0|))) (and (<= 0 |arrayinit#0#i2#0|) (< |arrayinit#0#i2#0| |$rhs#2@0|))) (Requires3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $Heap |VariationsOnIndexAndDimensionTypes.__default.F#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0|)) ($Box intType (int_2_U |arrayinit#0#i1#0|)) ($Box intType (int_2_U |arrayinit#0#i2#0|))))
 :qid |Arraysdfy.809:14|
 :skolemid |5278|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) (|arrayinit#0#i1#0@@0| Int) (|arrayinit#0#i2#0@@0| Int) ) (!  (=> (and (and (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| |$rhs#0@0|)) (and (<= 0 |arrayinit#0#i1#0@@0|) (< |arrayinit#0#i1#0@@0| |$rhs#1@0|))) (and (<= 0 |arrayinit#0#i2#0@@0|) (< |arrayinit#0#i2#0@@0| |$rhs#2@0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) (MultiIndexField (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|) |arrayinit#0#i2#0@@0|)))) (U_2_int ($Unbox intType (Apply3 Tclass._System.nat Tclass._System.nat Tclass._System.nat Tclass.VariationsOnIndexAndDimensionTypes.byte $Heap |VariationsOnIndexAndDimensionTypes.__default.F#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i1#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i2#0@@0|)))))))
 :qid |Arraysdfy.809:14|
 :skolemid |5279|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) (MultiIndexField (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|) |arrayinit#0#i2#0@@0|)))
)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 3) (- 0 30)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 3) (- 0 29)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256)) (=> (= |newtype$check#5@0| (LitInt 0)) (and (=> (= (ControlFlow 0 3) (- 0 28)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256)) (and (=> (= (ControlFlow 0 3) (- 0 27)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array3.Length0 $nw@0)))) (and (=> (= (ControlFlow 0 3) (- 0 26)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array3.Length1 $nw@0)))) (=> (= |newtype$check#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 3) (- 0 25)) (and (< (- 0 9223372036854775808) |newtype$check#6@0|) (< |newtype$check#6@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#6@0|) (< |newtype$check#6@0| 9223372036854775808)) (=> (= |newtype$check#7@0| (LitInt 2)) (and (=> (= (ControlFlow 0 3) (- 0 24)) (and (< (- 0 9223372036854775808) |newtype$check#7@0|) (< |newtype$check#7@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#7@0|) (< |newtype$check#7@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 3) (- 0 23)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array3.Length2 $nw@0)))) (and (=> (= (ControlFlow 0 3) (- 0 22)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#8@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 21)) (and (< (- 0 9223372036854775808) |newtype$check#8@0|) (< |newtype$check#8@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#8@0|) (< |newtype$check#8@0| 9223372036854775808)) (=> (= |newtype$check#9@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 20)) (and (< (- 0 9223372036854775808) |newtype$check#9@0|) (< |newtype$check#9@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#9@0|) (< |newtype$check#9@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 3) (- 0 19)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array3.Length0 $nw@0)))) (=> (= |newtype$check#10@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 18)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 256)) (=> (= |newtype$check#11@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 17)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 256)) (and (=> (= (ControlFlow 0 3) (- 0 16)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array3.Length1 $nw@0)))) (and (=> (= (ControlFlow 0 3) (- 0 15)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array3.Length2 $nw@0)))) (=> (= |newtype$check#12@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)) (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)) (LitInt 2))))))) (and (=> (= (ControlFlow 0 3) (- 0 14)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 256)) (and (=> (= (ControlFlow 0 3) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 12)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array3.Length0 $nw@0)))) (=> (= |newtype$check#13@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 11)) (and (< (- 0 9223372036854775808) |newtype$check#13@0|) (< |newtype$check#13@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#13@0|) (< |newtype$check#13@0| 9223372036854775808)) (=> (= |newtype$check#14@0| (LitInt 1)) (and (=> (= (ControlFlow 0 3) (- 0 10)) (and (< (- 0 9223372036854775808) |newtype$check#14@0|) (< |newtype$check#14@0| 9223372036854775808))) (=> (and (< (- 0 9223372036854775808) |newtype$check#14@0|) (< |newtype$check#14@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 3) (- 0 9)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array3.Length1 $nw@0)))) (=> (= |newtype$check#15@0| (LitInt 2)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 256)) (=> (= |newtype$check#16@0| (LitInt 2)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 256)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array3.Length2 $nw@0)))) (=> (= |newtype$check#17@0| (+ (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)) (LitInt 2))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (MultiIndexField (IndexField (LitInt 2)) (LitInt 1)) (LitInt 2))))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 256)) (=> (= |newtype$check#18@0| (LitInt 138)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= (LitInt 0) |newtype$check#18@0|) (< |newtype$check#18@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#18@0|) (< |newtype$check#18@0| 256)) (and (=> (= (ControlFlow 0 3) 1) anon2_Then_correct) (=> (= (ControlFlow 0 3) 2) anon2_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (<= (LitInt 0) |a#0@@3|) (< |a#0@@3| 256)) true) (and (and (< (- 0 9223372036854775808) |c#0@@5|) (< |c#0@@5| 9223372036854775808)) true)) (and (and (and ($Is refType |m#0| (Tclass._System.array3 Tclass.VariationsOnIndexAndDimensionTypes.byte)) ($IsAlloc refType |m#0| (Tclass._System.array3 Tclass.VariationsOnIndexAndDimensionTypes.byte) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 40) 3)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
