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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IntRange (T@U Bool Int Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.IntRange#canCall| (Int Int) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun reveal__module._default.IntRange () Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.__default.Length (T@U T@U T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.__default.Elements (T@U T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |_module.__default.Elements#canCall| (T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#14| (T@U T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.__default.NoDuplicates#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.__default.SMN_k (T@U T@U Int Int) Int)
(declare-fun |_module.__default.SMN_k#canCall| (T@U Int Int) Bool)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun |_module.__default.Split#canCall| (T@U Int) Bool)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.__default.Split (T@U Bool T@U Int) T@U)
(declare-fun reveal__module._default.Split () Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|lo#0| Int) (|len#0| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0| (LitInt |len#0|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0|) (<= (LitInt 0) |len#0|)))) (and (=> (or (not (= (LitInt |len#0|) (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (+ |lo#0| 1) (LitInt (- |len#0| 1)))) (= (_module.__default.IntRange ($LS $ly@@0) true |lo#0| (LitInt |len#0|)) (ite (= (LitInt |len#0|) (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange ($LS $ly@@0) reveal__module._default.IntRange (+ |lo#0| 1) (LitInt (- |len#0| 1))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |lo#0|))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :weight 3
 :skolemid |705|
 :pattern ( (_module.__default.IntRange ($LS $ly@@0) true |lo#0| (LitInt |len#0|)))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0 T@U) ($ly@@1 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0 (Lit DatatypeTypeType |xs#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.Length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(|_module.__default.Length#canCall| _module._default.Length$_T0 |tail#3|))) (= (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(LitInt (+ 1 (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@1) |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |592|
 :pattern ( (_module.__default.Length _module._default.Length$_T0 ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@0|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((_module._default.Length$_T0@@0 T@U) ($ly@@2 T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@2) |xs#0@@1|) (_module.__default.Length _module._default.Length$_T0@@0 $ly@@2 |xs#0@@1|))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@0 ($LS $ly@@2) |xs#0@@1|))
)))
(assert (forall ((_module._default.Elements$_T0 T@U) ($ly@@3 T@U) (|xs#0@@2| T@U) ) (! (= (_module.__default.Elements _module._default.Elements$_T0 ($LS $ly@@3) |xs#0@@2|) (_module.__default.Elements _module._default.Elements$_T0 $ly@@3 |xs#0@@2|))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0 ($LS $ly@@3) |xs#0@@2|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
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
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((_module.List$X@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$X@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@0 T@U) ($ly@@4 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@0 |xs#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.Elements$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@3|)) (let ((|tail#1| (_module.List.tail |xs#0@@3|)))
(|_module.__default.Elements#canCall| _module._default.Elements$_T0@@0 |tail#1|))) (= (_module.__default.Elements _module._default.Elements$_T0@@0 ($LS $ly@@4) |xs#0@@3|) (ite (_module.List.Nil_q |xs#0@@3|) |Set#Empty| (let ((|tail#0| (_module.List.tail |xs#0@@3|)))
(let ((|x#0@@0| (_module.List.head |xs#0@@3|)))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#0@@0|) (_module.__default.Elements _module._default.Elements$_T0@@0 $ly@@4 |tail#0|))))))))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@0 ($LS $ly@@4) |xs#0@@3|))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|_module.List#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (|_module.List#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (and (_module.List.Cons_q a@@11) (_module.List.Cons_q b@@8)) (= (|_module.List#Equal| a@@11 b@@8)  (and (= (_module.List.head a@@11) (_module.List.head b@@8)) (|_module.List#Equal| (_module.List.tail a@@11) (_module.List.tail b@@8)))))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( (|_module.List#Equal| a@@11 b@@8) (_module.List.Cons_q a@@11))
 :pattern ( (|_module.List#Equal| a@@11 b@@8) (_module.List.Cons_q b@@8))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) ($reveal Bool) (|lo#0@@0| Int) (|len#0@@0| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0@@0| |len#0@@0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@0|) (<= (LitInt 0) |len#0@@0|)))) (and (and (= (|Set#Card| (_module.__default.IntRange $ly@@5 $reveal |lo#0@@0| |len#0@@0|)) |len#0@@0|) (forall ((|x#0@@1| T@U) ) (! (= (|Set#IsMember| (_module.__default.IntRange $ly@@5 $reveal |lo#0@@0| |len#0@@0|) ($Box intType |x#0@@1|))  (and (<= |lo#0@@0| (U_2_int |x#0@@1|)) (< (U_2_int |x#0@@1|) (+ |lo#0@@0| |len#0@@0|))))
 :qid |SmallestMissingNumberfunctionaldfy.221:18|
 :skolemid |701|
 :pattern ( (|Set#IsMember| (_module.__default.IntRange $ly@@5 $reveal |lo#0@@0| |len#0@@0|) ($Box intType |x#0@@1|)))
))) ($Is SetType (_module.__default.IntRange $ly@@5 $reveal |lo#0@@0| |len#0@@0|) (TSet Tclass._System.nat))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |702|
 :pattern ( (_module.__default.IntRange $ly@@5 $reveal |lo#0@@0| |len#0@@0|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
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
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Subset| a@@12 b@@9) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@12 o@@3) (|Set#IsMember| b@@9 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@12 o@@3))
 :pattern ( (|Set#IsMember| b@@9 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@12 b@@9))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NoDuplicates$_T0@@0 T@U) ($ly@@6 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@0 |xs#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.NoDuplicates$_T0@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@4|)) (let ((|tail#1@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#1| (_module.List.head |xs#0@@4|)))
 (and (|_module.__default.Elements#canCall| _module._default.NoDuplicates$_T0@@0 |tail#1@@0|) (=> (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@0 ($LS $LZ) |tail#1@@0|) |x#1|)) (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@0 |tail#1@@0|)))))) (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 ($LS $ly@@6) |xs#0@@4|) (ite (_module.List.Nil_q |xs#0@@4|) true (let ((|tail#0@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#0@@2| (_module.List.head |xs#0@@4|)))
 (and (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@0 ($LS $LZ) |tail#0@@0|) |x#0@@2|)) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 $ly@@6 |tail#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@0 ($LS $ly@@6) |xs#0@@4|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@5| T@U) (|n#0| Int) (|len#0@@1| Int) ) (!  (=> (or (|_module.__default.SMN_k#canCall| |xs#0@@5| |n#0| (LitInt |len#0@@1|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0|)) (<= (LitInt 0) |len#0@@1|)) (= (LitInt |len#0@@1|) (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@5|))))) (and (and (|$IsA#_module.List| |xs#0@@5|) (=> (not (|_module.List#Equal| |xs#0@@5| |#_module.List.Nil|)) (let ((|half#1| (LitInt (Div (+ |len#0@@1| 1) (LitInt 2)))))
 (and (|_module.__default.Split#canCall| |xs#0@@5| (+ |n#0| |half#1|)) (let ((|R#1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@5| (+ |n#0| |half#1|))))))
(let ((|L#1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@5| (+ |n#0| |half#1|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#1|) (let ((|llen#1| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1|)))
 (and (=> (< |llen#1| |half#1|) (|_module.__default.SMN_k#canCall| |L#1| |n#0| |llen#1|)) (=> (<= |half#1| |llen#1|) (|_module.__default.SMN_k#canCall| |R#1| (+ |n#0| |llen#1|) (- |len#0@@1| |llen#1|)))))))))))) (= (_module.__default.SMN_k ($LS $ly@@7) |xs#0@@5| |n#0| (LitInt |len#0@@1|)) (ite (|_module.List#Equal| |xs#0@@5| |#_module.List.Nil|) |n#0| (let ((|half#1@@0| (LitInt (Div (+ |len#0@@1| 1) (LitInt 2)))))
(let ((|R#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@5| (+ |n#0| |half#1@@0|))))))
(let ((|L#1@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@5| (+ |n#0| |half#1@@0|))))))
(let ((|llen#1@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1@@0|)))
(ite (< |llen#1@@0| |half#1@@0|) (_module.__default.SMN_k ($LS $ly@@7) |L#1@@0| |n#0| |llen#1@@0|) (_module.__default.SMN_k ($LS $ly@@7) |R#1@@0| (+ |n#0| |llen#1@@0|) (- |len#0@@1| |llen#1@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.58:10|
 :weight 3
 :skolemid |617|
 :pattern ( (_module.__default.SMN_k ($LS $ly@@7) |xs#0@@5| |n#0| (LitInt |len#0@@1|)))
))))
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
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Disjoint| a@@13 b@@10) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@13 o@@4)) (not (|Set#IsMember| b@@10 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@13 o@@4))
 :pattern ( (|Set#IsMember| b@@10 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@13 b@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@1 T@U) ($ly@@8 T@U) (|xs#0@@6| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 (Lit DatatypeTypeType |xs#0@@6|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.Elements$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@6|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@6|)))))
(|_module.__default.Elements#canCall| _module._default.Elements$_T0@@1 |tail#3@@0|))) (= (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@8) (Lit DatatypeTypeType |xs#0@@6|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@6|)) |Set#Empty| (let ((|tail#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@6|)))))
(let ((|x#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@6|)))))
(|Set#Union| (|Set#UnionOne| |Set#Empty| |x#2|) (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@8) |tail#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |659|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@1 ($LS $ly@@8) (Lit DatatypeTypeType |xs#0@@6|)))
))))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@1 T@U) ($ly@@9 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |xs#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.Length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@7|)) (let ((|tail#1@@1| (_module.List.tail |xs#0@@7|)))
(|_module.__default.Length#canCall| _module._default.Length$_T0@@1 |tail#1@@1|))) (= (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@9) |xs#0@@7|) (ite (_module.List.Nil_q |xs#0@@7|) 0 (let ((|tail#0@@1| (_module.List.tail |xs#0@@7|)))
(+ 1 (_module.__default.Length _module._default.Length$_T0@@1 $ly@@9 |tail#0@@1|)))))))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@1 ($LS $ly@@9) |xs#0@@7|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($reveal@@0 Bool) (|xs#0@@8| T@U) (|b#0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@8| |b#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0|)))) (and (let ((|r#0| (_module.__default.Split $ly@@10 reveal__module._default.Split |xs#0@@8| |b#0|)))
(= (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@8|) (+ (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0|))) (_module.__default.Length Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0|)))))) ($Is DatatypeTypeType (_module.__default.Split $ly@@10 $reveal@@0 |xs#0@@8| |b#0|) (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |638|
 :pattern ( (_module.__default.Split $ly@@10 $reveal@@0 |xs#0@@8| |b#0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|xs#0@@9| T@U) (|n#0@@0| Int) (|len#0@@2| Int) ) (!  (=> (or (|_module.__default.SMN_k#canCall| |xs#0@@9| |n#0@@0| |len#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@0|)) (<= (LitInt 0) |len#0@@2|)) (= |len#0@@2| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@9|))))) (and (and (|$IsA#_module.List| |xs#0@@9|) (=> (not (|_module.List#Equal| |xs#0@@9| |#_module.List.Nil|)) (let ((|half#0| (Div (+ |len#0@@2| 1) (LitInt 2))))
 (and (|_module.__default.Split#canCall| |xs#0@@9| (+ |n#0@@0| |half#0|)) (let ((|R#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@0| |half#0|))))))
(let ((|L#0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@0| |half#0|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#0|) (let ((|llen#0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0|)))
 (and (=> (< |llen#0| |half#0|) (|_module.__default.SMN_k#canCall| |L#0| |n#0@@0| |llen#0|)) (=> (<= |half#0| |llen#0|) (|_module.__default.SMN_k#canCall| |R#0| (+ |n#0@@0| |llen#0|) (- |len#0@@2| |llen#0|)))))))))))) (= (_module.__default.SMN_k ($LS $ly@@11) |xs#0@@9| |n#0@@0| |len#0@@2|) (ite (|_module.List#Equal| |xs#0@@9| |#_module.List.Nil|) |n#0@@0| (let ((|half#0@@0| (Div (+ |len#0@@2| 1) (LitInt 2))))
(let ((|R#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@0| |half#0@@0|))))))
(let ((|L#0@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@9| (+ |n#0@@0| |half#0@@0|))))))
(let ((|llen#0@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#0@@0|)))
(ite (< |llen#0@@0| |half#0@@0|) (_module.__default.SMN_k $ly@@11 |L#0@@0| |n#0@@0| |llen#0@@0|) (_module.__default.SMN_k $ly@@11 |R#0@@0| (+ |n#0@@0| |llen#0@@0|) (- |len#0@@2| |llen#0@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.58:10|
 :skolemid |616|
 :pattern ( (_module.__default.SMN_k ($LS $ly@@11) |xs#0@@9| |n#0@@0| |len#0@@2|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@14 b@@11) o@@5)  (or (|Set#IsMember| a@@14 o@@5) (|Set#IsMember| b@@11 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@14 b@@11) o@@5))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (|Set#Disjoint| a@@15 b@@12) (and (= (|Set#Difference| (|Set#Union| a@@15 b@@12) a@@15) b@@12) (= (|Set#Difference| (|Set#Union| a@@15 b@@12) b@@12) a@@15)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@15 b@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) (|xs#0@@10| T@U) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@10|) (LitInt |b#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@0|)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@10|)))))) (let ((|tail#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@10|)))))
(|_module.__default.Split#canCall| |tail#3@@1| (LitInt |b#0@@0|)))) (= (_module.__default.Split ($LS $ly@@12) true (Lit DatatypeTypeType |xs#0@@10|) (LitInt |b#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@10|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@10|)))))
(let ((|x#2@@0| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |xs#0@@10|)))))))
(let ((|R#2| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $ly@@12) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(let ((|L#2| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $ly@@12) reveal__module._default.Split |tail#2@@1| (LitInt |b#0@@0|))))))
(ite (< |x#2@@0| |b#0@@0|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |L#2|)) ($Box DatatypeTypeType |R#2|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#2|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#2@@0|)) |R#2|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :weight 3
 :skolemid |641|
 :pattern ( (_module.__default.Split ($LS $ly@@12) true (Lit DatatypeTypeType |xs#0@@10|) (LitInt |b#0@@0|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.List| d@@6) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( (|$IsA#_module.List| d@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@13 T@U) (|xs#0@@11| T@U) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.Split#canCall| |xs#0@@11| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |b#0@@1|)))) (and (=> (not (_module.List.Nil_q |xs#0@@11|)) (let ((|tail#1@@2| (_module.List.tail |xs#0@@11|)))
(|_module.__default.Split#canCall| |tail#1@@2| |b#0@@1|))) (= (_module.__default.Split ($LS $ly@@13) true |xs#0@@11| |b#0@@1|) (ite (_module.List.Nil_q |xs#0@@11|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|))) (let ((|tail#0@@2| (_module.List.tail |xs#0@@11|)))
(let ((|x#0@@4| (U_2_int ($Unbox intType (_module.List.head |xs#0@@11|)))))
(let ((|R#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split $ly@@13 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(let ((|L#0@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split $ly@@13 reveal__module._default.Split |tail#0@@2| |b#0@@1|)))))
(ite (< |x#0@@4| |b#0@@1|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@4|)) |L#0@@1|)) ($Box DatatypeTypeType |R#0@@1|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#0@@1|) ($Box DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |x#0@@4|)) |R#0@@1|))))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |640|
 :pattern ( (_module.__default.Split ($LS $ly@@13) true |xs#0@@11| |b#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@14 T@U) (|lo#0@@1| Int) (|len#0@@3| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| |lo#0@@1| |len#0@@3|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@1|) (<= (LitInt 0) |len#0@@3|)))) (and (=> (or (not (= |len#0@@3| (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (+ |lo#0@@1| 1) (- |len#0@@3| 1))) (= (_module.__default.IntRange ($LS $ly@@14) true |lo#0@@1| |len#0@@3|) (ite (= |len#0@@3| (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange $ly@@14 reveal__module._default.IntRange (+ |lo#0@@1| 1) (- |len#0@@3| 1)) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |lo#0@@1|))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |704|
 :pattern ( (_module.__default.IntRange ($LS $ly@@14) true |lo#0@@1| |len#0@@3|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@15 T@U) (|xs#0@@12| T@U) (|n#0@@1| Int) (|len#0@@4| Int) ) (!  (=> (or (|_module.__default.SMN_k#canCall| |xs#0@@12| |n#0@@1| |len#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@1|)) (<= (LitInt 0) |len#0@@4|)) (= |len#0@@4| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@12|))))) (<= (LitInt 0) (_module.__default.SMN_k $ly@@15 |xs#0@@12| |n#0@@1| |len#0@@4|)))
 :qid |SmallestMissingNumberfunctionaldfy.58:10|
 :skolemid |614|
 :pattern ( (_module.__default.SMN_k $ly@@15 |xs#0@@12| |n#0@@1| |len#0@@4|))
))))
(assert (forall ((_module.List$X@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)) (or (_module.List.Nil_q d@@7) (_module.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( (_module.List.Cons_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
 :pattern ( (_module.List.Nil_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.List _module.List$X@@3)))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (Div x@@9 y@@3) (div x@@9 y@@3))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@9 y@@3))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (|Set#Equal| a@@16 b@@13) (= a@@16 b@@13))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@16 b@@13))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@17 b@@14)) (|Set#Card| (|Set#Difference| b@@14 a@@17))) (|Set#Card| (|Set#Intersection| a@@17 b@@14))) (|Set#Card| (|Set#Union| a@@17 b@@14))) (= (|Set#Card| (|Set#Difference| a@@17 b@@14)) (- (|Set#Card| a@@17) (|Set#Card| (|Set#Intersection| a@@17 b@@14)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@17 b@@14)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (_module.List.Nil_q a@@18) (_module.List.Nil_q b@@15)) (|_module.List#Equal| a@@18 b@@15))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (|_module.List#Equal| a@@18 b@@15) (_module.List.Nil_q a@@18))
 :pattern ( (|_module.List#Equal| a@@18 b@@15) (_module.List.Nil_q b@@15))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Elements$_T0@@2 T@U) ($ly@@16 T@U) (|xs#0@@13| T@U) ) (!  (=> (and (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@2 |xs#0@@13|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.Elements$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.Elements$_T0@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@16 |xs#0@@13|) (TSet _module._default.Elements$_T0@@2) $Heap))
 :qid |SmallestMissingNumberfunctionaldfy.117:16|
 :skolemid |656|
 :pattern ( ($IsAlloc SetType (_module.__default.Elements _module._default.Elements$_T0@@2 $ly@@16 |xs#0@@13|) (TSet _module._default.Elements$_T0@@2) $Heap))
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
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Elements$_T0@@3 T@U) ($ly@@17 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.Elements#canCall| _module._default.Elements$_T0@@3 |xs#0@@14|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List _module._default.Elements$_T0@@3)))) ($Is SetType (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@17 |xs#0@@14|) (TSet _module._default.Elements$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.__default.Elements _module._default.Elements$_T0@@3 $ly@@17 |xs#0@@14|))
))))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (= (|Set#Union| a@@19 (|Set#Union| a@@19 b@@16)) (|Set#Union| a@@19 b@@16))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@19 (|Set#Union| a@@19 b@@16)))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (! (= (|Set#Intersection| a@@20 (|Set#Intersection| a@@20 b@@17)) (|Set#Intersection| a@@20 b@@17))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@20 (|Set#Intersection| a@@20 b@@17)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@18 T@U) (|lo#0@@2| Int) (|len#0@@5| Int) ) (!  (=> (or (|_module.__default.IntRange#canCall| (LitInt |lo#0@@2|) (LitInt |len#0@@5|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |lo#0@@2|) (<= (LitInt 0) |len#0@@5|)))) (and (=> (or (not (= (LitInt |len#0@@5|) (LitInt 0))) (not true)) (|_module.__default.IntRange#canCall| (LitInt (+ |lo#0@@2| 1)) (LitInt (- |len#0@@5| 1)))) (= (_module.__default.IntRange ($LS $ly@@18) true (LitInt |lo#0@@2|) (LitInt |len#0@@5|)) (ite (= (LitInt |len#0@@5|) (LitInt 0)) |Set#Empty| (|Set#Union| (_module.__default.IntRange ($LS $ly@@18) reveal__module._default.IntRange (LitInt (+ |lo#0@@2| 1)) (LitInt (- |len#0@@5| 1))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt |lo#0@@2|)))))))))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :weight 3
 :skolemid |706|
 :pattern ( (_module.__default.IntRange ($LS $ly@@18) true (LitInt |lo#0@@2|) (LitInt |len#0@@5|)))
))))
(assert (forall (($ly@@19 T@U) (|xs#0@@15| T@U) (|n#0@@2| Int) (|len#0@@6| Int) ) (! (= (_module.__default.SMN_k ($LS $ly@@19) |xs#0@@15| |n#0@@2| |len#0@@6|) (_module.__default.SMN_k $ly@@19 |xs#0@@15| |n#0@@2| |len#0@@6|))
 :qid |SmallestMissingNumberfunctionaldfy.58:10|
 :skolemid |612|
 :pattern ( (_module.__default.SMN_k ($LS $ly@@19) |xs#0@@15| |n#0@@2| |len#0@@6|))
)))
(assert (forall (($ly@@20 T@U) ($reveal@@1 Bool) (|xs#0@@16| T@U) (|b#0@@2| Int) ) (! (= (_module.__default.Split ($LS $ly@@20) $reveal@@1 |xs#0@@16| |b#0@@2|) (_module.__default.Split $ly@@20 $reveal@@1 |xs#0@@16| |b#0@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.93:17|
 :skolemid |636|
 :pattern ( (_module.__default.Split ($LS $ly@@20) $reveal@@1 |xs#0@@16| |b#0@@2|))
)))
(assert (forall (($ly@@21 T@U) ($reveal@@2 Bool) (|lo#0@@3| Int) (|len#0@@7| Int) ) (! (= (_module.__default.IntRange ($LS $ly@@21) $reveal@@2 |lo#0@@3| |len#0@@7|) (_module.__default.IntRange $ly@@21 $reveal@@2 |lo#0@@3| |len#0@@7|))
 :qid |SmallestMissingNumberfunctionaldfy.219:23|
 :skolemid |699|
 :pattern ( (_module.__default.IntRange ($LS $ly@@21) $reveal@@2 |lo#0@@3| |len#0@@7|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@8 T@U) (_module.List$X@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.List _module.List$X@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAllocBox (_module.List.head d@@8) _module.List$X@@5 $h@@2))
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
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
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
(assert (forall ((a@@21 T@U) (x@@11 T@U) ) (!  (=> (|Set#IsMember| a@@21 x@@11) (= (|Set#Card| (|Set#UnionOne| a@@21 x@@11)) (|Set#Card| a@@21)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@21 x@@11)))
)))
(assert (forall ((d@@10 T@U) (_module.List$X@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$X@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@10) (Tclass._module.List _module.List$X@@7) $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@22 T@U) (|xs#0@@17| T@U) (|n#0@@3| Int) (|len#0@@8| Int) ) (!  (=> (or (|_module.__default.SMN_k#canCall| (Lit DatatypeTypeType |xs#0@@17|) (LitInt |n#0@@3|) (LitInt |len#0@@8|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |xs#0@@17| (Tclass._module.List Tclass._System.nat)) (<= (LitInt 0) |n#0@@3|)) (<= (LitInt 0) |len#0@@8|)) (= (LitInt |len#0@@8|) (LitInt (_module.__default.Length Tclass._System.nat ($LS $LZ) (Lit DatatypeTypeType |xs#0@@17|))))))) (and (and (|$IsA#_module.List| (Lit DatatypeTypeType |xs#0@@17|)) (=> (not (|_module.List#Equal| |xs#0@@17| |#_module.List.Nil|)) (let ((|half#2| (LitInt (Div (+ |len#0@@8| 1) (LitInt 2)))))
 (and (|_module.__default.Split#canCall| (Lit DatatypeTypeType |xs#0@@17|) (+ |n#0@@3| |half#2|)) (let ((|R#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@17|) (+ |n#0@@3| |half#2|))))))
(let ((|L#2@@0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@17|) (+ |n#0@@3| |half#2|))))))
 (and (|_module.__default.Length#canCall| Tclass._System.nat |L#2@@0|) (let ((|llen#2| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2@@0|)))
 (and (=> (< |llen#2| |half#2|) (|_module.__default.SMN_k#canCall| |L#2@@0| (LitInt |n#0@@3|) |llen#2|)) (=> (<= |half#2| |llen#2|) (|_module.__default.SMN_k#canCall| |R#2@@0| (+ |n#0@@3| |llen#2|) (- |len#0@@8| |llen#2|)))))))))))) (= (_module.__default.SMN_k ($LS $ly@@22) (Lit DatatypeTypeType |xs#0@@17|) (LitInt |n#0@@3|) (LitInt |len#0@@8|)) (ite (|_module.List#Equal| |xs#0@@17| |#_module.List.Nil|) |n#0@@3| (let ((|half#2@@0| (LitInt (Div (+ |len#0@@8| 1) (LitInt 2)))))
(let ((|R#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@17|) (LitInt (+ |n#0@@3| |half#2@@0|)))))))
(let ((|L#2@@1| ($Unbox DatatypeTypeType (_System.Tuple2._0 (_module.__default.Split ($LS $LZ) reveal__module._default.Split (Lit DatatypeTypeType |xs#0@@17|) (LitInt (+ |n#0@@3| |half#2@@0|)))))))
(let ((|llen#2@@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#2@@1|)))
(ite (< |llen#2@@0| |half#2@@0|) (_module.__default.SMN_k ($LS $ly@@22) |L#2@@1| (LitInt |n#0@@3|) |llen#2@@0|) (_module.__default.SMN_k ($LS $ly@@22) |R#2@@1| (+ |n#0@@3| |llen#2@@0|) (- |len#0@@8| |llen#2@@0|)))))))))))
 :qid |SmallestMissingNumberfunctionaldfy.58:10|
 :weight 3
 :skolemid |618|
 :pattern ( (_module.__default.SMN_k ($LS $ly@@22) (Lit DatatypeTypeType |xs#0@@17|) (LitInt |n#0@@3|) (LitInt |len#0@@8|)))
))))
(assert (forall ((a@@22 T@U) (b@@18 T@U) ) (! (= (|Set#Equal| a@@22 b@@18) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@22 o@@6) (|Set#IsMember| b@@18 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@22 o@@6))
 :pattern ( (|Set#IsMember| b@@18 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@22 b@@18))
)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.NoDuplicates$_T0@@1 T@U) ($ly@@23 T@U) (|xs#0@@18| T@U) ) (!  (=> (or (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 (Lit DatatypeTypeType |xs#0@@18|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@18| (Tclass._module.List _module._default.NoDuplicates$_T0@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@18|)))))) (let ((|tail#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@18|)))))
(let ((|x#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@18|)))))
 (and (|_module.__default.Elements#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|) (=> (not (|Set#IsMember| (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#3@@2|) |x#3|)) (|_module.__default.NoDuplicates#canCall| _module._default.NoDuplicates$_T0@@1 |tail#3@@2|)))))) (= (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@23) (Lit DatatypeTypeType |xs#0@@18|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@18|)) true (let ((|tail#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@18|)))))
(let ((|x#2@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@18|)))))
 (and (not (|Set#IsMember| (Lit SetType (_module.__default.Elements _module._default.NoDuplicates$_T0@@1 ($LS $LZ) |tail#2@@2|)) |x#2@@1|)) (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@23) |tail#2@@2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |666|
 :pattern ( (_module.__default.NoDuplicates _module._default.NoDuplicates$_T0@@1 ($LS $ly@@23) (Lit DatatypeTypeType |xs#0@@18|)))
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
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Length$_T0@@2 T@U) ($ly@@24 T@U) (|xs#0@@19| T@U) ) (!  (=> (or (|_module.__default.Length#canCall| _module._default.Length$_T0@@2 |xs#0@@19|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@19| (Tclass._module.List _module._default.Length$_T0@@2)))) (<= (LitInt 0) (_module.__default.Length _module._default.Length$_T0@@2 $ly@@24 |xs#0@@19|)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Length _module._default.Length$_T0@@2 $ly@@24 |xs#0@@19|))
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
(assert (forall ((a@@23 T@U) (x@@14 T@U) ) (!  (=> (not (|Set#IsMember| a@@23 x@@14)) (= (|Set#Card| (|Set#UnionOne| a@@23 x@@14)) (+ (|Set#Card| a@@23) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@23 x@@14)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0@@20| () T@U)
(declare-fun |x#1_1_2_0_0@0| () Int)
(declare-fun |n#0@@4| () Int)
(declare-fun |llen#1_0@0| () Int)
(declare-fun |L#1_0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |A##1_1_2_0_0_0@0| () T@U)
(declare-fun call0formal@_module._default.SetEquality$_T0@0 () T@U)
(declare-fun |bound#1_0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |t#1_1_2_0@0| () Int)
(declare-fun |s#1_1_0@0| () Int)
(declare-fun |x#1_1_0@0| () Int)
(declare-fun |R#1_0@0| () T@U)
(declare-fun |##n#1_1_2_0@0| () Int)
(declare-fun |len#0@@9| () Int)
(declare-fun |##len#1_1_2_0@0| () Int)
(declare-fun |x#1_1_2@0| () Int)
(declare-fun |half#1_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |n##1_1_0@0| () Int)
(declare-fun |len##1_1_0@0| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##b#1_0@0| () Int)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |b##1_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun call0formal@_module._default.Elements_Property$_T0@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |A##1_0@0| () T@U)
(declare-fun call0formal@_module._default.Cardinality$_T0@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |bound#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.SMN_k__Correct)
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
 (=> (= (ControlFlow 0 0) 83) (let ((anon21_correct  (=> (= (ControlFlow 0 41) (- 0 40)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |x#1_1_2_0_0@0|))))))
(let ((anon45_Else_correct  (=> (and (<= (+ |n#0@@4| |llen#1_0@0|) |x#1_1_2_0_0@0|) (= (ControlFlow 0 45) 41)) anon21_correct)))
(let ((anon45_Then_correct  (=> (and (< |x#1_1_2_0_0@0| (+ |n#0@@4| |llen#1_0@0|)) ($IsAlloc DatatypeTypeType |L#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@4)) (=> (and (and (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|) (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|)) (and (= |A##1_1_2_0_0_0@0| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|)) (= call0formal@_module._default.SetEquality$_T0@0 Tclass._System.nat))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (|Set#Subset| |A##1_1_2_0_0_0@0| |bound#1_0@0|)) (=> (|Set#Subset| |A##1_1_2_0_0_0@0| |bound#1_0@0|) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= (|Set#Card| |A##1_1_2_0_0_0@0|) (|Set#Card| |bound#1_0@0|))) (=> (= (|Set#Card| |A##1_1_2_0_0_0@0|) (|Set#Card| |bound#1_0@0|)) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|Set#Equal| |A##1_1_2_0_0_0@0| |bound#1_0@0|)) (and (= $Heap@4 $Heap@5) (= (ControlFlow 0 42) 41))) anon21_correct)))))))))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 46) 42) anon45_Then_correct) (=> (= (ControlFlow 0 46) 45) anon45_Else_correct))))
(let ((anon44_Then_correct true))
(let ((anon16_correct  (=> (and (<= |n#0@@4| |x#1_1_2_0_0@0|) (< |x#1_1_2_0_0@0| |t#1_1_2_0@0|)) (and (=> (= (ControlFlow 0 47) 39) anon44_Then_correct) (=> (= (ControlFlow 0 47) 46) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (< |x#1_1_2_0_0@0| |n#0@@4|) (= (ControlFlow 0 49) 47)) anon16_correct)))
(let ((anon43_Then_correct  (=> (and (<= |n#0@@4| |x#1_1_2_0_0@0|) (= (ControlFlow 0 48) 47)) anon16_correct)))
(let ((anon42_Then_correct  (and (=> (= (ControlFlow 0 50) 48) anon43_Then_correct) (=> (= (ControlFlow 0 50) 49) anon43_Else_correct))))
(let ((anon28_correct  (=> (and (forall ((|x#1_1_1| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#1_1_1|)) (< (U_2_int |x#1_1_1|) |s#1_1_0@0|)) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|))
 :qid |SmallestMissingNumberfunctionaldfy.258:21|
 :skolemid |729|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_1|)))
)) (= (ControlFlow 0 32) (- 0 31))) (forall ((|x#1_1_1@@0| Int) ) (!  (=> (and (<= |n#0@@4| |x#1_1_1@@0|) (< |x#1_1_1@@0| |s#1_1_0@0|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |x#1_1_1@@0|))))
 :qid |SmallestMissingNumberfunctionaldfy.258:21|
 :skolemid |730|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |x#1_1_1@@0|))))
)))))
(let ((anon48_Else_correct  (=> (and (not (and (<= |n#0@@4| |x#1_1_0@0|) (< |x#1_1_0@0| |s#1_1_0@0|))) (= (ControlFlow 0 34) 32)) anon28_correct)))
(let ((anon48_Then_correct  (=> (and (and (and (<= |n#0@@4| |x#1_1_0@0|) (< |x#1_1_0@0| |s#1_1_0@0|)) ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@4)) (and (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|) (= (ControlFlow 0 33) 32))) anon28_correct)))
(let ((anon47_Else_correct  (=> (< |x#1_1_0@0| |n#0@@4|) (and (=> (= (ControlFlow 0 36) 33) anon48_Then_correct) (=> (= (ControlFlow 0 36) 34) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (<= |n#0@@4| |x#1_1_0@0|) (and (=> (= (ControlFlow 0 35) 33) anon48_Then_correct) (=> (= (ControlFlow 0 35) 34) anon48_Else_correct)))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 37) 35) anon47_Then_correct) (=> (= (ControlFlow 0 37) 36) anon47_Else_correct))))
(let ((anon46_Else_correct true))
(let ((anon42_Else_correct  (=> (forall ((|x#1_1_2_0_1| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#1_1_2_0_1|)) (< (U_2_int |x#1_1_2_0_1|) |t#1_1_2_0@0|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_2_0_1|)))
 :qid |SmallestMissingNumberfunctionaldfy.260:16|
 :skolemid |728|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_2_0_1|)))
)) (and (=> (= (ControlFlow 0 38) 37) anon46_Then_correct) (=> (= (ControlFlow 0 38) 30) anon46_Else_correct)))))
(let ((anon41_Then_correct  (=> ($IsAlloc DatatypeTypeType |R#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@4) (and (=> (= (ControlFlow 0 51) (- 0 54)) ($Is intType (int_2_U (+ |n#0@@4| |llen#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |llen#1_0@0|)) Tclass._System.nat) (=> (and (= |##n#1_1_2_0@0| (+ |n#0@@4| |llen#1_0@0|)) ($IsAlloc intType (int_2_U |##n#1_1_2_0@0|) Tclass._System.nat $Heap@4)) (and (=> (= (ControlFlow 0 51) (- 0 53)) ($Is intType (int_2_U (- |len#0@@9| |llen#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |len#0@@9| |llen#1_0@0|)) Tclass._System.nat) (=> (and (= |##len#1_1_2_0@0| (- |len#0@@9| |llen#1_0@0|)) ($IsAlloc intType (int_2_U |##len#1_1_2_0@0|) Tclass._System.nat $Heap@4)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (= |##len#1_1_2_0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|))) (=> (and (and (= |##len#1_1_2_0@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |R#1_0@0|)) (|_module.__default.SMN_k#canCall| |R#1_0@0| (+ |n#0@@4| |llen#1_0@0|) (- |len#0@@9| |llen#1_0@0|))) (and (|_module.__default.SMN_k#canCall| |R#1_0@0| (+ |n#0@@4| |llen#1_0@0|) (- |len#0@@9| |llen#1_0@0|)) (= |t#1_1_2_0@0| (_module.__default.SMN_k ($LS $LZ) |R#1_0@0| (+ |n#0@@4| |llen#1_0@0|) (- |len#0@@9| |llen#1_0@0|))))) (and (=> (= (ControlFlow 0 51) 50) anon42_Then_correct) (=> (= (ControlFlow 0 51) 38) anon42_Else_correct)))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 13)) (let ((|s#0| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
(<= |n#0@@4| |s#0|))) (=> (let ((|s#0@@0| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
(<= |n#0@@4| |s#0@@0|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (let ((|s#0@@1| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
(<= |s#0@@1| (+ |n#0@@4| |len#0@@9|)))) (=> (let ((|s#0@@2| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
(<= |s#0@@2| (+ |n#0@@4| |len#0@@9|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (let ((|s#0@@3| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |s#0@@3|)))))) (=> (let ((|s#0@@4| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |s#0@@4|))))) (=> (= (ControlFlow 0 10) (- 0 9)) (let ((|s#0@@5| (_module.__default.SMN_k ($LS ($LS $LZ)) |xs#0@@20| |n#0@@4| |len#0@@9|)))
(forall ((|x#3@@0| Int) ) (!  (=> (and (<= |n#0@@4| |x#3@@0|) (< |x#3@@0| |s#0@@5|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |x#3@@0|))))
 :qid |SmallestMissingNumberfunctionaldfy.237:12|
 :skolemid |720|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |x#3@@0|))))
))))))))))))
(let ((anon34_correct  (=> (forall ((|x#1_1_1@@1| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#1_1_1@@1|)) (< (U_2_int |x#1_1_1@@1|) |s#1_1_0@0|)) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|))
 :qid |SmallestMissingNumberfunctionaldfy.258:21|
 :skolemid |733|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_1@@1|)))
)) (=> (and (forall ((|x#1_1_1@@2| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#1_1_1@@2|)) (< (U_2_int |x#1_1_1@@2|) |s#1_1_0@0|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_1@@2|)))
 :qid |SmallestMissingNumberfunctionaldfy.258:21|
 :skolemid |736|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1_1_1@@2|)))
)) (= (ControlFlow 0 24) 10)) GeneratedUnifiedExit_correct))))
(let ((anon51_Else_correct  (=> (and (not (and (<= |n#0@@4| |x#1_1_2@0|) (< |x#1_1_2@0| |s#1_1_0@0|))) (= (ControlFlow 0 26) 24)) anon34_correct)))
(let ((anon51_Then_correct  (=> (and (and (and (<= |n#0@@4| |x#1_1_2@0|) (< |x#1_1_2@0| |s#1_1_0@0|)) ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@4)) (and (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|) (= (ControlFlow 0 25) 24))) anon34_correct)))
(let ((anon50_Else_correct  (=> (< |x#1_1_2@0| |n#0@@4|) (and (=> (= (ControlFlow 0 28) 25) anon51_Then_correct) (=> (= (ControlFlow 0 28) 26) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (<= |n#0@@4| |x#1_1_2@0|) (and (=> (= (ControlFlow 0 27) 25) anon51_Then_correct) (=> (= (ControlFlow 0 27) 26) anon51_Else_correct)))))
(let ((anon49_Then_correct  (and (=> (= (ControlFlow 0 29) 27) anon50_Then_correct) (=> (= (ControlFlow 0 29) 28) anon50_Else_correct))))
(let ((anon36_Then_correct  (=> (< |llen#1_0@0| |half#1_0@0|) (and (=> (= (ControlFlow 0 15) (- 0 23)) ($Is intType (int_2_U |llen#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |llen#1_0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 15) (- 0 22)) (or (<= 0 |len#0@@9|) (= |llen#1_0@0| |len#0@@9|))) (=> (or (<= 0 |len#0@@9|) (= |llen#1_0@0| |len#0@@9|)) (and (=> (= (ControlFlow 0 15) (- 0 21)) (< |llen#1_0@0| |len#0@@9|)) (=> (< |llen#1_0@0| |len#0@@9|) (and (=> (= (ControlFlow 0 15) (- 0 20)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (_module.List.Nil_q |L#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (_module.List.Nil_q |L#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 15) (- 0 19)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@3| (_module.List.tail |L#1_0@0|)))
(let ((|x#4| (U_2_int ($Unbox intType (_module.List.head |L#1_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@3|) ($Box intType (int_2_U |x#4|)))))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@4| (_module.List.tail |L#1_0@0|)))
(let ((|x#4@@0| (U_2_int ($Unbox intType (_module.List.head |L#1_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@4|) ($Box intType (int_2_U |x#4@@0|))))))))) (and (=> (= (ControlFlow 0 15) (- 0 18)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@5| (_module.List.tail |L#1_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@5|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |L#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@6| (_module.List.tail |L#1_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@6|))))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((|x#1@@0| Int) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|) ($Box intType (int_2_U |x#1@@0|))) (<= |n#0@@4| |x#1@@0|))
 :qid |SmallestMissingNumberfunctionaldfy.232:19|
 :skolemid |712|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|) ($Box intType (int_2_U |x#1@@0|))))
))) (=> (forall ((|x#1@@1| T@U) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|) ($Box intType |x#1@@1|)) (<= |n#0@@4| (U_2_int |x#1@@1|)))
 :qid |SmallestMissingNumberfunctionaldfy.232:19|
 :skolemid |712|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|) ($Box intType |x#1@@1|)))
)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= |llen#1_0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|))) (=> (= |llen#1_0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|)) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.__default.SMN_k#canCall| |L#1_0@0| |n#0@@4| |llen#1_0@0|) (let ((|s#0@@6| (_module.__default.SMN_k ($LS $LZ) |L#1_0@0| |n#0@@4| |llen#1_0@0|)))
 (=> (and (<= |n#0@@4| |s#0@@6|) (<= |s#0@@6| (+ |n#0@@4| |llen#1_0@0|))) (and (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|) (=> (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|) ($Box intType (int_2_U |s#0@@6|)))) (forall ((|x#3@@1| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#3@@1|)) (< (U_2_int |x#3@@1|) |s#0@@6|)) (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|))
 :qid |SmallestMissingNumberfunctionaldfy.237:12|
 :skolemid |714|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|) ($Box intType |x#3@@1|)))
))))))) (and (let ((|s#0@@7| (_module.__default.SMN_k ($LS ($LS $LZ)) |L#1_0@0| |n#0@@4| |llen#1_0@0|)))
(<= |n#0@@4| |s#0@@7|)) (let ((|s#0@@8| (_module.__default.SMN_k ($LS ($LS $LZ)) |L#1_0@0| |n#0@@4| |llen#1_0@0|)))
(<= |s#0@@8| (+ |n#0@@4| |llen#1_0@0|))))) (and (and (let ((|s#0@@9| (_module.__default.SMN_k ($LS ($LS $LZ)) |L#1_0@0| |n#0@@4| |llen#1_0@0|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |L#1_0@0|) ($Box intType (int_2_U |s#0@@9|))))) (let ((|s#0@@10| (_module.__default.SMN_k ($LS ($LS $LZ)) |L#1_0@0| |n#0@@4| |llen#1_0@0|)))
(forall ((|x#3@@2| T@U) ) (!  (=> (and (<= |n#0@@4| (U_2_int |x#3@@2|)) (< (U_2_int |x#3@@2|) |s#0@@10|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|) ($Box intType |x#3@@2|)))
 :qid |SmallestMissingNumberfunctionaldfy.237:12|
 :skolemid |716|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|) ($Box intType |x#3@@2|)))
)))) (and (= $Heap@2 $Heap@3) (= (ControlFlow 0 15) 10)))) GeneratedUnifiedExit_correct)))))))))))))))))))))
(let ((anon35_Then_correct  (=> (and (|_module.List#Equal| |xs#0@@20| |#_module.List.Nil|) (= (ControlFlow 0 14) 10)) GeneratedUnifiedExit_correct)))
(let ((anon49_Else_correct true))
(let ((anon40_Else_correct  (=> (and (and ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@4) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|)) (and (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|) (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType (int_2_U |s#1_1_0@0|)))))) (and (and (=> (= (ControlFlow 0 55) 51) anon41_Then_correct) (=> (= (ControlFlow 0 55) 29) anon49_Then_correct)) (=> (= (ControlFlow 0 55) 8) anon49_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (and ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@4) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|)) (and (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|) (= (ControlFlow 0 7) (- 0 6)))) (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) ($Box intType (int_2_U |s#1_1_0@0|)))))))
(let ((anon10_correct  (=> (and (<= |n#0@@4| |s#1_1_0@0|) (<= |s#1_1_0@0| (+ |n#0@@4| |len#0@@9|))) (and (=> (= (ControlFlow 0 56) 7) anon40_Then_correct) (=> (= (ControlFlow 0 56) 55) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (< |s#1_1_0@0| |n#0@@4|) (= (ControlFlow 0 58) 56)) anon10_correct)))
(let ((anon39_Then_correct  (=> (and (<= |n#0@@4| |s#1_1_0@0|) (= (ControlFlow 0 57) 56)) anon10_correct)))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= |n#0@@4| |s#1_1_0@0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (<= |s#1_1_0@0| (+ |n#0@@4| |len#0@@9|))))))
(let ((anon38_Else_correct  (=> (and (< |s#1_1_0@0| |n#0@@4|) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon38_Then_correct  (=> (and (<= |n#0@@4| |s#1_1_0@0|) (= (ControlFlow 0 4) 2)) anon7_correct)))
(let ((anon36_Else_correct  (=> (and (and (<= |half#1_0@0| |llen#1_0@0|) ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@2)) (and ($IsAlloc intType (int_2_U |n#0@@4|) Tclass._System.nat $Heap@2) ($IsAlloc intType (int_2_U |len#0@@9|) Tclass._System.nat $Heap@2))) (and (=> (= (ControlFlow 0 59) (- 0 69)) (= |len#0@@9| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|))) (=> (and (and (= |len#0@@9| (_module.__default.Length Tclass._System.nat ($LS $LZ) |xs#0@@20|)) (|_module.__default.SMN_k#canCall| |xs#0@@20| |n#0@@4| |len#0@@9|)) (and (|_module.__default.SMN_k#canCall| |xs#0@@20| |n#0@@4| |len#0@@9|) (= |s#1_1_0@0| (_module.__default.SMN_k ($LS $LZ) |xs#0@@20| |n#0@@4| |len#0@@9|)))) (and (=> (= (ControlFlow 0 59) (- 0 68)) ($Is intType (int_2_U (+ |n#0@@4| |llen#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |llen#1_0@0|)) Tclass._System.nat) (=> (= |n##1_1_0@0| (+ |n#0@@4| |llen#1_0@0|)) (and (=> (= (ControlFlow 0 59) (- 0 67)) ($Is intType (int_2_U (- |len#0@@9| |llen#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |len#0@@9| |llen#1_0@0|)) Tclass._System.nat) (=> (= |len##1_1_0@0| (- |len#0@@9| |llen#1_0@0|)) (and (=> (= (ControlFlow 0 59) (- 0 66)) (or (<= 0 |len#0@@9|) (= |len##1_1_0@0| |len#0@@9|))) (=> (or (<= 0 |len#0@@9|) (= |len##1_1_0@0| |len#0@@9|)) (and (=> (= (ControlFlow 0 59) (- 0 65)) (< |len##1_1_0@0| |len#0@@9|)) (=> (< |len##1_1_0@0| |len#0@@9|) (and (=> (= (ControlFlow 0 59) (- 0 64)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (_module.List.Nil_q |R#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (_module.List.Nil_q |R#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 59) (- 0 63)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (not (_module.List.Nil_q |R#1_0@0|)) (let ((|tail#0@@7| (_module.List.tail |R#1_0@0|)))
(let ((|x#4@@1| (U_2_int ($Unbox intType (_module.List.head |R#1_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@7|) ($Box intType (int_2_U |x#4@@1|)))))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (not (_module.List.Nil_q |R#1_0@0|)) (let ((|tail#0@@8| (_module.List.tail |R#1_0@0|)))
(let ((|x#4@@2| (U_2_int ($Unbox intType (_module.List.head |R#1_0@0|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@8|) ($Box intType (int_2_U |x#4@@2|))))))))) (and (=> (= (ControlFlow 0 59) (- 0 62)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (not (_module.List.Nil_q |R#1_0@0|)) (let ((|tail#0@@9| (_module.List.tail |R#1_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@9|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |R#1_0@0|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |R#1_0@0|) (=> (not (_module.List.Nil_q |R#1_0@0|)) (let ((|tail#0@@10| (_module.List.tail |R#1_0@0|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@10|))))) (and (=> (= (ControlFlow 0 59) (- 0 61)) (forall ((|x#1@@2| Int) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|) ($Box intType (int_2_U |x#1@@2|))) (<= |n##1_1_0@0| |x#1@@2|))
 :qid |SmallestMissingNumberfunctionaldfy.232:19|
 :skolemid |712|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|) ($Box intType (int_2_U |x#1@@2|))))
))) (=> (forall ((|x#1@@3| T@U) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|) ($Box intType |x#1@@3|)) (<= |n##1_1_0@0| (U_2_int |x#1@@3|)))
 :qid |SmallestMissingNumberfunctionaldfy.232:19|
 :skolemid |712|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|) ($Box intType |x#1@@3|)))
)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (= |len##1_1_0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|))) (=> (= |len##1_1_0@0| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|)) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (|_module.__default.SMN_k#canCall| |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|) (let ((|s#0@@11| (_module.__default.SMN_k ($LS $LZ) |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|)))
 (=> (and (<= |n##1_1_0@0| |s#0@@11|) (<= |s#0@@11| (+ |n##1_1_0@0| |len##1_1_0@0|))) (and (|_module.__default.Elements#canCall| Tclass._System.nat |R#1_0@0|) (=> (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |R#1_0@0|) ($Box intType (int_2_U |s#0@@11|)))) (forall ((|x#3@@3| T@U) ) (!  (=> (and (<= |n##1_1_0@0| (U_2_int |x#3@@3|)) (< (U_2_int |x#3@@3|) |s#0@@11|)) (|_module.__default.Elements#canCall| Tclass._System.nat |R#1_0@0|))
 :qid |SmallestMissingNumberfunctionaldfy.237:12|
 :skolemid |714|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |R#1_0@0|) ($Box intType |x#3@@3|)))
))))))) (let ((|s#0@@12| (_module.__default.SMN_k ($LS ($LS $LZ)) |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|)))
(<= |n##1_1_0@0| |s#0@@12|))) (and (and (let ((|s#0@@13| (_module.__default.SMN_k ($LS ($LS $LZ)) |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|)))
(<= |s#0@@13| (+ |n##1_1_0@0| |len##1_1_0@0|))) (let ((|s#0@@14| (_module.__default.SMN_k ($LS ($LS $LZ)) |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|)))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |R#1_0@0|) ($Box intType (int_2_U |s#0@@14|)))))) (and (let ((|s#0@@15| (_module.__default.SMN_k ($LS ($LS $LZ)) |R#1_0@0| |n##1_1_0@0| |len##1_1_0@0|)))
(forall ((|x#3@@4| T@U) ) (!  (=> (and (<= |n##1_1_0@0| (U_2_int |x#3@@4|)) (< (U_2_int |x#3@@4|) |s#0@@15|)) (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |R#1_0@0|) ($Box intType |x#3@@4|)))
 :qid |SmallestMissingNumberfunctionaldfy.237:12|
 :skolemid |716|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |R#1_0@0|) ($Box intType |x#3@@4|)))
))) (= $Heap@2 $Heap@4)))) (and (and (and (=> (= (ControlFlow 0 59) 57) anon39_Then_correct) (=> (= (ControlFlow 0 59) 58) anon39_Else_correct)) (=> (= (ControlFlow 0 59) 4) anon38_Then_correct)) (=> (= (ControlFlow 0 59) 5) anon38_Else_correct)))))))))))))))))))))))))))))
(let ((anon35_Else_correct  (=> (not (|_module.List#Equal| |xs#0@@20| |#_module.List.Nil|)) (and (=> (= (ControlFlow 0 70) (- 0 81)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |half#1_0@0| (Div (+ |len#0@@9| 1) (LitInt 2))) (=> (and ($Is DatatypeTypeType |L#1_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |L#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@@0)) (=> (and (and ($Is DatatypeTypeType |R#1_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |R#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@@0)) ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@@0)) (and (=> (= (ControlFlow 0 70) (- 0 80)) ($Is intType (int_2_U (+ |n#0@@4| |half#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |half#1_0@0|)) Tclass._System.nat) (=> (and (= |##b#1_0@0| (+ |n#0@@4| |half#1_0@0|)) ($IsAlloc intType (int_2_U |##b#1_0@0|) Tclass._System.nat $Heap@@0)) (=> (and (and (and (|_module.__default.Split#canCall| |xs#0@@20| (+ |n#0@@4| |half#1_0@0|)) (_System.Tuple2.___hMake2_q (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@20| (+ |n#0@@4| |half#1_0@0|)))) (and (= |let#1_0#0#0| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@20| (+ |n#0@@4| |half#1_0@0|))) (|_module.__default.Split#canCall| |xs#0@@20| (+ |n#0@@4| |half#1_0@0|)))) (and (and (|_module.__default.Split#canCall| |xs#0@@20| (+ |n#0@@4| |half#1_0@0|)) ($Is DatatypeTypeType |let#1_0#0#0| (Tclass._System.Tuple2 (Tclass._module.List Tclass._System.nat) (Tclass._module.List Tclass._System.nat)))) (and (_System.Tuple2.___hMake2_q |let#1_0#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |L#1_0@0|) ($Box DatatypeTypeType |R#1_0@0|)) |let#1_0#0#0|)))) (and (=> (= (ControlFlow 0 70) (- 0 79)) ($Is intType (int_2_U (+ |n#0@@4| |half#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |n#0@@4| |half#1_0@0|)) Tclass._System.nat) (=> (= |b##1_0@0| (+ |n#0@@4| |half#1_0@0|)) (and (=> (= (ControlFlow 0 70) (- 0 78)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (_module.List.Nil_q |xs#0@@20|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (_module.List.Nil_q |xs#0@@20|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 70) (- 0 77)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (not (_module.List.Nil_q |xs#0@@20|)) (let ((|tail#0@@11| (_module.List.tail |xs#0@@20|)))
(let ((|x#2@@2| (U_2_int ($Unbox intType (_module.List.head |xs#0@@20|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@11|) ($Box intType (int_2_U |x#2@@2|)))))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (not (_module.List.Nil_q |xs#0@@20|)) (let ((|tail#0@@12| (_module.List.tail |xs#0@@20|)))
(let ((|x#2@@3| (U_2_int ($Unbox intType (_module.List.head |xs#0@@20|)))))
 (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@12|) ($Box intType (int_2_U |x#2@@3|))))))))) (and (=> (= (ControlFlow 0 70) (- 0 76)) (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (not (_module.List.Nil_q |xs#0@@20|)) (let ((|tail#0@@13| (_module.List.tail |xs#0@@20|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@13|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (or (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (=> (not (_module.List.Nil_q |xs#0@@20|)) (let ((|tail#0@@14| (_module.List.tail |xs#0@@20|)))
(_module.__default.NoDuplicates Tclass._System.nat ($LS ($LS $LZ)) |tail#0@@14|))))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (|_module.__default.Split#canCall| |xs#0@@20| |b##1_0@0|) (let ((|r#0@@0| (_module.__default.Split ($LS $LZ) reveal__module._default.Split |xs#0@@20| |b##1_0@0|)))
 (and (and (and (_System.Tuple2.___hMake2_q |r#0@@0|) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@0|)))) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|)) (=> (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@0|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) |b##1_0@0|))) (and (and (and (_System.Tuple2.___hMake2_q |r#0@@0|) (|_module.__default.Elements#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@0|)))) (|_module.__default.Elements#canCall| Tclass._System.nat |xs#0@@20|)) (=> (|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@0|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) |b##1_0@0|))) (and (and (_System.Tuple2.___hMake2_q |r#0@@0|) (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@0|)))) (=> (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@0|))) (and (_System.Tuple2.___hMake2_q |r#0@@0|) (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@0|)))))))))))) (and (let ((|r#0@@1| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@20| |b##1_0@0|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@1|))) (|Set#FromBoogieMap| (|lambda#14| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) |b##1_0@0|)))) (let ((|r#0@@2| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@20| |b##1_0@0|)))
(|Set#Equal| (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@2|))) (|Set#FromBoogieMap| (|lambda#15| TInt (_module.__default.Elements Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|) |b##1_0@0|)))))) (=> (and (and (and (let ((|r#0@@3| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@20| |b##1_0@0|)))
 (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@3|))) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@3|))) (ite (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@3|))) true (let ((|tail#3@@3| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@3|)))))
(let ((|x#7| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._0 |r#0@@3|)))))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#3@@3|) ($Box intType (int_2_U |x#7|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#3@@3|)))))))) (let ((|r#0@@4| (_module.__default.Split ($LS ($LS $LZ)) reveal__module._default.Split |xs#0@@20| |b##1_0@0|)))
 (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@4|))) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@4|))) (ite (_module.List.Nil_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@4|))) true (let ((|tail#5| (_module.List.tail ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@4|)))))
(let ((|x#9| (U_2_int ($Unbox intType (_module.List.head ($Unbox DatatypeTypeType (_System.Tuple2._1 |r#0@@4|)))))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#5|) ($Box intType (int_2_U |x#9|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#5|))))))))) (and (= $Heap@@0 $Heap@0) ($IsAlloc DatatypeTypeType |L#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@0))) (and (and (|_module.__default.Length#canCall| Tclass._System.nat |L#1_0@0|) (|_module.__default.Length#canCall| Tclass._System.nat |L#1_0@0|)) (and (= |llen#1_0@0| (_module.__default.Length Tclass._System.nat ($LS $LZ) |L#1_0@0|)) (= call0formal@_module._default.Elements_Property$_T0@0 Tclass._System.nat)))) (and (=> (= (ControlFlow 0 70) (- 0 75)) (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (_module.List.Nil_q |L#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (_module.List.Nil_q |L#1_0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 70) (- 0 74)) (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@15| (_module.List.tail |L#1_0@0|)))
(let ((|x#0@@5| (_module.List.head |L#1_0@0|)))
 (not (|Set#IsMember| (_module.__default.Elements call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |tail#0@@15|) |x#0@@5|)))))))) (=> (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@16| (_module.List.tail |L#1_0@0|)))
(let ((|x#0@@6| (_module.List.head |L#1_0@0|)))
 (not (|Set#IsMember| (_module.__default.Elements call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |tail#0@@16|) |x#0@@6|))))))) (and (=> (= (ControlFlow 0 70) (- 0 73)) (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@17| (_module.List.tail |L#1_0@0|)))
(_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |tail#0@@17|)))))) (=> (=> (|_module.__default.NoDuplicates#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (or (_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS $LZ) |L#1_0@0|) (=> (not (_module.List.Nil_q |L#1_0@0|)) (let ((|tail#0@@18| (_module.List.tail |L#1_0@0|)))
(_module.__default.NoDuplicates call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |tail#0@@18|))))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.Elements#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|) (|_module.__default.Length#canCall| call0formal@_module._default.Elements_Property$_T0@0 |L#1_0@0|)) (= (|Set#Card| (_module.__default.Elements call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |L#1_0@0|)) (_module.__default.Length call0formal@_module._default.Elements_Property$_T0@0 ($LS ($LS $LZ)) |L#1_0@0|))) (and (= $Heap@0 $Heap@1) ($IsAlloc intType (int_2_U |n#0@@4|) Tclass._System.nat $Heap@1))) (and (=> (= (ControlFlow 0 70) (- 0 72)) ($Is intType (int_2_U |half#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |half#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |half#1_0@0|) Tclass._System.nat $Heap@1) (=> (and (and (and (|_module.__default.IntRange#canCall| |n#0@@4| |half#1_0@0|) (|_module.__default.IntRange#canCall| |n#0@@4| |half#1_0@0|)) (and (= |bound#1_0@0| (_module.__default.IntRange ($LS $LZ) reveal__module._default.IntRange |n#0@@4| |half#1_0@0|)) ($IsAlloc DatatypeTypeType |L#1_0@0| (Tclass._module.List Tclass._System.nat) $Heap@1))) (and (and (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|) (|_module.__default.Elements#canCall| Tclass._System.nat |L#1_0@0|)) (and (= |A##1_0@0| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |L#1_0@0|)) (= call0formal@_module._default.Cardinality$_T0@0 Tclass._System.nat)))) (and (=> (= (ControlFlow 0 70) (- 0 71)) (|Set#Subset| |A##1_0@0| |bound#1_0@0|)) (=> (|Set#Subset| |A##1_0@0| |bound#1_0@0|) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (<= (|Set#Card| |A##1_0@0|) (|Set#Card| |bound#1_0@0|)) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 70) 15) anon36_Then_correct) (=> (= (ControlFlow 0 70) 59) anon36_Else_correct)))))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.List| |xs#0@@20|)) (and (=> (= (ControlFlow 0 82) 14) anon35_Then_correct) (=> (= (ControlFlow 0 82) 70) anon35_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |xs#0@@20| (Tclass._module.List Tclass._System.nat) $Heap@@0)) (|$IsA#_module.List| |xs#0@@20|)) (and (<= (LitInt 0) |n#0@@4|) (<= (LitInt 0) |len#0@@9|))) (=> (and (and (and (and ($Is SetType |bound#1_0| (TSet Tclass._System.nat)) ($IsAlloc SetType |bound#1_0| (TSet Tclass._System.nat) $Heap@@0)) true) (= 4 $FunctionContextHeight)) (and (and (and (|_module.__default.NoDuplicates#canCall| Tclass._System.nat |xs#0@@20|) (and (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |xs#0@@20|) (ite (_module.List.Nil_q |xs#0@@20|) true (let ((|tail#3@@4| (_module.List.tail |xs#0@@20|)))
(let ((|x#7@@0| (U_2_int ($Unbox intType (_module.List.head |xs#0@@20|)))))
 (and (not (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |tail#3@@4|) ($Box intType (int_2_U |x#7@@0|)))) (_module.__default.NoDuplicates Tclass._System.nat ($LS $LZ) |tail#3@@4|))))))) (forall ((|x#1@@4| T@U) ) (!  (=> (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1@@4|)) (<= |n#0@@4| (U_2_int |x#1@@4|)))
 :qid |SmallestMissingNumberfunctionaldfy.232:19|
 :skolemid |718|
 :pattern ( (|Set#IsMember| (_module.__default.Elements Tclass._System.nat ($LS $LZ) |xs#0@@20|) ($Box intType |x#1@@4|)))
))) (and (= |len#0@@9| (_module.__default.Length Tclass._System.nat ($LS ($LS $LZ)) |xs#0@@20|)) (= (ControlFlow 0 83) 82)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
