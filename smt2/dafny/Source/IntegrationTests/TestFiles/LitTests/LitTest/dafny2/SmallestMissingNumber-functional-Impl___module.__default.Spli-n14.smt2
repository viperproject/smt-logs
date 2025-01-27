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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun _module.__default.NoDuplicates (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Length (T@U T@U T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.Elements (T@U T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.__default.Elements#canCall| (T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#14| (T@U T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |_module.__default.NoDuplicates#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.__default.Split (T@U Bool T@U Int) T@U)
(declare-fun |_module.__default.Split#canCall| (T@U Int) Bool)
(declare-fun reveal__module._default.Split () Bool)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |lambda#15| (T@U T@U Int) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((_module._default.NoDuplicates$_T0 T@U) ($ly T@U) (|xs#0| T@U) ) (! (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0 ($LS $ly) |xs#0|) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0 $ly |xs#0|))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0 ($LS $ly) |xs#0|))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple2| d) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0 (Lit DatatypeTypeType |xs#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.Length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(|_module.__default.Length#canCall| _module._default.Length$_T0 |tail#3|))) (= (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |xs#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(LitInt (+ 1 (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@0) |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |592|
 :pattern ( (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |xs#0@@0|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((_module._default.Length$_T0@@0 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@1) |xs#0@@1|) (_module.__default.Length _module._default.Length$_T0@@0 $ly@@1 |xs#0@@1|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@1) |xs#0@@1|))
)))
(assert (forall ((_module._default.Elements$_T0 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (! (= (_module.__default.Elements _module._default.Elements$_T0 ($LS $ly@@2) |xs#0@@2|) (_module.__default.Elements _module._default.Elements$_T0 $ly@@2 |xs#0@@2|))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0 ($LS $ly@@2) |xs#0@@2|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|_System.Tuple2#Equal| a@@5 b@@2)  (and (= (_System.Tuple2._0 a@@5) (_System.Tuple2._0 b@@2)) (= (_System.Tuple2._1 a@@5) (_System.Tuple2._1 b@@2))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|_System.Tuple2#Equal| a@@5 b@@2))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1)  (and (|Set#IsMember| a@@7 o@@1) (not (|Set#IsMember| b@@4 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1))
)))
(assert (forall ((_module.List$X T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X) $h@@0))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X) $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((_module.List$X@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@0 T@U) ($ly@@3 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@0 |xs#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.Elements$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@3|)) (let ((|tail#1| (_module.List.tail |xs#0@@3|)))
(|_module.__default.Elements#canCall| _module._default.Elements$_T0@@0 |tail#1|))) (= (_module.__default.Elements _module._default.Elements$_T0@@0 ($LS $ly@@3) |xs#0@@3|) (ite (_module.List.Nil_q |xs#0@@3|) |Set#Empty| (let ((|tail#0| (_module.List.tail |xs#0@@3|)))
(let ((|x#0@@0| (_module.List.head |xs#0@@3|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#0@@0|) (_module.__default.Elements _module._default.Elements$_T0@@0 $ly@@3 |tail#0|))))))))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@0 ($LS $ly@@3) |xs#0@@3|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|_System.Tuple2#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|_System.Tuple2#Equal| a@@8 b@@5))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| Int) (|$y#8| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#8|))  (and ($IsBox |$y#8| |l#0|) (and (|Set#IsMember| |l#1| |$y#8|) (< (U_2_int ($Unbox intType |$y#8|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |779|
 :pattern ( (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#8|))
)))
(assert (forall ((_module.List$X@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$X@@1))  (and ($IsBox |a#6#0#0| _module.List$X@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$X@@1))))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$X@@1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NoDuplicates$_T0@@0 T@U) ($ly@@4 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@0 |xs#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.NoDuplicates$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@4|)) (let ((|tail#1@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#1| (_module.List.head |xs#0@@4|)))
 (and (|_module.__default.Elements#canCall| _module._default.NoDuplicates$_T0@@0 |tail#1@@0|) (=> (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@0 ($LS $LZ) |tail#1@@0|) |x#1|)) (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@0 |tail#1@@0|)))))) (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 ($LS $ly@@4) |xs#0@@4|) (ite (_module.List.Nil_q |xs#0@@4|) true (let ((|tail#0@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#0@@1| (_module.List.head |xs#0@@4|)))
 (and (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@0 ($LS $LZ) |tail#0@@0|) |x#0@@1|)) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 $ly@@4 |tail#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 ($LS $ly@@4) |xs#0@@4|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@2)) (not (|Set#IsMember| b@@6 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@2))
 :pattern ( (|Set#IsMember| b@@6 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@1 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 (Lit DatatypeTypeType |xs#0@@5|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.Elements$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 |tail#3@@0|))) (= (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |xs#0@@5|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)) |Set#Empty| (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@5|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#2|) (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) |tail#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |659|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |xs#0@@5|)))
))))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Cons_q d@@5) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@5 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |762|
)))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (_module.List.Cons_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.List.Nil_q d@@6) (= d@@6 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (_module.List.Nil_q d@@6))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@1 T@U) ($ly@@6 T@U) (|xs#0@@6| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |xs#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.Length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@6|)) (let ((|tail#1@@1| (_module.List.tail |xs#0@@6|)))
(|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |tail#1@@1|))) (= (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@6) |xs#0@@6|) (ite (_module.List.Nil_q |xs#0@@6|) 0 (let ((|tail#0@@1| (_module.List.tail |xs#0@@6|)))
(+ 1 (_module.__default.Length _module._default.Length$_T0@@1 $ly@@6 |tail#0@@1|)))))))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@6) |xs#0@@6|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.List$X@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$X@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$X@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$X@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($reveal Bool) (|xs#0@@7| T@U) (|b#0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@7| |b#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0|)))) (and (let ((|r#0| (_module.__default.Split $ly@@7 reveal__module._default.Split |xs#0@@7| |b#0|)))
(= (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@7|) (+ (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0|))) (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0|)))))) ($Is DatatypeTypeType (_module.__default.Split $ly@@7 $reveal |xs#0@@7| |b#0|) (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |638|
 :pattern ( (_module.__default.Split $ly@@7 $reveal |xs#0@@7| |b#0|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@3)  (or (|Set#IsMember| a@@10 o@@3) (|Set#IsMember| b@@7 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@3))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|xs#0@@8| T@U) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@8|) (LitInt |b#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@0|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@8|)))))) (let ((|tail#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@8|)))))
(|_module.__default.Split#canCall| |tail#3@@1| (LitInt |b#0@@0|)))) (= (_module.__default.Split ($LS $ly@@8) true (Lit DatatypeTypeType |xs#0@@8|) (LitInt |b#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@8|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@8|)))))
(let ((|x#2@@0| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |xs#0@@8|)))))))
(let ((|R#2| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $ly@@8) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(let ((|L#2| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $ly@@8) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(ite (< |x#2@@0| |b#0@@0|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |L#2|)) ($Box DatatypeTypeType |R#2|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#2|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |R#2|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :weight 3
 :skolemid |641|
 :pattern ( (_module.__default.Split ($LS $ly@@8) true (Lit DatatypeTypeType |xs#0@@8|) (LitInt |b#0@@0|)))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.List| d@@7) (or (_module.List.Nil_q d@@7) (_module.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (|$IsA#_module.List| d@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|xs#0@@9| T@U) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@9| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@1|)))) (and (=> (not (_module.List.Nil_q |xs#0@@9|)) (let ((|tail#1@@2| (_module.List.tail |xs#0@@9|)))
(|_module.__default.Split#canCall| |tail#1@@2| |b#0@@1|))) (= (_module.__default.Split ($LS $ly@@9) true |xs#0@@9| |b#0@@1|) (ite (_module.List.Nil_q |xs#0@@9|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#0@@2| (_module.List.tail |xs#0@@9|)))
(let ((|x#0@@3| (U_2_int ($Unbox intType (_module.List.head |xs#0@@9|)))))
(let ((|R#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split $ly@@9 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(let ((|L#0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split $ly@@9 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(ite (< |x#0@@3| |b#0@@1|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@3|)) |L#0|)) ($Box DatatypeTypeType |R#0|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@3|)) |R#0|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |640|
 :pattern ( (_module.__default.Split ($LS $ly@@9) true |xs#0@@9| |b#0@@1|))
))))
(assert (forall ((_module.List$X@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@3)) (or (_module.List.Nil_q d@@8) (_module.List.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( (_module.List.Cons_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@3)))
 :pattern ( (_module.List.Nil_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@3)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |760|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |769|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |771|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Elements$_T0@@2 T@U) ($ly@@10 T@U) (|xs#0@@10| T@U) ) (!  (=> (and (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@2 |xs#0@@10|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.Elements$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@10| (Tclass._module.List _module._default.Elements$_T0@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@10 |xs#0@@10|) (TSet _module._default.Elements$_T0@@2) $Heap))
 :qid |SmallestMissingNumberfunctionaldfy.117:16|
 :skolemid |656|
 :pattern ( ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@10 |xs#0@@10|) (TSet _module._default.Elements$_T0@@2) $Heap))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((_module.List$X@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$X@@4)) _module.List$X@@4)
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (Tclass._module.List _module.List$X@@4))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |770|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |772|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@3 T@U) ($ly@@11 T@U) (|xs#0@@11| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@3 |xs#0@@11|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List _module._default.Elements$_T0@@3)))) ($Is SetType (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@11 |xs#0@@11|) (TSet _module._default.Elements$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@11 |xs#0@@11|))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall (($ly@@12 T@U) ($reveal@@0 Bool) (|xs#0@@12| T@U) (|b#0@@2| Int) ) (! (= (_module.__default.Split ($LS $ly@@12) $reveal@@0 |xs#0@@12| |b#0@@2|) (_module.__default.Split $ly@@12 $reveal@@0 |xs#0@@12| |b#0@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |636|
 :pattern ( (_module.__default.Split ($LS $ly@@12) $reveal@@0 |xs#0@@12| |b#0@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@9 T@U) (_module.List$X@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.List _module.List$X@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@9) _module.List$X@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAllocBox (_module.List.head d@@9) _module.List$X@@5 $h@@2))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |778|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| Int) (|$y#7| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#15| |l#0@@1| |l#1@@1| |l#2@@1|) |$y#7|))  (and ($IsBox |$y#7| |l#0@@1|) (and (|Set#IsMember| |l#1@@1| |$y#7|) (<= |l#2@@1| (U_2_int ($Unbox intType |$y#7|))))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |780|
 :pattern ( (MapType0Select BoxType boolType (|lambda#15| |l#0@@1| |l#1@@1| |l#2@@1|) |$y#7|))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (forall ((_module.List$X@@6 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.List _module.List$X@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.List _module.List$X@@6))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsBox bx@@6 (Tclass._module.List _module.List$X@@6)))
)))
(assert (forall ((d@@11 T@U) (_module.List$X@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.List _module.List$X@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@11) (Tclass._module.List _module.List$X@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@11) (Tclass._module.List _module.List$X@@7) $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@14 o@@4) (|Set#IsMember| b@@11 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@4))
 :pattern ( (|Set#IsMember| b@@11 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@12) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@12) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@13) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@13) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@13) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NoDuplicates$_T0@@1 T@U) ($ly@@13 T@U) (|xs#0@@13| T@U) ) (!  (=> (or (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 (Lit DatatypeTypeType |xs#0@@13|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.NoDuplicates$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@13|)))))) (let ((|tail#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@13|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@13|)))))
 (and (|_module.__default.Elements#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|) (=> (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#3@@2|) |x#3|)) (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|)))))) (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |xs#0@@13|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@13|)) true (let ((|tail#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@13|)))))
(let ((|x#2@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@13|)))))
 (and (not (|Set#IsMember| (Lit SetType (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#2@@2|)) |x#2@@1|)) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@13) |tail#2@@2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |666|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@13) (Lit DatatypeTypeType |xs#0@@13|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |768|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@2 T@U) ($ly@@14 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@2 |xs#0@@14|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List _module._default.Length$_T0@@2)))) (<= (LitInt 0) (_module.__default.Length _module._default.Length$_T0@@2 $ly@@14 |xs#0@@14|)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@2 $ly@@14 |xs#0@@14|))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((_module.List$X@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$X@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$X@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0@@15| () T@U)
(declare-fun |b#0@@3| () Int)
(declare-fun |x#0_0@0| () Int)
(declare-fun |split#0@0| () T@U)
(declare-fun |L#0_0@0| () T@U)
(declare-fun |R#0_0@0| () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |let#0_2#0#0| () T@U)
(declare-fun |##xs#1_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |split#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Split__Correct)
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
 (=> (= (ControlFlow 0 0) 26) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 10)) (let ((|r#0@@0| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@0|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@15|) |b#0@@3|))))) (=> (let ((|r#0@@1| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@1|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@15|) |b#0@@3|)))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (let ((|r#0@@2| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@2|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@15|) |b#0@@3|))))) (=> (let ((|r#0@@3| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@3|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@15|) |b#0@@3|)))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (let ((|r#0@@4| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@4|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@4|))) (=> (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@4|))) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (let ((|r#0@@5| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@5|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@5|))) (=> (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@5|))) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (let ((|r#0@@6| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@6|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@6|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@6|)))) (let ((|tail#8| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@6|)))))
(let ((|x#12| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@6|)))))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#8|) ($Box intType (int_2_U |x#12|))))))))))) (=> (let ((|r#0@@7| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@7|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@7|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@7|)))) (let ((|tail#8@@0| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@7|)))))
(let ((|x#12@@0| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@7|)))))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#8@@0|) ($Box intType (int_2_U |x#12@@0|)))))))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (let ((|r#0@@8| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@8|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@8|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@8|)))) (let ((|tail#8@@1| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@8|)))))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#8@@1|))))))) (=> (let ((|r#0@@9| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@9|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@9|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@9|)))) (let ((|tail#8@@2| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@9|)))))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#8@@2|)))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (let ((|r#0@@10| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@10|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@10|))) (=> (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@10|))) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (let ((|r#0@@11| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@11|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@11|))) (=> (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@11|))) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (let ((|r#0@@12| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@12|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@12|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@12|)))) (let ((|tail#10| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@12|)))))
(let ((|x#14| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@12|)))))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#10|) ($Box intType (int_2_U |x#14|))))))))))) (=> (let ((|r#0@@13| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@13|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@13|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@13|)))) (let ((|tail#10@@0| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@13|)))))
(let ((|x#14@@0| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@13|)))))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#10@@0|) ($Box intType (int_2_U |x#14@@0|)))))))))) (=> (= (ControlFlow 0 3) (- 0 2)) (let ((|r#0@@14| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))
 (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@14|))) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@14|))) (=> (not (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@14|)))) (let ((|tail#10@@1| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@14|)))))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#10@@1|)))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (and (<= |b#0@@3| |x#0_0@0|) (|$IsA#_System.Tuple2| |split#0@0|)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0_0@0|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0_0@0|)) |R#0_0@0|))))) (=> (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0_0@0|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0_0@0|)) |R#0_0@0|)))) (=> (= (ControlFlow 0 16) 3) GeneratedUnifiedExit_correct))))))
(let ((anon8_Then_correct  (=> (and (< |x#0_0@0| |b#0@@3|) (|$IsA#_System.Tuple2| |split#0@0|)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0_0@0|)) |L#0_0@0|)) ($Box DatatypeTypeType |R#0_0@0|)))) (=> (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0_0@0|)) |L#0_0@0|)) ($Box DatatypeTypeType |R#0_0@0|))) (=> (= (ControlFlow 0 14) 3) GeneratedUnifiedExit_correct))))))
(let ((anon7_Then_correct  (=> (= |xs#0@@15| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#0#0_0@0|)) |_mcc#1#0_0@0|)) (=> (and (<= (LitInt 0) |_mcc#0#0_0@0|) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List Tclass._System.nat))) (=> (and (and (and (and ($Is DatatypeTypeType |tail#0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |tail#0_0@0| (Tclass._module.List Tclass._System.nat) $Heap@1)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List Tclass._System.nat)) (= |tail#0_0@0| |let#0_0#0#0|))) (and (and (<= (LitInt 0) |x#0_0@0|) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($Is intType (int_2_U |let#0_1#0#0|) Tclass._System.nat) (= |x#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (or (<= 0 |b#0@@3|) (< (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|))) (= |b#0@@3| |b#0@@3|))) (=> (or (or (<= 0 |b#0@@3|) (< (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|))) (= |b#0@@3| |b#0@@3|)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (or (< (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|)) (and (= (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|)) (< |b#0@@3| |b#0@@3|)))) (=> (or (< (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|)) (and (= (DtRank |tail#0_0@0|) (DtRank |xs#0@@15|)) (< |b#0@@3| |b#0@@3|))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (_module.List.Nil_q |tail#0_0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (_module.List.Nil_q |tail#0_0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@3| (_module.List.tail |tail#0_0@0|)))
(let ((|x#2@@2| (U_2_int ($Unbox intType (_module.List.head |tail#0_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@3|) ($Box intType (int_2_U |x#2@@2|)))))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@4| (_module.List.tail |tail#0_0@0|)))
(let ((|x#2@@3| (U_2_int ($Unbox intType (_module.List.head |tail#0_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@4|) ($Box intType (int_2_U |x#2@@3|))))))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@5| (_module.List.tail |tail#0_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@5|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |tail#0_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#0_0@0|) (=> (not (_module.List.Nil_q |tail#0_0@0|)) (let ((|tail#0@@6| (_module.List.tail |tail#0_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@6|))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.__default.Split#canCall| |tail#0_0@0| |b#0@@3|) (let ((|r#0@@15| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)))
 (and (and (and (_System.Tuple2.___hMake2_q |r#0@@15|) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@15|)))) (|_module.__default.Elements#canCall| Tclass._System.nat |tail#0_0@0|)) (=> (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@15|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#0_0@0|) |b#0@@3|))) (and (and (and (_System.Tuple2.___hMake2_q |r#0@@15|) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@15|)))) (|_module.__default.Elements#canCall| Tclass._System.nat |tail#0_0@0|)) (=> (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@15|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#0_0@0|) |b#0@@3|))) (and (and (_System.Tuple2.___hMake2_q |r#0@@15|) (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@15|)))) (=> (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@15|))) (and (_System.Tuple2.___hMake2_q |r#0@@15|) (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@15|)))))))))))) (let ((|r#0@@16| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@16|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0_0@0|) |b#0@@3|))))) (and (let ((|r#0@@17| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@17|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0_0@0|) |b#0@@3|)))) (let ((|r#0@@18| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)))
 (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@18|))) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@18|))) (ite (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@18|))) true (let ((|tail#3@@3| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@18|)))))
(let ((|x#7| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@18|)))))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#3@@3|) ($Box intType (int_2_U |x#7|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#3@@3|)))))))))) (=> (and (and (and (and (let ((|r#0@@19| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)))
 (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@19|))) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@19|))) (ite (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@19|))) true (let ((|tail#5| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@19|)))))
(let ((|x#9| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@19|)))))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#5|) ($Box intType (int_2_U |x#9|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#5|)))))))) (= $Heap@1 $Heap@2)) (and ($Is DatatypeTypeType |L#0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |L#0_0@0| (Tclass._module.List Tclass._System.nat) $Heap@2))) (and (and ($Is DatatypeTypeType |R#0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |R#0_0@0| (Tclass._module.List Tclass._System.nat) $Heap@2)) (and ($IsAlloc DatatypeTypeType |tail#0_0@0| (Tclass._module.List Tclass._System.nat) $Heap@2) ($IsAlloc intType (int_2_U |b#0@@3|) Tclass._System.nat $Heap@2)))) (and (and (and (|_module.__default.Split#canCall| |tail#0_0@0| |b#0@@3|) (_System.Tuple2.___hMake2_q (_module.__default.Split ($LS $LZ) reveal__module._default.Split |tail#0_0@0| |b#0@@3|))) (and (= |let#0_2#0#0| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |tail#0_0@0| |b#0@@3|)) (|_module.__default.Split#canCall| |tail#0_0@0| |b#0@@3|))) (and (and (|_module.__default.Split#canCall| |tail#0_0@0| |b#0@@3|) ($Is DatatypeTypeType |let#0_2#0#0| (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))) (and (_System.Tuple2.___hMake2_q |let#0_2#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0_0@0|) ($Box DatatypeTypeType |R#0_0@0|)) |let#0_2#0#0|))))) (and (=> (= (ControlFlow 0 18) 14) anon8_Then_correct) (=> (= (ControlFlow 0 18) 16) anon8_Else_correct))))))))))))))))))))
(let ((anon6_Then_correct  (=> (and (= |xs#0@@15| |#_module.List.Nil|) (|$IsA#_System.Tuple2| |split#0@0|)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))))) (=> (|_System.Tuple2#Equal| |split#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)))) (=> (and (_System.Tuple2.___hMake2_q |split#0@0|) (= |##xs#1_0@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 |split#0@0|)))) (=> (and (and ($IsAlloc DatatypeTypeType |##xs#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@1) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |split#0@0|)))) (and (_System.Tuple2.___hMake2_q |split#0@0|) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |split#0@0|))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._0 |split#0@0|))) |Set#Empty|)) (=> (and (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |split#0@0|))) |Set#Empty|) (= (ControlFlow 0 11) 3)) GeneratedUnifiedExit_correct)))))))))
(let ((anon7_Else_correct true))
(let ((anon6_Else_correct  (=> (or (not (= |xs#0@@15| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 24) 18) anon7_Then_correct) (=> (= (ControlFlow 0 24) 1) anon7_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.List| |xs#0@@15|)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (= $Heap@@0 $Heap@0) (forall ((|$ih#xs0#0| T@U) (|$ih#b0#0| Int) ) (!  (=> (and (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |$ih#b0#0|)) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |$ih#xs0#0|)) (or (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@15|)) (and (= (DtRank |$ih#xs0#0|) (DtRank |xs#0@@15|)) (and (<= 0 |$ih#b0#0|) (< |$ih#b0#0| |b#0@@3|))))) (let ((|r#1| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |$ih#xs0#0| |$ih#b0#0|)))
 (and (and (and (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#1|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|) |$ih#b0#0|))) (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#1|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|) |$ih#b0#0|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#1|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#1|))))))
 :qid |SmallestMissingNumberfunctionaldfy.190:21|
 :skolemid |695|
 :pattern ( (_module.__default.Split ($LS $LZ) reveal__module._default.Split |$ih#xs0#0| |$ih#b0#0|))
))) (and ($IsAlloc DatatypeTypeType |xs#0@@15| (Tclass._module.List Tclass._System.nat) $Heap@0) ($IsAlloc intType (int_2_U |b#0@@3|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.Split#canCall| |xs#0@@15| |b#0@@3|) (_System.Tuple2.___hMake2_q (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| |b#0@@3|))) (and (|_module.__default.Split#canCall| |xs#0@@15| |b#0@@3|) (= |split#0@0| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| |b#0@@3|)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= $Heap@0 $Heap@1) reveal__module._default.Split)))) (and (=> (= (ControlFlow 0 25) 11) anon6_Then_correct) (=> (= (ControlFlow 0 25) 24) anon6_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |xs#0@@15| (Tclass._module.List Tclass._System.nat) $Heap@@0)) (|$IsA#_module.List| |xs#0@@15|)) (<= (LitInt 0) |b#0@@3|)) (=> (and (and (and (and ($Is DatatypeTypeType |split#0| (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat))) ($IsAlloc DatatypeTypeType |split#0| (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)) $Heap@@0)) true) (= 3 $FunctionContextHeight)) (and (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@15|) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@15|) (ite (_module.List.Nil_q |xs#0@@15|) true (let ((|tail#7| (_module.List.tail |xs#0@@15|)))
(let ((|x#11| (U_2_int ($Unbox intType (_module.List.head |xs#0@@15|)))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#7|) ($Box intType (int_2_U |x#11|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#7|))))))) (= (ControlFlow 0 26) 25))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
