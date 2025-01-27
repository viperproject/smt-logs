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
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.AdvancedZeroInitialization.Xt () T@U)
(declare-fun Tagclass.AdvancedZeroInitialization.Yt () T@U)
(declare-fun Tagclass.AdvancedZeroInitialization.Even () T@U)
(declare-fun tytagFamily$Xt () T@U)
(declare-fun tytagFamily$Yt () T@U)
(declare-fun tytagFamily$Even () T@U)
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
(declare-fun Tclass.AdvancedZeroInitialization.Even () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.AdvancedZeroInitialization.Yt (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.AdvancedZeroInitialization.Xt () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Mod (Int Int) Int)
(declare-fun charType () T@T)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.AdvancedZeroInitialization.Yt_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TChar TInt TReal TagChar TagInt TagReal TagSet TagSeq alloc Tagclass.AdvancedZeroInitialization.Xt Tagclass.AdvancedZeroInitialization.Yt Tagclass.AdvancedZeroInitialization.Even tytagFamily$Xt tytagFamily$Yt tytagFamily$Even)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.AdvancedZeroInitialization.Even $h)
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsAlloc intType |x#0| Tclass.AdvancedZeroInitialization.Even $h))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((AdvancedZeroInitialization.Yt$Y T@U) ) (!  (and (= (Tag (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y)) Tagclass.AdvancedZeroInitialization.Yt) (= (TagFamily (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y)) tytagFamily$Yt))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.AdvancedZeroInitialization.Xt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.AdvancedZeroInitialization.Xt)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@1 Tclass.AdvancedZeroInitialization.Xt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.AdvancedZeroInitialization.Even) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.AdvancedZeroInitialization.Even)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@2 Tclass.AdvancedZeroInitialization.Even))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.AdvancedZeroInitialization.Even) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Is intType |x#0@@0| Tclass.AdvancedZeroInitialization.Even))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TReal) (and (= ($Box realType ($Unbox realType bx@@4)) bx@@4) ($Is realType ($Unbox realType bx@@4) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@4 TReal))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (= (Ctor SeqType) 10))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((AdvancedZeroInitialization.Yt$Y@@0 T@U) ) (! (= (Tclass.AdvancedZeroInitialization.Yt_0 (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y@@0)) AdvancedZeroInitialization.Yt$Y@@0)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y@@0))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |1186|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((bx@@7 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@7)))
)))
(assert (forall ((bx@@8 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@8)))
)))
(assert (forall ((AdvancedZeroInitialization.Yt$Y@@1 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y@@1))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsBox bx@@9 (Tclass.AdvancedZeroInitialization.Yt AdvancedZeroInitialization.Yt$Y@@1)))
)))
(assert (forall ((d T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d Tclass.AdvancedZeroInitialization.Xt)) ($IsAlloc DatatypeTypeType d Tclass.AdvancedZeroInitialization.Xt $h@@0))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass.AdvancedZeroInitialization.Xt $h@@0))
)))
(assert (= (Tag Tclass.AdvancedZeroInitialization.Xt) Tagclass.AdvancedZeroInitialization.Xt))
(assert (= (TagFamily Tclass.AdvancedZeroInitialization.Xt) tytagFamily$Xt))
(assert (= (Tag Tclass.AdvancedZeroInitialization.Even) Tagclass.AdvancedZeroInitialization.Even))
(assert (= (TagFamily Tclass.AdvancedZeroInitialization.Even) tytagFamily$Even))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@6 T@U) ) (! ($IsAlloc realType v@@6 TReal h@@6)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@6 TReal h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@7 T@U) ) (! ($IsAlloc charType v@@7 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@7 TChar h@@7))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is realType v@@10 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@10 TReal))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |call4formal@h#0| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G () T@U)
(declare-fun |call2formal@g#0@0| () T@U)
(declare-fun |x#0@0| () Real)
(declare-fun |which#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@h#0@0| () T@U)
(declare-fun |$rhs##0@0| () Real)
(declare-fun |ch#0@0| () T@U)
(declare-fun |call4formal@h#0@@0| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@0 () T@U)
(declare-fun |call2formal@g#0@0@@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call4formal@h#0@0@@0| () T@U)
(declare-fun |$rhs##1@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |call4formal@h#0@@1| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@1 () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0 () T@U)
(declare-fun |call2formal@g#0@0@@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call4formal@h#0@0@@1| () T@U)
(declare-fun |$rhs##2@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |call4formal@h#0@@2| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@2 () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@0 () T@U)
(declare-fun |call2formal@g#0@0@@2| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call4formal@h#0@0@@2| () T@U)
(declare-fun |$rhs##3@0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |call4formal@h#0@@3| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@3 () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@1 () T@U)
(declare-fun |call2formal@g#0@0@@3| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call4formal@h#0@0@@3| () T@U)
(declare-fun |$rhs##4@0| () T@U)
(declare-fun |z#0@0| () T@U)
(declare-fun |call4formal@h#0@@4| () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@4 () T@U)
(declare-fun call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@2 () T@U)
(declare-fun |call2formal@g#0@0@@4| () T@U)
(declare-fun |ch#0| () T@U)
(declare-fun |ch'#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |s'#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |d'#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |y'#0| () T@U)
(declare-fun |z#0| () T@U)
(declare-fun |z'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$AdvancedZeroInitialization.__default.Test)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsBox |call4formal@h#0| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G) ($IsAllocBox |call4formal@h#0| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G $Heap)) (= |call2formal@g#0@0| ($Box realType (real_2_U |x#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1)))) (=> (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and ($IsBox |call4formal@h#0@0| TReal) ($IsAllocBox |call4formal@h#0@0| TReal $Heap@0))) (=> (and (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |NonZeroInitializationCompiledfy.76:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (= |$rhs##0@0| (U_2_real ($Unbox realType |call4formal@h#0@0|))) ($Is charType |ch#0@0| TChar))) (and (and ($IsBox |call4formal@h#0@@0| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@0) ($IsAllocBox |call4formal@h#0@@0| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@0 $Heap)) (= |call2formal@g#0@0@@0| ($Box charType |ch#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1)))) (=> (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($IsBox |call4formal@h#0@0@@0| TChar) ($IsAllocBox |call4formal@h#0@0@@0| TChar $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |NonZeroInitializationCompiledfy.76:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (=> (and (and (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##1@0| ($Unbox charType |call4formal@h#0@0@@0|))) (and ($Is SetType |s#0@0| (TSet TReal)) ($IsAlloc SetType |s#0@0| (TSet TReal) $Heap@1))) (and (and ($IsBox |call4formal@h#0@@1| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@1) ($IsAllocBox |call4formal@h#0@@1| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@1 $Heap)) (and (= call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0 (TSet TReal)) (= |call2formal@g#0@0@@1| ($Box SetType |s#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1)))) (=> (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and ($IsBox |call4formal@h#0@0@@1| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0) ($IsAllocBox |call4formal@h#0@0@@1| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0 $Heap@2)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |NonZeroInitializationCompiledfy.76:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
))) (=> (and (and (and ($HeapSucc $Heap@1 $Heap@2) (= |$rhs##2@0| ($Unbox SetType |call4formal@h#0@0@@1|))) (and ($Is DatatypeTypeType |d#0@0| Tclass.AdvancedZeroInitialization.Xt) ($IsAlloc DatatypeTypeType |d#0@0| Tclass.AdvancedZeroInitialization.Xt $Heap@2))) (and (and ($IsBox |call4formal@h#0@@2| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@2) ($IsAllocBox |call4formal@h#0@@2| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@2 $Heap)) (and (= call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@0 Tclass.AdvancedZeroInitialization.Xt) (= |call2formal@g#0@0@@2| ($Box DatatypeTypeType |d#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1)))) (=> (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and ($IsBox |call4formal@h#0@0@@2| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@0) ($IsAllocBox |call4formal@h#0@0@@2| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@0 $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |NonZeroInitializationCompiledfy.76:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (=> (and (and (and ($HeapSucc $Heap@2 $Heap@3) (= |$rhs##3@0| ($Unbox DatatypeTypeType |call4formal@h#0@0@@2|))) (and ($Is DatatypeTypeType |y#0@0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt))) ($IsAlloc DatatypeTypeType |y#0@0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt)) $Heap@3))) (and (and ($IsBox |call4formal@h#0@@3| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@3) ($IsAllocBox |call4formal@h#0@@3| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@3 $Heap)) (and (= call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@1 (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt))) (= |call2formal@g#0@0@@3| ($Box DatatypeTypeType |y#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1)))) (=> (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and ($IsBox |call4formal@h#0@0@@3| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@1) ($IsAllocBox |call4formal@h#0@0@@3| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@1 $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |NonZeroInitializationCompiledfy.76:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and (and ($HeapSucc $Heap@3 $Heap@4) (= |$rhs##4@0| ($Unbox DatatypeTypeType |call4formal@h#0@0@@3|))) (and ($Is DatatypeTypeType |z#0@0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even)) ($IsAlloc DatatypeTypeType |z#0@0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even) $Heap@4)))) (and (and (and ($IsBox |call4formal@h#0@@4| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@4) ($IsAllocBox |call4formal@h#0@@4| call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@@4 $Heap)) (= call0formal@AdvancedZeroInitialization._default.MyMethodSelect$G@0@@2 (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even))) (and (= |call2formal@g#0@0@@4| ($Box DatatypeTypeType |z#0@0|)) (= (ControlFlow 0 2) (- 0 1))))) (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is charType |ch#0| TChar) true) (and ($Is charType |ch'#0| TChar) true)) (and (and ($Is SetType |s#0| (TSet TReal)) ($IsAlloc SetType |s#0| (TSet TReal) $Heap)) true)) (and (and (and ($Is SetType |s'#0| (TSet TReal)) ($IsAlloc SetType |s'#0| (TSet TReal) $Heap)) true) (and (and ($Is DatatypeTypeType |d#0| Tclass.AdvancedZeroInitialization.Xt) ($IsAlloc DatatypeTypeType |d#0| Tclass.AdvancedZeroInitialization.Xt $Heap)) true))) (=> (and (and (and (and (and ($Is DatatypeTypeType |d'#0| Tclass.AdvancedZeroInitialization.Xt) ($IsAlloc DatatypeTypeType |d'#0| Tclass.AdvancedZeroInitialization.Xt $Heap)) true) (and (and ($Is DatatypeTypeType |y#0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt))) ($IsAlloc DatatypeTypeType |y#0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt)) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |y'#0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt))) ($IsAlloc DatatypeTypeType |y'#0| (Tclass.AdvancedZeroInitialization.Yt (TSeq TInt)) $Heap)) true) (and (and ($Is DatatypeTypeType |z#0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even)) ($IsAlloc DatatypeTypeType |z#0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |z'#0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even)) ($IsAlloc DatatypeTypeType |z'#0| (Tclass.AdvancedZeroInitialization.Yt Tclass.AdvancedZeroInitialization.Even) $Heap)) true) (= 2 $FunctionContextHeight)) (and (or (= |which#0| (LitInt 0)) (= |which#0| (LitInt 1))) (= (ControlFlow 0 8) 2)))) anon0_correct)))))
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
