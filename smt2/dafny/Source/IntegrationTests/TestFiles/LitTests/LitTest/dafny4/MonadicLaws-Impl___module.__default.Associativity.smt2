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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.append (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.append#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.Bind (T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Bind#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |lambda#7| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun |lambda#9| (Bool) T@U)
(declare-fun |lambda#11| (T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#10| (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$List)
)
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor BoxType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0 T@U) ($ly T@U) (|xs#0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0 (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.append$_T0)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List _module._default.append$_T0))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|xs'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.append#canCall| _module._default.append$_T0 |xs'#3| (Lit DatatypeTypeType |ys#0|)))) (= (_module.__default.append _module._default.append$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |ys#0| (let ((|xs'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |x#2| (Lit DatatypeTypeType (_module.__default.append _module._default.append$_T0 ($LS $ly) |xs'#2| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |537|
 :pattern ( (_module.__default.append _module._default.append$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)))
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
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 5)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (= (Ctor SetType) 8)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#6#heap#0| T@U) (|$l#6#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#8| |l#0|) |$l#6#heap#0| |$l#6#x#0|)) ($IsBox |$l#6#x#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#8| |l#0|) |$l#6#heap#0| |$l#6#x#0|))
)))
(assert (= (Ctor HandleTypeType) 9))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Bind$T T@U) (_module._default.Bind$U T@U) ($ly@@0 T@U) ($Heap T@U) (|xs#0@@0| T@U) (|f#0| T@U) ) (!  (=> (or (|_module.__default.Bind#canCall| _module._default.Bind$T _module._default.Bind$U |xs#0@@0| |f#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.Bind$T))) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 _module._default.Bind$T (Tclass._module.List _module._default.Bind$U)))))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|xs'#1| (_module.List.tail |xs#0@@0|)))
(let ((|x#1| (_module.List.head |xs#0@@0|)))
 (and (|_module.__default.Bind#canCall| _module._default.Bind$T _module._default.Bind$U |xs'#1| |f#0|) (|_module.__default.append#canCall| _module._default.Bind$U ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T (Tclass._module.List _module._default.Bind$U) $Heap |f#0| |x#1|)) (_module.__default.Bind _module._default.Bind$T _module._default.Bind$U $ly@@0 |xs'#1| |f#0|)))))) (= (_module.__default.Bind _module._default.Bind$T _module._default.Bind$U ($LS $ly@@0) |xs#0@@0| |f#0|) (ite (_module.List.Nil_q |xs#0@@0|) |#_module.List.Nil| (let ((|xs'#0| (_module.List.tail |xs#0@@0|)))
(let ((|x#0| (_module.List.head |xs#0@@0|)))
(_module.__default.append _module._default.Bind$U ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T (Tclass._module.List _module._default.Bind$U) $Heap |f#0| |x#0|)) (_module.__default.Bind _module._default.Bind$T _module._default.Bind$U $ly@@0 |xs'#0| |f#0|))))))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.__default.Bind _module._default.Bind$T _module._default.Bind$U ($LS $ly@@0) |xs#0@@0| |f#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.Bind$T@@0 T@U) (_module._default.Bind$U@@0 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|f#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.Bind#canCall| _module._default.Bind$T@@0 _module._default.Bind$U@@0 |xs#0@@1| |f#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.Bind$T@@0)) ($IsAlloc DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.Bind$T@@0) $Heap@@0)) (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 _module._default.Bind$T@@0 (Tclass._module.List _module._default.Bind$U@@0))) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 _module._default.Bind$T@@0 (Tclass._module.List _module._default.Bind$U@@0)) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.Bind _module._default.Bind$T@@0 _module._default.Bind$U@@0 $ly@@1 |xs#0@@1| |f#0@@0|) (Tclass._module.List _module._default.Bind$U@@0) $Heap@@0))
 :qid |MonadicLawsdfy.32:16|
 :skolemid |549|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Bind _module._default.Bind$T@@0 _module._default.Bind$U@@0 $ly@@1 |xs#0@@1| |f#0@@0|) (Tclass._module.List _module._default.Bind$U@@0) $Heap@@0))
))))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Bind$T@@1 T@U) (_module._default.Bind$U@@1 T@U) ($ly@@2 T@U) ($Heap@@1 T@U) (|xs#0@@2| T@U) (|f#0@@1| T@U) ) (!  (=> (or (|_module.__default.Bind#canCall| _module._default.Bind$T@@1 _module._default.Bind$U@@1 (Lit DatatypeTypeType |xs#0@@2|) (Lit HandleTypeType |f#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.Bind$T@@1))) ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 _module._default.Bind$T@@1 (Tclass._module.List _module._default.Bind$U@@1)))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|xs'#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|x#5| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@2|)))))
 (and (|_module.__default.Bind#canCall| _module._default.Bind$T@@1 _module._default.Bind$U@@1 |xs'#5| (Lit HandleTypeType |f#0@@1|)) (|_module.__default.append#canCall| _module._default.Bind$U@@1 ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T@@1 (Tclass._module.List _module._default.Bind$U@@1) $Heap@@1 (Lit HandleTypeType |f#0@@1|) |x#5|)) (_module.__default.Bind _module._default.Bind$T@@1 _module._default.Bind$U@@1 ($LS $ly@@2) |xs'#5| (Lit HandleTypeType |f#0@@1|))))))) (= (_module.__default.Bind _module._default.Bind$T@@1 _module._default.Bind$U@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|) (Lit HandleTypeType |f#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |#_module.List.Nil| (let ((|xs'#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|x#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@2|)))))
(_module.__default.append _module._default.Bind$U@@1 ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T@@1 (Tclass._module.List _module._default.Bind$U@@1) $Heap@@1 (Lit HandleTypeType |f#0@@1|) |x#4|)) (Lit DatatypeTypeType (_module.__default.Bind _module._default.Bind$T@@1 _module._default.Bind$U@@1 ($LS $ly@@2) |xs'#4| (Lit HandleTypeType |f#0@@1|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |553|
 :pattern ( (_module.__default.Bind _module._default.Bind$T@@1 _module._default.Bind$U@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|) (Lit HandleTypeType |f#0@@1|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Bind$T@@2 T@U) (_module._default.Bind$U@@2 T@U) ($ly@@3 T@U) (|xs#0@@3| T@U) (|f#0@@2| T@U) ) (!  (=> (or (|_module.__default.Bind#canCall| _module._default.Bind$T@@2 _module._default.Bind$U@@2 |xs#0@@3| |f#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.Bind$T@@2)) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 _module._default.Bind$T@@2 (Tclass._module.List _module._default.Bind$U@@2)))))) ($Is DatatypeTypeType (_module.__default.Bind _module._default.Bind$T@@2 _module._default.Bind$U@@2 $ly@@3 |xs#0@@3| |f#0@@2|) (Tclass._module.List _module._default.Bind$U@@2)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.__default.Bind _module._default.Bind$T@@2 _module._default.Bind$U@@2 $ly@@3 |xs#0@@3| |f#0@@2|))
))))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Bind$T@@3 T@U) (_module._default.Bind$U@@3 T@U) ($ly@@4 T@U) ($Heap@@2 T@U) (|xs#0@@4| T@U) (|f#0@@3| T@U) ) (!  (=> (or (|_module.__default.Bind#canCall| _module._default.Bind$T@@3 _module._default.Bind$U@@3 (Lit DatatypeTypeType |xs#0@@4|) |f#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.Bind$T@@3))) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 _module._default.Bind$T@@3 (Tclass._module.List _module._default.Bind$U@@3)))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)))))) (let ((|xs'#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@4|)))))
 (and (|_module.__default.Bind#canCall| _module._default.Bind$T@@3 _module._default.Bind$U@@3 |xs'#3@@0| |f#0@@3|) (|_module.__default.append#canCall| _module._default.Bind$U@@3 ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T@@3 (Tclass._module.List _module._default.Bind$U@@3) $Heap@@2 |f#0@@3| |x#3|)) (_module.__default.Bind _module._default.Bind$T@@3 _module._default.Bind$U@@3 ($LS $ly@@4) |xs'#3@@0| |f#0@@3|)))))) (= (_module.__default.Bind _module._default.Bind$T@@3 _module._default.Bind$U@@3 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|) |f#0@@3|) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)) |#_module.List.Nil| (let ((|xs'#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(let ((|x#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@4|)))))
(_module.__default.append _module._default.Bind$U@@3 ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Bind$T@@3 (Tclass._module.List _module._default.Bind$U@@3) $Heap@@2 |f#0@@3| |x#2@@0|)) (_module.__default.Bind _module._default.Bind$T@@3 _module._default.Bind$U@@3 ($LS $ly@@4) |xs'#2@@0| |f#0@@3|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |552|
 :pattern ( (_module.__default.Bind _module._default.Bind$T@@3 _module._default.Bind$U@@3 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|) |f#0@@3|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (|_module.List#Equal| a b))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.List.Cons_q a@@0) (_module.List.Cons_q b@@0)) (= (|_module.List#Equal| a@@0 b@@0)  (and (= (_module.List.head a@@0) (_module.List.head b@@0)) (|_module.List#Equal| (_module.List.tail a@@0) (_module.List.tail b@@0)))))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q a@@0))
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$l#6#heap#0@@0| T@U) (|$l#6#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#7| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$l#6#heap#0@@0| |$l#6#x#0@@0|) ($Box DatatypeTypeType (_module.__default.Bind |l#0@@0| |l#1| |l#2| ($Unbox DatatypeTypeType (Apply1 |l#3| |l#4| |$l#6#heap#0@@0| |l#5| |$l#6#x#0@@0|)) |l#6|)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#7| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$l#6#heap#0@@0| |$l#6#x#0@@0|))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@0 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs#0@@5| |ys#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.append$_T0@@0)) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List _module._default.append$_T0@@0))))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|xs'#1@@0| (_module.List.tail |xs#0@@5|)))
(|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs'#1@@0| |ys#0@@0|))) (= (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@5) |xs#0@@5| |ys#0@@0|) (ite (_module.List.Nil_q |xs#0@@5|) |ys#0@@0| (let ((|xs'#0@@0| (_module.List.tail |xs#0@@5|)))
(let ((|x#0@@0| (_module.List.head |xs#0@@5|)))
(|#_module.List.Cons| |x#0@@0| (_module.__default.append _module._default.append$_T0@@0 $ly@@5 |xs'#0@@0| |ys#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@5) |xs#0@@5| |ys#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |MonadicLawsdfy.8:31|
 :skolemid |586|
)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@4| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@5| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3) ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#6#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#9| |l#0@@1|) |$l#6#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (MapType1Select refType boolType (|lambda#9| |l#0@@1|) |$l#6#o#0|))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7| T@U) (|$l#6#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#11| |l#0@@2| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7|) |$l#6#ly#0|) (Handle1 (|lambda#7| |l#0@@2| |l#1@@0| |$l#6#ly#0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) |l#6@@0| |l#7|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#11| |l#0@@2| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7|) |$l#6#ly#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.List.Nil_q a@@3) (_module.List.Nil_q b@@3)) (|_module.List#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (|_module.List#Equal| a@@3 b@@3) (_module.List.Nil_q a@@3))
 :pattern ( (|_module.List#Equal| a@@3 b@@3) (_module.List.Nil_q b@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |MonadicLawsdfy.8:31|
 :skolemid |584|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |MonadicLawsdfy.8:31|
 :skolemid |593|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |MonadicLawsdfy.8:31|
 :skolemid |595|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@1 T@U) ($ly@@6 T@U) (|xs#0@@6| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@1 |xs#0@@6| |ys#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.append$_T0@@1)) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List _module._default.append$_T0@@1))))) ($Is DatatypeTypeType (_module.__default.append _module._default.append$_T0@@1 $ly@@6 |xs#0@@6| |ys#0@@1|) (Tclass._module.List _module._default.append$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.__default.append _module._default.append$_T0@@1 $ly@@6 |xs#0@@6| |ys#0@@1|))
))))
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
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |MonadicLawsdfy.8:31|
 :skolemid |594|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |MonadicLawsdfy.8:31|
 :skolemid |596|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@6| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@7| T@U) ) (! (= ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@7| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@7| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@4))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@4))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@4))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@1| $o@@1) |l#2@@1|)))) |l#3@@1|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |602|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@1 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (_module._default.append$_T0@@2 T@U) ($ly@@7 T@U) (|xs#0@@7| T@U) (|ys#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.append#canCall| _module._default.append$_T0@@2 |xs#0@@7| |ys#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3)) (and ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |ys#0@@2| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@7 |xs#0@@7| |ys#0@@2|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))
 :qid |MonadicLawsdfy.10:16|
 :skolemid |534|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@7 |xs#0@@7| |ys#0@@2|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@3))
))))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module._default.append$_T0@@3 T@U) ($ly@@8 T@U) (|xs#0@@8| T@U) (|ys#0@@3| T@U) ) (! (= (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@8) |xs#0@@8| |ys#0@@3|) (_module.__default.append _module._default.append$_T0@@3 $ly@@8 |xs#0@@8| |ys#0@@3|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@8) |xs#0@@8| |ys#0@@3|))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@12 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@5))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@4 b@@4) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@4 o@@7) (|Set#IsMember| b@@4 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@7))
 :pattern ( (|Set#IsMember| b@@4 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@4))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |MonadicLawsdfy.8:31|
 :skolemid |592|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((_module._default.Bind$T@@4 T@U) (_module._default.Bind$U@@4 T@U) ($ly@@9 T@U) (|xs#0@@9| T@U) (|f#0@@8| T@U) ) (! (= (_module.__default.Bind _module._default.Bind$T@@4 _module._default.Bind$U@@4 ($LS $ly@@9) |xs#0@@9| |f#0@@8|) (_module.__default.Bind _module._default.Bind$T@@4 _module._default.Bind$U@@4 $ly@@9 |xs#0@@9| |f#0@@8|))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.__default.Bind _module._default.Bind$T@@4 _module._default.Bind$U@@4 ($LS $ly@@9) |xs#0@@9| |f#0@@8|))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@6)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@6))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#6#heap#0@@1| T@U) (|$l#6#x#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#10| |l#0@@4|) |$l#6#heap#0@@1| |$l#6#x#0@@1|) |l#0@@4|)
 :qid |MonadicLawsdfy.60:42|
 :skolemid |606|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#10| |l#0@@4|) |$l#6#heap#0@@1| |$l#6#x#0@@1|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#1_0@0| () T@U)
(declare-fun _module._default.Associativity$T () T@U)
(declare-fun |$lambdaHeap#1_0@0| () T@U)
(declare-fun |$_Frame#l1_0@0| () T@U)
(declare-fun |##xs#1_1@0| () T@U)
(declare-fun |f#0@@9| () T@U)
(declare-fun |g#0| () T@U)
(declare-fun |lambdaResult#1_0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |y#0_1_0_0@0| () T@U)
(declare-fun |$lambdaHeap#0_1_0_0@0| () T@U)
(declare-fun |$_Frame#l0_1_0_0@0| () T@U)
(declare-fun |##xs#0_1_0_1@0| () T@U)
(declare-fun |lambdaResult#0_1_0_0| () T@U)
(declare-fun |xs#0_0@0| () T@U)
(declare-fun |y#0_1_0_0_0@0| () T@U)
(declare-fun |$lambdaHeap#0_1_0_0_0@0| () T@U)
(declare-fun |$_Frame#l0_1_0_0_0@0| () T@U)
(declare-fun |##xs#0_1_0_0_1@0| () T@U)
(declare-fun |lambdaResult#0_1_0_0_0| () T@U)
(declare-fun |y#0_1_0_0_1@0| () T@U)
(declare-fun |$lambdaHeap#0_1_0_0_1@0| () T@U)
(declare-fun |$_Frame#l0_1_0_0_1@0| () T@U)
(declare-fun |##xs#0_1_0_0_3@0| () T@U)
(declare-fun |lambdaResult#0_1_0_0_1| () T@U)
(declare-fun |##f#0_1_0_0_2@0| () T@U)
(declare-fun |x#0_0@0| () T@U)
(declare-fun |##f#0_1_0_0_0@0| () T@U)
(declare-fun |##xs#0_1_0_0_2@0| () T@U)
(declare-fun |z#0_0_0_0_0@0| () T@U)
(declare-fun |$lambdaHeap#0_0_0_0_0@0| () T@U)
(declare-fun |$_Frame#l0_0_0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_0_6@0| () T@U)
(declare-fun |lambdaResult#0_0_0_0_0| () T@U)
(declare-fun |##f#0_0_0_0_3@0| () T@U)
(declare-fun |y#0_0_0@0| () T@U)
(declare-fun |ys#0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_0_1@0| () T@U)
(declare-fun |##ys#0_0_0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_0_3@0| () T@U)
(declare-fun |##ys#0_0_0_0_1@0| () T@U)
(declare-fun |##xs#0_0_0_0_5@0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |##f#1_0@0| () T@U)
(declare-fun |##xs#0_0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_0_1_1@0| () T@U)
(declare-fun |##xs#0_0_0_1_3@0| () T@U)
(declare-fun |##ys#0_0_0_1_1@0| () T@U)
(declare-fun |##ys#0_0_0_1_0@0| () T@U)
(declare-fun |xs##0_0_0_1_0@0| () T@U)
(declare-fun |ys##0_0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_0_1_6@0| () T@U)
(declare-fun |zs##0_0_0_1_0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##xs#0_0_0_1_9@0| () T@U)
(declare-fun |##ys#0_0_0_1_2@0| () T@U)
(declare-fun |##xs#0_0_0_1_8@0| () T@U)
(declare-fun |##xs#0_0_0_1_11@0| () T@U)
(declare-fun |##ys#0_0_0_1_3@0| () T@U)
(declare-fun |##xs#0_0_0_2_0@0| () T@U)
(declare-fun |##ys#0_0_0_2_1@0| () T@U)
(declare-fun |##xs#0_0_0_2_1@0| () T@U)
(declare-fun |##ys#0_0_0_2_0@0| () T@U)
(declare-fun |ys##0_0_0_2_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##xs#0_0_0_2_5@0| () T@U)
(declare-fun |##xs#0_0_0_2_6@0| () T@U)
(declare-fun |##xs#0_0_0_2_8@0| () T@U)
(declare-fun |##ys#0_0_0_2_3@0| () T@U)
(declare-fun |##ys#0_0_0_2_2@0| () T@U)
(declare-fun |_mcc#2#0_0_0@0| () T@U)
(declare-fun |_mcc#3#0_0_0@0| () T@U)
(declare-fun |let#0_0_0#0#0| () T@U)
(declare-fun |let#0_0_1#0#0| () T@U)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@4 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Associativity)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon4_correct true))
(let ((anon37_Else_correct  (=> (and (not (and ($IsBox |x#1_0@0| _module._default.Associativity$T) ($IsAllocBox |x#1_0@0| _module._default.Associativity$T |$lambdaHeap#1_0@0|))) (= (ControlFlow 0 46) 44)) anon4_correct)))
(let ((anon37_Then_correct  (=> (and (and ($IsBox |x#1_0@0| _module._default.Associativity$T) ($IsAllocBox |x#1_0@0| _module._default.Associativity$T |$lambdaHeap#1_0@0|)) (= |$_Frame#l1_0@0| (|lambda#0| null |$lambdaHeap#1_0@0| alloc false))) (=> (and (and (and (= |##xs#1_1@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#1_0@0| |f#0@@9| |x#1_0@0|))) ($IsAlloc DatatypeTypeType |##xs#1_1@0| (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#1_0@0|)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) |$lambdaHeap#1_0@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#1_0@0| |f#0@@9| |x#1_0@0|)) |g#0|))) (and (and (= |lambdaResult#1_0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |x#1_0@0|)) |g#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |x#1_0@0|)) |g#0|)) (and ($Is DatatypeTypeType |lambdaResult#1_0| (Tclass._module.List _module._default.Associativity$T)) (= (ControlFlow 0 45) 44)))) anon4_correct))))
(let ((anon36_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0@0|) (or (= $Heap@0 |$lambdaHeap#1_0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#1_0@0|))) (and (=> (= (ControlFlow 0 47) 45) anon37_Then_correct) (=> (= (ControlFlow 0 47) 46) anon37_Else_correct)))))
(let ((anon11_correct true))
(let ((anon42_Else_correct  (=> (and (not (and ($IsBox |y#0_1_0_0@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0@0|))) (= (ControlFlow 0 36) 34)) anon11_correct)))
(let ((anon42_Then_correct  (=> (and (and ($IsBox |y#0_1_0_0@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0@0|)) (= |$_Frame#l0_1_0_0@0| (|lambda#0| null |$lambdaHeap#0_1_0_0@0| alloc false))) (=> (and (and (and (= |##xs#0_1_0_1@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0@0| |f#0@@9| |y#0_1_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_1_0_1@0| (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0@0|)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) |$lambdaHeap#0_1_0_0@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0@0| |f#0@@9| |y#0_1_0_0@0|)) |g#0|))) (and (and (= |lambdaResult#0_1_0_0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0@0|)) |g#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0@0|)) |g#0|)) (and ($Is DatatypeTypeType |lambdaResult#0_1_0_0| (Tclass._module.List _module._default.Associativity$T)) (= (ControlFlow 0 35) 34)))) anon11_correct))))
(let ((anon41_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_0_0@0|) (or (= $Heap@0 |$lambdaHeap#0_1_0_0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0_1_0_0@0|))) (and (=> (= (ControlFlow 0 37) 35) anon42_Then_correct) (=> (= (ControlFlow 0 37) 36) anon42_Else_correct)))))
(let ((anon41_Else_correct true))
(let ((anon40_Then_correct  (=> ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (and (=> (= (ControlFlow 0 38) 37) anon41_Then_correct) (=> (= (ControlFlow 0 38) 33) anon41_Else_correct)))))
(let ((anon16_correct true))
(let ((anon45_Else_correct  (=> (and (not (and ($IsBox |y#0_1_0_0_0@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0_0@0|))) (= (ControlFlow 0 30) 28)) anon16_correct)))
(let ((anon45_Then_correct  (=> (and (and ($IsBox |y#0_1_0_0_0@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0_0@0|)) (= |$_Frame#l0_1_0_0_0@0| (|lambda#0| null |$lambdaHeap#0_1_0_0_0@0| alloc false))) (=> (and (and (and (= |##xs#0_1_0_0_1@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_0@0| |f#0@@9| |y#0_1_0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_1_0_0_1@0| (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_0@0|)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) |$lambdaHeap#0_1_0_0_0@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_0@0| |f#0@@9| |y#0_1_0_0_0@0|)) |g#0|))) (and (and (= |lambdaResult#0_1_0_0_0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0_0@0|)) |g#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0_0@0|)) |g#0|)) (and ($Is DatatypeTypeType |lambdaResult#0_1_0_0_0| (Tclass._module.List _module._default.Associativity$T)) (= (ControlFlow 0 29) 28)))) anon16_correct))))
(let ((anon44_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_0_0_0@0|) (or (= $Heap@0 |$lambdaHeap#0_1_0_0_0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 31) 29) anon45_Then_correct) (=> (= (ControlFlow 0 31) 30) anon45_Else_correct)))))
(let ((anon20_correct true))
(let ((anon47_Else_correct  (=> (and (not (and ($IsBox |y#0_1_0_0_1@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0_1@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0_1@0|))) (= (ControlFlow 0 25) 23)) anon20_correct)))
(let ((anon47_Then_correct  (=> (and (and ($IsBox |y#0_1_0_0_1@0| _module._default.Associativity$T) ($IsAllocBox |y#0_1_0_0_1@0| _module._default.Associativity$T |$lambdaHeap#0_1_0_0_1@0|)) (= |$_Frame#l0_1_0_0_1@0| (|lambda#0| null |$lambdaHeap#0_1_0_0_1@0| alloc false))) (=> (and (and (and (= |##xs#0_1_0_0_3@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_1@0| |f#0@@9| |y#0_1_0_0_1@0|))) ($IsAlloc DatatypeTypeType |##xs#0_1_0_0_3@0| (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_1@0|)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) |$lambdaHeap#0_1_0_0_1@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_1_0_0_1@0| |f#0@@9| |y#0_1_0_0_1@0|)) |g#0|))) (and (and (= |lambdaResult#0_1_0_0_1| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0_1@0|)) |g#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |y#0_1_0_0_1@0|)) |g#0|)) (and ($Is DatatypeTypeType |lambdaResult#0_1_0_0_1| (Tclass._module.List _module._default.Associativity$T)) (= (ControlFlow 0 24) 23)))) anon20_correct))))
(let ((anon46_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_0_0_1@0|) (or (= $Heap@0 |$lambdaHeap#0_1_0_0_1@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0_1_0_0_1@0|))) (and (=> (= (ControlFlow 0 26) 24) anon47_Then_correct) (=> (= (ControlFlow 0 26) 25) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (= |##f#0_1_0_0_2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_1_0_0_2@0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (=> (and (and (forall ((|$l#0_1_0_0_8#y#0| T@U) (|$l#0_1_0_0_8#heap#0| T@U) ) (!  (=> (and ($IsBox |$l#0_1_0_0_8#y#0| _module._default.Associativity$T) ($IsGoodHeap |$l#0_1_0_0_8#heap#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$l#0_1_0_0_8#heap#0| |f#0@@9| |$l#0_1_0_0_8#y#0|)) |g#0|))
 :qid |unknown.0:0|
 :skolemid |573|
)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (= (ControlFlow 0 22) (- 0 21))) (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))))))))
(let ((anon44_Else_correct  (=> (= |##f#0_1_0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_1_0_0_0@0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (=> (and (and (forall ((|$l#0_1_0_0_3#y#0| T@U) (|$l#0_1_0_0_3#heap#0| T@U) ) (!  (=> (and ($IsBox |$l#0_1_0_0_3#y#0| _module._default.Associativity$T) ($IsGoodHeap |$l#0_1_0_0_3#heap#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$l#0_1_0_0_3#heap#0| |f#0@@9| |$l#0_1_0_0_3#y#0|)) |g#0|))
 :qid |unknown.0:0|
 :skolemid |571|
)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (and (= |##xs#0_1_0_0_2@0| (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|)) ($IsAlloc DatatypeTypeType |##xs#0_1_0_0_2@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0))) (and (=> (= (ControlFlow 0 27) 26) anon46_Then_correct) (=> (= (ControlFlow 0 27) 22) anon46_Else_correct)))))))
(let ((anon43_Then_correct  (=> ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (and (=> (= (ControlFlow 0 32) 31) anon44_Then_correct) (=> (= (ControlFlow 0 32) 27) anon44_Else_correct)))))
(let ((anon30_correct true))
(let ((anon54_Else_correct  (=> (and (not (and ($IsBox |z#0_0_0_0_0@0| _module._default.Associativity$T) ($IsAllocBox |z#0_0_0_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_0_0_0_0@0|))) (= (ControlFlow 0 15) 13)) anon30_correct)))
(let ((anon54_Then_correct  (=> (and (and ($IsBox |z#0_0_0_0_0@0| _module._default.Associativity$T) ($IsAllocBox |z#0_0_0_0_0@0| _module._default.Associativity$T |$lambdaHeap#0_0_0_0_0@0|)) (= |$_Frame#l0_0_0_0_0@0| (|lambda#0| null |$lambdaHeap#0_0_0_0_0@0| alloc false))) (=> (and (and (and (= |##xs#0_0_0_0_6@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_0_0_0_0@0| |f#0@@9| |z#0_0_0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_0_6@0| (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_0_0_0_0@0|)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) |$lambdaHeap#0_0_0_0_0@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$lambdaHeap#0_0_0_0_0@0| |f#0@@9| |z#0_0_0_0_0@0|)) |g#0|))) (and (and (= |lambdaResult#0_0_0_0_0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |z#0_0_0_0_0@0|)) |g#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |z#0_0_0_0_0@0|)) |g#0|)) (and ($Is DatatypeTypeType |lambdaResult#0_0_0_0_0| (Tclass._module.List _module._default.Associativity$T)) (= (ControlFlow 0 14) 13)))) anon30_correct))))
(let ((anon53_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_0_0_0@0|) (or (= $Heap@0 |$lambdaHeap#0_0_0_0_0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0_0_0_0_0@0|))) (and (=> (= (ControlFlow 0 16) 14) anon54_Then_correct) (=> (= (ControlFlow 0 16) 15) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (= |##f#0_0_0_0_3@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_0_0_0_3@0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (=> (and (and (forall ((|$l#0_0_0_0_3#z#0| T@U) (|$l#0_0_0_0_3#heap#0| T@U) ) (!  (=> (and ($IsBox |$l#0_0_0_0_3#z#0| _module._default.Associativity$T) ($IsGoodHeap |$l#0_0_0_0_3#heap#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$l#0_0_0_0_3#heap#0| |f#0@@9| |$l#0_0_0_0_3#z#0|)) |g#0|))
 :qid |unknown.0:0|
 :skolemid |567|
)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (= (ControlFlow 0 12) (- 0 11))) (|_module.List#Equal| (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| |f#0@@9|) |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))))))))
(let ((anon52_Then_correct  (=> (and (and (= |##xs#0_0_0_0_1@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_0_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0))) (=> (and (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (= |##ys#0_0_0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)))) (and (and (= |##xs#0_0_0_0_0@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0)))) (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (= |##xs#0_0_0_0_3@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_0_3@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0))) (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|) (= |##ys#0_0_0_0_1@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_0_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))))) (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (and (= |##xs#0_0_0_0_5@0| (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|)) ($IsAlloc DatatypeTypeType |##xs#0_0_0_0_5@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)))) (and (=> (= (ControlFlow 0 17) 16) anon53_Then_correct) (=> (= (ControlFlow 0 17) 12) anon53_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |m#0| |f#0@@9|) |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))))))
(let ((anon36_Else_correct  (=> (= |##f#1_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#1_0@0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (and (|$IsA#_module.List| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (and (forall ((|$l#1_3#x#0| T@U) (|$l#1_3#heap#0| T@U) ) (!  (=> (and ($IsBox |$l#1_3#x#0| _module._default.Associativity$T) ($IsGoodHeap |$l#1_3#heap#0|)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |$l#1_3#heap#0| |f#0@@9| |$l#1_3#x#0|)) |g#0|))
 :qid |unknown.0:0|
 :skolemid |577|
)) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) |#_module.List.Nil|)) (=> (and (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |m#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) |#_module.List.Nil|) (= (ControlFlow 0 42) 9)) GeneratedUnifiedExit_correct))))))
(let ((anon35_Then_correct  (=> (and (= |m#0| |#_module.List.Nil|) ($IsAlloc DatatypeTypeType |m#0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and (=> (= (ControlFlow 0 48) 47) anon36_Then_correct) (=> (= (ControlFlow 0 48) 42) anon36_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ)))) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (= (ControlFlow 0 20) 9)) GeneratedUnifiedExit_correct)))
(let ((anon39_Then_correct  (=> (= ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |x#0_0@0|)) |#_module.List.Nil|) (and (and (=> (= (ControlFlow 0 39) 38) anon40_Then_correct) (=> (= (ControlFlow 0 39) 32) anon43_Then_correct)) (=> (= (ControlFlow 0 39) 20) anon43_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (|_module.List#Equal| (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (|#_module.List.Cons| |x#0_0@0| |xs#0_0@0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))) (= (ControlFlow 0 10) 9)) GeneratedUnifiedExit_correct)))
(let ((anon51_Then_correct  (=> (and (and (= |##xs#0_0_0_1_0@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0))) (=> (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (= |##xs#0_0_0_1_1@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0))) (and (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|)) (and (= |##xs#0_0_0_1_3@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_3@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)))) (and (and (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) (and (= |##ys#0_0_0_1_1@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) ($IsAlloc DatatypeTypeType |##ys#0_0_0_1_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0))) (and (and (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) (= |##ys#0_0_0_1_0@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_1_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))))))) (=> (and (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))) (= |xs##0_0_0_1_0@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)))) (and (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0)) (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|)))) (=> (and (and (and (and (and (and (= |ys##0_0_0_1_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|))) (and (and (= |##xs#0_0_0_1_6@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_6@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))) (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) (= |zs##0_0_0_1_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (and (|$IsA#_module.List| (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |xs##0_0_0_1_0@0| |ys##0_0_0_1_0@0|) |zs##0_0_0_1_0@0|)) (|$IsA#_module.List| (_module.__default.append _module._default.Associativity$T ($LS $LZ) |xs##0_0_0_1_0@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys##0_0_0_1_0@0| |zs##0_0_0_1_0@0|)))) (and (and (|_module.__default.append#canCall| _module._default.Associativity$T |xs##0_0_0_1_0@0| |ys##0_0_0_1_0@0|) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) |xs##0_0_0_1_0@0| |ys##0_0_0_1_0@0|) |zs##0_0_0_1_0@0|)) (and (|_module.__default.append#canCall| _module._default.Associativity$T |ys##0_0_0_1_0@0| |zs##0_0_0_1_0@0|) (|_module.__default.append#canCall| _module._default.Associativity$T |xs##0_0_0_1_0@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys##0_0_0_1_0@0| |zs##0_0_0_1_0@0|))))) (and (|_module.List#Equal| (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) |xs##0_0_0_1_0@0| |ys##0_0_0_1_0@0|) |zs##0_0_0_1_0@0|) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) |xs##0_0_0_1_0@0| (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) |ys##0_0_0_1_0@0| |zs##0_0_0_1_0@0|))) (= $Heap@0 $Heap@2))) (and (and (= |##xs#0_0_0_1_9@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_9@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2)) (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@2))))) (and (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (= |##ys#0_0_0_1_2@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_1_2@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)))) (and (and (= |##xs#0_0_0_1_8@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_8@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2)) (and ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2) ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@2)))) (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (= |##xs#0_0_0_1_11@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_1_11@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@2))) (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|) (= |##ys#0_0_0_1_3@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_1_3@0| (Tclass._module.List _module._default.Associativity$T) $Heap@2) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))))) (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (= (ControlFlow 0 7) (- 0 6))))) (|_module.List#Equal| (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| |f#0@@9|) |g#0|))) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@2 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |g#0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| |f#0@@9|) |g#0|)))))))))
(let ((anon50_Then_correct  (=> (and (and (and (and (= |##xs#0_0_0_2_0@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_2_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0))) (and (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|)) (and (= |##ys#0_0_0_2_1@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) ($IsAlloc DatatypeTypeType |##ys#0_0_0_2_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)))) (and (and (and (|_module.__default.append#canCall| _module._default.Associativity$T |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) (= |##xs#0_0_0_2_1@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_2_1@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0))) (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|) (= |##ys#0_0_0_2_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_2_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|)))))) (=> (and (and (and (and (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.append#canCall| _module._default.Associativity$T |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|))) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|)) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) |g#0|))) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@0) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|))) (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (= |ys##0_0_0_2_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (and (|$IsA#_module.List| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |ys##0_0_0_2_0@0|) |g#0|)) (|$IsA#_module.List| (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys##0_0_0_2_0@0| |g#0|)))) (and (and (|_module.__default.append#canCall| _module._default.Associativity$T |ys#0_0_0@0| |ys##0_0_0_2_0@0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.append _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |ys##0_0_0_2_0@0|) |g#0|)) (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys##0_0_0_2_0@0| |g#0|)) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys##0_0_0_2_0@0| |g#0|))))) (and (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |ys##0_0_0_2_0@0|) |g#0|) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys##0_0_0_2_0@0| |g#0|))) (= $Heap@0 $Heap@1))) (and (and (= |##xs#0_0_0_2_5@0| ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@1 |g#0| |y#0_0_0@0|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_2_5@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1)) (and ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@1))))) (and (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (= |##xs#0_0_0_2_6@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_2_6@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1))) (and (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@1) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|)) (and (= |##xs#0_0_0_2_8@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|)) ($IsAlloc DatatypeTypeType |##xs#0_0_0_2_8@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1)))) (and (and (and ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@1) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) (and (= |##ys#0_0_0_2_3@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) ($IsAlloc DatatypeTypeType |##ys#0_0_0_2_3@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1))) (and (and (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)) (= |##ys#0_0_0_2_2@0| (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_0_2_2@0| (Tclass._module.List _module._default.Associativity$T) $Heap@1) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@1 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))))))) (and (and (and (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |ys#0_0_0@0| |g#0|) (and (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T |xs#0_0@0| |f#0@@9|) (|_module.__default.Bind#canCall| _module._default.Associativity$T _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|))) (|_module.__default.append#canCall| _module._default.Associativity$T ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@1 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |xs#0_0@0| |f#0@@9|) |g#0|)))) (= (ControlFlow 0 5) (- 0 4))))) (|_module.List#Equal| (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@1 |g#0| |y#0_0_0@0|)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| |f#0@@9|)) |g#0|)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@1 |g#0| |y#0_0_0@0|)) (_module.__default.append _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |ys#0_0_0@0| |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS ($LS $LZ)) |xs#0_0@0| |f#0@@9|) |g#0|))))))))
(let ((anon49_Then_correct true))
(let ((anon48_Then_correct  (=> (= ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |x#0_0@0|)) (|#_module.List.Cons| |_mcc#2#0_0_0@0| |_mcc#3#0_0_0@0|)) (=> (and ($IsBox |_mcc#2#0_0_0@0| _module._default.Associativity$T) ($Is DatatypeTypeType |_mcc#3#0_0_0@0| (Tclass._module.List _module._default.Associativity$T))) (=> (and (and (and (and ($Is DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T)) ($IsAlloc DatatypeTypeType |ys#0_0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (= |let#0_0_0#0#0| |_mcc#3#0_0_0@0|)) (and ($Is DatatypeTypeType |let#0_0_0#0#0| (Tclass._module.List _module._default.Associativity$T)) (= |ys#0_0_0@0| |let#0_0_0#0#0|))) (and (and (and ($IsBox |y#0_0_0@0| _module._default.Associativity$T) ($IsAllocBox |y#0_0_0@0| _module._default.Associativity$T $Heap@0)) (= |let#0_0_1#0#0| |_mcc#2#0_0_0@0|)) (and ($IsBox |let#0_0_1#0#0| _module._default.Associativity$T) (= |y#0_0_0@0| |let#0_0_1#0#0|)))) (and (and (and (and (=> (= (ControlFlow 0 18) 3) anon49_Then_correct) (=> (= (ControlFlow 0 18) 5) anon50_Then_correct)) (=> (= (ControlFlow 0 18) 7) anon51_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon52_Then_correct)) (=> (= (ControlFlow 0 18) 10) anon52_Else_correct)))))))
(let ((anon48_Else_correct true))
(let ((anon39_Else_correct  (=> (or (not (= ($Unbox DatatypeTypeType (Apply1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) $Heap@0 |f#0@@9| |x#0_0@0|)) |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 19) 18) anon48_Then_correct) (=> (= (ControlFlow 0 19) 2) anon48_Else_correct)))))
(let ((anon38_Then_correct  (=> (= |m#0| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($IsBox |_mcc#0#0_0@0| _module._default.Associativity$T) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List _module._default.Associativity$T))) (=> (and (and (and (and ($Is DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T)) ($IsAlloc DatatypeTypeType |xs#0_0@0| (Tclass._module.List _module._default.Associativity$T) $Heap@0)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List _module._default.Associativity$T)) (= |xs#0_0@0| |let#0_0#0#0|))) (and (and (and ($IsBox |x#0_0@0| _module._default.Associativity$T) ($IsAllocBox |x#0_0@0| _module._default.Associativity$T $Heap@0)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($IsBox |let#0_1#0#0| _module._default.Associativity$T) (= |x#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 40) 39) anon39_Then_correct) (=> (= (ControlFlow 0 40) 19) anon39_Else_correct)))))))
(let ((anon38_Else_correct true))
(let ((anon35_Else_correct  (=> (or (not (= |m#0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 41) 40) anon38_Then_correct) (=> (= (ControlFlow 0 41) 1) anon38_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (|$IsA#_module.List| |m#0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@4 $Heap@0) (forall ((|$ih#m0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#m0#0| (Tclass._module.List _module._default.Associativity$T)) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#m0#0|) (DtRank |m#0|))) (|_module.List#Equal| (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |$ih#m0#0| |f#0@@9|) |g#0|) (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |$ih#m0#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#11| _module._default.Associativity$T _module._default.Associativity$T _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T) |f#0@@9| |g#0| (|lambda#8| _module._default.Associativity$T) (|lambda#10| (SetRef_to_SetBox (|lambda#9| false)))) ($LS $LZ))))))
 :qid |MonadicLawsdfy.59:24|
 :skolemid |565|
 :pattern ( (_module.__default.Bind _module._default.Associativity$T _module._default.Associativity$T ($LS $LZ) |$ih#m0#0| |f#0@@9|))
)))) (and (=> (= (ControlFlow 0 49) 48) anon35_Then_correct) (=> (= (ControlFlow 0 49) 41) anon35_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (and (and ($Is DatatypeTypeType |m#0| (Tclass._module.List _module._default.Associativity$T)) ($IsAlloc DatatypeTypeType |m#0| (Tclass._module.List _module._default.Associativity$T) $Heap@@4)) (|$IsA#_module.List| |m#0|)) (and ($Is HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T))) ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@@4))) (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T))) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 _module._default.Associativity$T (Tclass._module.List _module._default.Associativity$T)) $Heap@@4)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 50) 49)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
