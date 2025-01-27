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
(declare-fun |##_module.Stream.More| () T@U)
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
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun _module.Stream.More_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Stream.More| (Int T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun _module.Stream.head (T@U) Int)
(declare-fun _module.Stream.tail (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Stream |##_module.Stream.More| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#_module.Stream| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |3367|
 :pattern ( (|$Eq#_module.Stream| ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |2307|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.More_q d))
 :qid |unknown.0:0|
 :skolemid |3363|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |2315|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#_module.Stream| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |3372|
 :pattern ( (|$PrefixEq#_module.Stream| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
)) (|$Eq#_module.Stream| ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |3373|
 :pattern ( (|$Eq#_module.Stream| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Stream) (_module.Stream.More_q d@@0))
 :qid |unknown.0:0|
 :skolemid |3364|
 :pattern ( (_module.Stream.More_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Stream))
)))
(assert (forall ((k@@0 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) (m@@0 T@U) ) (!  (=> (and (|ORD#Less| k@@0 m@@0) (|$PrefixEq#_module.Stream| m@@0 ($LS ly@@1) d0@@1 d1@@1)) (|$PrefixEq#_module.Stream| k@@0 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |3374|
 :pattern ( (|$PrefixEq#_module.Stream| k@@0 ($LS ly@@1) d0@@1 d1@@1) (|$PrefixEq#_module.Stream| m@@0 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2234|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2232|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.More_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.More|))
 :qid |unknown.0:0|
 :skolemid |3354|
 :pattern ( (_module.Stream.More_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2243|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.More_q d@@2) (exists ((|a#7#0#0| Int) (|a#7#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.More| |a#7#0#0| |a#7#1#0|))
 :qid |PrecedenceLinterdfy.472:26|
 :skolemid |3355|
)))
 :qid |unknown.0:0|
 :skolemid |3356|
 :pattern ( (_module.Stream.More_q d@@2))
)))
(assert (forall ((k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| k@@1 ($LS ly@@2) d0@@2 d1@@2) (|$PrefixEq#_module.Stream| k@@1 ly@@2 d0@@2 d1@@2)))
 :qid |unknown.0:0|
 :skolemid |3369|
 :pattern ( (|$PrefixEq#_module.Stream| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (! (= (|$Eq#_module.Stream| ($LS ly@@3) d0@@3 d1@@3) (|$Eq#_module.Stream| ly@@3 d0@@3 d1@@3))
 :qid |unknown.0:0|
 :skolemid |3366|
 :pattern ( (|$Eq#_module.Stream| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |2312|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |2303|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |3370|
 :pattern ( (|$PrefixEq#_module.Stream| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |3371|
 :pattern ( (|$Eq#_module.Stream| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |2306|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |2302|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.More| |a#6#0#0| |a#6#1#0|)) |##_module.Stream.More|)
 :qid |PrecedenceLinterdfy.472:26|
 :skolemid |3353|
 :pattern ( (|#_module.Stream.More| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.More| |a#9#0#0| |a#9#1#0|)) |a#9#0#0|)
 :qid |PrecedenceLinterdfy.472:26|
 :skolemid |3360|
 :pattern ( (|#_module.Stream.More| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.More| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |PrecedenceLinterdfy.472:26|
 :skolemid |3361|
 :pattern ( (|#_module.Stream.More| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2242|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |2305|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@5 Tclass._module.Stream) ($Is DatatypeTypeType d1@@5 Tclass._module.Stream)) (= (|$PrefixEq#_module.Stream| k@@3 ($LS ly@@5) d0@@5 d1@@5)  (and (=> (< 0 (|ORD#Offset| k@@3)) (and (and (_module.Stream.More_q d0@@5) (_module.Stream.More_q d1@@5)) (=> (and (_module.Stream.More_q d0@@5) (_module.Stream.More_q d1@@5)) (and (= (_module.Stream.head d0@@5) (_module.Stream.head d1@@5)) (|$PrefixEq#_module.Stream| (|ORD#Minus| k@@3 (|ORD#FromNat| 1)) ly@@5 (_module.Stream.tail d0@@5) (_module.Stream.tail d1@@5)))))) (=> (and (or (not (= k@@3 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@3) 0)) (|$Eq#_module.Stream| ly@@5 d0@@5 d1@@5)))))
 :qid |unknown.0:0|
 :skolemid |3368|
 :pattern ( (|$PrefixEq#_module.Stream| k@@3 ($LS ly@@5) d0@@5 d1@@5))
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
 :skolemid |3448|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.More_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Stream $h))) ($IsAlloc intType (int_2_U (_module.Stream.head d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |3358|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Stream.head d@@3)) TInt $h))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |2304|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass._module.Stream)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Stream $h@@0))
 :qid |unknown.0:0|
 :skolemid |3362|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Stream $h@@0))
)))
(assert (= (Tag Tclass._module.Stream) Tagclass._module.Stream))
(assert (= (TagFamily Tclass._module.Stream) tytagFamily$Stream))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |2313|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.More_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Stream $h@@1))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@5) Tclass._module.Stream $h@@1))
 :qid |unknown.0:0|
 :skolemid |3359|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@5) Tclass._module.Stream $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2235|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2233|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.More| |a#8#0#0| |a#8#1#0|) Tclass._module.Stream)  (and ($Is intType (int_2_U |a#8#0#0|) TInt) ($Is DatatypeTypeType |a#8#1#0| Tclass._module.Stream)))
 :qid |PrecedenceLinterdfy.472:26|
 :skolemid |3357|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.More| |a#8#0#0| |a#8#1#0|) Tclass._module.Stream))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2278|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@6 Tclass._module.Stream) ($Is DatatypeTypeType d1@@6 Tclass._module.Stream)) (= (|$Eq#_module.Stream| ($LS ly@@6) d0@@6 d1@@6)  (and (and (_module.Stream.More_q d0@@6) (_module.Stream.More_q d1@@6)) (=> (and (_module.Stream.More_q d0@@6) (_module.Stream.More_q d1@@6)) (and (= (_module.Stream.head d0@@6) (_module.Stream.head d1@@6)) (|$Eq#_module.Stream| ly@@6 (_module.Stream.tail d0@@6) (_module.Stream.tail d1@@6)))))))
 :qid |unknown.0:0|
 :skolemid |3365|
 :pattern ( (|$Eq#_module.Stream| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#_module.Stream| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |3375|
 :pattern ( (|$PrefixEq#_module.Stream| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2257|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |w#0| () Bool)
(declare-fun |c#0@0| () Bool)
(declare-fun $LZ () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun |a#0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Parentheses4)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon12_correct true))
(let ((anon16_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= 0 (LitInt 12))) (=> (<= 0 (LitInt 12)) (=> (= (ControlFlow 0 3) 1) anon12_correct))))))
(let ((anon16_Then_correct  (=> (and |w#0| (= (ControlFlow 0 2) 1)) anon12_correct)))
(let ((anon9_correct  (=> (= |c#0@0| (ite |w#0| true  (not (|$PrefixEq#_module.Stream| (|ORD#FromNat| (LitInt 12)) ($LS ($LS $LZ)) |s#0| |t#0|)))) (and (=> (= (ControlFlow 0 5) 2) anon16_Then_correct) (=> (= (ControlFlow 0 5) 3) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= 0 (LitInt 12))) (=> (<= 0 (LitInt 12)) (=> (= (ControlFlow 0 7) 5) anon9_correct))))))
(let ((anon15_Then_correct  (=> (and |w#0| (= (ControlFlow 0 6) 5)) anon9_correct)))
(let ((anon6_correct  (=> (= |b#0@0| (ite |w#0| true (|$PrefixEq#_module.Stream| (|ORD#FromNat| (LitInt 12)) ($LS ($LS $LZ)) |s#0| |t#0|))) (and (=> (= (ControlFlow 0 9) 6) anon15_Then_correct) (=> (= (ControlFlow 0 9) 7) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= 0 (LitInt 12))) (=> (<= 0 (LitInt 12)) (=> (= (ControlFlow 0 11) 9) anon6_correct))))))
(let ((anon14_Then_correct  (=> (and |w#0| (= (ControlFlow 0 10) 9)) anon6_correct)))
(let ((anon3_correct  (=> (= |a#0@0| (ite |w#0| true (|$PrefixEq#_module.Stream| (|ORD#FromNat| (LitInt 12)) ($LS ($LS $LZ)) |s#0| |t#0|))) (and (=> (= (ControlFlow 0 13) 10) anon14_Then_correct) (=> (= (ControlFlow 0 13) 11) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= 0 (LitInt 12))) (=> (<= 0 (LitInt 12)) (=> (= (ControlFlow 0 15) 13) anon3_correct))))))
(let ((anon13_Then_correct  (=> (and |w#0| (= (ControlFlow 0 14) 13)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 17) 14) anon13_Then_correct) (=> (= (ControlFlow 0 17) 15) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |s#0| Tclass._module.Stream) ($IsAlloc DatatypeTypeType |s#0| Tclass._module.Stream $Heap)) (|$IsA#_module.Stream| |s#0|)) (=> (and (and (and ($Is DatatypeTypeType |t#0| Tclass._module.Stream) ($IsAlloc DatatypeTypeType |t#0| Tclass._module.Stream $Heap)) (|$IsA#_module.Stream| |t#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
