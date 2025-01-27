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
(declare-fun TBool () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagReal () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TBool TReal TagBool TagReal TagSeq alloc)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TReal) TagReal))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((s@@1 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@1 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@2))) (= (|Seq#Index| (|Seq#Take| s@@2 n@@1) j) (|Seq#Index| s@@2 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@2 n@@1) j))
 :pattern ( (|Seq#Index| s@@2 j) (|Seq#Take| s@@2 n@@1))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Drop| s@@3 n@@2)) (- (|Seq#Length| s@@3) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@3 n@@2)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((s@@4 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@4 v@@0)) (+ 1 (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@4 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@5) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@1) (|Seq#Index| s@@5 (+ j@@1 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@1))
)))
(assert (forall ((s@@6 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@6)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@6))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@2) i) (|Seq#Index| s@@6 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@6 v@@2) i))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@7 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@7))) (= (|Seq#Length| (|Seq#Take| s@@7 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@7 n@@4)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TReal) (and (= ($Box realType ($Unbox realType bx@@0)) bx@@0) ($Is realType ($Unbox realType bx@@0) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@0 TReal))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@8 T@U) ) (! (<= 0 (|Seq#Length| s@@8))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@4 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
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
 :skolemid |524|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@9 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@9 val@@4)) s@@9) (= (|Seq#Build_inv1| (|Seq#Build| s@@9 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@9 val@@4))
)))
(assert (forall ((bx@@2 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@4)))
)))
(assert (forall ((s@@10 T@U) (n@@5 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@5) (<= n@@5 k)) (< k (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@5) (- k n@@5)) (|Seq#Index| s@@10 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@10 k) (|Seq#Drop| s@@10 n@@5))
)))
(assert (forall ((s@@11 T@U) (m@@4 Int) (n@@6 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@6)) (<= (+ m@@4 n@@6) (|Seq#Length| s@@11))) (= (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@6) (|Seq#Drop| s@@11 (+ m@@4 n@@6))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@6))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@8))) (Lit BoxType ($Box realType (real_2_U x@@8))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((s@@12 T@U) ) (!  (=> (= (|Seq#Length| s@@12) 0) (= s@@12 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((s@@13 T@U) (n@@7 Int) ) (!  (=> (= n@@7 0) (= (|Seq#Take| s@@13 n@@7) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@13 n@@7))
)))
(assert (forall ((h@@1 T@U) (v@@5 T@U) ) (! ($IsAlloc realType v@@5 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@5 TReal h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@6 T@U) ) (! ($IsAlloc boolType v@@6 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@6 TBool h@@2))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is realType v@@8 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@8 TReal))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is boolType v@@9 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@9 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |u#0@0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module._default.MoreTests$T () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MoreTests)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon12_correct  (and (=> (= (ControlFlow 0 2) (- 0 15)) (= (|Seq#Length| |u#0@0|) (LitInt 3))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (not (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 1))) (LitInt 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 2))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))) (=> (and (and (and (= (|Seq#Length| |u#0@0|) (LitInt 3)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0))))) (not (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 1))) (LitInt 0)))))) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 2))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (|Seq#Take| |s#0| (LitInt 10)))) ($Box SeqType (|Seq#Drop| |s#0| (LitInt 10)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (|Seq#Take| |s#0| (LitInt 10)))) ($Box SeqType (|Seq#Drop| |s#0| (LitInt 10)))) (LitInt 0))) (|Seq#Take| |s#0| (LitInt 10)))) (=> (|Seq#Equal| ($Unbox SeqType (|Seq#Index| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (|Seq#Take| |s#0| (LitInt 10)))) ($Box SeqType (|Seq#Drop| |s#0| (LitInt 10)))) (LitInt 0))) (|Seq#Take| |s#0| (LitInt 10))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (|Seq#Take| |s#0| (LitInt 10)))) ($Box SeqType (|Seq#Drop| |s#0| (LitInt 10)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 (LitInt 10)) (<= (LitInt 10) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (|Seq#Take| |s#0| (LitInt 10)))) ($Box SeqType (|Seq#Drop| |s#0| (LitInt 10)))) (LitInt 1))) (|Seq#Drop| |s#0| (LitInt 10)))))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (not (and (and (= (|Seq#Length| |u#0@0|) (LitInt 3)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0))))) (not (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 1))) (LitInt 0))))))) (= (ControlFlow 0 18) 2)) anon12_correct)))
(let ((anon18_Then_correct  (=> (and (and (= (|Seq#Length| |u#0@0|) (LitInt 3)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0))))) (not (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 1))) (LitInt 0)))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |u#0@0|)))) (=> (= (ControlFlow 0 16) 2) anon12_correct)))))
(let ((anon17_Else_correct  (=> (not (and (= (|Seq#Length| |u#0@0|) (LitInt 3)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0)))))) (and (=> (= (ControlFlow 0 22) 16) anon18_Then_correct) (=> (= (ControlFlow 0 22) 18) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (= (|Seq#Length| |u#0@0|) (LitInt 3)) (U_2_bool ($Unbox boolType (|Seq#Index| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))) (LitInt 0))))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@0|)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 1))))))) (and (=> (= (ControlFlow 0 19) 16) anon18_Then_correct) (=> (= (ControlFlow 0 19) 18) anon18_Else_correct)))))))
(let ((anon16_Else_correct  (=> (or (not (= (|Seq#Length| |u#0@0|) (LitInt 3))) (not true)) (and (=> (= (ControlFlow 0 26) 19) anon17_Then_correct) (=> (= (ControlFlow 0 26) 22) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (= (|Seq#Length| |u#0@0|) (LitInt 3)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |u#0@0|)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| ($Unbox SeqType (|Seq#Index| |u#0@0| (LitInt 0))))))) (and (=> (= (ControlFlow 0 23) 19) anon17_Then_correct) (=> (= (ControlFlow 0 23) 22) anon17_Else_correct)))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 27) (- 0 35)) (= (|Seq#Length| |t#0@0|) (LitInt 3))) (and (=> (= (ControlFlow 0 27) (- 0 34)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))))) (and (=> (= (ControlFlow 0 27) (- 0 33)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 1))) |Seq#Empty|)) (and (=> (= (ControlFlow 0 27) (- 0 32)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 2))) (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))))) (=> (and (and (and (= (|Seq#Length| |t#0@0|) (LitInt 3)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))))) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 1))) |Seq#Empty|)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 2))) (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))))))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))))))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (and (<= (LitInt 1) (LitInt (+ 1 1))) (<= (LitInt (+ 1 1)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))))))) (=> (and (<= (LitInt 1) (LitInt (+ 1 1))) (<= (LitInt (+ 1 1)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= 0 (LitInt (+ 1 1))) (<= (LitInt (+ 1 1)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))))))) (=> (and (<= 0 (LitInt (+ 1 1))) (<= (LitInt (+ 1 1)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true)))))))) (=> (= |u#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Take| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))) (LitInt 1))))) ($Box SeqType (Lit SeqType (|Seq#Drop| (|Seq#Take| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))) (LitInt (+ 1 1))) (LitInt 1))))) ($Box SeqType (Lit SeqType (|Seq#Drop| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U false)))) ($Box boolType (Lit boolType (bool_2_U true))))) (LitInt (+ 1 1)))))))) (and (=> (= (ControlFlow 0 27) 23) anon16_Then_correct) (=> (= (ControlFlow 0 27) 26) anon16_Else_correct))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (not (and (and (= (|Seq#Length| |t#0@0|) (LitInt 3)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))))) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 1))) |Seq#Empty|))) (= (ControlFlow 0 38) 27)) anon6_correct)))
(let ((anon15_Then_correct  (=> (and (and (= (|Seq#Length| |t#0@0|) (LitInt 3)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))))) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 1))) |Seq#Empty|)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |t#0@0|)))) (=> (= (ControlFlow 0 36) 27) anon6_correct)))))
(let ((anon14_Else_correct  (=> (not (and (= (|Seq#Length| |t#0@0|) (LitInt 3)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14))))))) (and (=> (= (ControlFlow 0 41) 36) anon15_Then_correct) (=> (= (ControlFlow 0 41) 38) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (= (|Seq#Length| |t#0@0|) (LitInt 3)) (|Seq#Equal| ($Unbox SeqType (|Seq#Index| |t#0@0| (LitInt 0))) (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |t#0@0|)))) (and (=> (= (ControlFlow 0 39) 36) anon15_Then_correct) (=> (= (ControlFlow 0 39) 38) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (or (not (= (|Seq#Length| |t#0@0|) (LitInt 3))) (not true)) (and (=> (= (ControlFlow 0 44) 39) anon14_Then_correct) (=> (= (ControlFlow 0 44) 41) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (= (|Seq#Length| |t#0@0|) (LitInt 3)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |t#0@0|)))) (and (=> (= (ControlFlow 0 42) 39) anon14_Then_correct) (=> (= (ControlFlow 0 42) 41) anon14_Else_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 45) (- 0 50)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))))))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2)))))))) (and (=> (= (ControlFlow 0 45) (- 0 49)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))))))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2)))))))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (and (<= (LitInt 1) (LitInt (+ 1 0))) (<= (LitInt (+ 1 0)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))))))) (=> (and (<= (LitInt 1) (LitInt (+ 1 0))) (<= (LitInt (+ 1 0)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2)))))))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (and (<= 0 (LitInt (+ 1 0))) (<= (LitInt (+ 1 0)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))))))) (=> (and (<= 0 (LitInt (+ 1 0))) (<= (LitInt (+ 1 0)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2)))))))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= (LitInt (+ 1 0)) (LitInt (+ (+ 1 0) 3))) (<= (LitInt (+ (+ 1 0) 3)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))))))) (=> (and (<= (LitInt (+ 1 0)) (LitInt (+ (+ 1 0) 3))) (<= (LitInt (+ (+ 1 0) 3)) (|Seq#Length| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2)))))))) (=> (= |t#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Take| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))) (LitInt 1))))) ($Box SeqType (Lit SeqType (|Seq#Drop| (|Seq#Take| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))) (LitInt (+ 1 0))) (LitInt 1))))) ($Box SeqType (Lit SeqType (|Seq#Drop| (|Seq#Take| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box realType (real_2_U (LitReal 3.14)))) ($Box realType (real_2_U (LitReal 2.7)))) ($Box realType (real_2_U (LitReal 1.41)))) ($Box realType (real_2_U (LitReal 1985.44)))) ($Box realType (real_2_U (LitReal 100.0)))) ($Box realType (real_2_U (LitReal 37.2))))) (LitInt (+ (+ 1 0) 3))) (LitInt (+ 1 0)))))))) (and (=> (= (ControlFlow 0 45) 42) anon13_Then_correct) (=> (= (ControlFlow 0 45) 44) anon13_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |s#0| (TSeq _module._default.MoreTests$T)) ($IsAlloc SeqType |s#0| (TSeq _module._default.MoreTests$T) $Heap))) (and (and ($Is SeqType |t#0| (TSeq (TSeq TReal))) ($IsAlloc SeqType |t#0| (TSeq (TSeq TReal)) $Heap)) true)) (=> (and (and (and (and ($Is SeqType |u#0| (TSeq (TSeq TBool))) ($IsAlloc SeqType |u#0| (TSeq (TSeq TBool)) $Heap)) true) (= 0 $FunctionContextHeight)) (and (<= (LitInt 10) (|Seq#Length| |s#0|)) (= (ControlFlow 0 51) 45))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
