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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc)
)
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o@@0)  (and (|Set#IsMember| a@@3 o@@0) (not (|Set#IsMember| b@@3 o@@0))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o@@0))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@4 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@5 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@5 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@5 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@5 b@@5))
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
(assert (forall ((a@@6 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@4)  (or (|Set#IsMember| a@@6 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@4))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@7 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@7 b@@7) a@@7) b@@7) (= (|Set#Difference| (|Set#Union| a@@7 b@@7) b@@7) a@@7)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@7 b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@8 b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@9 c)) (not true)) (=> (and ($HeapSucc a@@9 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@9 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@9 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@1))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@10 (|Set#Union| a@@10 b@@10)) (|Set#Union| a@@10 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@10 (|Set#Union| a@@10 b@@10)))
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
 :skolemid |561|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@5)))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@11 b@@11) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@11 o@@5) (|Set#IsMember| b@@11 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@11 o@@5))
 :pattern ( (|Set#IsMember| b@@11 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@11 b@@11))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |t#0@2| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |t#0@1| () T@U)
(declare-fun _module._default.CopyFaster$T () T@U)
(declare-fun |p#0_0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0_0@1| () T@U)
(declare-fun |$rhs#0_1@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |p#0_1@1| () T@U)
(declare-fun |p#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |t#0| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |p#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CopyFaster)
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
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (|Set#Equal| |s#0| |t#0@2|))))
(let ((anon12_Then_correct  (=> (|Set#Equal| |r#0@0| |Set#Empty|) (=> (and (= |t#0@2| |t#0@1|) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (and ($Is SetType |r#0@0| (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |r#0@0| |Set#Empty|)) (|Set#Subset| |r#0@0| |r#0@0|))) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |Set#Empty| |Set#Empty|)) (|Set#Subset| |Set#Empty| |r#0@0|))) (exists ((|$as#p0_0#0_0| T@U) ) (!  (and ($Is SetType |$as#p0_0#0_0| (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |$as#p0_0#0_0| |Set#Empty|)) (|Set#Subset| |$as#p0_0#0_0| |r#0@0|)))
 :qid |SetIterationsdfy.34:9|
 :skolemid |499|
))))) (=> (or (and ($Is SetType |r#0@0| (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |r#0@0| |Set#Empty|)) (|Set#Subset| |r#0@0| |r#0@0|))) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |Set#Empty| |Set#Empty|)) (|Set#Subset| |Set#Empty| |r#0@0|))) (exists ((|$as#p0_0#0_0@@0| T@U) ) (!  (and ($Is SetType |$as#p0_0#0_0@@0| (TSet _module._default.CopyFaster$T)) (and (not (|Set#Equal| |$as#p0_0#0_0@@0| |Set#Empty|)) (|Set#Subset| |$as#p0_0#0_0@@0| |r#0@0|)))
 :qid |SetIterationsdfy.34:9|
 :skolemid |499|
)))) (=> (and ($Is SetType |p#0_0@1| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |p#0_0@1| (TSet _module._default.CopyFaster$T) $Heap)) (=> (and (and (not (|Set#Equal| |p#0_0@1| |Set#Empty|)) (|Set#Subset| |p#0_0@1| |r#0@0|)) (and (= |$rhs#0_0@1| (|Set#Difference| |r#0@0| |p#0_0@1|)) (= |$rhs#0_1@1| (|Set#Union| |t#0@1| |p#0_0@1|)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (|Set#Subset| |$rhs#0_0@1| |r#0@0|) (not (|Set#Subset| |r#0@0| |$rhs#0_0@1|)))) (=> (and (|Set#Subset| |$rhs#0_0@1| |r#0@0|) (not (|Set#Subset| |r#0@0| |$rhs#0_0@1|))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (|Set#Equal| |s#0| (|Set#Union| |$rhs#0_0@1| |$rhs#0_1@1|))))))))))))
(let ((anon8_correct  (=> (= (ControlFlow 0 8) 4) anon9_correct)))
(let ((anon14_Else_correct  (=> (and (|Set#Equal| |p#0_1@1| |Set#Empty|) (= (ControlFlow 0 10) 8)) anon8_correct)))
(let ((anon14_Then_correct  (=> (and (not (|Set#Equal| |p#0_1@1| |Set#Empty|)) (= (ControlFlow 0 9) 8)) anon8_correct)))
(let ((anon13_Then_correct  (=> (and ($Is SetType |p#0_1@1| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |p#0_1@1| (TSet _module._default.CopyFaster$T) $Heap)) (and (=> (= (ControlFlow 0 11) 9) anon14_Then_correct) (=> (= (ControlFlow 0 11) 10) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is SetType |p#0_1@1| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |p#0_1@1| (TSet _module._default.CopyFaster$T) $Heap))) (= (ControlFlow 0 7) 4)) anon9_correct)))
(let ((anon12_Else_correct  (=> (not (|Set#Equal| |r#0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 12) 11) anon13_Then_correct) (=> (= (ControlFlow 0 12) 7) anon13_Else_correct)))))
(let ((anon11_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 16) 15) anon12_Then_correct) (=> (= (ControlFlow 0 16) 12) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_LoopBody_correct  (and (=> (= (ControlFlow 0 17) 2) anon11_Then_correct) (=> (= (ControlFlow 0 17) 16) anon11_Else_correct))))
(let ((anon10_LoopDone_correct true))
(let ((anon10_LoopHead_correct  (=> (and (and ($Is SetType |p#0_0@0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |p#0_0@0| (TSet _module._default.CopyFaster$T) $Heap)) (and ($Is SetType |r#0@0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |r#0@0| (TSet _module._default.CopyFaster$T) $Heap))) (=> (and (and (and ($Is SetType |t#0@1| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |t#0@1| (TSet _module._default.CopyFaster$T) $Heap)) (and (not false) (=> |$w$loop#0@0| (|Set#Equal| |s#0| (|Set#Union| |r#0@0| |t#0@1|))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |SetIterationsdfy.30:3|
 :skolemid |497|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |SetIterationsdfy.30:3|
 :skolemid |498|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (|Set#Subset| |r#0@0| |s#0|)))) (and (=> (= (ControlFlow 0 18) 1) anon10_LoopDone_correct) (=> (= (ControlFlow 0 18) 17) anon10_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |t#0@0| (Lit SetType |Set#Empty|))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> |$w$loop#0@0| (|Set#Equal| |s#0| (|Set#Union| |s#0| |t#0@0|)))) (=> (=> |$w$loop#0@0| (|Set#Equal| |s#0| (|Set#Union| |s#0| |t#0@0|))) (=> (= (ControlFlow 0 19) 18) anon10_LoopHead_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is SetType |s#0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |s#0| (TSet _module._default.CopyFaster$T) $Heap)) (and ($Is SetType |t#0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |t#0| (TSet _module._default.CopyFaster$T) $Heap))) (and (and ($Is SetType |r#0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |r#0| (TSet _module._default.CopyFaster$T) $Heap)) true)) (and (and (and ($Is SetType |p#0_0| (TSet _module._default.CopyFaster$T)) ($IsAlloc SetType |p#0_0| (TSet _module._default.CopyFaster$T) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 21) 19)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
