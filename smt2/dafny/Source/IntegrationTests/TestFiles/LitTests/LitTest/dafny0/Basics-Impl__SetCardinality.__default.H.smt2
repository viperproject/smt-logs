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
(declare-fun TagMultiSet () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagMultiSet alloc)
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
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
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
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@3))
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
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@4 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@5 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@5 b@@4)) (+ (|MultiSet#Card| a@@5) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@5 b@@4)))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((a@@6 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Intersection| a@@6 (|MultiSet#Intersection| a@@6 b@@5)) (|MultiSet#Intersection| a@@6 b@@5))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@6 (|MultiSet#Intersection| a@@6 b@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@7 T@U) (b@@6 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@7 b@@6) o@@1) (+ (|MultiSet#Multiplicity| a@@7 o@@1) (|MultiSet#Multiplicity| b@@6 o@@1)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@7 b@@6) o@@1))
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
 :skolemid |2982|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@8 Int) (b@@7 Int) ) (! (= (<= a@@8 b@@7) (= (|Math#min| a@@8 b@@7) a@@8))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@8 b@@7))
)))
(assert (forall ((a@@9 Int) (b@@8 Int) ) (! (= (<= b@@8 a@@9) (= (|Math#min| a@@9 b@@8) b@@8))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@9 b@@8))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@9 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@10 b@@9) o@@2) (|Math#clip| (- (|MultiSet#Multiplicity| a@@10 o@@2) (|MultiSet#Multiplicity| b@@9 o@@2))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@10 b@@9) o@@2))
)))
(assert (forall ((a@@11 Int) ) (!  (=> (< a@@11 0) (= (|Math#clip| a@@11) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@11))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) ) (! (= (|MultiSet#Subset| a@@12 b@@10) (forall ((o@@3 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@12 o@@3) (|MultiSet#Multiplicity| b@@10 o@@3))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |205|
 :pattern ( (|MultiSet#Multiplicity| a@@12 o@@3))
 :pattern ( (|MultiSet#Multiplicity| b@@10 o@@3))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |206|
 :pattern ( (|MultiSet#Subset| a@@12 b@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$SetCardinality.__default.H)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon11_Then_correct  (=> (and (and (<= (|MultiSet#Card| (|MultiSet#Difference| |s#0| |s#0|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|))) (= (ControlFlow 0 11) (- 0 10))) (<= (|MultiSet#Card| (|MultiSet#Difference| |s#0| |s#0|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|)))) (<= (|MultiSet#Card| |s#0|) (|MultiSet#Card| |t#0|)))))
(let ((anon10_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (<= (|MultiSet#Card| |s#0|) (|MultiSet#Card| |t#0|)))))
(let ((anon11_Else_correct  (=> (and (=> (<= (|MultiSet#Card| (|MultiSet#Difference| |s#0| |s#0|)) (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|))) (<= (|MultiSet#Card| |s#0|) (|MultiSet#Card| |t#0|))) (= (ControlFlow 0 12) 4)) GeneratedUnifiedExit_correct)))
(let ((anon9_Then_correct  (and (and (=> (= (ControlFlow 0 13) 9) anon10_Then_correct) (=> (= (ControlFlow 0 13) 11) anon11_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (LitInt 0) (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|)))) (=> (<= (LitInt 0) (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|))) (=> (= (ControlFlow 0 7) 4) GeneratedUnifiedExit_correct)))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (+ (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|)) (|MultiSet#Card| (|MultiSet#Intersection| |t#0| |s#0|))) (|MultiSet#Card| |t#0|))) (=> (= (+ (|MultiSet#Card| (|MultiSet#Difference| |t#0| |s#0|)) (|MultiSet#Card| (|MultiSet#Intersection| |t#0| |s#0|))) (|MultiSet#Card| |t#0|)) (=> (= (ControlFlow 0 5) 4) GeneratedUnifiedExit_correct)))))
(let ((anon12_Else_correct  (=> (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (=> (= (ControlFlow 0 14) 5) anon8_Then_correct) (=> (= (ControlFlow 0 14) 13) anon9_Then_correct)) (=> (= (ControlFlow 0 14) 7) anon12_Then_correct)) (=> (= (ControlFlow 0 14) 2) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is MultiSetType |s#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |s#0| (TMultiSet TInt) $Heap))) (=> (and (and (and ($Is MultiSetType |t#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |t#0| (TMultiSet TInt) $Heap)) (= 0 $FunctionContextHeight)) (and (|MultiSet#Subset| |s#0| |t#0|) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
