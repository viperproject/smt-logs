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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun NewSyntax.__default.F (Int) T@U)
(declare-fun |NewSyntax.__default.F#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (Int T@U Int) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |lambda#1| (Int Int T@U Int) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |lambda#6| (Int T@U Int Int) T@U)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#3| (Int T@U) T@U)
(declare-fun |lambda#2| (Int T@U Int Int) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|NewSyntax.__default.F#canCall| |x#0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0|) (< |x#0| 3)))) (= (NewSyntax.__default.F |x#0|) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (- 0 5))))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt (- 0 12))))))))
 :qid |QuantificationNewSyntaxdfy.19:20|
 :skolemid |494|
 :pattern ( (NewSyntax.__default.F |x#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|NewSyntax.__default.F#canCall| (LitInt |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@1|) (U_2_bool (Lit boolType (bool_2_U (< |x#0@@1| 3))))))) (= (NewSyntax.__default.F (LitInt |x#0@@1|)) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (- 0 5))))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt (- 0 12))))))))
 :qid |QuantificationNewSyntaxdfy.19:20|
 :weight 3
 :skolemid |495|
 :pattern ( (NewSyntax.__default.F (LitInt |x#0@@1|)))
))))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((|l#0| Int) (|l#1| T@U) (|l#2| Int) (|$y#3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$y#3|)) (exists ((|x#6| Int) (|y#6| Int) ) (!  (and (and (<= |l#0| |x#6|) (and (and (|Seq#Contains| |l#1| ($Box intType (int_2_U |x#6|))) (< |x#6| |l#2|)) (|Seq#Contains| (NewSyntax.__default.F |x#6|) ($Box intType (int_2_U |y#6|))))) (= |$y#3| ($Box intType (int_2_U |y#6|))))
 :qid |QuantificationNewSyntaxdfy.14:18|
 :skolemid |486|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#6|) ($Box intType (int_2_U |y#6|))))
)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2|) |$y#3|))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| T@U) (|l#3| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) |$y#0|)) (exists ((|x#0@@2| Int) (|y#0| Int) ) (!  (and (and (and (<= |l#0@@0| |x#0@@2|) (<= |l#1@@0| |y#0|)) (and (|Seq#Contains| |l#2@@0| ($Box intType (int_2_U |x#0@@2|))) (= |y#0| (Div |l#3| |x#0@@2|)))) (= |$y#0| ($Box intType (int_2_U |y#0|))))
 :qid |QuantificationNewSyntaxdfy.11:18|
 :skolemid |482|
)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) |$y#0|))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h) ($IsAlloc T@@1 v@@2 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| T@U) (|l#2@@1| Int) (|l#3@@0| Int) (|$y#5| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#6| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@0|) |$y#5|)) (exists ((|x#10| Int) (|y#10| Int) ) (!  (and (and (<= |l#0@@1| |x#10|) (and (and (and (|Seq#Contains| |l#1@@1| ($Box intType (int_2_U |x#10|))) (< |x#10| |l#2@@1|)) (|Seq#Contains| (NewSyntax.__default.F |x#10|) ($Box intType (int_2_U |y#10|)))) (<= |l#3@@0| |y#10|))) (= |$y#5| ($Box intType (int_2_U |y#10|))))
 :qid |QuantificationNewSyntaxdfy.16:18|
 :skolemid |490|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#10|) ($Box intType (int_2_U |y#10|))))
)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (MapType0Select BoxType boolType (|lambda#6| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@0|) |$y#5|))
)))
(assert (forall ((s@@3 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@3 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@3 x@@7))
)))
(assert (forall ((x@@8 Int) (y Int) ) (! (= (Div x@@8 y) (div x@@8 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@1) ($Is T@@2 v@@4 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@1))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@0))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@1) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSet (TSet t@@2)) t@@2)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSet t@@3)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
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
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@1| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@2| |l#3@@1|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o) |l#2@@2|)))) |l#3@@1|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |496|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@2| |l#3@@1|) $o $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@5 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@6)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@6))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@6)))
)))
(assert (forall ((bx@@6 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@7)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@4| Int) ) (!  (=> (or (|NewSyntax.__default.F#canCall| |x#0@@4|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@4|) (< |x#0@@4| 3)))) ($Is SeqType (NewSyntax.__default.F |x#0@@4|) (TSeq TInt)))
 :qid |QuantificationNewSyntaxdfy.19:20|
 :skolemid |492|
 :pattern ( (NewSyntax.__default.F |x#0@@4|))
))))
(assert (forall ((|l#0@@3| Int) (|l#1@@3| T@U) (|$y#2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#3| |l#0@@3| |l#1@@3|) |$y#2|)) (exists ((|x#4| Int) (|y#4| Int) ) (!  (and (and (<= |l#0@@3| |x#4|) (and (|Seq#Contains| |l#1@@3| ($Box intType (int_2_U |x#4|))) (|Seq#Contains| (NewSyntax.__default.F |x#4|) ($Box intType (int_2_U |y#4|))))) (= |$y#2| ($Box intType (int_2_U |y#4|))))
 :qid |QuantificationNewSyntaxdfy.13:18|
 :skolemid |484|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#4|) ($Box intType (int_2_U |y#4|))))
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (MapType0Select BoxType boolType (|lambda#3| |l#0@@3| |l#1@@3|) |$y#2|))
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
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@4| T@U) (|l#2@@3| Int) (|l#3@@2| Int) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0@@4| |l#1@@4| |l#2@@3| |l#3@@2|) |$y#1|)) (exists ((|x#2| Int) (|y#2| Int) ) (!  (and (and (<= |l#0@@4| |x#2|) (and (and (|Seq#Contains| |l#1@@4| ($Box intType (int_2_U |x#2|))) (< |l#2@@3| |x#2|)) (= |y#2| (Div |l#3@@2| |x#2|)))) (= |$y#1| ($Box intType (int_2_U |y#2|))))
 :qid |QuantificationNewSyntaxdfy.12:18|
 :skolemid |483|
)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0@@4| |l#1@@4| |l#2@@3| |l#3@@2|) |$y#1|))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |numbers#0@0| () T@U)
(declare-fun |x#11@0| () Int)
(declare-fun |y#11@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |_v4#0@0| () T@U)
(declare-fun |x#9@0| () Int)
(declare-fun |y#9@0| () Int)
(declare-fun |_v3#0@0| () T@U)
(declare-fun |x#7@0| () Int)
(declare-fun |y#7@0| () Int)
(declare-fun |_v2#0@0| () T@U)
(declare-fun |x#5@0| () Int)
(declare-fun |y#5@0| () Int)
(declare-fun |_v1#0@0| () T@U)
(declare-fun |x#3@0| () Int)
(declare-fun |y#3@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |_v0#0@0| () T@U)
(declare-fun |x#1@0| () Int)
(declare-fun |y#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |numbers#0| () T@U)
(declare-fun |_v0#0| () T@U)
(declare-fun |_v1#0| () T@U)
(declare-fun |_v2#0| () T@U)
(declare-fun |_v3#0| () T@U)
(declare-fun |_v4#0| () T@U)
(declare-fun |_v5#0| () T@U)
(set-info :boogie-vc-id Impl$$NewSyntax.__default.M)
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
 (=> (= (ControlFlow 0 0) 70) (let ((anon40_correct true))
(let ((anon63_Else_correct  (=> (and (not (and (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#11@0|) ($Box intType (int_2_U |y#11@0|)))) (<= (LitInt 0) |y#11@0|))) (= (ControlFlow 0 6) 1)) anon40_correct)))
(let ((anon63_Then_correct  (=> (and (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#11@0|) ($Box intType (int_2_U |y#11@0|)))) (<= (LitInt 0) |y#11@0|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= (LitInt 0) |y#11@0|)) (=> (<= (LitInt 0) |y#11@0|) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= (LitInt 0) |y#11@0|)) (=> (<= (LitInt 0) |y#11@0|) (=> (= (ControlFlow 0 3) 1) anon40_correct))))))))
(let ((anon62_Else_correct  (=> (not (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#11@0|) ($Box intType (int_2_U |y#11@0|))))) (and (=> (= (ControlFlow 0 8) 3) anon63_Then_correct) (=> (= (ControlFlow 0 8) 6) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#11@0|) ($Box intType (int_2_U |y#11@0|)))) (and (=> (= (ControlFlow 0 7) 3) anon63_Then_correct) (=> (= (ControlFlow 0 7) 6) anon63_Else_correct)))))
(let ((anon61_Else_correct  (=> (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3))) (and (=> (= (ControlFlow 0 11) 7) anon62_Then_correct) (=> (= (ControlFlow 0 11) 8) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (< |x#11@0| 3)) ($IsAlloc intType (int_2_U |x#11@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< |x#11@0| 3)) (=> (and (< |x#11@0| 3) (|NewSyntax.__default.F#canCall| |x#11@0|)) (and (=> (= (ControlFlow 0 9) 7) anon62_Then_correct) (=> (= (ControlFlow 0 9) 8) anon62_Else_correct)))))))
(let ((anon60_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|)))) (and (=> (= (ControlFlow 0 13) 9) anon61_Then_correct) (=> (= (ControlFlow 0 13) 11) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#11@0|))) (and (=> (= (ControlFlow 0 12) 9) anon61_Then_correct) (=> (= (ControlFlow 0 12) 11) anon61_Else_correct)))))
(let ((anon59_Then_correct  (=> (<= (LitInt 0) |x#11@0|) (and (=> (= (ControlFlow 0 14) 12) anon60_Then_correct) (=> (= (ControlFlow 0 14) 13) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (< |x#11@0| (LitInt 0)) (= (ControlFlow 0 2) 1)) anon40_correct)))
(let ((anon31_correct  (=> (and (forall ((|x#8| Int) (|y#8| T@U) ) (!  (=> (<= (LitInt 0) |x#8|) (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#8|))) (=> (< |x#8| 3) (|NewSyntax.__default.F#canCall| |x#8|))))
 :qid |QuantificationNewSyntaxdfy.15:18|
 :skolemid |489|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#8|) ($Box intType |y#8|)))
)) (= |_v4#0@0| (|Set#FromBoogieMap| (|lambda#4| (LitInt 0) |numbers#0@0| 3)))) (and (=> (= (ControlFlow 0 15) 14) anon59_Then_correct) (=> (= (ControlFlow 0 15) 2) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (not (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|))) (< |x#9@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#9@0|) ($Box intType (int_2_U |y#9@0|))))) (= (ControlFlow 0 20) 15)) anon31_correct)))
(let ((anon58_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|))) (< |x#9@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#9@0|) ($Box intType (int_2_U |y#9@0|)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (<= (LitInt 0) |y#9@0|)) (=> (<= (LitInt 0) |y#9@0|) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= (LitInt 0) |y#9@0|)) (=> (<= (LitInt 0) |y#9@0|) (=> (= (ControlFlow 0 17) 15) anon31_correct))))))))
(let ((anon57_Else_correct  (=> (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|))) (< |x#9@0| 3))) (and (=> (= (ControlFlow 0 23) 17) anon58_Then_correct) (=> (= (ControlFlow 0 23) 20) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|))) (< |x#9@0| 3)) ($IsAlloc intType (int_2_U |x#9@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< |x#9@0| 3)) (=> (and (< |x#9@0| 3) (|NewSyntax.__default.F#canCall| |x#9@0|)) (and (=> (= (ControlFlow 0 21) 17) anon58_Then_correct) (=> (= (ControlFlow 0 21) 20) anon58_Else_correct)))))))
(let ((anon56_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|)))) (and (=> (= (ControlFlow 0 25) 21) anon57_Then_correct) (=> (= (ControlFlow 0 25) 23) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#9@0|))) (and (=> (= (ControlFlow 0 24) 21) anon57_Then_correct) (=> (= (ControlFlow 0 24) 23) anon57_Else_correct)))))
(let ((anon55_Then_correct  (=> (<= (LitInt 0) |x#9@0|) (and (=> (= (ControlFlow 0 26) 24) anon56_Then_correct) (=> (= (ControlFlow 0 26) 25) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (< |x#9@0| (LitInt 0)) (= (ControlFlow 0 16) 15)) anon31_correct)))
(let ((anon24_correct  (=> (and (forall ((|x#6@@0| Int) (|y#6@@0| T@U) ) (!  (=> (<= (LitInt 0) |x#6@@0|) (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#6@@0|))) (=> (< |x#6@@0| 3) (|NewSyntax.__default.F#canCall| |x#6@@0|))))
 :qid |QuantificationNewSyntaxdfy.14:18|
 :skolemid |487|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#6@@0|) ($Box intType |y#6@@0|)))
)) (= |_v3#0@0| (|Set#FromBoogieMap| (|lambda#4| (LitInt 0) |numbers#0@0| 3)))) (and (=> (= (ControlFlow 0 27) 26) anon55_Then_correct) (=> (= (ControlFlow 0 27) 16) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|))) (< |x#7@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#7@0|) ($Box intType (int_2_U |y#7@0|))))) (= (ControlFlow 0 30) 27)) anon24_correct)))
(let ((anon54_Then_correct  (=> (and (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|))) (< |x#7@0| 3)) (|Seq#Contains| (NewSyntax.__default.F |x#7@0|) ($Box intType (int_2_U |y#7@0|)))) (= (ControlFlow 0 29) 27)) anon24_correct)))
(let ((anon53_Else_correct  (=> (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|))) (< |x#7@0| 3))) (and (=> (= (ControlFlow 0 33) 29) anon54_Then_correct) (=> (= (ControlFlow 0 33) 30) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|))) (< |x#7@0| 3)) ($IsAlloc intType (int_2_U |x#7@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (< |x#7@0| 3)) (=> (and (< |x#7@0| 3) (|NewSyntax.__default.F#canCall| |x#7@0|)) (and (=> (= (ControlFlow 0 31) 29) anon54_Then_correct) (=> (= (ControlFlow 0 31) 30) anon54_Else_correct)))))))
(let ((anon52_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|)))) (and (=> (= (ControlFlow 0 35) 31) anon53_Then_correct) (=> (= (ControlFlow 0 35) 33) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#7@0|))) (and (=> (= (ControlFlow 0 34) 31) anon53_Then_correct) (=> (= (ControlFlow 0 34) 33) anon53_Else_correct)))))
(let ((anon51_Then_correct  (=> (<= (LitInt 0) |x#7@0|) (and (=> (= (ControlFlow 0 36) 34) anon52_Then_correct) (=> (= (ControlFlow 0 36) 35) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (< |x#7@0| (LitInt 0)) (= (ControlFlow 0 28) 27)) anon24_correct)))
(let ((anon17_correct  (=> (and (forall ((|x#4@@0| Int) (|y#4@@0| T@U) ) (!  (=> (<= (LitInt 0) |x#4@@0|) (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#4@@0|))) (|NewSyntax.__default.F#canCall| |x#4@@0|)))
 :qid |QuantificationNewSyntaxdfy.13:18|
 :skolemid |485|
 :pattern ( (|Seq#Contains| (NewSyntax.__default.F |x#4@@0|) ($Box intType |y#4@@0|)))
)) (= |_v2#0@0| (|Set#FromBoogieMap| (|lambda#3| (LitInt 0) |numbers#0@0|)))) (and (=> (= (ControlFlow 0 37) 36) anon51_Then_correct) (=> (= (ControlFlow 0 37) 28) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#5@0|))) (|Seq#Contains| (NewSyntax.__default.F |x#5@0|) ($Box intType (int_2_U |y#5@0|))))) (= (ControlFlow 0 40) 37)) anon17_correct)))
(let ((anon50_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#5@0|))) (|Seq#Contains| (NewSyntax.__default.F |x#5@0|) ($Box intType (int_2_U |y#5@0|)))) (= (ControlFlow 0 39) 37)) anon17_correct)))
(let ((anon49_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#5@0|)))) (and (=> (= (ControlFlow 0 43) 39) anon50_Then_correct) (=> (= (ControlFlow 0 43) 40) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#5@0|))) ($IsAlloc intType (int_2_U |x#5@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (< |x#5@0| 3)) (=> (and (< |x#5@0| 3) (|NewSyntax.__default.F#canCall| |x#5@0|)) (and (=> (= (ControlFlow 0 41) 39) anon50_Then_correct) (=> (= (ControlFlow 0 41) 40) anon50_Else_correct)))))))
(let ((anon48_Then_correct  (=> (<= (LitInt 0) |x#5@0|) (and (=> (= (ControlFlow 0 44) 41) anon49_Then_correct) (=> (= (ControlFlow 0 44) 43) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (< |x#5@0| (LitInt 0)) (= (ControlFlow 0 38) 37)) anon17_correct)))
(let ((anon12_correct  (=> (= |_v1#0@0| (|Set#FromBoogieMap| (|lambda#2| (LitInt 0) |numbers#0@0| 0 6))) (and (=> (= (ControlFlow 0 45) 44) anon48_Then_correct) (=> (= (ControlFlow 0 45) 38) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (not (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|))) (< 0 |x#3@0|)) (= |y#3@0| (Div 6 |x#3@0|)))) (= (ControlFlow 0 48) 45)) anon12_correct)))
(let ((anon47_Then_correct  (=> (and (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|))) (< 0 |x#3@0|)) (= |y#3@0| (Div 6 |x#3@0|))) (= (ControlFlow 0 47) 45)) anon12_correct)))
(let ((anon46_Else_correct  (=> (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|))) (< 0 |x#3@0|))) (and (=> (= (ControlFlow 0 52) 47) anon47_Then_correct) (=> (= (ControlFlow 0 52) 48) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|))) (< 0 |x#3@0|)) (and (=> (= (ControlFlow 0 49) (- 0 51)) (or (not (= |x#3@0| 0)) (not true))) (=> (or (not (= |x#3@0| 0)) (not true)) (=> (= |newtype$check#1@0| (Div 6 |x#3@0|)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= (LitInt 0) |newtype$check#1@0|)) (=> (<= (LitInt 0) |newtype$check#1@0|) (and (=> (= (ControlFlow 0 49) 47) anon47_Then_correct) (=> (= (ControlFlow 0 49) 48) anon47_Else_correct))))))))))
(let ((anon45_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|)))) (and (=> (= (ControlFlow 0 54) 49) anon46_Then_correct) (=> (= (ControlFlow 0 54) 52) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#3@0|))) (and (=> (= (ControlFlow 0 53) 49) anon46_Then_correct) (=> (= (ControlFlow 0 53) 52) anon46_Else_correct)))))
(let ((anon44_Then_correct  (=> (<= (LitInt 0) |x#3@0|) (and (=> (= (ControlFlow 0 55) 53) anon45_Then_correct) (=> (= (ControlFlow 0 55) 54) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (< |x#3@0| (LitInt 0)) (= (ControlFlow 0 46) 45)) anon12_correct)))
(let ((anon5_correct  (=> (= |_v0#0@0| (|Set#FromBoogieMap| (|lambda#1| (LitInt 0) (LitInt 0) |numbers#0@0| 6))) (and (=> (= (ControlFlow 0 56) 55) anon44_Then_correct) (=> (= (ControlFlow 0 56) 46) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#1@0|))) (= |y#1@0| (Div 6 |x#1@0|)))) (= (ControlFlow 0 59) 56)) anon5_correct)))
(let ((anon43_Then_correct  (=> (and (and (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#1@0|))) (= |y#1@0| (Div 6 |x#1@0|))) (= (ControlFlow 0 58) 56)) anon5_correct)))
(let ((anon42_Else_correct  (=> (not (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#1@0|)))) (and (=> (= (ControlFlow 0 63) 58) anon43_Then_correct) (=> (= (ControlFlow 0 63) 59) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (|Seq#Contains| |numbers#0@0| ($Box intType (int_2_U |x#1@0|))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (or (not (= |x#1@0| 0)) (not true))) (=> (or (not (= |x#1@0| 0)) (not true)) (=> (= |newtype$check#0@0| (Div 6 |x#1@0|)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (<= (LitInt 0) |newtype$check#0@0|)) (=> (<= (LitInt 0) |newtype$check#0@0|) (and (=> (= (ControlFlow 0 60) 58) anon43_Then_correct) (=> (= (ControlFlow 0 60) 59) anon43_Else_correct))))))))))
(let ((anon41_Then_correct  (=> (and (<= (LitInt 0) |x#1@0|) (<= (LitInt 0) |y#1@0|)) (and (=> (= (ControlFlow 0 64) 60) anon42_Then_correct) (=> (= (ControlFlow 0 64) 63) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (not (and (<= (LitInt 0) |x#1@0|) (<= (LitInt 0) |y#1@0|))) (= (ControlFlow 0 57) 56)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 65) (- 0 69)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 65) (- 0 68)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (and (=> (= (ControlFlow 0 65) (- 0 67)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (and (=> (= (ControlFlow 0 65) (- 0 66)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= |numbers#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) (and (=> (= (ControlFlow 0 65) 64) anon41_Then_correct) (=> (= (ControlFlow 0 65) 57) anon41_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is SeqType |numbers#0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |numbers#0| (TSeq Tclass._System.nat) $Heap)) true) (and (and ($Is SetType |_v0#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |_v0#0| (TSet Tclass._System.nat) $Heap)) true)) (and (and (and ($Is SetType |_v1#0| (TSet TInt)) ($IsAlloc SetType |_v1#0| (TSet TInt) $Heap)) true) (and (and ($Is SetType |_v2#0| (TSet TInt)) ($IsAlloc SetType |_v2#0| (TSet TInt) $Heap)) true))) (and (and (and (and ($Is SetType |_v3#0| (TSet TInt)) ($IsAlloc SetType |_v3#0| (TSet TInt) $Heap)) true) (and (and ($Is SetType |_v4#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |_v4#0| (TSet Tclass._System.nat) $Heap)) true)) (and (and (and ($Is SetType |_v5#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |_v5#0| (TSet Tclass._System.nat) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 70) 65))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 41) (- 42))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 19))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 60) (- 62))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
