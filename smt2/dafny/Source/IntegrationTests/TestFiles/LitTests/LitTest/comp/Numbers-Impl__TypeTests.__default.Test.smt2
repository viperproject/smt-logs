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
(declare-fun TChar () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TypeTests.MyChar () T@U)
(declare-fun Tagclass.TypeTests.Little () T@U)
(declare-fun tytagFamily$MyChar () T@U)
(declare-fun tytagFamily$Little () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass.TypeTests.MyChar () T@U)
(declare-fun Tclass.TypeTests.Little () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TypeTests.__default.EmptySequence (T@U) T@U)
(declare-fun |TypeTests.__default.EmptySequence#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |lambda#3| (T@U Int Int Int Int) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TChar TagBool TagChar TagSet TagSeq alloc Tagclass.TypeTests.MyChar Tagclass.TypeTests.Little tytagFamily$MyChar tytagFamily$Little)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |699|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |700|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (= (Ctor charType) 3))
(assert (forall ((|chr#0| T@U) ($h T@U) ) (! ($IsAlloc charType |chr#0| Tclass.TypeTests.MyChar $h)
 :qid |unknown.0:0|
 :skolemid |1116|
 :pattern ( ($IsAlloc charType |chr#0| Tclass.TypeTests.MyChar $h))
)))
(assert (forall ((|z#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |z#0| Tclass.TypeTests.Little $h@@0)
 :qid |unknown.0:0|
 :skolemid |1138|
 :pattern ( ($IsAlloc intType |z#0| Tclass.TypeTests.Little $h@@0))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |698|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |DafnyPreludebpl.24:1|
 :skolemid |2062|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |695|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 5))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeTests._default.EmptySequence$Y T@U) ) (!  (=> (or (|TypeTests.__default.EmptySequence#canCall| TypeTests._default.EmptySequence$Y) (< 0 $FunctionContextHeight)) ($Is SeqType (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y) (TSeq TypeTests._default.EmptySequence$Y)))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |587|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 Real) ) (! (= (LitReal x@@6) x@@6)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |589|
 :pattern ( (LitReal x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |585|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |596|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |723|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |616|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |617|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |609|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |656|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.TypeTests.MyChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) Tclass.TypeTests.MyChar)))
 :qid |unknown.0:0|
 :skolemid |1104|
 :pattern ( ($IsBox bx@@1 Tclass.TypeTests.MyChar))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.TypeTests.Little) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.TypeTests.Little)))
 :qid |unknown.0:0|
 :skolemid |1105|
 :pattern ( ($IsBox bx@@2 Tclass.TypeTests.Little))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeTests._default.EmptySequence$Y@@0 T@U) ) (!  (=> (or (|TypeTests.__default.EmptySequence#canCall| TypeTests._default.EmptySequence$Y@@0) (< 0 $FunctionContextHeight)) (= (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@0) (Lit SeqType |Seq#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1113|
 :pattern ( (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeTests._default.EmptySequence$Y@@1 T@U) ) (!  (=> (or (|TypeTests.__default.EmptySequence#canCall| TypeTests._default.EmptySequence$Y@@1) (< 0 $FunctionContextHeight)) (= (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@1) (Lit SeqType |Seq#Empty|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1114|
 :pattern ( (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@1))
))))
(assert (forall ((|z#0@@0| T@U) ) (! (= ($Is intType |z#0@@0| Tclass.TypeTests.Little)  (and (and (and (and (and (<= (LitInt 0) (U_2_int |z#0@@0|)) (< (U_2_int |z#0@@0|) 10000)) (or (not (= (U_2_int |z#0@@0|) 22)) (not true))) (or (not (= (U_2_int |z#0@@0|) 10)) (not true))) (and (or (not (= (U_2_int |z#0@@0|) 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (and (< (U_2_int |z#0@@0|) 200) (or (not (= (U_2_int |z#0@@0|) 16)) (not true)))))
 :qid |unknown.0:0|
 :skolemid |1137|
 :pattern ( ($Is intType |z#0@@0| Tclass.TypeTests.Little))
)))
(assert (forall ((|chr#0@@0| T@U) ) (! (= ($Is charType |chr#0@@0| Tclass.TypeTests.MyChar)  (and (<= (|char#ToInt| (Lit charType (|char#FromInt| 65))) (|char#ToInt| |chr#0@@0|)) (<= (|char#ToInt| |chr#0@@0|) (|char#ToInt| (Lit charType (|char#FromInt| 90))))))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( ($Is charType |chr#0@@0| Tclass.TypeTests.MyChar))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |599|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TChar) (and (= ($Box charType ($Unbox charType bx@@4)) bx@@4) ($Is charType ($Unbox charType bx@@4) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |600|
 :pattern ( ($IsBox bx@@4 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |608|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (|ORD#Offset| o@@1))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |655|
 :pattern ( (|ORD#Offset| o@@1))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |791|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |637|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |638|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| Int) (|l#2| Int) (|l#3| Int) (|l#4| Int) (|$y#2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4|) |$y#2|))  (and ($IsBox |$y#2| |l#0@@0|) (and (and (<= |l#1@@0| (U_2_int ($Unbox intType |$y#2|))) (< (U_2_int ($Unbox intType |$y#2|)) |l#2|)) (= (Mod (U_2_int ($Unbox intType |$y#2|)) |l#3|) |l#4|))))
 :qid |Numbersdfy.702:11|
 :skolemid |2063|
 :pattern ( (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2| |l#3| |l#4|) |$y#2|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |643|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |644|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |571|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |572|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |577|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |578|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |595|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (or (and (<= 0 n@@0) (< n@@0 55296)) (and (<= 57344 n@@0) (< n@@0 1114112))) (= (|char#ToInt| (|char#FromInt| n@@0)) n@@0))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |591|
 :pattern ( (|char#FromInt| n@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2061|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((x@@10 Int) (y@@0 Int) ) (! (= (Mod x@@10 y@@0) (mod x@@10 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |910|
 :pattern ( (Mod x@@10 y@@0))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |602|
 :pattern ( ($IsBox bx@@6 (TSet t@@5)))
)))
(assert (forall ((bx@@7 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |605|
 :pattern ( ($IsBox bx@@7 (TSeq t@@6)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |592|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((o@@2 T@U) ) (!  (=> (|ORD#IsNat| o@@2) (= o@@2 (|ORD#FromNat| (|ORD#Offset| o@@2))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |657|
 :pattern ( (|ORD#Offset| o@@2))
 :pattern ( (|ORD#IsNat| o@@2))
)))
(assert (= (Tag Tclass.TypeTests.MyChar) Tagclass.TypeTests.MyChar))
(assert (= (TagFamily Tclass.TypeTests.MyChar) tytagFamily$MyChar))
(assert (= (Tag Tclass.TypeTests.Little) Tagclass.TypeTests.Little))
(assert (= (TagFamily Tclass.TypeTests.Little) tytagFamily$Little))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (TypeTests._default.EmptySequence$Y@@2 T@U) ) (!  (=> (and (or (|TypeTests.__default.EmptySequence#canCall| TypeTests._default.EmptySequence$Y@@2) (< 0 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc SeqType (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@2) (TSeq TypeTests._default.EmptySequence$Y@@2) $Heap))
 :qid |Numbersdfy.694:12|
 :skolemid |1111|
 :pattern ( ($IsAlloc SeqType (TypeTests.__default.EmptySequence TypeTests._default.EmptySequence$Y@@2) (TSeq TypeTests._default.EmptySequence$Y@@2) $Heap))
))))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |588|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@12))) (Lit BoxType ($Box realType (real_2_U x@@12))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |590|
 :pattern ( ($Box realType (real_2_U (LitReal x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |586|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |792|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |633|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |634|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |623|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |624|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |612|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is charType v@@8 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |613|
 :pattern ( ($Is charType v@@8 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ltl#0@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |smallCharSet#0@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |r#0@0| () Real)
(declare-fun |i#0@0| () Int)
(declare-fun |ch#0@0| () T@U)
(declare-fun |ord#0@0| () T@U)
(declare-fun |b7#0@0| () (_ BitVec 7))
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun |b129#0@0| () (_ BitVec 129))
(declare-fun U_2_bv129 (T@U) (_ BitVec 129))
(declare-fun bv129Type () T@T)
(declare-fun bv129_2_U ((_ BitVec 129)) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |ch#0| () T@U)
(declare-fun |smallCharSet#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0| () T@U)
(assert  (and (and (and (and (and (= (Ctor bv7Type) 10) (forall ((arg0@@5 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@5))
))) (forall ((x@@14 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@14)) x@@14)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@14))
))) (= (Ctor bv129Type) 11)) (forall ((arg0@@6 (_ BitVec 129)) ) (! (= (U_2_bv129 (bv129_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv129|
 :pattern ( (bv129_2_U arg0@@6))
))) (forall ((x@@15 T@U) ) (! (= (bv129_2_U (U_2_bv129 x@@15)) x@@15)
 :qid |cast:U_2_bv129|
 :pattern ( (U_2_bv129 x@@15))
))))
(set-info :boogie-vc-id Impl$$TypeTests.__default.Test)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (and (<= (LitInt 3) |ltl#0@0|) (< |ltl#0@0| 35)) (= (Mod |ltl#0@0| (LitInt 3)) (LitInt 1)))) (= (ControlFlow 0 4) 1)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (and (and (<= (LitInt 3) |ltl#0@0|) (< |ltl#0@0| 35)) (= (Mod |ltl#0@0| (LitInt 3)) (LitInt 1))) (= (ControlFlow 0 3) 1)) anon13_correct)))
(let ((anon20_Else_correct  (=> (not (and (<= (LitInt 3) |ltl#0@0|) (< |ltl#0@0| 35))) (and (=> (= (ControlFlow 0 19) 3) anon21_Then_correct) (=> (= (ControlFlow 0 19) 4) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (and (<= (LitInt 3) |ltl#0@0|) (< |ltl#0@0| 35)) (= |newtype$check#3@0| (LitInt 3))) (and (=> (= (ControlFlow 0 5) (- 0 18)) (and (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 10000)) (or (not (= |newtype$check#3@0| 22)) (not true)))) (=> (and (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 10000)) (or (not (= |newtype$check#3@0| 22)) (not true))) (and (=> (= (ControlFlow 0 5) (- 0 17)) (or (not (= |newtype$check#3@0| 10)) (not true))) (=> (or (not (= |newtype$check#3@0| 10)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 16)) (and (or (not (= |newtype$check#3@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (=> (and (or (not (= |newtype$check#3@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar))))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (and (< |newtype$check#3@0| 200) (or (not (= |newtype$check#3@0| 16)) (not true)))) (=> (and (< |newtype$check#3@0| 200) (or (not (= |newtype$check#3@0| 16)) (not true))) (and (=> (= (ControlFlow 0 5) (- 0 14)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (= |newtype$check#4@0| (Mod |ltl#0@0| (LitInt 3))) (and (=> (= (ControlFlow 0 5) (- 0 13)) (and (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 10000)) (or (not (= |newtype$check#4@0| 22)) (not true)))) (=> (and (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 10000)) (or (not (= |newtype$check#4@0| 22)) (not true))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (or (not (= |newtype$check#4@0| 10)) (not true))) (=> (or (not (= |newtype$check#4@0| 10)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 11)) (and (or (not (= |newtype$check#4@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (=> (and (or (not (= |newtype$check#4@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar))))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (and (< |newtype$check#4@0| 200) (or (not (= |newtype$check#4@0| 16)) (not true)))) (=> (and (< |newtype$check#4@0| 200) (or (not (= |newtype$check#4@0| 16)) (not true))) (=> (= |newtype$check#5@0| (LitInt 1)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (and (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 10000)) (or (not (= |newtype$check#5@0| 22)) (not true)))) (=> (and (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 10000)) (or (not (= |newtype$check#5@0| 22)) (not true))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (not (= |newtype$check#5@0| 10)) (not true))) (=> (or (not (= |newtype$check#5@0| 10)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (or (not (= |newtype$check#5@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (=> (and (or (not (= |newtype$check#5@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (< |newtype$check#5@0| 200) (or (not (= |newtype$check#5@0| 16)) (not true)))) (=> (and (< |newtype$check#5@0| 200) (or (not (= |newtype$check#5@0| 16)) (not true))) (and (=> (= (ControlFlow 0 5) 3) anon21_Then_correct) (=> (= (ControlFlow 0 5) 4) anon21_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon19_Else_correct  (=> (< |ltl#0@0| (LitInt 3)) (and (=> (= (ControlFlow 0 25) 5) anon20_Then_correct) (=> (= (ControlFlow 0 25) 19) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (<= (LitInt 3) |ltl#0@0|) (= |newtype$check#2@0| (LitInt 35))) (and (=> (= (ControlFlow 0 20) (- 0 24)) (and (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 10000)) (or (not (= |newtype$check#2@0| 22)) (not true)))) (=> (and (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 10000)) (or (not (= |newtype$check#2@0| 22)) (not true))) (and (=> (= (ControlFlow 0 20) (- 0 23)) (or (not (= |newtype$check#2@0| 10)) (not true))) (=> (or (not (= |newtype$check#2@0| 10)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (or (not (= |newtype$check#2@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (=> (and (or (not (= |newtype$check#2@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (< |newtype$check#2@0| 200) (or (not (= |newtype$check#2@0| 16)) (not true)))) (=> (and (< |newtype$check#2@0| 200) (or (not (= |newtype$check#2@0| 16)) (not true))) (and (=> (= (ControlFlow 0 20) 5) anon20_Then_correct) (=> (= (ControlFlow 0 20) 19) anon20_Else_correct)))))))))))))
(let ((anon18_Then_correct  (=> (and (and (and (and (and (and (<= (LitInt 0) |ltl#0@0|) (< |ltl#0@0| 10000)) (or (not (= |ltl#0@0| 22)) (not true))) (or (not (= |ltl#0@0| 10)) (not true))) (and (or (not (= |ltl#0@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (and (< |ltl#0@0| 200) (or (not (= |ltl#0@0| 16)) (not true)))) (= |newtype$check#1@0| (LitInt 3))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (and (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 10000)) (or (not (= |newtype$check#1@0| 22)) (not true)))) (=> (and (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 10000)) (or (not (= |newtype$check#1@0| 22)) (not true))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (or (not (= |newtype$check#1@0| 10)) (not true))) (=> (or (not (= |newtype$check#1@0| 10)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (or (not (= |newtype$check#1@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (=> (and (or (not (= |newtype$check#1@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (< |newtype$check#1@0| 200) (or (not (= |newtype$check#1@0| 16)) (not true)))) (=> (and (< |newtype$check#1@0| 200) (or (not (= |newtype$check#1@0| 16)) (not true))) (and (=> (= (ControlFlow 0 26) 20) anon19_Then_correct) (=> (= (ControlFlow 0 26) 25) anon19_Else_correct)))))))))))))
(let ((anon18_Else_correct  (=> (and (not (and (and (and (and (and (<= (LitInt 0) |ltl#0@0|) (< |ltl#0@0| 10000)) (or (not (= |ltl#0@0| 22)) (not true))) (or (not (= |ltl#0@0| 10)) (not true))) (and (or (not (= |ltl#0@0| 34)) (not true)) (= (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TBool))) (|Seq#Length| (Lit SeqType (TypeTests.__default.EmptySequence TChar)))))) (and (< |ltl#0@0| 200) (or (not (= |ltl#0@0| 16)) (not true))))) (= (ControlFlow 0 2) 1)) anon13_correct)))
(let ((anon6_correct  (=> (= |t#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.TypeTests.MyChar |s#0@0|))) (and (=> (= (ControlFlow 0 31) 26) anon18_Then_correct) (=> (= (ControlFlow 0 31) 2) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box charType |e#0@0|))) (= (ControlFlow 0 34) 31)) anon6_correct)))
(let ((anon17_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box charType |e#0@0|)) (= (ControlFlow 0 33) 31)) anon6_correct)))
(let ((anon16_Then_correct  (=> ($Is charType |e#0@0| Tclass.TypeTests.MyChar) (and (=> (= (ControlFlow 0 35) 33) anon17_Then_correct) (=> (= (ControlFlow 0 35) 34) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (not ($Is charType |e#0@0| Tclass.TypeTests.MyChar)) (= (ControlFlow 0 32) 31)) anon6_correct)))
(let ((anon3_correct  (=> (= |s#0@0| (|Set#FromBoogieMap| (|lambda#1| TChar |smallCharSet#0@0|))) (and (=> (= (ControlFlow 0 36) 35) anon16_Then_correct) (=> (= (ControlFlow 0 36) 32) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (|Set#IsMember| |smallCharSet#0@0| ($Box charType |d#0@0|))) (= (ControlFlow 0 39) 36)) anon3_correct)))
(let ((anon15_Then_correct  (=> (and (|Set#IsMember| |smallCharSet#0@0| ($Box charType |d#0@0|)) (= (ControlFlow 0 38) 36)) anon3_correct)))
(let ((anon14_Then_correct  (=> ($Is charType |d#0@0| TChar) (and (=> (= (ControlFlow 0 40) 38) anon15_Then_correct) (=> (= (ControlFlow 0 40) 39) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not ($Is charType |d#0@0| TChar)) (= (ControlFlow 0 37) 36)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (= |r#0@0| (LitReal 3.14)) (= |i#0@0| (LitInt 100))) (=> (and (and (= |ch#0@0| (Lit charType (|char#FromInt| 99))) (= |ord#0@0| (Lit BoxType (|ORD#FromNat| 9876)))) (and (= |b7#0@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1001101)))) (= |b129#0@0| (U_2_bv129 (Lit bv129Type (bv129_2_U #b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001)))))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (|ORD#IsNat| |ord#0@0|)) (=> (|ORD#IsNat| |ord#0@0|) (=> (= |smallCharSet#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box charType (Lit charType (|char#FromInt| 55)))) ($Box charType (Lit charType (|char#FromInt| 68)))) ($Box charType (Lit charType (|char#FromInt| 88)))) ($Box charType (Lit charType (|char#FromInt| 100)))) ($Box charType (Lit charType (|char#FromInt| 120)))) ($Box charType (Lit charType (|char#FromInt| 64)))))) (and (=> (= (ControlFlow 0 41) 40) anon14_Then_correct) (=> (= (ControlFlow 0 41) 37) anon14_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($Is charType |ch#0| TChar) true)) (and (and ($Is SetType |smallCharSet#0| (TSet TChar)) ($IsAlloc SetType |smallCharSet#0| (TSet TChar) $Heap@@0)) true)) (=> (and (and (and (and ($Is SetType |s#0| (TSet TChar)) ($IsAlloc SetType |s#0| (TSet TChar) $Heap@@0)) true) (and (and ($Is SetType |t#0| (TSet Tclass.TypeTests.MyChar)) ($IsAlloc SetType |t#0| (TSet Tclass.TypeTests.MyChar) $Heap@@0)) true)) (and (and (and ($Is SetType |u#0| (TSet Tclass.TypeTests.Little)) ($IsAlloc SetType |u#0| (TSet Tclass.TypeTests.Little) $Heap@@0)) true) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 43) 41)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
