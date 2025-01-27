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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
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
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (= (Ctor SetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| |s#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0| (TSet TInt))) (not (|Set#Equal| |s#0| |Set#Empty|))))) (and (|$let#0$canCall| |s#0|) (= (_module.__default.PickLargest true |s#0|) (let ((|x#0| (|$let#0_x| |s#0|)))
|x#0|))))
 :qid |Primesdfy.190:23|
 :skolemid |678|
 :pattern ( (_module.__default.PickLargest true |s#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.product#canCall| (Lit SetType |s#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is SetType |s#0@@0| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0@@0| |Set#Empty|)) (and (|_module.__default.PickLargest#canCall| (Lit SetType |s#0@@0|)) (let ((|a#1| (_module.__default.PickLargest reveal__module._default.PickLargest (Lit SetType |s#0@@0|))))
(|_module.__default.product#canCall| (|Set#Difference| |s#0@@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#1|)))))))) (= (_module.__default.product ($LS $ly) true (Lit SetType |s#0@@0|)) (ite (|Set#Equal| |s#0@@0| |Set#Empty|) 1 (let ((|a#1@@0| (_module.__default.PickLargest reveal__module._default.PickLargest (Lit SetType |s#0@@0|))))
(Mul |a#1@@0| (_module.__default.product ($LS $ly) reveal__module._default.product (|Set#Difference| |s#0@@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#1@@0|)))))))))))
 :qid |Primesdfy.59:23|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.product ($LS $ly) true (Lit SetType |s#0@@0|)))
))))
(assert (forall (($ly@@0 T@U) ($reveal Bool) (|s#0@@1| T@U) ) (! (= (_module.__default.product ($LS $ly@@0) $reveal |s#0@@1|) (_module.__default.product $ly@@0 $reveal |s#0@@1|))
 :qid |Primesdfy.59:23|
 :skolemid |593|
 :pattern ( (_module.__default.product ($LS $ly@@0) $reveal |s#0@@1|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| (Lit SetType |s#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@2| (TSet TInt))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |s#0@@2|)) (= (_module.__default.PickLargest true (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |Primesdfy.190:23|
 :weight 3
 :skolemid |679|
 :pattern ( (_module.__default.PickLargest true (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@0))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.product#canCall| |s#0@@3|) (and (< 2 $FunctionContextHeight) ($Is SetType |s#0@@3| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0@@3| |Set#Empty|)) (and (|_module.__default.PickLargest#canCall| |s#0@@3|) (let ((|a#0| (_module.__default.PickLargest reveal__module._default.PickLargest |s#0@@3|)))
(|_module.__default.product#canCall| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#0|)))))))) (= (_module.__default.product ($LS $ly@@1) true |s#0@@3|) (ite (|Set#Equal| |s#0@@3| |Set#Empty|) 1 (let ((|a#0@@0| (_module.__default.PickLargest reveal__module._default.PickLargest |s#0@@3|)))
(Mul |a#0@@0| (_module.__default.product $ly@@1 reveal__module._default.product (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |a#0@@0|)))))))))))
 :qid |Primesdfy.59:23|
 :skolemid |597|
 :pattern ( (_module.__default.product ($LS $ly@@1) true |s#0@@3|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($reveal@@0 Bool) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.PickLargest#canCall| |s#0@@4|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |s#0@@4| (TSet TInt)) (not (|Set#Equal| |s#0@@4| |Set#Empty|))))) (and (|Set#IsMember| |s#0@@4| ($Box intType (int_2_U (_module.__default.PickLargest $reveal@@0 |s#0@@4|)))) (forall ((|y#0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@4| ($Box intType |y#0|)) (<= (U_2_int |y#0|) (_module.__default.PickLargest $reveal@@0 |s#0@@4|)))
 :qid |Primesdfy.192:28|
 :skolemid |673|
 :pattern ( (|Set#IsMember| |s#0@@4| ($Box intType |y#0|)))
))))
 :qid |Primesdfy.190:23|
 :skolemid |674|
 :pattern ( (_module.__default.PickLargest $reveal@@0 |s#0@@4|))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
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
(assert (forall ((x@@8 Int) (y@@1 Int) ) (! (= (Mul x@@8 y@@1) (* x@@8 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@8 y@@1))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@6 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@6 b@@3))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
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
(declare-fun |##s#1_0_0_3@0| () T@U)
(declare-fun |s#0@@5| () T@U)
(declare-fun |x#0@@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |##s#1_0_0_4@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |##s#1_0_0_5@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##s#1_0_0_1@0| () T@U)
(declare-fun |##s#1_0_0_2@0| () T@U)
(declare-fun |##s#1_0_0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##s#1_0_1_0@0| () T@U)
(declare-fun |##s#1_0_1_1@0| () T@U)
(declare-fun |##s#1_0_2_0@0| () T@U)
(declare-fun |##s#1_0_2_1@0| () T@U)
(declare-fun |##s#1_0_3_0@0| () T@U)
(declare-fun |s##1_0_3_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |##s#1_0_3_1@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##s#1_0_4_1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@1 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.RemoveFactor)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon19_Else_correct  (=> (and (= |##s#1_0_0_3@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) ($IsAlloc SetType |##s#1_0_0_3@0| (TSet TInt) $Heap@0)) (=> (and (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (= |##s#1_0_0_4@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and ($IsAlloc SetType |##s#1_0_0_4@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (=> (and (and (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and (= (Mul |y#0@0| (_module.__default.product ($LS $LZ) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (_module.__default.product ($LS $LZ) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (= |##s#1_0_0_5@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (and (and ($IsAlloc SetType |##s#1_0_0_5@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (= (ControlFlow 0 22) (- 0 21))))) (= (Mul (Mul |x#0@@0| |y#0@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (Mul |x#0@@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))))))))
(let ((anon19_Then_correct  (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (= $Heap@0 $Heap@4) reveal__module._default.product)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (|Set#IsMember| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) ($Box intType (int_2_U |y#0@0|)))) (=> (|Set#IsMember| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) ($Box intType (int_2_U |y#0@0|))) (=> (and (= |##s#1_0_0_1@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) ($IsAlloc SetType |##s#1_0_0_1@0| (TSet TInt) $Heap@4)) (=> (and (and (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (= |##s#1_0_0_2@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and ($IsAlloc SetType |##s#1_0_0_2@0| (TSet TInt) $Heap@4) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (and (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (= (ControlFlow 0 19) (- 0 18)))) (= (Mul |y#0@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))))))))))
(let ((anon18_Then_correct  (=> (and (and (= |##s#1_0_0_0@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) ($IsAlloc SetType |##s#1_0_0_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))))) (and (=> (= (ControlFlow 0 23) 19) anon19_Then_correct) (=> (= (ControlFlow 0 23) 22) anon19_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (= (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s#0@@5|) (Mul |x#0@@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))))))
(let ((anon18_Else_correct  (=> (and (= (_module.__default.product ($LS $LZ) reveal__module._default.product |s#0@@5|) (Mul |x#0@@0| (_module.__default.product ($LS $LZ) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (= (ControlFlow 0 17) 15)) GeneratedUnifiedExit_correct)))
(let ((anon12_Then_correct  (=> (= |x#0@@0| |y#0@0|) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and reveal__module._default.product (= (ControlFlow 0 16) 15))) GeneratedUnifiedExit_correct))))
(let ((anon17_Then_correct  (=> (and (and (= |##s#1_0_1_0@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) ($IsAlloc SetType |##s#1_0_1_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (|Set#Equal| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (=> (|Set#Equal| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (=> (= |##s#1_0_1_1@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (=> (and (and ($IsAlloc SetType |##s#1_0_1_1@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (= (ControlFlow 0 12) (- 0 11)))) (= (Mul (Mul |x#0@@0| |y#0@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (Mul (Mul |x#0@@0| |y#0@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))))))))))))
(let ((anon16_Then_correct  (=> (= |##s#1_0_2_0@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (=> (and (and (and ($IsAlloc SetType |##s#1_0_2_0@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (= |##s#1_0_2_1@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (and (and ($IsAlloc SetType |##s#1_0_2_1@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (= (ControlFlow 0 10) (- 0 9))))) (= (Mul (Mul |y#0@0| |x#0@@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (Mul (Mul |x#0@@0| |y#0@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))))))))
(let ((anon15_Then_correct  (=> (= |##s#1_0_3_0@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (=> (and (and ($IsAlloc SetType |##s#1_0_3_0@0| (TSet TInt) $Heap@0) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (= |s##1_0_3_0@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (<= 0 |x#0@@0|) (= |x#0@@0| |x#0@@0|))) (=> (or (<= 0 |x#0@@0|) (= |x#0@@0| |x#0@@0|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (< |x#0@@0| |x#0@@0|) (and (= |x#0@@0| |x#0@@0|) (and (|Set#Subset| |s##1_0_3_0@0| |s#0@@5|) (not (|Set#Subset| |s#0@@5| |s##1_0_3_0@0|)))))) (=> (or (< |x#0@@0| |x#0@@0|) (and (= |x#0@@0| |x#0@@0|) (and (|Set#Subset| |s##1_0_3_0@0| |s#0@@5|) (not (|Set#Subset| |s#0@@5| |s##1_0_3_0@0|))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|Set#IsMember| |s##1_0_3_0@0| ($Box intType (int_2_U |x#0@@0|)))) (=> (|Set#IsMember| |s##1_0_3_0@0| ($Box intType (int_2_U |x#0@@0|))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (and (|_module.__default.product#canCall| |s##1_0_3_0@0|) (|_module.__default.product#canCall| (|Set#Difference| |s##1_0_3_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (= (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s##1_0_3_0@0|) (Mul |x#0@@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s##1_0_3_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))))) (and (= $Heap@0 $Heap@3) (= |##s#1_0_3_1@0| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))) (and (and ($IsAlloc SetType |##s#1_0_3_1@0| (TSet TInt) $Heap@3) (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))) (= (ControlFlow 0 5) (- 0 4))))) (= (Mul |y#0@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (Mul (Mul |y#0@0| |x#0@@0|) (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))))))))))))))))
(let ((anon14_Then_correct  (=> ($IsAlloc SetType |s#0@@5| (TSet TInt) $Heap@0) (=> (and (|_module.__default.product#canCall| |s#0@@5|) (|_module.__default.product#canCall| |s#0@@5|)) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and reveal__module._default.product (= |##s#1_0_4_1@0| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))))) (and (and ($IsAlloc SetType |##s#1_0_4_1@0| (TSet TInt) $Heap@2) (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|)))))) (and (|_module.__default.product#canCall| (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))) (= (ControlFlow 0 3) (- 0 2))))) (= (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product |s#0@@5|) (Mul |y#0@0| (_module.__default.product ($LS ($LS $LZ)) reveal__module._default.product (|Set#Difference| |s#0@@5| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0@0|))))))))))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |x#0@@0| |y#0@0|)) (not true)) (and (and (and (and (and (and (=> (= (ControlFlow 0 24) 1) anon13_Then_correct) (=> (= (ControlFlow 0 24) 3) anon14_Then_correct)) (=> (= (ControlFlow 0 24) 5) anon15_Then_correct)) (=> (= (ControlFlow 0 24) 10) anon16_Then_correct)) (=> (= (ControlFlow 0 24) 12) anon17_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon18_Then_correct)) (=> (= (ControlFlow 0 24) 17) anon18_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@1 $Heap@0)) (and (forall ((|$ih#s0#0| T@U) ) (!  (=> (and (and ($Is SetType |$ih#s0#0| (TSet TInt)) (|Set#IsMember| |$ih#s0#0| ($Box intType (int_2_U |x#0@@0|)))) (or (and (<= 0 |x#0@@0|) (< |x#0@@0| |x#0@@0|)) (and (= |x#0@@0| |x#0@@0|) (and (|Set#Subset| |$ih#s0#0| |s#0@@5|) (not (|Set#Subset| |s#0@@5| |$ih#s0#0|)))))) (= (_module.__default.product ($LS $LZ) reveal__module._default.product |$ih#s0#0|) (Mul |x#0@@0| (_module.__default.product ($LS $LZ) reveal__module._default.product (|Set#Difference| |$ih#s0#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|))))))))
 :qid |Primesdfy.107:28|
 :skolemid |633|
 :pattern ( (|Set#Difference| |$ih#s0#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))
 :pattern ( (|Set#IsMember| |$ih#s0#0| ($Box intType (int_2_U |x#0@@0|))))
)) ($IsAlloc SetType |s#0@@5| (TSet TInt) $Heap@0))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (not (|Set#Equal| |s#0@@5| |Set#Empty|))) (=> (and (and (not (|Set#Equal| |s#0@@5| |Set#Empty|)) (|_module.__default.PickLargest#canCall| |s#0@@5|)) (and (|_module.__default.PickLargest#canCall| |s#0@@5|) (= |y#0@0| (_module.__default.PickLargest reveal__module._default.PickLargest |s#0@@5|)))) (and (=> (= (ControlFlow 0 25) 16) anon12_Then_correct) (=> (= (ControlFlow 0 25) 24) anon12_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is SetType |s#0@@5| (TSet TInt)) ($IsAlloc SetType |s#0@@5| (TSet TInt) $Heap@@1)) (= 3 $FunctionContextHeight)) (and (|Set#IsMember| |s#0@@5| ($Box intType (int_2_U |x#0@@0|))) (= (ControlFlow 0 27) 25))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
