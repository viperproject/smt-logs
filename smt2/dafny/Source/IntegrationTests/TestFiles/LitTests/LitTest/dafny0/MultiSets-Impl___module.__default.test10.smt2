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
(declare-fun Tag (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |204|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s))
)))
(assert (forall ((s@@0 T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s@@0))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v) n) (|Seq#Index| s@@0 n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v) n))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |203|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |200|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@0 T@U) (x@@2 T@U) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@1))) (= (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2) (|MultiSet#Multiplicity| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@1) (|MultiSet#Singleton| (|Seq#Index| s@@1 i@@0))) (|MultiSet#Singleton| v@@0)) x@@2)))
 :qid |DafnyPreludebpl.1098:15|
 :skolemid |218|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| (|Seq#Update| s@@1 i@@0 v@@0)) x@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@3))
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
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@4 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((a@@5 T@U) (x@@6 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@6 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@6) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@6) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@7)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h) ($IsAlloc T@@1 v@@1 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((s@@2 T@U) (x@@8 T@U) ) (! (= (exists ((i@@1 Int) ) (!  (and (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (= x@@8 (|Seq#Index| s@@2 i@@1)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@2 i@@1))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@2) x@@8)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@2) x@@8))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@8 b@@5))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@0 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@0)) (<= (|MultiSet#Multiplicity| ms bx@@0) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@0))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|MultiSet#Card| s@@3))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (forall ((a@@9 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@9) x@@9) (+ (|MultiSet#Multiplicity| a@@9 x@@9) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@9 x@@9))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@2) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
)))
(assert (forall ((a@@10 T@U) (b@@6 T@U) ) (! (= (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@6)) (|MultiSet#Intersection| a@@10 b@@6))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@6)))
)))
(assert (forall ((s@@5 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@5) 0) (= s@@5 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@5) 0)) (not true)) (exists ((x@@11 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@5 x@@11))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@5 x@@11))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@5))
)))
(assert (forall ((r T@U) (o@@1 T@U) ) (!  (and (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@1) 1) (= r o@@1)) (= (= (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@1) 0)  (or (not (= r o@@1)) (not true))))
 :qid |DafnyPreludebpl.952:15|
 :skolemid |190|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Singleton| r) o@@1))
)))
(assert (forall ((a@@11 T@U) (b@@7 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@7) o@@2) (+ (|MultiSet#Multiplicity| a@@11 o@@2) (|MultiSet#Multiplicity| b@@7 o@@2)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@7) o@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |656|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@6 T@U) (i@@3 Int) (v@@4 T@U) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Update| s@@6 i@@3 v@@4)) (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@6 i@@3 v@@4)))
)))
(assert (forall ((r@@0 T@U) ) (! (= (|MultiSet#Singleton| r@@0) (|MultiSet#UnionOne| |MultiSet#Empty| r@@0))
 :qid |DafnyPreludebpl.957:15|
 :skolemid |191|
 :pattern ( (|MultiSet#Singleton| r@@0))
)))
(assert (forall ((s@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@7)) (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@7)))
)))
(assert (forall ((a@@12 Int) (b@@8 Int) ) (! (= (<= a@@12 b@@8) (= (|Math#min| a@@12 b@@8) a@@12))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@12 b@@8))
)))
(assert (forall ((a@@13 Int) (b@@9 Int) ) (! (= (<= b@@9 a@@13) (= (|Math#min| a@@13 b@@9) b@@9))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@13 b@@9))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@3)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((a@@14 T@U) (b@@10 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@14 b@@10) o@@3) (|Math#clip| (- (|MultiSet#Multiplicity| a@@14 o@@3) (|MultiSet#Multiplicity| b@@10 o@@3))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@14 b@@10) o@@3))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (< a@@15 0) (= (|Math#clip| a@@15) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@15))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((a@@16 T@U) (x@@14 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@16 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@16 x@@14) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@16 x@@14) (|MultiSet#Multiplicity| a@@16 y@@1))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((a@@17 T@U) (x@@15 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@15) o@@4))  (or (= o@@4 x@@15) (< 0 (|MultiSet#Multiplicity| a@@17 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@15) o@@4))
)))
(assert (forall ((a@@18 T@U) (b@@11 T@U) ) (! (= (|MultiSet#Equal| a@@18 b@@11) (forall ((o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| a@@18 o@@5) (|MultiSet#Multiplicity| b@@11 o@@5))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@18 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@11 o@@5))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@18 b@@11))
)))
(assert (forall ((h@@1 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@1))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@4) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.test10)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Update| |s#0| (LitInt 3) ($Box intType (int_2_U (LitInt 2))))) (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| |s#0|) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 2))))))) (=> (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Update| |s#0| (LitInt 3) ($Box intType (int_2_U (LitInt 2))))) (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| |s#0|) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| (|Seq#Update| |s#0| (LitInt 2) ($Box intType (int_2_U (LitInt 1)))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Update| (|Seq#Update| |s#0| (LitInt 2) ($Box intType (int_2_U (LitInt 1)))) (LitInt 3) ($Box intType (int_2_U (LitInt 2))))) (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| |s#0|) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 2)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 2))))))) (=> (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Update| (|Seq#Update| |s#0| (LitInt 2) ($Box intType (int_2_U (LitInt 1)))) (LitInt 3) ($Box intType (int_2_U (LitInt 2))))) (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| |s#0|) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 2)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 2)))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| (|Seq#Update| |s#0| (LitInt 2) (|Seq#Index| |s#0| (LitInt 3))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Update| (|Seq#Update| |s#0| (LitInt 2) (|Seq#Index| |s#0| (LitInt 3))) (LitInt 3) (|Seq#Index| |s#0| (LitInt 2)))) (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| |s#0|) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 2)))) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 3)))) (|MultiSet#UnionOne| |MultiSet#Empty| (|Seq#Index| |s#0| (LitInt 2)))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap)) (= 0 $FunctionContextHeight)) (and (> (|Seq#Length| |s#0|) 4) (= (ControlFlow 0 19) 2))) anon0_correct))))
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
