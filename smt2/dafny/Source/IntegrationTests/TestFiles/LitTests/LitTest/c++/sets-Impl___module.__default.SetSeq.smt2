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
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun tytagFamily$uint32 () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc Tagclass._module.uint32 tytagFamily$uint32)
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
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.uint32) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.uint32)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@2 Tclass._module.uint32))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
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
 :skolemid |581|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@4 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@8)))
)))
(assert (forall ((bx@@5 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@9)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |m1#0@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |m2#0@0| () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |m3#0@0| () T@U)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |m4#0@0| () T@U)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |n1#0@0| () T@U)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |n2#0@0| () T@U)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |n3#0@0| () T@U)
(declare-fun |s1#0@0| () T@U)
(declare-fun |s2#0@0| () T@U)
(declare-fun |name##0@0| () T@U)
(declare-fun charType () T@T)
(declare-fun |b##0@0| () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |name##1@0| () T@U)
(declare-fun |b##1@0| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |name##2@0| () T@U)
(declare-fun |b##2@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |name##3@0| () T@U)
(declare-fun |b##3@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |name##4@0| () T@U)
(declare-fun |b##4@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |name##5@0| () T@U)
(declare-fun |b##5@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |name##6@0| () T@U)
(declare-fun |b##6@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun |name##7@0| () T@U)
(declare-fun |b##7@0| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun |name##8@0| () T@U)
(declare-fun |b##8@0| () Bool)
(declare-fun |m1#0| () T@U)
(declare-fun |m2#0| () T@U)
(declare-fun |m3#0| () T@U)
(declare-fun |m4#0| () T@U)
(declare-fun |n1#0| () T@U)
(declare-fun |n2#0| () T@U)
(declare-fun |n3#0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |s2#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert (= (Ctor charType) 9))
(set-info :boogie-vc-id Impl$$_module.__default.SetSeq)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (and (= |m1#0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))))) (= |newtype$check#1@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |newtype$check#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (and (= |m2#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (= |newtype$check#3@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |newtype$check#4@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (= |newtype$check#5@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (and (= |m3#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) (= |newtype$check#6@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (=> (= |newtype$check#7@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296)) (=> (= |newtype$check#8@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296)) (=> (= |newtype$check#9@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296)) (=> (and (= |m4#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))))) (= |newtype$check#10@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296)) (=> (and (= |n1#0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))))) (= |newtype$check#11@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296)) (=> (= |newtype$check#12@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296)) (=> (and (= |n2#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (= |newtype$check#13@0| (LitInt 1))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296)) (=> (= |newtype$check#14@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296)) (=> (= |newtype$check#15@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 4294967296)) (=> (= |n3#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) (=> (and (and (= |s1#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box SeqType |m1#0@0|)) ($Box SeqType |m2#0@0|)) ($Box SeqType |m3#0@0|))) (= |s2#0@0| (|Set#Difference| |s1#0@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |m1#0@0|))))) (and (= |name##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 49))))) (= |b##0@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |m1#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) |b##0@0|) (=> |b##0@0| (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)) (and (= |name##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 50))))) (= |b##1@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |m2#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) |b##1@0|) (=> |b##1@0| (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |name##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 51))))) (= |b##2@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |m3#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) |b##2@0|) (=> |b##2@0| (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |name##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 78))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 49))))) (= |b##3@0|  (not (|Set#IsMember| |s2#0@0| ($Box SeqType |m1#0@0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) |b##3@0|) (=> |b##3@0| (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= |name##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 78))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 50))))) (= |b##4@0|  (not (|Set#IsMember| |s1#0@0| ($Box SeqType |m4#0@0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) |b##4@0|) (=> |b##4@0| (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |name##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 78))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 51))))) (= |b##5@0|  (not (|Set#IsMember| |s2#0@0| ($Box SeqType |m4#0@0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) |b##5@0|) (=> |b##5@0| (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |name##6@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 49))))) (= |b##6@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |n1#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) |b##6@0|) (=> |b##6@0| (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (= |name##7@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 50))))) (= |b##7@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |n2#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) |b##7@0|) (=> |b##7@0| (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |setsdfy.18:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
))) (and (and ($HeapSucc $Heap@6 $Heap@7) (= |name##8@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 51)))))) (and (= |b##8@0| (|Set#IsMember| |s1#0@0| ($Box SeqType |n3#0@0|))) (= (ControlFlow 0 2) (- 0 1))))) |b##8@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SeqType |m1#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |m1#0| (TSeq Tclass._module.uint32) $Heap)) true) (and (and ($Is SeqType |m2#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |m2#0| (TSeq Tclass._module.uint32) $Heap)) true)) (=> (and (and (and (and (and ($Is SeqType |m3#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |m3#0| (TSeq Tclass._module.uint32) $Heap)) true) (and (and ($Is SeqType |m4#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |m4#0| (TSeq Tclass._module.uint32) $Heap)) true)) (and (and (and ($Is SeqType |n1#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |n1#0| (TSeq Tclass._module.uint32) $Heap)) true) (and (and ($Is SeqType |n2#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |n2#0| (TSeq Tclass._module.uint32) $Heap)) true))) (and (and (and (and ($Is SeqType |n3#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |n3#0| (TSeq Tclass._module.uint32) $Heap)) true) (and (and ($Is SetType |s1#0| (TSet (TSeq Tclass._module.uint32))) ($IsAlloc SetType |s1#0| (TSet (TSeq Tclass._module.uint32)) $Heap)) true)) (and (and (and ($Is SetType |s2#0| (TSet (TSeq Tclass._module.uint32))) ($IsAlloc SetType |s2#0| (TSet (TSeq Tclass._module.uint32)) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 27) 2))))) anon0_correct)))))
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
