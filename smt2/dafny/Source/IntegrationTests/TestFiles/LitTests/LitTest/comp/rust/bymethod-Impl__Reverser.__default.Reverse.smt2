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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Reverser.U8 () T@U)
(declare-fun Tagclass.Reverser.WellFormedSequence () T@U)
(declare-fun tytagFamily$U8 () T@U)
(declare-fun tytagFamily$WellFormedSequence () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Reverser.U8 () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Tclass.Reverser.WellFormedSequence () T@U)
(declare-fun TSeq (T@U) T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Reverser.__default.Reverse (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Reverser.__default.Reverse#canCall| (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass.Reverser.U8 Tagclass.Reverser.WellFormedSequence tytagFamily$U8 tytagFamily$WellFormedSequence)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.Reverser.U8 $h)
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsAlloc intType |x#0| Tclass.Reverser.U8 $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |749|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |744|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((|s#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc SeqType |s#0| Tclass.Reverser.WellFormedSequence $h@@0) ($IsAlloc SeqType |s#0| (TSeq Tclass.Reverser.U8) $h@@0))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsAlloc SeqType |s#0| Tclass.Reverser.WellFormedSequence $h@@0))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |613|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |614|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |750|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |512|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |510|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |753|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|vs#0| T@U) ) (!  (=> (or (|Reverser.__default.Reverse#canCall| (Lit SeqType |vs#0|)) (and (< 3 $FunctionContextHeight) ($Is SeqType |vs#0| (TSeq Tclass.Reverser.U8)))) (and (=> (or (not (= (|Seq#Length| (Lit SeqType |vs#0|)) (LitInt 0))) (not true)) (|Reverser.__default.Reverse#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |vs#0|) (LitInt 1))))) (= (Reverser.__default.Reverse ($LS $ly) (Lit SeqType |vs#0|)) (ite (= (|Seq#Length| (Lit SeqType |vs#0|)) (LitInt 0)) |Seq#Empty| (|Seq#Append| (Reverser.__default.Reverse ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |vs#0|) (LitInt 1)))) (|Seq#Build| |Seq#Empty| (|Seq#Index| (Lit SeqType |vs#0|) (LitInt 0))))))))
 :qid |bymethoddfy.11:12|
 :weight 3
 :skolemid |981|
 :pattern ( (Reverser.__default.Reverse ($LS $ly) (Lit SeqType |vs#0|)))
))))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |740|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |741|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |734|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |735|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |521|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@5 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@0)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |719|
 :pattern ( (|Seq#Build| s@@5 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@1 h@@0) ($IsAlloc T@@1 v@@1 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |534|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@2 h@@1) ($IsAllocBox bx@@0 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |606|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@3 h@@2) ($IsAlloc T@@2 v@@2 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |605|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@3 h@@2))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |742|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |721|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Reverser.U8) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.Reverser.U8)))
 :qid |unknown.0:0|
 :skolemid |976|
 :pattern ( ($IsBox bx@@1 Tclass.Reverser.U8))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Reverser.WellFormedSequence) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) Tclass.Reverser.WellFormedSequence)))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( ($IsBox bx@@2 Tclass.Reverser.WellFormedSequence))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@3) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |720|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@3) i))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |736|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |739|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |612|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((v@@4 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@4) ($Is T@@3 v@@4 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |533|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|vs#0@@0| T@U) ) (!  (=> (or (|Reverser.__default.Reverse#canCall| |vs#0@@0|) (and (< 3 $FunctionContextHeight) ($Is SeqType |vs#0@@0| (TSeq Tclass.Reverser.U8)))) ($Is SeqType (Reverser.__default.Reverse $ly@@0 |vs#0@@0|) Tclass.Reverser.WellFormedSequence))
 :qid |bymethoddfy.11:12|
 :skolemid |978|
 :pattern ( (Reverser.__default.Reverse $ly@@0 |vs#0@@0|))
))))
(assert (forall ((s@@9 T@U) ) (! (<= 0 (|Seq#Length| s@@9))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |716|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |568|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |569|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |502|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |503|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |520|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($ly@@1 T@U) (|vs#0@@1| T@U) ) (! (= (Reverser.__default.Reverse ($LS $ly@@1) |vs#0@@1|) (Reverser.__default.Reverse $ly@@1 |vs#0@@1|))
 :qid |bymethoddfy.11:12|
 :skolemid |974|
 :pattern ( (Reverser.__default.Reverse ($LS $ly@@1) |vs#0@@1|))
)))
(assert (forall ((|s#0@@0| T@U) ) (! (= ($Is SeqType |s#0@@0| Tclass.Reverser.WellFormedSequence)  (and ($Is SeqType |s#0@@0| (TSeq Tclass.Reverser.U8)) (or (= (|Seq#Length| |s#0@@0|) (LitInt 0)) (or (not (= (|Seq#Length| |s#0@@0|) 0)) (not true)))))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($Is SeqType |s#0@@0| Tclass.Reverser.WellFormedSequence))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |1498|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@10 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@4)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |718|
 :pattern ( (|Seq#Build| s@@10 val@@4))
)))
(assert (forall ((bx@@3 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |530|
 :pattern ( ($IsBox bx@@3 (TSeq t@@7)))
)))
(assert (= (Tag Tclass.Reverser.U8) Tagclass.Reverser.U8))
(assert (= (TagFamily Tclass.Reverser.U8) tytagFamily$U8))
(assert (= (Tag Tclass.Reverser.WellFormedSequence) Tagclass.Reverser.WellFormedSequence))
(assert (= (TagFamily Tclass.Reverser.WellFormedSequence) tytagFamily$WellFormedSequence))
(assert (forall ((s@@11 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@11 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |743|
 :pattern ( (|Seq#Index| s@@11 k@@2) (|Seq#Drop| s@@11 n@@6))
)))
(assert (forall ((s@@12 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@12))) (= (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7) (|Seq#Drop| s@@12 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |752|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |722|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.Reverser.U8)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 256)))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($Is intType |x#0@@0| Tclass.Reverser.U8))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |513|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |511|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@13 T@U) ) (!  (=> (= (|Seq#Length| s@@13) 0) (= s@@13 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |717|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((s@@14 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@14 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |751|
 :pattern ( (|Seq#Take| s@@14 n@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|vs#0@@2| T@U) ) (!  (=> (or (|Reverser.__default.Reverse#canCall| |vs#0@@2|) (and (< 3 $FunctionContextHeight) ($Is SeqType |vs#0@@2| (TSeq Tclass.Reverser.U8)))) (and (=> (or (not (= (|Seq#Length| |vs#0@@2|) (LitInt 0))) (not true)) (|Reverser.__default.Reverse#canCall| (|Seq#Drop| |vs#0@@2| (LitInt 1)))) (= (Reverser.__default.Reverse ($LS $ly@@2) |vs#0@@2|) (ite (= (|Seq#Length| |vs#0@@2|) (LitInt 0)) |Seq#Empty| (|Seq#Append| (Reverser.__default.Reverse $ly@@2 (|Seq#Drop| |vs#0@@2| (LitInt 1))) (|Seq#Build| |Seq#Empty| (|Seq#Index| |vs#0@@2| (LitInt 0))))))))
 :qid |bymethoddfy.11:12|
 :skolemid |980|
 :pattern ( (Reverser.__default.Reverse ($LS $ly@@2) |vs#0@@2|))
))))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |548|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |549|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@3| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |vs#0@@3| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |i#0#lo@0| () Int)
(declare-fun |s#0@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun |i#0#hi@0| () Int)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@@1| () T@U)
(set-info :boogie-vc-id Impl$$Reverser.__default.Reverse)
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
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=> false (|Seq#Equal| |s#0@3| (Reverser.__default.Reverse ($LS ($LS $LZ)) |vs#0@@3|))))))
(let ((anon9_Then_correct  (=> (and (and (= |i#0@0| |i#0#lo@0|) (|Reverser.__default.Reverse#canCall| |vs#0@@3|)) (and (= |s#0@3| |s#0@1|) (= (ControlFlow 0 6) 5))) GeneratedUnifiedExit_correct)))
(let ((anon9_Else_correct true))
(let ((anon8_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 7) 6) anon9_Then_correct) (=> (= (ControlFlow 0 7) 3) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 8) 2) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (and ($Is SeqType |s#0@1| Tclass.Reverser.WellFormedSequence) ($IsAlloc SeqType |s#0@1| Tclass.Reverser.WellFormedSequence $Heap)) (=> (and (and (and (and (not false) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |i#0#hi@0|)) (and (and (and (<= |i#0#lo@0| |i#0@0|) (<= |i#0@0| |i#0#hi@0|)) (=> |$w$loop#0@0| (|Reverser.__default.Reverse#canCall| (|Seq#Drop| |vs#0@@3| |i#0@0|)))) (and (and (=> |$w$loop#0@0| (|Seq#Equal| |s#0@1| (Reverser.__default.Reverse ($LS ($LS $LZ)) (|Seq#Drop| |vs#0@@3| |i#0@0|)))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |bymethoddfy.17:5|
 :skolemid |984|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |bymethoddfy.17:5|
 :skolemid |985|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)))))) (and (=> (= (ControlFlow 0 9) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 9) 8) anon7_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is SeqType (Lit SeqType |Seq#Empty|) Tclass.Reverser.WellFormedSequence) (= |s#0@0| (Lit SeqType |Seq#Empty|))) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |vs#0@@3|)))) (=> (and (and (and (<= (LitInt 0) (|Seq#Length| |vs#0@@3|)) (<= (|Seq#Length| |vs#0@@3|) (|Seq#Length| |vs#0@@3|))) (|Seq#Equal| |vs#0@@3| (|Seq#Drop| (|Seq#Take| |vs#0@@3| (|Seq#Length| |vs#0@@3|)) (LitInt 0)))) (and (and (= |i#0#lo@0| (LitInt 0)) (= |i#0#hi@0| (|Seq#Length| |vs#0@@3|))) (and (<= |i#0#lo@0| |i#0#hi@0|) (= (ControlFlow 0 10) 9)))) anon7_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |vs#0@@3| (TSeq Tclass.Reverser.U8)) ($IsAlloc SeqType |vs#0@@3| (TSeq Tclass.Reverser.U8) $Heap))) (and (and ($Is SeqType |s#0@@1| Tclass.Reverser.WellFormedSequence) ($IsAlloc SeqType |s#0@@1| Tclass.Reverser.WellFormedSequence $Heap)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 11) 10)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
