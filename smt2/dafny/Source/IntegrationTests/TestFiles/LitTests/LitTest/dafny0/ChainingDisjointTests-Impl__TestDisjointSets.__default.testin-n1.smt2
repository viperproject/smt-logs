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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (c T@U) ) (!  (=> (or (not (= a@@10 c)) (not true)) (=> (and ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c)) ($HeapSucc a@@10 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@10 b@@7) ($HeapSucc b@@7 c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2490|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@5)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TestDisjointSets.__default.testing1)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon30_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (=> (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (not (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))))))))
(let ((anon45_Else_correct  (=> (and (not (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))))) (= (ControlFlow 0 5) 2)) anon30_correct)))
(let ((anon45_Then_correct  (=> (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (= (ControlFlow 0 4) 2)) anon30_correct)))
(let ((anon44_Else_correct  (=> (not (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))))) (and (=> (= (ControlFlow 0 7) 4) anon45_Then_correct) (=> (= (ControlFlow 0 7) 5) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (and (=> (= (ControlFlow 0 6) 4) anon45_Then_correct) (=> (= (ControlFlow 0 6) 5) anon45_Else_correct)))))
(let ((anon43_Else_correct  (=> (not (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2))))))) (and (=> (= (ControlFlow 0 9) 6) anon44_Then_correct) (=> (= (ControlFlow 0 9) 7) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 8) 6) anon44_Then_correct) (=> (= (ControlFlow 0 8) 7) anon44_Else_correct)))))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (=> (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (and (=> (= (ControlFlow 0 10) 8) anon43_Then_correct) (=> (= (ControlFlow 0 10) 9) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))))) (= (ControlFlow 0 13) 10)) anon24_correct)))
(let ((anon42_Then_correct  (=> (and (and (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (= (ControlFlow 0 12) 10)) anon24_correct)))
(let ((anon41_Else_correct  (=> (not (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))))) (and (=> (= (ControlFlow 0 15) 12) anon42_Then_correct) (=> (= (ControlFlow 0 15) 13) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 14) 12) anon42_Then_correct) (=> (= (ControlFlow 0 14) 13) anon42_Else_correct)))))
(let ((anon40_Else_correct  (=> (not (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 17) 14) anon41_Then_correct) (=> (= (ControlFlow 0 17) 15) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (|Set#Disjoint| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (and (=> (= (ControlFlow 0 16) 14) anon41_Then_correct) (=> (= (ControlFlow 0 16) 15) anon41_Else_correct)))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (=> (not (and (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (|Set#Disjoint| (|Set#Union| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (and (=> (= (ControlFlow 0 18) 16) anon40_Then_correct) (=> (= (ControlFlow 0 18) 17) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (not (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8))))))) (= (ControlFlow 0 21) 18)) anon18_correct)))
(let ((anon39_Then_correct  (=> (and (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 8)))))) (= (ControlFlow 0 20) 18)) anon18_correct)))
(let ((anon38_Else_correct  (=> (not (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))))) (and (=> (= (ControlFlow 0 23) 20) anon39_Then_correct) (=> (= (ControlFlow 0 23) 21) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (and (=> (= (ControlFlow 0 22) 20) anon39_Then_correct) (=> (= (ControlFlow 0 22) 21) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (not (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (and (=> (= (ControlFlow 0 25) 22) anon38_Then_correct) (=> (= (ControlFlow 0 25) 23) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (and (=> (= (ControlFlow 0 24) 22) anon38_Then_correct) (=> (= (ControlFlow 0 24) 23) anon38_Else_correct)))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (not (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (=> (not (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (and (=> (= (ControlFlow 0 26) 24) anon37_Then_correct) (=> (= (ControlFlow 0 26) 25) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (not (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))))) (= (ControlFlow 0 29) 26)) anon12_correct)))
(let ((anon36_Then_correct  (=> (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (= (ControlFlow 0 28) 26)) anon12_correct)))
(let ((anon35_Else_correct  (=> (not (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (and (=> (= (ControlFlow 0 31) 28) anon36_Then_correct) (=> (= (ControlFlow 0 31) 29) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (and (=> (= (ControlFlow 0 30) 28) anon36_Then_correct) (=> (= (ControlFlow 0 30) 29) anon36_Else_correct)))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (not (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (=> (not (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (|Set#Disjoint| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (and (=> (= (ControlFlow 0 32) 30) anon35_Then_correct) (=> (= (ControlFlow 0 32) 31) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (not (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))))) (= (ControlFlow 0 35) 32)) anon8_correct)))
(let ((anon34_Then_correct  (=> (and (and (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (= (ControlFlow 0 34) 32)) anon8_correct)))
(let ((anon33_Else_correct  (=> (not (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9)))))) (and (=> (= (ControlFlow 0 37) 34) anon34_Then_correct) (=> (= (ControlFlow 0 37) 35) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 9))))) (and (=> (= (ControlFlow 0 36) 34) anon34_Then_correct) (=> (= (ControlFlow 0 36) 35) anon34_Else_correct)))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 38) (- 0 45)) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 38) (- 0 44)) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 38) (- 0 43)) (|Set#Disjoint| (|Set#Union| |$rhs#0@0| |$rhs#1@0|) |$rhs#2@0|)) (=> (and (and (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (|Set#Disjoint| (|Set#Union| |$rhs#0@0| |$rhs#1@0|) |$rhs#2@0|)) (and (=> (= (ControlFlow 0 38) (- 0 42)) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (=> (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (and (=> (= (ControlFlow 0 38) (- 0 41)) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (=> (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (and (=> (= (ControlFlow 0 38) (- 0 40)) (|Set#Disjoint| (|Set#Union| |$rhs#0@0| |$rhs#1@0|) |$rhs#2@0|)) (=> (|Set#Disjoint| (|Set#Union| |$rhs#0@0| |$rhs#1@0|) |$rhs#2@0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ChainingDisjointTestsdfy.19:10|
 :skolemid |484|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (=> (not (|Set#Disjoint| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) (and (=> (= (ControlFlow 0 38) 36) anon33_Then_correct) (=> (= (ControlFlow 0 38) 37) anon33_Else_correct)))))))))))))))))
(let ((anon32_Else_correct  (=> (and (not (and (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|))) (= (ControlFlow 0 47) 38)) anon4_correct)))
(let ((anon32_Then_correct  (=> (and (and (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (= (ControlFlow 0 46) 38)) anon4_correct)))
(let ((anon31_Else_correct  (=> (not (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 49) 46) anon32_Then_correct) (=> (= (ControlFlow 0 49) 47) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (|Set#Disjoint| |$rhs#0@0| |$rhs#1@0|) (and (=> (= (ControlFlow 0 48) 46) anon32_Then_correct) (=> (= (ControlFlow 0 48) 47) anon32_Else_correct)))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))))) (and (= |$rhs#1@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))))) (= |$rhs#2@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))))))) (and (=> (= (ControlFlow 0 50) 48) anon31_Then_correct) (=> (= (ControlFlow 0 50) 49) anon31_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is SetType |a#0| (TSet TInt)) ($IsAlloc SetType |a#0| (TSet TInt) $Heap)) true) (and (and ($Is SetType |b#0| (TSet TInt)) ($IsAlloc SetType |b#0| (TSet TInt) $Heap)) true)) (and (and (and ($Is SetType |c#0| (TSet TInt)) ($IsAlloc SetType |c#0| (TSet TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 51) 50)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
