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
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.aexp () T@U)
(declare-fun |##_module.aexp.N| () T@U)
(declare-fun |##_module.aexp.V| () T@U)
(declare-fun |##_module.aexp.Plus| () T@U)
(declare-fun tytagFamily$aexp () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.aexp.Plus| (T@U T@U) T@U)
(declare-fun Tclass._module.aexp () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.aexp.V| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.plus (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.plus#canCall| (T@U T@U) Bool)
(declare-fun _module.aexp.N_q (T@U) Bool)
(declare-fun |#_module.aexp.N| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.aexp.n (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.aexp.V_q (T@U) Bool)
(declare-fun _module.aexp.Plus_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun _module.aexp._h1 (T@U) T@U)
(declare-fun _module.aexp._h2 (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.aexp._h0 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(declare-fun SeqType () T@T)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._module.aexp |##_module.aexp.N| |##_module.aexp.V| |##_module.aexp.Plus| tytagFamily$aexp)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp)  (and ($Is DatatypeTypeType |a#26#0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a#26#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |751|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#22#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#22#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#0#0| i))) (DtRank (|#_module.aexp.V| |a#22#0#0|))))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |745|
 :pattern ( (|Seq#Index| |a#22#0#0| i) (|#_module.aexp.V| |a#22#0#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0| T@U) (|a1#0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0| Tclass._module.aexp)))) (= (_module.__default.plus (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)) (ite  (and (_module.aexp.N_q (Lit DatatypeTypeType |a0#0|)) (_module.aexp.N_q (Lit DatatypeTypeType |a1#0|))) (|#_module.aexp.N| (LitInt (+ (_module.aexp.n (Lit DatatypeTypeType |a0#0|)) (_module.aexp.n (Lit DatatypeTypeType |a1#0|))))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a0#0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a0#0|))) (LitInt 0)) |a1#0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a1#0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a1#0|))) (LitInt 0)) |a0#0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|))) (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.__default.plus (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@0| T@U) (|a1#0@@0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@0| |a1#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@0| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@0| Tclass._module.aexp)))) ($Is DatatypeTypeType (_module.__default.plus |a0#0@@0| |a1#0@@0|) Tclass._module.aexp))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |613|
 :pattern ( (_module.__default.plus |a0#0@@0| |a1#0@@0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((d T@U) ) (! (= (_module.aexp.N_q d) (= (DatatypeCtorId d) |##_module.aexp.N|))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (_module.aexp.N_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.aexp.V_q d@@0) (= (DatatypeCtorId d@@0) |##_module.aexp.V|))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( (_module.aexp.V_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.aexp.Plus_q d@@1) (= (DatatypeCtorId d@@1) |##_module.aexp.Plus|))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( (_module.aexp.Plus_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.aexp.Plus_q d@@2) (exists ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= d@@2 (|#_module.aexp.Plus| |a#25#0#0| |a#25#1#0|))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |749|
)))
 :qid |unknown.0:0|
 :skolemid |750|
 :pattern ( (_module.aexp.Plus_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.aexp.N_q d@@3) (exists ((|a#13#0#0| Int) ) (! (= d@@3 (|#_module.aexp.N| |a#13#0#0|))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |731|
)))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.aexp.N_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.aexp.V_q d@@4) (exists ((|a#18#0#0| T@U) ) (! (= d@@4 (|#_module.aexp.V| |a#18#0#0|))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |739|
)))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.aexp.V_q d@@4))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.aexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.aexp)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx Tclass._module.aexp))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (= (Ctor charType) 4))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|)) |##_module.aexp.Plus|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |747|
 :pattern ( (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (_module.aexp._h1 (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|)) |a#28#0#0|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |755|
 :pattern ( (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) ) (! (= (_module.aexp._h2 (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|)) |a#30#1#0|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |757|
 :pattern ( (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSeq (TSeq t@@0)) t@@0)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSeq t@@1)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.aexp.N| |a#12#0#0|)) |##_module.aexp.N|)
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |729|
 :pattern ( (|#_module.aexp.N| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| Int) ) (! (= (_module.aexp.n (|#_module.aexp.N| |a#16#0#0|)) |a#16#0#0|)
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |736|
 :pattern ( (|#_module.aexp.N| |a#16#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.V| |a#17#0#0|)) |##_module.aexp.V|)
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |737|
 :pattern ( (|#_module.aexp.V| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (_module.aexp._h0 (|#_module.aexp.V| |a#21#0#0|)) |a#21#0#0|)
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |744|
 :pattern ( (|#_module.aexp.V| |a#21#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (< (DtRank |a#29#0#0|) (DtRank (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |756|
 :pattern ( (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) ) (! (< (DtRank |a#31#1#0|) (DtRank (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |758|
 :pattern ( (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp) ($Is intType (int_2_U |a#14#0#0|) TInt))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |733|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (< (|Seq#Rank| |a#23#0#0|) (DtRank (|#_module.aexp.V| |a#23#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |746|
 :pattern ( (|#_module.aexp.V| |a#23#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |842|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass._module.aexp) (or (or (_module.aexp.N_q d@@5) (_module.aexp.V_q d@@5)) (_module.aexp.Plus_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.aexp.Plus_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.aexp))
 :pattern ( (_module.aexp.V_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.aexp))
 :pattern ( (_module.aexp.N_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.aexp))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@2)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@2))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@2)))
)))
(assert (= (Tag Tclass._module.aexp) Tagclass._module.aexp))
(assert (= (TagFamily Tclass._module.aexp) tytagFamily$aexp))
(assert (forall ((|a#19#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp) ($Is SeqType |a#19#0#0| (TSeq TChar)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |741|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@1| T@U) (|a1#0@@1| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@1| |a1#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@1| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@1| Tclass._module.aexp)))) (= (_module.__default.plus |a0#0@@1| |a1#0@@1|) (ite  (and (_module.aexp.N_q |a0#0@@1|) (_module.aexp.N_q |a1#0@@1|)) (|#_module.aexp.N| (+ (_module.aexp.n |a0#0@@1|) (_module.aexp.n |a1#0@@1|))) (ite (_module.aexp.N_q |a0#0@@1|) (ite (= (_module.aexp.n |a0#0@@1|) (LitInt 0)) |a1#0@@1| (|#_module.aexp.Plus| |a0#0@@1| |a1#0@@1|)) (ite (_module.aexp.N_q |a1#0@@1|) (ite (= (_module.aexp.n |a1#0@@1|) (LitInt 0)) |a0#0@@1| (|#_module.aexp.Plus| |a0#0@@1| |a1#0@@1|)) (|#_module.aexp.Plus| |a0#0@@1| |a1#0@@1|))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |615|
 :pattern ( (_module.__default.plus |a0#0@@1| |a1#0@@1|))
))))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (= (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)) (Lit DatatypeTypeType (|#_module.aexp.Plus| |a#27#0#0| |a#27#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |754|
 :pattern ( (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (|#_module.aexp.N| (LitInt |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.N| |a#15#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |735|
 :pattern ( (|#_module.aexp.N| (LitInt |a#15#0#0|)))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.V| |a#20#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |743|
 :pattern ( (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@0 (TSeq t0@@1)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@0))) ($IsBox (|Seq#Index| v@@0 i@@0) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@0 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@0 (TSeq t0@@1)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is charType v@@2 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@2 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a0#0@@2| () T@U)
(declare-fun |a1#0@@2| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.plus)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon21_Else_correct true))
(let ((anon21_Then_correct true))
(let ((anon20_Then_correct  (=> (_module.aexp.N_q |a0#0@@2|) (and (=> (= (ControlFlow 0 13) (- 0 14)) (_module.aexp.N_q |a0#0@@2|)) (=> (_module.aexp.N_q |a0#0@@2|) (and (=> (= (ControlFlow 0 13) 11) anon21_Then_correct) (=> (= (ControlFlow 0 13) 12) anon21_Else_correct)))))))
(let ((anon23_Else_correct true))
(let ((anon23_Then_correct true))
(let ((anon22_Then_correct  (=> (_module.aexp.N_q |a1#0@@2|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (_module.aexp.N_q |a1#0@@2|)) (=> (_module.aexp.N_q |a1#0@@2|) (and (=> (= (ControlFlow 0 8) 6) anon23_Then_correct) (=> (= (ControlFlow 0 8) 7) anon23_Else_correct)))))))
(let ((anon22_Else_correct true))
(let ((anon20_Else_correct  (=> (not (_module.aexp.N_q |a0#0@@2|)) (and (=> (= (ControlFlow 0 10) 8) anon22_Then_correct) (=> (= (ControlFlow 0 10) 5) anon22_Else_correct)))))
(let ((anon19_Else_correct  (=> (not (and (_module.aexp.N_q |a0#0@@2|) (_module.aexp.N_q |a1#0@@2|))) (and (=> (= (ControlFlow 0 15) 13) anon20_Then_correct) (=> (= (ControlFlow 0 15) 10) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (_module.aexp.N_q |a0#0@@2|) (_module.aexp.N_q |a1#0@@2|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (_module.aexp.N_q |a0#0@@2|)) (=> (_module.aexp.N_q |a0#0@@2|) (=> (= (ControlFlow 0 3) (- 0 2)) (_module.aexp.N_q |a1#0@@2|)))))))
(let ((anon18_Else_correct  (=> (not (_module.aexp.N_q |a0#0@@2|)) (and (=> (= (ControlFlow 0 17) 3) anon19_Then_correct) (=> (= (ControlFlow 0 17) 15) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (_module.aexp.N_q |a0#0@@2|) (and (=> (= (ControlFlow 0 16) 3) anon19_Then_correct) (=> (= (ControlFlow 0 16) 15) anon19_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 18) 1) anon17_Then_correct) (=> (= (ControlFlow 0 18) 16) anon18_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a0#0@@2| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@2| Tclass._module.aexp)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 19) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
