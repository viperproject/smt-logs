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
(declare-fun Tagclass._System.array3? () T@U)
(declare-fun Tagclass._System.array3 () T@U)
(declare-fun Tagclass.ArrayTypeMagic.ArrayCubeTree () T@U)
(declare-fun |##ArrayTypeMagic.ArrayCubeTree.Leaf| () T@U)
(declare-fun |##ArrayTypeMagic.ArrayCubeTree.Node| () T@U)
(declare-fun tytagFamily$array3 () T@U)
(declare-fun tytagFamily$ArrayCubeTree () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#ArrayTypeMagic.ArrayCubeTree.Node| (T@U T@U) T@U)
(declare-fun Tclass.ArrayTypeMagic.ArrayCubeTree (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array3 (T@U) T@U)
(declare-fun Tclass._System.array3? (T@U) T@U)
(declare-fun ArrayTypeMagic.__default.G (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |ArrayTypeMagic.__default.G#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun ArrayTypeMagic.ArrayCubeTree.Leaf_q (T@U) Bool)
(declare-fun ArrayTypeMagic.ArrayCubeTree._h5 (T@U) T@U)
(declare-fun ArrayTypeMagic.ArrayCubeTree._h4 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun ArrayTypeMagic.ArrayCubeTree.Node_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#ArrayTypeMagic.ArrayCubeTree.Leaf| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun ArrayTypeMagic.ArrayCubeTree._h6 (T@U) T@U)
(declare-fun Tclass._System.array3?_0 (T@U) T@U)
(declare-fun Tclass._System.array3_0 (T@U) T@U)
(declare-fun Tclass.ArrayTypeMagic.ArrayCubeTree_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._System.array3? Tagclass._System.array3 Tagclass.ArrayTypeMagic.ArrayCubeTree |##ArrayTypeMagic.ArrayCubeTree.Leaf| |##ArrayTypeMagic.ArrayCubeTree.Node| tytagFamily$array3 tytagFamily$ArrayCubeTree)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T T@U) (|a#7#0#0| T@U) (|a#7#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#7#0#0| |a#7#1#0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T) $h)  (and ($IsAlloc DatatypeTypeType |a#7#0#0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T) $h) ($IsAlloc DatatypeTypeType |a#7#1#0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T) $h))))
 :qid |unknown.0:0|
 :skolemid |1957|
 :pattern ( ($IsAlloc DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#7#0#0| |a#7#1#0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T) $h))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((_System.array3$arg T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array3 _System.array3$arg) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array3? _System.array3$arg) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1872|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array3 _System.array3$arg) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array3? _System.array3$arg) $h@@0))
)))
(assert (forall ((ArrayTypeMagic._default.G$_T0 T@U) ($ly T@U) (|t#0| T@U) ) (! (= (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0 ($LS $ly) |t#0|) (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0 $ly |t#0|))
 :qid |unknown.0:0|
 :skolemid |1932|
 :pattern ( (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0 ($LS $ly) |t#0|))
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
(assert (forall ((_System.array3$arg@@0 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass._System.array3? _System.array3$arg@@0) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( ($IsAlloc refType $o (Tclass._System.array3? _System.array3$arg@@0) $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayTypeMagic._default.G$_T0@@0 T@U) ($ly@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@0 (Lit DatatypeTypeType |t#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (ArrayTypeMagic.ArrayCubeTree.Leaf_q (Lit DatatypeTypeType |t#0@@0|)))))) (let ((|l#3| (Lit DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h5 (Lit DatatypeTypeType |t#0@@0|)))))
(|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@0 |l#3|))) (= (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@0 ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)) (ite (ArrayTypeMagic.ArrayCubeTree.Leaf_q (Lit DatatypeTypeType |t#0@@0|)) (let ((|d#2| (Lit refType (ArrayTypeMagic.ArrayCubeTree._h4 (Lit DatatypeTypeType |t#0@@0|)))))
|d#2|) (let ((|l#2| (Lit DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h5 (Lit DatatypeTypeType |t#0@@0|)))))
(Lit refType (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@0 ($LS $ly@@0) |l#2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1941|
 :pattern ( (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@0 ($LS $ly@@0) (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1321|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (ArrayTypeMagic.ArrayCubeTree.Leaf_q d) (= (DatatypeCtorId d) |##ArrayTypeMagic.ArrayCubeTree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |1944|
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Leaf_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (ArrayTypeMagic.ArrayCubeTree.Node_q d@@0) (= (DatatypeCtorId d@@0) |##ArrayTypeMagic.ArrayCubeTree.Node|))
 :qid |unknown.0:0|
 :skolemid |1953|
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Node_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1332|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (ArrayTypeMagic.ArrayCubeTree.Node_q d@@1) (exists ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= d@@1 (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#6#0#0| |a#6#1#0|))
 :qid |TypeParametersdfy.334:51|
 :skolemid |1954|
)))
 :qid |unknown.0:0|
 :skolemid |1955|
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Node_q d@@1))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@0 T@U) (|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#7#0#0@@0| |a#7#1#0@@0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@0))  (and ($Is DatatypeTypeType |a#7#0#0@@0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@0)) ($Is DatatypeTypeType |a#7#1#0@@0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@0))))
 :qid |unknown.0:0|
 :skolemid |1956|
 :pattern ( ($Is DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#7#0#0@@0| |a#7#1#0@@0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@0)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (ArrayTypeMagic.ArrayCubeTree.Leaf_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#1#0#0|))
 :qid |TypeParametersdfy.334:36|
 :skolemid |1945|
)))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Leaf_q d@@2))
)))
(assert (forall ((_System.array3$arg@@1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array3 _System.array3$arg@@1))  (and ($Is refType |c#0@@0| (Tclass._System.array3? _System.array3$arg@@1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1871|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array3 _System.array3$arg@@1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array3? _System.array3$arg@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayTypeMagic._default.G$_T0@@1 T@U) ($ly@@1 T@U) (|t#0@@1| T@U) ) (!  (=> (or (|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@1 |t#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@1)))) (and (=> (not (ArrayTypeMagic.ArrayCubeTree.Leaf_q |t#0@@1|)) (let ((|l#1| (ArrayTypeMagic.ArrayCubeTree._h5 |t#0@@1|)))
(|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@1 |l#1|))) (= (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@1 ($LS $ly@@1) |t#0@@1|) (ite (ArrayTypeMagic.ArrayCubeTree.Leaf_q |t#0@@1|) (let ((|d#0| (ArrayTypeMagic.ArrayCubeTree._h4 |t#0@@1|)))
|d#0|) (let ((|l#0| (ArrayTypeMagic.ArrayCubeTree._h5 |t#0@@1|)))
(ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@1 $ly@@1 |l#0|))))))
 :qid |unknown.0:0|
 :skolemid |1940|
 :pattern ( (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@1 ($LS $ly@@1) |t#0@@1|))
))))
(assert (forall ((_System.array3$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array3? _System.array3$arg@@2)) Tagclass._System.array3?) (= (TagFamily (Tclass._System.array3? _System.array3$arg@@2)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@2))
)))
(assert (forall ((_System.array3$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array3 _System.array3$arg@@3)) Tagclass._System.array3) (= (TagFamily (Tclass._System.array3 _System.array3$arg@@3)) tytagFamily$array3))
 :qid |unknown.0:0|
 :skolemid |1868|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@3))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@1 T@U) ) (!  (and (= (Tag (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@1)) Tagclass.ArrayTypeMagic.ArrayCubeTree) (= (TagFamily (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@1)) tytagFamily$ArrayCubeTree))
 :qid |unknown.0:0|
 :skolemid |1934|
 :pattern ( (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@1))
)))
(assert (forall ((_System.array3$arg@@4 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._System.array3? _System.array3$arg@@4))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._System.array3? _System.array3$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |1860|
 :pattern ( ($Is refType $o@@0 (Tclass._System.array3? _System.array3$arg@@4)))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@2 T@U) (|a#2#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#2#0#0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@2) $h@@2) ($IsAlloc refType |a#2#0#0| (Tclass._System.array3 ArrayTypeMagic.ArrayCubeTree$T@@2) $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( ($IsAlloc DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#2#0#0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@2) $h@@2))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@3)) (or (ArrayTypeMagic.ArrayCubeTree.Leaf_q d@@3) (ArrayTypeMagic.ArrayCubeTree.Node_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Node_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@3)))
 :pattern ( (ArrayTypeMagic.ArrayCubeTree.Leaf_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (DatatypeCtorId (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#5#0#0| |a#5#1#0|)) |##ArrayTypeMagic.ArrayCubeTree.Node|)
 :qid |TypeParametersdfy.334:51|
 :skolemid |1952|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (ArrayTypeMagic.ArrayCubeTree._h5 (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#9#0#0| |a#9#1#0|)) |a#9#0#0|)
 :qid |TypeParametersdfy.334:51|
 :skolemid |1961|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (ArrayTypeMagic.ArrayCubeTree._h6 (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#11#0#0| |a#11#1#0|)) |a#11#1#0|)
 :qid |TypeParametersdfy.334:51|
 :skolemid |1963|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (ArrayTypeMagic._default.G$_T0@@2 T@U) ($ly@@2 T@U) (|t#0@@2| T@U) ) (!  (=> (and (or (|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@2 |t#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@2| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@2)) ($IsAlloc DatatypeTypeType |t#0@@2| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc refType (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@2 $ly@@2 |t#0@@2|) (Tclass._System.array3 ArrayTypeMagic._default.G$_T0@@2) $Heap))
 :qid |TypeParametersdfy.338:18|
 :skolemid |1938|
 :pattern ( ($IsAlloc refType (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@2 $ly@@2 |t#0@@2|) (Tclass._System.array3 ArrayTypeMagic._default.G$_T0@@2) $Heap))
))))
(assert (forall ((_System.array3$arg@@5 T@U) ) (! (= (Tclass._System.array3?_0 (Tclass._System.array3? _System.array3$arg@@5)) _System.array3$arg@@5)
 :qid |unknown.0:0|
 :skolemid |1853|
 :pattern ( (Tclass._System.array3? _System.array3$arg@@5))
)))
(assert (forall ((_System.array3$arg@@6 T@U) ) (! (= (Tclass._System.array3_0 (Tclass._System.array3 _System.array3$arg@@6)) _System.array3$arg@@6)
 :qid |unknown.0:0|
 :skolemid |1869|
 :pattern ( (Tclass._System.array3 _System.array3$arg@@6))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@4 T@U) ) (! (= (Tclass.ArrayTypeMagic.ArrayCubeTree_0 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@4)) ArrayTypeMagic.ArrayCubeTree$T@@4)
 :qid |unknown.0:0|
 :skolemid |1935|
 :pattern ( (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#0#0#0|)) |##ArrayTypeMagic.ArrayCubeTree.Leaf|)
 :qid |TypeParametersdfy.334:36|
 :skolemid |1943|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (ArrayTypeMagic.ArrayCubeTree._h4 (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#4#0#0|)) |a#4#0#0|)
 :qid |TypeParametersdfy.334:36|
 :skolemid |1951|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#4#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1331|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#0#0|) (DtRank (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#10#0#0| |a#10#1#0|)))
 :qid |TypeParametersdfy.334:51|
 :skolemid |1962|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (< (DtRank |a#12#1#0|) (DtRank (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#12#0#0| |a#12#1#0|)))
 :qid |TypeParametersdfy.334:51|
 :skolemid |1964|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#12#0#0| |a#12#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayTypeMagic._default.G$_T0@@3 T@U) ($ly@@3 T@U) (|t#0@@3| T@U) ) (!  (=> (or (|ArrayTypeMagic.__default.G#canCall| ArrayTypeMagic._default.G$_T0@@3 |t#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@3| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@3)))) ($Is refType (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@3 $ly@@3 |t#0@@3|) (Tclass._System.array3 ArrayTypeMagic._default.G$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |1937|
 :pattern ( (ArrayTypeMagic.__default.G ArrayTypeMagic._default.G$_T0@@3 $ly@@3 |t#0@@3|))
))))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@1) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4656|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@1 $f))
)))
(assert (forall ((ArrayTypeMagic.ArrayCubeTree$T@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#2#0#0@@0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@5)) ($Is refType |a#2#0#0@@0| (Tclass._System.array3 ArrayTypeMagic.ArrayCubeTree$T@@5)))
 :qid |unknown.0:0|
 :skolemid |1947|
 :pattern ( ($Is DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#2#0#0@@0|) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@5)))
)))
(assert (forall ((d@@4 T@U) (ArrayTypeMagic.ArrayCubeTree$T@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (ArrayTypeMagic.ArrayCubeTree.Leaf_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@6) $h@@3))) ($IsAlloc refType (ArrayTypeMagic.ArrayCubeTree._h4 d@@4) (Tclass._System.array3 ArrayTypeMagic.ArrayCubeTree$T@@6) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1949|
 :pattern ( ($IsAlloc refType (ArrayTypeMagic.ArrayCubeTree._h4 d@@4) (Tclass._System.array3 ArrayTypeMagic.ArrayCubeTree$T@@6) $h@@3))
)))
(assert (forall ((d@@5 T@U) (ArrayTypeMagic.ArrayCubeTree$T@@7 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (ArrayTypeMagic.ArrayCubeTree.Node_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@7) $h@@4))) ($IsAlloc DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h5 d@@5) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@7) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1958|
 :pattern ( ($IsAlloc DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h5 d@@5) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@7) $h@@4))
)))
(assert (forall ((d@@6 T@U) (ArrayTypeMagic.ArrayCubeTree$T@@8 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (ArrayTypeMagic.ArrayCubeTree.Node_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@8) $h@@5))) ($IsAlloc DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h6 d@@6) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@8) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($IsAlloc DatatypeTypeType (ArrayTypeMagic.ArrayCubeTree._h6 d@@6) (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic.ArrayCubeTree$T@@8) $h@@5))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (|#ArrayTypeMagic.ArrayCubeTree.Node| (Lit DatatypeTypeType |a#8#0#0|) (Lit DatatypeTypeType |a#8#1#0|)) (Lit DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Node| |a#8#0#0| |a#8#1#0|)))
 :qid |TypeParametersdfy.334:51|
 :skolemid |1960|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Node| (Lit DatatypeTypeType |a#8#0#0|) (Lit DatatypeTypeType |a#8#1#0|)))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#ArrayTypeMagic.ArrayCubeTree.Leaf| (Lit refType |a#3#0#0|)) (Lit DatatypeTypeType (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |a#3#0#0|)))
 :qid |TypeParametersdfy.334:36|
 :skolemid |1950|
 :pattern ( (|#ArrayTypeMagic.ArrayCubeTree.Leaf| (Lit refType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1322|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@4| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun ArrayTypeMagic._default.G$_T0@@4 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |l#Z#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$ArrayTypeMagic.__default.G)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (and (and (and (= |t#0@@4| (|#ArrayTypeMagic.ArrayCubeTree.Node| |_mcc#1#0| |_mcc#2#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@4))) (and ($Is DatatypeTypeType |_mcc#2#0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@4)) (= |let#0#0#0| |_mcc#1#0|))) (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@4)) (= |l#Z#0@0| |let#0#0#0|)) (and ($IsAlloc DatatypeTypeType |l#Z#0@0| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@4) $Heap@@0) (= (ControlFlow 0 4) (- 0 3))))) (< (DtRank |l#Z#0@0|) (DtRank |t#0@@4|)))))
(let ((anon9_Else_correct  (=> (or (not (= |t#0@@4| (|#ArrayTypeMagic.ArrayCubeTree.Leaf| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is DatatypeTypeType |t#0@@4| (Tclass.ArrayTypeMagic.ArrayCubeTree ArrayTypeMagic._default.G$_T0@@4))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
