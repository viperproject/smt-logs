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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun alloc () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |char#Minus| (T@U T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
 :skolemid |1257|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1258|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1156|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1158|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1154|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1165|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1363|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|char#Minus| a b) (|char#FromInt| (- (|char#ToInt| a) (|char#ToInt| b))))
 :qid |DafnyPreludebpl.147:15|
 :skolemid |1163|
 :pattern ( (|char#Minus| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|char#Plus| a@@0 b@@0) (|char#FromInt| (+ (|char#ToInt| a@@0) (|char#ToInt| b@@0))))
 :qid |DafnyPreludebpl.142:15|
 :skolemid |1162|
 :pattern ( (|char#Plus| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1256|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1360|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1164|
 :pattern ( ($Box T@@1 x@@6))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1160|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2064|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1362|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((x@@7 Int) (y Int) ) (! (= (Mul x@@7 y) (* x@@7 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |1477|
 :pattern ( (Mul x@@7 y))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1161|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1157|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1159|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@10)) (Lit BoxType ($Box T@@2 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1155|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@10)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1361|
 :pattern ( (|Seq#Length| s@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |s##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun charType () T@T)
(declare-fun |s##3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |dividend##0@0| () Int)
(declare-fun |divisor##0@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |dividend##1@0| () Int)
(declare-fun |divisor##1@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |dividend##2@0| () Int)
(declare-fun |divisor##2@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |dividend##3@0| () Int)
(declare-fun |divisor##3@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |dividend##4@0| () Int)
(declare-fun |divisor##4@0| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun |dividend##5@0| () Int)
(declare-fun |divisor##5@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |s##4@0| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |s##5@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |s##6@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |s##7@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |dividend##6@0| () Real)
(declare-fun |divisor##6@0| () Real)
(declare-fun $Heap@15 () T@U)
(declare-fun |dividend##7@0| () Real)
(declare-fun |divisor##7@0| () Real)
(declare-fun $Heap@16 () T@U)
(declare-fun |dividend##8@0| () Real)
(declare-fun |divisor##8@0| () Real)
(declare-fun $Heap@17 () T@U)
(declare-fun |dividend##9@0| () Real)
(declare-fun |divisor##9@0| () Real)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SeqType) 7) (= (Ctor charType) 8)))
(set-info :boogie-vc-id Impl$$_module.__default.Arithmetic)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |s##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (+ 31 4))))) ($Box intType (int_2_U (LitInt (- 31 4))))) ($Box intType (int_2_U (LitInt (- 4 31)))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |s##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (Mul (LitInt 31) (LitInt 4)))))) ($Box intType (int_2_U (LitInt (Mul (LitInt 31) (LitInt (- 0 4))))))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |s##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (Mul (LitInt (- 0 31)) (LitInt 4)))))) ($Box intType (int_2_U (LitInt (Mul (LitInt (- 0 31)) (LitInt (- 0 4))))))))))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 1114112)))) (=> (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (+ (|char#ToInt| (Lit charType (|char#FromInt| 51))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 1114112))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (and (<= 0 (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 55296)) (and (<= 57344 (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 1114112)))) (=> (or (and (<= 0 (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 55296)) (and (<= 57344 (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 55))) (|char#ToInt| (Lit charType (|char#FromInt| 52)))) 1114112))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78)))) 1114112)))) (=> (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)))) (|char#ToInt| (Lit charType (|char#FromInt| 78)))) 1114112))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (and (<= 0 (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51)))) 55296)) (and (<= 57344 (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51)))) 1114112)))) (=> (or (and (<= 0 (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51)))) 55296)) (and (<= 57344 (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51))))) (< (- (|char#ToInt| (Lit charType (|char#FromInt| 52))) (|char#ToInt| (Lit charType (|char#FromInt| 51)))) 1114112))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49)))) 1114112)))) (=> (or (and (<= 0 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49)))) 55296)) (and (<= 57344 (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49))))) (< (+ (|char#ToInt| (Lit charType (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)))) (|char#ToInt| (Lit charType (|char#FromInt| 49)))) 1114112))) (=> (= |s##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (Lit charType (|char#Plus| (|char#FromInt| 51) (|char#FromInt| 52))))) ($Box charType (Lit charType (|char#Plus| (|char#Minus| (|char#FromInt| 55) (|char#FromInt| 52)) (|char#FromInt| 78))))) ($Box charType (Lit charType (|char#Plus| (|char#Minus| (|char#FromInt| 52) (|char#FromInt| 51)) (|char#FromInt| 49))))))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= |dividend##0@0| (LitInt 31)) (= |divisor##0@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |divisor##0@0| 0)) (not true))) (=> (or (not (= |divisor##0@0| 0)) (not true)) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |dividend##1@0| (LitInt (- 0 31))) (= |divisor##1@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |divisor##1@0| 0)) (not true))) (=> (or (not (= |divisor##1@0| 0)) (not true)) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |dividend##2@0| (LitInt 31)) (= |divisor##2@0| (LitInt (- 0 4))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |divisor##2@0| 0)) (not true))) (=> (or (not (= |divisor##2@0| 0)) (not true)) (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= |dividend##3@0| (LitInt (- 0 31))) (= |divisor##3@0| (LitInt (- 0 4))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |divisor##3@0| 0)) (not true))) (=> (or (not (= |divisor##3@0| 0)) (not true)) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
)) ($HeapSucc $Heap@6 $Heap@7)) (and (= |dividend##4@0| (LitInt 0)) (= |divisor##4@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |divisor##4@0| 0)) (not true))) (=> (or (not (= |divisor##4@0| 0)) (not true)) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= |dividend##5@0| (LitInt 0)) (= |divisor##5@0| (LitInt (- 0 4))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |divisor##5@0| 0)) (not true))) (=> (or (not (= |divisor##5@0| 0)) (not true)) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |Numbersdfy.116:8|
 :skolemid |1757|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
)) ($HeapSucc $Heap@8 $Heap@9))) (=> (and (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10)))
 :qid |Numbersdfy.136:8|
 :skolemid |1760|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10))
))) (and ($HeapSucc $Heap@9 $Heap@10) (= |s##4@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal (- 0.3 0.1))))))))) (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11))
))) (and ($HeapSucc $Heap@10 $Heap@11) (= |s##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal (+ 31.2 4.0))))) ($Box realType (real_2_U (LitReal (- 31.2 4.0))))) ($Box realType (real_2_U (LitReal (- 4.0 31.2)))))))))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12))
))) (and ($HeapSucc $Heap@11 $Heap@12) (= |s##6@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal (* 31.2 4.0))))) ($Box realType (real_2_U (LitReal (* 31.2 (- 0.0 4.0)))))))))) (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13))
)))) (and (and (and ($HeapSucc $Heap@12 $Heap@13) (= |s##7@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal (* (- 0.0 31.2) 4.0))))) ($Box realType (real_2_U (LitReal (* (- 0.0 31.2) (- 0.0 4.0))))))))) (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14))) (and (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14)))
 :qid |Numbersdfy.38:8|
 :skolemid |1695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14))
)) ($HeapSucc $Heap@13 $Heap@14)) (and (= |dividend##6@0| (LitReal 31.2)) (= |divisor##6@0| (LitReal 4.0)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |divisor##6@0| 0.0)) (not true))) (=> (or (not (= |divisor##6@0| 0.0)) (not true)) (=> (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (=> (and (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15)))
 :qid |Numbersdfy.259:8|
 :skolemid |1843|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15))
)) ($HeapSucc $Heap@14 $Heap@15)) (and (= |dividend##7@0| (LitReal (- 0.0 31.2))) (= |divisor##7@0| (LitReal 4.0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |divisor##7@0| 0.0)) (not true))) (=> (or (not (= |divisor##7@0| 0.0)) (not true)) (=> (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (=> (and (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16)))
 :qid |Numbersdfy.259:8|
 :skolemid |1843|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16))
)) ($HeapSucc $Heap@15 $Heap@16)) (and (= |dividend##8@0| (LitReal 31.2)) (= |divisor##8@0| (LitReal (- 0.0 4.0))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |divisor##8@0| 0.0)) (not true))) (=> (or (not (= |divisor##8@0| 0.0)) (not true)) (=> (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17)))
 :qid |Numbersdfy.259:8|
 :skolemid |1843|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17))
))) (and (and ($HeapSucc $Heap@16 $Heap@17) (= |dividend##9@0| (LitReal (- 0.0 31.2)))) (and (= |divisor##9@0| (LitReal (- 0.0 4.0))) (= (ControlFlow 0 2) (- 0 1))))) (or (not (= |divisor##9@0| 0.0)) (not true))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 2))) anon0_correct)))
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
