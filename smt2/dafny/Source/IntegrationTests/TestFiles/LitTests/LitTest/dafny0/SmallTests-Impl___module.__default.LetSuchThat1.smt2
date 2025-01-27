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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |$let#1_B| (T@U T@U) T@U)
(declare-fun |$let#1$canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc)
)
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| b y) (not (|Set#IsMember| (|Set#Difference| a b) y)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2778|
 :pattern ( (|Set#Difference| a b) (|Set#IsMember| b y))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2759|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@0 b@@0) o@@0)  (and (|Set#IsMember| a@@0 o@@0) (not (|Set#IsMember| b@@0 o@@0))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2777|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@0 b@@0) o@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@1 b@@1) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2780|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2781|
 :pattern ( (|Set#Subset| a@@1 b@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (= (Ctor SetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2680|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2681|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2784|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((_module._default.LetSuchThat1$T T@U) (A T@U) ) (!  (=> (|$let#1$canCall| _module._default.LetSuchThat1$T A) (and ($Is SetType (|$let#1_B| _module._default.LetSuchThat1$T A) (TSet _module._default.LetSuchThat1$T)) (|Set#Subset| (|$let#1_B| _module._default.LetSuchThat1$T A) A)))
 :qid |SmallTestsdfy.692:18|
 :skolemid |3264|
 :pattern ( (|$let#1_B| _module._default.LetSuchThat1$T A))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@0) ($IsAllocBox bx@@0 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2701|
 :pattern ( (|Set#IsMember| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2702|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2635|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2636|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@3 x@@4))
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
 :skolemid |3849|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@1)) bx@@1) ($Is SetType ($Unbox SetType bx@@1) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2666|
 :pattern ( ($IsBox bx@@1 (TSet t@@3)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@3 o@@2) (|Set#IsMember| b@@3 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2782|
 :pattern ( (|Set#IsMember| a@@3 o@@2))
 :pattern ( (|Set#IsMember| b@@3 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2783|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |A#0| () T@U)
(declare-fun _module._default.LetSuchThat1$T@@0 () T@U)
(declare-fun |B#1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |C#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |C#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.LetSuchThat1)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and ($Is SetType |A#0| (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |A#0| |A#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |Set#Empty| |A#0|)) (exists ((|B#0| T@U) ) (!  (and ($Is SetType |B#0| (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |B#0| |A#0|))
 :qid |SmallTestsdfy.692:22|
 :skolemid |3265|
))))) (=> (or (and ($Is SetType |A#0| (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |A#0| |A#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |Set#Empty| |A#0|)) (exists ((|B#0@@0| T@U) ) (!  (and ($Is SetType |B#0@@0| (TSet _module._default.LetSuchThat1$T@@0)) (|Set#Subset| |B#0@@0| |A#0|))
 :qid |SmallTestsdfy.692:22|
 :skolemid |3265|
)))) (=> (and (and (and ($Is SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0)) ($IsAlloc SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0) $Heap)) (|Set#Subset| |B#1@0| |A#0|)) (and (and (|$let#1$canCall| _module._default.LetSuchThat1$T@@0 |A#0|) (|$let#1$canCall| _module._default.LetSuchThat1$T@@0 |A#0|)) (and (= |C#0@0| (let ((|B#0@@1| (|$let#1_B| _module._default.LetSuchThat1$T@@0 |A#0|)))
(|Set#Difference| |B#0@@1| |A#0|))) (= (ControlFlow 0 2) (- 0 1))))) (|Set#Equal| |C#0@0| |Set#Empty|))))))
(let ((anon3_Else_correct  (=> (and (not (and ($Is SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0)) ($IsAlloc SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0) $Heap))) (= (ControlFlow 0 5) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (and ($Is SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0)) ($IsAlloc SetType |B#1@0| (TSet _module._default.LetSuchThat1$T@@0) $Heap)) (= (ControlFlow 0 4) 2)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |A#0| (TSet _module._default.LetSuchThat1$T@@0)) ($IsAlloc SetType |A#0| (TSet _module._default.LetSuchThat1$T@@0) $Heap))) (=> (and (and (and ($Is SetType |C#0| (TSet _module._default.LetSuchThat1$T@@0)) ($IsAlloc SetType |C#0| (TSet _module._default.LetSuchThat1$T@@0) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
