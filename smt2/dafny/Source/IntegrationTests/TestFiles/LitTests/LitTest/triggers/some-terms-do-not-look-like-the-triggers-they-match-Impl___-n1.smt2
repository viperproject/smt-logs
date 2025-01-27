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
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
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
(assert (forall ((a@@5 T@U) (x@@5 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@5 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@5) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@5) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@6)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
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
(assert (forall ((a@@8 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@8 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@7))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((a@@9 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Intersection| a@@9 (|MultiSet#Intersection| a@@9 b@@5)) (|MultiSet#Intersection| a@@9 b@@5))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |201|
 :pattern ( (|MultiSet#Intersection| a@@9 (|MultiSet#Intersection| a@@9 b@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@10 T@U) (b@@6 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@10 b@@6) o@@1) (+ (|MultiSet#Multiplicity| a@@10 o@@1) (|MultiSet#Multiplicity| b@@6 o@@1)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@10 b@@6) o@@1))
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
 :skolemid |559|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@11 Int) (b@@7 Int) ) (! (= (<= a@@11 b@@7) (= (|Math#min| a@@11 b@@7) a@@11))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@11 b@@7))
)))
(assert (forall ((a@@12 Int) (b@@8 Int) ) (! (= (<= b@@8 a@@12) (= (|Math#min| a@@12 b@@8) b@@8))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@12 b@@8))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((a@@13 T@U) (b@@9 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@13 b@@9) o@@2) (|Math#clip| (- (|MultiSet#Multiplicity| a@@13 o@@2) (|MultiSet#Multiplicity| b@@9 o@@2))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |202|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@13 b@@9) o@@2))
)))
(assert (forall ((a@@14 Int) ) (!  (=> (< a@@14 0) (= (|Math#clip| a@@14) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@14))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((a@@15 T@U) (x@@12 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@15 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@15 x@@12) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@15 x@@12) (|MultiSet#Multiplicity| a@@15 y@@1))
)))
(assert (forall ((a@@16 T@U) (x@@13 T@U) (o@@3 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@16 x@@13) o@@3))  (or (= o@@3 x@@13) (< 0 (|MultiSet#Multiplicity| a@@16 o@@3))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@16 x@@13) o@@3))
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
(declare-fun |c1#3_0@0| () Bool)
(declare-fun |c0#3_0@0| () Bool)
(declare-fun |x#3_3@0| () Int)
(declare-fun |x#3_1@0| () Int)
(declare-fun |c1#4_0@0| () Bool)
(declare-fun |ms#4_0@0| () T@U)
(declare-fun |c0#4_0@0| () Bool)
(declare-fun |x#4_3@0| () Int)
(declare-fun |x#4_1@0| () Int)
(declare-fun |d0#0@0| () Bool)
(declare-fun |d1#0@0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |x#2_0@0| () Int)
(declare-fun |x#11@0| () Int)
(declare-fun |x#9@0| () Int)
(declare-fun |i0#0@0| () Bool)
(declare-fun |i1#0@0| () Bool)
(declare-fun |x#1_0@0| () Int)
(declare-fun |x#7@0| () Int)
(declare-fun |x#5@0| () Int)
(declare-fun |u0#0@0| () Bool)
(declare-fun |u1#0@0| () Bool)
(declare-fun |x#0_0@0| () Int)
(declare-fun |x#3@0| () Int)
(declare-fun |x#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |ms#4_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.RewriteMultiSet)
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
 (=> (= (ControlFlow 0 0) 90) (let ((anon50_correct  (=> (and (= |c1#3_0@0| (forall ((|x#3_2| Int) ) (!  (=> (or (or (= |x#3_2| (LitInt 2)) (= |x#3_2| (LitInt 3))) (= |x#3_2| (LitInt 5))) (< |x#3_2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.93:28|
 :skolemid |525|
))) (= (ControlFlow 0 47) (- 0 46))) (= |c0#3_0@0| |c1#3_0@0|))))
(let ((anon88_Else_correct  (=> (and (not (or (or (= |x#3_3@0| (LitInt 2)) (= |x#3_3@0| (LitInt 3))) (= |x#3_3@0| (LitInt 5)))) (= (ControlFlow 0 49) 47)) anon50_correct)))
(let ((anon88_Then_correct  (=> (and (or (or (= |x#3_3@0| (LitInt 2)) (= |x#3_3@0| (LitInt 3))) (= |x#3_3@0| (LitInt 5))) (= (ControlFlow 0 48) 47)) anon50_correct)))
(let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 50) 48) anon88_Then_correct) (=> (= (ControlFlow 0 50) 49) anon88_Else_correct))))
(let ((anon87_Else_correct true))
(let ((anon47_correct  (=> (= |c0#3_0@0| (forall ((|x#3_0| Int) ) (!  (=> (or (or (= |x#3_0| (LitInt 2)) (= |x#3_0| (LitInt 3))) (= |x#3_0| (LitInt 5))) (< |x#3_0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.92:28|
 :skolemid |524|
))) (and (=> (= (ControlFlow 0 51) 50) anon87_Then_correct) (=> (= (ControlFlow 0 51) 45) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (not (or (or (= |x#3_1@0| (LitInt 2)) (= |x#3_1@0| (LitInt 3))) (= |x#3_1@0| (LitInt 5)))) (= (ControlFlow 0 53) 51)) anon47_correct)))
(let ((anon86_Then_correct  (=> (and (or (or (= |x#3_1@0| (LitInt 2)) (= |x#3_1@0| (LitInt 3))) (= |x#3_1@0| (LitInt 5))) (= (ControlFlow 0 52) 51)) anon47_correct)))
(let ((anon85_Then_correct  (and (=> (= (ControlFlow 0 54) 52) anon86_Then_correct) (=> (= (ControlFlow 0 54) 53) anon86_Else_correct))))
(let ((anon85_Else_correct true))
(let ((anon84_Then_correct  (and (=> (= (ControlFlow 0 55) 54) anon85_Then_correct) (=> (= (ControlFlow 0 55) 44) anon85_Else_correct))))
(let ((anon57_correct  (=> (and (= |c1#4_0@0| (forall ((|x#4_2| Int) ) (!  (=> (> (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_2|))) 0) (< |x#4_2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.99:28|
 :skolemid |527|
 :pattern ( (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_2|))))
))) (= (ControlFlow 0 35) (- 0 34))) (= |c0#4_0@0| |c1#4_0@0|))))
(let ((anon92_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_3@0|)))) (= (ControlFlow 0 37) 35)) anon57_correct)))
(let ((anon92_Then_correct  (=> (and (> (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_3@0|))) 0) (= (ControlFlow 0 36) 35)) anon57_correct)))
(let ((anon91_Then_correct  (and (=> (= (ControlFlow 0 38) 36) anon92_Then_correct) (=> (= (ControlFlow 0 38) 37) anon92_Else_correct))))
(let ((anon91_Else_correct true))
(let ((anon54_correct  (=> (= |c0#4_0@0| (forall ((|x#4_0| Int) ) (!  (=> (> (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_0|))) 0) (< |x#4_0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.98:28|
 :skolemid |526|
 :pattern ( (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_0|))))
))) (and (=> (= (ControlFlow 0 39) 38) anon91_Then_correct) (=> (= (ControlFlow 0 39) 33) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_1@0|)))) (= (ControlFlow 0 41) 39)) anon54_correct)))
(let ((anon90_Then_correct  (=> (and (> (|MultiSet#Multiplicity| |ms#4_0@0| ($Box intType (int_2_U |x#4_1@0|))) 0) (= (ControlFlow 0 40) 39)) anon54_correct)))
(let ((anon89_Then_correct  (and (=> (= (ControlFlow 0 42) 40) anon90_Then_correct) (=> (= (ControlFlow 0 42) 41) anon90_Else_correct))))
(let ((anon89_Else_correct true))
(let ((anon84_Else_correct  (=> (= |ms#4_0@0| (Lit MultiSetType (|MultiSet#UnionOne| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))))) (and (=> (= (ControlFlow 0 43) 42) anon89_Then_correct) (=> (= (ControlFlow 0 43) 32) anon89_Else_correct)))))
(let ((anon81_Else_correct  (=> (= |d0#0@0| |d1#0@0|) (and (=> (= (ControlFlow 0 56) 55) anon84_Then_correct) (=> (= (ControlFlow 0 56) 43) anon84_Else_correct)))))
(let ((anon42_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((|x#2_1| Int) ) (! (= (> (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#2_1|))) 0)  (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2_1|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2_1|))) (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#2_1|))))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.86:19|
 :skolemid |523|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#2_1|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2_1|))))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#2_1|))))
))) (=> (forall ((|x#2_1@@0| T@U) ) (! (= (> (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType |x#2_1@@0|)) 0)  (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType |x#2_1@@0|)) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType |x#2_1@@0|)) (|MultiSet#Multiplicity| |t#0| ($Box intType |x#2_1@@0|)))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.86:19|
 :skolemid |523|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType |x#2_1@@0|)))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType |x#2_1@@0|)))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType |x#2_1@@0|)))
)) (=> (= (ControlFlow 0 27) (- 0 26)) (= |d0#0@0| |d1#0@0|))))))
(let ((anon83_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2_0@0|)))) (= (ControlFlow 0 30) 27)) anon42_correct)))
(let ((anon83_Then_correct  (=> (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2_0@0|))) 0) (= (ControlFlow 0 29) 27)) anon42_correct)))
(let ((anon82_Then_correct  (and (=> (= (ControlFlow 0 31) 29) anon83_Then_correct) (=> (= (ControlFlow 0 31) 30) anon83_Else_correct))))
(let ((anon82_Else_correct true))
(let ((anon38_correct  (=> (= |d1#0@0| (forall ((|x#10| Int) ) (!  (=> (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#10|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#10|))) (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#10|))))) (< |x#10| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.84:26|
 :skolemid |521|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#10|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#10|))))
))) (and (and (=> (= (ControlFlow 0 57) 56) anon81_Else_correct) (=> (= (ControlFlow 0 57) 31) anon82_Then_correct)) (=> (= (ControlFlow 0 57) 25) anon82_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (not (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|))) (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#11@0|)))))) (= (ControlFlow 0 59) 57)) anon38_correct)))
(let ((anon80_Then_correct  (=> (and (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|))) (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#11@0|))))) (= (ControlFlow 0 58) 57)) anon38_correct)))
(let ((anon79_Else_correct  (=> (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|)))) (and (=> (= (ControlFlow 0 61) 58) anon80_Then_correct) (=> (= (ControlFlow 0 61) 59) anon80_Else_correct)))))
(let ((anon79_Then_correct  (=> (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#11@0|))) 0) (and (=> (= (ControlFlow 0 60) 58) anon80_Then_correct) (=> (= (ControlFlow 0 60) 59) anon80_Else_correct)))))
(let ((anon78_Then_correct  (and (=> (= (ControlFlow 0 62) 60) anon79_Then_correct) (=> (= (ControlFlow 0 62) 61) anon79_Else_correct))))
(let ((anon78_Else_correct true))
(let ((anon33_correct  (=> (= |d0#0@0| (forall ((|x#8| Int) ) (!  (=> (> (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#8|))) 0) (< |x#8| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.83:26|
 :skolemid |520|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#8|))))
))) (and (=> (= (ControlFlow 0 63) 62) anon78_Then_correct) (=> (= (ControlFlow 0 63) 24) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#9@0|)))) (= (ControlFlow 0 65) 63)) anon33_correct)))
(let ((anon77_Then_correct  (=> (and (> (|MultiSet#Multiplicity| (|MultiSet#Difference| |s#0| |t#0|) ($Box intType (int_2_U |x#9@0|))) 0) (= (ControlFlow 0 64) 63)) anon33_correct)))
(let ((anon76_Then_correct  (and (=> (= (ControlFlow 0 66) 64) anon77_Then_correct) (=> (= (ControlFlow 0 66) 65) anon77_Else_correct))))
(let ((anon76_Else_correct true))
(let ((anon71_Else_correct  (=> (= |i0#0@0| |i1#0@0|) (and (=> (= (ControlFlow 0 67) 66) anon76_Then_correct) (=> (= (ControlFlow 0 67) 23) anon76_Else_correct)))))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (= |i0#0@0| (forall ((|x#1_1| Int) ) (!  (=> (and (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_1|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_1|))) 0)) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_1|))) 0)) (< |x#1_1| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.79:25|
 :skolemid |519|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_1|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_1|))))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_1|))))
)))) (=> (= |i0#0@0| (forall ((|x#1_1@@0| Int) ) (!  (=> (and (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_1@@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_1@@0|))) 0)) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_1@@0|))) 0)) (< |x#1_1@@0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.79:25|
 :skolemid |519|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_1@@0|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_1@@0|))))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_1@@0|))))
))) (=> (= (ControlFlow 0 14) (- 0 13)) (= |i0#0@0| |i1#0@0|))))))
(let ((anon75_Else_correct  (=> (and (not (and (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_0@0|))) 0)) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_0@0|))) 0))) (= (ControlFlow 0 17) 14)) anon29_correct)))
(let ((anon75_Then_correct  (=> (and (and (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_0@0|))) 0)) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#1_0@0|))) 0)) (= (ControlFlow 0 16) 14)) anon29_correct)))
(let ((anon74_Else_correct  (=> (not (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_0@0|))) 0))) (and (=> (= (ControlFlow 0 19) 16) anon75_Then_correct) (=> (= (ControlFlow 0 19) 17) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|))) 0) (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#1_0@0|))) 0)) (and (=> (= (ControlFlow 0 18) 16) anon75_Then_correct) (=> (= (ControlFlow 0 18) 17) anon75_Else_correct)))))
(let ((anon73_Else_correct  (=> (>= 0 (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|)))) (and (=> (= (ControlFlow 0 21) 18) anon74_Then_correct) (=> (= (ControlFlow 0 21) 19) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#1_0@0|))) 0) (and (=> (= (ControlFlow 0 20) 18) anon74_Then_correct) (=> (= (ControlFlow 0 20) 19) anon74_Else_correct)))))
(let ((anon72_Then_correct  (and (=> (= (ControlFlow 0 22) 20) anon73_Then_correct) (=> (= (ControlFlow 0 22) 21) anon73_Else_correct))))
(let ((anon72_Else_correct true))
(let ((anon21_correct  (=> (= |i1#0@0| (forall ((|x#6| Int) ) (!  (=> (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#6|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#6|))) 0)) (< |x#6| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.76:26|
 :skolemid |517|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#6|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#6|))))
))) (and (and (=> (= (ControlFlow 0 68) 67) anon71_Else_correct) (=> (= (ControlFlow 0 68) 22) anon72_Then_correct)) (=> (= (ControlFlow 0 68) 12) anon72_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (not (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#7@0|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#7@0|))) 0))) (= (ControlFlow 0 70) 68)) anon21_correct)))
(let ((anon70_Then_correct  (=> (and (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#7@0|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#7@0|))) 0)) (= (ControlFlow 0 69) 68)) anon21_correct)))
(let ((anon69_Else_correct  (=> (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#7@0|)))) (and (=> (= (ControlFlow 0 72) 69) anon70_Then_correct) (=> (= (ControlFlow 0 72) 70) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#7@0|))) 0) (and (=> (= (ControlFlow 0 71) 69) anon70_Then_correct) (=> (= (ControlFlow 0 71) 70) anon70_Else_correct)))))
(let ((anon68_Then_correct  (and (=> (= (ControlFlow 0 73) 71) anon69_Then_correct) (=> (= (ControlFlow 0 73) 72) anon69_Else_correct))))
(let ((anon68_Else_correct true))
(let ((anon16_correct  (=> (= |i0#0@0| (forall ((|x#4| Int) ) (!  (=> (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#4|))) 0) (< |x#4| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.75:26|
 :skolemid |516|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#4|))))
))) (and (=> (= (ControlFlow 0 74) 73) anon68_Then_correct) (=> (= (ControlFlow 0 74) 11) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#5@0|)))) (= (ControlFlow 0 76) 74)) anon16_correct)))
(let ((anon67_Then_correct  (=> (and (> (|MultiSet#Multiplicity| (|MultiSet#Intersection| |s#0| |t#0|) ($Box intType (int_2_U |x#5@0|))) 0) (= (ControlFlow 0 75) 74)) anon16_correct)))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 77) 75) anon67_Then_correct) (=> (= (ControlFlow 0 77) 76) anon67_Else_correct))))
(let ((anon66_Else_correct true))
(let ((anon63_Else_correct  (=> (= |u0#0@0| |u1#0@0|) (and (=> (= (ControlFlow 0 78) 77) anon66_Then_correct) (=> (= (ControlFlow 0 78) 10) anon66_Else_correct)))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((|x#0_1| Int) ) (! (= (> (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#0_1|))) 0)  (or (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#0_1|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#0_1|))) 0)))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.71:19|
 :skolemid |515|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#0_1|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#0_1|))))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#0_1|))))
))) (=> (forall ((|x#0_1@@0| T@U) ) (! (= (> (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType |x#0_1@@0|)) 0)  (or (> (|MultiSet#Multiplicity| |s#0| ($Box intType |x#0_1@@0|)) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType |x#0_1@@0|)) 0)))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.71:19|
 :skolemid |515|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType |x#0_1@@0|)))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType |x#0_1@@0|)))
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType |x#0_1@@0|)))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (= |u0#0@0| |u1#0@0|))))))
(let ((anon65_Else_correct  (=> (and (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#0_0@0|))) 0) (= (ControlFlow 0 8) 5)) anon12_correct)))
(let ((anon65_Then_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#0_0@0|)))) (= (ControlFlow 0 7) 5)) anon12_correct)))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon65_Then_correct) (=> (= (ControlFlow 0 9) 8) anon65_Else_correct))))
(let ((anon64_Else_correct true))
(let ((anon8_correct  (=> (= |u1#0@0| (forall ((|x#2| Int) ) (!  (=> (or (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#2|))) 0)) (< |x#2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.68:26|
 :skolemid |513|
 :pattern ( (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#2|))))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#2|))))
))) (and (and (=> (= (ControlFlow 0 79) 78) anon63_Else_correct) (=> (= (ControlFlow 0 79) 9) anon64_Then_correct)) (=> (= (ControlFlow 0 79) 3) anon64_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (or (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#3@0|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#3@0|))) 0))) (= (ControlFlow 0 81) 79)) anon8_correct)))
(let ((anon62_Then_correct  (=> (and (or (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#3@0|))) 0) (> (|MultiSet#Multiplicity| |t#0| ($Box intType (int_2_U |x#3@0|))) 0)) (= (ControlFlow 0 80) 79)) anon8_correct)))
(let ((anon61_Else_correct  (=> (> (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#3@0|))) 0) (and (=> (= (ControlFlow 0 83) 80) anon62_Then_correct) (=> (= (ControlFlow 0 83) 81) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box intType (int_2_U |x#3@0|)))) (and (=> (= (ControlFlow 0 82) 80) anon62_Then_correct) (=> (= (ControlFlow 0 82) 81) anon62_Else_correct)))))
(let ((anon60_Then_correct  (and (=> (= (ControlFlow 0 84) 82) anon61_Then_correct) (=> (= (ControlFlow 0 84) 83) anon61_Else_correct))))
(let ((anon60_Else_correct true))
(let ((anon3_correct  (=> (= |u0#0@0| (forall ((|x#0| Int) ) (!  (=> (> (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#0|))) 0) (< |x#0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.67:26|
 :skolemid |512|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#0|))))
))) (and (=> (= (ControlFlow 0 85) 84) anon60_Then_correct) (=> (= (ControlFlow 0 85) 2) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#1@0|)))) (= (ControlFlow 0 87) 85)) anon3_correct)))
(let ((anon59_Then_correct  (=> (and (> (|MultiSet#Multiplicity| (|MultiSet#Union| |s#0| |t#0|) ($Box intType (int_2_U |x#1@0|))) 0) (= (ControlFlow 0 86) 85)) anon3_correct)))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 88) 86) anon59_Then_correct) (=> (= (ControlFlow 0 88) 87) anon59_Else_correct))))
(let ((anon58_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 89) 88) anon58_Then_correct) (=> (= (ControlFlow 0 89) 1) anon58_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MultiSetType |s#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |s#0| (TMultiSet TInt) $Heap)) (and ($Is MultiSetType |t#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |t#0| (TMultiSet TInt) $Heap))) (=> (and (and (and ($Is MultiSetType |ms#4_0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms#4_0| (TMultiSet TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 90) 89))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
