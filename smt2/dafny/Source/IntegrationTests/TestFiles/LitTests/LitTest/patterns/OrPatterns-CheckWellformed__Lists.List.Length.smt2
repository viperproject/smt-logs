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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.Lists.List () T@U)
(declare-fun |##Lists.List.Nil| () T@U)
(declare-fun |##Lists.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun Lists.List.Length (T@U T@U T@U) Int)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Lists.List.Length#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Lists.List (T@U) T@U)
(declare-fun Lists.List.Nil_q (T@U) Bool)
(declare-fun Lists.List.cdr (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Lists.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#Lists.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lists.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Lists.List.car (T@U) T@U)
(declare-fun Tclass.Lists.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.Lists.List |##Lists.List.Nil| |##Lists.List.Cons| tytagFamily$nat tytagFamily$List)
)
(assert (forall ((Lists.List$T T@U) ($ly T@U) (this T@U) ) (! (= (Lists.List.Length Lists.List$T $ly this) (Lists.List.Length Lists.List$T $LZ this))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (Lists.List.Length Lists.List$T (AsFuelBottom $ly) this))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |829|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Lists.List$T@@0 T@U) ($ly@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@0 (Lit DatatypeTypeType this@@0)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 (Tclass.Lists.List Lists.List$T@@0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Lists.List.Nil_q (Lit DatatypeTypeType this@@0)))))) (let ((|t#3| (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType this@@0)))))
(|Lists.List.Length#canCall| Lists.List$T@@0 |t#3|))) (= (Lists.List.Length Lists.List$T@@0 ($LS $ly@@0) (Lit DatatypeTypeType this@@0)) (ite (Lists.List.Nil_q (Lit DatatypeTypeType this@@0)) 0 (let ((|t#2| (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType this@@0)))))
(LitInt (+ 1 (Lists.List.Length Lists.List$T@@0 ($LS $ly@@0) |t#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1004|
 :pattern ( (Lists.List.Length Lists.List$T@@0 ($LS $ly@@0) (Lit DatatypeTypeType this@@0)))
))))
(assert (forall ((Lists.List$T@@1 T@U) ($ly@@1 T@U) (this@@1 T@U) ) (! (= (Lists.List.Length Lists.List$T@@1 ($LS $ly@@1) this@@1) (Lists.List.Length Lists.List$T@@1 $ly@@1 this@@1))
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (Lists.List.Length Lists.List$T@@1 ($LS $ly@@1) this@@1))
)))
(assert (= (DatatypeCtorId |#Lists.List.Nil|) |##Lists.List.Nil|))
(assert (forall ((Lists.List$T@@2 T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2) $h@@0))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2) $h@@0))
)))
(assert (forall ((Lists.List$T@@3 T@U) ) (! ($Is DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@3))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($Is DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@3)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |501|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |499|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Lists.List$T@@4 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Lists.List Lists.List$T@@4))  (and ($IsBox |a#6#0#0| Lists.List$T@@4) ($Is DatatypeTypeType |a#6#1#0| (Tclass.Lists.List Lists.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($Is DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Lists.List Lists.List$T@@4)))
)))
(assert (forall ((d T@U) ) (! (= (Lists.List.Nil_q d) (= (DatatypeCtorId d) |##Lists.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (Lists.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Lists.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Lists.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (Lists.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |510|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Lists.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Lists.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |OrPatternsdfy.35:33|
 :skolemid |983|
)))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (Lists.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Lists.List.Nil_q d@@2) (= d@@2 |#Lists.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |978|
 :pattern ( (Lists.List.Nil_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Lists.List$T@@5 T@U) ($ly@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@5 this@@2) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 (Tclass.Lists.List Lists.List$T@@5)))) (and (=> (not (Lists.List.Nil_q this@@2)) (let ((|t#1| (Lists.List.cdr this@@2)))
(|Lists.List.Length#canCall| Lists.List$T@@5 |t#1|))) (= (Lists.List.Length Lists.List$T@@5 ($LS $ly@@2) this@@2) (ite (Lists.List.Nil_q this@@2) 0 (let ((|t#0| (Lists.List.cdr this@@2)))
(+ 1 (Lists.List.Length Lists.List$T@@5 $ly@@2 |t#0|)))))))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (Lists.List.Length Lists.List$T@@5 ($LS $ly@@2) this@@2))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |523|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((Lists.List$T@@6 T@U) ) (!  (and (= (Tag (Tclass.Lists.List Lists.List$T@@6)) Tagclass.Lists.List) (= (TagFamily (Tclass.Lists.List Lists.List$T@@6)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( (Tclass.Lists.List Lists.List$T@@6))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((Lists.List$T@@7 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)) (or (Lists.List.Nil_q d@@3) (Lists.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( (Lists.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)))
 :pattern ( (Lists.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |522|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Lists.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Lists.List.Cons|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |981|
 :pattern ( (|#Lists.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Lists.List.car (|#Lists.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |990|
 :pattern ( (|#Lists.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Lists.List.cdr (|#Lists.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |992|
 :pattern ( (|#Lists.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((Lists.List$T@@8 T@U) ) (! (= (Tclass.Lists.List_0 (Tclass.Lists.List Lists.List$T@@8)) Lists.List$T@@8)
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( (Tclass.Lists.List Lists.List$T@@8))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |509|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Lists.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |991|
 :pattern ( (|#Lists.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Lists.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |993|
 :pattern ( (|#Lists.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (Lists.List$T@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Lists.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Lists.List Lists.List$T@@9) $h@@1))) ($IsAllocBox (Lists.List.car d@@4) Lists.List$T@@9 $h@@1))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsAllocBox (Lists.List.car d@@4) Lists.List$T@@9 $h@@1))
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
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |2643|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |568|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((Lists.List$T@@10 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Lists.List Lists.List$T@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.Lists.List Lists.List$T@@10))))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( ($IsBox bx@@0 (Tclass.Lists.List Lists.List$T@@10)))
)))
(assert (forall ((d@@6 T@U) (Lists.List$T@@11 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Lists.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Lists.List Lists.List$T@@11) $h@@2))) ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@6) (Tclass.Lists.List Lists.List$T@@11) $h@@2))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@6) (Tclass.Lists.List Lists.List$T@@11) $h@@2))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= |#Lists.List.Nil| (Lit DatatypeTypeType |#Lists.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Lists.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Lists.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |989|
 :pattern ( (|#Lists.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |502|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |500|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Lists.List$T@@12 T@U) ($ly@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@12 this@@3) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 (Tclass.Lists.List Lists.List$T@@12)))) (<= (LitInt 0) (Lists.List.Length Lists.List$T@@12 $ly@@3 this@@3)))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (Lists.List.Length Lists.List$T@@12 $ly@@3 this@@3))
))))
(assert (forall ((Lists.List$T@@13 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@3)  (and ($IsAllocBox |a#6#0#0@@0| Lists.List$T@@13 $h@@3) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Lists.List Lists.List$T@@13) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@4 () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun Lists.List$T@@14 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun StartFuelAssert_Lists.List.Length () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun StartFuel_Lists.List.Length () T@U)
(declare-fun BaseFuel_Lists.List.Length () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Lists.List.Length)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= this@@4 (|#Lists.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and ($IsBox |_mcc#0#0| Lists.List$T@@14) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.Lists.List Lists.List$T@@14))) (=> (and (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.Lists.List Lists.List$T@@14))) (and (= |t#Z#0@0| |let#0#0#0|) ($IsAllocBox ($Box DatatypeTypeType |t#Z#0@0|) (Tclass.Lists.List Lists.List$T@@14) $Heap))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |t#Z#0@0|) (DtRank this@@4))) (=> (< (DtRank |t#Z#0@0|) (DtRank this@@4)) (=> (and (|Lists.List.Length#canCall| Lists.List$T@@14 |t#Z#0@0|) (= (ControlFlow 0 5) (- 0 4))) ($Is intType (int_2_U (+ 1 (Lists.List.Length Lists.List$T@@14 StartFuelAssert_Lists.List.Length |t#Z#0@0|))) Tclass._System.nat)))))))))
(let ((anon9_Else_correct  (=> (or (not (= this@@4 |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 8) 5) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (= this@@4 |#Lists.List.Nil|) (= (ControlFlow 0 3) (- 0 2))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= StartFuel_Lists.List.Length ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length))))))) (and (= StartFuelAssert_Lists.List.Length ($LS ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length))))))) (= (AsFuelBottom BaseFuel_Lists.List.Length) BaseFuel_Lists.List.Length))) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType this@@4 (Tclass.Lists.List Lists.List$T@@14)) ($IsAlloc DatatypeTypeType this@@4 (Tclass.Lists.List Lists.List$T@@14) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
