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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M3.MyChar () T@U)
(declare-fun tytagFamily$MyChar () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass.M3.MyChar () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(assert (distinct TChar TagChar TagMultiSet alloc Tagclass.M3.MyChar tytagFamily$MyChar)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor charType) 3))
(assert (forall ((|ch#0| T@U) ($h T@U) ) (! ($IsAlloc charType |ch#0| Tclass.M3.MyChar $h)
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($IsAlloc charType |ch#0| Tclass.M3.MyChar $h))
)))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |1568|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1531|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1542|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a T@U) (x@@4 T@U) (y T@U) ) (!  (=> (or (not (= x@@4 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@4) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |1711|
 :pattern ( (|MultiSet#UnionOne| a x@@4) (|MultiSet#Multiplicity| a y))
)))
(assert (forall ((a@@0 T@U) (x@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@5)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |1712|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1555|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@1 b)) (+ (|MultiSet#Card| a@@1) (|MultiSet#Card| b)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |1714|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@1 b)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.M3.MyChar) (and (= ($Box charType ($Unbox charType bx)) bx) ($Is charType ($Unbox charType bx) Tclass.M3.MyChar)))
 :qid |unknown.0:0|
 :skolemid |2003|
 :pattern ( ($IsBox bx Tclass.M3.MyChar))
)))
(assert (forall ((|ch#0@@0| T@U) ) (! (= ($Is charType |ch#0@@0| Tclass.M3.MyChar) (= |ch#0@@0| (Lit charType (|char#FromInt| 68))))
 :qid |unknown.0:0|
 :skolemid |2035|
 :pattern ( ($Is charType |ch#0@@0| Tclass.M3.MyChar))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx@@0)) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |1566|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |1567|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1546|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1554|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |1699|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |1700|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |1701|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |1703|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((a@@2 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@6) x@@6) (+ (|MultiSet#Multiplicity| a@@2 x@@6) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |1709|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@6))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |1521|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |1522|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1541|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@8 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@8))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |1704|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@8))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |1705|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0) (+ (|MultiSet#Multiplicity| a@@3 o@@0) (|MultiSet#Multiplicity| b@@0 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |1713|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1537|
 :pattern ( (|char#FromInt| n))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |2596|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@3)) bx@@3) ($Is MultiSetType ($Unbox MultiSetType bx@@3) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |1550|
 :pattern ( ($IsBox bx@@3 (TMultiSet t@@3)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1538|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass.M3.MyChar) Tagclass.M3.MyChar))
(assert (= (TagFamily Tclass.M3.MyChar) tytagFamily$MyChar))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1532|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((a@@4 T@U) (x@@10 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@4 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@10) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |1710|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@10) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((a@@5 T@U) (x@@11 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@11) o@@1))  (or (= o@@1 x@@11) (< 0 (|MultiSet#Multiplicity| a@@5 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |1708|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@11) o@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@4)) ($IsAllocBox bx@@4 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |1587|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |1588|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1580|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1559|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s1#0@0| () T@U)
(declare-fun |s0#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x0#0| () T@U)
(declare-fun |x1#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s0#0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |a#0_0| () T@U)
(declare-fun |a#1_0| () T@U)
(declare-fun |a#2_0| () T@U)
(declare-fun |a#3_0| () T@U)
(declare-fun |a#4_0| () T@U)
(declare-fun |a#5_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$M3.__default.TestChar)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon13_Else_correct  (=> (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 10) (- 0 9))) false)))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) ($Is MultiSetType (|MultiSet#Union| |s1#0@0| |s0#0@0|) (TMultiSet Tclass.M3.MyChar)))))
(let ((anon10_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) ($Is MultiSetType (|MultiSet#Union| |s0#0@0| |s1#0@0|) (TMultiSet Tclass.M3.MyChar)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |s0#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box charType |x0#0|))) (= |s1#0@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box charType |x1#0|)))) (and (and (and (and (and (and (=> (= (ControlFlow 0 11) 1) anon8_Then_correct) (=> (= (ControlFlow 0 11) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 11) 4) anon10_Then_correct)) (=> (= (ControlFlow 0 11) 6) anon11_Then_correct)) (=> (= (ControlFlow 0 11) 7) anon12_Then_correct)) (=> (= (ControlFlow 0 11) 8) anon13_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is charType |x0#0| TChar) ($Is charType |x1#0| Tclass.M3.MyChar))) (and (and ($Is MultiSetType |s0#0| (TMultiSet TChar)) ($IsAlloc MultiSetType |s0#0| (TMultiSet TChar) $Heap)) true)) (=> (and (and (and (and (and ($Is MultiSetType |s1#0| (TMultiSet Tclass.M3.MyChar)) ($IsAlloc MultiSetType |s1#0| (TMultiSet Tclass.M3.MyChar) $Heap)) true) (and (and ($Is MultiSetType |a#0_0| (TMultiSet TChar)) ($IsAlloc MultiSetType |a#0_0| (TMultiSet TChar) $Heap)) true)) (and (and (and ($Is MultiSetType |a#1_0| (TMultiSet TChar)) ($IsAlloc MultiSetType |a#1_0| (TMultiSet TChar) $Heap)) true) (and (and ($Is MultiSetType |a#2_0| (TMultiSet Tclass.M3.MyChar)) ($IsAlloc MultiSetType |a#2_0| (TMultiSet Tclass.M3.MyChar) $Heap)) true))) (and (and (and (and ($Is MultiSetType |a#3_0| (TMultiSet Tclass.M3.MyChar)) ($IsAlloc MultiSetType |a#3_0| (TMultiSet Tclass.M3.MyChar) $Heap)) true) (and (and ($Is MultiSetType |a#4_0| (TMultiSet TChar)) ($IsAlloc MultiSetType |a#4_0| (TMultiSet TChar) $Heap)) true)) (and (and (and ($Is MultiSetType |a#5_0| (TMultiSet TChar)) ($IsAlloc MultiSetType |a#5_0| (TMultiSet TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 12) 11))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
