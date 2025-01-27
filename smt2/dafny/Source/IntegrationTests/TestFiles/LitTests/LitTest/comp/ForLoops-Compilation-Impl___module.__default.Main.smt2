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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat tytagFamily$nat)
)
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0| Tclass._System.nat))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |653|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |lo##0@0| () Int)
(declare-fun |hi##0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |lo##1@0| () Int)
(declare-fun |hi##1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |lo##2@0| () Int)
(declare-fun |hi##2@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |lo##3@0| () Int)
(declare-fun |hi##3@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |lo##4@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |hi##4@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |lo##5@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |hi##5@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |lo##6@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |hi##6@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |lo##7@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |hi##7@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |lo##8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |hi##8@0| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |lo##9@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |hi##9@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |lo##10@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |hi##10@0| () Int)
(declare-fun $Heap@10 () T@U)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |lo##11@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |hi##11@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |lo##12@0| () Int)
(declare-fun |newtype$check#17@0| () Int)
(declare-fun |hi##12@0| () Int)
(declare-fun $Heap@12 () T@U)
(declare-fun |a##0@0| () Int)
(declare-fun |b##0@0| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun |a##1@0| () Int)
(declare-fun |b##1@0| () Int)
(declare-fun $Heap@14 () T@U)
(declare-fun |a##2@0| () Int)
(declare-fun |b##2@0| () Int)
(declare-fun $Heap@15 () T@U)
(declare-fun |a##3@0| () Int)
(declare-fun |b##3@0| () Int)
(declare-fun $Heap@16 () T@U)
(declare-fun |a##4@0| () Int)
(declare-fun |b##4@0| () Int)
(declare-fun $Heap@17 () T@U)
(declare-fun |a##5@0| () Int)
(declare-fun |b##5@0| () Int)
(declare-fun $Heap@18 () T@U)
(declare-fun |a##6@0| () Int)
(declare-fun |b##6@0| () Int)
(declare-fun $Heap@19 () T@U)
(declare-fun |a##7@0| () Int)
(declare-fun |b##7@0| () Int)
(declare-fun $Heap@20 () T@U)
(declare-fun |a##8@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |lo##0@0| (LitInt 0)) (= |hi##0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 50)) (<= |lo##0@0| |hi##0@0|)) (=> (<= |lo##0@0| |hi##0@0|) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ForLoopsCompilationdfy.34:8|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (= |lo##1@0| (LitInt (- 0 2))) (= |hi##1@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (<= |lo##1@0| |hi##1@0|)) (=> (<= |lo##1@0| |hi##1@0|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |ForLoopsCompilationdfy.34:8|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |lo##2@0| (LitInt (- 0 2))) (= |hi##2@0| (LitInt 3)))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (<= |lo##2@0| |hi##2@0|)) (=> (<= |lo##2@0| |hi##2@0|) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |ForLoopsCompilationdfy.34:8|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |lo##3@0| (LitInt 10)) (= |hi##3@0| (LitInt 20)))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (<= |lo##3@0| |hi##3@0|)) (=> (<= |lo##3@0| |hi##3@0|) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |ForLoopsCompilationdfy.34:8|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |newtype$check#0@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256)) (=> (and (= |lo##4@0| (LitInt 0)) (= |newtype$check#1@0| (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256)) (=> (= |hi##4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 44)) (<= |lo##4@0| |hi##4@0|)) (=> (<= |lo##4@0| |hi##4@0|) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |ForLoopsCompilationdfy.42:8|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |newtype$check#2@0| (LitInt 28)))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256)) (=> (and (= |lo##5@0| (LitInt 28)) (= |newtype$check#3@0| (LitInt 28))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256)) (=> (= |hi##5@0| (LitInt 28)) (and (=> (= (ControlFlow 0 2) (- 0 41)) (<= |lo##5@0| |hi##5@0|)) (=> (<= |lo##5@0| |hi##5@0|) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |ForLoopsCompilationdfy.42:8|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |newtype$check#4@0| (LitInt 28)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256)) (=> (and (= |lo##6@0| (LitInt 28)) (= |newtype$check#5@0| (LitInt 30))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256)) (=> (= |hi##6@0| (LitInt 30)) (and (=> (= (ControlFlow 0 2) (- 0 38)) (<= |lo##6@0| |hi##6@0|)) (=> (<= |lo##6@0| |hi##6@0|) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |ForLoopsCompilationdfy.42:8|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |newtype$check#6@0| (LitInt 255)))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256)) (=> (and (= |lo##7@0| (LitInt 255)) (= |newtype$check#7@0| (LitInt 255))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 256)) (=> (= |hi##7@0| (LitInt 255)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (<= |lo##7@0| |hi##7@0|)) (=> (<= |lo##7@0| |hi##7@0|) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |ForLoopsCompilationdfy.42:8|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |newtype$check#8@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 256)) (=> (and (= |lo##8@0| (LitInt 0)) (= |newtype$check#9@0| (LitInt 255))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 256)) (=> (= |hi##8@0| (LitInt 255)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (<= |lo##8@0| |hi##8@0|)) (=> (<= |lo##8@0| |hi##8@0|) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |ForLoopsCompilationdfy.42:8|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |newtype$check#10@0| (LitInt (- 0 128))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (and (<= (LitInt (- 0 128)) |newtype$check#10@0|) (< |newtype$check#10@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#10@0|) (< |newtype$check#10@0| 128)) (=> (and (= |lo##9@0| (LitInt (- 0 128))) (= |newtype$check#11@0| (LitInt (- 0 128)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= (LitInt (- 0 128)) |newtype$check#11@0|) (< |newtype$check#11@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#11@0|) (< |newtype$check#11@0| 128)) (=> (= |hi##9@0| (LitInt (- 0 128))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (<= |lo##9@0| |hi##9@0|)) (=> (<= |lo##9@0| |hi##9@0|) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |ForLoopsCompilationdfy.49:8|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
))) (and ($HeapSucc $Heap@8 $Heap@9) (= |newtype$check#12@0| (LitInt (- 0 128))))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (<= (LitInt (- 0 128)) |newtype$check#12@0|) (< |newtype$check#12@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#12@0|) (< |newtype$check#12@0| 128)) (=> (and (= |lo##10@0| (LitInt (- 0 128))) (= |newtype$check#13@0| (LitInt (- 0 127)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (and (<= (LitInt (- 0 128)) |newtype$check#13@0|) (< |newtype$check#13@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#13@0|) (< |newtype$check#13@0| 128)) (=> (= |hi##10@0| (LitInt (- 0 127))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (<= |lo##10@0| |hi##10@0|)) (=> (<= |lo##10@0| |hi##10@0|) (=> (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10)))
 :qid |ForLoopsCompilationdfy.49:8|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10))
))) (and ($HeapSucc $Heap@9 $Heap@10) (= |newtype$check#14@0| (LitInt 126)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= (LitInt (- 0 128)) |newtype$check#14@0|) (< |newtype$check#14@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#14@0|) (< |newtype$check#14@0| 128)) (=> (and (= |lo##11@0| (LitInt 126)) (= |newtype$check#15@0| (LitInt 127))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= (LitInt (- 0 128)) |newtype$check#15@0|) (< |newtype$check#15@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#15@0|) (< |newtype$check#15@0| 128)) (=> (= |hi##11@0| (LitInt 127)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (<= |lo##11@0| |hi##11@0|)) (=> (<= |lo##11@0| |hi##11@0|) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11)))
 :qid |ForLoopsCompilationdfy.49:8|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11))
))) (and ($HeapSucc $Heap@10 $Heap@11) (= |newtype$check#16@0| (LitInt 127)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= (LitInt (- 0 128)) |newtype$check#16@0|) (< |newtype$check#16@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#16@0|) (< |newtype$check#16@0| 128)) (=> (and (= |lo##12@0| (LitInt 127)) (= |newtype$check#17@0| (LitInt 127))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= (LitInt (- 0 128)) |newtype$check#17@0|) (< |newtype$check#17@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#17@0|) (< |newtype$check#17@0| 128)) (=> (= |hi##12@0| (LitInt 127)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (<= |lo##12@0| |hi##12@0|)) (=> (<= |lo##12@0| |hi##12@0|) (=> (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |ForLoopsCompilationdfy.49:8|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12))
)) ($HeapSucc $Heap@11 $Heap@12))) (and (=> (= (ControlFlow 0 2) (- 0 19)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |a##0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 18)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= |b##0@0| (LitInt 2)) (=> (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13)))
 :qid |ForLoopsCompilationdfy.122:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13))
)) ($HeapSucc $Heap@12 $Heap@13))) (and (=> (= (ControlFlow 0 2) (- 0 17)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= |a##1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 16)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |b##1@0| (LitInt 0)) (=> (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14)))
 :qid |ForLoopsCompilationdfy.122:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14))
)) ($HeapSucc $Heap@13 $Heap@14))) (and (=> (= (ControlFlow 0 2) (- 0 15)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |a##2@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 14)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |b##2@0| (LitInt 1)) (=> (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15)))
 :qid |ForLoopsCompilationdfy.122:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15))
)) ($HeapSucc $Heap@14 $Heap@15))) (and (=> (= (ControlFlow 0 2) (- 0 13)) ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat) (=> (= |a##3@0| (LitInt 6)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (= |b##3@0| (LitInt 5)) (=> (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16)))
 :qid |ForLoopsCompilationdfy.122:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16))
)) ($HeapSucc $Heap@15 $Heap@16))) (and (=> (= (ControlFlow 0 2) (- 0 11)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |a##4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= |b##4@0| (LitInt 3)) (=> (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17)))
 :qid |ForLoopsCompilationdfy.135:8|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17))
)) ($HeapSucc $Heap@16 $Heap@17))) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= |a##5@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |b##5@0| (LitInt 0)) (=> (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@18)))
 :qid |ForLoopsCompilationdfy.135:8|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@18))
)) ($HeapSucc $Heap@17 $Heap@18))) (and (=> (= (ControlFlow 0 2) (- 0 7)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= |a##6@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |b##6@0| (LitInt 0)) (=> (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@19)))
 :qid |ForLoopsCompilationdfy.135:8|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@19))
)) ($HeapSucc $Heap@18 $Heap@19))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |a##7@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |b##7@0| (LitInt 0)) (=> (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@20)))
 :qid |ForLoopsCompilationdfy.135:8|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@20))
)) ($HeapSucc $Heap@19 $Heap@20))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat) (=> (and (= |a##8@0| (LitInt 19)) (= (ControlFlow 0 2) (- 0 1))) ($Is intType (int_2_U (LitInt 14)) Tclass._System.nat))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 51) 2))) anon0_correct)))
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
