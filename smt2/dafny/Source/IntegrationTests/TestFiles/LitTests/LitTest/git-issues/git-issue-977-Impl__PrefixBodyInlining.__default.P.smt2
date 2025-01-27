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
(declare-fun TORDINAL () T@U)
(declare-fun TagORDINAL () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun PrefixBodyInlining.__default.BBB (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun PrefixBodyInlining.__default.BBB_h (T@U Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun PrefixBodyInlining.__default.AAA_h (T@U Int) Bool)
(declare-fun BoxType () T@T)
(declare-fun |PrefixBodyInlining.__default.AAA_h#canCall| (T@U Int) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |PrefixBodyInlining.__default.BBB#canCall| (Int) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert (distinct TORDINAL TagORDINAL alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0| Int) ) (!  (=> (and (<= (LitInt 0) |s#0|) (forall ((|_k#0| T@U) ) (! (PrefixBodyInlining.__default.BBB_h |_k#0| |s#0|)
 :qid |gitissue977dfy.214:22|
 :skolemid |549|
 :pattern ( (PrefixBodyInlining.__default.BBB_h |_k#0| |s#0|))
))) (PrefixBodyInlining.__default.BBB |s#0|))
 :qid |gitissue977dfy.214:26|
 :skolemid |551|
 :pattern ( (PrefixBodyInlining.__default.BBB |s#0|))
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
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_k#0@@0| T@U) (|r#0| Int) ) (!  (=> (or (|PrefixBodyInlining.__default.AAA_h#canCall| (Lit BoxType |_k#0@@0|) |r#0|) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |r#0|))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (|PrefixBodyInlining.__default.BBB#canCall| |r#0|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (PrefixBodyInlining.__default.BBB |r#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|PrefixBodyInlining.__default.AAA_h#canCall| |_k'#1| |r#0|))
 :qid |gitissue977dfy.209:22|
 :skolemid |542|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#1| |r#0|))
))))) (= (PrefixBodyInlining.__default.AAA_h (Lit BoxType |_k#0@@0|) |r#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (PrefixBodyInlining.__default.BBB |r#0|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (PrefixBodyInlining.__default.AAA_h |_k'#1@@0| |r#0|))
 :qid |gitissue977dfy.209:22|
 :skolemid |541|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#1@@0| |r#0|))
)))))))
 :qid |gitissue977dfy.209:22|
 :weight 3
 :skolemid |543|
 :pattern ( (PrefixBodyInlining.__default.AAA_h (Lit BoxType |_k#0@@0|) |r#0|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_k#0@@1| T@U) (|r#0@@0| Int) ) (!  (=> (or (|PrefixBodyInlining.__default.AAA_h#canCall| (Lit BoxType |_k#0@@1|) (LitInt |r#0@@0|)) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |r#0@@0|))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (|PrefixBodyInlining.__default.BBB#canCall| (LitInt |r#0@@0|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (PrefixBodyInlining.__default.BBB (LitInt |r#0@@0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@1|) (|PrefixBodyInlining.__default.AAA_h#canCall| |_k'#2| |r#0@@0|))
 :qid |gitissue977dfy.209:22|
 :skolemid |545|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#2| |r#0@@0|))
))))) (= (PrefixBodyInlining.__default.AAA_h (Lit BoxType |_k#0@@1|) (LitInt |r#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (PrefixBodyInlining.__default.BBB (LitInt |r#0@@0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@1|) (PrefixBodyInlining.__default.AAA_h |_k'#2@@0| |r#0@@0|))
 :qid |gitissue977dfy.209:22|
 :skolemid |544|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#2@@0| |r#0@@0|))
)))))))
 :qid |gitissue977dfy.209:22|
 :weight 3
 :skolemid |546|
 :pattern ( (PrefixBodyInlining.__default.AAA_h (Lit BoxType |_k#0@@1|) (LitInt |r#0@@0|)))
))))
(assert (forall ((o@@0 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@0 p@@0) (= o@@0 p@@0)) (|ORD#Less| p@@0 o@@0))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@0 p@@0) (|ORD#Less| p@@0 o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (|ORD#Offset| o@@1))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@1))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@2 p@@1) (or (not (= o@@2 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@2) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@2 p@@1))) (=> (and (|ORD#IsNat| o@@2) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@2 p@@1) (< (|ORD#Offset| o@@2) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@2 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@2)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@2 p@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_k#0@@2| T@U) (|r#0@@1| Int) ) (!  (=> (or (|PrefixBodyInlining.__default.AAA_h#canCall| |_k#0@@2| |r#0@@1|) (and (< 2 $FunctionContextHeight) (<= (LitInt 0) |r#0@@1|))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (|PrefixBodyInlining.__default.BBB#canCall| |r#0@@1|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (PrefixBodyInlining.__default.BBB |r#0@@1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@2|) (|PrefixBodyInlining.__default.AAA_h#canCall| |_k'#0| |r#0@@1|))
 :qid |gitissue977dfy.209:22|
 :skolemid |539|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#0| |r#0@@1|))
))))) (= (PrefixBodyInlining.__default.AAA_h |_k#0@@2| |r#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (PrefixBodyInlining.__default.BBB |r#0@@1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@2|) (PrefixBodyInlining.__default.AAA_h |_k'#0@@0| |r#0@@1|))
 :qid |gitissue977dfy.209:22|
 :skolemid |538|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k'#0@@0| |r#0@@1|))
)))))))
 :qid |gitissue977dfy.209:22|
 :skolemid |540|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k#0@@2| |r#0@@1|))
))))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |1405|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@3 T@U) ) (!  (=> (|ORD#IsNat| o@@3) (= o@@3 (|ORD#FromNat| (|ORD#Offset| o@@3))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@3))
 :pattern ( (|ORD#IsNat| o@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@0| Int) (|_k#0@@3| T@U) ) (!  (=> (and (<= (LitInt 0) |s#0@@0|) (= |_k#0@@3| (|ORD#FromNat| 0))) (PrefixBodyInlining.__default.BBB_h |_k#0@@3| |s#0@@0|))
 :qid |gitissue977dfy.214:26|
 :skolemid |552|
 :pattern ( (PrefixBodyInlining.__default.BBB_h |_k#0@@3| |s#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|r#0@@2| Int) (|_k#0@@4| T@U) ) (!  (=> (and (<= (LitInt 0) |r#0@@2|) (= |_k#0@@4| (|ORD#FromNat| 0))) (PrefixBodyInlining.__default.AAA_h |_k#0@@4| |r#0@@2|))
 :qid |gitissue977dfy.209:26|
 :skolemid |534|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |_k#0@@4| |r#0@@2|))
))))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc BoxType v TORDINAL h)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v TORDINAL h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |s#0@@1|) (PrefixBodyInlining.__default.BBB |s#0@@1|)) (forall ((|_k#0@@5| T@U) ) (! (PrefixBodyInlining.__default.BBB_h |_k#0@@5| |s#0@@1|)
 :qid |gitissue977dfy.214:22|
 :skolemid |549|
 :pattern ( (PrefixBodyInlining.__default.BBB_h |_k#0@@5| |s#0@@1|))
)))
 :qid |gitissue977dfy.214:26|
 :skolemid |550|
 :pattern ( (PrefixBodyInlining.__default.BBB |s#0@@1|))
))))
(assert (forall ((v@@0 T@U) ) (! ($Is BoxType v@@0 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |44|
 :pattern ( ($Is BoxType v@@0 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##r#1@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |k#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$PrefixBodyInlining.__default.P)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct  (=> (= |##r#1@0| (ite (< |n#0| 0) 0 |n#0|)) (=> (and ($IsAlloc intType (int_2_U |##r#1@0|) Tclass._System.nat $Heap) (|PrefixBodyInlining.__default.AAA_h#canCall| |k#0| (ite (< |n#0| 0) 0 |n#0|))) (=> (and (and (|PrefixBodyInlining.__default.AAA_h#canCall| |k#0| (ite (< |n#0| 0) 0 |n#0|)) (= (ControlFlow 0 2) (- 0 1))) (|PrefixBodyInlining.__default.AAA_h#canCall| |k#0| (ite (< |n#0| 0) 0 |n#0|))) (PrefixBodyInlining.__default.AAA_h |k#0| (ite (< |n#0| 0) 0 |n#0|)))))))
(let ((anon4_Else_correct  (=> (<= 0 |n#0|) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is intType (int_2_U |n#0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0|) Tclass._System.nat) (=> (= (ControlFlow 0 5) 2) anon3_correct))))))
(let ((anon4_Then_correct  (=> (< |n#0| 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= (ControlFlow 0 3) 2) anon3_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAlloc BoxType |k#0| TORDINAL $Heap)) (and (=> (= (ControlFlow 0 7) 3) anon4_Then_correct) (=> (= (ControlFlow 0 7) 5) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 3 $FunctionContextHeight)) (and (forall ((|t#1| Int) ) (!  (=> (<= (LitInt 0) |t#1|) (PrefixBodyInlining.__default.AAA_h |k#0| |t#1|))
 :qid |gitissue977dfy.217:21|
 :skolemid |557|
 :pattern ( (PrefixBodyInlining.__default.AAA_h |k#0| |t#1|))
)) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
