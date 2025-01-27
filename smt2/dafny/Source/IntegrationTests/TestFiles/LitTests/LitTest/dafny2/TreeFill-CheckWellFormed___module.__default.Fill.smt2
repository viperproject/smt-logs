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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
(declare-fun |##_module.Tree.Node| () T@U)
(declare-fun tytagFamily$array () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#_module.Tree.Node| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree._h0 (T@U) T@U)
(declare-fun _module.Tree._h1 (T@U) T@U)
(declare-fun _module.Tree._h2 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tree (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Contains (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Contains#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Tree.Node_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.Tree_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass._module.Tree |##_module.Tree.Leaf| |##_module.Tree.Node| tytagFamily$array tytagFamily$Tree)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
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
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.Tree$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T) $h@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((_module.Tree$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T@@0))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is DatatypeTypeType |#_module.Tree.Leaf| (Tclass._module.Tree _module.Tree$T@@0)))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_module.Tree$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Tree _module.Tree$T@@2)) Tagclass._module.Tree) (= (TagFamily (Tclass._module.Tree _module.Tree$T@@2)) tytagFamily$Tree))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Tree _module.Tree$T@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |581|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Tree| d@@3) (or (_module.Tree.Leaf_q d@@3) (_module.Tree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (|$IsA#_module.Tree| d@@3))
)))
(assert (forall ((_module.Tree$T@@3 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) (|a#6#2#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0@@0|) (Tclass._module.Tree _module.Tree$T@@3) $h@@3)  (and (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| (Tclass._module.Tree _module.Tree$T@@3) $h@@3) ($IsAllocBox |a#6#1#0@@0| _module.Tree$T@@3 $h@@3)) ($IsAlloc DatatypeTypeType |a#6#2#0@@0| (Tclass._module.Tree _module.Tree$T@@3) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Tree.Node| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0@@0|) (Tclass._module.Tree _module.Tree$T@@3) $h@@3))
)))
(assert (forall ((_module.Tree$T@@4 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Tree _module.Tree$T@@4)) (or (_module.Tree.Leaf_q d@@4) (_module.Tree.Node_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (_module.Tree.Node_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Tree _module.Tree$T@@4)))
 :pattern ( (_module.Tree.Leaf_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Tree _module.Tree$T@@4)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
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
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (= (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Node| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |TreeFilldfy.4:32|
 :skolemid |568|
 :pattern ( (|#_module.Tree.Node| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|) (Lit DatatypeTypeType |a#7#2#0|)))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_module.Tree$T@@5 T@U) ) (! (= (Tclass._module.Tree_0 (Tclass._module.Tree _module.Tree$T@@5)) _module.Tree$T@@5)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Tree _module.Tree$T@@5))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@4)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@5 T@U) ($o@@5 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@5)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((_module._default.Contains$T@@2 T@U) ($ly@@2 T@U) (|t#0@@2| T@U) (|v#0@@2| T@U) ) (! (= (_module.__default.Contains _module._default.Contains$T@@2 ($LS $ly@@2) |t#0@@2| |v#0@@2|) (_module.__default.Contains _module._default.Contains$T@@2 $ly@@2 |t#0@@2| |v#0@@2|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.Contains _module._default.Contains$T@@2 ($LS $ly@@2) |t#0@@2| |v#0@@2|))
)))
(assert (forall ((d@@5 T@U) (_module.Tree$T@@6 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Tree.Node_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Tree _module.Tree$T@@6) $h@@6))) ($IsAllocBox (_module.Tree._h1 d@@5) _module.Tree$T@@6 $h@@6))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAllocBox (_module.Tree._h1 d@@5) _module.Tree$T@@6 $h@@6))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.Tree$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Tree _module.Tree$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Tree _module.Tree$T@@7))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Tree _module.Tree$T@@7)))
)))
(assert (forall ((d@@7 T@U) (_module.Tree$T@@8 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Tree.Node_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Tree _module.Tree$T@@8) $h@@7))) ($IsAlloc DatatypeTypeType (_module.Tree._h0 d@@7) (Tclass._module.Tree _module.Tree$T@@8) $h@@7))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h0 d@@7) (Tclass._module.Tree _module.Tree$T@@8) $h@@7))
)))
(assert (forall ((d@@8 T@U) (_module.Tree$T@@9 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Tree.Node_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Tree _module.Tree$T@@9) $h@@8))) ($IsAlloc DatatypeTypeType (_module.Tree._h2 d@@8) (Tclass._module.Tree _module.Tree$T@@9) $h@@8))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree._h2 d@@8) (Tclass._module.Tree _module.Tree$T@@9) $h@@8))
)))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |start#0| () Int)
(declare-fun |i#2@0| () Int)
(declare-fun |end#0@0| () Int)
(declare-fun |t#0@@3| () T@U)
(declare-fun _module._default.Fill$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |##v#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.Fill)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon15_correct true))
(let ((anon13_correct  (=> (and (and (<= |start#0| |i#2@0|) (< |i#2@0| |end#0@0|)) ($IsAlloc DatatypeTypeType |t#0@@3| (Tclass._module.Tree _module._default.Fill$T) $Heap@0)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array.Length |a#0|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array.Length |a#0|))) (=> (= |##v#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#2@0|))) (=> (and (and ($IsAllocBox |##v#0@0| _module._default.Fill$T $Heap@0) (|_module.__default.Contains#canCall| _module._default.Fill$T |t#0@@3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#2@0|)))) (and (_module.__default.Contains _module._default.Fill$T ($LS $LZ) |t#0@@3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#2@0|))) (= (ControlFlow 0 3) 1))) anon15_correct)))))))))
(let ((anon21_Else_correct  (=> (and (< |i#2@0| |start#0|) (= (ControlFlow 0 7) 3)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (<= |start#0| |i#2@0|) (= (ControlFlow 0 6) 3)) anon13_correct)))
(let ((anon20_Else_correct  (=> (and (=> (and (<= |start#0| |i#2@0|) (< |i#2@0| |end#0@0|)) (_module.__default.Contains _module._default.Fill$T ($LS $LZ) |t#0@@3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#2@0|)))) (= (ControlFlow 0 2) 1)) anon15_correct)))
(let ((anon10_correct  (=> (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| |start#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|))))
 :qid |TreeFilldfy.17:18|
 :skolemid |541|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#1|)))
)) (and (and (=> (= (ControlFlow 0 8) 2) anon20_Else_correct) (=> (= (ControlFlow 0 8) 6) anon21_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon21_Else_correct)))))
(let ((anon8_correct  (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |start#0|)) (and (=> (= (ControlFlow 0 10) (- 0 15)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 14)) (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length |a#0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 12)) ($IsAlloc refType |a#0| (Tclass._System.array? _module._default.Fill$T) $Heap)) (=> ($IsAlloc refType |a#0| (Tclass._System.array? _module._default.Fill$T) $Heap) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length |a#0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length |a#0|))) (=> (and (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0@0|))) (= (ControlFlow 0 10) 8)) anon10_correct))))))))))))))
(let ((anon19_Else_correct  (=> (and (< |i#0@0| (LitInt 0)) (= (ControlFlow 0 17) 10)) anon8_correct)))
(let ((anon19_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (= (ControlFlow 0 16) 10)) anon8_correct)))
(let ((anon18_Else_correct  (=> (and (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |start#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |a#0|) (IndexField |i#0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0@0|)))) (= (ControlFlow 0 9) 8)) anon10_correct)))
(let ((anon5_correct  (=> (and (<= |start#0| |end#0@0|) (<= |end#0@0| (_System.array.Length |a#0|))) (and (and (=> (= (ControlFlow 0 18) 9) anon18_Else_correct) (=> (= (ControlFlow 0 18) 16) anon19_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon19_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (< |end#0@0| |start#0|) (= (ControlFlow 0 21) 18)) anon5_correct)))
(let ((anon17_Then_correct  (=> (<= |start#0| |end#0@0|) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= (ControlFlow 0 19) 18) anon5_correct))))))
(let ((anon3_correct  (=> (and (<= (LitInt 0) |start#0|) (<= |start#0| (_System.array.Length |a#0|))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)) (= $o@@6 |a#0|)))
 :qid |TreeFilldfy.13:8|
 :skolemid |540|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 22) 19) anon17_Then_correct) (=> (= (ControlFlow 0 22) 21) anon17_Else_correct))))))
(let ((anon16_Else_correct  (=> (and (< |start#0| (LitInt 0)) (= (ControlFlow 0 25) 22)) anon3_correct)))
(let ((anon16_Then_correct  (=> (<= (LitInt 0) |start#0|) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= (ControlFlow 0 23) 22) anon3_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc |a#0|)) (and (=> (= (ControlFlow 0 26) 23) anon16_Then_correct) (=> (= (ControlFlow 0 26) 25) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |t#0@@3| (Tclass._module.Tree _module._default.Fill$T)) ($IsAlloc DatatypeTypeType |t#0@@3| (Tclass._module.Tree _module._default.Fill$T) $Heap)) (|$IsA#_module.Tree| |t#0@@3|)) (and (and ($Is refType |a#0| (Tclass._System.array _module._default.Fill$T)) ($IsAlloc refType |a#0| (Tclass._System.array _module._default.Fill$T) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 27) 26)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
