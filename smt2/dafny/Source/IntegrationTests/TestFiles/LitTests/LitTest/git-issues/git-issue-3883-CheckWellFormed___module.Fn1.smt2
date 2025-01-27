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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Option () T@U)
(declare-fun |##_module.Option.None| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Option () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Option.None| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Option (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.PartialFnWitness (T@U Int) T@U)
(declare-fun |_module.__default.PartialFnWitness#canCall| (T@U Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |_module.__default.PartialFnWitness#Handle| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.PartialFnWitness#requires| (T@U Int) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._module.Option_0 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Option |##_module.Option.None| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Option)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |766|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.Option.None|) |##_module.Option.None|))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |1035|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.Option$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T) $h))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T) $h))
)))
(assert (forall ((_module.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |1244|
 :pattern ( ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.PartialFnWitness$R T@U) (|x#0| Int) ) (!  (=> (and (or (|_module.__default.PartialFnWitness#canCall| _module._default.PartialFnWitness$R |x#0|) (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R |x#0|) (Tclass._module.Option _module._default.PartialFnWitness$R) $Heap))
 :qid |gitissue3883dfy.67:10|
 :skolemid |1173|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R |x#0|) (Tclass._module.Option _module._default.PartialFnWitness$R) $Heap))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |658|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |656|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |667|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |680|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall (($bx T@U) (_module._default.PartialFnWitness$R@@0 T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (|Set#IsMember| (Reads1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@0) $heap (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@0) |$fh$0x#0|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1253|
 :pattern ( (|Set#IsMember| (Reads1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@0) $heap (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@0) |$fh$0x#0|) $bx))
)))
(assert (forall ((_module.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Option _module.Option$T@@1)) Tagclass._module.Option) (= (TagFamily (Tclass._module.Option _module.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( (Tclass._module.Option _module.Option$T@@1))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1055|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.PartialFnWitness$R@@1 T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.__default.PartialFnWitness#canCall| _module._default.PartialFnWitness$R@@1 |x#0@@0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@1 |x#0@@0|) (Tclass._module.Option _module._default.PartialFnWitness$R@@1)))
 :qid |unknown.0:0|
 :skolemid |1172|
 :pattern ( (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@1 |x#0@@0|))
))))
(assert (forall ((_module._default.PartialFnWitness$R@@2 T@U) (|x#0@@1| Int) ) (! (= (|_module.__default.PartialFnWitness#requires| _module._default.PartialFnWitness$R@@2 |x#0@@1|) true)
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (|_module.__default.PartialFnWitness#requires| _module._default.PartialFnWitness$R@@2 |x#0@@1|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |791|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1032|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |668|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |679|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((_module._default.PartialFnWitness$R@@3 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@3) $heap@@0 (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@3) |$fh$0x#0@@0|) (|_module.__default.PartialFnWitness#requires| _module._default.PartialFnWitness$R@@3 (U_2_int ($Unbox intType |$fh$0x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( (Requires1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@3) $heap@@0 (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@3) |$fh$0x#0@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((_module.Option$T@@2 T@U) ) (! (= (Tclass._module.Option_0 (Tclass._module.Option _module.Option$T@@2)) _module.Option$T@@2)
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( (Tclass._module.Option _module.Option$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |666|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module._default.PartialFnWitness$R@@4 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| Int) ) (! (= (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@4 |$fh$0x#0@@1|) ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@4) $heap@@1 (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@4) ($Box intType (int_2_U |$fh$0x#0@@1|)))))
 :qid |unknown.0:0|
 :skolemid |1254|
 :pattern ( (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@4 |$fh$0x#0@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |1053|
))))
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |1046|
))))
 :qid |unknown.0:0|
 :skolemid |1047|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 5) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |1045|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1423|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |1049|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1031|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((_module.Option$T@@3 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Option _module.Option$T@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Option _module.Option$T@@3))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Option _module.Option$T@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.PartialFnWitness$R@@5 T@U) (|x#0@@2| Int) ) (!  (=> (or (|_module.__default.PartialFnWitness#canCall| _module._default.PartialFnWitness$R@@5 |x#0@@2|) (< 1 $FunctionContextHeight)) (= (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@5 |x#0@@2|) (Lit DatatypeTypeType |#_module.Option.None|)))
 :qid |unknown.0:0|
 :skolemid |1175|
 :pattern ( (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@5 |x#0@@2|))
))))
(assert (= |#_module.Option.None| (Lit DatatypeTypeType |#_module.Option.None|)))
(assert (forall ((_module._default.PartialFnWitness$R@@6 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@6) $heap@@2 (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@6) |$fh$0x#0@@2|) ($Box DatatypeTypeType (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@6 (U_2_int ($Unbox intType |$fh$0x#0@@2|)))))
 :qid |unknown.0:0|
 :skolemid |1251|
 :pattern ( (Apply1 TInt (Tclass._module.Option _module._default.PartialFnWitness$R@@6) $heap@@2 (|_module.__default.PartialFnWitness#Handle| _module._default.PartialFnWitness$R@@6) |$fh$0x#0@@2|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |789|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |790|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |659|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |657|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.PartialFnWitness$R@@7 T@U) (|x#0@@3| Int) ) (!  (=> (or (|_module.__default.PartialFnWitness#canCall| _module._default.PartialFnWitness$R@@7 (LitInt |x#0@@3|)) (< 1 $FunctionContextHeight)) (= (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@7 (LitInt |x#0@@3|)) (Lit DatatypeTypeType |#_module.Option.None|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1176|
 :pattern ( (_module.__default.PartialFnWitness _module._default.PartialFnWitness$R@@7 (LitInt |x#0@@3|)))
))))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |702|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |681|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |newtype$check#0@0| () T@U)
(declare-fun _module.Fn1$R () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |newtype$check#1@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.Fn1)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (= |newtype$check#0@0| (|_module.__default.PartialFnWitness#Handle| _module.Fn1$R)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (forall ((|x0#0@@1| Int) ) (! (|Set#Equal| (Reads1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#0@0| ($Box intType (int_2_U |x0#0@@1|))) |Set#Empty|)
 :qid |unknown.0:0|
 :skolemid |1261|
))) (=> (forall ((|x0#0@@2| T@U) ) (! (|Set#Equal| (Reads1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#0@0| ($Box intType |x0#0@@2|)) |Set#Empty|)
 :qid |unknown.0:0|
 :skolemid |1261|
)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((|x0#1| Int) ) (! (Requires1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#0@0| ($Box intType (int_2_U |x0#1|)))
 :qid |unknown.0:0|
 :skolemid |1262|
))) (=> (forall ((|x0#1@@0| T@U) ) (! (Requires1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#0@0| ($Box intType |x0#1@@0|))
 :qid |unknown.0:0|
 :skolemid |1262|
)) (=> (= |newtype$check#1@0| (|_module.__default.PartialFnWitness#Handle| _module.Fn1$R)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((|x0#2| Int) ) (! (|Set#Equal| (Reads1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#1@0| ($Box intType (int_2_U |x0#2|))) |Set#Empty|)
 :qid |unknown.0:0|
 :skolemid |1263|
))) (=> (forall ((|x0#2@@0| T@U) ) (! (|Set#Equal| (Reads1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#1@0| ($Box intType |x0#2@@0|)) |Set#Empty|)
 :qid |unknown.0:0|
 :skolemid |1263|
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((|x0#3| Int) ) (! (Requires1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#1@0| ($Box intType (int_2_U |x0#3|)))
 :qid |unknown.0:0|
 :skolemid |1264|
))) (=> (forall ((|x0#3@@0| T@U) ) (! (Requires1 TInt (Tclass._module.Option _module.Fn1$R) $Heap@@0 |newtype$check#1@0| ($Box intType |x0#3@@0|))
 :qid |unknown.0:0|
 :skolemid |1264|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (Lit boolType (bool_2_U true))))))))))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 9) 1) anon5_Then_correct) (=> (= (ControlFlow 0 9) 3) anon6_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
