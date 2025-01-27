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
(declare-fun M0.__default.fSetToSeq (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.__default.setIsSeq (T@U T@U T@U) Bool)
(declare-fun |M0.__default.setIsSeq#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M0.__default.fSetToSeq#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
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
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((M0._default.fSetToSeq$T T@U) (inner T@U) ) (!  (=> (|$let#0$canCall| M0._default.fSetToSeq$T inner) (|Set#IsMember| inner (|$let#0_e| M0._default.fSetToSeq$T inner)))
 :qid |gitissue867dfy.49:7|
 :skolemid |549|
 :pattern ( (|$let#0_e| M0._default.fSetToSeq$T inner))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert (forall ((M0._default.fSetToSeq$T@@0 T@U) ($ly T@U) (|t#0| T@U) ) (! (= (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@0 ($LS $ly) |t#0|) (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@0 $ly |t#0|))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@0 ($LS $ly) |t#0|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|Set#Card| s@@0) 0) (= s@@0 |Set#Empty|)) (=> (or (not (= (|Set#Card| s@@0) 0)) (not true)) (exists ((x@@7 T@U) ) (! (|Set#IsMember| s@@0 x@@7)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s@@0 x@@7))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((x@@8 Int) ) (! (= (LitInt x@@8) x@@8)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@8))
)))
(assert (forall ((x@@9 T@U) (T T@T) ) (! (= (Lit T x@@9) x@@9)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@9))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((s@@1 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@1 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@3) (|Set#IsMember| b@@7 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@10 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@10 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@10)) x@@10)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@10))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@4)) (not (|Set#IsMember| b@@8 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@11 o@@4))
 :pattern ( (|Set#IsMember| b@@8 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v@@0 T@U) (t0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0)))
)))
(assert (forall ((s@@2 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@2 v@@1)) (+ 1 (|Seq#Length| s@@2)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@2 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h) ($IsAlloc T@@1 v@@2 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((s@@3 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@3) i) (|Seq#Index| s@@3 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@3) i))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5)  (or (|Set#IsMember| a@@12 o@@5) (|Set#IsMember| b@@9 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@11)  (or (|Seq#Contains| s0@@1 x@@11) (|Seq#Contains| s1@@1 x@@11)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@11))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((s@@4 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@4 x@@12) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i@@0) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@4 x@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.setIsSeq$T T@U) (|t#0@@0| T@U) (|q#0| T@U) ) (!  (=> (or (|M0.__default.setIsSeq#canCall| M0._default.setIsSeq$T (Lit SetType |t#0@@0|) (Lit SeqType |q#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SetType |t#0@@0| (TSet M0._default.setIsSeq$T)) ($Is SeqType |q#0| (TSeq M0._default.setIsSeq$T))))) (= (M0.__default.setIsSeq M0._default.setIsSeq$T (Lit SetType |t#0@@0|) (Lit SeqType |q#0|))  (=> (= (|Set#Card| (Lit SetType |t#0@@0|)) (|Seq#Length| (Lit SeqType |q#0|))) (and (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |q#0|)))) (|Set#IsMember| (Lit SetType |t#0@@0|) (|Seq#Index| (Lit SeqType |q#0|) |i#1|)))
 :qid |gitissue867dfy.38:15|
 :skolemid |534|
 :pattern ( (|Seq#Index| |q#0| |i#1|))
)) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| M0._default.setIsSeq$T) (=> (|Set#IsMember| (Lit SetType |t#0@@0|) |x#1|) (|Seq#Contains| |q#0| |x#1|)))
 :qid |gitissue867dfy.39:15|
 :skolemid |535|
 :pattern ( (|Seq#Contains| |q#0| |x#1|))
 :pattern ( (|Set#IsMember| |t#0@@0| |x#1|))
))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |537|
 :pattern ( (M0.__default.setIsSeq M0._default.setIsSeq$T (Lit SetType |t#0@@0|) (Lit SeqType |q#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M0._default.fSetToSeq$T@@1 T@U) ($ly@@0 T@U) ($Heap T@U) (|t#0@@1| T@U) ) (!  (=> (or (|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@1 (Lit SetType |t#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is SetType |t#0@@1| (TSet M0._default.fSetToSeq$T@@1))))) (and (let ((|inner#2| (Lit SetType |t#0@@1|)))
 (=> (or (not (= (|Set#Card| |inner#2|) (LitInt 0))) (not true)) (and (|$let#0$canCall| M0._default.fSetToSeq$T@@1 |inner#2|) (let ((|tx#3| (|Set#Difference| |inner#2| (|Set#UnionOne| |Set#Empty| (|$let#0_e| M0._default.fSetToSeq$T@@1 |inner#2|)))))
(|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@1 |tx#3|))))) (= (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@1 ($LS $ly@@0) (Lit SetType |t#0@@1|)) (let ((|inner#2@@0| (Lit SetType |t#0@@1|)))
(ite (= (|Set#Card| |inner#2@@0|) (LitInt 0)) |Seq#Empty| (let ((|e#1| (|$let#0_e| M0._default.fSetToSeq$T@@1 |inner#2@@0|)))
(let ((|tx#2| (|Set#Difference| |inner#2@@0| (|Set#UnionOne| |Set#Empty| |e#1|))))
(let ((|qx#2| (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@1 ($LS $ly@@0) |tx#2|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#1|) |qx#2|)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |551|
 :pattern ( (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@1 ($LS $ly@@0) (Lit SetType |t#0@@1|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Set#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (|Seq#Equal| a@@15 b@@12) (= a@@15 b@@12))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@15 b@@12))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M0._default.fSetToSeq$T@@2 T@U) ($ly@@1 T@U) (|t#0@@2| T@U) ) (!  (=> (or (|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@2 |t#0@@2|) (and (< 1 $FunctionContextHeight) ($Is SetType |t#0@@2| (TSet M0._default.fSetToSeq$T@@2)))) (and (M0.__default.setIsSeq M0._default.fSetToSeq$T@@2 |t#0@@2| (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@2 $ly@@1 |t#0@@2|)) ($Is SeqType (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@2 $ly@@1 |t#0@@2|) (TSeq M0._default.fSetToSeq$T@@2))))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@2 $ly@@1 |t#0@@2|))
))))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@16 b@@13)) (|Set#Card| (|Set#Difference| b@@13 a@@16))) (|Set#Card| (|Set#Intersection| a@@16 b@@13))) (|Set#Card| (|Set#Union| a@@16 b@@13))) (= (|Set#Card| (|Set#Difference| a@@16 b@@13)) (- (|Set#Card| a@@16) (|Set#Card| (|Set#Intersection| a@@16 b@@13)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@16 b@@13)))
)))
(assert (forall ((v@@4 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@1) ($Is T@@2 v@@4 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.setIsSeq$T@@0 T@U) (|t#0@@3| T@U) (|q#0@@0| T@U) ) (!  (=> (or (|M0.__default.setIsSeq#canCall| M0._default.setIsSeq$T@@0 |t#0@@3| |q#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |t#0@@3| (TSet M0._default.setIsSeq$T@@0)) ($Is SeqType |q#0@@0| (TSeq M0._default.setIsSeq$T@@0))))) (= (M0.__default.setIsSeq M0._default.setIsSeq$T@@0 |t#0@@3| |q#0@@0|)  (=> (= (|Set#Card| |t#0@@3|) (|Seq#Length| |q#0@@0|)) (and (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |q#0@@0|))) (|Set#IsMember| |t#0@@3| (|Seq#Index| |q#0@@0| |i#0|)))
 :qid |gitissue867dfy.38:15|
 :skolemid |530|
 :pattern ( (|Seq#Index| |q#0@@0| |i#0|))
)) (forall ((|x#0| T@U) ) (!  (=> ($IsBox |x#0| M0._default.setIsSeq$T@@0) (=> (|Set#IsMember| |t#0@@3| |x#0|) (|Seq#Contains| |q#0@@0| |x#0|)))
 :qid |gitissue867dfy.39:15|
 :skolemid |531|
 :pattern ( (|Seq#Contains| |q#0@@0| |x#0|))
 :pattern ( (|Set#IsMember| |t#0@@3| |x#0|))
))))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (M0.__default.setIsSeq M0._default.setIsSeq$T@@0 |t#0@@3| |q#0@@0|))
))))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Set#Card| s@@5))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@5))
)))
(assert (forall ((s@@6 T@U) ) (! (<= 0 (|Seq#Length| s@@6))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@1) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@1) t0@@1 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@1) h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (M0._default.fSetToSeq$T@@3 T@U) ($ly@@2 T@U) (|t#0@@4| T@U) ) (!  (=> (and (or (|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@3 |t#0@@4|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |t#0@@4| (TSet M0._default.fSetToSeq$T@@3)) ($IsAlloc SetType |t#0@@4| (TSet M0._default.fSetToSeq$T@@3) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SeqType (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@3 $ly@@2 |t#0@@4|) (TSeq M0._default.fSetToSeq$T@@3) $Heap@@0))
 :qid |gitissue867dfy.42:12|
 :skolemid |547|
 :pattern ( ($IsAlloc SeqType (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@3 $ly@@2 |t#0@@4|) (TSeq M0._default.fSetToSeq$T@@3) $Heap@@0))
))))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSet (TSet t@@2)) t@@2)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSet t@@3)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@13))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)) (|Set#Intersection| a@@18 b@@15))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)))
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
 :skolemid |1703|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@7 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@7 val@@4)) s@@7) (= (|Seq#Build_inv1| (|Seq#Build| s@@7 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@7 val@@4))
)))
(assert (forall ((bx@@2 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@6)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@6))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@6)))
)))
(assert (forall ((bx@@3 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@7)))
)))
(assert (forall ((a@@19 T@U) (x@@14 T@U) ) (!  (=> (|Set#IsMember| a@@19 x@@14) (= (|Set#Card| (|Set#UnionOne| a@@19 x@@14)) (|Set#Card| a@@19)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@19 x@@14)))
)))
(assert (forall ((a@@20 T@U) (b@@16 T@U) ) (! (= (|Set#Equal| a@@20 b@@16) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@20 o@@6) (|Set#IsMember| b@@16 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@20 o@@6))
 :pattern ( (|Set#IsMember| b@@16 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@20 b@@16))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s0@@2 n))) (=> (<= (|Seq#Length| s0@@2) n) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s1@@2 (- n (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M0._default.fSetToSeq$T@@4 T@U) ($ly@@3 T@U) ($Heap@@1 T@U) (|t#0@@5| T@U) ) (!  (=> (or (|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@4 |t#0@@5|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is SetType |t#0@@5| (TSet M0._default.fSetToSeq$T@@4))))) (and (let ((|inner#0| |t#0@@5|))
 (=> (or (not (= (|Set#Card| |inner#0|) (LitInt 0))) (not true)) (and (|$let#0$canCall| M0._default.fSetToSeq$T@@4 |inner#0|) (let ((|tx#1| (|Set#Difference| |inner#0| (|Set#UnionOne| |Set#Empty| (|$let#0_e| M0._default.fSetToSeq$T@@4 |inner#0|)))))
(|M0.__default.fSetToSeq#canCall| M0._default.fSetToSeq$T@@4 |tx#1|))))) (= (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@4 ($LS $ly@@3) |t#0@@5|) (let ((|inner#0@@0| |t#0@@5|))
(ite (= (|Set#Card| |inner#0@@0|) (LitInt 0)) |Seq#Empty| (let ((|e#0| (|$let#0_e| M0._default.fSetToSeq$T@@4 |inner#0@@0|)))
(let ((|tx#0| (|Set#Difference| |inner#0@@0| (|Set#UnionOne| |Set#Empty| |e#0|))))
(let ((|qx#0| (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@4 $ly@@3 |tx#0|)))
(|Seq#Append| (|Seq#Build| |Seq#Empty| |e#0|) |qx#0|)))))))))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (M0.__default.fSetToSeq M0._default.fSetToSeq$T@@4 ($LS $ly@@3) |t#0@@5|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(assert (forall ((a@@21 T@U) (x@@17 T@U) ) (!  (=> (not (|Set#IsMember| a@@21 x@@17)) (= (|Set#Card| (|Set#UnionOne| a@@21 x@@17)) (+ (|Set#Card| a@@21) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@21 x@@17)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M0._default.whatIsSeq$T () T@U)
(declare-fun $LZ () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |s2#0| () T@U)
(set-info :boogie-vc-id Impl$$M0.__default.whatIsSeq)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@2 $Heap@0)) (and (and (forall ((|$ih#s10#0| T@U) (|$ih#s20#0| T@U) ) (!  (=> (and (and (and ($Is SetType |$ih#s10#0| (TSet M0._default.whatIsSeq$T)) ($Is SetType |$ih#s20#0| (TSet M0._default.whatIsSeq$T))) (U_2_bool (Lit boolType (bool_2_U true)))) (or (and (|Set#Subset| |$ih#s10#0| |s1#0|) (not (|Set#Subset| |s1#0| |$ih#s10#0|))) (and (|Set#Equal| |$ih#s10#0| |s1#0|) (and (|Set#Subset| |$ih#s20#0| |s2#0|) (not (|Set#Subset| |s2#0| |$ih#s20#0|)))))) (=> (|Set#Equal| |$ih#s10#0| |$ih#s20#0|) (|Seq#Equal| (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS $LZ) |$ih#s10#0|) (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS $LZ) |$ih#s20#0|))))
 :qid |gitissue867dfy.55:22|
 :skolemid |558|
 :pattern ( (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS $LZ) |$ih#s20#0|) (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS $LZ) |$ih#s10#0|))
)) (= (ControlFlow 0 2) (- 0 1))) (|Set#Equal| |s1#0| |s2#0|))) (|Seq#Equal| (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS ($LS $LZ)) |s1#0|) (M0.__default.fSetToSeq M0._default.whatIsSeq$T ($LS ($LS $LZ)) |s2#0|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and ($Is SetType |s1#0| (TSet M0._default.whatIsSeq$T)) ($IsAlloc SetType |s1#0| (TSet M0._default.whatIsSeq$T) $Heap@@2))) (and (and ($Is SetType |s2#0| (TSet M0._default.whatIsSeq$T)) ($IsAlloc SetType |s2#0| (TSet M0._default.whatIsSeq$T) $Heap@@2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct)))
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
