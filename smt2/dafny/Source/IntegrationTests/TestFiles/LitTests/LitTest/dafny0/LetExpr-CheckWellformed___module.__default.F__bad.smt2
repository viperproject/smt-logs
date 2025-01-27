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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Tuple () T@U)
(declare-fun |##_module.Tuple.Pair| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Tuple () T@U)
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
(declare-fun _module.Tuple.Pair_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Tuple (T@U T@U) T@U)
(declare-fun |#_module.Tuple.Pair| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.F__bad (T@U) Int)
(declare-fun |_module.__default.F__bad#canCall| (T@U) Bool)
(declare-fun _module.Tuple._1 (T@U) T@U)
(declare-fun _module.Tuple._0 (T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._module.Tuple_0 (T@U) T@U)
(declare-fun Tclass._module.Tuple_1 (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.nat Tagclass._module.Tuple |##_module.Tuple.Pair| tytagFamily$nat tytagFamily$Tuple)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Tuple$T T@U) (_module.Tuple$U T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Tuple _module.Tuple$T _module.Tuple$U)) (_module.Tuple.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |2490|
 :pattern ( (_module.Tuple.Pair_q d) ($Is DatatypeTypeType d (Tclass._module.Tuple _module.Tuple$T _module.Tuple$U)))
)))
(assert (forall ((_module.Tuple$T@@0 T@U) (_module.Tuple$U@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tuple.Pair| |a#14#0#0| |a#14#1#0|) (Tclass._module.Tuple _module.Tuple$T@@0 _module.Tuple$U@@0))  (and ($IsBox |a#14#0#0| _module.Tuple$T@@0) ($IsBox |a#14#1#0| _module.Tuple$U@@0)))
 :qid |unknown.0:0|
 :skolemid |2478|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tuple.Pair| |a#14#0#0| |a#14#1#0|) (Tclass._module.Tuple _module.Tuple$T@@0 _module.Tuple$U@@0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1720|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1718|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Tuple.Pair_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |2475|
 :pattern ( (_module.Tuple.Pair_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1729|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Tuple.Pair_q d@@1) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@1 (|#_module.Tuple.Pair| |a#13#0#0| |a#13#1#0|))
 :qid |LetExprdfy.250:28|
 :skolemid |2476|
)))
 :qid |unknown.0:0|
 :skolemid |2477|
 :pattern ( (_module.Tuple.Pair_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0| T@U) ) (!  (=> (or (|_module.__default.F__bad#canCall| (Lit DatatypeTypeType |d#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |d#0| (Tclass._module.Tuple (Tclass._module.Tuple TBool TInt) (Tclass._module.Tuple (Tclass._module.Tuple TInt TInt) (Tclass._module.Tuple TBool TBool)))))) (and (and (and (_module.Tuple.Pair_q (Lit DatatypeTypeType |d#0|)) (and (and (_module.Tuple.Pair_q (Lit DatatypeTypeType |d#0|)) (_module.Tuple.Pair_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple._1 (Lit DatatypeTypeType |d#0|)))))) (_module.Tuple.Pair_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple._1 (Lit DatatypeTypeType |d#0|)))))))))) (let ((|p#1| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple._0 (Lit DatatypeTypeType |d#0|))))))
(_module.Tuple.Pair_q |p#1|))) (= (_module.__default.F__bad (Lit DatatypeTypeType |d#0|)) (let ((|y1#1| (U_2_int ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 (Lit DatatypeTypeType |d#0|))))))))))
(let ((|y0#1| (U_2_int ($Unbox intType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 (Lit DatatypeTypeType |d#0|))))))))))
(let ((|x#1| (U_2_int ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 (Lit DatatypeTypeType |d#0|))))))))
(let ((|b0#1| (U_2_bool ($Unbox boolType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._0 (Lit DatatypeTypeType |d#0|))))))))
(let ((|p#1@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple._0 (Lit DatatypeTypeType |d#0|))))))
(+ (U_2_int ($Unbox intType (_module.Tuple._1 |p#1@@0|))) (ite |b0#1| (+ |x#1| |y0#1|) (+ |x#1| |y1#1|)))))))))))
 :qid |LetExprdfy.307:16|
 :weight 3
 :skolemid |2324|
 :pattern ( (_module.__default.F__bad (Lit DatatypeTypeType |d#0|)))
))))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|)))
 :qid |unknown.0:0|
 :skolemid |2047|
 :pattern ( ($Is intType |x#0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@0| T@U) ) (!  (=> (or (|_module.__default.F__bad#canCall| |d#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |d#0@@0| (Tclass._module.Tuple (Tclass._module.Tuple TBool TInt) (Tclass._module.Tuple (Tclass._module.Tuple TInt TInt) (Tclass._module.Tuple TBool TBool)))))) (and (and (and (_module.Tuple.Pair_q |d#0@@0|) (and (and (_module.Tuple.Pair_q |d#0@@0|) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@0|)))) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@0|))))))) (let ((|p#0| ($Unbox DatatypeTypeType (_module.Tuple._0 |d#0@@0|))))
(_module.Tuple.Pair_q |p#0|))) (= (_module.__default.F__bad |d#0@@0|) (let ((|y1#0| (U_2_int ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@0|)))))))))
(let ((|y0#0| (U_2_int ($Unbox intType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@0|)))))))))
(let ((|x#0@@0| (U_2_int ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 |d#0@@0|)))))))
(let ((|b0#0| (U_2_bool ($Unbox boolType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._0 |d#0@@0|)))))))
(let ((|p#0@@0| ($Unbox DatatypeTypeType (_module.Tuple._0 |d#0@@0|))))
(+ (U_2_int ($Unbox intType (_module.Tuple._1 |p#0@@0|))) (ite |b0#0| (+ |x#0@@0| |y0#0|) (+ |x#0@@0| |y1#0|)))))))))))
 :qid |LetExprdfy.307:16|
 :skolemid |2323|
 :pattern ( (_module.__default.F__bad |d#0@@0|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1730|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1732|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1741|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((_module.Tuple$T@@1 T@U) (_module.Tuple$U@@1 T@U) ) (! (= (Tclass._module.Tuple_0 (Tclass._module.Tuple _module.Tuple$T@@1 _module.Tuple$U@@1)) _module.Tuple$T@@1)
 :qid |unknown.0:0|
 :skolemid |2292|
 :pattern ( (Tclass._module.Tuple _module.Tuple$T@@1 _module.Tuple$U@@1))
)))
(assert (forall ((_module.Tuple$T@@2 T@U) (_module.Tuple$U@@2 T@U) ) (! (= (Tclass._module.Tuple_1 (Tclass._module.Tuple _module.Tuple$T@@2 _module.Tuple$U@@2)) _module.Tuple$U@@2)
 :qid |unknown.0:0|
 :skolemid |2293|
 :pattern ( (Tclass._module.Tuple _module.Tuple$T@@2 _module.Tuple$U@@2))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tuple.Pair| |a#12#0#0| |a#12#1#0|)) |##_module.Tuple.Pair|)
 :qid |LetExprdfy.250:28|
 :skolemid |2474|
 :pattern ( (|#_module.Tuple.Pair| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Tuple._0 (|#_module.Tuple.Pair| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |LetExprdfy.250:28|
 :skolemid |2485|
 :pattern ( (|#_module.Tuple.Pair| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (_module.Tuple._1 (|#_module.Tuple.Pair| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |LetExprdfy.250:28|
 :skolemid |2487|
 :pattern ( (|#_module.Tuple.Pair| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1728|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_module.Tuple.Pair| |a#17#0#0| |a#17#1#0|)))
 :qid |LetExprdfy.250:28|
 :skolemid |2486|
 :pattern ( (|#_module.Tuple.Pair| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_module.Tuple.Pair| |a#19#0#0| |a#19#1#0|)))
 :qid |LetExprdfy.250:28|
 :skolemid |2488|
 :pattern ( (|#_module.Tuple.Pair| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((_module.Tuple$T@@3 T@U) (_module.Tuple$U@@3 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Tuple _module.Tuple$T@@3 _module.Tuple$U@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Tuple _module.Tuple$T@@3 _module.Tuple$U@@3))))
 :qid |unknown.0:0|
 :skolemid |2294|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Tuple _module.Tuple$T@@3 _module.Tuple$U@@3)))
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
 :skolemid |2615|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.Tuple$T@@4 T@U) (_module.Tuple$U@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Tuple _module.Tuple$T@@4 _module.Tuple$U@@4)) Tagclass._module.Tuple) (= (TagFamily (Tclass._module.Tuple _module.Tuple$T@@4 _module.Tuple$U@@4)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |2291|
 :pattern ( (Tclass._module.Tuple _module.Tuple$T@@4 _module.Tuple$U@@4))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1787|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (|#_module.Tuple.Pair| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|)) (Lit DatatypeTypeType (|#_module.Tuple.Pair| |a#15#0#0| |a#15#1#0|)))
 :qid |LetExprdfy.250:28|
 :skolemid |2484|
 :pattern ( (|#_module.Tuple.Pair| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1721|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1719|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1743|
 :pattern ( ($Is intType v@@0 TInt))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1745|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b0#Z#0@0| () Bool)
(declare-fun |d#0@@1| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |p#Z#0@0| () T@U)
(declare-fun |let#0#1#0| () T@U)
(declare-fun |x#Z#0@0| () Int)
(declare-fun |y0#Z#0@0| () Int)
(declare-fun |y1#Z#0@0| () Int)
(declare-fun |b1#Z#0@0| () Bool)
(declare-fun |b2#Z#0@0| () Bool)
(declare-fun |let#0#2#0| () Int)
(declare-fun |q#Z#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.F__bad)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (and (not |b0#Z#0@0|) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and |b0#Z#0@0| (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon8_Else_correct  (=> (_module.Tuple.Pair_q |d#0@@1|) (=> (and (= |let#0#0#0| ($Unbox DatatypeTypeType (_module.Tuple._0 |d#0@@1|))) (_module.Tuple.Pair_q |d#0@@1|)) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Tuple TBool TInt)) (= |p#Z#0@0| |let#0#0#0|)) (and (= |let#0#1#0| |d#0@@1|) ($Is DatatypeTypeType |let#0#1#0| (Tclass._module.Tuple (Tclass._module.Tuple TBool TInt) (Tclass._module.Tuple (Tclass._module.Tuple TInt TInt) (Tclass._module.Tuple TBool TBool)))))) (and (and (_module.Tuple.Pair_q |let#0#1#0|) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._0 |let#0#1#0|)))) (and (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._1 |let#0#1#0|))) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |let#0#1#0|)))))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) ($Is intType ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |let#0#1#0|)))))) Tclass._System.nat)) (=> ($Is intType ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |let#0#1#0|)))))) Tclass._System.nat) (=> (and (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._1 |let#0#1#0|))))) (= (|#_module.Tuple.Pair| ($Box DatatypeTypeType (|#_module.Tuple.Pair| ($Box boolType (bool_2_U |b0#Z#0@0|)) ($Box intType (int_2_U |x#Z#0@0|)))) ($Box DatatypeTypeType (|#_module.Tuple.Pair| ($Box DatatypeTypeType (|#_module.Tuple.Pair| ($Box intType (int_2_U |y0#Z#0@0|)) ($Box intType (int_2_U |y1#Z#0@0|)))) ($Box DatatypeTypeType (|#_module.Tuple.Pair| ($Box boolType (bool_2_U |b1#Z#0@0|)) ($Box boolType (bool_2_U |b2#Z#0@0|))))))) |let#0#1#0|)) (=> (and (and (_module.Tuple.Pair_q |d#0@@1|) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@1|)))) (and (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@1|))))) (= |let#0#2#0| (U_2_int ($Unbox intType (_module.Tuple._1 ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@1|)))))))))) (=> (and (and (and (_module.Tuple.Pair_q |d#0@@1|) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@1|)))) (_module.Tuple.Pair_q ($Unbox DatatypeTypeType (_module.Tuple._0 ($Unbox DatatypeTypeType (_module.Tuple._1 |d#0@@1|)))))) (and ($Is intType (int_2_U |let#0#2#0|) TInt) (= |q#Z#0@0| |let#0#2#0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< |q#Z#0@0| 200)) (=> (< |q#Z#0@0| 200) (=> (_module.Tuple.Pair_q |p#Z#0@0|) (and (=> (= (ControlFlow 0 5) 3) anon9_Then_correct) (=> (= (ControlFlow 0 5) 4) anon9_Else_correct)))))))))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 1) anon8_Then_correct) (=> (= (ControlFlow 0 8) 5) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |d#0@@1| (Tclass._module.Tuple (Tclass._module.Tuple TBool TInt) (Tclass._module.Tuple (Tclass._module.Tuple TInt TInt) (Tclass._module.Tuple TBool TBool))))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
