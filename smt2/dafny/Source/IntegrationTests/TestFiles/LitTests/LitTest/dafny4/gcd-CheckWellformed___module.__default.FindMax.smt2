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
(declare-fun Tagclass._module.pos () T@U)
(declare-fun tytagFamily$pos () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.pos () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#3_x| (T@U) Int)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.FindMax (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.FindMax#canCall| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
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
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._module.pos tytagFamily$pos)
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.pos $h)
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.pos $h))
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
(assert (forall ((s T@U) ) (!  (=> (|$let#3$canCall| s) (|Set#IsMember| s ($Box intType (int_2_U (|$let#3_x| s)))))
 :qid |gcddfy.64:3|
 :skolemid |576|
 :pattern ( (|$let#3_x| s))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.pos) (<= (LitInt 1) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.pos))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.pos) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._module.pos)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@0 Tclass._module.pos))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.FindMax#canCall| (Lit SetType |s#0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0| (TSet Tclass._module.pos))) (not (|Set#Equal| |s#0| |Set#Empty|))))) (and (and (|$let#3$canCall| (Lit SetType |s#0|)) (=> (not (|Set#Equal| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (|$let#3_x| (Lit SetType |s#0|))))))) (let ((|s'#3| (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (|$let#3_x| (Lit SetType |s#0|))))))))
(|_module.__default.FindMax#canCall| |s'#3|)))) (= (_module.__default.FindMax ($LS $ly) (Lit SetType |s#0|)) (let ((|x#1| (|$let#3_x| (Lit SetType |s#0|))))
(ite (|Set#Equal| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1|)))) |x#1| (let ((|s'#2| (|Set#Difference| |s#0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#1|))))))
(let ((|y#3| (_module.__default.FindMax ($LS $ly) |s'#2|)))
(ite (< |x#1| |y#3|) |y#3| |x#1|))))))))
 :qid |gcddfy.60:16|
 :weight 3
 :skolemid |578|
 :pattern ( (_module.__default.FindMax ($LS $ly) (Lit SetType |s#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
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
(assert (forall (($ly@@0 T@U) (|s#0@@0| T@U) ) (! (= (_module.__default.FindMax ($LS $ly@@0) |s#0@@0|) (_module.__default.FindMax $ly@@0 |s#0@@0|))
 :qid |gcddfy.60:16|
 :skolemid |571|
 :pattern ( (_module.__default.FindMax ($LS $ly@@0) |s#0@@0|))
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
 :skolemid |703|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@0 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.FindMax#canCall| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@1| (TSet Tclass._module.pos))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (and (|$let#3$canCall| |s#0@@1|) (=> (not (|Set#Equal| |s#0@@1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (|$let#3_x| |s#0@@1|)))))) (let ((|s'#1| (|Set#Difference| |s#0@@1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (|$let#3_x| |s#0@@1|)))))))
(|_module.__default.FindMax#canCall| |s'#1|)))) (= (_module.__default.FindMax ($LS $ly@@1) |s#0@@1|) (let ((|x#0@@1| (|$let#3_x| |s#0@@1|)))
(ite (|Set#Equal| |s#0@@1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@1|)))) |x#0@@1| (let ((|s'#0| (|Set#Difference| |s#0@@1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#0@@1|))))))
(let ((|y#1| (_module.__default.FindMax $ly@@1 |s'#0|)))
(ite (< |x#0@@1| |y#1|) |y#1| |x#0@@1|))))))))
 :qid |gcddfy.60:16|
 :skolemid |577|
 :pattern ( (_module.__default.FindMax ($LS $ly@@1) |s#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (= (Tag Tclass._module.pos) Tagclass._module.pos))
(assert (= (TagFamily Tclass._module.pos) tytagFamily$pos))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.FindMax#canCall| |s#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |s#0@@2| (TSet Tclass._module.pos)) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U (_module.__default.FindMax $ly@@2 |s#0@@2|)))) (forall ((|y#0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#0|)) (<= (U_2_int |y#0|) (_module.__default.FindMax $ly@@2 |s#0@@2|)))
 :qid |gcddfy.62:30|
 :skolemid |573|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#0|)))
))) (<= (LitInt 1) (_module.__default.FindMax $ly@@2 |s#0@@2|))))
 :qid |gcddfy.60:16|
 :skolemid |574|
 :pattern ( (_module.__default.FindMax $ly@@2 |s#0@@2|))
))))
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
(declare-fun |s#0@@3| () T@U)
(declare-fun |y#6@0| () Int)
(declare-fun |max#0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |y#Z#0@0| () Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |s'#Z#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.FindMax)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon5_correct true))
(let ((anon16_Else_correct  (=> (and (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#6@0|))) (<= |y#6@0| |max#0|)) (= (ControlFlow 0 19) 17)) anon5_correct)))
(let ((anon16_Then_correct  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#6@0|))) (=> (and (<= |y#6@0| |max#0|) (= (ControlFlow 0 18) 17)) anon5_correct))))
(let ((anon15_Then_correct  (=> (<= (LitInt 1) (_module.__default.FindMax ($LS $LZ) |s#0@@3|)) (=> (and (<= (LitInt 1) |max#0|) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |max#0|)))) (and (=> (= (ControlFlow 0 20) 18) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |max#0|)))) (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |max#0|))) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((|y#5| Int) ) (!  (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#5|))) (<= |y#5| |max#0|))
 :qid |gcddfy.62:30|
 :skolemid |579|
 :pattern ( (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |y#5|))))
)))))))
(let ((anon13_correct  (=> (|$let#3$canCall| |s#0@@3|) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is intType (int_2_U (ite (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))) |x#2@0| (let ((|s'#4| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))))
(let ((|y#7| (_module.__default.FindMax ($LS $LZ) |s'#4|)))
(ite (< |x#2@0| |y#7|) |y#7| |x#2@0|))))) Tclass._module.pos)) (=> ($Is intType (int_2_U (ite (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))) |x#2@0| (let ((|s'#4@@0| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))))
(let ((|y#7@@0| (_module.__default.FindMax ($LS $LZ) |s'#4@@0|)))
(ite (< |x#2@0| |y#7@@0|) |y#7@@0| |x#2@0|))))) Tclass._module.pos) (=> (= (_module.__default.FindMax ($LS $LZ) |s#0@@3|) (ite (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))) |x#2@0| (let ((|s'#4@@1| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))))
(let ((|y#7@@1| (_module.__default.FindMax ($LS $LZ) |s'#4@@1|)))
(ite (< |x#2@0| |y#7@@1|) |y#7@@1| |x#2@0|))))) (=> (and (and (=> (not (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))) (let ((|s'#4@@2| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))))
(|_module.__default.FindMax#canCall| |s'#4@@2|))) ($Is intType (int_2_U (_module.__default.FindMax ($LS $LZ) |s#0@@3|)) Tclass._module.pos)) (and (= (_module.__default.FindMax ($LS $LZ) |s#0@@3|) |max#0|) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct)))))))
(let ((anon19_Else_correct  (=> (and (<= |y#Z#0@0| |x#2@0|) (= (ControlFlow 0 9) 5)) anon13_correct)))
(let ((anon19_Then_correct  (=> (and (< |x#2@0| |y#Z#0@0|) (= (ControlFlow 0 8) 5)) anon13_correct)))
(let ((anon18_Else_correct  (=> (and (and (not (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))) (= |let#0#0#0| (|Set#Difference| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))))) (and ($Is SetType |let#0#0#0| (TSet TInt)) (= |s'#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (|Set#Equal| |s#0@@3| (|Set#Union| |s'#Z#0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))))) (=> (|Set#Equal| |s#0@@3| (|Set#Union| |s'#Z#0@0| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|))))) (and (=> (= (ControlFlow 0 10) (- 0 13)) ($Is SetType |s'#Z#0@0| (TSet Tclass._module.pos))) (=> ($Is SetType |s'#Z#0@0| (TSet Tclass._module.pos)) (=> ($IsAlloc SetType |s'#Z#0@0| (TSet Tclass._module.pos) $Heap@@1) (and (=> (= (ControlFlow 0 10) (- 0 12)) (not (|Set#Equal| |s'#Z#0@0| |Set#Empty|))) (=> (not (|Set#Equal| |s'#Z#0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (|Set#Subset| |s'#Z#0@0| |s#0@@3|) (not (|Set#Subset| |s#0@@3| |s'#Z#0@0|)))) (=> (and (|Set#Subset| |s'#Z#0@0| |s#0@@3|) (not (|Set#Subset| |s#0@@3| |s'#Z#0@0|))) (=> (|_module.__default.FindMax#canCall| |s'#Z#0@0|) (=> (and (and (= |let#1#0#0| (_module.__default.FindMax ($LS $LZ) |s'#Z#0@0|)) (|_module.__default.FindMax#canCall| |s'#Z#0@0|)) (and ($Is intType (int_2_U |let#1#0#0|) Tclass._module.pos) (= |y#Z#0@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 10) 8) anon19_Then_correct) (=> (= (ControlFlow 0 10) 9) anon19_Else_correct))))))))))))))))
(let ((anon18_Then_correct  (=> (and (|Set#Equal| |s#0@@3| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U |x#2@0|)))) (= (ControlFlow 0 7) 5)) anon13_correct)))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U (LitInt 0))))) (exists ((|x#3| T@U) ) (! (|Set#IsMember| |s#0@@3| ($Box intType |x#3|))
 :qid |gcddfy.64:7|
 :skolemid |581|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U (LitInt 0))))) (exists ((|x#3@@0| Int) ) (! (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#3@@0|)))
 :qid |gcddfy.64:7|
 :skolemid |581|
))) (=> (|Set#IsMember| |s#0@@3| ($Box intType (int_2_U |x#2@0|))) (and (=> (= (ControlFlow 0 15) 7) anon18_Then_correct) (=> (= (ControlFlow 0 15) 10) anon18_Else_correct)))))))
(let ((anon17_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (not (|Set#Equal| |s#0@@3| |Set#Empty|))) (and (and (=> (= (ControlFlow 0 21) 20) anon15_Then_correct) (=> (= (ControlFlow 0 21) 15) anon17_Then_correct)) (=> (= (ControlFlow 0 21) 1) anon17_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is SetType |s#0@@3| (TSet Tclass._module.pos))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct)))
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
