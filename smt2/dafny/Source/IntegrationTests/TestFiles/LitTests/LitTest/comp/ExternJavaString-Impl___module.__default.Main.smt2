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
(declare-fun Tagclass._module.JavaString () T@U)
(declare-fun Tagclass._module.JavaString? () T@U)
(declare-fun tytagFamily$JavaString () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.JavaString.value (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.JavaString? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.JavaString () T@U)
(declare-fun _module.__default.ToDafnyString (T@U) T@U)
(declare-fun |_module.__default.ToDafnyString#canCall| (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._module.JavaString Tagclass._module.JavaString? tytagFamily$JavaString)
)
(assert (= (Tag TChar) TagChar))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
))) (= (Ctor SeqType) 7)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.JavaString?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc SeqType (_module.JavaString.value $o) (TSeq TChar) $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |496|
 :pattern ( (_module.JavaString.value $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.JavaString?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.JavaString?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Is refType $o@@0 Tclass._module.JavaString?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.JavaString $h@@0) ($IsAlloc refType |c#0| Tclass._module.JavaString? $h@@0))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.JavaString $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.JavaString? $h@@0))
)))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.JavaString? $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.JavaString? $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|js#0| T@U) ) (!  (=> (or (|_module.__default.ToDafnyString#canCall| |js#0|) (and (< 1 $FunctionContextHeight) ($Is refType |js#0| Tclass._module.JavaString))) (and (|Seq#Equal| (_module.__default.ToDafnyString |js#0|) (_module.JavaString.value |js#0|)) ($Is SeqType (_module.__default.ToDafnyString |js#0|) (TSeq TChar))))
 :qid |ExternJavaStringdfy.16:84|
 :skolemid |482|
 :pattern ( (_module.__default.ToDafnyString |js#0|))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.JavaString?)) ($Is SeqType (_module.JavaString.value $o@@2) (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (_module.JavaString.value $o@@2))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.JavaString) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.JavaString)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@0 Tclass._module.JavaString))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.JavaString?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.JavaString?)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@1 Tclass._module.JavaString?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.JavaString)  (and ($Is refType |c#0@@0| Tclass._module.JavaString?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.JavaString))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.JavaString?))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |499|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@5)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._module.JavaString) Tagclass._module.JavaString))
(assert (= (TagFamily Tclass._module.JavaString) tytagFamily$JavaString))
(assert (= (Tag Tclass._module.JavaString?) Tagclass._module.JavaString?))
(assert (= (TagFamily Tclass._module.JavaString?) tytagFamily$JavaString))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |previousStart#0@1| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |i#0#hi@0| () Int)
(declare-fun |i#0@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |previousStart#0@3| () Int)
(declare-fun |previousStart#0@2| () Int)
(declare-fun |i#0#lo@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call1formal@js#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call1formal@js#0@0| () T@U)
(declare-fun |previousStart#0@0| () Int)
(declare-fun |defass#js#0| () Bool)
(declare-fun |js#0@@0| () T@U)
(declare-fun |s#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon16_Else_correct true))
(let ((anon16_Then_correct  (=> (and (or (not (= |previousStart#0@1| (|Seq#Length| |s#0@0|))) (not true)) (= (ControlFlow 0 12) (- 0 11))) (and (<= 0 |previousStart#0@1|) (<= |previousStart#0@1| (|Seq#Length| |s#0@0|))))))
(let ((anon14_Then_correct  (=> (= |i#0@0| |i#0#hi@0|) (and (=> (= (ControlFlow 0 14) 12) anon16_Then_correct) (=> (= (ControlFlow 0 14) 13) anon16_Else_correct)))))
(let ((anon8_correct  (=> (and (and (= |i#0@1| (+ |i#0@0| 1)) (= (ControlFlow 0 4) (- 0 3))) |$w$loop#0@0|) (<= |previousStart#0@3| |i#0@1|))))
(let ((anon15_Else_correct  (=> (or (not (= ($Unbox charType (|Seq#Index| |s#0@0| |i#0@0|)) (Lit charType (|char#FromInt| 47)))) (not true)) (=> (and (= |previousStart#0@3| |previousStart#0@1|) (= (ControlFlow 0 8) 4)) anon8_correct))))
(let ((anon15_Then_correct  (=> (= ($Unbox charType (|Seq#Index| |s#0@0| |i#0@0|)) (Lit charType (|char#FromInt| 47))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= 0 |previousStart#0@1|) (<= |previousStart#0@1| (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= |previousStart#0@1| |i#0@0|) (<= |i#0@0| (|Seq#Length| |s#0@0|)))) (=> (= |previousStart#0@2| (+ |i#0@0| 1)) (=> (and (= |previousStart#0@3| |previousStart#0@2|) (= (ControlFlow 0 5) 4)) anon8_correct)))))))
(let ((anon14_Else_correct  (=> (or (not (= |i#0@0| |i#0#hi@0|)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|))) (and (=> (= (ControlFlow 0 9) 5) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct)))))))
(let ((anon13_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 15) 14) anon14_Then_correct) (=> (= (ControlFlow 0 15) 9) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_LoopBody_correct  (and (=> (= (ControlFlow 0 16) 2) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct))))
(let ((anon12_LoopDone_correct true))
(let ((anon12_LoopHead_correct  (=> (and (and (and (and (and (and (and (not false) true) (<= 0 |previousStart#0@1|)) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |i#0#hi@0|)) (and (<= |i#0#lo@0| |i#0@0|) (<= |i#0@0| |i#0#hi@0|))) (and (and (=> |$w$loop#0@0| (<= |previousStart#0@1| |i#0@0|)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4)))
 :qid |ExternJavaStringdfy.26:3|
 :skolemid |490|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
))) (and ($HeapSucc $Heap@0 $Heap@0) (forall (($o@@5 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@5 $f@@0))))
 :qid |ExternJavaStringdfy.26:3|
 :skolemid |491|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) $f@@0))
))))) (and (=> (= (ControlFlow 0 17) 1) anon12_LoopDone_correct) (=> (= (ControlFlow 0 17) 16) anon12_LoopBody_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and ($Is refType |call1formal@js#0| Tclass._module.JavaString) ($IsAlloc refType |call1formal@js#0| Tclass._module.JavaString $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is refType |call1formal@js#0@0| Tclass._module.JavaString) ($IsAlloc refType |call1formal@js#0@0| Tclass._module.JavaString $Heap@0)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |ExternJavaStringdfy.19:73|
 :skolemid |485|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 18) (- 0 21)) true) (=> ($IsAlloc refType |call1formal@js#0@0| Tclass._module.JavaString $Heap@0) (=> (and (|_module.__default.ToDafnyString#canCall| |call1formal@js#0@0|) (|_module.__default.ToDafnyString#canCall| |call1formal@js#0@0|)) (=> (and (and (= |s#0@0| (_module.__default.ToDafnyString |call1formal@js#0@0|)) (= |previousStart#0@0| (LitInt 0))) (and (= |i#0#lo@0| (LitInt 0)) (= |i#0#hi@0| (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (<= |i#0#lo@0| |i#0#hi@0|)) (=> (<= |i#0#lo@0| |i#0#hi@0|) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> |$w$loop#0@0| (<= |previousStart#0@0| |i#0#lo@0|))) (=> (=> |$w$loop#0@0| (<= |previousStart#0@0| |i#0#lo@0|)) (=> (= (ControlFlow 0 18) 17) anon12_LoopHead_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#js#0| (and ($Is refType |js#0@@0| Tclass._module.JavaString) ($IsAlloc refType |js#0@@0| Tclass._module.JavaString $Heap))) true)) (=> (and (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 22) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
