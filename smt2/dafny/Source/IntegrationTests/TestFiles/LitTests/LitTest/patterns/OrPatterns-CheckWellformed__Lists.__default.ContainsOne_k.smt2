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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Lists.List () T@U)
(declare-fun |##Lists.List.Nil| () T@U)
(declare-fun |##Lists.List.Cons| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun Lists.List.Length (T@U T@U T@U) Int)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#Lists.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lists.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Lists.__default.ContainsOne_k (T@U) Bool)
(declare-fun |Lists.__default.ContainsOne_k#canCall| (T@U) Bool)
(declare-fun StartFuelAssert_Lists.List.Length () T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.Lists.List |##Lists.List.Nil| |##Lists.List.Cons| tytagFamily$List)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((Lists.List$T T@U) ($ly T@U) (this T@U) ) (! (= (Lists.List.Length Lists.List$T $ly this) (Lists.List.Length Lists.List$T $LZ this))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (Lists.List.Length Lists.List$T (AsFuelBottom $ly) this))
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
(assert (forall ((Lists.List$T@@2 T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2) $h))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2) $h))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|l#0| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne_k#canCall| (Lit DatatypeTypeType |l#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0| (Tclass.Lists.List TInt)) (= (LitInt (Lists.List.Length TInt StartFuelAssert_Lists.List.Length (Lit DatatypeTypeType |l#0|))) (LitInt 3))))) (= (Lists.__default.ContainsOne_k (Lit DatatypeTypeType |l#0|)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType |l#0|))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))))) (LitInt 1)) true true) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))))) (LitInt 1)) true true)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))))) (LitInt 1)) true true) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0|))))))))) (LitInt 1)) true false)))))
 :qid |OrPatternsdfy.49:26|
 :weight 3
 :skolemid |974|
 :pattern ( (Lists.__default.ContainsOne_k (Lit DatatypeTypeType |l#0|)))
))))
(assert (forall ((Lists.List$T@@7 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)) (or (Lists.List.Nil_q d@@3) (Lists.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( (Lists.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)))
 :pattern ( (Lists.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Lists.List Lists.List$T@@7)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |511|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |513|
 :pattern ( ($IsBox bx@@0 TBool))
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
(assert (forall ((d@@4 T@U) (Lists.List$T@@9 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Lists.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Lists.List Lists.List$T@@9) $h@@0))) ($IsAllocBox (Lists.List.car d@@4) Lists.List$T@@9 $h@@0))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsAllocBox (Lists.List.car d@@4) Lists.List$T@@9 $h@@0))
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
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2637|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |568|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((Lists.List$T@@10 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.Lists.List Lists.List$T@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.Lists.List Lists.List$T@@10))))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( ($IsBox bx@@1 (Tclass.Lists.List Lists.List$T@@10)))
)))
(assert (forall ((d@@6 T@U) (Lists.List$T@@11 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Lists.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Lists.List Lists.List$T@@11) $h@@1))) ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@6) (Tclass.Lists.List Lists.List$T@@11) $h@@1))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@6) (Tclass.Lists.List Lists.List$T@@11) $h@@1))
)))
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
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |545|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |547|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((Lists.List$T@@13 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| Lists.List$T@@13 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Lists.List Lists.List$T@@13) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|l#0@@1| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne_k#canCall| |l#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0@@1| (Tclass.Lists.List TInt)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |l#0@@1|) (LitInt 3))))) (= (Lists.__default.ContainsOne_k |l#0@@1|) (ite (= (U_2_int ($Unbox intType (Lists.List.car |l#0@@1|))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr |l#0@@1|)))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr |l#0@@1|)))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true false)))))
 :qid |OrPatternsdfy.49:26|
 :skolemid |973|
 :pattern ( (Lists.__default.ContainsOne_k |l#0@@1|))
))))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |524|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |526|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_mcc#5#0| () T@U)
(declare-fun |a#3#0#0@0| () T@U)
(declare-fun |a#3#1#0@0| () T@U)
(declare-fun |_mcc#4#0| () Int)
(declare-fun |a#4#0#0@0| () T@U)
(declare-fun |a#4#1#0@0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#2#0| () Int)
(declare-fun |_mcc#11#0| () T@U)
(declare-fun |a#6#0#0@0| () T@U)
(declare-fun |a#6#1#0@0| () T@U)
(declare-fun |_mcc#10#0| () Int)
(declare-fun |a#7#0#0@0| () T@U)
(declare-fun |a#7#1#0@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#19#0| () T@U)
(declare-fun |a#10#0#0@0| () T@U)
(declare-fun |a#10#1#0@0| () T@U)
(declare-fun |_mcc#18#0| () Int)
(declare-fun |a#11#0#0@0| () T@U)
(declare-fun |a#11#1#0@0| () T@U)
(declare-fun |_mcc#17#0| () T@U)
(declare-fun |_mcc#16#0| () Int)
(declare-fun |_mcc#25#0| () T@U)
(declare-fun |a#13#0#0@0| () T@U)
(declare-fun |a#13#1#0@0| () T@U)
(declare-fun |_mcc#24#0| () Int)
(declare-fun |a#14#0#0@0| () T@U)
(declare-fun |a#14#1#0@0| () T@U)
(declare-fun |l#0@@2| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun StartFuel_Lists.List.Length () T@U)
(declare-fun BaseFuel_Lists.List.Length () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Lists.__default.ContainsOne_k)
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
 (=> (= (ControlFlow 0 0) 92) (let ((anon72_Else_correct true))
(let ((anon72_Then_correct  (=> (and (= |_mcc#5#0| (|#Lists.List.Cons| |a#3#0#0@0| |a#3#1#0@0|)) (= (ControlFlow 0 82) (- 0 81))) false)))
(let ((anon71_Else_correct  (=> (or (not (= |_mcc#5#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 84) 82) anon72_Then_correct) (=> (= (ControlFlow 0 84) 83) anon72_Else_correct)))))
(let ((anon71_Then_correct true))
(let ((anon70_Then_correct  (=> (= |_mcc#4#0| (LitInt 1)) (and (=> (= (ControlFlow 0 85) 80) anon71_Then_correct) (=> (= (ControlFlow 0 85) 84) anon71_Else_correct)))))
(let ((anon74_Else_correct true))
(let ((anon74_Then_correct  (=> (and (= |_mcc#5#0| (|#Lists.List.Cons| |a#4#0#0@0| |a#4#1#0@0|)) (= (ControlFlow 0 76) (- 0 75))) false)))
(let ((anon73_Else_correct  (=> (or (not (= |_mcc#5#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 78) 76) anon74_Then_correct) (=> (= (ControlFlow 0 78) 77) anon74_Else_correct)))))
(let ((anon73_Then_correct true))
(let ((anon70_Else_correct  (=> (or (not (= |_mcc#4#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 79) 74) anon73_Then_correct) (=> (= (ControlFlow 0 79) 78) anon73_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (= |_mcc#3#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#4#0|)) |_mcc#5#0|)) ($Is DatatypeTypeType |_mcc#5#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 86) 85) anon70_Then_correct) (=> (= (ControlFlow 0 86) 79) anon70_Else_correct)))))
(let ((anon75_Else_correct true))
(let ((anon75_Then_correct  (=> (and (= |_mcc#3#0| |#Lists.List.Nil|) (= (ControlFlow 0 71) (- 0 70))) false)))
(let ((anon69_Else_correct  (=> (or (not (= |_mcc#3#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#4#0|)) |_mcc#5#0|))) (not true)) (and (=> (= (ControlFlow 0 73) 71) anon75_Then_correct) (=> (= (ControlFlow 0 73) 72) anon75_Else_correct)))))
(let ((anon68_Then_correct  (=> (= |_mcc#2#0| (LitInt 1)) (and (=> (= (ControlFlow 0 87) 86) anon69_Then_correct) (=> (= (ControlFlow 0 87) 73) anon69_Else_correct)))))
(let ((anon79_Else_correct true))
(let ((anon79_Then_correct  (=> (and (= |_mcc#11#0| (|#Lists.List.Cons| |a#6#0#0@0| |a#6#1#0@0|)) (= (ControlFlow 0 64) (- 0 63))) false)))
(let ((anon78_Else_correct  (=> (or (not (= |_mcc#11#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 66) 64) anon79_Then_correct) (=> (= (ControlFlow 0 66) 65) anon79_Else_correct)))))
(let ((anon78_Then_correct true))
(let ((anon77_Then_correct  (=> (= |_mcc#10#0| (LitInt 1)) (and (=> (= (ControlFlow 0 67) 62) anon78_Then_correct) (=> (= (ControlFlow 0 67) 66) anon78_Else_correct)))))
(let ((anon81_Else_correct true))
(let ((anon81_Then_correct  (=> (and (= |_mcc#11#0| (|#Lists.List.Cons| |a#7#0#0@0| |a#7#1#0@0|)) (= (ControlFlow 0 58) (- 0 57))) false)))
(let ((anon80_Else_correct  (=> (or (not (= |_mcc#11#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 60) 58) anon81_Then_correct) (=> (= (ControlFlow 0 60) 59) anon81_Else_correct)))))
(let ((anon80_Then_correct true))
(let ((anon77_Else_correct  (=> (or (not (= |_mcc#10#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 61) 56) anon80_Then_correct) (=> (= (ControlFlow 0 61) 60) anon80_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (= |_mcc#3#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#10#0|)) |_mcc#11#0|)) ($Is DatatypeTypeType |_mcc#11#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 68) 67) anon77_Then_correct) (=> (= (ControlFlow 0 68) 61) anon77_Else_correct)))))
(let ((anon82_Else_correct true))
(let ((anon82_Then_correct  (=> (and (= |_mcc#3#0| |#Lists.List.Nil|) (= (ControlFlow 0 53) (- 0 52))) false)))
(let ((anon76_Else_correct  (=> (or (not (= |_mcc#3#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#10#0|)) |_mcc#11#0|))) (not true)) (and (=> (= (ControlFlow 0 55) 53) anon82_Then_correct) (=> (= (ControlFlow 0 55) 54) anon82_Else_correct)))))
(let ((anon68_Else_correct  (=> (or (not (= |_mcc#2#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 69) 68) anon76_Then_correct) (=> (= (ControlFlow 0 69) 55) anon76_Else_correct)))))
(let ((anon67_Then_correct  (=> (and (= |_mcc#1#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#2#0|)) |_mcc#3#0|)) ($Is DatatypeTypeType |_mcc#3#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 88) 87) anon68_Then_correct) (=> (= (ControlFlow 0 88) 69) anon68_Else_correct)))))
(let ((anon83_Else_correct true))
(let ((anon83_Then_correct  (=> (and (= |_mcc#1#0| |#Lists.List.Nil|) (= (ControlFlow 0 49) (- 0 48))) false)))
(let ((anon67_Else_correct  (=> (or (not (= |_mcc#1#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#2#0|)) |_mcc#3#0|))) (not true)) (and (=> (= (ControlFlow 0 51) 49) anon83_Then_correct) (=> (= (ControlFlow 0 51) 50) anon83_Else_correct)))))
(let ((anon66_Then_correct  (=> (= |_mcc#0#0| (LitInt 1)) (and (=> (= (ControlFlow 0 89) 88) anon67_Then_correct) (=> (= (ControlFlow 0 89) 51) anon67_Else_correct)))))
(let ((anon89_Else_correct true))
(let ((anon89_Then_correct  (=> (and (= |_mcc#19#0| (|#Lists.List.Cons| |a#10#0#0@0| |a#10#1#0@0|)) (= (ControlFlow 0 40) (- 0 39))) false)))
(let ((anon88_Else_correct  (=> (or (not (= |_mcc#19#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 42) 40) anon89_Then_correct) (=> (= (ControlFlow 0 42) 41) anon89_Else_correct)))))
(let ((anon88_Then_correct true))
(let ((anon87_Then_correct  (=> (= |_mcc#18#0| (LitInt 1)) (and (=> (= (ControlFlow 0 43) 38) anon88_Then_correct) (=> (= (ControlFlow 0 43) 42) anon88_Else_correct)))))
(let ((anon91_Else_correct true))
(let ((anon91_Then_correct  (=> (and (= |_mcc#19#0| (|#Lists.List.Cons| |a#11#0#0@0| |a#11#1#0@0|)) (= (ControlFlow 0 34) (- 0 33))) false)))
(let ((anon90_Else_correct  (=> (or (not (= |_mcc#19#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 36) 34) anon91_Then_correct) (=> (= (ControlFlow 0 36) 35) anon91_Else_correct)))))
(let ((anon90_Then_correct true))
(let ((anon87_Else_correct  (=> (or (not (= |_mcc#18#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 37) 32) anon90_Then_correct) (=> (= (ControlFlow 0 37) 36) anon90_Else_correct)))))
(let ((anon86_Then_correct  (=> (and (= |_mcc#17#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#18#0|)) |_mcc#19#0|)) ($Is DatatypeTypeType |_mcc#19#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 44) 43) anon87_Then_correct) (=> (= (ControlFlow 0 44) 37) anon87_Else_correct)))))
(let ((anon92_Else_correct true))
(let ((anon92_Then_correct  (=> (and (= |_mcc#17#0| |#Lists.List.Nil|) (= (ControlFlow 0 29) (- 0 28))) false)))
(let ((anon86_Else_correct  (=> (or (not (= |_mcc#17#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#18#0|)) |_mcc#19#0|))) (not true)) (and (=> (= (ControlFlow 0 31) 29) anon92_Then_correct) (=> (= (ControlFlow 0 31) 30) anon92_Else_correct)))))
(let ((anon85_Then_correct  (=> (= |_mcc#16#0| (LitInt 1)) (and (=> (= (ControlFlow 0 45) 44) anon86_Then_correct) (=> (= (ControlFlow 0 45) 31) anon86_Else_correct)))))
(let ((anon96_Else_correct true))
(let ((anon96_Then_correct  (=> (and (= |_mcc#25#0| (|#Lists.List.Cons| |a#13#0#0@0| |a#13#1#0@0|)) (= (ControlFlow 0 22) (- 0 21))) false)))
(let ((anon95_Else_correct  (=> (or (not (= |_mcc#25#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 24) 22) anon96_Then_correct) (=> (= (ControlFlow 0 24) 23) anon96_Else_correct)))))
(let ((anon95_Then_correct true))
(let ((anon94_Then_correct  (=> (= |_mcc#24#0| (LitInt 1)) (and (=> (= (ControlFlow 0 25) 20) anon95_Then_correct) (=> (= (ControlFlow 0 25) 24) anon95_Else_correct)))))
(let ((anon98_Else_correct true))
(let ((anon98_Then_correct  (=> (and (= |_mcc#25#0| (|#Lists.List.Cons| |a#14#0#0@0| |a#14#1#0@0|)) (= (ControlFlow 0 16) (- 0 15))) false)))
(let ((anon97_Else_correct  (=> (or (not (= |_mcc#25#0| |#Lists.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 18) 16) anon98_Then_correct) (=> (= (ControlFlow 0 18) 17) anon98_Else_correct)))))
(let ((anon97_Then_correct true))
(let ((anon94_Else_correct  (=> (or (not (= |_mcc#24#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 19) 14) anon97_Then_correct) (=> (= (ControlFlow 0 19) 18) anon97_Else_correct)))))
(let ((anon93_Then_correct  (=> (and (= |_mcc#17#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#24#0|)) |_mcc#25#0|)) ($Is DatatypeTypeType |_mcc#25#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 26) 25) anon94_Then_correct) (=> (= (ControlFlow 0 26) 19) anon94_Else_correct)))))
(let ((anon99_Else_correct true))
(let ((anon99_Then_correct  (=> (and (= |_mcc#17#0| |#Lists.List.Nil|) (= (ControlFlow 0 11) (- 0 10))) false)))
(let ((anon93_Else_correct  (=> (or (not (= |_mcc#17#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#24#0|)) |_mcc#25#0|))) (not true)) (and (=> (= (ControlFlow 0 13) 11) anon99_Then_correct) (=> (= (ControlFlow 0 13) 12) anon99_Else_correct)))))
(let ((anon85_Else_correct  (=> (or (not (= |_mcc#16#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 27) 26) anon93_Then_correct) (=> (= (ControlFlow 0 27) 13) anon93_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (= |_mcc#1#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#16#0|)) |_mcc#17#0|)) ($Is DatatypeTypeType |_mcc#17#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 46) 45) anon85_Then_correct) (=> (= (ControlFlow 0 46) 27) anon85_Else_correct)))))
(let ((anon100_Else_correct true))
(let ((anon100_Then_correct  (=> (and (= |_mcc#1#0| |#Lists.List.Nil|) (= (ControlFlow 0 7) (- 0 6))) false)))
(let ((anon84_Else_correct  (=> (or (not (= |_mcc#1#0| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#16#0|)) |_mcc#17#0|))) (not true)) (and (=> (= (ControlFlow 0 9) 7) anon100_Then_correct) (=> (= (ControlFlow 0 9) 8) anon100_Else_correct)))))
(let ((anon66_Else_correct  (=> (or (not (= |_mcc#0#0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 47) 46) anon84_Then_correct) (=> (= (ControlFlow 0 47) 9) anon84_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (= |l#0@@2| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.Lists.List TInt))) (and (=> (= (ControlFlow 0 90) 89) anon66_Then_correct) (=> (= (ControlFlow 0 90) 47) anon66_Else_correct)))))
(let ((anon101_Else_correct true))
(let ((anon101_Then_correct  (=> (and (= |l#0@@2| |#Lists.List.Nil|) (= (ControlFlow 0 3) (- 0 2))) false)))
(let ((anon65_Else_correct  (=> (or (not (= |l#0@@2| (|#Lists.List.Cons| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 5) 3) anon101_Then_correct) (=> (= (ControlFlow 0 5) 4) anon101_Else_correct)))))
(let ((anon64_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= StartFuel_Lists.List.Length ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))) (= StartFuelAssert_Lists.List.Length ($LS ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))))) (=> (and (and (= (AsFuelBottom BaseFuel_Lists.List.Length) BaseFuel_Lists.List.Length) ($IsAllocBox ($Box DatatypeTypeType |l#0@@2|) (Tclass.Lists.List TInt) $Heap)) (and (|Lists.List.Length#canCall| TInt |l#0@@2|) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |l#0@@2|) (LitInt 3)))) (and (and (=> (= (ControlFlow 0 91) 1) anon64_Then_correct) (=> (= (ControlFlow 0 91) 90) anon65_Then_correct)) (=> (= (ControlFlow 0 91) 5) anon65_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |l#0@@2| (Tclass.Lists.List TInt))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 92) 91))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
