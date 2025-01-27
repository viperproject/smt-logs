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
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.plus#Handle| () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Combine (T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Combine#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.__default.add (T@U T@U T@U) T@U)
(declare-fun |_module.__default.add#canCall| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.__default.plus (Int Int) Int)
(declare-fun |_module.__default.plus#canCall| (Int Int) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |_module.__default.plus#requires| (Int Int) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 Tagclass._module.Stream |##_module.Stream.Cons| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| tytagFamily$Stream)
)
(assert (forall (($bx T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) ) (! (= (|Set#IsMember| (Reads2 TInt TInt TInt $heap |_module.__default.plus#Handle| |$fh$0x#0| |$fh$0x#1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (|Set#IsMember| (Reads2 TInt TInt TInt $heap |_module.__default.plus#Handle| |$fh$0x#0| |$fh$0x#1|) $bx))
)))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$T#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (=> (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (and (= (_module.Stream.head d0) (_module.Stream.head d1)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tail d0) (_module.Stream.tail d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |#$T0@@6|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) |#$T1@@7|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@1))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@1))
)))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))
)))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)))
)))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Combine$T T@U) ($ly T@U) ($Heap T@U) (|f#0@@0| T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Combine#canCall| _module._default.Combine$T |f#0@@0| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc2 _module._default.Combine$T _module._default.Combine$T _module._default.Combine$T))) ($Is DatatypeTypeType |a#0| (Tclass._module.Stream _module._default.Combine$T))) ($Is DatatypeTypeType |b#0| (Tclass._module.Stream _module._default.Combine$T))))) (and (and (and (_module.Stream.Cons_q |a#0|) (_module.Stream.Cons_q |b#0|)) (and (and (_module.Stream.Cons_q |a#0|) (_module.Stream.Cons_q |b#0|)) (|_module.__default.Combine#canCall| _module._default.Combine$T |f#0@@0| (_module.Stream.tail |a#0|) (_module.Stream.tail |b#0|)))) (= (_module.__default.Combine _module._default.Combine$T ($LS $ly) |f#0@@0| |a#0| |b#0|) (|#_module.Stream.Cons| (Apply2 _module._default.Combine$T _module._default.Combine$T _module._default.Combine$T $Heap |f#0@@0| (_module.Stream.head |a#0|) (_module.Stream.head |b#0|)) (_module.__default.Combine _module._default.Combine$T $ly |f#0@@0| (_module.Stream.tail |a#0|) (_module.Stream.tail |b#0|))))))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (_module.__default.Combine _module._default.Combine$T ($LS $ly) |f#0@@0| |a#0| |b#0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@15| $OneHeap |f#0@@1| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#14#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#14#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0@@0| (Tclass._module.Stream TInt))))) (and (and (and (_module.Stream.Cons_q |a#0@@0|) (_module.Stream.Cons_q |b#0@@0|)) (and (and (_module.Stream.Cons_q |a#0@@0|) (_module.Stream.Cons_q |b#0@@0|)) (|_module.__default.add#canCall| (_module.Stream.tail |a#0@@0|) (_module.Stream.tail |b#0@@0|)))) (= (_module.__default.add ($LS $ly@@0) |a#0@@0| |b#0@@0|) (|#_module.Stream.Cons| ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (_module.Stream.head |a#0@@0|))) (U_2_int ($Unbox intType (_module.Stream.head |b#0@@0|)))))) (_module.__default.add $ly@@0 (_module.Stream.tail |a#0@@0|) (_module.Stream.tail |b#0@@0|))))))
 :qid |Abstemiousdfy.93:24|
 :skolemid |687|
 :pattern ( (_module.__default.add ($LS $ly@@0) |a#0@@0| |b#0@@0|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) (|y#0| Int) ) (!  (=> (or (|_module.__default.plus#canCall| (LitInt |x#0|) (LitInt |y#0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.plus (LitInt |x#0|) (LitInt |y#0|)) (LitInt (+ |x#0| |y#0|))))
 :qid |Abstemiousdfy.48:15|
 :weight 3
 :skolemid |630|
 :pattern ( (_module.__default.plus (LitInt |x#0|) (LitInt |y#0|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#13#0#0| |a#13#1#0|))
 :qid |Abstemiousdfy.51:29|
 :skolemid |800|
)))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.Combine$T@@0 T@U) ($ly@@1 T@U) (|f#0@@2| T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.Combine#canCall| _module._default.Combine$T@@0 |f#0@@2| |a#0@@1| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@0 _module._default.Combine$T@@0 _module._default.Combine$T@@0)) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@0 _module._default.Combine$T@@0 _module._default.Combine$T@@0) $Heap@@0)) (and ($Is DatatypeTypeType |a#0@@1| (Tclass._module.Stream _module._default.Combine$T@@0)) ($IsAlloc DatatypeTypeType |a#0@@1| (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@0))) (and ($Is DatatypeTypeType |b#0@@1| (Tclass._module.Stream _module._default.Combine$T@@0)) ($IsAlloc DatatypeTypeType |b#0@@1| (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@0 $ly@@1 |f#0@@2| |a#0@@1| |b#0@@1|) (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@0))
 :qid |Abstemiousdfy.119:3|
 :skolemid |720|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@0 $ly@@1 |f#0@@2| |a#0@@1| |b#0@@1|) (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@0))
))))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@2))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@2 p@@0)) (|ORD#IsNat| o@@2)) (= (|ORD#Offset| (|ORD#Minus| o@@2 p@@0)) (- (|ORD#Offset| o@@2) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@2 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall (($ly@@2 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (! (= (_module.__default.add ($LS $ly@@2) |a#0@@2| |b#0@@2|) (_module.__default.add $ly@@2 |a#0@@2| |b#0@@2|))
 :qid |Abstemiousdfy.93:24|
 :skolemid |683|
 :pattern ( (_module.__default.add ($LS $ly@@2) |a#0@@2| |b#0@@2|))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 5) (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0) (forall ((bx0 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h@@0)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h@@0))) (Requires2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
 :pattern ( (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0))
)))
(assert (forall ((|x#0@@0| Int) (|y#0@@0| Int) ) (! (= (|_module.__default.plus#requires| |x#0@@0| |y#0@@0|) true)
 :qid |Abstemiousdfy.48:15|
 :skolemid |628|
 :pattern ( (|_module.__default.plus#requires| |x#0@@0| |y#0@@0|))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
(assert (forall ((f@@0 T@U) (t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)) (forall ((h@@1 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1))) (Requires2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0)) ($IsBox (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|y#0@@1| Int) ) (!  (=> (or (|_module.__default.plus#canCall| |x#0@@1| |y#0@@1|) (< 0 $FunctionContextHeight)) (= (_module.__default.plus |x#0@@1| |y#0@@1|) (+ |x#0@@1| |y#0@@1|)))
 :qid |Abstemiousdfy.48:15|
 :skolemid |629|
 :pattern ( (_module.__default.plus |x#0@@1| |y#0@@1|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap T@U) (f@@1 T@U) (bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and ($IsBox bx0@@1 t0@@2) ($IsBox bx1@@1 t1@@2)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@2 t1@@2 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) ($IsGoodHeap heap))
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2)) (forall ((bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@2 t0@@3 h@@2) ($IsAllocBox bx1@@2 t1@@3 h@@2)) (Requires2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2)) ($IsAllocBox (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2) t2@@2 h@@2))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (Requires2 TInt TInt TInt $heap@@0 |_module.__default.plus#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0|) (|_module.__default.plus#requires| (U_2_int ($Unbox intType |$fh$0x#0@@0|)) (U_2_int ($Unbox intType |$fh$0x#1@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( (Requires2 TInt TInt TInt $heap@@0 |_module.__default.plus#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|)) |##_module.Stream.Cons|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |798|
 :pattern ( (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#0#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |806|
 :pattern ( (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|)) |a#16#1#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |807|
 :pattern ( (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@2) (or (not (= o@@5 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@5 p@@2))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@5 p@@2) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@5 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@2))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (heap@@0 T@U) (f@@3 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and ($IsBox bx0@@3 t0@@4) ($IsBox bx1@@3 t1@@4)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@4 t1@@4 t2@@3)))) (|Set#Equal| (Reads2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3))
)))
(assert (forall ((f@@4 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u0@@0) ($IsBox bx@@3 t0@@5))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@3 u0@@0))
 :pattern ( ($IsBox bx@@3 t0@@5))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 u1@@0) ($IsBox bx@@4 t1@@5))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@4 u1@@0))
 :pattern ( ($IsBox bx@@4 t1@@5))
))) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 t2@@4) ($IsBox bx@@5 u2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@5 t2@@4))
 :pattern ( ($IsBox bx@@5 u2))
))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
)))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@3) $h))) ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@6 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@6 t2@@5 (MapType1Store t0@@6 t1@@6 t2@@5 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |821|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@16| T@U) (|#$R@@16| T@U) (|f#0@@3| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@0))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@17| T@U) (|#$R@@17| T@U) (|f#0@@4| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Combine$T@@1 T@U) ($ly@@3 T@U) (|f#0@@5| T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.Combine#canCall| _module._default.Combine$T@@1 |f#0@@5| |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@1 _module._default.Combine$T@@1 _module._default.Combine$T@@1)) ($Is DatatypeTypeType |a#0@@3| (Tclass._module.Stream _module._default.Combine$T@@1))) ($Is DatatypeTypeType |b#0@@3| (Tclass._module.Stream _module._default.Combine$T@@1))))) ($Is DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@1 $ly@@3 |f#0@@5| |a#0@@3| |b#0@@3|) (Tclass._module.Stream _module._default.Combine$T@@1)))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.__default.Combine _module._default.Combine$T@@1 $ly@@3 |f#0@@5| |a#0@@3| |b#0@@3|))
))))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0@@4| |b#0@@4|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@4| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0@@4| (Tclass._module.Stream TInt))))) ($Is DatatypeTypeType (_module.__default.add $ly@@4 |a#0@@4| |b#0@@4|) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.93:24|
 :skolemid |685|
 :pattern ( (_module.__default.add $ly@@4 |a#0@@4| |b#0@@4|))
))))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@5) $h@@2))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@2))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@2))
)))
(assert (forall ((o@@7 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@7))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@3) o@@7)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@3) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@3))
)))
(assert (forall (($heap@@1 T@U) (|$fh$0x#0@@1| Int) (|$fh$0x#1@@1| Int) ) (! (= (_module.__default.plus |$fh$0x#0@@1| |$fh$0x#1@@1|) (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $heap@@1 |_module.__default.plus#Handle| ($Box intType (int_2_U |$fh$0x#0@@1|)) ($Box intType (int_2_U |$fh$0x#1@@1|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |608|
 :pattern ( (_module.__default.plus |$fh$0x#0@@1| |$fh$0x#1@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (Apply2 TInt TInt TInt $heap@@2 |_module.__default.plus#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2|) ($Box intType (int_2_U (_module.__default.plus (U_2_int ($Unbox intType |$fh$0x#0@@2|)) (U_2_int ($Unbox intType |$fh$0x#1@@2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |605|
 :pattern ( (Apply2 TInt TInt TInt $heap@@2 |_module.__default.plus#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2|))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@0 o@@8) (|Set#IsMember| b@@0 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@8))
 :pattern ( (|Set#IsMember| b@@0 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((_module._default.Combine$T@@2 T@U) ($ly@@5 T@U) (|f#0@@6| T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (! (= (_module.__default.Combine _module._default.Combine$T@@2 ($LS $ly@@5) |f#0@@6| |a#0@@5| |b#0@@5|) (_module.__default.Combine _module._default.Combine$T@@2 $ly@@5 |f#0@@6| |a#0@@5| |b#0@@5|))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (_module.__default.Combine _module._default.Combine$T@@2 ($LS $ly@@5) |f#0@@6| |a#0@@5| |b#0@@5|))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@3)  (and ($IsAllocBox |a#14#0#0@@0| _module.Stream$T@@6 $h@@3) ($IsAlloc DatatypeTypeType |a#14#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0@@6| () T@U)
(declare-fun |b#0@@6| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.CombinePlus__Correct)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@1 $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= 0 $FunctionContextHeight)) (not true))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is DatatypeTypeType |a#0@@6| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |a#0@@6| (Tclass._module.Stream TInt) $Heap@@1)) (|$IsA#_module.Stream| |a#0@@6|)) (=> (and (and (and ($Is DatatypeTypeType |b#0@@6| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |b#0@@6| (Tclass._module.Stream TInt) $Heap@@1)) (|$IsA#_module.Stream| |b#0@@6|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
