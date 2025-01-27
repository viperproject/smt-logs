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
(declare-fun TagISet () T@U)
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
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun BoxType () T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
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
(assert (distinct TagISet alloc)
)
(assert (forall ((a T@U) (b T@U) ) (! (= (|ISet#Union| (|ISet#Union| a b) b) (|ISet#Union| a b))
 :qid |DafnyPreludebpl.847:15|
 :skolemid |164|
 :pattern ( (|ISet#Union| (|ISet#Union| a b) b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|ISet#Intersection| (|ISet#Intersection| a@@0 b@@0) b@@0) (|ISet#Intersection| a@@0 b@@0))
 :qid |DafnyPreludebpl.851:15|
 :skolemid |166|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@0 b@@0) b@@0))
)))
(assert  (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))) (= (Ctor BoxType) 4)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |48|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |49|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|ISet#Equal| a@@1 b@@1) (forall ((o T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType a@@1 o)) (U_2_bool (MapType0Select BoxType boolType b@@1 o)))
 :qid |DafnyPreludebpl.869:32|
 :skolemid |172|
 :pattern ( (MapType0Select BoxType boolType a@@1 o))
 :pattern ( (MapType0Select BoxType boolType b@@1 o))
)))
 :qid |DafnyPreludebpl.868:15|
 :skolemid |173|
 :pattern ( (|ISet#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|ISet#Disjoint| a@@2 b@@2) (and (= (|ISet#Difference| (|ISet#Union| a@@2 b@@2) a@@2) b@@2) (= (|ISet#Difference| (|ISet#Union| a@@2 b@@2) b@@2) a@@2)))
 :qid |DafnyPreludebpl.838:15|
 :skolemid |162|
 :pattern ( (|ISet#Union| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Intersection| a@@3 b@@3) o@@0))  (and (U_2_bool (MapType0Select BoxType boolType a@@3 o@@0)) (U_2_bool (MapType0Select BoxType boolType b@@3 o@@0))))
 :qid |DafnyPreludebpl.844:15|
 :skolemid |163|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Intersection| a@@3 b@@3) o@@0))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@4 b@@4) o@@1))  (and (U_2_bool (MapType0Select BoxType boolType a@@4 o@@1)) (not (U_2_bool (MapType0Select BoxType boolType b@@4 o@@1)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |168|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@4 b@@4) o@@1))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@1 (TISet t0@@1) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@1 bx@@0)) ($IsAllocBox bx@@0 t0@@1 h@@0))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@1 (TISet t0@@1) h@@0))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (|ISet#Equal| a@@5 b@@5) (= a@@5 b@@5))
 :qid |DafnyPreludebpl.870:15|
 :skolemid |174|
 :pattern ( (|ISet#Equal| a@@5 b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (y T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@6 y)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@6 b@@6) y)))
 :qid |DafnyPreludebpl.834:15|
 :skolemid |160|
 :pattern ( (|ISet#Union| a@@6 b@@6) (MapType0Select BoxType boolType a@@6 y))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) (y@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@7 y@@0)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@7 b@@7) y@@0)))
 :qid |DafnyPreludebpl.836:15|
 :skolemid |161|
 :pattern ( (|ISet#Union| a@@7 b@@7) (MapType0Select BoxType boolType b@@7 y@@0))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (y@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@8 y@@1)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@8 b@@8) y@@1))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |169|
 :pattern ( (|ISet#Difference| a@@8 b@@8) (MapType0Select BoxType boolType b@@8 y@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@2) t@@0) ($Is T@@1 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@2) t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TISet (TISet t@@1)) t@@1)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TISet t@@2)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@2))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|ISet#Union| a@@9 (|ISet#Union| a@@9 b@@9)) (|ISet#Union| a@@9 b@@9))
 :qid |DafnyPreludebpl.849:15|
 :skolemid |165|
 :pattern ( (|ISet#Union| a@@9 (|ISet#Union| a@@9 b@@9)))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|ISet#Intersection| a@@10 (|ISet#Intersection| a@@10 b@@10)) (|ISet#Intersection| a@@10 b@@10))
 :qid |DafnyPreludebpl.853:15|
 :skolemid |167|
 :pattern ( (|ISet#Intersection| a@@10 (|ISet#Intersection| a@@10 b@@10)))
)))
(assert  (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |545|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TISet t@@3)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@1)) bx@@1) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@1) (TISet t@@3))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@1 (TISet t@@3)))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|ISet#Subset| a@@11 b@@11) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@11 o@@2)) (U_2_bool (MapType0Select BoxType boolType b@@11 o@@2)))
 :qid |DafnyPreludebpl.865:33|
 :skolemid |170|
 :pattern ( (MapType0Select BoxType boolType a@@11 o@@2))
 :pattern ( (MapType0Select BoxType boolType b@@11 o@@2))
)))
 :qid |DafnyPreludebpl.864:15|
 :skolemid |171|
 :pattern ( (|ISet#Subset| a@@11 b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|ISet#Disjoint| a@@12 b@@12) (forall ((o@@3 T@U) ) (!  (or (not (U_2_bool (MapType0Select BoxType boolType a@@12 o@@3))) (not (U_2_bool (MapType0Select BoxType boolType b@@12 o@@3))))
 :qid |DafnyPreludebpl.875:35|
 :skolemid |175|
 :pattern ( (MapType0Select BoxType boolType a@@12 o@@3))
 :pattern ( (MapType0Select BoxType boolType b@@12 o@@3))
)))
 :qid |DafnyPreludebpl.874:15|
 :skolemid |176|
 :pattern ( (|ISet#Disjoint| a@@12 b@@12))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) (o@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@13 b@@13) o@@4))  (or (U_2_bool (MapType0Select BoxType boolType a@@13 o@@4)) (U_2_bool (MapType0Select BoxType boolType b@@13 o@@4))))
 :qid |DafnyPreludebpl.832:15|
 :skolemid |159|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Union| a@@13 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.ISets$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#16@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |a#14@0| () T@U)
(declare-fun |b#14@0| () T@U)
(declare-fun |a#12@0| () T@U)
(declare-fun |b#12@0| () T@U)
(declare-fun |a#10@0| () T@U)
(declare-fun |b#10@0| () T@U)
(declare-fun |a#8@0| () T@U)
(declare-fun |b#8@0| () T@U)
(declare-fun |a#6@0| () T@U)
(declare-fun |b#6@0| () T@U)
(declare-fun |a#4@0| () T@U)
(declare-fun |b#4@0| () T@U)
(declare-fun |a#2@0| () T@U)
(declare-fun |b#2@0| () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ISets)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon18_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|a#17| T@U) (|t#1| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#17| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#17| (TISet _module._default.ISets$T) $Heap)) (and ($IsBox |t#1| _module._default.ISets$T) ($IsAllocBox |t#1| _module._default.ISets$T $Heap))) (U_2_bool (MapType0Select BoxType boolType |a#17| |t#1|)))
 :qid |gitissue1207dfy.30:17|
 :skolemid |514|
 :pattern ( (MapType0Select BoxType boolType |a#17| |t#1|))
)))))
(let ((anon27_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#16@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#16@0| (TISet _module._default.ISets$T) $Heap)) (and ($IsBox |t#0@0| _module._default.ISets$T) ($IsAllocBox |t#0@0| _module._default.ISets$T $Heap)))) (= (ControlFlow 0 4) 2)) anon18_correct)))
(let ((anon27_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#16@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#16@0| (TISet _module._default.ISets$T) $Heap)) (and ($IsBox |t#0@0| _module._default.ISets$T) ($IsAllocBox |t#0@0| _module._default.ISets$T $Heap))) (= (ControlFlow 0 3) 2)) anon18_correct)))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((|a#15| T@U) (|b#15| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#15| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#15| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#15| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#15| (TISet _module._default.ISets$T) $Heap))) (|ISet#Disjoint| |a#15| |b#15|))
 :qid |gitissue1207dfy.29:17|
 :skolemid |512|
))) (=> (forall ((|a#15@@0| T@U) (|b#15@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#15@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#15@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#15@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#15@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Disjoint| |a#15@@0| |b#15@@0|))
 :qid |gitissue1207dfy.29:17|
 :skolemid |512|
)) (and (=> (= (ControlFlow 0 5) 3) anon27_Then_correct) (=> (= (ControlFlow 0 5) 4) anon27_Else_correct))))))
(let ((anon26_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#14@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#14@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#14@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#14@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 8) 5)) anon16_correct)))
(let ((anon26_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#14@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#14@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#14@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#14@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 7) 5)) anon16_correct)))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((|a#13| T@U) (|b#13| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#13| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#13| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#13| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#13| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Intersection| |a#13| |b#13|) |b#13|))
 :qid |gitissue1207dfy.28:17|
 :skolemid |510|
 :pattern ( (|ISet#Intersection| |a#13| |b#13|))
))) (=> (forall ((|a#13@@0| T@U) (|b#13@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#13@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#13@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#13@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#13@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Intersection| |a#13@@0| |b#13@@0|) |b#13@@0|))
 :qid |gitissue1207dfy.28:17|
 :skolemid |510|
 :pattern ( (|ISet#Intersection| |a#13@@0| |b#13@@0|))
)) (and (=> (= (ControlFlow 0 9) 7) anon26_Then_correct) (=> (= (ControlFlow 0 9) 8) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#12@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#12@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#12@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#12@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 12) 9)) anon14_correct)))
(let ((anon25_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#12@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#12@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#12@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#12@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 11) 9)) anon14_correct)))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((|a#11| T@U) (|b#11| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#11| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#11| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#11| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#11| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Difference| |a#11| |b#11|) |b#11|))
 :qid |gitissue1207dfy.27:17|
 :skolemid |508|
 :pattern ( (|ISet#Difference| |a#11| |b#11|))
))) (=> (forall ((|a#11@@0| T@U) (|b#11@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#11@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#11@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#11@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#11@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Difference| |a#11@@0| |b#11@@0|) |b#11@@0|))
 :qid |gitissue1207dfy.27:17|
 :skolemid |508|
 :pattern ( (|ISet#Difference| |a#11@@0| |b#11@@0|))
)) (and (=> (= (ControlFlow 0 13) 11) anon25_Then_correct) (=> (= (ControlFlow 0 13) 12) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#10@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#10@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#10@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#10@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 16) 13)) anon12_correct)))
(let ((anon24_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#10@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#10@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#10@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#10@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 15) 13)) anon12_correct)))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((|a#9| T@U) (|b#9| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#9| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#9| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#9| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#9| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Union| |a#9| |b#9|) |b#9|))
 :qid |gitissue1207dfy.26:17|
 :skolemid |506|
 :pattern ( (|ISet#Union| |a#9| |b#9|))
))) (=> (forall ((|a#9@@0| T@U) (|b#9@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#9@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#9@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#9@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#9@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Equal| (|ISet#Union| |a#9@@0| |b#9@@0|) |b#9@@0|))
 :qid |gitissue1207dfy.26:17|
 :skolemid |506|
 :pattern ( (|ISet#Union| |a#9@@0| |b#9@@0|))
)) (and (=> (= (ControlFlow 0 17) 15) anon24_Then_correct) (=> (= (ControlFlow 0 17) 16) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#8@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#8@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#8@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#8@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 20) 17)) anon10_correct)))
(let ((anon23_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#8@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#8@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#8@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#8@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 19) 17)) anon10_correct)))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((|a#7| T@U) (|b#7| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#7| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#7| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#7| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#7| (TISet _module._default.ISets$T) $Heap))) (|ISet#Subset| |b#7| |a#7|))
 :qid |gitissue1207dfy.25:17|
 :skolemid |504|
 :pattern ( (|ISet#Subset| |b#7| |a#7|))
))) (=> (forall ((|a#7@@0| T@U) (|b#7@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#7@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#7@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#7@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#7@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Subset| |b#7@@0| |a#7@@0|))
 :qid |gitissue1207dfy.25:17|
 :skolemid |504|
 :pattern ( (|ISet#Subset| |b#7@@0| |a#7@@0|))
)) (and (=> (= (ControlFlow 0 21) 19) anon23_Then_correct) (=> (= (ControlFlow 0 21) 20) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#6@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#6@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#6@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#6@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 24) 21)) anon8_correct)))
(let ((anon22_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#6@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#6@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#6@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#6@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 23) 21)) anon8_correct)))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((|a#5| T@U) (|b#5| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#5| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#5| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#5| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#5| (TISet _module._default.ISets$T) $Heap))) (and (|ISet#Subset| |b#5| |a#5|) (not (|ISet#Subset| |a#5| |b#5|))))
 :qid |gitissue1207dfy.24:17|
 :skolemid |502|
 :pattern ( (|ISet#Subset| |b#5| |a#5|))
))) (=> (forall ((|a#5@@0| T@U) (|b#5@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#5@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#5@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#5@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#5@@0| (TISet _module._default.ISets$T) $Heap))) (and (|ISet#Subset| |b#5@@0| |a#5@@0|) (not (|ISet#Subset| |a#5@@0| |b#5@@0|))))
 :qid |gitissue1207dfy.24:17|
 :skolemid |502|
 :pattern ( (|ISet#Subset| |b#5@@0| |a#5@@0|))
)) (and (=> (= (ControlFlow 0 25) 23) anon22_Then_correct) (=> (= (ControlFlow 0 25) 24) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#4@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#4@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#4@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#4@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 28) 25)) anon6_correct)))
(let ((anon21_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#4@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#4@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#4@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#4@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 27) 25)) anon6_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((|a#3| T@U) (|b#3| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#3| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#3| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#3| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#3| (TISet _module._default.ISets$T) $Heap))) (and (|ISet#Subset| |a#3| |b#3|) (not (|ISet#Subset| |b#3| |a#3|))))
 :qid |gitissue1207dfy.23:17|
 :skolemid |500|
 :pattern ( (|ISet#Subset| |a#3| |b#3|))
))) (=> (forall ((|a#3@@0| T@U) (|b#3@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#3@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#3@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#3@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#3@@0| (TISet _module._default.ISets$T) $Heap))) (and (|ISet#Subset| |a#3@@0| |b#3@@0|) (not (|ISet#Subset| |b#3@@0| |a#3@@0|))))
 :qid |gitissue1207dfy.23:17|
 :skolemid |500|
 :pattern ( (|ISet#Subset| |a#3@@0| |b#3@@0|))
)) (and (=> (= (ControlFlow 0 29) 27) anon21_Then_correct) (=> (= (ControlFlow 0 29) 28) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#2@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#2@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#2@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#2@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 32) 29)) anon4_correct)))
(let ((anon20_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#2@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#2@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#2@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#2@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 31) 29)) anon4_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (forall ((|a#1| T@U) (|b#1| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#1| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#1| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#1| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#1| (TISet _module._default.ISets$T) $Heap))) (|ISet#Subset| |a#1| |b#1|))
 :qid |gitissue1207dfy.22:17|
 :skolemid |498|
 :pattern ( (|ISet#Subset| |a#1| |b#1|))
))) (=> (forall ((|a#1@@0| T@U) (|b#1@@0| T@U) ) (!  (=> (and (and ($Is (MapType0Type BoxType boolType) |a#1@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#1@@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#1@@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#1@@0| (TISet _module._default.ISets$T) $Heap))) (|ISet#Subset| |a#1@@0| |b#1@@0|))
 :qid |gitissue1207dfy.22:17|
 :skolemid |498|
 :pattern ( (|ISet#Subset| |a#1@@0| |b#1@@0|))
)) (and (=> (= (ControlFlow 0 33) 31) anon20_Then_correct) (=> (= (ControlFlow 0 33) 32) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not (and (and ($Is (MapType0Type BoxType boolType) |a#0@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#0@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#0@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#0@0| (TISet _module._default.ISets$T) $Heap)))) (= (ControlFlow 0 36) 33)) anon2_correct)))
(let ((anon19_Then_correct  (=> (and (and (and ($Is (MapType0Type BoxType boolType) |a#0@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |a#0@0| (TISet _module._default.ISets$T) $Heap)) (and ($Is (MapType0Type BoxType boolType) |b#0@0| (TISet _module._default.ISets$T)) ($IsAlloc (MapType0Type BoxType boolType) |b#0@0| (TISet _module._default.ISets$T) $Heap))) (= (ControlFlow 0 35) 33)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 37) 35) anon19_Then_correct) (=> (= (ControlFlow 0 37) 36) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 38) 37))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 33) (- 34))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 29) (- 30))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 18))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 13) (- 14))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
