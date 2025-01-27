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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Increasing (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Increasing#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun _module.__default.Tail (T@U T@U T@U Int) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.Tail#canCall| (T@U T@U Int) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.IncrFrom (T@U T@U T@U Int T@U) Bool)
(declare-fun _module.__default.IncrFrom_h (T@U T@U Int T@U Int T@U) Bool)
(declare-fun _module.__default.AlwaysAnother_h (T@U T@U T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.AlwaysAnother_h#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.IsAnother#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.IsAnother (T@U T@U T@U) Bool)
(declare-fun _module.__default.Increasing_h (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Increasing_h#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.Filter (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Filter#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.AlwaysAnother (T@U T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.AlwaysAnother#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.IncrFrom_h#canCall| (T@U Int T@U Int T@U) Bool)
(declare-fun |_module.__default.IncrFrom#canCall| (T@U T@U Int T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Stream |##_module.Stream.Cons| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Stream)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor HandleTypeType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Increasing$_T0 T@U) ($ly T@U) ($Heap T@U) (|s#0| T@U) (|ord#0| T@U) ) (!  (=> (or (|_module.__default.Increasing#canCall| _module._default.Increasing$_T0 |s#0| |ord#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.Increasing$_T0))) ($Is HandleTypeType |ord#0| (Tclass._System.___hTotalFunc1 _module._default.Increasing$_T0 TInt))))) (and (and (and (_module.Stream.Cons_q |s#0|) (and (_module.Stream.Cons_q |s#0|) (_module.Stream.Cons_q (_module.Stream.tail |s#0|)))) (=> (< (U_2_int ($Unbox intType (Apply1 _module._default.Increasing$_T0 TInt $Heap |ord#0| (_module.Stream.head |s#0|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Increasing$_T0 TInt $Heap |ord#0| (_module.Stream.head (_module.Stream.tail |s#0|)))))) (and (_module.Stream.Cons_q |s#0|) (|_module.__default.Increasing#canCall| _module._default.Increasing$_T0 (_module.Stream.tail |s#0|) |ord#0|)))) (= (_module.__default.Increasing _module._default.Increasing$_T0 ($LS $ly) |s#0| |ord#0|)  (and (< (U_2_int ($Unbox intType (Apply1 _module._default.Increasing$_T0 TInt $Heap |ord#0| (_module.Stream.head |s#0|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Increasing$_T0 TInt $Heap |ord#0| (_module.Stream.head (_module.Stream.tail |s#0|)))))) (_module.__default.Increasing _module._default.Increasing$_T0 $ly (_module.Stream.tail |s#0|) |ord#0|)))))
 :qid |unknown.0:0|
 :skolemid |1119|
 :pattern ( (_module.__default.Increasing _module._default.Increasing$_T0 ($LS $ly) |s#0| |ord#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0 T@U) ($ly@@0 T@U) (|s#0@@0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0 (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.Tail$_T0)) (<= (LitInt 0) |n#0|)))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@0|)) (|_module.__default.Tail#canCall| _module._default.Tail$_T0 (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|))) (LitInt (- |n#0| 1))))) (= (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0|)) (ite (= (LitInt |n#0|) (LitInt 0)) |s#0@@0| (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@0|))) (LitInt (- |n#0| 1)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |648|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |s#0@@0|) (LitInt |n#0|)))
))))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |1210|
 :pattern ( (|$IsA#_module.Stream| d))
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
 :skolemid |1211|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@0 T@U) ($ly@@1 T@U) (|s#0@@1| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 |s#0@@1| |n#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.Tail$_T0@@0)) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@1|) (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@0 (_module.Stream.tail |s#0@@1|) (- |n#0@@0| 1)))) (= (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@1) |s#0@@1| |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |s#0@@1| (_module.__default.Tail _module._default.Tail$_T0@@0 $ly@@1 (_module.Stream.tail |s#0@@1|) (- |n#0@@0| 1))))))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@0 ($LS $ly@@1) |s#0@@1| |n#0@@0|))
))))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0| T@U) ($ly@@2 T@U) (|s#0@@2| T@U) (|low#0| Int) (|ord#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream |_module._default.IncrFrom#$_T0|)) ($Is HandleTypeType |ord#0@@0| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0| TInt))) (forall ((|_k#0| Int) ) (!  (=> (<= (LitInt 0) |_k#0|) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0| ($LS $ly@@2) |_k#0| |s#0@@2| |low#0| |ord#0@@0|))
 :qid |Filterdfy.236:20|
 :skolemid |1143|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0| ($LS $ly@@2) |_k#0| |s#0@@2| |low#0| |ord#0@@0|))
))) (_module.__default.IncrFrom |_module._default.IncrFrom#$_T0| ($LS $ly@@2) |s#0@@2| |low#0| |ord#0@@0|))
 :qid |unknown.0:0|
 :skolemid |1145|
 :pattern ( (_module.__default.IncrFrom |_module._default.IncrFrom#$_T0| ($LS $ly@@2) |s#0@@2| |low#0| |ord#0@@0|))
))))
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0| T@U) ($ly@@3 T@U) (|_k#0@@0| T@U) (|s#0@@3| T@U) (|P#0| T@U) ) (!  (=> (or (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0| (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0|)) ($Is HandleTypeType |P#0| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0| TBool))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (|_module.__default.IsAnother#canCall| |_module._default.AlwaysAnother#$_T0| (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0| (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|))))) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@3|)) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@3|))) (Lit HandleTypeType |P#0|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0| (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|)) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@3|))) (Lit HandleTypeType |P#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@0|) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0| |_k'#2| |s#0@@3| |P#0|))
 :qid |Filterdfy.81:20|
 :skolemid |817|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) |_k'#2| |s#0@@3| |P#0|))
))))) (= (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0| (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|)) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@3|))) (Lit HandleTypeType |P#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@0|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) |_k'#2@@0| |s#0@@3| |P#0|))
 :qid |Filterdfy.81:20|
 :skolemid |816|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) |_k'#2@@0| |s#0@@3| |P#0|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |818|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0| ($LS $ly@@3) (Lit BoxType |_k#0@@0|) (Lit DatatypeTypeType |s#0@@3|) (Lit HandleTypeType |P#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0| T@U) ($ly@@4 T@U) ($Heap@@0 T@U) (|_k#0@@1| T@U) (|s#0@@4| T@U) (|ord#0@@1| T@U) ) (!  (=> (or (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0| (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@4|) (Lit HandleTypeType |ord#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream |_module._default.Increasing#$_T0|))) ($Is HandleTypeType |ord#0@@1| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0| TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@4|)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@4|)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|)))))) (=> (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@4|)))))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))))))))) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@4|)) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))) (Lit HandleTypeType |ord#0@@1|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@4|)))))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))))))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))) (Lit HandleTypeType |ord#0@@1|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@1| |_k#0@@1|) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0| |_k'#2@@1| |s#0@@4| |ord#0@@1|))
 :qid |Filterdfy.232:20|
 :skolemid |1136|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) |_k'#2@@1| |s#0@@4| |ord#0@@1|))
))))) (= (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@4|) (Lit HandleTypeType |ord#0@@1|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@4|)))))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0| TInt $Heap@@0 (Lit HandleTypeType |ord#0@@1|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))))))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@4|))) (Lit HandleTypeType |ord#0@@1|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@2| |_k#0@@1|) (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) |_k'#2@@2| |s#0@@4| |ord#0@@1|))
 :qid |Filterdfy.232:20|
 :skolemid |1135|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) |_k'#2@@2| |s#0@@4| |ord#0@@1|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1137|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0| ($LS $ly@@4) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@4|) (Lit HandleTypeType |ord#0@@1|)) ($IsGoodHeap $Heap@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@1 T@U) ($ly@@5 T@U) (|s#0@@5| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@1 |s#0@@5| |n#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.Tail$_T0@@1)) (<= (LitInt 0) |n#0@@1|)))) ($Is DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@1 $ly@@5 |s#0@@5| |n#0@@1|) (Tclass._module.Stream _module._default.Tail$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@1 $ly@@5 |s#0@@5| |n#0@@1|))
))))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.IsAnother$_T0 T@U) ($Heap@@1 T@U) (|s#0@@6| T@U) (|P#0@@0| T@U) ) (!  (=> (or (|_module.__default.IsAnother#canCall| _module._default.IsAnother$_T0 |s#0@@6| |P#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.IsAnother$_T0))) ($Is HandleTypeType |P#0@@0| (Tclass._System.___hTotalFunc1 _module._default.IsAnother$_T0 TBool))))) (and (forall ((|n#0@@2| Int) ) (!  (=> (<= (LitInt 0) |n#0@@2|) (=> (<= (LitInt 0) |n#0@@2|) (and (|_module.__default.Tail#canCall| _module._default.IsAnother$_T0 |s#0@@6| |n#0@@2|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.IsAnother$_T0 ($LS $LZ) |s#0@@6| |n#0@@2|)))))
 :qid |Filterdfy.79:10|
 :skolemid |786|
 :pattern ( (_module.__default.Tail _module._default.IsAnother$_T0 ($LS $LZ) |s#0@@6| |n#0@@2|))
)) (= (_module.__default.IsAnother _module._default.IsAnother$_T0 |s#0@@6| |P#0@@0|) (exists ((|n#0@@3| Int) ) (!  (and (<= (LitInt 0) |n#0@@3|) (and (<= (LitInt 0) |n#0@@3|) (U_2_bool ($Unbox boolType (Apply1 _module._default.IsAnother$_T0 TBool $Heap@@1 |P#0@@0| (_module.Stream.head (_module.__default.Tail _module._default.IsAnother$_T0 ($LS $LZ) |s#0@@6| |n#0@@3|)))))))
 :qid |Filterdfy.79:10|
 :skolemid |785|
 :pattern ( (_module.__default.Tail _module._default.IsAnother$_T0 ($LS $LZ) |s#0@@6| |n#0@@3|))
)))))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (_module.__default.IsAnother _module._default.IsAnother$_T0 |s#0@@6| |P#0@@0|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Tail$_T0@@2 T@U) ($ly@@6 T@U) (|s#0@@7| T@U) (|n#0@@4| Int) ) (!  (=> (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 |s#0@@7| (LitInt |n#0@@4|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream _module._default.Tail$_T0@@2)) (<= (LitInt 0) |n#0@@4|)))) (and (=> (or (not (= (LitInt |n#0@@4|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@7|) (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@2 (_module.Stream.tail |s#0@@7|) (LitInt (- |n#0@@4| 1))))) (= (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@6) |s#0@@7| (LitInt |n#0@@4|)) (ite (= (LitInt |n#0@@4|) (LitInt 0)) |s#0@@7| (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@6) (_module.Stream.tail |s#0@@7|) (LitInt (- |n#0@@4| 1)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |647|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@2 ($LS $ly@@6) |s#0@@7| (LitInt |n#0@@4|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.Filter$_T0 T@U) ($ly@@7 T@U) (|s#0@@8| T@U) (|P#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.Filter#canCall| _module._default.Filter$_T0 |s#0@@8| |P#0@@1|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |s#0@@8| (Tclass._module.Stream _module._default.Filter$_T0)) ($IsAlloc DatatypeTypeType |s#0@@8| (Tclass._module.Stream _module._default.Filter$_T0) $Heap@@2)) (and ($Is HandleTypeType |P#0@@1| (Tclass._System.___hTotalFunc1 _module._default.Filter$_T0 TBool)) ($IsAlloc HandleTypeType |P#0@@1| (Tclass._System.___hTotalFunc1 _module._default.Filter$_T0 TBool) $Heap@@2))) (_module.__default.AlwaysAnother _module._default.Filter$_T0 ($LS $LZ) |s#0@@8| |P#0@@1|)))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.__default.Filter _module._default.Filter$_T0 $ly@@7 |s#0@@8| |P#0@@1|) (Tclass._module.Stream _module._default.Filter$_T0) $Heap@@2))
 :qid |Filterdfy.120:16|
 :skolemid |902|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Filter _module._default.Filter$_T0 $ly@@7 |s#0@@8| |P#0@@1|) (Tclass._module.Stream _module._default.Filter$_T0) $Heap@@2))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((_module._default.Filter$_T0@@0 T@U) ($ly@@8 T@U) (|s#0@@9| T@U) (|P#0@@2| T@U) ) (!  (=> (or (|_module.__default.Filter#canCall| _module._default.Filter$_T0@@0 |s#0@@9| |P#0@@2|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.Filter$_T0@@0)) ($Is HandleTypeType |P#0@@2| (Tclass._System.___hTotalFunc1 _module._default.Filter$_T0@@0 TBool))) (_module.__default.AlwaysAnother _module._default.Filter$_T0@@0 ($LS $LZ) |s#0@@9| |P#0@@2|)))) ($Is DatatypeTypeType (_module.__default.Filter _module._default.Filter$_T0@@0 $ly@@8 |s#0@@9| |P#0@@2|) (Tclass._module.Stream _module._default.Filter$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (_module.__default.Filter _module._default.Filter$_T0@@0 $ly@@8 |s#0@@9| |P#0@@2|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Filterdfy.4:29|
 :skolemid |1202|
)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |640|
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
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.IsAnother$_T0@@0 T@U) ($Heap@@3 T@U) (|s#0@@10| T@U) (|P#0@@3| T@U) ) (!  (=> (or (|_module.__default.IsAnother#canCall| _module._default.IsAnother$_T0@@0 (Lit DatatypeTypeType |s#0@@10|) (Lit HandleTypeType |P#0@@3|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |s#0@@10| (Tclass._module.Stream _module._default.IsAnother$_T0@@0))) ($Is HandleTypeType |P#0@@3| (Tclass._System.___hTotalFunc1 _module._default.IsAnother$_T0@@0 TBool))))) (and (forall ((|n#1| Int) ) (!  (=> (<= (LitInt 0) |n#1|) (=> (<= (LitInt 0) |n#1|) (and (|_module.__default.Tail#canCall| _module._default.IsAnother$_T0@@0 (Lit DatatypeTypeType |s#0@@10|) |n#1|) (_module.Stream.Cons_q (_module.__default.Tail _module._default.IsAnother$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@10|) |n#1|)))))
 :qid |Filterdfy.79:10|
 :skolemid |789|
 :pattern ( (_module.__default.Tail _module._default.IsAnother$_T0@@0 ($LS $LZ) |s#0@@10| |n#1|))
)) (= (_module.__default.IsAnother _module._default.IsAnother$_T0@@0 (Lit DatatypeTypeType |s#0@@10|) (Lit HandleTypeType |P#0@@3|)) (exists ((|n#1@@0| Int) ) (!  (and (<= (LitInt 0) |n#1@@0|) (and (<= (LitInt 0) |n#1@@0|) (U_2_bool ($Unbox boolType (Apply1 _module._default.IsAnother$_T0@@0 TBool $Heap@@3 (Lit HandleTypeType |P#0@@3|) (_module.Stream.head (_module.__default.Tail _module._default.IsAnother$_T0@@0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@10|) |n#1@@0|)))))))
 :qid |Filterdfy.79:10|
 :skolemid |788|
 :pattern ( (_module.__default.Tail _module._default.IsAnother$_T0@@0 ($LS $LZ) |s#0@@10| |n#1@@0|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |790|
 :pattern ( (_module.__default.IsAnother _module._default.IsAnother$_T0@@0 (Lit DatatypeTypeType |s#0@@10|) (Lit HandleTypeType |P#0@@3|)) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module._default.AlwaysAnother$_T0 T@U) ($ly@@9 T@U) (|s#0@@11| T@U) (|P#0@@4| T@U) ) (!  (=> (or (|_module.__default.AlwaysAnother#canCall| _module._default.AlwaysAnother$_T0 |s#0@@11| |P#0@@4|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@11| (Tclass._module.Stream _module._default.AlwaysAnother$_T0)) ($Is HandleTypeType |P#0@@4| (Tclass._System.___hTotalFunc1 _module._default.AlwaysAnother$_T0 TBool))))) (and (and (|_module.__default.IsAnother#canCall| _module._default.AlwaysAnother$_T0 |s#0@@11| |P#0@@4|) (=> (_module.__default.IsAnother _module._default.AlwaysAnother$_T0 |s#0@@11| |P#0@@4|) (and (_module.Stream.Cons_q |s#0@@11|) (|_module.__default.AlwaysAnother#canCall| _module._default.AlwaysAnother$_T0 (_module.Stream.tail |s#0@@11|) |P#0@@4|)))) (= (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0 ($LS $ly@@9) |s#0@@11| |P#0@@4|)  (and (_module.__default.IsAnother _module._default.AlwaysAnother$_T0 |s#0@@11| |P#0@@4|) (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0 $ly@@9 (_module.Stream.tail |s#0@@11|) |P#0@@4|)))))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0 ($LS $ly@@9) |s#0@@11| |P#0@@4|))
))))
(assert (forall ((|_module._default.IncrFrom#$_T0@@0| T@U) ($ly@@10 T@U) (|_k#0@@2| Int) (|s#0@@12| T@U) (|low#0@@0| Int) (|ord#0@@2| T@U) ) (! (= (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@0| ($LS $ly@@10) |_k#0@@2| |s#0@@12| |low#0@@0| |ord#0@@2|) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@0| $ly@@10 |_k#0@@2| |s#0@@12| |low#0@@0| |ord#0@@2|))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@0| ($LS $ly@@10) |_k#0@@2| |s#0@@12| |low#0@@0| |ord#0@@2|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (_module._default.Tail$_T0@@3 T@U) ($ly@@11 T@U) (|s#0@@13| T@U) (|n#0@@5| Int) ) (!  (=> (and (or (|_module.__default.Tail#canCall| _module._default.Tail$_T0@@3 |s#0@@13| |n#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@13| (Tclass._module.Stream _module._default.Tail$_T0@@3)) ($IsAlloc DatatypeTypeType |s#0@@13| (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@4)) (<= (LitInt 0) |n#0@@5|)))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@11 |s#0@@13| |n#0@@5|) (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@4))
 :qid |Filterdfy.6:16|
 :skolemid |644|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Tail _module._default.Tail$_T0@@3 $ly@@11 |s#0@@13| |n#0@@5|) (Tclass._module.Stream _module._default.Tail$_T0@@3) $Heap@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0@@0| T@U) ($ly@@12 T@U) (|s#0@@14| T@U) (|ord#0@@3| T@U) (|_k#0@@3| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@14| (Tclass._module.Stream |_module._default.Increasing#$_T0@@0|)) ($Is HandleTypeType |ord#0@@3| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0@@0| TInt))) (= |_k#0@@3| (|ORD#FromNat| 0))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@0| $ly@@12 |_k#0@@3| |s#0@@14| |ord#0@@3|))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@0| $ly@@12 |_k#0@@3| |s#0@@14| |ord#0@@3|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0@@0| T@U) ($ly@@13 T@U) (|s#0@@15| T@U) (|P#0@@5| T@U) (|_k#0@@4| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@15| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0@@0|)) ($Is HandleTypeType |P#0@@5| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0@@0| TBool))) (= |_k#0@@4| (|ORD#FromNat| 0))) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@0| $ly@@13 |_k#0@@4| |s#0@@15| |P#0@@5|))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@0| $ly@@13 |_k#0@@4| |s#0@@15| |P#0@@5|))
))))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0@@1| T@U) ($ly@@14 T@U) ($Heap@@5 T@U) (|_k#0@@5| Int) (|s#0@@16| T@U) (|low#0@@1| Int) (|ord#0@@4| T@U) ) (!  (=> (or (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@1| |_k#0@@5| |s#0@@16| |low#0@@1| |ord#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) (<= (LitInt 0) |_k#0@@5|)) ($Is DatatypeTypeType |s#0@@16| (Tclass._module.Stream |_module._default.IncrFrom#$_T0@@1|))) ($Is HandleTypeType |ord#0@@4| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0@@1| TInt))))) (and (=> (< 0 |_k#0@@5|) (and (_module.Stream.Cons_q |s#0@@16|) (=> (<= |low#0@@1| (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@1| TInt $Heap@@5 |ord#0@@4| (_module.Stream.head |s#0@@16|))))) (and (and (_module.Stream.Cons_q |s#0@@16|) (_module.Stream.Cons_q |s#0@@16|)) (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@1| (- |_k#0@@5| 1) (_module.Stream.tail |s#0@@16|) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@1| TInt $Heap@@5 |ord#0@@4| (_module.Stream.head |s#0@@16|)))) 1) |ord#0@@4|))))) (= (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@1| ($LS $ly@@14) |_k#0@@5| |s#0@@16| |low#0@@1| |ord#0@@4|)  (=> (< 0 |_k#0@@5|) (and (<= |low#0@@1| (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@1| TInt $Heap@@5 |ord#0@@4| (_module.Stream.head |s#0@@16|))))) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@1| $ly@@14 (- |_k#0@@5| 1) (_module.Stream.tail |s#0@@16|) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@1| TInt $Heap@@5 |ord#0@@4| (_module.Stream.head |s#0@@16|)))) 1) |ord#0@@4|))))))
 :qid |unknown.0:0|
 :skolemid |1152|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@1| ($LS $ly@@14) |_k#0@@5| |s#0@@16| |low#0@@1| |ord#0@@4|) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.IncrFrom$_T0 T@U) ($ly@@15 T@U) ($Heap@@6 T@U) (|s#0@@17| T@U) (|low#0@@2| Int) (|ord#0@@5| T@U) ) (!  (=> (or (|_module.__default.IncrFrom#canCall| _module._default.IncrFrom$_T0 |s#0@@17| |low#0@@2| |ord#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |s#0@@17| (Tclass._module.Stream _module._default.IncrFrom$_T0))) ($Is HandleTypeType |ord#0@@5| (Tclass._System.___hTotalFunc1 _module._default.IncrFrom$_T0 TInt))))) (and (and (_module.Stream.Cons_q |s#0@@17|) (=> (<= |low#0@@2| (U_2_int ($Unbox intType (Apply1 _module._default.IncrFrom$_T0 TInt $Heap@@6 |ord#0@@5| (_module.Stream.head |s#0@@17|))))) (and (and (_module.Stream.Cons_q |s#0@@17|) (_module.Stream.Cons_q |s#0@@17|)) (|_module.__default.IncrFrom#canCall| _module._default.IncrFrom$_T0 (_module.Stream.tail |s#0@@17|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.IncrFrom$_T0 TInt $Heap@@6 |ord#0@@5| (_module.Stream.head |s#0@@17|)))) 1) |ord#0@@5|)))) (= (_module.__default.IncrFrom _module._default.IncrFrom$_T0 ($LS $ly@@15) |s#0@@17| |low#0@@2| |ord#0@@5|)  (and (<= |low#0@@2| (U_2_int ($Unbox intType (Apply1 _module._default.IncrFrom$_T0 TInt $Heap@@6 |ord#0@@5| (_module.Stream.head |s#0@@17|))))) (_module.__default.IncrFrom _module._default.IncrFrom$_T0 $ly@@15 (_module.Stream.tail |s#0@@17|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.IncrFrom$_T0 TInt $Heap@@6 |ord#0@@5| (_module.Stream.head |s#0@@17|)))) 1) |ord#0@@5|)))))
 :qid |unknown.0:0|
 :skolemid |1142|
 :pattern ( (_module.__default.IncrFrom _module._default.IncrFrom$_T0 ($LS $ly@@15) |s#0@@17| |low#0@@2| |ord#0@@5|) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0@@1| T@U) ($ly@@16 T@U) ($Heap@@7 T@U) (|_k#0@@6| T@U) (|s#0@@18| T@U) (|ord#0@@6| T@U) ) (!  (=> (or (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@1| |_k#0@@6| |s#0@@18| |ord#0@@6|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@7) ($Is DatatypeTypeType |s#0@@18| (Tclass._module.Stream |_module._default.Increasing#$_T0@@1|))) ($Is HandleTypeType |ord#0@@6| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0@@1| TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (and (_module.Stream.Cons_q |s#0@@18|) (and (_module.Stream.Cons_q |s#0@@18|) (_module.Stream.Cons_q (_module.Stream.tail |s#0@@18|)))) (=> (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head |s#0@@18|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head (_module.Stream.tail |s#0@@18|)))))) (and (_module.Stream.Cons_q |s#0@@18|) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@1| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@18|) |ord#0@@6|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head |s#0@@18|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head (_module.Stream.tail |s#0@@18|)))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| $ly@@16 (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@18|) |ord#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@6|) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@1| |_k'#0| |s#0@@18| |ord#0@@6|))
 :qid |Filterdfy.232:20|
 :skolemid |1130|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| $ly@@16 |_k'#0| |s#0@@18| |ord#0@@6|))
))))) (= (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| ($LS $ly@@16) |_k#0@@6| |s#0@@18| |ord#0@@6|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head |s#0@@18|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@1| TInt $Heap@@7 |ord#0@@6| (_module.Stream.head (_module.Stream.tail |s#0@@18|)))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| $ly@@16 (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@18|) |ord#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@6|) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| $ly@@16 |_k'#0@@0| |s#0@@18| |ord#0@@6|))
 :qid |Filterdfy.232:20|
 :skolemid |1129|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| $ly@@16 |_k'#0@@0| |s#0@@18| |ord#0@@6|))
)))))))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@1| ($LS $ly@@16) |_k#0@@6| |s#0@@18| |ord#0@@6|) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0@@1| T@U) ($ly@@17 T@U) (|_k#0@@7| T@U) (|s#0@@19| T@U) (|P#0@@6| T@U) ) (!  (=> (or (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@1| |_k#0@@7| |s#0@@19| |P#0@@6|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@19| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0@@1|)) ($Is HandleTypeType |P#0@@6| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0@@1| TBool))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (and (|_module.__default.IsAnother#canCall| |_module._default.AlwaysAnother#$_T0@@1| |s#0@@19| |P#0@@6|) (=> (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@1| |s#0@@19| |P#0@@6|) (and (_module.Stream.Cons_q |s#0@@19|) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@1| (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@19|) |P#0@@6|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@1| |s#0@@19| |P#0@@6|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| $ly@@17 (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@19|) |P#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k#0@@7|) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@1| |_k'#0@@1| |s#0@@19| |P#0@@6|))
 :qid |Filterdfy.81:20|
 :skolemid |811|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| $ly@@17 |_k'#0@@1| |s#0@@19| |P#0@@6|))
))))) (= (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| ($LS $ly@@17) |_k#0@@7| |s#0@@19| |P#0@@6|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@1| |s#0@@19| |P#0@@6|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| $ly@@17 (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@19|) |P#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@2| |_k#0@@7|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| $ly@@17 |_k'#0@@2| |s#0@@19| |P#0@@6|))
 :qid |Filterdfy.81:20|
 :skolemid |810|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| $ly@@17 |_k'#0@@2| |s#0@@19| |P#0@@6|))
)))))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@1| ($LS $ly@@17) |_k#0@@7| |s#0@@19| |P#0@@6|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0@@2| T@U) ($ly@@18 T@U) (|s#0@@20| T@U) (|ord#0@@7| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@20| (Tclass._module.Stream |_module._default.Increasing#$_T0@@2|)) ($Is HandleTypeType |ord#0@@7| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0@@2| TInt))) (forall ((|_k#0@@8| T@U) ) (! (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@2| ($LS $ly@@18) |_k#0@@8| |s#0@@20| |ord#0@@7|)
 :qid |Filterdfy.232:20|
 :skolemid |1120|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@2| ($LS $ly@@18) |_k#0@@8| |s#0@@20| |ord#0@@7|))
))) (_module.__default.Increasing |_module._default.Increasing#$_T0@@2| ($LS $ly@@18) |s#0@@20| |ord#0@@7|))
 :qid |unknown.0:0|
 :skolemid |1122|
 :pattern ( (_module.__default.Increasing |_module._default.Increasing#$_T0@@2| ($LS $ly@@18) |s#0@@20| |ord#0@@7|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0@@2| T@U) ($ly@@19 T@U) (|s#0@@21| T@U) (|P#0@@7| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@21| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0@@2|)) ($Is HandleTypeType |P#0@@7| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0@@2| TBool))) (forall ((|_k#0@@9| T@U) ) (! (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@2| ($LS $ly@@19) |_k#0@@9| |s#0@@21| |P#0@@7|)
 :qid |Filterdfy.81:20|
 :skolemid |800|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@2| ($LS $ly@@19) |_k#0@@9| |s#0@@21| |P#0@@7|))
))) (_module.__default.AlwaysAnother |_module._default.AlwaysAnother#$_T0@@2| ($LS $ly@@19) |s#0@@21| |P#0@@7|))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( (_module.__default.AlwaysAnother |_module._default.AlwaysAnother#$_T0@@2| ($LS $ly@@19) |s#0@@21| |P#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0@@2| T@U) ($ly@@20 T@U) (|s#0@@22| T@U) (|low#0@@3| Int) (|ord#0@@8| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@22| (Tclass._module.Stream |_module._default.IncrFrom#$_T0@@2|)) ($Is HandleTypeType |ord#0@@8| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0@@2| TInt))) (_module.__default.IncrFrom |_module._default.IncrFrom#$_T0@@2| ($LS $ly@@20) |s#0@@22| |low#0@@3| |ord#0@@8|)) (forall ((|_k#0@@10| Int) ) (!  (=> (<= (LitInt 0) |_k#0@@10|) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@2| ($LS $ly@@20) |_k#0@@10| |s#0@@22| |low#0@@3| |ord#0@@8|))
 :qid |Filterdfy.236:20|
 :skolemid |1143|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@2| ($LS $ly@@20) |_k#0@@10| |s#0@@22| |low#0@@3| |ord#0@@8|))
)))
 :qid |unknown.0:0|
 :skolemid |1144|
 :pattern ( (_module.__default.IncrFrom |_module._default.IncrFrom#$_T0@@2| ($LS $ly@@20) |s#0@@22| |low#0@@3| |ord#0@@8|))
))))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0@@3| T@U) ($ly@@21 T@U) (|s#0@@23| T@U) (|low#0@@4| Int) (|ord#0@@9| T@U) (|_k#0@@11| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@23| (Tclass._module.Stream |_module._default.IncrFrom#$_T0@@3|)) ($Is HandleTypeType |ord#0@@9| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0@@3| TInt))) (= |_k#0@@11| 0)) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@3| $ly@@21 |_k#0@@11| |s#0@@23| |low#0@@4| |ord#0@@9|))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@3| $ly@@21 |_k#0@@11| |s#0@@23| |low#0@@4| |ord#0@@9|))
))))
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
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.Cons|)
 :qid |Filterdfy.4:29|
 :skolemid |1200|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Filterdfy.4:29|
 :skolemid |1208|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Filterdfy.4:29|
 :skolemid |1209|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |641|
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
(assert (forall ((_module._default.AlwaysAnother$_T0@@0 T@U) ($ly@@22 T@U) (|s#0@@24| T@U) (|P#0@@8| T@U) ) (! (= (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0@@0 ($LS $ly@@22) |s#0@@24| |P#0@@8|) (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0@@0 $ly@@22 |s#0@@24| |P#0@@8|))
 :qid |unknown.0:0|
 :skolemid |795|
 :pattern ( (_module.__default.AlwaysAnother _module._default.AlwaysAnother$_T0@@0 ($LS $ly@@22) |s#0@@24| |P#0@@8|))
)))
(assert (forall ((_module._default.Increasing$_T0@@0 T@U) ($ly@@23 T@U) (|s#0@@25| T@U) (|ord#0@@10| T@U) ) (! (= (_module.__default.Increasing _module._default.Increasing$_T0@@0 ($LS $ly@@23) |s#0@@25| |ord#0@@10|) (_module.__default.Increasing _module._default.Increasing$_T0@@0 $ly@@23 |s#0@@25| |ord#0@@10|))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( (_module.__default.Increasing _module._default.Increasing$_T0@@0 ($LS $ly@@23) |s#0@@25| |ord#0@@10|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0@@3| T@U) ($ly@@24 T@U) (|s#0@@26| T@U) (|ord#0@@11| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@26| (Tclass._module.Stream |_module._default.Increasing#$_T0@@3|)) ($Is HandleTypeType |ord#0@@11| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0@@3| TInt))) (_module.__default.Increasing |_module._default.Increasing#$_T0@@3| ($LS $ly@@24) |s#0@@26| |ord#0@@11|)) (forall ((|_k#0@@12| T@U) ) (! (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@3| ($LS $ly@@24) |_k#0@@12| |s#0@@26| |ord#0@@11|)
 :qid |Filterdfy.232:20|
 :skolemid |1120|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@3| ($LS $ly@@24) |_k#0@@12| |s#0@@26| |ord#0@@11|))
)))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( (_module.__default.Increasing |_module._default.Increasing#$_T0@@3| ($LS $ly@@24) |s#0@@26| |ord#0@@11|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0@@3| T@U) ($ly@@25 T@U) (|s#0@@27| T@U) (|P#0@@9| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@27| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0@@3|)) ($Is HandleTypeType |P#0@@9| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0@@3| TBool))) (_module.__default.AlwaysAnother |_module._default.AlwaysAnother#$_T0@@3| ($LS $ly@@25) |s#0@@27| |P#0@@9|)) (forall ((|_k#0@@13| T@U) ) (! (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@3| ($LS $ly@@25) |_k#0@@13| |s#0@@27| |P#0@@9|)
 :qid |Filterdfy.81:20|
 :skolemid |800|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@3| ($LS $ly@@25) |_k#0@@13| |s#0@@27| |P#0@@9|))
)))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( (_module.__default.AlwaysAnother |_module._default.AlwaysAnother#$_T0@@3| ($LS $ly@@25) |s#0@@27| |P#0@@9|))
))))
(assert  (and (and (and (and (and (and (= (Ctor refType) 6) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@1 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@3) $h@@1))) ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1206|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h@@1))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1223|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
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
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Increasing#$_T0@@4| T@U) ($ly@@26 T@U) ($Heap@@8 T@U) (|_k#0@@14| T@U) (|s#0@@28| T@U) (|ord#0@@12| T@U) ) (!  (=> (or (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@4| (Lit BoxType |_k#0@@14|) |s#0@@28| |ord#0@@12|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@8) ($Is DatatypeTypeType |s#0@@28| (Tclass._module.Stream |_module._default.Increasing#$_T0@@4|))) ($Is HandleTypeType |ord#0@@12| (Tclass._System.___hTotalFunc1 |_module._default.Increasing#$_T0@@4| TInt))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (and (and (_module.Stream.Cons_q |s#0@@28|) (and (_module.Stream.Cons_q |s#0@@28|) (_module.Stream.Cons_q (_module.Stream.tail |s#0@@28|)))) (=> (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head |s#0@@28|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head (_module.Stream.tail |s#0@@28|)))))) (and (_module.Stream.Cons_q |s#0@@28|) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@4| (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@28|) |ord#0@@12|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head |s#0@@28|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head (_module.Stream.tail |s#0@@28|)))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@28|) |ord#0@@12|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@14|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@14|) (|_module.__default.Increasing_h#canCall| |_module._default.Increasing#$_T0@@4| |_k'#1| |s#0@@28| |ord#0@@12|))
 :qid |Filterdfy.232:20|
 :skolemid |1133|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) |_k'#1| |s#0@@28| |ord#0@@12|))
))))) (= (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) (Lit BoxType |_k#0@@14|) |s#0@@28| |ord#0@@12|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@14|)) (and (< (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head |s#0@@28|)))) (U_2_int ($Unbox intType (Apply1 |_module._default.Increasing#$_T0@@4| TInt $Heap@@8 |ord#0@@12| (_module.Stream.head (_module.Stream.tail |s#0@@28|)))))) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) (|ORD#Minus| |_k#0@@14| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@28|) |ord#0@@12|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@14|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@14|) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) |_k'#1@@0| |s#0@@28| |ord#0@@12|))
 :qid |Filterdfy.232:20|
 :skolemid |1132|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) |_k'#1@@0| |s#0@@28| |ord#0@@12|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1134|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@4| ($LS $ly@@26) (Lit BoxType |_k#0@@14|) |s#0@@28| |ord#0@@12|) ($IsGoodHeap $Heap@@8))
))))
(assert (forall ((_module._default.Tail$_T0@@4 T@U) ($ly@@27 T@U) (|s#0@@29| T@U) (|n#0@@6| Int) ) (! (= (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@27) |s#0@@29| |n#0@@6|) (_module.__default.Tail _module._default.Tail$_T0@@4 $ly@@27 |s#0@@29| |n#0@@6|))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (_module.__default.Tail _module._default.Tail$_T0@@4 ($LS $ly@@27) |s#0@@29| |n#0@@6|))
)))
(assert (forall ((_module._default.Filter$_T0@@1 T@U) ($ly@@28 T@U) (|s#0@@30| T@U) (|P#0@@10| T@U) ) (! (= (_module.__default.Filter _module._default.Filter$_T0@@1 ($LS $ly@@28) |s#0@@30| |P#0@@10|) (_module.__default.Filter _module._default.Filter$_T0@@1 $ly@@28 |s#0@@30| |P#0@@10|))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (_module.__default.Filter _module._default.Filter$_T0@@1 ($LS $ly@@28) |s#0@@30| |P#0@@10|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((|_module._default.AlwaysAnother#$_T0@@4| T@U) ($ly@@29 T@U) (|_k#0@@15| T@U) (|s#0@@31| T@U) (|P#0@@11| T@U) ) (! (= (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@4| ($LS $ly@@29) |_k#0@@15| |s#0@@31| |P#0@@11|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@4| $ly@@29 |_k#0@@15| |s#0@@31| |P#0@@11|))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@4| ($LS $ly@@29) |_k#0@@15| |s#0@@31| |P#0@@11|))
)))
(assert (forall ((|_module._default.Increasing#$_T0@@5| T@U) ($ly@@30 T@U) (|_k#0@@16| T@U) (|s#0@@32| T@U) (|ord#0@@13| T@U) ) (! (= (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@5| ($LS $ly@@30) |_k#0@@16| |s#0@@32| |ord#0@@13|) (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@5| $ly@@30 |_k#0@@16| |s#0@@32| |ord#0@@13|))
 :qid |unknown.0:0|
 :skolemid |1125|
 :pattern ( (_module.__default.Increasing_h |_module._default.Increasing#$_T0@@5| ($LS $ly@@30) |_k#0@@16| |s#0@@32| |ord#0@@13|))
)))
(assert (forall ((_module._default.IncrFrom$_T0@@0 T@U) ($ly@@31 T@U) (|s#0@@33| T@U) (|low#0@@5| Int) (|ord#0@@14| T@U) ) (! (= (_module.__default.IncrFrom _module._default.IncrFrom$_T0@@0 ($LS $ly@@31) |s#0@@33| |low#0@@5| |ord#0@@14|) (_module.__default.IncrFrom _module._default.IncrFrom$_T0@@0 $ly@@31 |s#0@@33| |low#0@@5| |ord#0@@14|))
 :qid |unknown.0:0|
 :skolemid |1138|
 :pattern ( (_module.__default.IncrFrom _module._default.IncrFrom$_T0@@0 ($LS $ly@@31) |s#0@@33| |low#0@@5| |ord#0@@14|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|_module._default.AlwaysAnother#$_T0@@5| T@U) ($ly@@32 T@U) (|_k#0@@17| T@U) (|s#0@@34| T@U) (|P#0@@12| T@U) ) (!  (=> (or (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@5| (Lit BoxType |_k#0@@17|) |s#0@@34| |P#0@@12|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@34| (Tclass._module.Stream |_module._default.AlwaysAnother#$_T0@@5|)) ($Is HandleTypeType |P#0@@12| (Tclass._System.___hTotalFunc1 |_module._default.AlwaysAnother#$_T0@@5| TBool))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@17|)) (and (|_module.__default.IsAnother#canCall| |_module._default.AlwaysAnother#$_T0@@5| |s#0@@34| |P#0@@12|) (=> (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@5| |s#0@@34| |P#0@@12|) (and (_module.Stream.Cons_q |s#0@@34|) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@5| (|ORD#Minus| |_k#0@@17| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@34|) |P#0@@12|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@17|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@5| |s#0@@34| |P#0@@12|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) (|ORD#Minus| |_k#0@@17| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@34|) |P#0@@12|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@17|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@17|) (|_module.__default.AlwaysAnother_h#canCall| |_module._default.AlwaysAnother#$_T0@@5| |_k'#1@@1| |s#0@@34| |P#0@@12|))
 :qid |Filterdfy.81:20|
 :skolemid |814|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) |_k'#1@@1| |s#0@@34| |P#0@@12|))
))))) (= (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) (Lit BoxType |_k#0@@17|) |s#0@@34| |P#0@@12|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@17|)) (and (_module.__default.IsAnother |_module._default.AlwaysAnother#$_T0@@5| |s#0@@34| |P#0@@12|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) (|ORD#Minus| |_k#0@@17| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@34|) |P#0@@12|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@17|)) (forall ((|_k'#1@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@2| |_k#0@@17|) (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) |_k'#1@@2| |s#0@@34| |P#0@@12|))
 :qid |Filterdfy.81:20|
 :skolemid |813|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) |_k'#1@@2| |s#0@@34| |P#0@@12|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |815|
 :pattern ( (_module.__default.AlwaysAnother_h |_module._default.AlwaysAnother#$_T0@@5| ($LS $ly@@32) (Lit BoxType |_k#0@@17|) |s#0@@34| |P#0@@12|))
))))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@5) $h@@2))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1207|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@2))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((_module._default.Filter$_T0@@2 T@U) ($ly@@33 T@U) ($Heap@@9 T@U) (|s#0@@35| T@U) (|P#0@@13| T@U) ) (!  (=> (or (|_module.__default.Filter#canCall| _module._default.Filter$_T0@@2 |s#0@@35| |P#0@@13|) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@9) ($Is DatatypeTypeType |s#0@@35| (Tclass._module.Stream _module._default.Filter$_T0@@2))) ($Is HandleTypeType |P#0@@13| (Tclass._System.___hTotalFunc1 _module._default.Filter$_T0@@2 TBool))) (_module.__default.AlwaysAnother _module._default.Filter$_T0@@2 ($LS $LZ) |s#0@@35| |P#0@@13|)))) (and (and (and (_module.Stream.Cons_q |s#0@@35|) (=> (U_2_bool ($Unbox boolType (Apply1 _module._default.Filter$_T0@@2 TBool $Heap@@9 |P#0@@13| (_module.Stream.head |s#0@@35|)))) (and (_module.Stream.Cons_q |s#0@@35|) (and (_module.Stream.Cons_q |s#0@@35|) (|_module.__default.Filter#canCall| _module._default.Filter$_T0@@2 (_module.Stream.tail |s#0@@35|) |P#0@@13|))))) (=> (not (U_2_bool ($Unbox boolType (Apply1 _module._default.Filter$_T0@@2 TBool $Heap@@9 |P#0@@13| (_module.Stream.head |s#0@@35|))))) (and (_module.Stream.Cons_q |s#0@@35|) (|_module.__default.Filter#canCall| _module._default.Filter$_T0@@2 (_module.Stream.tail |s#0@@35|) |P#0@@13|)))) (= (_module.__default.Filter _module._default.Filter$_T0@@2 ($LS $ly@@33) |s#0@@35| |P#0@@13|) (ite (U_2_bool ($Unbox boolType (Apply1 _module._default.Filter$_T0@@2 TBool $Heap@@9 |P#0@@13| (_module.Stream.head |s#0@@35|)))) (|#_module.Stream.Cons| (_module.Stream.head |s#0@@35|) (_module.__default.Filter _module._default.Filter$_T0@@2 $ly@@33 (_module.Stream.tail |s#0@@35|) |P#0@@13|)) (_module.__default.Filter _module._default.Filter$_T0@@2 $ly@@33 (_module.Stream.tail |s#0@@35|) |P#0@@13|)))))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (_module.__default.Filter _module._default.Filter$_T0@@2 ($LS $ly@@33) |s#0@@35| |P#0@@13|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((o@@7 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@7))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@3) o@@7)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@3) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@3))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0@@4| T@U) ($ly@@34 T@U) ($Heap@@10 T@U) (|_k#0@@18| Int) (|s#0@@36| T@U) (|low#0@@6| Int) (|ord#0@@15| T@U) ) (!  (=> (or (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@4| (LitInt |_k#0@@18|) (Lit DatatypeTypeType |s#0@@36|) (LitInt |low#0@@6|) (Lit HandleTypeType |ord#0@@15|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@10) (<= (LitInt 0) |_k#0@@18|)) ($Is DatatypeTypeType |s#0@@36| (Tclass._module.Stream |_module._default.IncrFrom#$_T0@@4|))) ($Is HandleTypeType |ord#0@@15| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0@@4| TInt))))) (and (=> (< 0 |_k#0@@18|) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@36|)) (=> (<= (LitInt |low#0@@6|) (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@4| TInt $Heap@@10 (Lit HandleTypeType |ord#0@@15|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@36|))))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@36|)) (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@36|))) (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@4| (- |_k#0@@18| 1) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@36|))) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@4| TInt $Heap@@10 (Lit HandleTypeType |ord#0@@15|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@36|)))))) 1) (Lit HandleTypeType |ord#0@@15|)))))) (= (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@4| ($LS $ly@@34) (LitInt |_k#0@@18|) (Lit DatatypeTypeType |s#0@@36|) (LitInt |low#0@@6|) (Lit HandleTypeType |ord#0@@15|))  (=> (< 0 |_k#0@@18|) (and (<= (LitInt |low#0@@6|) (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@4| TInt $Heap@@10 (Lit HandleTypeType |ord#0@@15|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@36|))))))) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@4| ($LS $ly@@34) (- |_k#0@@18| 1) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@36|))) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@4| TInt $Heap@@10 (Lit HandleTypeType |ord#0@@15|) (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0@@36|)))))) 1) (Lit HandleTypeType |ord#0@@15|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1154|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@4| ($LS $ly@@34) (LitInt |_k#0@@18|) (Lit DatatypeTypeType |s#0@@36|) (LitInt |low#0@@6|) (Lit HandleTypeType |ord#0@@15|)) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.IncrFrom#$_T0@@5| T@U) ($ly@@35 T@U) ($Heap@@11 T@U) (|_k#0@@19| Int) (|s#0@@37| T@U) (|low#0@@7| Int) (|ord#0@@16| T@U) ) (!  (=> (or (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@5| (LitInt |_k#0@@19|) |s#0@@37| |low#0@@7| |ord#0@@16|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@11) (<= (LitInt 0) |_k#0@@19|)) ($Is DatatypeTypeType |s#0@@37| (Tclass._module.Stream |_module._default.IncrFrom#$_T0@@5|))) ($Is HandleTypeType |ord#0@@16| (Tclass._System.___hTotalFunc1 |_module._default.IncrFrom#$_T0@@5| TInt))))) (and (=> (< 0 |_k#0@@19|) (and (_module.Stream.Cons_q |s#0@@37|) (=> (<= |low#0@@7| (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@5| TInt $Heap@@11 |ord#0@@16| (_module.Stream.head |s#0@@37|))))) (and (and (_module.Stream.Cons_q |s#0@@37|) (_module.Stream.Cons_q |s#0@@37|)) (|_module.__default.IncrFrom_h#canCall| |_module._default.IncrFrom#$_T0@@5| (- |_k#0@@19| 1) (_module.Stream.tail |s#0@@37|) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@5| TInt $Heap@@11 |ord#0@@16| (_module.Stream.head |s#0@@37|)))) 1) |ord#0@@16|))))) (= (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@5| ($LS $ly@@35) (LitInt |_k#0@@19|) |s#0@@37| |low#0@@7| |ord#0@@16|)  (=> (< 0 |_k#0@@19|) (and (<= |low#0@@7| (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@5| TInt $Heap@@11 |ord#0@@16| (_module.Stream.head |s#0@@37|))))) (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@5| ($LS $ly@@35) (- |_k#0@@19| 1) (_module.Stream.tail |s#0@@37|) (+ (U_2_int ($Unbox intType (Apply1 |_module._default.IncrFrom#$_T0@@5| TInt $Heap@@11 |ord#0@@16| (_module.Stream.head |s#0@@37|)))) 1) |ord#0@@16|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1153|
 :pattern ( (_module.__default.IncrFrom_h |_module._default.IncrFrom#$_T0@@5| ($LS $ly@@35) (LitInt |_k#0@@19|) |s#0@@37| |low#0@@7| |ord#0@@16|) ($IsGoodHeap $Heap@@11))
))))
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
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@3) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@12 () T@U)
(declare-fun |s#0@@38| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module._default.Theorem_FilterPreservesOrdering$_T0 () T@U)
(declare-fun |P#0@@14| () T@U)
(declare-fun |ord#0@@17| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |low##0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |s##2@0| () T@U)
(declare-fun |low##1@0| () Int)
(declare-fun $Heap@3 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem__FilterPreservesOrdering)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@12 alloc false)) (|$IsA#_module.Stream| |s#0@@38|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@12 $Heap@0) (forall ((|$ih#s0#0| T@U) ) (! true
 :qid |Filterdfy.253:39|
 :skolemid |1174|
 :pattern ( (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |$ih#s0#0| |P#0@@14|))
 :pattern ( (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |$ih#s0#0| |P#0@@14|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |ord#0@@17|) (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@0 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@0 |ord#0@@17| (_module.Stream.head (_module.Stream.tail |s#0@@38|))))))))) (=> (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |ord#0@@17|) (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@0 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@0 |ord#0@@17| (_module.Stream.head (_module.Stream.tail |s#0@@38|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |ord#0@@17|) (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) |ord#0@@17|)))) (=> (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |ord#0@@17|) (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) |ord#0@@17|))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (_module.Stream.Cons_q |s#0@@38|) (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) |ord#0@@17|)) (and (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) |ord#0@@17|) (and (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) |ord#0@@17|) (and (<= (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|))))) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.Stream.tail |s#0@@38|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) 1) |ord#0@@17|))))) (and (and (= $Heap@0 $Heap@1) (_module.Stream.Cons_q |s#0@@38|)) (and (_module.Stream.Cons_q |s#0@@38|) (= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |low##0@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |low##0@0| |ord#0@@17|) (<= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))))))) (=> (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |low##0@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |low##0@0| |ord#0@@17|) (<= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|))))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |low##0@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |low##0@0| |ord#0@@17|) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) 1) |ord#0@@17|)))) (=> (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |low##0@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |low##0@0| |ord#0@@17|) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) 1) |ord#0@@17|))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (=> (|_module.__default.IsAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.IsAnother _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (exists ((|n#2| Int) ) (!  (and (<= (LitInt 0) |n#2|) (and (<= (LitInt 0) |n#2|) (U_2_bool ($Unbox boolType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool $Heap@1 |P#0@@14| (_module.Stream.head (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#2|)))))))
 :qid |Filterdfy.79:10|
 :skolemid |1187|
 :pattern ( (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#2|))
))))))) (=> (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (=> (|_module.__default.IsAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.IsAnother _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (exists ((|n#2@@0| Int) ) (!  (and (<= (LitInt 0) |n#2@@0|) (and (<= (LitInt 0) |n#2@@0|) (U_2_bool ($Unbox boolType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool $Heap@1 |P#0@@14| (_module.Stream.head (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#2@@0|)))))))
 :qid |Filterdfy.79:10|
 :skolemid |1187|
 :pattern ( (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#2@@0|))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) |P#0@@14|)))) (=> (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) |P#0@@14|))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|)))))) (=> (<= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@1 |ord#0@@17| (_module.Stream.head |s#0@@38|))))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|_module.__default.Filter#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |low##0@0| |ord#0@@17|))) (=> (and (and (and (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |low##0@0| |ord#0@@17|) (and (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |low##0@0| |ord#0@@17|) (and (<= |low##0@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|)))))) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.Stream.tail (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|)) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|))))) 1) |ord#0@@17|)))) (= $Heap@1 $Heap@2)) (and ($IsAlloc DatatypeTypeType |s#0@@38| (Tclass._module.Stream _module._default.Theorem_FilterPreservesOrdering$_T0) $Heap@2) ($IsAlloc HandleTypeType |P#0@@14| (Tclass._System.___hTotalFunc1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool) $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (=> (|_module.__default.IsAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.IsAnother _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (exists ((|n#3| Int) ) (!  (and (<= (LitInt 0) |n#3|) (and (<= (LitInt 0) |n#3|) (U_2_bool ($Unbox boolType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool $Heap@2 |P#0@@14| (_module.Stream.head (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#3|)))))))
 :qid |Filterdfy.79:10|
 :skolemid |1177|
 :pattern ( (_module.__default.Tail _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |n#3|))
))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (or (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s#0@@38|) |P#0@@14|)))) (=> (and (and (and (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (|_module.__default.Filter#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|)) (and (_module.Stream.Cons_q (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|)) (|_module.__default.Filter#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|))) (and (and (= |s##2@0| (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|)) (_module.Stream.Cons_q |s#0@@38|)) (and (_module.Stream.Cons_q |s#0@@38|) (= |low##1@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head |s#0@@38|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |low##1@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s##2@0| |low##1@0| |ord#0@@17|) (<= |low##1@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head |s##2@0|)))))))) (=> (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |low##1@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s##2@0| |low##1@0| |ord#0@@17|) (<= |low##1@0| (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head |s##2@0|))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |low##1@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s##2@0| |low##1@0| |ord#0@@17|) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s##2@0|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head |s##2@0|)))) 1) |ord#0@@17|)))) (=> (=> (|_module.__default.IncrFrom#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |low##1@0| |ord#0@@17|) (or (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s##2@0| |low##1@0| |ord#0@@17|) (_module.__default.IncrFrom _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail |s##2@0|) (+ (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@2 |ord#0@@17| (_module.Stream.head |s##2@0|)))) 1) |ord#0@@17|))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |ord#0@@17|)) (and (and (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s##2@0| |ord#0@@17|) (and (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s##2@0| |ord#0@@17|) (and (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head |s##2@0|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head (_module.Stream.tail |s##2@0|)))))) (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.Stream.tail |s##2@0|) |ord#0@@17|)))) (= $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) |s#0@@38| |P#0@@14|))))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head (_module.Stream.tail (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) |s#0@@38| |P#0@@14|)))))))))) (=> (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) |s#0@@38| |P#0@@14|))))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@3 |ord#0@@17| (_module.Stream.head (_module.Stream.tail (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) |s#0@@38| |P#0@@14|))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (or (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) |ord#0@@17|) (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Filter _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS ($LS $LZ)) |s#0@@38| |P#0@@14|)) |ord#0@@17|))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@12) ($IsHeapAnchor $Heap@@12)) (=> (and (and (and ($Is DatatypeTypeType |s#0@@38| (Tclass._module.Stream _module._default.Theorem_FilterPreservesOrdering$_T0)) ($IsAlloc DatatypeTypeType |s#0@@38| (Tclass._module.Stream _module._default.Theorem_FilterPreservesOrdering$_T0) $Heap@@12)) (|$IsA#_module.Stream| |s#0@@38|)) (and ($Is HandleTypeType |P#0@@14| (Tclass._System.___hTotalFunc1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool)) ($IsAlloc HandleTypeType |P#0@@14| (Tclass._System.___hTotalFunc1 _module._default.Theorem_FilterPreservesOrdering$_T0 TBool) $Heap@@12))) (=> (and (and (and (and ($Is HandleTypeType |ord#0@@17| (Tclass._System.___hTotalFunc1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt)) ($IsAlloc HandleTypeType |ord#0@@17| (Tclass._System.___hTotalFunc1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt) $Heap@@12)) (= 8 $FunctionContextHeight)) (and (|_module.__default.Increasing#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |ord#0@@17|) (and (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |ord#0@@17|) (and (< (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@@12 |ord#0@@17| (_module.Stream.head |s#0@@38|)))) (U_2_int ($Unbox intType (Apply1 _module._default.Theorem_FilterPreservesOrdering$_T0 TInt $Heap@@12 |ord#0@@17| (_module.Stream.head (_module.Stream.tail |s#0@@38|)))))) (_module.__default.Increasing _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.Stream.tail |s#0@@38|) |ord#0@@17|))))) (and (and (|_module.__default.AlwaysAnother#canCall| _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (and (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) |s#0@@38| |P#0@@14|) (and (_module.__default.IsAnother _module._default.Theorem_FilterPreservesOrdering$_T0 |s#0@@38| |P#0@@14|) (_module.__default.AlwaysAnother _module._default.Theorem_FilterPreservesOrdering$_T0 ($LS $LZ) (_module.Stream.tail |s#0@@38|) |P#0@@14|)))) (= (ControlFlow 0 15) 2))) anon0_correct)))))
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
