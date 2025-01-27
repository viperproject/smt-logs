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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
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
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun charType () T@T)
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
(assert (distinct TChar TagChar alloc)
)
(assert (= (Tag TChar) TagChar))
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
(assert (forall ((x@@2 Real) ) (! (= (q@Int x@@2) (to_int x@@2))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |113|
 :pattern ( (q@Int x@@2))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((x@@6 Int) ) (! (= (q@Real x@@6) (to_real x@@6))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@6))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((i Int) ) (! (= (q@Int (q@Real i)) i)
 :qid |DafnyPreludebpl.580:15|
 :skolemid |115|
 :pattern ( (q@Int (q@Real i)))
)))
(assert (forall ((x@@7 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@7))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |654|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@9)) (Lit BoxType ($Box T@@2 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@9)))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((v T@U) ) (! ($Is charType v TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |c#0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |asInt32#0@0| () Int)
(declare-fun |p##0@0| () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@8 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |asInt64#0@0| () Int)
(declare-fun |p##1@0| () Bool)
(declare-fun $Heap@9 () T@U)
(declare-fun |asInt#0@0| () Int)
(declare-fun |p##2@0| () Bool)
(declare-fun $Heap@10 () T@U)
(declare-fun |asReal#0@0| () Real)
(declare-fun |p##3@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |newtype$check#3_0@0| () Int)
(declare-fun |newtype$check#3_1@0| () Int)
(declare-fun |asUint16#3_0@0| () Int)
(declare-fun |p##3_0@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#2_0@0| () Int)
(declare-fun |newtype$check#2_1@0| () Int)
(declare-fun |asInt16#2_0@0| () Int)
(declare-fun |p##2_0@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#1_0@0| () Int)
(declare-fun |newtype$check#1_1@0| () Int)
(declare-fun |asUint8#1_0@0| () Int)
(declare-fun |p##1_0@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0_0@0| () Int)
(declare-fun |newtype$check#0_1@0| () Int)
(declare-fun |asInt8#0_0@0| () Int)
(declare-fun |p##0_0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |asInt8#0_0| () Int)
(declare-fun |asUint8#1_0| () Int)
(declare-fun |asInt16#2_0| () Int)
(declare-fun |asUint16#3_0| () Int)
(declare-fun |asInt32#0| () Int)
(declare-fun |asInt64#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CastChar)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon12_correct  (=> (= |newtype$check#0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648)) (=> (= |newtype$check#1@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648)) (=> (= |asInt32#0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (and (<= 0 |asInt32#0@0|) (< |asInt32#0@0| 55296)) (and (<= 57344 |asInt32#0@0|) (< |asInt32#0@0| 1114112)))) (=> (or (and (<= 0 |asInt32#0@0|) (< |asInt32#0@0| 55296)) (and (<= 57344 |asInt32#0@0|) (< |asInt32#0@0| 1114112))) (=> (= |p##0@0| (= (|char#FromInt| |asInt32#0@0|) |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 11)) |p##0@0|) (=> |p##0@0| (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@0)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@0))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |newtype$check#3@0| (|char#ToInt| |c#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#3@0|) (< |newtype$check#3@0| 8000000000000000))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#3@0|) (< |newtype$check#3@0| 8000000000000000)) (=> (= |newtype$check#4@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#4@0|) (< |newtype$check#4@0| 8000000000000000))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#4@0|) (< |newtype$check#4@0| 8000000000000000)) (=> (= |asInt64#0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (and (<= 0 |asInt64#0@0|) (< |asInt64#0@0| 55296)) (and (<= 57344 |asInt64#0@0|) (< |asInt64#0@0| 1114112)))) (=> (or (and (<= 0 |asInt64#0@0|) (< |asInt64#0@0| 55296)) (and (<= 57344 |asInt64#0@0|) (< |asInt64#0@0| 1114112))) (=> (= |p##1@0| (= (|char#FromInt| |asInt64#0@0|) |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) |p##1@0|) (=> |p##1@0| (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@1)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@1))
))) (and ($HeapSucc $Heap@8 $Heap@9) (= |asInt#0@0| (|char#ToInt| |c#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (and (<= 0 |asInt#0@0|) (< |asInt#0@0| 55296)) (and (<= 57344 |asInt#0@0|) (< |asInt#0@0| 1114112)))) (=> (or (and (<= 0 |asInt#0@0|) (< |asInt#0@0| 55296)) (and (<= 57344 |asInt#0@0|) (< |asInt#0@0| 1114112))) (=> (= |p##2@0| (= (|char#FromInt| |asInt#0@0|) |c#0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) |p##2@0|) (=> |p##2@0| (=> (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@2)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@2))
))) (and ($HeapSucc $Heap@9 $Heap@10) (= |asReal#0@0| (q@Real (|char#ToInt| |c#0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (q@Real (q@Int |asReal#0@0|)) |asReal#0@0|)) (=> (= (q@Real (q@Int |asReal#0@0|)) |asReal#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and (<= 0 (q@Int |asReal#0@0|)) (< (q@Int |asReal#0@0|) 55296)) (and (<= 57344 (q@Int |asReal#0@0|)) (< (q@Int |asReal#0@0|) 1114112)))) (=> (or (and (<= 0 (q@Int |asReal#0@0|)) (< (q@Int |asReal#0@0|) 55296)) (and (<= 57344 (q@Int |asReal#0@0|)) (< (q@Int |asReal#0@0|) 1114112))) (=> (and (= |p##3@0| (= (|char#FromInt| (q@Int |asReal#0@0|)) |c#0|)) (= (ControlFlow 0 2) (- 0 1))) |p##3@0|))))))))))))))))))))))))))))))))))))))
(let ((anon16_Else_correct  (=> (<= 65536 (|char#ToInt| |c#0|)) (=> (and (= $Heap@7 $Heap@5) (= (ControlFlow 0 20) 2)) anon12_correct))))
(let ((anon16_Then_correct  (=> (and (< (|char#ToInt| |c#0|) 65536) (= |newtype$check#3_0@0| (|char#ToInt| |c#0|))) (and (=> (= (ControlFlow 0 15) (- 0 19)) (and (<= (LitInt 0) |newtype$check#3_0@0|) (< |newtype$check#3_0@0| 65536))) (=> (and (<= (LitInt 0) |newtype$check#3_0@0|) (< |newtype$check#3_0@0| 65536)) (=> (= |newtype$check#3_1@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= (LitInt 0) |newtype$check#3_1@0|) (< |newtype$check#3_1@0| 65536))) (=> (and (<= (LitInt 0) |newtype$check#3_1@0|) (< |newtype$check#3_1@0| 65536)) (=> (= |asUint16#3_0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (and (<= 0 |asUint16#3_0@0|) (< |asUint16#3_0@0| 55296)) (and (<= 57344 |asUint16#3_0@0|) (< |asUint16#3_0@0| 1114112)))) (=> (or (and (<= 0 |asUint16#3_0@0|) (< |asUint16#3_0@0| 55296)) (and (<= 57344 |asUint16#3_0@0|) (< |asUint16#3_0@0| 1114112))) (=> (= |p##3_0@0| (= (|char#FromInt| |asUint16#3_0@0|) |c#0|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) |p##3_0@0|) (=> |p##3_0@0| (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@3)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@3))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= $Heap@7 $Heap@6) (= (ControlFlow 0 15) 2))) anon12_correct))))))))))))))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 21) 15) anon16_Then_correct) (=> (= (ControlFlow 0 21) 20) anon16_Else_correct))))
(let ((anon15_Else_correct  (=> (<= 32768 (|char#ToInt| |c#0|)) (=> (and (= $Heap@5 $Heap@3) (= (ControlFlow 0 27) 21)) anon9_correct))))
(let ((anon15_Then_correct  (=> (and (< (|char#ToInt| |c#0|) 32768) (= |newtype$check#2_0@0| (|char#ToInt| |c#0|))) (and (=> (= (ControlFlow 0 22) (- 0 26)) (and (<= (LitInt (- 0 32768)) |newtype$check#2_0@0|) (< |newtype$check#2_0@0| 32768))) (=> (and (<= (LitInt (- 0 32768)) |newtype$check#2_0@0|) (< |newtype$check#2_0@0| 32768)) (=> (= |newtype$check#2_1@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 22) (- 0 25)) (and (<= (LitInt (- 0 32768)) |newtype$check#2_1@0|) (< |newtype$check#2_1@0| 32768))) (=> (and (<= (LitInt (- 0 32768)) |newtype$check#2_1@0|) (< |newtype$check#2_1@0| 32768)) (=> (= |asInt16#2_0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (and (<= 0 |asInt16#2_0@0|) (< |asInt16#2_0@0| 55296)) (and (<= 57344 |asInt16#2_0@0|) (< |asInt16#2_0@0| 1114112)))) (=> (or (and (<= 0 |asInt16#2_0@0|) (< |asInt16#2_0@0| 55296)) (and (<= 57344 |asInt16#2_0@0|) (< |asInt16#2_0@0| 1114112))) (=> (= |p##2_0@0| (= (|char#FromInt| |asInt16#2_0@0|) |c#0|)) (and (=> (= (ControlFlow 0 22) (- 0 23)) |p##2_0@0|) (=> |p##2_0@0| (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= $Heap@5 $Heap@4) (= (ControlFlow 0 22) 21))) anon9_correct))))))))))))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 28) 22) anon15_Then_correct) (=> (= (ControlFlow 0 28) 27) anon15_Else_correct))))
(let ((anon14_Else_correct  (=> (<= 256 (|char#ToInt| |c#0|)) (=> (and (= $Heap@3 $Heap@1) (= (ControlFlow 0 34) 28)) anon6_correct))))
(let ((anon14_Then_correct  (=> (and (< (|char#ToInt| |c#0|) 256) (= |newtype$check#1_0@0| (|char#ToInt| |c#0|))) (and (=> (= (ControlFlow 0 29) (- 0 33)) (and (<= (LitInt 0) |newtype$check#1_0@0|) (< |newtype$check#1_0@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1_0@0|) (< |newtype$check#1_0@0| 256)) (=> (= |newtype$check#1_1@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (and (<= (LitInt 0) |newtype$check#1_1@0|) (< |newtype$check#1_1@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1_1@0|) (< |newtype$check#1_1@0| 256)) (=> (= |asUint8#1_0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (or (and (<= 0 |asUint8#1_0@0|) (< |asUint8#1_0@0| 55296)) (and (<= 57344 |asUint8#1_0@0|) (< |asUint8#1_0@0| 1114112)))) (=> (or (and (<= 0 |asUint8#1_0@0|) (< |asUint8#1_0@0| 55296)) (and (<= 57344 |asUint8#1_0@0|) (< |asUint8#1_0@0| 1114112))) (=> (= |p##1_0@0| (= (|char#FromInt| |asUint8#1_0@0|) |c#0|)) (and (=> (= (ControlFlow 0 29) (- 0 30)) |p##1_0@0|) (=> |p##1_0@0| (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= $Heap@3 $Heap@2) (= (ControlFlow 0 29) 28))) anon6_correct))))))))))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 35) 29) anon14_Then_correct) (=> (= (ControlFlow 0 35) 34) anon14_Else_correct))))
(let ((anon13_Else_correct  (=> (<= 128 (|char#ToInt| |c#0|)) (=> (and (= $Heap@1 $Heap) (= (ControlFlow 0 41) 35)) anon3_correct))))
(let ((anon13_Then_correct  (=> (and (< (|char#ToInt| |c#0|) 128) (= |newtype$check#0_0@0| (|char#ToInt| |c#0|))) (and (=> (= (ControlFlow 0 36) (- 0 40)) (and (<= (LitInt (- 0 128)) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 128)) (=> (= |newtype$check#0_1@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (and (<= (LitInt (- 0 128)) |newtype$check#0_1@0|) (< |newtype$check#0_1@0| 128))) (=> (and (<= (LitInt (- 0 128)) |newtype$check#0_1@0|) (< |newtype$check#0_1@0| 128)) (=> (= |asInt8#0_0@0| (|char#ToInt| |c#0|)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (or (and (<= 0 |asInt8#0_0@0|) (< |asInt8#0_0@0| 55296)) (and (<= 57344 |asInt8#0_0@0|) (< |asInt8#0_0@0| 1114112)))) (=> (or (and (<= 0 |asInt8#0_0@0|) (< |asInt8#0_0@0| 55296)) (and (<= 57344 |asInt8#0_0@0|) (< |asInt8#0_0@0| 1114112))) (=> (= |p##0_0@0| (= (|char#FromInt| |asInt8#0_0@0|) |c#0|)) (and (=> (= (ControlFlow 0 36) (- 0 37)) |p##0_0@0|) (=> |p##0_0@0| (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |UnicodeStringsdfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0)) (and (= $Heap@1 $Heap@0) (= (ControlFlow 0 36) 35))) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#5| null $Heap alloc false)) (and (=> (= (ControlFlow 0 42) 36) anon13_Then_correct) (=> (= (ControlFlow 0 42) 41) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is charType |c#0| TChar)) (and (and (<= (LitInt (- 0 128)) |asInt8#0_0|) (< |asInt8#0_0| 128)) true)) (and (and (and (<= (LitInt 0) |asUint8#1_0|) (< |asUint8#1_0| 256)) true) (and (and (<= (LitInt (- 0 32768)) |asInt16#2_0|) (< |asInt16#2_0| 32768)) true))) (and (and (and (and (<= (LitInt 0) |asUint16#3_0|) (< |asUint16#3_0| 65536)) true) (and (and (<= (LitInt (- 0 2147483648)) |asInt32#0|) (< |asInt32#0| 2147483648)) true)) (and (and (and (<= (LitInt (- 0 9223372036854775808)) |asInt64#0|) (< |asInt64#0| 8000000000000000)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 43) 42))))) anon0_correct)))
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
