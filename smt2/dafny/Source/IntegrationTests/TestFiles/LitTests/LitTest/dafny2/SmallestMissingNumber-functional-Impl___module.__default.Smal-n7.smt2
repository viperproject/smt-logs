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
(declare-fun _module.__default.NoDuplicates (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.__default.Elements#canCall| (T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |_module.__default.NoDuplicates#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.__default.SMN (T@U T@U Int Int) Int)
(declare-fun |_module.__default.SMN#canCall| (T@U Int Int) Bool)
(declare-fun |_module.__default.Split#canCall| (T@U Int) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.__default.Split (T@U Bool T@U Int) T@U)
(declare-fun reveal__module._default.Split () Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun _module.__default.SmallestMissingNumber (T@U) Int)
(declare-fun |_module.__default.SmallestMissingNumber#canCall| (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List)
)
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
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
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
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
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@2)) (not (|Set#IsMember| b@@4 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@1 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 (Lit DatatypeTypeType |xs#0@@5|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.Elements$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 |tail#3@@0|))) (= (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |xs#0@@5|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)) |Set#Empty| (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@5|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#2|) (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) |tail#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |659|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@5) (Lit DatatypeTypeType |xs#0@@5|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |SmallestMissingNumberfunctionaldfy.24:31|
 :skolemid |762|
)))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|xs#0@@6| T@U) (|n#0| Int) (|len#0| Int) ) (!  (=> (or (|_module.__default.SMN#canCall| (Lit DatatypeTypeType |xs#0@@6|) (LitInt |n#0|) (LitInt |len#0|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0|)) (<= (LitInt 0) |len#0|)) (= (LitInt |len#0|) (LitInt (_module.__default.Length Tclass._System.nat ($LS $LZ) (Lit DatatypeTypeType |xs#0@@6|))))))) (and (=> (<= (LitInt 2) (LitInt |len#0|)) (and (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@6|) (LitInt (+ |n#0| (Div |len#0| (LitInt 2))))) (let ((|R#2| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@6|) (LitInt (+ |n#0| (Div |len#0| (LitInt 2)))))))))
(let ((|L#2| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@6|) (LitInt (+ |n#0| (Div |len#0| (LitInt 2)))))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#2|) (let ((|llen#2| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2|)))
 (and (=> (< |llen#2| (Div |len#0| (LitInt 2))) (|_module.__default.SMN#canCall| |L#2| (LitInt |n#0|) |llen#2|)) (=> (<= (Div |len#0| (LitInt 2)) |llen#2|) (|_module.__default.SMN#canCall| |R#2| (+ |n#0| |llen#2|) (- |len#0| |llen#2|)))))))))) (= (_module.__default.SMN ($LS $ly@@6) (Lit DatatypeTypeType |xs#0@@6|) (LitInt |n#0|) (LitInt |len#0|)) (ite (<= (LitInt 2) (LitInt |len#0|)) (let ((|R#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@6|) (LitInt (+ |n#0| (Div |len#0| (LitInt 2)))))))))
(let ((|L#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@6|) (LitInt (+ |n#0| (Div |len#0| (LitInt 2)))))))))
(let ((|llen#2@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2@@0|)))
(ite (< |llen#2@@0| (Div |len#0| (LitInt 2))) (_module.__default.SMN ($LS $ly@@6) |L#2@@0| (LitInt |n#0|) |llen#2@@0|) (_module.__default.SMN ($LS $ly@@6) |R#2@@0| (+ |n#0| |llen#2@@0|) (- |len#0| |llen#2@@0|)))))) (ite (_module.List.Cons_q (Lit DatatypeTypeType |xs#0@@6|)) (ite (= (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |xs#0@@6|))))) (LitInt |n#0|)) (+ |n#0| 1) |n#0|) |n#0|)))))
 :qid |SmallestMissingNumberfunctionaldfy.38:10|
 :weight 3
 :skolemid |606|
 :pattern ( (_module.__default.SMN ($LS $ly@@6) (Lit DatatypeTypeType |xs#0@@6|) (LitInt |n#0|) (LitInt |len#0|)))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@1 T@U) ($ly@@7 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |xs#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.Length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@7|)) (let ((|tail#1@@1| (_module.List.tail |xs#0@@7|)))
(|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |tail#1@@1|))) (= (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@7) |xs#0@@7|) (ite (_module.List.Nil_q |xs#0@@7|) 0 (let ((|tail#0@@1| (_module.List.tail |xs#0@@7|)))
(+ 1 (_module.__default.Length _module._default.Length$_T0@@1 $ly@@7 |tail#0@@1|)))))))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@7) |xs#0@@7|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) ($reveal Bool) (|xs#0@@8| T@U) (|b#0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@8| |b#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0|)))) (and (let ((|r#0| (_module.__default.Split $ly@@8 reveal__module._default.Split |xs#0@@8| |b#0|)))
(= (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@8|) (+ (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0|))) (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0|)))))) ($Is DatatypeTypeType (_module.__default.Split $ly@@8 $reveal |xs#0@@8| |b#0|) (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |638|
 :pattern ( (_module.__default.Split $ly@@8 $reveal |xs#0@@8| |b#0|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3)  (or (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|xs#0@@9| T@U) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@9|) (LitInt |b#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@0|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)))))) (let ((|tail#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(|_module.__default.Split#canCall| |tail#3@@1| (LitInt |b#0@@0|)))) (= (_module.__default.Split ($LS $ly@@9) true (Lit DatatypeTypeType |xs#0@@9|) (LitInt |b#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@9|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@9|)))))
(let ((|x#2@@0| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |xs#0@@9|)))))))
(let ((|R#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $ly@@9) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(let ((|L#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $ly@@9) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(ite (< |x#2@@0| |b#0@@0|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |L#2@@1|)) ($Box DatatypeTypeType |R#2@@1|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#2@@1|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |R#2@@1|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :weight 3
 :skolemid |641|
 :pattern ( (_module.__default.Split ($LS $ly@@9) true (Lit DatatypeTypeType |xs#0@@9|) (LitInt |b#0@@0|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.List| d@@6) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (|$IsA#_module.List| d@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|xs#0@@10| T@U) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@10| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@1|)))) (and (=> (not (_module.List.Nil_q |xs#0@@10|)) (let ((|tail#1@@2| (_module.List.tail |xs#0@@10|)))
(|_module.__default.Split#canCall| |tail#1@@2| |b#0@@1|))) (= (_module.__default.Split ($LS $ly@@10) true |xs#0@@10| |b#0@@1|) (ite (_module.List.Nil_q |xs#0@@10|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#0@@2| (_module.List.tail |xs#0@@10|)))
(let ((|x#0@@3| (U_2_int ($Unbox intType (_module.List.head |xs#0@@10|)))))
(let ((|R#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split $ly@@10 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(let ((|L#0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split $ly@@10 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(ite (< |x#0@@3| |b#0@@1|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@3|)) |L#0|)) ($Box DatatypeTypeType |R#0|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@3|)) |R#0|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |640|
 :pattern ( (_module.__default.Split ($LS $ly@@10) true |xs#0@@10| |b#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|xs#0@@11| T@U) (|n#0@@0| Int) (|len#0@@0| Int) ) (!  (=> (or (|_module.__default.SMN#canCall| |xs#0@@11| |n#0@@0| |len#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@0|)) (<= (LitInt 0) |len#0@@0|)) (= |len#0@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@11|))))) (<= (LitInt 0) (_module.__default.SMN $ly@@11 |xs#0@@11| |n#0@@0| |len#0@@0|)))
 :qid |SmallestMissingNumberfunctionaldfy.38:10|
 :skolemid |602|
 :pattern ( (_module.__default.SMN $ly@@11 |xs#0@@11| |n#0@@0| |len#0@@0|))
))))
(assert (forall ((_module.List$X@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)) (or (_module.List.Nil_q d@@7) (_module.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( (_module.List.Cons_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
 :pattern ( (_module.List.Nil_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
)))
(assert (forall ((x@@8 Int) (y@@3 Int) ) (! (= (Div x@@8 y@@3) (div x@@8 y@@3))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y@@3))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|xs#0@@12| T@U) ) (!  (=> (or (|_module.__default.SmallestMissingNumber#canCall| |xs#0@@12|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._System.nat)))) (<= (LitInt 0) (_module.__default.SmallestMissingNumber |xs#0@@12|)))
 :qid |SmallestMissingNumberfunctionaldfy.33:32|
 :skolemid |594|
 :pattern ( (_module.__default.SmallestMissingNumber |xs#0@@12|))
))))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Elements$_T0@@2 T@U) ($ly@@12 T@U) (|xs#0@@13| T@U) ) (!  (=> (and (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@2 |xs#0@@13|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.Elements$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.Elements$_T0@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@12 |xs#0@@13|) (TSet _module._default.Elements$_T0@@2) $Heap))
 :qid |SmallestMissingNumberfunctionaldfy.117:16|
 :skolemid |656|
 :pattern ( ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@12 |xs#0@@13|) (TSet _module._default.Elements$_T0@@2) $Heap))
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
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@3 T@U) ($ly@@13 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@3 |xs#0@@14|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List _module._default.Elements$_T0@@3)))) ($Is SetType (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@13 |xs#0@@14|) (TSet _module._default.Elements$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@13 |xs#0@@14|))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Union| a@@10 (|Set#Union| a@@10 b@@7)) (|Set#Union| a@@10 b@@7))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@10 (|Set#Union| a@@10 b@@7)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@14 T@U) (|xs#0@@15| T@U) (|n#0@@1| Int) (|len#0@@1| Int) ) (!  (=> (or (|_module.__default.SMN#canCall| |xs#0@@15| |n#0@@1| (LitInt |len#0@@1|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@1|)) (<= (LitInt 0) |len#0@@1|)) (= (LitInt |len#0@@1|) (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@15|))))) (and (=> (<= (LitInt 2) (LitInt |len#0@@1|)) (and (|_module.__default.Split#canCall| |xs#0@@15| (+ |n#0@@1| (Div |len#0@@1| (LitInt 2)))) (let ((|R#1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| (+ |n#0@@1| (Div |len#0@@1| (LitInt 2))))))))
(let ((|L#1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| (+ |n#0@@1| (Div |len#0@@1| (LitInt 2))))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#1|) (let ((|llen#1| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1|)))
 (and (=> (< |llen#1| (Div |len#0@@1| (LitInt 2))) (|_module.__default.SMN#canCall| |L#1| |n#0@@1| |llen#1|)) (=> (<= (Div |len#0@@1| (LitInt 2)) |llen#1|) (|_module.__default.SMN#canCall| |R#1| (+ |n#0@@1| |llen#1|) (- |len#0@@1| |llen#1|)))))))))) (= (_module.__default.SMN ($LS $ly@@14) |xs#0@@15| |n#0@@1| (LitInt |len#0@@1|)) (ite (<= (LitInt 2) (LitInt |len#0@@1|)) (let ((|R#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| (+ |n#0@@1| (Div |len#0@@1| (LitInt 2))))))))
(let ((|L#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@15| (+ |n#0@@1| (Div |len#0@@1| (LitInt 2))))))))
(let ((|llen#1@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1@@0|)))
(ite (< |llen#1@@0| (Div |len#0@@1| (LitInt 2))) (_module.__default.SMN ($LS $ly@@14) |L#1@@0| |n#0@@1| |llen#1@@0|) (_module.__default.SMN ($LS $ly@@14) |R#1@@0| (+ |n#0@@1| |llen#1@@0|) (- |len#0@@1| |llen#1@@0|)))))) (ite (_module.List.Cons_q |xs#0@@15|) (ite (= (U_2_int ($Unbox intType (_module.List.head |xs#0@@15|))) |n#0@@1|) (+ |n#0@@1| 1) |n#0@@1|) |n#0@@1|)))))
 :qid |SmallestMissingNumberfunctionaldfy.38:10|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.SMN ($LS $ly@@14) |xs#0@@15| |n#0@@1| (LitInt |len#0@@1|)))
))))
(assert (forall (($ly@@15 T@U) (|xs#0@@16| T@U) (|n#0@@2| Int) (|len#0@@2| Int) ) (! (= (_module.__default.SMN ($LS $ly@@15) |xs#0@@16| |n#0@@2| |len#0@@2|) (_module.__default.SMN $ly@@15 |xs#0@@16| |n#0@@2| |len#0@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.38:10|
 :skolemid |600|
 :pattern ( (_module.__default.SMN ($LS $ly@@15) |xs#0@@16| |n#0@@2| |len#0@@2|))
)))
(assert (forall (($ly@@16 T@U) ($reveal@@0 Bool) (|xs#0@@17| T@U) (|b#0@@2| Int) ) (! (= (_module.__default.Split ($LS $ly@@16) $reveal@@0 |xs#0@@17| |b#0@@2|) (_module.__default.Split $ly@@16 $reveal@@0 |xs#0@@17| |b#0@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |636|
 :pattern ( (_module.__default.Split ($LS $ly@@16) $reveal@@0 |xs#0@@17| |b#0@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@8 T@U) (_module.List$X@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |778|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|xs#0@@18| T@U) ) (!  (=> (or (|_module.__default.SmallestMissingNumber#canCall| |xs#0@@18|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@18| (Tclass._module.List Tclass._System.nat)))) (and (and (|_module.__default.Length#canCall| Tclass._System.nat |xs#0@@18|) (|_module.__default.SMN#canCall| |xs#0@@18| (LitInt 0) (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@18|))) (= (_module.__default.SmallestMissingNumber |xs#0@@18|) (_module.__default.SMN ($LS $LZ) |xs#0@@18| (LitInt 0) (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@18|)))))
 :qid |SmallestMissingNumberfunctionaldfy.33:32|
 :skolemid |596|
 :pattern ( (_module.__default.SmallestMissingNumber |xs#0@@18|))
))))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((_module.List$X@@6 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.List _module.List$X@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.List _module.List$X@@6))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsBox bx@@4 (Tclass._module.List _module.List$X@@6)))
)))
(assert (forall ((d@@10 T@U) (_module.List$X@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$X@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|xs#0@@19| T@U) ) (!  (=> (or (|_module.__default.SmallestMissingNumber#canCall| (Lit DatatypeTypeType |xs#0@@19|)) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@19| (Tclass._module.List Tclass._System.nat)))) (and (and (|_module.__default.Length#canCall| Tclass._System.nat (Lit DatatypeTypeType |xs#0@@19|)) (|_module.__default.SMN#canCall| (Lit DatatypeTypeType |xs#0@@19|) (LitInt 0) (LitInt (_module.__default.Length Tclass._System.nat ($LS $LZ) (Lit DatatypeTypeType |xs#0@@19|))))) (= (_module.__default.SmallestMissingNumber (Lit DatatypeTypeType |xs#0@@19|)) (LitInt (_module.__default.SMN ($LS $LZ) (Lit DatatypeTypeType |xs#0@@19|) (LitInt 0) (LitInt (_module.__default.Length Tclass._System.nat ($LS $LZ) (Lit DatatypeTypeType |xs#0@@19|))))))))
 :qid |SmallestMissingNumberfunctionaldfy.33:32|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.SmallestMissingNumber (Lit DatatypeTypeType |xs#0@@19|)))
))))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NoDuplicates$_T0@@1 T@U) ($ly@@17 T@U) (|xs#0@@20| T@U) ) (!  (=> (or (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 (Lit DatatypeTypeType |xs#0@@20|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@20| (Tclass._module.List _module._default.NoDuplicates$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@20|)))))) (let ((|tail#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@20|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@20|)))))
 (and (|_module.__default.Elements#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|) (=> (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#3@@2|) |x#3|)) (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|)))))) (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@17) (Lit DatatypeTypeType |xs#0@@20|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@20|)) true (let ((|tail#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@20|)))))
(let ((|x#2@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@20|)))))
 (and (not (|Set#IsMember| (Lit SetType (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#2@@2|)) |x#2@@1|)) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@17) |tail#2@@2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |666|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@17) (Lit DatatypeTypeType |xs#0@@20|)))
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
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@2 T@U) ($ly@@18 T@U) (|xs#0@@21| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@2 |xs#0@@21|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@21| (Tclass._module.List _module._default.Length$_T0@@2)))) (<= (LitInt 0) (_module.__default.Length _module._default.Length$_T0@@2 $ly@@18 |xs#0@@21|)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@2 $ly@@18 |xs#0@@21|))
))))
(assert (forall ((_module.List$X@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$X@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$X@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$X@@8) $h@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@19 T@U) (|xs#0@@22| T@U) (|n#0@@3| Int) (|len#0@@3| Int) ) (!  (=> (or (|_module.__default.SMN#canCall| |xs#0@@22| |n#0@@3| |len#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@22| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@3|)) (<= (LitInt 0) |len#0@@3|)) (= |len#0@@3| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@22|))))) (and (=> (<= (LitInt 2) |len#0@@3|) (and (|_module.__default.Split#canCall| |xs#0@@22| (+ |n#0@@3| (Div |len#0@@3| (LitInt 2)))) (let ((|R#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@22| (+ |n#0@@3| (Div |len#0@@3| (LitInt 2))))))))
(let ((|L#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@22| (+ |n#0@@3| (Div |len#0@@3| (LitInt 2))))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#0@@0|) (let ((|llen#0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0@@0|)))
 (and (=> (< |llen#0| (Div |len#0@@3| (LitInt 2))) (|_module.__default.SMN#canCall| |L#0@@0| |n#0@@3| |llen#0|)) (=> (<= (Div |len#0@@3| (LitInt 2)) |llen#0|) (|_module.__default.SMN#canCall| |R#0@@0| (+ |n#0@@3| |llen#0|) (- |len#0@@3| |llen#0|)))))))))) (= (_module.__default.SMN ($LS $ly@@19) |xs#0@@22| |n#0@@3| |len#0@@3|) (ite (<= (LitInt 2) |len#0@@3|) (let ((|R#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@22| (+ |n#0@@3| (Div |len#0@@3| (LitInt 2))))))))
(let ((|L#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@22| (+ |n#0@@3| (Div |len#0@@3| (LitInt 2))))))))
(let ((|llen#0@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0@@1|)))
(ite (< |llen#0@@0| (Div |len#0@@3| (LitInt 2))) (_module.__default.SMN $ly@@19 |L#0@@1| |n#0@@3| |llen#0@@0|) (_module.__default.SMN $ly@@19 |R#0@@1| (+ |n#0@@3| |llen#0@@0|) (- |len#0@@3| |llen#0@@0|)))))) (ite (_module.List.Cons_q |xs#0@@22|) (ite (= (U_2_int ($Unbox intType (_module.List.head |xs#0@@22|))) |n#0@@3|) (+ |n#0@@3| 1) |n#0@@3|) |n#0@@3|)))))
 :qid |SmallestMissingNumberfunctionaldfy.38:10|
 :skolemid |604|
 :pattern ( (_module.__default.SMN ($LS $ly@@19) |xs#0@@22| |n#0@@3| |len#0@@3|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |xs#0@@23| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |n##0@0| () Int)
(declare-fun |len##0@0| () Int)
(declare-fun $Heap@1 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.SmallestMissingNumber__Correct)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.List| |xs#0@@23|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#xs0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List Tclass._System.nat)) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |$ih#xs0#0|)) (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@23|))) (let ((|s#1| (_module.__default.SmallestMissingNumber |$ih#xs0#0|)))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|) ($Box intType (int_2_U |s#1|)))) (forall ((|x#6| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#6|)) (< (U_2_int |x#6|) |s#1|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|) ($Box intType |x#6|)))
 :qid |SmallestMissingNumberfunctionaldfy.112:12|
 :skolemid |650|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|) ($Box intType |x#6|)))
)))))
 :qid |SmallestMissingNumberfunctionaldfy.108:37|
 :skolemid |651|
 :pattern ( (_module.__default.Elements Tclass._System.nat ($LS $LZ) |$ih#xs0#0|))
 :pattern ( (_module.__default.SmallestMissingNumber |$ih#xs0#0|))
 :pattern ( (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |$ih#xs0#0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##0@0| (LitInt 0)) (=> (and (and ($IsAlloc DatatypeTypeType |xs#0@@23| (Tclass._module.List Tclass._System.nat) $Heap@0) (|_module.__default.Length#canCall| Tclass._System.nat |xs#0@@23|)) (and (|_module.__default.Length#canCall| Tclass._System.nat |xs#0@@23|) (= |len##0@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@23|)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (_module.List.Nil_q |xs#0@@23|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (_module.List.Nil_q |xs#0@@23|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (not (_module.List.Nil_q |xs#0@@23|)) (let ((|tail#0@@3| (_module.List.tail |xs#0@@23|)))
(let ((|x#4| (U_2_int ($Unbox intType (_module.List.head |xs#0@@23|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@3|) ($Box intType (int_2_U |x#4|)))))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (not (_module.List.Nil_q |xs#0@@23|)) (let ((|tail#0@@4| (_module.List.tail |xs#0@@23|)))
(let ((|x#4@@0| (U_2_int ($Unbox intType (_module.List.head |xs#0@@23|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@4|) ($Box intType (int_2_U |x#4@@0|))))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (not (_module.List.Nil_q |xs#0@@23|)) (let ((|tail#0@@5| (_module.List.tail |xs#0@@23|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@5|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (=> (not (_module.List.Nil_q |xs#0@@23|)) (let ((|tail#0@@6| (_module.List.tail |xs#0@@23|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@6|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall ((|x#1@@0| Int) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |x#1@@0|))) (<= |n##0@0| |x#1@@0|))
 :qid |SmallestMissingNumberfunctionaldfy.159:19|
 :skolemid |675|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |x#1@@0|))))
))) (=> (forall ((|x#1@@1| T@U) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType |x#1@@1|)) (<= |n##0@0| (U_2_int |x#1@@1|)))
 :qid |SmallestMissingNumberfunctionaldfy.159:19|
 :skolemid |675|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType |x#1@@1|)))
)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= |len##0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|))) (=> (= |len##0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.SMN#canCall| |xs#0@@23| |n##0@0| |len##0@0|) (let ((|s#0| (_module.__default.SMN ($LS $LZ) |xs#0@@23| |n##0@0| |len##0@0|)))
 (=> (and (<= |n##0@0| |s#0|) (<= |s#0| (+ |n##0@0| |len##0@0|))) (and (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@23|) (=> (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@23|) ($Box intType (int_2_U |s#0|)))) (forall ((|x#3@@0| T@U) ) (!  (=> (and (<= |n##0@0| (U_2_int |x#3@@0|)) (< (U_2_int |x#3@@0|) |s#0|)) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@23|))
 :qid |SmallestMissingNumberfunctionaldfy.164:12|
 :skolemid |677|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@23|) ($Box intType |x#3@@0|)))
))))))) (let ((|s#0@@0| (_module.__default.SMN ($LS ($LS $LZ)) |xs#0@@23| |n##0@0| |len##0@0|)))
(<= |n##0@0| |s#0@@0|))) (and (and (let ((|s#0@@1| (_module.__default.SMN ($LS ($LS $LZ)) |xs#0@@23| |n##0@0| |len##0@0|)))
(<= |s#0@@1| (+ |n##0@0| |len##0@0|))) (let ((|s#0@@2| (_module.__default.SMN ($LS ($LS $LZ)) |xs#0@@23| |n##0@0| |len##0@0|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |s#0@@2|)))))) (and (let ((|s#0@@3| (_module.__default.SMN ($LS ($LS $LZ)) |xs#0@@23| |n##0@0| |len##0@0|)))
(forall ((|x#3@@1| T@U) ) (!  (=> (and (<= |n##0@0| (U_2_int |x#3@@1|)) (< (U_2_int |x#3@@1|) |s#0@@3|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@23|) ($Box intType |x#3@@1|)))
 :qid |SmallestMissingNumberfunctionaldfy.164:12|
 :skolemid |679|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@23|) ($Box intType |x#3@@1|)))
))) (= $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|s#0@@4| (_module.__default.SmallestMissingNumber |xs#0@@23|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |s#0@@4|)))))) (=> (let ((|s#0@@5| (_module.__default.SmallestMissingNumber |xs#0@@23|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |s#0@@5|))))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|s#0@@6| (_module.__default.SmallestMissingNumber |xs#0@@23|)))
(forall ((|x#1@@2| Int) ) (!  (=> (and (<= (LitInt 0) |x#1@@2|) (< |x#1@@2| |s#0@@6|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |x#1@@2|))))
 :qid |SmallestMissingNumberfunctionaldfy.112:12|
 :skolemid |648|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@23|) ($Box intType (int_2_U |x#1@@2|))))
))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and ($Is DatatypeTypeType |xs#0@@23| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |xs#0@@23| (Tclass._module.List Tclass._System.nat) $Heap@@0)) (|$IsA#_module.List| |xs#0@@23|)) (= 5 $FunctionContextHeight)) (and (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@23|) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@23|) (ite (_module.List.Nil_q |xs#0@@23|) true (let ((|tail#3@@3| (_module.List.tail |xs#0@@23|)))
(let ((|x#5| (U_2_int ($Unbox intType (_module.List.head |xs#0@@23|)))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#3@@3|) ($Box intType (int_2_U |x#5|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#3@@3|))))))) (= (ControlFlow 0 10) 2))) anon0_correct))))
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
