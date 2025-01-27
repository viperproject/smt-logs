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
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(assert (distinct TagMultiSet alloc)
)
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
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@4 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |199|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((a@@5 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Disjoint| a@@5 b@@4) (forall ((o@@0 T@U) ) (!  (or (= (|MultiSet#Multiplicity| a@@5 o@@0) 0) (= (|MultiSet#Multiplicity| b@@4 o@@0) 0))
 :qid |DafnyPreludebpl.1063:19|
 :skolemid |210|
 :pattern ( (|MultiSet#Multiplicity| a@@5 o@@0))
 :pattern ( (|MultiSet#Multiplicity| b@@4 o@@0))
)))
 :qid |DafnyPreludebpl.1060:15|
 :skolemid |211|
 :pattern ( (|MultiSet#Disjoint| a@@5 b@@4))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((a@@6 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@6 b@@5)) (+ (|MultiSet#Card| a@@6) (|MultiSet#Card| b@@5)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@6 b@@5)))
)))
(assert (forall ((a@@7 T@U) (b@@6 T@U) ) (!  (=> (|MultiSet#Equal| a@@7 b@@6) (= a@@7 b@@6))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@7 b@@6))
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
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@2) t@@0) ($Is T@@1 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@2) t@@0))
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
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
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
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((a@@8 T@U) (b@@7 T@U) ) (! (= (|MultiSet#Intersection| a@@8 (|MultiSet#Intersection| a@@8 b@@7)) (|MultiSet#Intersection| a@@8 b@@7))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@8 (|MultiSet#Intersection| a@@8 b@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@4 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@4))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@4))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@9 T@U) (b@@8 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@9 b@@8) o@@2) (+ (|MultiSet#Multiplicity| a@@9 o@@2) (|MultiSet#Multiplicity| b@@8 o@@2)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@9 b@@8) o@@2))
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
 :skolemid |545|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@10 Int) (b@@9 Int) ) (! (= (<= a@@10 b@@9) (= (|Math#min| a@@10 b@@9) a@@10))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@10 b@@9))
)))
(assert (forall ((a@@11 Int) (b@@10 Int) ) (! (= (<= b@@10 a@@11) (= (|Math#min| a@@11 b@@10) b@@10))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@11 b@@10))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@1)) bx@@1) ($Is MultiSetType ($Unbox MultiSetType bx@@1) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@1 (TMultiSet t@@3)))
)))
(assert (forall ((a@@12 T@U) (b@@11 T@U) (o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@12 b@@11) o@@3) (|Math#clip| (- (|MultiSet#Multiplicity| a@@12 o@@3) (|MultiSet#Multiplicity| b@@11 o@@3))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@12 b@@11) o@@3))
)))
(assert (forall ((a@@13 Int) ) (!  (=> (< a@@13 0) (= (|Math#clip| a@@13) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@13))
)))
(assert (forall ((a@@14 T@U) (b@@12 T@U) ) (! (= (|MultiSet#Equal| a@@14 b@@12) (forall ((o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| a@@14 o@@4) (|MultiSet#Multiplicity| b@@12 o@@4))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@14 o@@4))
 :pattern ( (|MultiSet#Multiplicity| b@@12 o@@4))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@14 b@@12))
)))
(assert (forall ((a@@15 T@U) (b@@13 T@U) ) (! (= (|MultiSet#Subset| a@@15 b@@13) (forall ((o@@5 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@15 o@@5) (|MultiSet#Multiplicity| b@@13 o@@5))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |205|
 :pattern ( (|MultiSet#Multiplicity| a@@15 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@13 o@@5))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |206|
 :pattern ( (|MultiSet#Subset| a@@15 b@@13))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@2)) ($IsAllocBox bx@@2 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.Multisets$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#18@0| () T@U)
(declare-fun |t#2@0| () T@U)
(declare-fun |a#16@0| () T@U)
(declare-fun |b#16@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |a#14@0| () T@U)
(declare-fun |b#14@0| () T@U)
(declare-fun |a#12@0| () T@U)
(declare-fun |b#12@0| () T@U)
(declare-fun |a#10@0| () T@U)
(declare-fun |b#10@0| () T@U)
(declare-fun |a#8@0| () T@U)
(declare-fun |b#8@0| () T@U)
(declare-fun |a#6@0| () T@U)
(declare-fun |b#6@0| () T@U)
(declare-fun |a#4@0| () T@U)
(declare-fun |b#4@0| () T@U)
(declare-fun |a#2@0| () T@U)
(declare-fun |b#2@0| () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Multisets)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon20_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|a#19| T@U) (|t#3| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#19| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#19| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($IsBox |t#3| _module._default.Multisets$T) ($IsAllocBox |t#3| _module._default.Multisets$T $Heap))) (> (|MultiSet#Multiplicity| |a#19| |t#3|) 0))
 :qid |gitissue1207dfy.43:17|
 :skolemid |534|
 :pattern ( (|MultiSet#Multiplicity| |a#19| |t#3|))
)))))
(let ((anon30_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#18@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#18@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($IsBox |t#2@0| _module._default.Multisets$T) ($IsAllocBox |t#2@0| _module._default.Multisets$T $Heap)))) (= (ControlFlow 0 4) 2)) anon20_correct)))
(let ((anon30_Then_correct  (=> (and (and (and ($Is MultiSetType |a#18@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#18@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($IsBox |t#2@0| _module._default.Multisets$T) ($IsAllocBox |t#2@0| _module._default.Multisets$T $Heap))) (= (ControlFlow 0 3) 2)) anon20_correct)))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((|a#17| T@U) (|b#17| T@U) (|t#1| T@U) ) (!  (=> (and (and (and ($Is MultiSetType |a#17| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#17| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#17| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#17| (TMultiSet _module._default.Multisets$T) $Heap))) (and ($IsBox |t#1| _module._default.Multisets$T) ($IsAllocBox |t#1| _module._default.Multisets$T $Heap))) (= (|MultiSet#Multiplicity| |a#17| |t#1|) (|MultiSet#Multiplicity| |b#17| |t#1|)))
 :qid |gitissue1207dfy.42:17|
 :skolemid |532|
 :pattern ( (|MultiSet#Multiplicity| |b#17| |t#1|) (|MultiSet#Multiplicity| |a#17| |t#1|))
))) (=> (forall ((|a#17@@0| T@U) (|b#17@@0| T@U) (|t#1@@0| T@U) ) (!  (=> (and (and (and ($Is MultiSetType |a#17@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#17@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#17@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#17@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (and ($IsBox |t#1@@0| _module._default.Multisets$T) ($IsAllocBox |t#1@@0| _module._default.Multisets$T $Heap))) (= (|MultiSet#Multiplicity| |a#17@@0| |t#1@@0|) (|MultiSet#Multiplicity| |b#17@@0| |t#1@@0|)))
 :qid |gitissue1207dfy.42:17|
 :skolemid |532|
 :pattern ( (|MultiSet#Multiplicity| |b#17@@0| |t#1@@0|) (|MultiSet#Multiplicity| |a#17@@0| |t#1@@0|))
)) (and (=> (= (ControlFlow 0 5) 3) anon30_Then_correct) (=> (= (ControlFlow 0 5) 4) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (not (and (and (and ($Is MultiSetType |a#16@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#16@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#16@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#16@0| (TMultiSet _module._default.Multisets$T) $Heap))) (and ($IsBox |t#0@0| _module._default.Multisets$T) ($IsAllocBox |t#0@0| _module._default.Multisets$T $Heap)))) (= (ControlFlow 0 8) 5)) anon18_correct)))
(let ((anon29_Then_correct  (=> (and (and (and (and ($Is MultiSetType |a#16@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#16@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#16@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#16@0| (TMultiSet _module._default.Multisets$T) $Heap))) (and ($IsBox |t#0@0| _module._default.Multisets$T) ($IsAllocBox |t#0@0| _module._default.Multisets$T $Heap))) (= (ControlFlow 0 7) 5)) anon18_correct)))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((|a#15| T@U) (|b#15| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#15| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#15| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#15| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#15| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Disjoint| |a#15| |b#15|))
 :qid |gitissue1207dfy.41:17|
 :skolemid |530|
))) (=> (forall ((|a#15@@0| T@U) (|b#15@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#15@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#15@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#15@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#15@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Disjoint| |a#15@@0| |b#15@@0|))
 :qid |gitissue1207dfy.41:17|
 :skolemid |530|
)) (and (=> (= (ControlFlow 0 9) 7) anon29_Then_correct) (=> (= (ControlFlow 0 9) 8) anon29_Else_correct))))))
(let ((anon28_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#14@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#14@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#14@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#14@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 12) 9)) anon16_correct)))
(let ((anon28_Then_correct  (=> (and (and (and ($Is MultiSetType |a#14@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#14@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#14@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#14@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 11) 9)) anon16_correct)))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((|a#13| T@U) (|b#13| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#13| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#13| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#13| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#13| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Intersection| |a#13| |b#13|) |b#13|))
 :qid |gitissue1207dfy.40:17|
 :skolemid |528|
 :pattern ( (|MultiSet#Intersection| |a#13| |b#13|))
))) (=> (forall ((|a#13@@0| T@U) (|b#13@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#13@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#13@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#13@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#13@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Intersection| |a#13@@0| |b#13@@0|) |b#13@@0|))
 :qid |gitissue1207dfy.40:17|
 :skolemid |528|
 :pattern ( (|MultiSet#Intersection| |a#13@@0| |b#13@@0|))
)) (and (=> (= (ControlFlow 0 13) 11) anon28_Then_correct) (=> (= (ControlFlow 0 13) 12) anon28_Else_correct))))))
(let ((anon27_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#12@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#12@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#12@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#12@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 16) 13)) anon14_correct)))
(let ((anon27_Then_correct  (=> (and (and (and ($Is MultiSetType |a#12@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#12@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#12@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#12@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 15) 13)) anon14_correct)))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((|a#11| T@U) (|b#11| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#11| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#11| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#11| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#11| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Difference| |a#11| |b#11|) |b#11|))
 :qid |gitissue1207dfy.39:17|
 :skolemid |526|
 :pattern ( (|MultiSet#Difference| |a#11| |b#11|))
))) (=> (forall ((|a#11@@0| T@U) (|b#11@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#11@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#11@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#11@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#11@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Difference| |a#11@@0| |b#11@@0|) |b#11@@0|))
 :qid |gitissue1207dfy.39:17|
 :skolemid |526|
 :pattern ( (|MultiSet#Difference| |a#11@@0| |b#11@@0|))
)) (and (=> (= (ControlFlow 0 17) 15) anon27_Then_correct) (=> (= (ControlFlow 0 17) 16) anon27_Else_correct))))))
(let ((anon26_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#10@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#10@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#10@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#10@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 20) 17)) anon12_correct)))
(let ((anon26_Then_correct  (=> (and (and (and ($Is MultiSetType |a#10@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#10@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#10@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#10@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 19) 17)) anon12_correct)))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((|a#9| T@U) (|b#9| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#9| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#9| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#9| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#9| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Union| |a#9| |b#9|) |b#9|))
 :qid |gitissue1207dfy.38:17|
 :skolemid |524|
 :pattern ( (|MultiSet#Union| |a#9| |b#9|))
))) (=> (forall ((|a#9@@0| T@U) (|b#9@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#9@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#9@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#9@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#9@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Equal| (|MultiSet#Union| |a#9@@0| |b#9@@0|) |b#9@@0|))
 :qid |gitissue1207dfy.38:17|
 :skolemid |524|
 :pattern ( (|MultiSet#Union| |a#9@@0| |b#9@@0|))
)) (and (=> (= (ControlFlow 0 21) 19) anon26_Then_correct) (=> (= (ControlFlow 0 21) 20) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#8@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#8@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#8@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#8@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 24) 21)) anon10_correct)))
(let ((anon25_Then_correct  (=> (and (and (and ($Is MultiSetType |a#8@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#8@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#8@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#8@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 23) 21)) anon10_correct)))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((|a#7| T@U) (|b#7| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#7| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#7| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#7| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#7| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Subset| |b#7| |a#7|))
 :qid |gitissue1207dfy.37:17|
 :skolemid |522|
 :pattern ( (|MultiSet#Subset| |b#7| |a#7|))
))) (=> (forall ((|a#7@@0| T@U) (|b#7@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#7@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#7@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#7@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#7@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Subset| |b#7@@0| |a#7@@0|))
 :qid |gitissue1207dfy.37:17|
 :skolemid |522|
 :pattern ( (|MultiSet#Subset| |b#7@@0| |a#7@@0|))
)) (and (=> (= (ControlFlow 0 25) 23) anon25_Then_correct) (=> (= (ControlFlow 0 25) 24) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#6@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#6@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#6@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#6@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 28) 25)) anon8_correct)))
(let ((anon24_Then_correct  (=> (and (and (and ($Is MultiSetType |a#6@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#6@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#6@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#6@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 27) 25)) anon8_correct)))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((|a#5| T@U) (|b#5| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#5| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#5| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#5| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#5| (TMultiSet _module._default.Multisets$T) $Heap))) (and (|MultiSet#Subset| |b#5| |a#5|) (not (|MultiSet#Equal| |b#5| |a#5|))))
 :qid |gitissue1207dfy.36:17|
 :skolemid |520|
 :pattern ( (|MultiSet#Subset| |b#5| |a#5|))
))) (=> (forall ((|a#5@@0| T@U) (|b#5@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#5@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#5@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#5@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#5@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (and (|MultiSet#Subset| |b#5@@0| |a#5@@0|) (not (|MultiSet#Equal| |b#5@@0| |a#5@@0|))))
 :qid |gitissue1207dfy.36:17|
 :skolemid |520|
 :pattern ( (|MultiSet#Subset| |b#5@@0| |a#5@@0|))
)) (and (=> (= (ControlFlow 0 29) 27) anon24_Then_correct) (=> (= (ControlFlow 0 29) 28) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#4@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#4@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#4@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#4@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 32) 29)) anon6_correct)))
(let ((anon23_Then_correct  (=> (and (and (and ($Is MultiSetType |a#4@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#4@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#4@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#4@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 31) 29)) anon6_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (forall ((|a#3| T@U) (|b#3| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#3| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#3| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#3| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#3| (TMultiSet _module._default.Multisets$T) $Heap))) (and (|MultiSet#Subset| |a#3| |b#3|) (not (|MultiSet#Equal| |a#3| |b#3|))))
 :qid |gitissue1207dfy.35:17|
 :skolemid |518|
 :pattern ( (|MultiSet#Subset| |a#3| |b#3|))
))) (=> (forall ((|a#3@@0| T@U) (|b#3@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#3@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#3@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#3@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#3@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (and (|MultiSet#Subset| |a#3@@0| |b#3@@0|) (not (|MultiSet#Equal| |a#3@@0| |b#3@@0|))))
 :qid |gitissue1207dfy.35:17|
 :skolemid |518|
 :pattern ( (|MultiSet#Subset| |a#3@@0| |b#3@@0|))
)) (and (=> (= (ControlFlow 0 33) 31) anon23_Then_correct) (=> (= (ControlFlow 0 33) 32) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#2@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#2@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#2@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#2@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 36) 33)) anon4_correct)))
(let ((anon22_Then_correct  (=> (and (and (and ($Is MultiSetType |a#2@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#2@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#2@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#2@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 35) 33)) anon4_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (forall ((|a#1| T@U) (|b#1| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#1| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#1| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#1| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#1| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Subset| |a#1| |b#1|))
 :qid |gitissue1207dfy.34:17|
 :skolemid |516|
 :pattern ( (|MultiSet#Subset| |a#1| |b#1|))
))) (=> (forall ((|a#1@@0| T@U) (|b#1@@0| T@U) ) (!  (=> (and (and ($Is MultiSetType |a#1@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#1@@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#1@@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#1@@0| (TMultiSet _module._default.Multisets$T) $Heap))) (|MultiSet#Subset| |a#1@@0| |b#1@@0|))
 :qid |gitissue1207dfy.34:17|
 :skolemid |516|
 :pattern ( (|MultiSet#Subset| |a#1@@0| |b#1@@0|))
)) (and (=> (= (ControlFlow 0 37) 35) anon22_Then_correct) (=> (= (ControlFlow 0 37) 36) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not (and (and ($Is MultiSetType |a#0@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#0@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#0@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#0@0| (TMultiSet _module._default.Multisets$T) $Heap)))) (= (ControlFlow 0 40) 37)) anon2_correct)))
(let ((anon21_Then_correct  (=> (and (and (and ($Is MultiSetType |a#0@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |a#0@0| (TMultiSet _module._default.Multisets$T) $Heap)) (and ($Is MultiSetType |b#0@0| (TMultiSet _module._default.Multisets$T)) ($IsAlloc MultiSetType |b#0@0| (TMultiSet _module._default.Multisets$T) $Heap))) (= (ControlFlow 0 39) 37)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 41) 39) anon21_Then_correct) (=> (= (ControlFlow 0 41) 40) anon21_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 42) 41))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 37) (- 38))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 33) (- 34))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 21) (- 22))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 18))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
