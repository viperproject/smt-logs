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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing () T@U)
(declare-fun tytagFamily$Thing () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Thing? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Thing () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._module.Thing? Tagclass._module.Thing tytagFamily$Thing)
)
(assert (= (Tag TChar) TagChar))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thing?)  (or (= $o null) (= (dtype $o) Tclass._module.Thing?)))
 :qid |unknown.0:0|
 :skolemid |1258|
 :pattern ( ($Is refType $o Tclass._module.Thing?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Thing $h) ($IsAlloc refType |c#0| Tclass._module.Thing? $h))
 :qid |unknown.0:0|
 :skolemid |1280|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Thing $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Thing? $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Thing? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1259|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Thing? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |678|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |679|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |577|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |575|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |818|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |586|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |599|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Thing?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Thing?)))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsBox bx@@1 Tclass._module.Thing?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Thing) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Thing)))
 :qid |unknown.0:0|
 :skolemid |1267|
 :pattern ( ($IsBox bx@@2 Tclass._module.Thing))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Thing)  (and ($Is refType |c#0@@0| Tclass._module.Thing?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Thing))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Thing?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |785|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |677|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |590|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |598|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |781|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |633|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |634|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |567|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |568|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |585|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |581|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1378|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |783|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |595|
 :pattern ( ($IsBox bx@@4 (TSeq t@@6)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |582|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._module.Thing?) Tagclass._module.Thing?))
(assert (= (TagFamily Tclass._module.Thing?) tytagFamily$Thing))
(assert (= (Tag Tclass._module.Thing) Tagclass._module.Thing))
(assert (= (TagFamily Tclass._module.Thing) tytagFamily$Thing))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |578|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |576|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |624|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@4))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |613|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |614|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |603|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@1| () Int)
(declare-fun |things#0| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun call0formal@this@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |i#0@2| () Int)
(declare-fun |sep#0@2| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |sep#0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun |sep#0@0| () T@U)
(declare-fun |sep#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Thing.PrintMany)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_Else_correct  (=> (and (< |i#0@1| (|Seq#Length| |things#0|)) (= |$decr$loop#00@1| (- (|Seq#Length| |things#0|) |i#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (and (<= 0 |i#0@1|) (< |i#0@1| (|Seq#Length| |things#0|)))) (=> (and (<= 0 |i#0@1|) (< |i#0@1| (|Seq#Length| |things#0|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= ($Unbox refType (|Seq#Index| |things#0| |i#0@1|)) null)) (not true))) (=> (or (not (= ($Unbox refType (|Seq#Index| |things#0| |i#0@1|)) null)) (not true)) (=> (= call0formal@this@0 ($Unbox refType (|Seq#Index| |things#0| |i#0@1|))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2)))
 :qid |Foralldfy.217:10|
 :skolemid |1271|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |i#0@2| (+ |i#0@1| 1)) (= |sep#0@2| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- (|Seq#Length| |things#0|) |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (|Seq#Length| |things#0|) |i#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- (|Seq#Length| |things#0|) |i#0@2|) |$decr$loop#00@1|))))))))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 9) 3) anon9_Then_correct) (=> (= (ControlFlow 0 9) 5) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 10) 2) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and ($Is SeqType |sep#0@1| (TSeq TChar)) ($IsAlloc SeqType |sep#0@1| (TSeq TChar) $Heap@0)) (and (not false) (<= 0 |i#0@1|))) (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3)))
 :qid |Foralldfy.225:5|
 :skolemid |1276|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@4 $f@@0))))
 :qid |Foralldfy.225:5|
 :skolemid |1277|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) $f@@0))
)) (<= (- (|Seq#Length| |things#0|) |i#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 11) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) anon7_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |i#0@0| (LitInt 0)) (= |sep#0@0| (Lit SeqType |Seq#Empty|))) (and (= |$decr_init$loop#00@0| (- (|Seq#Length| |things#0|) |i#0@0|)) (= (ControlFlow 0 12) 11))) anon7_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |things#0| (TSeq Tclass._module.Thing)) ($IsAlloc SeqType |things#0| (TSeq Tclass._module.Thing) $Heap))) (=> (and (and (and ($Is SeqType |sep#0| (TSeq TChar)) ($IsAlloc SeqType |sep#0| (TSeq TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
