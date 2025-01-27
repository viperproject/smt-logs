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
(declare-fun Tagclass.TestTernary.Stream () T@U)
(declare-fun |##TestTernary.Stream.SCons| () T@U)
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
(declare-fun |$Eq#TestTernary.Stream| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#TestTernary.Stream| (T@U) Bool)
(declare-fun TestTernary.Stream.SCons_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |$PrefixEq#TestTernary.Stream| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.TestTernary.Stream () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#TestTernary.Stream.SCons| (Int T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun TestTernary.Stream.x (T@U) Int)
(declare-fun TestTernary.Stream._h0 (T@U) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.TestTernary.Stream |##TestTernary.Stream.SCons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#TestTernary.Stream| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (|$Eq#TestTernary.Stream| ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |579|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#TestTernary.Stream| d) (TestTernary.Stream.SCons_q d))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( (|$IsA#TestTernary.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |587|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#TestTernary.Stream| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (|$PrefixEq#TestTernary.Stream| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
)) (|$Eq#TestTernary.Stream| ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (|$Eq#TestTernary.Stream| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.TestTernary.Stream) (TestTernary.Stream.SCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |981|
 :pattern ( (TestTernary.Stream.SCons_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.TestTernary.Stream))
)))
(assert (forall ((k@@0 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) (m@@0 T@U) ) (!  (=> (and (|ORD#Less| k@@0 m@@0) (|$PrefixEq#TestTernary.Stream| m@@0 ($LS ly@@1) d0@@1 d1@@1)) (|$PrefixEq#TestTernary.Stream| k@@0 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (|$PrefixEq#TestTernary.Stream| k@@0 ($LS ly@@1) d0@@1 d1@@1) (|$PrefixEq#TestTernary.Stream| m@@0 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |506|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |504|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (TestTernary.Stream.SCons_q d@@1) (= (DatatypeCtorId d@@1) |##TestTernary.Stream.SCons|))
 :qid |unknown.0:0|
 :skolemid |971|
 :pattern ( (TestTernary.Stream.SCons_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |515|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (TestTernary.Stream.SCons_q d@@2) (exists ((|a#1#0#0| Int) (|a#1#1#0| T@U) ) (! (= d@@2 (|#TestTernary.Stream.SCons| |a#1#0#0| |a#1#1#0|))
 :qid |ChainingDisjointTestsdfy.42:29|
 :skolemid |972|
)))
 :qid |unknown.0:0|
 :skolemid |973|
 :pattern ( (TestTernary.Stream.SCons_q d@@2))
)))
(assert (forall ((k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#TestTernary.Stream| k@@1 ($LS ly@@2) d0@@2 d1@@2) (|$PrefixEq#TestTernary.Stream| k@@1 ly@@2 d0@@2 d1@@2)))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (|$PrefixEq#TestTernary.Stream| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (! (= (|$Eq#TestTernary.Stream| ($LS ly@@3) d0@@3 d1@@3) (|$Eq#TestTernary.Stream| ly@@3 d0@@3 d1@@3))
 :qid |unknown.0:0|
 :skolemid |983|
 :pattern ( (|$Eq#TestTernary.Stream| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |584|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |575|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#TestTernary.Stream| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#TestTernary.Stream| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (|$PrefixEq#TestTernary.Stream| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( (|$Eq#TestTernary.Stream| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |578|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |574|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#TestTernary.Stream.SCons| |a#0#0#0| |a#0#1#0|)) |##TestTernary.Stream.SCons|)
 :qid |ChainingDisjointTestsdfy.42:29|
 :skolemid |970|
 :pattern ( (|#TestTernary.Stream.SCons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| T@U) ) (! (= (TestTernary.Stream.x (|#TestTernary.Stream.SCons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |ChainingDisjointTestsdfy.42:29|
 :skolemid |977|
 :pattern ( (|#TestTernary.Stream.SCons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) ) (! (= (TestTernary.Stream._h0 (|#TestTernary.Stream.SCons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |ChainingDisjointTestsdfy.42:29|
 :skolemid |978|
 :pattern ( (|#TestTernary.Stream.SCons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |514|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |577|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@5 Tclass.TestTernary.Stream) ($Is DatatypeTypeType d1@@5 Tclass.TestTernary.Stream)) (= (|$PrefixEq#TestTernary.Stream| k@@3 ($LS ly@@5) d0@@5 d1@@5)  (and (=> (< 0 (|ORD#Offset| k@@3)) (and (and (TestTernary.Stream.SCons_q d0@@5) (TestTernary.Stream.SCons_q d1@@5)) (=> (and (TestTernary.Stream.SCons_q d0@@5) (TestTernary.Stream.SCons_q d1@@5)) (and (= (TestTernary.Stream.x d0@@5) (TestTernary.Stream.x d1@@5)) (|$PrefixEq#TestTernary.Stream| (|ORD#Minus| k@@3 (|ORD#FromNat| 1)) ly@@5 (TestTernary.Stream._h0 d0@@5) (TestTernary.Stream._h0 d1@@5)))))) (=> (and (or (not (= k@@3 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@3) 0)) (|$Eq#TestTernary.Stream| ly@@5 d0@@5 d1@@5)))))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( (|$PrefixEq#TestTernary.Stream| k@@3 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@1 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@1 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@2 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@2 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@2 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@3 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@3 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@4 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@5 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@5 y0@@1)))
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
 :skolemid |2489|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (TestTernary.Stream.SCons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.TestTernary.Stream $h))) ($IsAlloc intType (int_2_U (TestTernary.Stream.x d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( ($IsAlloc intType (int_2_U (TestTernary.Stream.x d@@3)) TInt $h))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |576|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass.TestTernary.Stream)) ($IsAlloc DatatypeTypeType d@@4 Tclass.TestTernary.Stream $h@@0))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.TestTernary.Stream $h@@0))
)))
(assert (= (Tag Tclass.TestTernary.Stream) Tagclass.TestTernary.Stream))
(assert (= (TagFamily Tclass.TestTernary.Stream) tytagFamily$Stream))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |585|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (TestTernary.Stream.SCons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.TestTernary.Stream $h@@1))) ($IsAlloc DatatypeTypeType (TestTernary.Stream._h0 d@@5) Tclass.TestTernary.Stream $h@@1))
 :qid |unknown.0:0|
 :skolemid |976|
 :pattern ( ($IsAlloc DatatypeTypeType (TestTernary.Stream._h0 d@@5) Tclass.TestTernary.Stream $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |507|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |505|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestTernary.Stream.SCons| |a#2#0#0| |a#2#1#0|) Tclass.TestTernary.Stream)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is DatatypeTypeType |a#2#1#0| Tclass.TestTernary.Stream)))
 :qid |ChainingDisjointTestsdfy.42:29|
 :skolemid |974|
 :pattern ( ($Is DatatypeTypeType (|#TestTernary.Stream.SCons| |a#2#0#0| |a#2#1#0|) Tclass.TestTernary.Stream))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |550|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@6 Tclass.TestTernary.Stream) ($Is DatatypeTypeType d1@@6 Tclass.TestTernary.Stream)) (= (|$Eq#TestTernary.Stream| ($LS ly@@6) d0@@6 d1@@6)  (and (and (TestTernary.Stream.SCons_q d0@@6) (TestTernary.Stream.SCons_q d1@@6)) (=> (and (TestTernary.Stream.SCons_q d0@@6) (TestTernary.Stream.SCons_q d1@@6)) (and (= (TestTernary.Stream.x d0@@6) (TestTernary.Stream.x d1@@6)) (|$Eq#TestTernary.Stream| ly@@6 (TestTernary.Stream._h0 d0@@6) (TestTernary.Stream._h0 d1@@6)))))))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (|$Eq#TestTernary.Stream| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#TestTernary.Stream| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (|$PrefixEq#TestTernary.Stream| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |529|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$TestTernary.__default.TestChainK)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (not (|$PrefixEq#TestTernary.Stream| (|ORD#FromNat| |k#0|) ($LS ($LS $LZ)) |u#0| |s#0|)) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (|$PrefixEq#TestTernary.Stream| (|ORD#FromNat| |k#0|) ($LS ($LS $LZ)) |u#0| |s#0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= 0 |k#0|)) (=> (<= 0 |k#0|) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= 0 |k#0|)) (=> (<= 0 |k#0|) (=> (|$PrefixEq#TestTernary.Stream| (|ORD#FromNat| |k#0|) ($LS ($LS $LZ)) |s#0| |t#0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 |k#0|)) (=> (<= 0 |k#0|) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |s#0| Tclass.TestTernary.Stream) ($IsAlloc DatatypeTypeType |s#0| Tclass.TestTernary.Stream $Heap)) (|$IsA#TestTernary.Stream| |s#0|)) (and (and ($Is DatatypeTypeType |t#0| Tclass.TestTernary.Stream) ($IsAlloc DatatypeTypeType |t#0| Tclass.TestTernary.Stream $Heap)) (|$IsA#TestTernary.Stream| |t#0|))) (=> (and (and (and (and ($Is DatatypeTypeType |u#0| Tclass.TestTernary.Stream) ($IsAlloc DatatypeTypeType |u#0| Tclass.TestTernary.Stream $Heap)) (|$IsA#TestTernary.Stream| |u#0|)) (<= (LitInt 0) |k#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 5))) anon0_correct)))))
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
