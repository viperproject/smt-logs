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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#0_x| (T@U) Int)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |_module.__default.Pick#canCall| (T@U) Bool)
(declare-fun _module.__default.Pick (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (forall ((s T@U) ) (!  (=> (|$let#0$canCall| s) (|Set#IsMember| s ($Box intType (int_2_U (|$let#0_x| s)))))
 :qid |ByMethodCompilationdfy.107:3|
 :skolemid |596|
 :pattern ( (|$let#0_x| s))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit SetType |s#0|)) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0| |Set#Empty|)) (and (|_module.__default.Pick#canCall| (Lit SetType |s#0|)) (let ((|x#1| (LitInt (_module.__default.Pick (Lit SetType |s#0|)))))
(|_module.__default.Sum#canCall| (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1|)))))))) (= (_module.__default.Sum ($LS $ly) (Lit SetType |s#0|)) (ite (|Set#Equal| |s#0| |Set#Empty|) 0 (let ((|x#1@@0| (LitInt (_module.__default.Pick (Lit SetType |s#0|)))))
(+ |x#1@@0| (_module.__default.Sum ($LS $ly) (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1@@0|)))))))))))
 :qid |ByMethodCompilationdfy.84:10|
 :weight 3
 :skolemid |586|
 :pattern ( (_module.__default.Sum ($LS $ly) (Lit SetType |s#0|)))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.Pick#canCall| |s#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0@@0| (TSet TInt))) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) (and (|$let#0$canCall| |s#0@@0|) (= (_module.__default.Pick |s#0@@0|) (let ((|x#0| (|$let#0_x| |s#0@@0|)))
|x#0|))))
 :qid |ByMethodCompilationdfy.104:16|
 :skolemid |597|
 :pattern ( (_module.__default.Pick |s#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.Pick#canCall| (Lit SetType |s#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@1| (TSet TInt))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |s#0@@1|)) (= (_module.__default.Pick (Lit SetType |s#0@@1|)) (let ((|x#1@@1| (|$let#0_x| (Lit SetType |s#0@@1|))))
|x#1@@1|))))
 :qid |ByMethodCompilationdfy.104:16|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.Pick (Lit SetType |s#0@@1|)) ($IsGoodHeap $Heap@@0))
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
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
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
(assert (forall (($ly@@0 T@U) (|s#0@@2| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@0) |s#0@@2|) (_module.__default.Sum $ly@@0 |s#0@@2|))
 :qid |ByMethodCompilationdfy.84:10|
 :skolemid |581|
 :pattern ( (_module.__default.Sum ($LS $ly@@0) |s#0@@2|))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
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
 :skolemid |603|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |s#0@@3|) (and (< 1 $FunctionContextHeight) ($Is SetType |s#0@@3| (TSet TInt)))) (and (=> (not (|Set#Equal| |s#0@@3| |Set#Empty|)) (and (|_module.__default.Pick#canCall| |s#0@@3|) (let ((|x#0@@0| (_module.__default.Pick |s#0@@3|)))
(|_module.__default.Sum#canCall| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@0|)))))))) (= (_module.__default.Sum ($LS $ly@@1) |s#0@@3|) (ite (|Set#Equal| |s#0@@3| |Set#Empty|) 0 (let ((|x#0@@1| (_module.__default.Pick |s#0@@3|)))
(+ |x#0@@1| (_module.__default.Sum $ly@@1 (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@1|)))))))))))
 :qid |ByMethodCompilationdfy.84:10|
 :skolemid |585|
 :pattern ( (_module.__default.Sum ($LS $ly@@1) |s#0@@3|))
))))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
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
(declare-fun $LZ () T@U)
(declare-fun |s#0@@4| () T@U)
(declare-fun |y#0| () Int)
(declare-fun |x#1_0@0| () Int)
(declare-fun |##s#1_1_0_0_0@0| () T@U)
(declare-fun |s'x#1_1_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##s#1_1_0_1_1@0| () T@U)
(declare-fun |##s#1_1_0_2_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##s#1_1_0_3_0@0| () T@U)
(declare-fun |sy#1_0@0| () T@U)
(declare-fun |##s#1_1_0_3_1@0| () T@U)
(declare-fun |##s#1_1_0_4_1@0| () T@U)
(declare-fun |##s#1_1_0_5_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |sy#1_0| () T@U)
(declare-fun |s'x#1_1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.SumLemma)
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
 (=> (= (ControlFlow 0 0) 32) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (= (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (+ (_module.__default.Sum ($LS ($LS $LZ)) |s#0@@4|) |y#0|)))))
(let ((anon21_Else_correct  (=> (and (= (_module.__default.Sum ($LS $LZ) (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (+ (_module.__default.Sum ($LS $LZ) |s#0@@4|) |y#0|)) (= (ControlFlow 0 25) 22)) GeneratedUnifiedExit_correct)))
(let ((anon14_Then_correct  (=> (and (= |x#1_0@0| |y#0|) (= (ControlFlow 0 24) 22)) GeneratedUnifiedExit_correct)))
(let ((anon13_Then_correct  (=> (and (|Set#Equal| |s#0@@4| |Set#Empty|) (= (ControlFlow 0 23) 22)) GeneratedUnifiedExit_correct)))
(let ((anon21_Then_correct  (=> (and (and (and (= |##s#1_1_0_0_0@0| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) ($IsAlloc SetType |##s#1_1_0_0_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))))) (and (and ($IsAlloc SetType |s#0@@4| (TSet TInt) $Heap@0) (|_module.__default.Sum#canCall| |s#0@@4|)) (and (|_module.__default.Sum#canCall| |s#0@@4|) (= (ControlFlow 0 20) (- 0 19))))) (= (+ (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) |y#0|) (+ (_module.__default.Sum ($LS ($LS $LZ)) |s#0@@4|) |y#0|)))))
(let ((anon20_Then_correct  (=> ($IsAlloc SetType |s'x#1_1_0@0| (TSet TInt) $Heap@0) (=> (and (|_module.__default.Sum#canCall| |s'x#1_1_0@0|) (|_module.__default.Sum#canCall| |s'x#1_1_0@0|)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (or (or (<= 0 |y#0|) (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|)))) (= |x#1_0@0| |y#0|))) (=> (or (or (<= 0 |y#0|) (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|)))) (= |x#1_0@0| |y#0|)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|))) (and (|Set#Equal| |s'x#1_1_0@0| |s#0@@4|) (< |x#1_0@0| |y#0|)))) (=> (or (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|))) (and (|Set#Equal| |s'x#1_1_0@0| |s#0@@4|) (< |x#1_0@0| |y#0|))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (|Set#IsMember| |s'x#1_1_0@0| ($Box intType (int_2_U |x#1_0@0|))))) (=> (not (|Set#IsMember| |s'x#1_1_0@0| ($Box intType (int_2_U |x#1_0@0|)))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (|_module.__default.Sum#canCall| |s'x#1_1_0@0|)) (= (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (+ (_module.__default.Sum ($LS ($LS $LZ)) |s'x#1_1_0@0|) |x#1_0@0|))) (and (= $Heap@0 $Heap@2) (= |##s#1_1_0_1_1@0| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))))) (and (and ($IsAlloc SetType |##s#1_1_0_1_1@0| (TSet TInt) $Heap@2) (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))))) (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (= (ControlFlow 0 15) (- 0 14))))) (= (+ (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) |s'x#1_1_0@0|)) |y#0|) (+ (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) |y#0|))))))))))))))
(let ((anon19_Then_correct  (=> (and (and (= |##s#1_1_0_2_0@0| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) ($IsAlloc SetType |##s#1_1_0_2_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (or (<= 0 |y#0|) (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|)))) (= |y#0| |y#0|))) (=> (or (or (<= 0 |y#0|) (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|)))) (= |y#0| |y#0|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|))) (and (|Set#Equal| |s'x#1_1_0@0| |s#0@@4|) (< |y#0| |y#0|)))) (=> (or (and (|Set#Subset| |s'x#1_1_0@0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |s'x#1_1_0@0|))) (and (|Set#Equal| |s'x#1_1_0@0| |s#0@@4|) (< |y#0| |y#0|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (|Set#IsMember| |s'x#1_1_0@0| ($Box intType (int_2_U |y#0|))))) (=> (not (|Set#IsMember| |s'x#1_1_0@0| ($Box intType (int_2_U |y#0|)))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (|_module.__default.Sum#canCall| |s'x#1_1_0@0|)) (and (= (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (+ (_module.__default.Sum ($LS ($LS $LZ)) |s'x#1_1_0@0|) |y#0|)) (= $Heap@0 $Heap@1))) (and (and ($IsAlloc SetType |s'x#1_1_0@0| (TSet TInt) $Heap@1) (|_module.__default.Sum#canCall| |s'x#1_1_0@0|)) (and (|_module.__default.Sum#canCall| |s'x#1_1_0@0|) (= (ControlFlow 0 10) (- 0 9))))) (= (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))) (+ (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) |s'x#1_1_0@0|)) |y#0|)))))))))))))
(let ((anon18_Then_correct  (=> (and (and (= |##s#1_1_0_3_0@0| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) ($IsAlloc SetType |##s#1_1_0_3_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.Sum#canCall| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (|_module.__default.Sum#canCall| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (|Set#Equal| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))) (=> (|Set#Equal| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (=> (= |##s#1_1_0_3_1@0| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (=> (and (and ($IsAlloc SetType |##s#1_1_0_3_1@0| (TSet TInt) $Heap@0) (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))) (and (|_module.__default.Sum#canCall| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (= (ControlFlow 0 7) (- 0 6)))) (= (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))))) (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))))))))))))
(let ((anon17_Then_correct  (=> (and (and (and ($IsAlloc SetType |sy#1_0@0| (TSet TInt) $Heap@0) (|_module.__default.Sum#canCall| |sy#1_0@0|)) (and (|_module.__default.Sum#canCall| |sy#1_0@0|) (= |##s#1_1_0_4_1@0| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))))) (and (and ($IsAlloc SetType |##s#1_1_0_4_1@0| (TSet TInt) $Heap@0) (|_module.__default.Sum#canCall| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))))) (and (|_module.__default.Sum#canCall| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))) (= (ControlFlow 0 5) (- 0 4))))) (= (_module.__default.Sum ($LS ($LS $LZ)) |sy#1_0@0|) (+ |x#1_0@0| (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|))))))))))
(let ((anon16_Then_correct  (=> (and (and (and (= |##s#1_1_0_5_0@0| (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) ($IsAlloc SetType |##s#1_1_0_5_0@0| (TSet TInt) $Heap@0)) (and (|_module.__default.Sum#canCall| (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (|_module.__default.Sum#canCall| (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))))) (and (and ($IsAlloc SetType |sy#1_0@0| (TSet TInt) $Heap@0) (|_module.__default.Sum#canCall| |sy#1_0@0|)) (and (|_module.__default.Sum#canCall| |sy#1_0@0|) (= (ControlFlow 0 3) (- 0 2))))) (= (_module.__default.Sum ($LS ($LS $LZ)) (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (_module.__default.Sum ($LS ($LS $LZ)) |sy#1_0@0|)))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (and (or (not (= |x#1_0@0| |y#0|)) (not true)) (= |s'x#1_1_0@0| (|Set#Difference| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (|Set#Equal| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))) |s#0@@4|)) (=> (|Set#Equal| (|Set#Union| |s'x#1_1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1_0@0|)))) |s#0@@4|) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 26) 1) anon15_Then_correct) (=> (= (ControlFlow 0 26) 3) anon16_Then_correct)) (=> (= (ControlFlow 0 26) 5) anon17_Then_correct)) (=> (= (ControlFlow 0 26) 7) anon18_Then_correct)) (=> (= (ControlFlow 0 26) 10) anon19_Then_correct)) (=> (= (ControlFlow 0 26) 15) anon20_Then_correct)) (=> (= (ControlFlow 0 26) 20) anon21_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon21_Else_correct)))))))
(let ((anon13_Else_correct  (=> (and (not (|Set#Equal| |s#0@@4| |Set#Empty|)) (= |sy#1_0@0| (|Set#Union| |s#0@@4| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (|Set#Equal| |s#0@@4| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))) (=> (|Set#Equal| |s#0@@4| (|Set#Difference| |sy#1_0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (=> ($IsAlloc SetType |sy#1_0@0| (TSet TInt) $Heap@0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (not (|Set#Equal| |sy#1_0@0| |Set#Empty|))) (=> (and (and (not (|Set#Equal| |sy#1_0@0| |Set#Empty|)) (|_module.__default.Pick#canCall| |sy#1_0@0|)) (and (|_module.__default.Pick#canCall| |sy#1_0@0|) (= |x#1_0@0| (_module.__default.Pick |sy#1_0@0|)))) (and (=> (= (ControlFlow 0 28) 24) anon14_Then_correct) (=> (= (ControlFlow 0 28) 26) anon14_Else_correct))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@1 $Heap@0) (forall ((|$ih#s0#0| T@U) ) (!  (=> (and (and ($Is SetType |$ih#s0#0| (TSet TInt)) (not (|Set#IsMember| |$ih#s0#0| ($Box intType (int_2_U |y#0|))))) (or (and (|Set#Subset| |$ih#s0#0| |s#0@@4|) (not (|Set#Subset| |s#0@@4| |$ih#s0#0|))) (and (|Set#Equal| |$ih#s0#0| |s#0@@4|) (and (<= 0 |y#0|) (< |y#0| |y#0|))))) (= (_module.__default.Sum ($LS $LZ) (|Set#Union| |$ih#s0#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|))))) (+ (_module.__default.Sum ($LS $LZ) |$ih#s0#0|) |y#0|)))
 :qid |ByMethodCompilationdfy.110:16|
 :skolemid |600|
 :pattern ( (|Set#Union| |$ih#s0#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |y#0|)))))
 :pattern ( (|Set#IsMember| |$ih#s0#0| ($Box intType (int_2_U |y#0|))))
)))) (and (=> (= (ControlFlow 0 31) 23) anon13_Then_correct) (=> (= (ControlFlow 0 31) 28) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and ($Is SetType |s#0@@4| (TSet TInt)) ($IsAlloc SetType |s#0@@4| (TSet TInt) $Heap@@1))) (and (and ($Is SetType |sy#1_0| (TSet TInt)) ($IsAlloc SetType |sy#1_0| (TSet TInt) $Heap@@1)) true)) (=> (and (and (and (and ($Is SetType |s'x#1_1_0| (TSet TInt)) ($IsAlloc SetType |s'x#1_1_0| (TSet TInt) $Heap@@1)) true) (= 2 $FunctionContextHeight)) (and (not (|Set#IsMember| |s#0@@4| ($Box intType (int_2_U |y#0|)))) (= (ControlFlow 0 32) 31))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
