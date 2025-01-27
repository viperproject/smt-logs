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
(declare-fun TagSeq () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_e| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M1.__default.fSetToSeq (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M1.__default.fSetToSeq#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun M1.__default.setIsSeq (T@U T@U T@U) Bool)
(declare-fun |M1.__default.setIsSeq#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |691|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |692|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |696|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |697|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |690|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |796|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |706|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((M1._default.fSetToSeq$_T0 T@U) (t T@U) ) (!  (=> (|$let#0$canCall| M1._default.fSetToSeq$_T0 t) (|Set#IsMember| t (|$let#0_e| M1._default.fSetToSeq$_T0 t)))
 :qid |gitissue867dfy.90:7|
 :skolemid |1111|
 :pattern ( (|$let#0_e| M1._default.fSetToSeq$_T0 t))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |687|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |794|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert (forall ((M1._default.fSetToSeq$_T0@@0 T@U) ($ly T@U) (|t#0| T@U) ) (! (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@0 ($LS $ly) |t#0|) (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@0 $ly |t#0|))
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@0 ($LS $ly) |t#0|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |699|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |700|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |702|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |705|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M1._default.fSetToSeq$_T0@@1 T@U) ($ly@@0 T@U) ($Heap T@U) (|t#0@@0| T@U) ) (!  (=> (or (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@1 |t#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is SetType |t#0@@0| (TSet M1._default.fSetToSeq$_T0@@1))))) (and (=> (or (not (= (|Set#Card| |t#0@@0|) (LitInt 0))) (not true)) (and (|$let#0$canCall| M1._default.fSetToSeq$_T0@@1 |t#0@@0|) (let ((|tx#1| (|Set#Difference| |t#0@@0| (|Set#UnionOne| |Set#Empty| (|$let#0_e| M1._default.fSetToSeq$_T0@@1 |t#0@@0|)))))
(|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@1 |tx#1|)))) (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@1 ($LS $ly@@0) |t#0@@0|) (ite (= (|Set#Card| |t#0@@0|) (LitInt 0)) |Seq#Empty| (let ((|e#0| (|$let#0_e| M1._default.fSetToSeq$_T0@@1 |t#0@@0|)))
(let ((|tx#0| (|Set#Difference| |t#0@@0| (|Set#UnionOne| |Set#Empty| |e#0|))))
(let ((|qx#0| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@1 $ly@@0 |tx#0|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#0|) |qx#0|))))))))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@1 ($LS $ly@@0) |t#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|Set#Card| s@@0) 0) (= s@@0 |Set#Empty|)) (=> (or (not (= (|Set#Card| s@@0) 0)) (not true)) (exists ((x@@7 T@U) ) (! (|Set#IsMember| s@@0 x@@7)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |688|
 :pattern ( (|Set#IsMember| s@@0 x@@7))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |689|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |704|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((x@@8 Int) ) (! (= (LitInt x@@8) x@@8)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |579|
 :pattern ( (LitInt x@@8))
)))
(assert (forall ((x@@9 T@U) (T T@T) ) (! (= (Lit T x@@9) x@@9)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |577|
 :pattern ( (Lit T x@@9))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((s@@1 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@1 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |820|
 :pattern ( ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t@@0)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@3) (|Set#IsMember| b@@7 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |708|
 :pattern ( (|Set#IsMember| a@@10 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |709|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |801|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |802|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@10 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@10)) x@@10)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |588|
 :pattern ( ($Unbox T@@0 x@@10))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@4)) (not (|Set#IsMember| b@@8 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |713|
 :pattern ( (|Set#IsMember| a@@11 o@@4))
 :pattern ( (|Set#IsMember| b@@8 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |714|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (forall ((v@@0 T@U) (t0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |608|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |609|
 :pattern ( ($Is SetType v@@0 (TSet t0)))
)))
(assert (forall ((s@@2 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@2 v@@1)) (+ 1 (|Seq#Length| s@@2)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |786|
 :pattern ( (|Seq#Build| s@@2 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h) ($IsAlloc T@@1 v@@2 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |601|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |788|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((s@@3 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@3) i) (|Seq#Index| s@@3 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |787|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@3) i))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5)  (or (|Set#IsMember| a@@12 o@@5) (|Set#IsMember| b@@9 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |695|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@11)  (or (|Seq#Contains| s0@@1 x@@11) (|Seq#Contains| s1@@1 x@@11)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |795|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@11))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |698|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((s@@4 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@4 x@@12) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i@@0) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |792|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |793|
 :pattern ( (|Seq#Contains| s@@4 x@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M1._default.setIsSeq$_T0 T@U) (|t#0@@1| T@U) (|q#0| T@U) ) (!  (=> (or (|M1.__default.setIsSeq#canCall| M1._default.setIsSeq$_T0 (Lit SetType |t#0@@1|) (Lit SeqType |q#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SetType |t#0@@1| (TSet M1._default.setIsSeq$_T0)) ($Is SeqType |q#0| (TSeq M1._default.setIsSeq$_T0))))) (= (M1.__default.setIsSeq M1._default.setIsSeq$_T0 (Lit SetType |t#0@@1|) (Lit SeqType |q#0|))  (=> (= (|Set#Card| (Lit SetType |t#0@@1|)) (|Seq#Length| (Lit SeqType |q#0|))) (and (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |q#0|)))) (|Set#IsMember| (Lit SetType |t#0@@1|) (|Seq#Index| (Lit SeqType |q#0|) |i#1|)))
 :qid |gitissue867dfy.79:15|
 :skolemid |1096|
 :pattern ( (|Seq#Index| |q#0| |i#1|))
)) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| M1._default.setIsSeq$_T0) (=> (|Set#IsMember| (Lit SetType |t#0@@1|) |x#1|) (|Seq#Contains| |q#0| |x#1|)))
 :qid |gitissue867dfy.80:15|
 :skolemid |1097|
 :pattern ( (|Seq#Contains| |q#0| |x#1|))
 :pattern ( (|Set#IsMember| |t#0@@1| |x#1|))
))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1099|
 :pattern ( (M1.__default.setIsSeq M1._default.setIsSeq$_T0 (Lit SetType |t#0@@1|) (Lit SeqType |q#0|)))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Seq#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |803|
 :pattern ( (|Seq#Equal| a@@14 b@@11))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M1._default.fSetToSeq$_T0@@2 T@U) ($ly@@1 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@2 |t#0@@2|) (and (< 1 $FunctionContextHeight) ($Is SetType |t#0@@2| (TSet M1._default.fSetToSeq$_T0@@2)))) (and (M1.__default.setIsSeq M1._default.fSetToSeq$_T0@@2 |t#0@@2| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@2 $ly@@1 |t#0@@2|)) ($Is SeqType (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@2 $ly@@1 |t#0@@2|) (TSeq M1._default.fSetToSeq$_T0@@2))))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@2 $ly@@1 |t#0@@2|))
))))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@15 b@@12)) (|Set#Card| (|Set#Difference| b@@12 a@@15))) (|Set#Card| (|Set#Intersection| a@@15 b@@12))) (|Set#Card| (|Set#Union| a@@15 b@@12))) (= (|Set#Card| (|Set#Difference| a@@15 b@@12)) (- (|Set#Card| a@@15) (|Set#Card| (|Set#Intersection| a@@15 b@@12)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |707|
 :pattern ( (|Set#Card| (|Set#Difference| a@@15 b@@12)))
)))
(assert (forall ((v@@4 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@2) ($Is T@@2 v@@4 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |600|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M1._default.setIsSeq$_T0@@0 T@U) (|t#0@@3| T@U) (|q#0@@0| T@U) ) (!  (=> (or (|M1.__default.setIsSeq#canCall| M1._default.setIsSeq$_T0@@0 |t#0@@3| |q#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |t#0@@3| (TSet M1._default.setIsSeq$_T0@@0)) ($Is SeqType |q#0@@0| (TSeq M1._default.setIsSeq$_T0@@0))))) (= (M1.__default.setIsSeq M1._default.setIsSeq$_T0@@0 |t#0@@3| |q#0@@0|)  (=> (= (|Set#Card| |t#0@@3|) (|Seq#Length| |q#0@@0|)) (and (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |q#0@@0|))) (|Set#IsMember| |t#0@@3| (|Seq#Index| |q#0@@0| |i#0|)))
 :qid |gitissue867dfy.79:15|
 :skolemid |1092|
 :pattern ( (|Seq#Index| |q#0@@0| |i#0|))
)) (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| M1._default.setIsSeq$_T0@@0) (=> (|Set#IsMember| |t#0@@3| |x#0|) (|Seq#Contains| |q#0@@0| |x#0|)))
 :qid |gitissue867dfy.80:15|
 :skolemid |1093|
 :pattern ( (|Seq#Contains| |q#0@@0| |x#0|))
 :pattern ( (|Set#IsMember| |t#0@@3| |x#0|))
))))))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( (M1.__default.setIsSeq M1._default.setIsSeq$_T0@@0 |t#0@@3| |q#0@@0|))
))))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Set#Card| s@@5))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |686|
 :pattern ( (|Set#Card| s@@5))
)))
(assert (forall ((s@@6 T@U) ) (! (<= 0 (|Seq#Length| s@@6))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |783|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |629|
 :pattern ( (|Set#IsMember| v@@5 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |630|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M1._default.fSetToSeq$_T0@@3 T@U) ($ly@@2 T@U) ($Heap@@0 T@U) (|t#0@@4| T@U) ) (!  (=> (or (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@3 (Lit SetType |t#0@@4|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is SetType |t#0@@4| (TSet M1._default.fSetToSeq$_T0@@3))))) (and (=> (or (not (= (|Set#Card| (Lit SetType |t#0@@4|)) (LitInt 0))) (not true)) (and (|$let#0$canCall| M1._default.fSetToSeq$_T0@@3 (Lit SetType |t#0@@4|)) (let ((|tx#3| (|Set#Difference| |t#0@@4| (|Set#UnionOne| |Set#Empty| (|$let#0_e| M1._default.fSetToSeq$_T0@@3 (Lit SetType |t#0@@4|))))))
(|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@3 |tx#3|)))) (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@3 ($LS $ly@@2) (Lit SetType |t#0@@4|)) (ite (= (|Set#Card| (Lit SetType |t#0@@4|)) (LitInt 0)) |Seq#Empty| (let ((|e#1| (|$let#0_e| M1._default.fSetToSeq$_T0@@3 (Lit SetType |t#0@@4|))))
(let ((|tx#2| (|Set#Difference| |t#0@@4| (|Set#UnionOne| |Set#Empty| |e#1|))))
(let ((|qx#2| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@3 ($LS $ly@@2) |tx#2|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#1|) |qx#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1113|
 :pattern ( (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@3 ($LS $ly@@2) (Lit SetType |t#0@@4|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@1) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@1) t0@@1 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |635|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |636|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@1) h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (M1._default.fSetToSeq$_T0@@4 T@U) ($ly@@3 T@U) (|t#0@@5| T@U) ) (!  (=> (and (or (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@4 |t#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |t#0@@5| (TSet M1._default.fSetToSeq$_T0@@4)) ($IsAlloc SetType |t#0@@5| (TSet M1._default.fSetToSeq$_T0@@4) $Heap@@1)))) ($IsGoodHeap $Heap@@1)) ($IsAlloc SeqType (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@4 $ly@@3 |t#0@@5|) (TSeq M1._default.fSetToSeq$_T0@@4) $Heap@@1))
 :qid |gitissue867dfy.83:12|
 :skolemid |1109|
 :pattern ( ($IsAlloc SeqType (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@4 $ly@@3 |t#0@@5|) (TSeq M1._default.fSetToSeq$_T0@@4) $Heap@@1))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |563|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |564|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |569|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |570|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |587|
 :pattern ( ($Box T@@3 x@@13))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)) (|Set#Union| a@@16 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |701|
 :pattern ( (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Intersection| a@@17 (|Set#Intersection| a@@17 b@@14)) (|Set#Intersection| a@@17 b@@14))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |703|
 :pattern ( (|Set#Intersection| a@@17 (|Set#Intersection| a@@17 b@@14)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |1704|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@7 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@7 val@@4)) s@@7) (= (|Seq#Build_inv1| (|Seq#Build| s@@7 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |785|
 :pattern ( (|Seq#Build| s@@7 val@@4))
)))
(assert (forall ((bx@@2 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |594|
 :pattern ( ($IsBox bx@@2 (TSet t@@7)))
)))
(assert (forall ((bx@@3 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |597|
 :pattern ( ($IsBox bx@@3 (TSeq t@@8)))
)))
(assert (forall ((a@@18 T@U) (x@@14 T@U) ) (!  (=> (|Set#IsMember| a@@18 x@@14) (= (|Set#Card| (|Set#UnionOne| a@@18 x@@14)) (|Set#Card| a@@18)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |693|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@18 x@@14)))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s0@@2 n))) (=> (<= (|Seq#Length| s0@@2) n) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s1@@2 (- n (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |789|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |580|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |578|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |784|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |615|
 :pattern ( (|Seq#Index| v@@7 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |616|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(assert (forall ((a@@19 T@U) (x@@17 T@U) ) (!  (=> (not (|Set#IsMember| a@@19 x@@17)) (= (|Set#Card| (|Set#UnionOne| a@@19 x@@17)) (+ (|Set#Card| a@@19) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |694|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@19 x@@17)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun M1._default.fSetToSeq$_T0@@5 () T@U)
(declare-fun |t#0@@6| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |e#2@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |tx#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |qx#Z#0@0| () T@U)
(declare-fun |e#4@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |notUsed#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M1.__default.fSetToSeq)
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
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|M1.__default.setIsSeq#canCall| M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (or (M1.__default.setIsSeq M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (=> (= (|Set#Card| |t#0@@6|) (|Seq#Length| |r#0|)) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |r#0|))) (|Set#IsMember| |t#0@@6| (|Seq#Index| |r#0| |i#0@@0|)))
 :qid |gitissue867dfy.79:15|
 :skolemid |1114|
 :pattern ( (|Seq#Index| |r#0| |i#0@@0|))
)))))) (=> (=> (|M1.__default.setIsSeq#canCall| M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (or (M1.__default.setIsSeq M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (=> (= (|Set#Card| |t#0@@6|) (|Seq#Length| |r#0|)) (forall ((|i#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| (|Seq#Length| |r#0|))) (|Set#IsMember| |t#0@@6| (|Seq#Index| |r#0| |i#0@@1|)))
 :qid |gitissue867dfy.79:15|
 :skolemid |1114|
 :pattern ( (|Seq#Index| |r#0| |i#0@@1|))
))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|M1.__default.setIsSeq#canCall| M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (or (M1.__default.setIsSeq M1._default.fSetToSeq$_T0@@5 |t#0@@6| |r#0|) (=> (= (|Set#Card| |t#0@@6|) (|Seq#Length| |r#0|)) (forall ((|x#0@@0| T@U) ) (!  (=> ($IsBox |x#0@@0| M1._default.fSetToSeq$_T0@@5) (=> (|Set#IsMember| |t#0@@6| |x#0@@0|) (|Seq#Contains| |r#0| |x#0@@0|)))
 :qid |gitissue867dfy.80:15|
 :skolemid |1115|
 :pattern ( (|Seq#Contains| |r#0| |x#0@@0|))
 :pattern ( (|Set#IsMember| |t#0@@6| |x#0@@0|))
))))))))))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (exists ((|e#3| T@U) ) (!  (and ($IsBox |e#3| M1._default.fSetToSeq$_T0@@5) (|Set#IsMember| |t#0@@6| |e#3|))
 :qid |gitissue867dfy.90:11|
 :skolemid |1118|
))) (=> (exists ((|e#3@@0| T@U) ) (!  (and ($IsBox |e#3@@0| M1._default.fSetToSeq$_T0@@5) (|Set#IsMember| |t#0@@6| |e#3@@0|))
 :qid |gitissue867dfy.90:11|
 :skolemid |1118|
)) (=> (and (and (and ($IsBox |e#2@0| M1._default.fSetToSeq$_T0@@5) ($IsAllocBox |e#2@0| M1._default.fSetToSeq$_T0@@5 $Heap@@2)) (|Set#IsMember| |t#0@@6| |e#2@0|)) (and (and (= |let#1#0#0| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#2@0|))) ($Is SetType |let#1#0#0| (TSet M1._default.fSetToSeq$_T0@@5))) (and (= |tx#Z#0@0| |let#1#0#0|) ($IsAlloc SetType |tx#Z#0@0| (TSet M1._default.fSetToSeq$_T0@@5) $Heap@@2)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (and (|Set#Subset| |tx#Z#0@0| |t#0@@6|) (not (|Set#Subset| |t#0@@6| |tx#Z#0@0|)))) (=> (and (|Set#Subset| |tx#Z#0@0| |t#0@@6|) (not (|Set#Subset| |t#0@@6| |tx#Z#0@0|))) (=> (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@5 |tx#Z#0@0|) (=> (and (and (and (= |let#2#0#0| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#Z#0@0|)) (|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@5 |tx#Z#0@0|)) (and ($Is SeqType |let#2#0#0| (TSeq M1._default.fSetToSeq$_T0@@5)) (= |qx#Z#0@0| |let#2#0#0|))) (and (and ($IsBox |e#4@0| M1._default.fSetToSeq$_T0@@5) ($IsAllocBox |e#4@0| M1._default.fSetToSeq$_T0@@5 $Heap@@2)) (and (|Set#IsMember| |t#0@@6| |e#4@0|) (let ((|tx#4| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#4@0|))))
(|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@5 |tx#4|))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (|Seq#Equal| (let ((|tx#5| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#2@0|))))
(let ((|qx#5| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#5|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#2@0|) |qx#5|))) (let ((|tx#4@@0| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#4@0|))))
(let ((|qx#4| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#4@@0|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#4@0|) |qx#4|))))) (=> (|Seq#Equal| (let ((|tx#5@@0| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#2@0|))))
(let ((|qx#5@@0| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#5@@0|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#2@0|) |qx#5@@0|))) (let ((|tx#4@@1| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#4@0|))))
(let ((|qx#4@@0| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#4@@1|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#4@0|) |qx#4@@0|)))) (=> (and (|$let#0$canCall| M1._default.fSetToSeq$_T0@@5 |t#0@@6|) (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) (let ((|tx#5@@1| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#2@0|))))
(let ((|qx#5@@1| (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |tx#5@@1|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#2@0|) |qx#5@@1|))))) (=> (and (and (let ((|tx#5@@2| (|Set#Difference| |t#0@@6| (|Set#UnionOne| |Set#Empty| |e#2@0|))))
(|M1.__default.fSetToSeq#canCall| M1._default.fSetToSeq$_T0@@5 |tx#5@@2|)) ($Is SeqType (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) (TSeq M1._default.fSetToSeq$_T0@@5))) (and (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) |r#0|) (= (ControlFlow 0 6) 3))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not (and ($IsBox |e#2@0| M1._default.fSetToSeq$_T0@@5) ($IsAllocBox |e#2@0| M1._default.fSetToSeq$_T0@@5 $Heap@@2))) (= (ControlFlow 0 11) 6)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (and ($IsBox |e#2@0| M1._default.fSetToSeq$_T0@@5) ($IsAllocBox |e#2@0| M1._default.fSetToSeq$_T0@@5 $Heap@@2)) (= (ControlFlow 0 10) 6)) anon7_correct)))
(let ((anon10_Else_correct  (=> (or (not (= (|Set#Card| |t#0@@6|) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 12) 10) anon11_Then_correct) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (= (|Set#Card| |t#0@@6|) (LitInt 0)) (=> (and (and (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) (Lit SeqType |Seq#Empty|)) ($Is SeqType (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) (TSeq M1._default.fSetToSeq$_T0@@5))) (and (= (M1.__default.fSetToSeq M1._default.fSetToSeq$_T0@@5 ($LS $LZ) |t#0@@6|) |r#0|) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct))))
(let ((anon9_Else_correct  (=> (= |let#0#0#0| |t#0@@6|) (=> (and ($Is SetType |let#0#0#0| (TSet M1._default.fSetToSeq$_T0@@5)) (= |notUsed#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 13) 5) anon10_Then_correct) (=> (= (ControlFlow 0 13) 12) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (=> (= (ControlFlow 0 14) 1) anon9_Then_correct) (=> (= (ControlFlow 0 14) 13) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is SetType |t#0@@6| (TSet M1._default.fSetToSeq$_T0@@5))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
