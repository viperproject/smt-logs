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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.AllPrimes (T@U Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.AllPrimes#canCall| (T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.__default.IsPrime (Int) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.IsPrime#canCall| (Int) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.PickLargest (Bool T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.PickLargest#canCall| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |$let#0_x| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.product (T@U Bool T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.product#canCall| (T@U) Bool)
(declare-fun reveal__module._default.PickLargest () Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun reveal__module._default.product () Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
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
(assert (distinct TInt TagInt TagSet alloc)
)
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0| T@U) (|bound#0| Int) ) (!  (=> (or (|_module.__default.AllPrimes#canCall| (Lit SetType |s#0|) (LitInt |bound#0|)) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0| (TSet TInt)))) (and (and (forall ((|x#1| Int) ) (!  (=> (|Set#IsMember| (Lit SetType |s#0|) ($Box intType (int_2_U |x#1|))) (|_module.__default.IsPrime#canCall| |x#1|))
 :qid |Primesdfy.36:11|
 :skolemid |562|
 :pattern ( (_module.__default.IsPrime |x#1|))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#1|))))
)) (=> (forall ((|x#1@@0| Int) ) (!  (=> (|Set#IsMember| (Lit SetType |s#0|) ($Box intType (int_2_U |x#1@@0|))) (_module.__default.IsPrime |x#1@@0|))
 :qid |Primesdfy.36:11|
 :skolemid |564|
 :pattern ( (_module.__default.IsPrime |x#1@@0|))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#1@@0|))))
)) (forall ((|p#1| Int) ) (! (|_module.__default.IsPrime#canCall| |p#1|)
 :qid |Primesdfy.38:11|
 :skolemid |563|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |p#1|))))
 :pattern ( (_module.__default.IsPrime |p#1|))
)))) (= (_module.__default.AllPrimes (Lit SetType |s#0|) (LitInt |bound#0|))  (and (forall ((|x#1@@1| Int) ) (!  (=> (|Set#IsMember| (Lit SetType |s#0|) ($Box intType (int_2_U |x#1@@1|))) (_module.__default.IsPrime |x#1@@1|))
 :qid |Primesdfy.36:11|
 :skolemid |560|
 :pattern ( (_module.__default.IsPrime |x#1@@1|))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#1@@1|))))
)) (forall ((|p#1@@0| Int) ) (!  (=> (and (_module.__default.IsPrime |p#1@@0|) (<= |p#1@@0| (LitInt |bound#0|))) (|Set#IsMember| (Lit SetType |s#0|) ($Box intType (int_2_U |p#1@@0|))))
 :qid |Primesdfy.38:11|
 :skolemid |561|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |p#1@@0|))))
 :pattern ( (_module.__default.IsPrime |p#1@@0|))
))))))
 :qid |Primesdfy.33:27|
 :weight 3
 :skolemid |565|
 :pattern ( (_module.__default.AllPrimes (Lit SetType |s#0|) (LitInt |bound#0|)))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@0| T@U) (|bound#0@@0| Int) ) (!  (=> (or (|_module.__default.AllPrimes#canCall| |s#0@@0| |bound#0@@0|) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0@@0| (TSet TInt)))) (and (and (forall ((|x#0| Int) ) (!  (=> (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0|))) (|_module.__default.IsPrime#canCall| |x#0|))
 :qid |Primesdfy.36:11|
 :skolemid |556|
 :pattern ( (_module.__default.IsPrime |x#0|))
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0|))))
)) (=> (forall ((|x#0@@0| Int) ) (!  (=> (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0@@0|))) (_module.__default.IsPrime |x#0@@0|))
 :qid |Primesdfy.36:11|
 :skolemid |558|
 :pattern ( (_module.__default.IsPrime |x#0@@0|))
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0@@0|))))
)) (forall ((|p#0| Int) ) (! (|_module.__default.IsPrime#canCall| |p#0|)
 :qid |Primesdfy.38:11|
 :skolemid |557|
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |p#0|))))
 :pattern ( (_module.__default.IsPrime |p#0|))
)))) (= (_module.__default.AllPrimes |s#0@@0| |bound#0@@0|)  (and (forall ((|x#0@@1| Int) ) (!  (=> (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0@@1|))) (_module.__default.IsPrime |x#0@@1|))
 :qid |Primesdfy.36:11|
 :skolemid |554|
 :pattern ( (_module.__default.IsPrime |x#0@@1|))
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |x#0@@1|))))
)) (forall ((|p#0@@0| Int) ) (!  (=> (and (_module.__default.IsPrime |p#0@@0|) (<= |p#0@@0| |bound#0@@0|)) (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |p#0@@0|))))
 :qid |Primesdfy.38:11|
 :skolemid |555|
 :pattern ( (|Set#IsMember| |s#0@@0| ($Box intType (int_2_U |p#0@@0|))))
 :pattern ( (_module.__default.IsPrime |p#0@@0|))
))))))
 :qid |Primesdfy.33:27|
 :skolemid |559|
 :pattern ( (_module.__default.AllPrimes |s#0@@0| |bound#0@@0|))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0@@1| (TSet TInt))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| |s#0@@1|) (= (_module.__default.PickLargest true |s#0@@1|) (let ((|x#0@@2| (|$let#0_x| |s#0@@1|)))
|x#0@@2|))))
 :qid |Primesdfy.190:23|
 :skolemid |678|
 :pattern ( (_module.__default.PickLargest true |s#0@@1|) ($IsGoodHeap $Heap))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.product#canCall| (Lit SetType |s#0@@2|)) (and (< 2 $FunctionContextHeight) ($Is SetType |s#0@@2| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0@@2| |Set#Empty|)) (and (|_module.__default.PickLargest#canCall| (Lit SetType |s#0@@2|)) (let ((|a#1| (_module.__default.PickLargest reveal__module._default.PickLargest (Lit SetType |s#0@@2|))))
(|_module.__default.product#canCall| (|Set#Difference| |s#0@@2| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#1|)))))))) (= (_module.__default.product ($LS $ly) true (Lit SetType |s#0@@2|)) (ite (|Set#Equal| |s#0@@2| |Set#Empty|) 1 (let ((|a#1@@0| (_module.__default.PickLargest reveal__module._default.PickLargest (Lit SetType |s#0@@2|))))
(Mul |a#1@@0| (_module.__default.product ($LS $ly) reveal__module._default.product (|Set#Difference| |s#0@@2| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#1@@0|)))))))))))
 :qid |Primesdfy.59:23|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.product ($LS $ly) true (Lit SetType |s#0@@2|)))
))))
(assert (forall (($ly@@0 T@U) ($reveal Bool) (|s#0@@3| T@U) ) (! (= (_module.__default.product ($LS $ly@@0) $reveal |s#0@@3|) (_module.__default.product $ly@@0 $reveal |s#0@@3|))
 :qid |Primesdfy.59:23|
 :skolemid |593|
 :pattern ( (_module.__default.product ($LS $ly@@0) $reveal |s#0@@3|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| |n#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime |n#0|)  (and (<= (LitInt 2) |n#0|) (forall ((|m#0| Int) ) (!  (=> (and (<= (LitInt 2) |m#0|) (< |m#0| |n#0|)) (or (not (= (Mod |n#0| |m#0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |530|
 :pattern ( (Mod |n#0| |m#0|))
)))))
 :qid |Primesdfy.4:25|
 :skolemid |531|
 :pattern ( (_module.__default.IsPrime |n#0|))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| (Lit SetType |s#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@4| (TSet TInt))) (not (|Set#Equal| |s#0@@4| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |s#0@@4|)) (= (_module.__default.PickLargest true (Lit SetType |s#0@@4|)) (let ((|x#1@@2| (|$let#0_x| (Lit SetType |s#0@@4|))))
|x#1@@2|))))
 :qid |Primesdfy.190:23|
 :weight 3
 :skolemid |679|
 :pattern ( (_module.__default.PickLargest true (Lit SetType |s#0@@4|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (!  (=> (|$let#0$canCall| s) (and (|Set#IsMember| s ($Box intType (int_2_U (|$let#0_x| s)))) (forall ((|y#1| T@U) ) (!  (=> (|Set#IsMember| s ($Box intType |y#1|)) (<= (U_2_int |y#1|) (|$let#0_x| s)))
 :qid |Primesdfy.195:29|
 :skolemid |676|
 :pattern ( (|Set#IsMember| s ($Box intType |y#1|)))
))))
 :qid |Primesdfy.195:3|
 :skolemid |677|
 :pattern ( (|$let#0_x| s))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@5| T@U) ) (!  (=> (or (|_module.__default.product#canCall| |s#0@@5|) (and (< 2 $FunctionContextHeight) ($Is SetType |s#0@@5| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0@@5| |Set#Empty|)) (and (|_module.__default.PickLargest#canCall| |s#0@@5|) (let ((|a#0| (_module.__default.PickLargest reveal__module._default.PickLargest |s#0@@5|)))
(|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#0|)))))))) (= (_module.__default.product ($LS $ly@@1) true |s#0@@5|) (ite (|Set#Equal| |s#0@@5| |Set#Empty|) 1 (let ((|a#0@@0| (_module.__default.PickLargest reveal__module._default.PickLargest |s#0@@5|)))
(Mul |a#0@@0| (_module.__default.product $ly@@1 reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#0@@0|)))))))))))
 :qid |Primesdfy.59:23|
 :skolemid |597|
 :pattern ( (_module.__default.product ($LS $ly@@1) true |s#0@@5|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($reveal@@0 Bool) (|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| |s#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |s#0@@6| (TSet TInt)) (not (|Set#Equal| |s#0@@6| |Set#Empty|))))) (and (|Set#IsMember| |s#0@@6| ($Box intType (int_2_U (_module.__default.PickLargest $reveal@@0 |s#0@@6|)))) (forall ((|y#0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@6| ($Box intType |y#0|)) (<= (U_2_int |y#0|) (_module.__default.PickLargest $reveal@@0 |s#0@@6|)))
 :qid |Primesdfy.192:28|
 :skolemid |673|
 :pattern ( (|Set#IsMember| |s#0@@6| ($Box intType |y#0|)))
))))
 :qid |Primesdfy.190:23|
 :skolemid |674|
 :pattern ( (_module.__default.PickLargest $reveal@@0 |s#0@@6|))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@0| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| (LitInt |n#0@@0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime (LitInt |n#0@@0|))  (and (<= (LitInt 2) (LitInt |n#0@@0|)) (forall ((|m#1| Int) ) (!  (=> (and (<= (LitInt 2) |m#1|) (< |m#1| |n#0@@0|)) (or (not (= (Mod |n#0@@0| |m#1|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |532|
 :pattern ( (Mod |n#0@@0| |m#1|))
)))))
 :qid |Primesdfy.4:25|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.IsPrime (LitInt |n#0@@0|)))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |700|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@9 Int) (y@@1 Int) ) (! (= (Mod x@@9 y@@1) (mod x@@9 y@@1))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@9 y@@1))
)))
(assert (forall ((x@@10 Int) (y@@2 Int) ) (! (= (Mul x@@10 y@@2) (* x@@10 y@@2))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@10 y@@2))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@5 o@@2) (|Set#IsMember| b@@2 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |bound#0@@1| () Int)
(declare-fun |p#0@2| () Int)
(declare-fun |p#0_0@0| () Int)
(declare-fun |q#0@0| () Int)
(declare-fun |p#0@1| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun |p#0@0| () Int)
(declare-fun |s#0@@7| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |p#3@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.GetLargerPrime)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon20_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (< |bound#0@@1| |p#0@2|)) (=> (< |bound#0@@1| |p#0@2|) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|_module.__default.IsPrime#canCall| |p#0@2|) (or (_module.__default.IsPrime |p#0@2|) (<= (LitInt 2) |p#0@2|)))) (=> (=> (|_module.__default.IsPrime#canCall| |p#0@2|) (or (_module.__default.IsPrime |p#0@2|) (<= (LitInt 2) |p#0@2|))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|_module.__default.IsPrime#canCall| |p#0@2|) (or (_module.__default.IsPrime |p#0@2|) (forall ((|m#1@@0| Int) ) (!  (=> (and (<= (LitInt 2) |m#1@@0|) (< |m#1@@0| |p#0@2|)) (or (not (= (Mod |p#0@2| |m#1@@0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |586|
 :pattern ( (Mod |p#0@2| |m#1@@0|))
)))))))))))
(let ((anon11_correct  (=> (=> (< |bound#0@@1| |p#0_0@0|) (=> (<= |p#0_0@0| |q#0@0|) (|_module.__default.IsPrime#canCall| |p#0_0@0|))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (and ($Is intType (int_2_U (- (+ |q#0@0| 1) 1)) TInt) (and (and (< |bound#0@@1| (- (+ |q#0@0| 1) 1)) (<= (- (+ |q#0@0| 1) 1) |q#0@0|)) (_module.__default.IsPrime (- (+ |q#0@0| 1) 1)))) (or (and ($Is intType (int_2_U (+ |bound#0@@1| 1)) TInt) (and (and (< |bound#0@@1| (+ |bound#0@@1| 1)) (<= (+ |bound#0@@1| 1) |q#0@0|)) (_module.__default.IsPrime (+ |bound#0@@1| 1)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (< |bound#0@@1| 0) (<= (LitInt 0) |q#0@0|)) (_module.__default.IsPrime (LitInt 0)))) (exists ((|$as#p0_0#0_0| Int) ) (!  (and (and (< |bound#0@@1| |$as#p0_0#0_0|) (<= |$as#p0_0#0_0| |q#0@0|)) (_module.__default.IsPrime |$as#p0_0#0_0|))
 :qid |Primesdfy.47:5|
 :skolemid |589|
)))))) (=> (or (and ($Is intType (int_2_U (- (+ |q#0@0| 1) 1)) TInt) (and (and (< |bound#0@@1| (- (+ |q#0@0| 1) 1)) (<= (- (+ |q#0@0| 1) 1) |q#0@0|)) (_module.__default.IsPrime (- (+ |q#0@0| 1) 1)))) (or (and ($Is intType (int_2_U (+ |bound#0@@1| 1)) TInt) (and (and (< |bound#0@@1| (+ |bound#0@@1| 1)) (<= (+ |bound#0@@1| 1) |q#0@0|)) (_module.__default.IsPrime (+ |bound#0@@1| 1)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (< |bound#0@@1| 0) (<= (LitInt 0) |q#0@0|)) (_module.__default.IsPrime (LitInt 0)))) (exists ((|$as#p0_0#0_0@@0| Int) ) (!  (and (and (< |bound#0@@1| |$as#p0_0#0_0@@0|) (<= |$as#p0_0#0_0@@0| |q#0@0|)) (_module.__default.IsPrime |$as#p0_0#0_0@@0|))
 :qid |Primesdfy.47:5|
 :skolemid |589|
))))) (=> (and (and (and (< |bound#0@@1| |p#0@1|) (<= |p#0@1| |q#0@0|)) (_module.__default.IsPrime |p#0@1|)) (and (= |p#0@2| |p#0@1|) (= (ControlFlow 0 16) 3))) GeneratedUnifiedExit_correct))))))
(let ((anon22_Else_correct  (=> (and (not (and (< |bound#0@@1| |p#0_0@0|) (<= |p#0_0@0| |q#0@0|))) (= (ControlFlow 0 19) 16)) anon11_correct)))
(let ((anon22_Then_correct  (=> (and (and (and (< |bound#0@@1| |p#0_0@0|) (<= |p#0_0@0| |q#0@0|)) ($IsAlloc intType (int_2_U |p#0_0@0|) TInt $Heap@@1)) (and (|_module.__default.IsPrime#canCall| |p#0_0@0|) (= (ControlFlow 0 18) 16))) anon11_correct)))
(let ((anon21_Else_correct  (=> (<= |p#0_0@0| |bound#0@@1|) (and (=> (= (ControlFlow 0 21) 18) anon22_Then_correct) (=> (= (ControlFlow 0 21) 19) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (< |bound#0@@1| |p#0_0@0|) (and (=> (= (ControlFlow 0 20) 18) anon22_Then_correct) (=> (= (ControlFlow 0 20) 19) anon22_Else_correct)))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 22) 20) anon21_Then_correct) (=> (= (ControlFlow 0 22) 21) anon21_Else_correct))))
(let ((anon19_Then_correct  (=> (exists ((|p#4| Int) ) (!  (and (and (< |bound#0@@1| |p#4|) (<= |p#4| |q#0@0|)) (_module.__default.IsPrime |p#4|))
 :qid |Primesdfy.46:13|
 :skolemid |592|
 :pattern ( (_module.__default.IsPrime |p#4|))
)) (and (=> (= (ControlFlow 0 23) 22) anon20_Then_correct) (=> (= (ControlFlow 0 23) 15) anon20_Else_correct)))))
(let ((anon23_Else_correct  (=> (< |bound#0@@1| |p#0@0|) (=> (and (= |p#0@2| |p#0@0|) (= (ControlFlow 0 10) 3)) GeneratedUnifiedExit_correct))))
(let ((anon23_Then_correct  (=> (<= |p#0@0| |bound#0@@1|) (and (=> (= (ControlFlow 0 6) (- 0 9)) (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@0|)))) (=> (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall ((|x#1@@3| Int) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#1@@3|))) (<= (LitInt 1) |x#1@@3|))
 :qid |Primesdfy.66:19|
 :skolemid |603|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#1@@3|))))
))) (=> (forall ((|x#1@@4| T@U) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType |x#1@@4|)) (<= (LitInt 1) (U_2_int |x#1@@4|)))
 :qid |Primesdfy.66:19|
 :skolemid |603|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType |x#1@@4|)))
)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.product#canCall| |s#0@@7|) (=> (<= (LitInt 1) (_module.__default.product ($LS $LZ) reveal__module._default.product |s#0@@7|)) (forall ((|x#3| T@U) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType |x#3|)) (|_module.__default.product#canCall| |s#0@@7|))
 :qid |Primesdfy.67:37|
 :skolemid |604|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType |x#3|)))
)))) (<= (LitInt 1) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s#0@@7|))) (and (forall ((|x#3@@0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType |x#3@@0|)) (<= (U_2_int |x#3@@0|) (_module.__default.product ($LS $LZ) reveal__module._default.product |s#0@@7|)))
 :qid |Primesdfy.67:37|
 :skolemid |606|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType |x#3@@0|)))
)) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (and (= |p#0@2| |p#0@0|) (= (ControlFlow 0 6) 3)) GeneratedUnifiedExit_correct))))))))))))
(let ((anon19_Else_correct  (=> (not (exists ((|p#4@@0| Int) ) (!  (and (and (< |bound#0@@1| |p#4@@0|) (<= |p#4@@0| |q#0@0|)) (_module.__default.IsPrime |p#4@@0|))
 :qid |Primesdfy.46:13|
 :skolemid |592|
 :pattern ( (_module.__default.IsPrime |p#4@@0|))
))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (=> (|_module.__default.AllPrimes#canCall| |s#0@@7| |q#0@0|) (or (_module.__default.AllPrimes |s#0@@7| |q#0@0|) (forall ((|x#0@@3| Int) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#0@@3|))) (_module.__default.IsPrime |x#0@@3|))
 :qid |Primesdfy.36:11|
 :skolemid |617|
 :pattern ( (_module.__default.IsPrime |x#0@@3|))
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#0@@3|))))
))))) (=> (=> (|_module.__default.AllPrimes#canCall| |s#0@@7| |q#0@0|) (or (_module.__default.AllPrimes |s#0@@7| |q#0@0|) (forall ((|x#0@@4| Int) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#0@@4|))) (_module.__default.IsPrime |x#0@@4|))
 :qid |Primesdfy.36:11|
 :skolemid |617|
 :pattern ( (_module.__default.IsPrime |x#0@@4|))
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#0@@4|))))
)))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (=> (|_module.__default.AllPrimes#canCall| |s#0@@7| |q#0@0|) (or (_module.__default.AllPrimes |s#0@@7| |q#0@0|) (forall ((|p#0@@1| Int) ) (!  (=> (and (_module.__default.IsPrime |p#0@@1|) (<= |p#0@@1| |q#0@0|)) (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@@1|))))
 :qid |Primesdfy.38:11|
 :skolemid |618|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@@1|))))
 :pattern ( (_module.__default.IsPrime |p#0@@1|))
))))) (=> (=> (|_module.__default.AllPrimes#canCall| |s#0@@7| |q#0@0|) (or (_module.__default.AllPrimes |s#0@@7| |q#0@0|) (forall ((|p#0@@2| Int) ) (!  (=> (and (_module.__default.IsPrime |p#0@@2|) (<= |p#0@@2| |q#0@0|)) (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@@2|))))
 :qid |Primesdfy.38:11|
 :skolemid |618|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#0@@2|))))
 :pattern ( (_module.__default.IsPrime |p#0@@2|))
)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= |q#0@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s#0@@7|))) (=> (= |q#0@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s#0@@7|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.__default.IsPrime#canCall| (+ |q#0@0| 1))) (and (and (|_module.__default.IsPrime#canCall| (+ |q#0@0| 1)) (_module.__default.IsPrime (+ |q#0@0| 1))) (and (= $Heap@@1 $Heap@0) (= |p#0@0| (+ |q#0@0| 1))))) (and (=> (= (ControlFlow 0 11) 6) anon23_Then_correct) (=> (= (ControlFlow 0 11) 10) anon23_Else_correct))))))))))))
(let ((anon5_correct  (=> (forall ((|p#4@@1| Int) ) (!  (=> (and (< |bound#0@@1| |p#4@@1|) (<= |p#4@@1| |q#0@0|)) (|_module.__default.IsPrime#canCall| |p#4@@1|))
 :qid |Primesdfy.46:13|
 :skolemid |588|
 :pattern ( (_module.__default.IsPrime |p#4@@1|))
)) (and (=> (= (ControlFlow 0 24) 23) anon19_Then_correct) (=> (= (ControlFlow 0 24) 11) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (and (< |bound#0@@1| |p#3@0|) (<= |p#3@0| |q#0@0|))) (= (ControlFlow 0 26) 24)) anon5_correct)))
(let ((anon18_Then_correct  (=> (and (and (and (< |bound#0@@1| |p#3@0|) (<= |p#3@0| |q#0@0|)) ($IsAlloc intType (int_2_U |p#3@0|) TInt $Heap@@1)) (and (|_module.__default.IsPrime#canCall| |p#3@0|) (= (ControlFlow 0 25) 24))) anon5_correct)))
(let ((anon17_Else_correct  (=> (<= |p#3@0| |bound#0@@1|) (and (=> (= (ControlFlow 0 28) 25) anon18_Then_correct) (=> (= (ControlFlow 0 28) 26) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (< |bound#0@@1| |p#3@0|) (and (=> (= (ControlFlow 0 27) 25) anon18_Then_correct) (=> (= (ControlFlow 0 27) 26) anon18_Else_correct)))))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 29) 27) anon17_Then_correct) (=> (= (ControlFlow 0 29) 28) anon17_Else_correct))))
(let ((anon16_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and ($IsAlloc SetType |s#0@@7| (TSet TInt) $Heap@@1) (|_module.__default.product#canCall| |s#0@@7|)) (and (|_module.__default.product#canCall| |s#0@@7|) (= |q#0@0| (_module.__default.product ($LS $LZ) reveal__module._default.product |s#0@@7|)))) (and (=> (= (ControlFlow 0 30) 29) anon16_Then_correct) (=> (= (ControlFlow 0 30) 1) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is SetType |s#0@@7| (TSet TInt)) ($IsAlloc SetType |s#0@@7| (TSet TInt) $Heap@@1)) (= 5 $FunctionContextHeight)) (and (and (|_module.__default.AllPrimes#canCall| |s#0@@7| |bound#0@@1|) (and (_module.__default.AllPrimes |s#0@@7| |bound#0@@1|) (and (forall ((|x#1@@5| Int) ) (!  (=> (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#1@@5|))) (_module.__default.IsPrime |x#1@@5|))
 :qid |Primesdfy.36:11|
 :skolemid |584|
 :pattern ( (_module.__default.IsPrime |x#1@@5|))
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |x#1@@5|))))
)) (forall ((|p#2| Int) ) (!  (=> (and (_module.__default.IsPrime |p#2|) (<= |p#2| |bound#0@@1|)) (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#2|))))
 :qid |Primesdfy.38:11|
 :skolemid |585|
 :pattern ( (|Set#IsMember| |s#0@@7| ($Box intType (int_2_U |p#2|))))
 :pattern ( (_module.__default.IsPrime |p#2|))
))))) (= (ControlFlow 0 31) 30))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
