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
(declare-fun |ORD#Less| (T@U T@U) Bool)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun q@Real (Int) Real)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
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
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@1 p@@0) (= o@@1 p@@0)) (|ORD#Less| p@@0 o@@1))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@1 p@@0) (|ORD#Less| p@@0 o@@1))
)))
(assert (forall ((x@@5 Int) ) (! (= (q@Real x@@5) (to_real x@@5))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@5))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (|ORD#Offset| o@@2))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@3 p@@1) (or (not (= o@@3 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@3) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@3 p@@1))) (=> (and (|ORD#IsNat| o@@3) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@3 p@@1) (< (|ORD#Offset| o@@3) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@3 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@3)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@3 p@@1))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (or (and (<= 0 n@@0) (< n@@0 55296)) (and (<= 57344 n@@0) (< n@@0 1114112))) (= (|char#ToInt| (|char#FromInt| n@@0)) n@@0))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@0))
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
 :skolemid |571|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((o@@4 T@U) ) (!  (=> (|ORD#IsNat| o@@4) (= o@@4 (|ORD#FromNat| (|ORD#Offset| o@@4))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@4))
 :pattern ( (|ORD#IsNat| o@@4))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |b##0@0| () Bool)
(declare-fun |end##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Real)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Real)
(declare-fun |b##1@0| () Bool)
(declare-fun |end##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Real)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Real)
(declare-fun |b##2@0| () Bool)
(declare-fun |end##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |b##3@0| () Bool)
(declare-fun |end##3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |b##4@0| () Bool)
(declare-fun |end##4@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |b##5@0| () Bool)
(declare-fun |end##5@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |newtype$check#17@0| () Int)
(declare-fun |b##6@0| () Bool)
(declare-fun |end##6@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |newtype$check#18@0| () Int)
(declare-fun |newtype$check#19@0| () Int)
(declare-fun |b##7@0| () Bool)
(declare-fun |end##7@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#20@0| () Int)
(declare-fun |newtype$check#21@0| () Int)
(declare-fun |b##8@0| () Bool)
(declare-fun |end##8@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |newtype$check#22@0| () Int)
(declare-fun |newtype$check#23@0| () Int)
(declare-fun |b##9@0| () Bool)
(declare-fun |end##9@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |b##10@0| () Bool)
(declare-fun |end##10@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |newtype$check#24@0| () Int)
(declare-fun |newtype$check#25@0| () Real)
(declare-fun |newtype$check#26@0| () Int)
(declare-fun |newtype$check#27@0| () Real)
(declare-fun |b##11@0| () Bool)
(declare-fun |end##11@0| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |newtype$check#28@0| () Int)
(declare-fun |newtype$check#29@0| () Real)
(declare-fun |newtype$check#30@0| () Int)
(declare-fun |newtype$check#31@0| () Real)
(declare-fun |b##12@0| () Bool)
(declare-fun |end##12@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |b##13@0| () Bool)
(declare-fun |end##13@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |newtype$check#32@0| () Int)
(declare-fun |newtype$check#33@0| () Int)
(declare-fun |newtype$check#34@0| () Int)
(declare-fun |newtype$check#35@0| () Int)
(declare-fun |b##14@0| () Bool)
(declare-fun |end##14@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |newtype$check#36@0| () Int)
(declare-fun |newtype$check#37@0| () Int)
(declare-fun |newtype$check#38@0| () Int)
(declare-fun |newtype$check#39@0| () Int)
(declare-fun |b##15@0| () Bool)
(declare-fun |end##15@0| () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |newtype$check#40@0| () Int)
(declare-fun |newtype$check#41@0| () Int)
(declare-fun |b##16@0| () Bool)
(declare-fun |end##16@0| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |newtype$check#42@0| () Int)
(declare-fun |newtype$check#43@0| () Int)
(declare-fun |b##17@0| () Bool)
(declare-fun |end##17@0| () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |newtype$check#44@0| () Int)
(declare-fun |newtype$check#45@0| () Int)
(declare-fun |b##18@0| () Bool)
(declare-fun |end##18@0| () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |newtype$check#46@0| () Int)
(declare-fun |newtype$check#47@0| () Int)
(declare-fun |b##19@0| () Bool)
(declare-fun |end##19@0| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |b##20@0| () Bool)
(declare-fun |end##20@0| () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |newtype$check#48@0| () Int)
(declare-fun |newtype$check#49@0| () Real)
(declare-fun |newtype$check#50@0| () Int)
(declare-fun |newtype$check#51@0| () Real)
(declare-fun |b##21@0| () Bool)
(declare-fun |end##21@0| () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun |newtype$check#52@0| () Int)
(declare-fun |newtype$check#53@0| () Real)
(declare-fun |newtype$check#54@0| () Int)
(declare-fun |newtype$check#55@0| () Real)
(declare-fun |b##22@0| () Bool)
(declare-fun |end##22@0| () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |b##23@0| () Bool)
(declare-fun |end##23@0| () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun |newtype$check#56@0| () Int)
(declare-fun |newtype$check#57@0| () Int)
(declare-fun |newtype$check#58@0| () Int)
(declare-fun |newtype$check#59@0| () Int)
(declare-fun |b##24@0| () Bool)
(declare-fun |end##24@0| () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun |newtype$check#60@0| () Int)
(declare-fun |newtype$check#61@0| () Int)
(declare-fun |newtype$check#62@0| () Int)
(declare-fun |newtype$check#63@0| () Int)
(declare-fun |b##25@0| () Bool)
(declare-fun |end##25@0| () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun |newtype$check#64@0| () Int)
(declare-fun |newtype$check#65@0| () Int)
(declare-fun |b##26@0| () Bool)
(declare-fun |end##26@0| () T@U)
(declare-fun $Heap@26 () T@U)
(declare-fun |newtype$check#66@0| () Int)
(declare-fun |newtype$check#67@0| () Int)
(declare-fun |b##27@0| () Bool)
(declare-fun |end##27@0| () T@U)
(declare-fun $Heap@27 () T@U)
(declare-fun |newtype$check#68@0| () Int)
(declare-fun |newtype$check#69@0| () Int)
(declare-fun |b##28@0| () Bool)
(declare-fun |end##28@0| () T@U)
(declare-fun $Heap@28 () T@U)
(declare-fun |newtype$check#70@0| () Int)
(declare-fun |newtype$check#71@0| () Int)
(declare-fun |b##29@0| () Bool)
(declare-fun |end##29@0| () T@U)
(declare-fun $Heap@29 () T@U)
(declare-fun |b##30@0| () Bool)
(declare-fun |end##30@0| () T@U)
(declare-fun $Heap@30 () T@U)
(declare-fun |newtype$check#72@0| () Int)
(declare-fun |newtype$check#73@0| () Real)
(declare-fun |newtype$check#74@0| () Int)
(declare-fun |newtype$check#75@0| () Real)
(declare-fun |b##31@0| () Bool)
(declare-fun |end##31@0| () T@U)
(declare-fun $Heap@31 () T@U)
(declare-fun |newtype$check#76@0| () Int)
(declare-fun |newtype$check#77@0| () Real)
(declare-fun |newtype$check#78@0| () Int)
(declare-fun |newtype$check#79@0| () Real)
(declare-fun |b##32@0| () Bool)
(declare-fun |end##32@0| () T@U)
(declare-fun $Heap@32 () T@U)
(declare-fun |b##33@0| () Bool)
(declare-fun |end##33@0| () T@U)
(declare-fun $Heap@33 () T@U)
(declare-fun |newtype$check#80@0| () Int)
(declare-fun |newtype$check#81@0| () Int)
(declare-fun |newtype$check#82@0| () Int)
(declare-fun |newtype$check#83@0| () Int)
(declare-fun |b##34@0| () Bool)
(declare-fun |end##34@0| () T@U)
(declare-fun $Heap@34 () T@U)
(declare-fun |newtype$check#84@0| () Int)
(declare-fun |newtype$check#85@0| () Int)
(declare-fun |newtype$check#86@0| () Int)
(declare-fun |newtype$check#87@0| () Int)
(declare-fun |b##35@0| () Bool)
(declare-fun |end##35@0| () T@U)
(declare-fun $Heap@35 () T@U)
(declare-fun |newtype$check#88@0| () Int)
(declare-fun |newtype$check#89@0| () Int)
(declare-fun |b##36@0| () Bool)
(declare-fun |end##36@0| () T@U)
(declare-fun $Heap@36 () T@U)
(declare-fun |newtype$check#90@0| () Int)
(declare-fun |newtype$check#91@0| () Int)
(declare-fun |b##37@0| () Bool)
(declare-fun |end##37@0| () T@U)
(declare-fun $Heap@37 () T@U)
(declare-fun |newtype$check#92@0| () Int)
(declare-fun |newtype$check#93@0| () Int)
(declare-fun |b##38@0| () Bool)
(declare-fun |end##38@0| () T@U)
(declare-fun $Heap@38 () T@U)
(declare-fun |newtype$check#94@0| () Int)
(declare-fun |newtype$check#95@0| () Int)
(declare-fun |b##39@0| () Bool)
(declare-fun |end##39@0| () T@U)
(declare-fun $Heap@39 () T@U)
(declare-fun |b##40@0| () Bool)
(declare-fun |end##40@0| () T@U)
(declare-fun $Heap@40 () T@U)
(declare-fun |newtype$check#96@0| () Int)
(declare-fun |newtype$check#97@0| () Real)
(declare-fun |newtype$check#98@0| () Int)
(declare-fun |newtype$check#99@0| () Real)
(declare-fun |b##41@0| () Bool)
(declare-fun |end##41@0| () T@U)
(declare-fun $Heap@41 () T@U)
(declare-fun |newtype$check#100@0| () Int)
(declare-fun |newtype$check#101@0| () Real)
(declare-fun |newtype$check#102@0| () Int)
(declare-fun |newtype$check#103@0| () Real)
(declare-fun |b##42@0| () Bool)
(declare-fun |end##42@0| () T@U)
(declare-fun $Heap@42 () T@U)
(declare-fun |b##43@0| () Bool)
(declare-fun |end##43@0| () T@U)
(declare-fun $Heap@43 () T@U)
(declare-fun |newtype$check#104@0| () Int)
(declare-fun |newtype$check#105@0| () Int)
(declare-fun |newtype$check#106@0| () Int)
(declare-fun |newtype$check#107@0| () Int)
(declare-fun |b##44@0| () Bool)
(declare-fun |end##44@0| () T@U)
(declare-fun $Heap@44 () T@U)
(declare-fun |newtype$check#108@0| () Int)
(declare-fun |newtype$check#109@0| () Int)
(declare-fun |newtype$check#110@0| () Int)
(declare-fun |newtype$check#111@0| () Int)
(declare-fun |b##45@0| () Bool)
(declare-fun |end##45@0| () T@U)
(declare-fun $Heap@45 () T@U)
(declare-fun |newtype$check#112@0| () Int)
(declare-fun |newtype$check#113@0| () Int)
(declare-fun |b##46@0| () Bool)
(declare-fun |end##46@0| () T@U)
(declare-fun $Heap@46 () T@U)
(declare-fun |newtype$check#114@0| () Int)
(declare-fun |newtype$check#115@0| () Int)
(declare-fun |b##47@0| () Bool)
(declare-fun |end##47@0| () T@U)
(declare-fun $Heap@47 () T@U)
(declare-fun |newtype$check#116@0| () Int)
(declare-fun |newtype$check#117@0| () Int)
(declare-fun |b##48@0| () Bool)
(declare-fun |end##48@0| () T@U)
(declare-fun $Heap@48 () T@U)
(declare-fun |newtype$check#118@0| () Int)
(declare-fun |newtype$check#119@0| () Int)
(declare-fun |b##49@0| () Bool)
(declare-fun |end##49@0| () T@U)
(declare-fun $Heap@49 () T@U)
(declare-fun |b##50@0| () Bool)
(declare-fun |end##50@0| () T@U)
(declare-fun $Heap@50 () T@U)
(declare-fun |newtype$check#120@0| () Int)
(declare-fun |newtype$check#121@0| () Real)
(declare-fun |newtype$check#122@0| () Int)
(declare-fun |newtype$check#123@0| () Real)
(declare-fun |b##51@0| () Bool)
(declare-fun |end##51@0| () T@U)
(declare-fun $Heap@51 () T@U)
(declare-fun |newtype$check#124@0| () Int)
(declare-fun |newtype$check#125@0| () Real)
(declare-fun |newtype$check#126@0| () Int)
(declare-fun |newtype$check#127@0| () Real)
(declare-fun |b##52@0| () Bool)
(declare-fun |end##52@0| () T@U)
(declare-fun $Heap@52 () T@U)
(declare-fun |b##53@0| () Bool)
(declare-fun |end##53@0| () T@U)
(declare-fun $Heap@53 () T@U)
(declare-fun |newtype$check#128@0| () Int)
(declare-fun |newtype$check#129@0| () Int)
(declare-fun |newtype$check#130@0| () Int)
(declare-fun |newtype$check#131@0| () Int)
(declare-fun |b##54@0| () Bool)
(declare-fun |end##54@0| () T@U)
(declare-fun $Heap@54 () T@U)
(declare-fun |newtype$check#132@0| () Int)
(declare-fun |newtype$check#133@0| () Int)
(declare-fun |newtype$check#134@0| () Int)
(declare-fun |newtype$check#135@0| () Int)
(declare-fun |b##55@0| () Bool)
(declare-fun |end##55@0| () T@U)
(declare-fun $Heap@55 () T@U)
(declare-fun |newtype$check#136@0| () Int)
(declare-fun |newtype$check#137@0| () Int)
(declare-fun |b##56@0| () Bool)
(declare-fun |end##56@0| () T@U)
(declare-fun $Heap@56 () T@U)
(declare-fun |newtype$check#138@0| () Int)
(declare-fun |newtype$check#139@0| () Int)
(declare-fun |b##57@0| () Bool)
(declare-fun |end##57@0| () T@U)
(declare-fun $Heap@57 () T@U)
(declare-fun |newtype$check#140@0| () Int)
(declare-fun |newtype$check#141@0| () Int)
(declare-fun |b##58@0| () Bool)
(declare-fun |end##58@0| () T@U)
(declare-fun $Heap@58 () T@U)
(declare-fun |newtype$check#142@0| () Int)
(declare-fun |newtype$check#143@0| () Int)
(declare-fun |b##59@0| () Bool)
(declare-fun |end##59@0| () T@U)
(declare-fun $Heap@59 () T@U)
(declare-fun |newtype$check#144@0| () Int)
(declare-fun |newtype$check#145@0| () Int)
(declare-fun |b##60@0| () Bool)
(declare-fun |end##60@0| () T@U)
(declare-fun $Heap@60 () T@U)
(declare-fun |newtype$check#146@0| () Int)
(declare-fun |newtype$check#147@0| () Int)
(declare-fun |b##61@0| () Bool)
(declare-fun |end##61@0| () T@U)
(declare-fun $Heap@61 () T@U)
(declare-fun |newtype$check#148@0| () Int)
(declare-fun |newtype$check#149@0| () Int)
(declare-fun |b##62@0| () Bool)
(declare-fun |end##62@0| () T@U)
(declare-fun $Heap@62 () T@U)
(declare-fun |newtype$check#150@0| () Int)
(declare-fun |newtype$check#151@0| () Int)
(declare-fun |b##63@0| () Bool)
(declare-fun |end##63@0| () T@U)
(declare-fun $Heap@63 () T@U)
(declare-fun |newtype$check#152@0| () Int)
(declare-fun |newtype$check#153@0| () Int)
(declare-fun |b##64@0| () Bool)
(declare-fun |end##64@0| () T@U)
(declare-fun $Heap@64 () T@U)
(declare-fun |newtype$check#154@0| () Int)
(declare-fun |newtype$check#155@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SeqType) 7) (= (Ctor charType) 8)))
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
 (=> (= (ControlFlow 0 0) 206) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |b##0@0| (<= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 205)) (> (q@Real |newtype$check#0@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#0@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#1@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 204)) (> |newtype$check#1@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#1@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#2@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 203)) (> (q@Real |newtype$check#2@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#2@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#3@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 202)) (> |newtype$check#3@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#3@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##1@0| (<= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##1@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |newtype$check#4@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 201)) (> (q@Real |newtype$check#4@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#4@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 200)) (> (q@Real |newtype$check#4@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#4@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#5@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 199)) (> |newtype$check#5@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#5@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 198)) (> |newtype$check#5@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#5@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#6@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 197)) (> (q@Real |newtype$check#6@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#6@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 196)) (> (q@Real |newtype$check#6@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#6@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#7@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 195)) (> |newtype$check#7@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#7@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 194)) (> |newtype$check#7@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#7@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##2@0| (<= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##2@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |b##3@0| (<= (LitInt 24) (LitInt 1507))) (= |end##3@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |newtype$check#8@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 193)) (> |newtype$check#8@0| (- 0 4))) (=> (> |newtype$check#8@0| (- 0 4)) (=> (= |newtype$check#9@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 192)) (> |newtype$check#9@0| (- 0 4))) (=> (> |newtype$check#9@0| (- 0 4)) (=> (= |newtype$check#10@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 191)) (> |newtype$check#10@0| (- 0 4))) (=> (> |newtype$check#10@0| (- 0 4)) (=> (= |newtype$check#11@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 190)) (> |newtype$check#11@0| (- 0 4))) (=> (> |newtype$check#11@0| (- 0 4)) (=> (and (= |b##4@0| (<= (LitInt 24) (LitInt 1507))) (= |end##4@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |newtype$check#12@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 189)) (> |newtype$check#12@0| (- 0 4))) (=> (> |newtype$check#12@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 188)) (> |newtype$check#12@0| (- 0 3))) (=> (> |newtype$check#12@0| (- 0 3)) (=> (= |newtype$check#13@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 187)) (> |newtype$check#13@0| (- 0 4))) (=> (> |newtype$check#13@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 186)) (> |newtype$check#13@0| (- 0 3))) (=> (> |newtype$check#13@0| (- 0 3)) (=> (= |newtype$check#14@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 185)) (> |newtype$check#14@0| (- 0 4))) (=> (> |newtype$check#14@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 184)) (> |newtype$check#14@0| (- 0 3))) (=> (> |newtype$check#14@0| (- 0 3)) (=> (= |newtype$check#15@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 183)) (> |newtype$check#15@0| (- 0 4))) (=> (> |newtype$check#15@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 182)) (> |newtype$check#15@0| (- 0 3))) (=> (> |newtype$check#15@0| (- 0 3)) (=> (and (= |b##5@0| (<= (LitInt 24) (LitInt 1507))) (= |end##5@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |newtype$check#16@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 181)) (and (<= 0 |newtype$check#16@0|) (< |newtype$check#16@0| 65536))) (=> (and (<= 0 |newtype$check#16@0|) (< |newtype$check#16@0| 65536)) (=> (= |newtype$check#17@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 180)) (and (<= 0 |newtype$check#17@0|) (< |newtype$check#17@0| 65536))) (=> (and (<= 0 |newtype$check#17@0|) (< |newtype$check#17@0| 65536)) (=> (and (= |b##6@0| (bvule #x0018 #x05e3)) (= |end##6@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |newtype$check#18@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 179)) (and (<= 0 |newtype$check#18@0|) (< |newtype$check#18@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#18@0|) (< |newtype$check#18@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#19@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 178)) (and (<= 0 |newtype$check#19@0|) (< |newtype$check#19@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#19@0|) (< |newtype$check#19@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##7@0| (bvule #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (= |end##7@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |newtype$check#20@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 177)) (or (and (<= 0 |newtype$check#20@0|) (< |newtype$check#20@0| 55296)) (and (<= 57344 |newtype$check#20@0|) (< |newtype$check#20@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#20@0|) (< |newtype$check#20@0| 55296)) (and (<= 57344 |newtype$check#20@0|) (< |newtype$check#20@0| 1114112))) (=> (= |newtype$check#21@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 176)) (or (and (<= 0 |newtype$check#21@0|) (< |newtype$check#21@0| 55296)) (and (<= 57344 |newtype$check#21@0|) (< |newtype$check#21@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#21@0|) (< |newtype$check#21@0| 55296)) (and (<= 57344 |newtype$check#21@0|) (< |newtype$check#21@0| 1114112))) (=> (and (= |b##8@0| (<= (|char#ToInt| (|char#FromInt| (LitInt 24))) (|char#ToInt| (|char#FromInt| (LitInt 1507))))) (= |end##8@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |newtype$check#22@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 175)) (<= 0 |newtype$check#22@0|)) (=> (<= 0 |newtype$check#22@0|) (=> (= |newtype$check#23@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 174)) (<= 0 |newtype$check#23@0|)) (=> (<= 0 |newtype$check#23@0|) (=> (and (and (and (and (= |b##9@0|  (or (= (|ORD#FromNat| (LitInt 24)) (|ORD#FromNat| (LitInt 1507))) (|ORD#Less| (|ORD#FromNat| (LitInt 24)) (|ORD#FromNat| (LitInt 1507))))) (= |end##9@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9))) (and (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (= |b##10@0| (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##10@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@10)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@10))
))) (and ($HeapSucc $Heap@9 $Heap@10) (= |newtype$check#24@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 173)) (> (q@Real |newtype$check#24@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#24@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#25@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 172)) (> |newtype$check#25@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#25@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#26@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 171)) (> (q@Real |newtype$check#26@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#26@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#27@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 170)) (> |newtype$check#27@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#27@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##11@0| (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##11@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11))
))) (and ($HeapSucc $Heap@10 $Heap@11) (= |newtype$check#28@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 169)) (> (q@Real |newtype$check#28@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#28@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 168)) (> (q@Real |newtype$check#28@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#28@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#29@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 167)) (> |newtype$check#29@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#29@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 166)) (> |newtype$check#29@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#29@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#30@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 165)) (> (q@Real |newtype$check#30@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#30@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 164)) (> (q@Real |newtype$check#30@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#30@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#31@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 163)) (> |newtype$check#31@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#31@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 162)) (> |newtype$check#31@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#31@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##12@0| (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##12@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12))) (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12))
)) ($HeapSucc $Heap@11 $Heap@12)) (and (= |b##13@0| (= (LitInt 24) (LitInt 1507))) (= |end##13@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@13)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13))
))) (and ($HeapSucc $Heap@12 $Heap@13) (= |newtype$check#32@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 161)) (> |newtype$check#32@0| (- 0 4))) (=> (> |newtype$check#32@0| (- 0 4)) (=> (= |newtype$check#33@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 160)) (> |newtype$check#33@0| (- 0 4))) (=> (> |newtype$check#33@0| (- 0 4)) (=> (= |newtype$check#34@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 159)) (> |newtype$check#34@0| (- 0 4))) (=> (> |newtype$check#34@0| (- 0 4)) (=> (= |newtype$check#35@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 158)) (> |newtype$check#35@0| (- 0 4))) (=> (> |newtype$check#35@0| (- 0 4)) (=> (and (= |b##14@0| (= (LitInt 24) (LitInt 1507))) (= |end##14@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@14)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@14))
))) (and ($HeapSucc $Heap@13 $Heap@14) (= |newtype$check#36@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 157)) (> |newtype$check#36@0| (- 0 4))) (=> (> |newtype$check#36@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 156)) (> |newtype$check#36@0| (- 0 3))) (=> (> |newtype$check#36@0| (- 0 3)) (=> (= |newtype$check#37@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 155)) (> |newtype$check#37@0| (- 0 4))) (=> (> |newtype$check#37@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 154)) (> |newtype$check#37@0| (- 0 3))) (=> (> |newtype$check#37@0| (- 0 3)) (=> (= |newtype$check#38@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 153)) (> |newtype$check#38@0| (- 0 4))) (=> (> |newtype$check#38@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 152)) (> |newtype$check#38@0| (- 0 3))) (=> (> |newtype$check#38@0| (- 0 3)) (=> (= |newtype$check#39@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 151)) (> |newtype$check#39@0| (- 0 4))) (=> (> |newtype$check#39@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 150)) (> |newtype$check#39@0| (- 0 3))) (=> (> |newtype$check#39@0| (- 0 3)) (=> (and (= |b##15@0| (= (LitInt 24) (LitInt 1507))) (= |end##15@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@15)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@15))
))) (and ($HeapSucc $Heap@14 $Heap@15) (= |newtype$check#40@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 149)) (and (<= 0 |newtype$check#40@0|) (< |newtype$check#40@0| 65536))) (=> (and (<= 0 |newtype$check#40@0|) (< |newtype$check#40@0| 65536)) (=> (= |newtype$check#41@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 148)) (and (<= 0 |newtype$check#41@0|) (< |newtype$check#41@0| 65536))) (=> (and (<= 0 |newtype$check#41@0|) (< |newtype$check#41@0| 65536)) (=> (and (= |b##16@0| (= #x0018 #x05e3)) (= |end##16@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@16)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@16))
))) (and ($HeapSucc $Heap@15 $Heap@16) (= |newtype$check#42@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 147)) (and (<= 0 |newtype$check#42@0|) (< |newtype$check#42@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#42@0|) (< |newtype$check#42@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#43@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 146)) (and (<= 0 |newtype$check#43@0|) (< |newtype$check#43@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#43@0|) (< |newtype$check#43@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##17@0| (= #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (= |end##17@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@17)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@17))
))) (and ($HeapSucc $Heap@16 $Heap@17) (= |newtype$check#44@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 145)) (or (and (<= 0 |newtype$check#44@0|) (< |newtype$check#44@0| 55296)) (and (<= 57344 |newtype$check#44@0|) (< |newtype$check#44@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#44@0|) (< |newtype$check#44@0| 55296)) (and (<= 57344 |newtype$check#44@0|) (< |newtype$check#44@0| 1114112))) (=> (= |newtype$check#45@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 144)) (or (and (<= 0 |newtype$check#45@0|) (< |newtype$check#45@0| 55296)) (and (<= 57344 |newtype$check#45@0|) (< |newtype$check#45@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#45@0|) (< |newtype$check#45@0| 55296)) (and (<= 57344 |newtype$check#45@0|) (< |newtype$check#45@0| 1114112))) (=> (and (= |b##18@0| (= (|char#FromInt| (LitInt 24)) (|char#FromInt| (LitInt 1507)))) (= |end##18@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@18)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@18))
))) (and ($HeapSucc $Heap@17 $Heap@18) (= |newtype$check#46@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 143)) (<= 0 |newtype$check#46@0|)) (=> (<= 0 |newtype$check#46@0|) (=> (= |newtype$check#47@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 142)) (<= 0 |newtype$check#47@0|)) (=> (<= 0 |newtype$check#47@0|) (=> (and (and (and (and (= |b##19@0| (= (|ORD#FromNat| (LitInt 24)) (|ORD#FromNat| (LitInt 1507)))) (= |end##19@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19))) (and (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@19)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@19))
)) ($HeapSucc $Heap@18 $Heap@19)) (and (= |b##20@0| (>= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##20@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@20)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@20))
))) (and ($HeapSucc $Heap@19 $Heap@20) (= |newtype$check#48@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 141)) (> (q@Real |newtype$check#48@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#48@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#49@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 140)) (> |newtype$check#49@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#49@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#50@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 139)) (> (q@Real |newtype$check#50@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#50@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#51@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 138)) (> |newtype$check#51@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#51@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##21@0| (>= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##21@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@21)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@21))
))) (and ($HeapSucc $Heap@20 $Heap@21) (= |newtype$check#52@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 137)) (> (q@Real |newtype$check#52@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#52@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 136)) (> (q@Real |newtype$check#52@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#52@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#53@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 135)) (> |newtype$check#53@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#53@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 134)) (> |newtype$check#53@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#53@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#54@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 133)) (> (q@Real |newtype$check#54@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#54@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 132)) (> (q@Real |newtype$check#54@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#54@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#55@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 131)) (> |newtype$check#55@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#55@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 130)) (> |newtype$check#55@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#55@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##22@0| (>= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##22@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22))) (and (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@22)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@22))
)) ($HeapSucc $Heap@21 $Heap@22)) (and (= |b##23@0| (>= (LitInt 24) (LitInt 1507))) (= |end##23@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@23)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@23))
))) (and ($HeapSucc $Heap@22 $Heap@23) (= |newtype$check#56@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 129)) (> |newtype$check#56@0| (- 0 4))) (=> (> |newtype$check#56@0| (- 0 4)) (=> (= |newtype$check#57@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 128)) (> |newtype$check#57@0| (- 0 4))) (=> (> |newtype$check#57@0| (- 0 4)) (=> (= |newtype$check#58@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 127)) (> |newtype$check#58@0| (- 0 4))) (=> (> |newtype$check#58@0| (- 0 4)) (=> (= |newtype$check#59@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 126)) (> |newtype$check#59@0| (- 0 4))) (=> (> |newtype$check#59@0| (- 0 4)) (=> (and (= |b##24@0| (>= (LitInt 24) (LitInt 1507))) (= |end##24@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@24)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@24))
))) (and ($HeapSucc $Heap@23 $Heap@24) (= |newtype$check#60@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 125)) (> |newtype$check#60@0| (- 0 4))) (=> (> |newtype$check#60@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 124)) (> |newtype$check#60@0| (- 0 3))) (=> (> |newtype$check#60@0| (- 0 3)) (=> (= |newtype$check#61@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 123)) (> |newtype$check#61@0| (- 0 4))) (=> (> |newtype$check#61@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 122)) (> |newtype$check#61@0| (- 0 3))) (=> (> |newtype$check#61@0| (- 0 3)) (=> (= |newtype$check#62@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 121)) (> |newtype$check#62@0| (- 0 4))) (=> (> |newtype$check#62@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 120)) (> |newtype$check#62@0| (- 0 3))) (=> (> |newtype$check#62@0| (- 0 3)) (=> (= |newtype$check#63@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 119)) (> |newtype$check#63@0| (- 0 4))) (=> (> |newtype$check#63@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 118)) (> |newtype$check#63@0| (- 0 3))) (=> (> |newtype$check#63@0| (- 0 3)) (=> (and (= |b##25@0| (>= (LitInt 24) (LitInt 1507))) (= |end##25@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@25)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@25))
))) (and ($HeapSucc $Heap@24 $Heap@25) (= |newtype$check#64@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 117)) (and (<= 0 |newtype$check#64@0|) (< |newtype$check#64@0| 65536))) (=> (and (<= 0 |newtype$check#64@0|) (< |newtype$check#64@0| 65536)) (=> (= |newtype$check#65@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 116)) (and (<= 0 |newtype$check#65@0|) (< |newtype$check#65@0| 65536))) (=> (and (<= 0 |newtype$check#65@0|) (< |newtype$check#65@0| 65536)) (=> (and (= |b##26@0| (bvuge #x0018 #x05e3)) (= |end##26@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@26) ($IsHeapAnchor $Heap@26)) (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@26)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@26))
))) (and ($HeapSucc $Heap@25 $Heap@26) (= |newtype$check#66@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 115)) (and (<= 0 |newtype$check#66@0|) (< |newtype$check#66@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#66@0|) (< |newtype$check#66@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#67@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 114)) (and (<= 0 |newtype$check#67@0|) (< |newtype$check#67@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#67@0|) (< |newtype$check#67@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##27@0| (bvuge #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (= |end##27@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@27) ($IsHeapAnchor $Heap@27)) (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@27)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@27))
))) (and ($HeapSucc $Heap@26 $Heap@27) (= |newtype$check#68@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 113)) (or (and (<= 0 |newtype$check#68@0|) (< |newtype$check#68@0| 55296)) (and (<= 57344 |newtype$check#68@0|) (< |newtype$check#68@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#68@0|) (< |newtype$check#68@0| 55296)) (and (<= 57344 |newtype$check#68@0|) (< |newtype$check#68@0| 1114112))) (=> (= |newtype$check#69@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 112)) (or (and (<= 0 |newtype$check#69@0|) (< |newtype$check#69@0| 55296)) (and (<= 57344 |newtype$check#69@0|) (< |newtype$check#69@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#69@0|) (< |newtype$check#69@0| 55296)) (and (<= 57344 |newtype$check#69@0|) (< |newtype$check#69@0| 1114112))) (=> (and (= |b##28@0| (>= (|char#ToInt| (|char#FromInt| (LitInt 24))) (|char#ToInt| (|char#FromInt| (LitInt 1507))))) (= |end##28@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@28) ($IsHeapAnchor $Heap@28)) (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@28)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@28))
))) (and ($HeapSucc $Heap@27 $Heap@28) (= |newtype$check#70@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 111)) (<= 0 |newtype$check#70@0|)) (=> (<= 0 |newtype$check#70@0|) (=> (= |newtype$check#71@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 110)) (<= 0 |newtype$check#71@0|)) (=> (<= 0 |newtype$check#71@0|) (=> (and (and (and (and (= |b##29@0|  (or (= (|ORD#FromNat| (LitInt 1507)) (|ORD#FromNat| (LitInt 24))) (|ORD#Less| (|ORD#FromNat| (LitInt 1507)) (|ORD#FromNat| (LitInt 24))))) (= |end##29@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and ($IsGoodHeap $Heap@29) ($IsHeapAnchor $Heap@29))) (and (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@29)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@29))
)) ($HeapSucc $Heap@28 $Heap@29)) (and (= |b##30@0| (< (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##30@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@30) ($IsHeapAnchor $Heap@30)) (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@30)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@30))
))) (and ($HeapSucc $Heap@29 $Heap@30) (= |newtype$check#72@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 109)) (> (q@Real |newtype$check#72@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#72@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#73@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 108)) (> |newtype$check#73@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#73@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#74@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 107)) (> (q@Real |newtype$check#74@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#74@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#75@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 106)) (> |newtype$check#75@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#75@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##31@0| (< (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##31@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@31) ($IsHeapAnchor $Heap@31)) (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@31)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@31))
))) (and ($HeapSucc $Heap@30 $Heap@31) (= |newtype$check#76@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 105)) (> (q@Real |newtype$check#76@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#76@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 104)) (> (q@Real |newtype$check#76@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#76@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#77@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 103)) (> |newtype$check#77@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#77@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 102)) (> |newtype$check#77@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#77@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#78@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 101)) (> (q@Real |newtype$check#78@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#78@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 100)) (> (q@Real |newtype$check#78@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#78@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#79@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 99)) (> |newtype$check#79@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#79@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 98)) (> |newtype$check#79@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#79@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##32@0| (< (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##32@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@32) ($IsHeapAnchor $Heap@32))) (and (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@32)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@32))
)) ($HeapSucc $Heap@31 $Heap@32)) (and (= |b##33@0| (U_2_bool (Lit boolType (bool_2_U (< 24 1507))))) (= |end##33@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@33) ($IsHeapAnchor $Heap@33)) (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@33)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@33))
))) (and ($HeapSucc $Heap@32 $Heap@33) (= |newtype$check#80@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 97)) (> |newtype$check#80@0| (- 0 4))) (=> (> |newtype$check#80@0| (- 0 4)) (=> (= |newtype$check#81@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 96)) (> |newtype$check#81@0| (- 0 4))) (=> (> |newtype$check#81@0| (- 0 4)) (=> (= |newtype$check#82@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 95)) (> |newtype$check#82@0| (- 0 4))) (=> (> |newtype$check#82@0| (- 0 4)) (=> (= |newtype$check#83@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 94)) (> |newtype$check#83@0| (- 0 4))) (=> (> |newtype$check#83@0| (- 0 4)) (=> (and (= |b##34@0| (U_2_bool (Lit boolType (bool_2_U (< 24 1507))))) (= |end##34@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@34) ($IsHeapAnchor $Heap@34)) (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@34)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 $o@@34))
))) (and ($HeapSucc $Heap@33 $Heap@34) (= |newtype$check#84@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 93)) (> |newtype$check#84@0| (- 0 4))) (=> (> |newtype$check#84@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 92)) (> |newtype$check#84@0| (- 0 3))) (=> (> |newtype$check#84@0| (- 0 3)) (=> (= |newtype$check#85@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 91)) (> |newtype$check#85@0| (- 0 4))) (=> (> |newtype$check#85@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 90)) (> |newtype$check#85@0| (- 0 3))) (=> (> |newtype$check#85@0| (- 0 3)) (=> (= |newtype$check#86@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 89)) (> |newtype$check#86@0| (- 0 4))) (=> (> |newtype$check#86@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 88)) (> |newtype$check#86@0| (- 0 3))) (=> (> |newtype$check#86@0| (- 0 3)) (=> (= |newtype$check#87@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 87)) (> |newtype$check#87@0| (- 0 4))) (=> (> |newtype$check#87@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 86)) (> |newtype$check#87@0| (- 0 3))) (=> (> |newtype$check#87@0| (- 0 3)) (=> (and (= |b##35@0| (U_2_bool (Lit boolType (bool_2_U (< 24 1507))))) (= |end##35@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@35) ($IsHeapAnchor $Heap@35)) (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@35 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 $o@@35)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@35 $o@@35))
))) (and ($HeapSucc $Heap@34 $Heap@35) (= |newtype$check#88@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 85)) (and (<= 0 |newtype$check#88@0|) (< |newtype$check#88@0| 65536))) (=> (and (<= 0 |newtype$check#88@0|) (< |newtype$check#88@0| 65536)) (=> (= |newtype$check#89@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 84)) (and (<= 0 |newtype$check#89@0|) (< |newtype$check#89@0| 65536))) (=> (and (<= 0 |newtype$check#89@0|) (< |newtype$check#89@0| 65536)) (=> (and (= |b##36@0| (bvult #x0018 #x05e3)) (= |end##36@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@36) ($IsHeapAnchor $Heap@36)) (forall (($o@@36 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@35 $o@@36) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@36 $o@@36) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@35 $o@@36)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@36 $o@@36))
))) (and ($HeapSucc $Heap@35 $Heap@36) (= |newtype$check#90@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 83)) (and (<= 0 |newtype$check#90@0|) (< |newtype$check#90@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#90@0|) (< |newtype$check#90@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#91@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 82)) (and (<= 0 |newtype$check#91@0|) (< |newtype$check#91@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#91@0|) (< |newtype$check#91@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##37@0| (bvult #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (= |end##37@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@37) ($IsHeapAnchor $Heap@37)) (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@36 $o@@37) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 $o@@37) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@36 $o@@37)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 $o@@37))
))) (and ($HeapSucc $Heap@36 $Heap@37) (= |newtype$check#92@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 81)) (or (and (<= 0 |newtype$check#92@0|) (< |newtype$check#92@0| 55296)) (and (<= 57344 |newtype$check#92@0|) (< |newtype$check#92@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#92@0|) (< |newtype$check#92@0| 55296)) (and (<= 57344 |newtype$check#92@0|) (< |newtype$check#92@0| 1114112))) (=> (= |newtype$check#93@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 80)) (or (and (<= 0 |newtype$check#93@0|) (< |newtype$check#93@0| 55296)) (and (<= 57344 |newtype$check#93@0|) (< |newtype$check#93@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#93@0|) (< |newtype$check#93@0| 55296)) (and (<= 57344 |newtype$check#93@0|) (< |newtype$check#93@0| 1114112))) (=> (and (= |b##38@0| (< (|char#ToInt| (|char#FromInt| (LitInt 24))) (|char#ToInt| (|char#FromInt| (LitInt 1507))))) (= |end##38@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@38) ($IsHeapAnchor $Heap@38)) (forall (($o@@38 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 $o@@38) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@38) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 $o@@38)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@38))
))) (and ($HeapSucc $Heap@37 $Heap@38) (= |newtype$check#94@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 79)) (<= 0 |newtype$check#94@0|)) (=> (<= 0 |newtype$check#94@0|) (=> (= |newtype$check#95@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 78)) (<= 0 |newtype$check#95@0|)) (=> (<= 0 |newtype$check#95@0|) (=> (and (and (and (and (= |b##39@0| (|ORD#Less| (|ORD#FromNat| (LitInt 24)) (|ORD#FromNat| (LitInt 1507)))) (= |end##39@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and ($IsGoodHeap $Heap@39) ($IsHeapAnchor $Heap@39))) (and (and (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@39) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@39) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@39)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@39))
)) ($HeapSucc $Heap@38 $Heap@39)) (and (= |b##40@0|  (or (not (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (not true))) (= |end##40@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@40) ($IsHeapAnchor $Heap@40)) (forall (($o@@40 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@40) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@40) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@40)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@40))
))) (and ($HeapSucc $Heap@39 $Heap@40) (= |newtype$check#96@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 77)) (> (q@Real |newtype$check#96@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#96@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#97@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 76)) (> |newtype$check#97@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#97@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#98@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 75)) (> (q@Real |newtype$check#98@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#98@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#99@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 74)) (> |newtype$check#99@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#99@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##41@0|  (or (not (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (not true))) (= |end##41@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@41) ($IsHeapAnchor $Heap@41)) (forall (($o@@41 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@41) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 $o@@41) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@41)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 $o@@41))
))) (and ($HeapSucc $Heap@40 $Heap@41) (= |newtype$check#100@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 73)) (> (q@Real |newtype$check#100@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#100@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 72)) (> (q@Real |newtype$check#100@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#100@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#101@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 71)) (> |newtype$check#101@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#101@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 70)) (> |newtype$check#101@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#101@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#102@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 69)) (> (q@Real |newtype$check#102@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#102@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 68)) (> (q@Real |newtype$check#102@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#102@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#103@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 67)) (> |newtype$check#103@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#103@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 66)) (> |newtype$check#103@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#103@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##42@0|  (or (not (= (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (not true))) (= |end##42@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@42) ($IsHeapAnchor $Heap@42))) (and (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 $o@@42) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 $o@@42)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@42))
)) ($HeapSucc $Heap@41 $Heap@42)) (and (= |b##43@0| (U_2_bool (Lit boolType (bool_2_U  (or (not (= 24 1507)) (not true)))))) (= |end##43@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@43) ($IsHeapAnchor $Heap@43)) (forall (($o@@43 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@43) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@43) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@43)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@43))
))) (and ($HeapSucc $Heap@42 $Heap@43) (= |newtype$check#104@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 65)) (> |newtype$check#104@0| (- 0 4))) (=> (> |newtype$check#104@0| (- 0 4)) (=> (= |newtype$check#105@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 64)) (> |newtype$check#105@0| (- 0 4))) (=> (> |newtype$check#105@0| (- 0 4)) (=> (= |newtype$check#106@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 63)) (> |newtype$check#106@0| (- 0 4))) (=> (> |newtype$check#106@0| (- 0 4)) (=> (= |newtype$check#107@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 62)) (> |newtype$check#107@0| (- 0 4))) (=> (> |newtype$check#107@0| (- 0 4)) (=> (and (= |b##44@0| (U_2_bool (Lit boolType (bool_2_U  (or (not (= 24 1507)) (not true)))))) (= |end##44@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@44) ($IsHeapAnchor $Heap@44)) (forall (($o@@44 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@44) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@44) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@44)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@44))
))) (and ($HeapSucc $Heap@43 $Heap@44) (= |newtype$check#108@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 61)) (> |newtype$check#108@0| (- 0 4))) (=> (> |newtype$check#108@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 60)) (> |newtype$check#108@0| (- 0 3))) (=> (> |newtype$check#108@0| (- 0 3)) (=> (= |newtype$check#109@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 59)) (> |newtype$check#109@0| (- 0 4))) (=> (> |newtype$check#109@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 58)) (> |newtype$check#109@0| (- 0 3))) (=> (> |newtype$check#109@0| (- 0 3)) (=> (= |newtype$check#110@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 57)) (> |newtype$check#110@0| (- 0 4))) (=> (> |newtype$check#110@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 56)) (> |newtype$check#110@0| (- 0 3))) (=> (> |newtype$check#110@0| (- 0 3)) (=> (= |newtype$check#111@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 55)) (> |newtype$check#111@0| (- 0 4))) (=> (> |newtype$check#111@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 54)) (> |newtype$check#111@0| (- 0 3))) (=> (> |newtype$check#111@0| (- 0 3)) (=> (and (= |b##45@0| (U_2_bool (Lit boolType (bool_2_U  (or (not (= 24 1507)) (not true)))))) (= |end##45@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@45) ($IsHeapAnchor $Heap@45)) (forall (($o@@45 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@45) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@45 $o@@45) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@45)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@45 $o@@45))
))) (and ($HeapSucc $Heap@44 $Heap@45) (= |newtype$check#112@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 53)) (and (<= 0 |newtype$check#112@0|) (< |newtype$check#112@0| 65536))) (=> (and (<= 0 |newtype$check#112@0|) (< |newtype$check#112@0| 65536)) (=> (= |newtype$check#113@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 52)) (and (<= 0 |newtype$check#113@0|) (< |newtype$check#113@0| 65536))) (=> (and (<= 0 |newtype$check#113@0|) (< |newtype$check#113@0| 65536)) (=> (and (= |b##46@0|  (or (not (= #x0018 #x05e3)) (not true))) (= |end##46@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@46) ($IsHeapAnchor $Heap@46)) (forall (($o@@46 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@45 $o@@46) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@46 $o@@46) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@45 $o@@46)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@46 $o@@46))
))) (and ($HeapSucc $Heap@45 $Heap@46) (= |newtype$check#114@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 51)) (and (<= 0 |newtype$check#114@0|) (< |newtype$check#114@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#114@0|) (< |newtype$check#114@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#115@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 50)) (and (<= 0 |newtype$check#115@0|) (< |newtype$check#115@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#115@0|) (< |newtype$check#115@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##47@0|  (or (not (= #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (not true))) (= |end##47@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@47) ($IsHeapAnchor $Heap@47)) (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@46 $o@@47) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@47 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@46 $o@@47)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@47 $o@@47))
))) (and ($HeapSucc $Heap@46 $Heap@47) (= |newtype$check#116@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (or (and (<= 0 |newtype$check#116@0|) (< |newtype$check#116@0| 55296)) (and (<= 57344 |newtype$check#116@0|) (< |newtype$check#116@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#116@0|) (< |newtype$check#116@0| 55296)) (and (<= 57344 |newtype$check#116@0|) (< |newtype$check#116@0| 1114112))) (=> (= |newtype$check#117@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 48)) (or (and (<= 0 |newtype$check#117@0|) (< |newtype$check#117@0| 55296)) (and (<= 57344 |newtype$check#117@0|) (< |newtype$check#117@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#117@0|) (< |newtype$check#117@0| 55296)) (and (<= 57344 |newtype$check#117@0|) (< |newtype$check#117@0| 1114112))) (=> (and (= |b##48@0|  (or (not (= (|char#FromInt| (LitInt 24)) (|char#FromInt| (LitInt 1507)))) (not true))) (= |end##48@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@48) ($IsHeapAnchor $Heap@48)) (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@47 $o@@48) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@48 $o@@48) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@47 $o@@48)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@48 $o@@48))
))) (and ($HeapSucc $Heap@47 $Heap@48) (= |newtype$check#118@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (<= 0 |newtype$check#118@0|)) (=> (<= 0 |newtype$check#118@0|) (=> (= |newtype$check#119@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 46)) (<= 0 |newtype$check#119@0|)) (=> (<= 0 |newtype$check#119@0|) (=> (and (and (and (and (= |b##49@0|  (or (not (= (|ORD#FromNat| (LitInt 24)) (|ORD#FromNat| (LitInt 1507)))) (not true))) (= |end##49@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (and ($IsGoodHeap $Heap@49) ($IsHeapAnchor $Heap@49))) (and (and (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@48 $o@@49) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@49 $o@@49) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@48 $o@@49)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@49 $o@@49))
)) ($HeapSucc $Heap@48 $Heap@49)) (and (= |b##50@0| (> (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##50@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@50) ($IsHeapAnchor $Heap@50)) (forall (($o@@50 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@49 $o@@50) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@50 $o@@50) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@49 $o@@50)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@50 $o@@50))
))) (and ($HeapSucc $Heap@49 $Heap@50) (= |newtype$check#120@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (> (q@Real |newtype$check#120@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#120@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#121@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (> |newtype$check#121@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#121@0| (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#122@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 43)) (> (q@Real |newtype$check#122@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#122@0|) (q@Real (LitInt (- 0 4)))) (=> (= |newtype$check#123@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (> |newtype$check#123@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#123@0| (q@Real (LitInt (- 0 4)))) (=> (and (= |b##51@0| (> (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##51@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@51) ($IsHeapAnchor $Heap@51)) (forall (($o@@51 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@50 $o@@51) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@51 $o@@51) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@50 $o@@51)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@51 $o@@51))
))) (and ($HeapSucc $Heap@50 $Heap@51) (= |newtype$check#124@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 41)) (> (q@Real |newtype$check#124@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#124@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (> (q@Real |newtype$check#124@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#124@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#125@0| (q@Real (LitInt 24))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (> |newtype$check#125@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#125@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (> |newtype$check#125@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#125@0| (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#126@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 37)) (> (q@Real |newtype$check#126@0|) (q@Real (LitInt (- 0 4))))) (=> (> (q@Real |newtype$check#126@0|) (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (> (q@Real |newtype$check#126@0|) (q@Real (LitInt (- 0 3))))) (=> (> (q@Real |newtype$check#126@0|) (q@Real (LitInt (- 0 3)))) (=> (= |newtype$check#127@0| (q@Real (LitInt 1507))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (> |newtype$check#127@0| (q@Real (LitInt (- 0 4))))) (=> (> |newtype$check#127@0| (q@Real (LitInt (- 0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (> |newtype$check#127@0| (q@Real (LitInt (- 0 3))))) (=> (> |newtype$check#127@0| (q@Real (LitInt (- 0 3)))) (=> (and (and (and (and (= |b##52@0| (> (q@Real (LitInt 24)) (q@Real (LitInt 1507)))) (= |end##52@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (and ($IsGoodHeap $Heap@52) ($IsHeapAnchor $Heap@52))) (and (and (forall (($o@@52 T@U) ) (!  (=> (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@51 $o@@52) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@52 $o@@52) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@51 $o@@52)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@52 $o@@52))
)) ($HeapSucc $Heap@51 $Heap@52)) (and (= |b##53@0| (U_2_bool (Lit boolType (bool_2_U (> 24 1507))))) (= |end##53@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and ($IsGoodHeap $Heap@53) ($IsHeapAnchor $Heap@53)) (forall (($o@@53 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@52 $o@@53) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@53 $o@@53) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@52 $o@@53)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@53 $o@@53))
))) (and ($HeapSucc $Heap@52 $Heap@53) (= |newtype$check#128@0| (LitInt 24))))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (> |newtype$check#128@0| (- 0 4))) (=> (> |newtype$check#128@0| (- 0 4)) (=> (= |newtype$check#129@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (> |newtype$check#129@0| (- 0 4))) (=> (> |newtype$check#129@0| (- 0 4)) (=> (= |newtype$check#130@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (> |newtype$check#130@0| (- 0 4))) (=> (> |newtype$check#130@0| (- 0 4)) (=> (= |newtype$check#131@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (> |newtype$check#131@0| (- 0 4))) (=> (> |newtype$check#131@0| (- 0 4)) (=> (and (= |b##54@0| (U_2_bool (Lit boolType (bool_2_U (> 24 1507))))) (= |end##54@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@54) ($IsHeapAnchor $Heap@54)) (forall (($o@@54 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@53 $o@@54) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@54 $o@@54) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@53 $o@@54)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@54 $o@@54))
))) (and ($HeapSucc $Heap@53 $Heap@54) (= |newtype$check#132@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (> |newtype$check#132@0| (- 0 4))) (=> (> |newtype$check#132@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (> |newtype$check#132@0| (- 0 3))) (=> (> |newtype$check#132@0| (- 0 3)) (=> (= |newtype$check#133@0| (LitInt 24)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (> |newtype$check#133@0| (- 0 4))) (=> (> |newtype$check#133@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (> |newtype$check#133@0| (- 0 3))) (=> (> |newtype$check#133@0| (- 0 3)) (=> (= |newtype$check#134@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (> |newtype$check#134@0| (- 0 4))) (=> (> |newtype$check#134@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (> |newtype$check#134@0| (- 0 3))) (=> (> |newtype$check#134@0| (- 0 3)) (=> (= |newtype$check#135@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (> |newtype$check#135@0| (- 0 4))) (=> (> |newtype$check#135@0| (- 0 4)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (> |newtype$check#135@0| (- 0 3))) (=> (> |newtype$check#135@0| (- 0 3)) (=> (and (= |b##55@0| (U_2_bool (Lit boolType (bool_2_U (> 24 1507))))) (= |end##55@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@55) ($IsHeapAnchor $Heap@55)) (forall (($o@@55 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@54 $o@@55) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@55 $o@@55) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@54 $o@@55)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@55 $o@@55))
))) (and ($HeapSucc $Heap@54 $Heap@55) (= |newtype$check#136@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= 0 |newtype$check#136@0|) (< |newtype$check#136@0| 65536))) (=> (and (<= 0 |newtype$check#136@0|) (< |newtype$check#136@0| 65536)) (=> (= |newtype$check#137@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 |newtype$check#137@0|) (< |newtype$check#137@0| 65536))) (=> (and (<= 0 |newtype$check#137@0|) (< |newtype$check#137@0| 65536)) (=> (and (= |b##56@0| (bvugt #x0018 #x05e3)) (= |end##56@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@56) ($IsHeapAnchor $Heap@56)) (forall (($o@@56 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@55 $o@@56) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@56 $o@@56) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@55 $o@@56)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@56 $o@@56))
))) (and ($HeapSucc $Heap@55 $Heap@56) (= |newtype$check#138@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= 0 |newtype$check#138@0|) (< |newtype$check#138@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#138@0|) (< |newtype$check#138@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (= |newtype$check#139@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 |newtype$check#139@0|) (< |newtype$check#139@0| 6901746346790563787434755862277025452451108972170386555162524223799296))) (=> (and (<= 0 |newtype$check#139@0|) (< |newtype$check#139@0| 6901746346790563787434755862277025452451108972170386555162524223799296)) (=> (and (= |b##57@0| (bvugt #x0000000000000000000000000000000000000000000000000000000018 #x00000000000000000000000000000000000000000000000000000005e3)) (= |end##57@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@57) ($IsHeapAnchor $Heap@57)) (forall (($o@@57 T@U) ) (!  (=> (and (or (not (= $o@@57 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@56 $o@@57) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@57 $o@@57) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@56 $o@@57)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@57 $o@@57))
))) (and ($HeapSucc $Heap@56 $Heap@57) (= |newtype$check#140@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (and (<= 0 |newtype$check#140@0|) (< |newtype$check#140@0| 55296)) (and (<= 57344 |newtype$check#140@0|) (< |newtype$check#140@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#140@0|) (< |newtype$check#140@0| 55296)) (and (<= 57344 |newtype$check#140@0|) (< |newtype$check#140@0| 1114112))) (=> (= |newtype$check#141@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (and (<= 0 |newtype$check#141@0|) (< |newtype$check#141@0| 55296)) (and (<= 57344 |newtype$check#141@0|) (< |newtype$check#141@0| 1114112)))) (=> (or (and (<= 0 |newtype$check#141@0|) (< |newtype$check#141@0| 55296)) (and (<= 57344 |newtype$check#141@0|) (< |newtype$check#141@0| 1114112))) (=> (and (= |b##58@0| (> (|char#ToInt| (|char#FromInt| (LitInt 24))) (|char#ToInt| (|char#FromInt| (LitInt 1507))))) (= |end##58@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@58) ($IsHeapAnchor $Heap@58)) (forall (($o@@58 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@57 $o@@58) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@58 $o@@58) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@57 $o@@58)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@58 $o@@58))
))) (and ($HeapSucc $Heap@57 $Heap@58) (= |newtype$check#142@0| (LitInt 24)))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= 0 |newtype$check#142@0|)) (=> (<= 0 |newtype$check#142@0|) (=> (= |newtype$check#143@0| (LitInt 1507)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (<= 0 |newtype$check#143@0|)) (=> (<= 0 |newtype$check#143@0|) (=> (and (= |b##59@0| (|ORD#Less| (|ORD#FromNat| (LitInt 1507)) (|ORD#FromNat| (LitInt 24)))) (= |end##59@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (=> (and (and (and ($IsGoodHeap $Heap@59) ($IsHeapAnchor $Heap@59)) (forall (($o@@59 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@58 $o@@59) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@59 $o@@59) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@58 $o@@59)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@59 $o@@59))
))) (and ($HeapSucc $Heap@58 $Heap@59) (= |newtype$check#144@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 |newtype$check#144@0|) (< |newtype$check#144@0| 1))) (=> (and (<= 0 |newtype$check#144@0|) (< |newtype$check#144@0| 1)) (=> (= |newtype$check#145@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 |newtype$check#145@0|) (< |newtype$check#145@0| 1))) (=> (and (<= 0 |newtype$check#145@0|) (< |newtype$check#145@0| 1)) (=> (and (= |b##60@0| true) (= |end##60@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@60) ($IsHeapAnchor $Heap@60)) (forall (($o@@60 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@59 $o@@60) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@60 $o@@60) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@59 $o@@60)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@60 $o@@60))
))) (and ($HeapSucc $Heap@59 $Heap@60) (= |newtype$check#146@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 |newtype$check#146@0|) (< |newtype$check#146@0| 1))) (=> (and (<= 0 |newtype$check#146@0|) (< |newtype$check#146@0| 1)) (=> (= |newtype$check#147@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 |newtype$check#147@0|) (< |newtype$check#147@0| 1))) (=> (and (<= 0 |newtype$check#147@0|) (< |newtype$check#147@0| 1)) (=> (and (= |b##61@0| (= 0 0)) (= |end##61@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@61) ($IsHeapAnchor $Heap@61)) (forall (($o@@61 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@60 $o@@61) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@61 $o@@61) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@60 $o@@61)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@61 $o@@61))
))) (and ($HeapSucc $Heap@60 $Heap@61) (= |newtype$check#148@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 |newtype$check#148@0|) (< |newtype$check#148@0| 1))) (=> (and (<= 0 |newtype$check#148@0|) (< |newtype$check#148@0| 1)) (=> (= |newtype$check#149@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 |newtype$check#149@0|) (< |newtype$check#149@0| 1))) (=> (and (<= 0 |newtype$check#149@0|) (< |newtype$check#149@0| 1)) (=> (and (= |b##62@0| true) (= |end##62@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 10)))))) (=> (and (and (and ($IsGoodHeap $Heap@62) ($IsHeapAnchor $Heap@62)) (forall (($o@@62 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@61 $o@@62) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@62 $o@@62) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@61 $o@@62)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@62 $o@@62))
))) (and ($HeapSucc $Heap@61 $Heap@62) (= |newtype$check#150@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 |newtype$check#150@0|) (< |newtype$check#150@0| 1))) (=> (and (<= 0 |newtype$check#150@0|) (< |newtype$check#150@0| 1)) (=> (= |newtype$check#151@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 |newtype$check#151@0|) (< |newtype$check#151@0| 1))) (=> (and (<= 0 |newtype$check#151@0|) (< |newtype$check#151@0| 1)) (=> (and (= |b##63@0| false) (= |end##63@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@63) ($IsHeapAnchor $Heap@63)) (forall (($o@@63 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@62 $o@@63) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@63 $o@@63) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@62 $o@@63)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@63 $o@@63))
))) (and ($HeapSucc $Heap@62 $Heap@63) (= |newtype$check#152@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 |newtype$check#152@0|) (< |newtype$check#152@0| 1))) (=> (and (<= 0 |newtype$check#152@0|) (< |newtype$check#152@0| 1)) (=> (= |newtype$check#153@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 |newtype$check#153@0|) (< |newtype$check#153@0| 1))) (=> (and (<= 0 |newtype$check#153@0|) (< |newtype$check#153@0| 1)) (=> (and (= |b##64@0|  (or (not (= 0 0)) (not true))) (= |end##64@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@64) ($IsHeapAnchor $Heap@64)) (forall (($o@@64 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@63 $o@@64) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@64 $o@@64) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@63 $o@@64)))
 :qid |gitissue2672dfy.8:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@64 $o@@64))
))) (and ($HeapSucc $Heap@63 $Heap@64) (= |newtype$check#154@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 |newtype$check#154@0|) (< |newtype$check#154@0| 1))) (=> (and (<= 0 |newtype$check#154@0|) (< |newtype$check#154@0| 1)) (=> (and (= |newtype$check#155@0| (LitInt 0)) (= (ControlFlow 0 2) (- 0 1))) (and (<= 0 |newtype$check#155@0|) (< |newtype$check#155@0| 1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 206) 2))) anon0_correct)))
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
