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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.LexLess (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.__default.LexLess_h (T@U Int T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |_module.__default.LexLess#canCall| (T@U T@U) Bool)
(declare-fun _module.Stream.hd (T@U) T@U)
(declare-fun _module.Stream.tl (T@U) T@U)
(declare-fun |_module.__default.LexLess_h#canCall| (Int T@U T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Stream$A T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$A)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$A)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) (|t#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |t#0| (Tclass._module.Stream TInt))) (_module.__default.LexLess ($LS $ly) |s#0| |t#0|)) (forall ((|_k#0| Int) ) (!  (=> (<= (LitInt 0) |_k#0|) (_module.__default.LexLess_h ($LS $ly) |_k#0| |s#0| |t#0|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |589|
 :pattern ( (_module.__default.LexLess_h ($LS $ly) |_k#0| |s#0| |t#0|))
)))
 :qid |KozenSilvadfy.20:20|
 :skolemid |590|
 :pattern ( (_module.__default.LexLess ($LS $ly) |s#0| |t#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0@@0| T@U) (|t#0@@0| T@U) (|_k#0@@0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |t#0@@0| (Tclass._module.Stream TInt))) (= |_k#0@@0| 0)) (_module.__default.LexLess_h $ly@@0 |_k#0@@0| |s#0@@0| |t#0@@0|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |592|
 :pattern ( (_module.__default.LexLess_h $ly@@0 |_k#0@@0| |s#0@@0| |t#0@@0|))
))))
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
(assert (forall ((_module.Stream$A@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$A@@0))  (and ($IsBox |a#2#0#0| _module.Stream$A@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$A@@0))))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$A@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |875|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |KozenSilvadfy.15:29|
 :skolemid |876|
)))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@1| T@U) (|t#0@@1| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |t#0@@1| (Tclass._module.Stream TInt))) (forall ((|_k#0@@1| Int) ) (!  (=> (<= (LitInt 0) |_k#0@@1|) (_module.__default.LexLess_h ($LS $ly@@1) |_k#0@@1| |s#0@@1| |t#0@@1|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |589|
 :pattern ( (_module.__default.LexLess_h ($LS $ly@@1) |_k#0@@1| |s#0@@1| |t#0@@1|))
))) (_module.__default.LexLess ($LS $ly@@1) |s#0@@1| |t#0@@1|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |591|
 :pattern ( (_module.__default.LexLess ($LS $ly@@1) |s#0@@1| |t#0@@1|))
))))
(assert (forall (($ly@@2 T@U) (|s#0@@2| T@U) (|t#0@@2| T@U) ) (! (= (_module.__default.LexLess ($LS $ly@@2) |s#0@@2| |t#0@@2|) (_module.__default.LexLess $ly@@2 |s#0@@2| |t#0@@2|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |581|
 :pattern ( (_module.__default.LexLess ($LS $ly@@2) |s#0@@2| |t#0@@2|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$A@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$A@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$A@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.Stream _module.Stream$A@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|s#0@@3| T@U) (|t#0@@3| T@U) ) (!  (=> (or (|_module.__default.LexLess#canCall| |s#0@@3| |t#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |t#0@@3| (Tclass._module.Stream TInt))))) (and (and (and (_module.Stream.Cons_q |s#0@@3|) (_module.Stream.Cons_q |t#0@@3|)) (=> (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@3|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@3|)))) (and (and (_module.Stream.Cons_q |s#0@@3|) (_module.Stream.Cons_q |t#0@@3|)) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@3|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@3|)))) (and (and (_module.Stream.Cons_q |s#0@@3|) (_module.Stream.Cons_q |t#0@@3|)) (|_module.__default.LexLess#canCall| (_module.Stream.tl |s#0@@3|) (_module.Stream.tl |t#0@@3|))))))) (= (_module.__default.LexLess ($LS $ly@@3) |s#0@@3| |t#0@@3|)  (and (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@3|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@3|)))) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@3|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@3|)))) (_module.__default.LexLess $ly@@3 (_module.Stream.tl |s#0@@3|) (_module.Stream.tl |t#0@@3|)))))))
 :qid |KozenSilvadfy.20:20|
 :skolemid |588|
 :pattern ( (_module.__default.LexLess ($LS $ly@@3) |s#0@@3| |t#0@@3|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall (($ly@@4 T@U) (|_k#0@@2| Int) (|s#0@@4| T@U) (|t#0@@4| T@U) ) (! (= (_module.__default.LexLess_h ($LS $ly@@4) |_k#0@@2| |s#0@@4| |t#0@@4|) (_module.__default.LexLess_h $ly@@4 |_k#0@@2| |s#0@@4| |t#0@@4|))
 :qid |KozenSilvadfy.20:20|
 :skolemid |594|
 :pattern ( (_module.__default.LexLess_h ($LS $ly@@4) |_k#0@@2| |s#0@@4| |t#0@@4|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.Cons|)
 :qid |KozenSilvadfy.15:29|
 :skolemid |874|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.hd (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |KozenSilvadfy.15:29|
 :skolemid |882|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tl (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |KozenSilvadfy.15:29|
 :skolemid |883|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@3| Int) (|s#0@@5| T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.LexLess_h#canCall| |_k#0@@3| |s#0@@5| |t#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@3|) ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream TInt))) ($Is DatatypeTypeType |t#0@@5| (Tclass._module.Stream TInt))))) (and (=> (< 0 |_k#0@@3|) (and (and (_module.Stream.Cons_q |s#0@@5|) (_module.Stream.Cons_q |t#0@@5|)) (=> (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@5|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@5|)))) (and (and (_module.Stream.Cons_q |s#0@@5|) (_module.Stream.Cons_q |t#0@@5|)) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@5|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@5|)))) (and (and (_module.Stream.Cons_q |s#0@@5|) (_module.Stream.Cons_q |t#0@@5|)) (|_module.__default.LexLess_h#canCall| (- |_k#0@@3| 1) (_module.Stream.tl |s#0@@5|) (_module.Stream.tl |t#0@@5|)))))))) (= (_module.__default.LexLess_h ($LS $ly@@5) |_k#0@@3| |s#0@@5| |t#0@@5|)  (=> (< 0 |_k#0@@3|) (and (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@5|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@5|)))) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@5|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@5|)))) (_module.__default.LexLess_h $ly@@5 (- |_k#0@@3| 1) (_module.Stream.tl |s#0@@5|) (_module.Stream.tl |t#0@@5|))))))))
 :qid |KozenSilvadfy.20:20|
 :skolemid |598|
 :pattern ( (_module.__default.LexLess_h ($LS $ly@@5) |_k#0@@3| |s#0@@5| |t#0@@5|))
))))
(assert (forall ((_module.Stream$A@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$A@@2)) _module.Stream$A@@2)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.Stream _module.Stream$A@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$A@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$A@@3) $h))) ($IsAllocBox (_module.Stream.hd d@@3) _module.Stream$A@@3 $h))
 :qid |unknown.0:0|
 :skolemid |880|
 :pattern ( ($IsAllocBox (_module.Stream.hd d@@3) _module.Stream$A@@3 $h))
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
 :skolemid |1087|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.Stream$A@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$A@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Stream _module.Stream$A@@4))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$A@@4)))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$A@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$A@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tl d@@4) (Tclass._module.Stream _module.Stream$A@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |881|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tl d@@4) (Tclass._module.Stream _module.Stream$A@@5) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|_k#0@@4| Int) (|s#0@@6| T@U) (|t#0@@6| T@U) ) (!  (=> (or (|_module.__default.LexLess_h#canCall| (LitInt |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|) (Lit DatatypeTypeType |t#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@4|) ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream TInt))) ($Is DatatypeTypeType |t#0@@6| (Tclass._module.Stream TInt))))) (and (=> (< 0 |_k#0@@4|) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@6|)) (_module.Stream.Cons_q (Lit DatatypeTypeType |t#0@@6|))) (=> (<= (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |s#0@@6|))))) (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |t#0@@6|)))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@6|)) (_module.Stream.Cons_q (Lit DatatypeTypeType |t#0@@6|))) (=> (= (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |s#0@@6|))))) (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |t#0@@6|)))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@6|)) (_module.Stream.Cons_q (Lit DatatypeTypeType |t#0@@6|))) (|_module.__default.LexLess_h#canCall| (- |_k#0@@4| 1) (Lit DatatypeTypeType (_module.Stream.tl (Lit DatatypeTypeType |s#0@@6|))) (Lit DatatypeTypeType (_module.Stream.tl (Lit DatatypeTypeType |t#0@@6|)))))))))) (= (_module.__default.LexLess_h ($LS $ly@@6) (LitInt |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|) (Lit DatatypeTypeType |t#0@@6|))  (=> (< 0 |_k#0@@4|) (and (<= (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |s#0@@6|))))) (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |t#0@@6|)))))) (=> (= (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |s#0@@6|))))) (LitInt (U_2_int ($Unbox intType (_module.Stream.hd (Lit DatatypeTypeType |t#0@@6|)))))) (_module.__default.LexLess_h ($LS $ly@@6) (- |_k#0@@4| 1) (Lit DatatypeTypeType (_module.Stream.tl (Lit DatatypeTypeType |s#0@@6|))) (Lit DatatypeTypeType (_module.Stream.tl (Lit DatatypeTypeType |t#0@@6|))))))))))
 :qid |KozenSilvadfy.20:20|
 :weight 3
 :skolemid |600|
 :pattern ( (_module.__default.LexLess_h ($LS $ly@@6) (LitInt |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|) (Lit DatatypeTypeType |t#0@@6|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|_k#0@@5| Int) (|s#0@@7| T@U) (|t#0@@7| T@U) ) (!  (=> (or (|_module.__default.LexLess_h#canCall| (LitInt |_k#0@@5|) |s#0@@7| |t#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (<= (LitInt 0) |_k#0@@5|) ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream TInt))) ($Is DatatypeTypeType |t#0@@7| (Tclass._module.Stream TInt))))) (and (=> (< 0 |_k#0@@5|) (and (and (_module.Stream.Cons_q |s#0@@7|) (_module.Stream.Cons_q |t#0@@7|)) (=> (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@7|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@7|)))) (and (and (_module.Stream.Cons_q |s#0@@7|) (_module.Stream.Cons_q |t#0@@7|)) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@7|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@7|)))) (and (and (_module.Stream.Cons_q |s#0@@7|) (_module.Stream.Cons_q |t#0@@7|)) (|_module.__default.LexLess_h#canCall| (- |_k#0@@5| 1) (_module.Stream.tl |s#0@@7|) (_module.Stream.tl |t#0@@7|)))))))) (= (_module.__default.LexLess_h ($LS $ly@@7) (LitInt |_k#0@@5|) |s#0@@7| |t#0@@7|)  (=> (< 0 |_k#0@@5|) (and (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@7|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@7|)))) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#0@@7|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#0@@7|)))) (_module.__default.LexLess_h ($LS $ly@@7) (- |_k#0@@5| 1) (_module.Stream.tl |s#0@@7|) (_module.Stream.tl |t#0@@7|))))))))
 :qid |KozenSilvadfy.20:20|
 :weight 3
 :skolemid |599|
 :pattern ( (_module.__default.LexLess_h ($LS $ly@@7) (LitInt |_k#0@@5|) |s#0@@7| |t#0@@7|))
))))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$A@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$A@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$A@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$A@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |879|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$A@@6) $h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@6| () Int)
(declare-fun |s#1| () T@U)
(declare-fun |u#1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem1__LexLess__Is__Transitive__Automatic_h)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.LexLess_h#canCall| |_k#0@@6| |s#1| |u#1|) (or (_module.__default.LexLess_h ($LS $LZ) |_k#0@@6| |s#1| |u#1|) (=> (< 0 |_k#0@@6|) (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |u#1|)))))))) (=> (=> (|_module.__default.LexLess_h#canCall| |_k#0@@6| |s#1| |u#1|) (or (_module.__default.LexLess_h ($LS $LZ) |_k#0@@6| |s#1| |u#1|) (=> (< 0 |_k#0@@6|) (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |u#1|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.LexLess_h#canCall| |_k#0@@6| |s#1| |u#1|) (or (_module.__default.LexLess_h ($LS $LZ) |_k#0@@6| |s#1| |u#1|) (=> (< 0 |_k#0@@6|) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |u#1|)))) (_module.__default.LexLess_h ($LS ($LS $LZ)) (- |_k#0@@6| 1) (_module.Stream.tl |s#1|) (_module.Stream.tl |u#1|)))))))))))
(let ((anon3_Else_correct  (=> (and (<= |_k#0@@6| 0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct  (=> (and (< 0 |_k#0@@6|) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Stream| |s#1|)) (and (|$IsA#_module.Stream| |t#1|) (|$IsA#_module.Stream| |u#1|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| Int) (|$ih#s0#0| T@U) (|$ih#t0#0| T@U) (|$ih#u0#0| T@U) ) (!  (=> (and (and (and (and (and (<= (LitInt 0) |$ih#_k0#0|) ($Is DatatypeTypeType |$ih#s0#0| (Tclass._module.Stream TInt))) ($Is DatatypeTypeType |$ih#t0#0| (Tclass._module.Stream TInt))) ($Is DatatypeTypeType |$ih#u0#0| (Tclass._module.Stream TInt))) (and (_module.__default.LexLess ($LS $LZ) |$ih#s0#0| |$ih#t0#0|) (_module.__default.LexLess ($LS $LZ) |$ih#t0#0| |$ih#u0#0|))) (and (<= 0 |$ih#_k0#0|) (< |$ih#_k0#0| |_k#0@@6|))) (_module.__default.LexLess_h ($LS $LZ) |$ih#_k0#0| |$ih#s0#0| |$ih#u0#0|))
 :qid |KozenSilvadfy.42:16|
 :skolemid |603|
 :pattern ( (_module.__default.LexLess_h ($LS $LZ) |$ih#_k0#0| |$ih#s0#0| |$ih#u0#0|) (_module.__default.LexLess ($LS $LZ) |$ih#t0#0| |$ih#u0#0|))
 :pattern ( (_module.__default.LexLess_h ($LS $LZ) |$ih#_k0#0| |$ih#s0#0| |$ih#u0#0|) (_module.__default.LexLess ($LS $LZ) |$ih#s0#0| |$ih#t0#0|))
))))) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |_k#0@@6|)) (=> (and (and (and ($Is DatatypeTypeType |s#1| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream TInt) $Heap)) (|$IsA#_module.Stream| |s#1|)) (and (and ($Is DatatypeTypeType |t#1| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |t#1| (Tclass._module.Stream TInt) $Heap)) (|$IsA#_module.Stream| |t#1|))) (=> (and (and (and (and (and ($Is DatatypeTypeType |u#1| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |u#1| (Tclass._module.Stream TInt) $Heap)) (|$IsA#_module.Stream| |u#1|)) (= 3 $FunctionContextHeight)) (and (|_module.__default.LexLess#canCall| |s#1| |t#1|) (and (_module.__default.LexLess ($LS $LZ) |s#1| |t#1|) (and (<= (U_2_int ($Unbox intType (_module.Stream.hd |s#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#1|)))) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |s#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |t#1|)))) (_module.__default.LexLess ($LS $LZ) (_module.Stream.tl |s#1|) (_module.Stream.tl |t#1|))))))) (and (and (|_module.__default.LexLess#canCall| |t#1| |u#1|) (and (_module.__default.LexLess ($LS $LZ) |t#1| |u#1|) (and (<= (U_2_int ($Unbox intType (_module.Stream.hd |t#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |u#1|)))) (=> (= (U_2_int ($Unbox intType (_module.Stream.hd |t#1|))) (U_2_int ($Unbox intType (_module.Stream.hd |u#1|)))) (_module.__default.LexLess ($LS $LZ) (_module.Stream.tl |t#1|) (_module.Stream.tl |u#1|)))))) (= (ControlFlow 0 7) 6))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
