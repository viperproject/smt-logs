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
(declare-fun Tagclass._module.Co () T@U)
(declare-fun |##_module.Co.Cobalt| () T@U)
(declare-fun |##_module.Co.Continues| () T@U)
(declare-fun tytagFamily$Co () T@U)
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
(declare-fun |$PrefixEq#_module.Co| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Co.Cobalt| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Co (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$Eq#_module.Co| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Co.Cobalt_q (T@U) Bool)
(declare-fun _module.Co.Continues_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Co.Continues| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.Co| (T@U) Bool)
(declare-fun _module.Co.next (T@U) T@U)
(declare-fun Tclass._module.Co_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Co |##_module.Co.Cobalt| |##_module.Co.Continues| tytagFamily$Co)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|_module.Co$A#l| T@U) (|_module.Co$A#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Co| |_module.Co$A#l| |_module.Co$A#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.Co| |_module.Co$A#l| |_module.Co$A#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l| |_module.Co$A#r| k ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Co.Cobalt|) |##_module.Co.Cobalt|))
(assert (forall ((|_module.Co$A#l@@0| T@U) (|_module.Co$A#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.Co| |_module.Co$A#l@@0| |_module.Co$A#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l@@0| |_module.Co$A#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Co$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Co.Cobalt| (Tclass._module.Co _module.Co$A) $h))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Co.Cobalt| (Tclass._module.Co _module.Co$A) $h))
)))
(assert (forall ((|_module.Co$A#l@@1| T@U) (|_module.Co$A#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.Co| |_module.Co$A#l@@1| |_module.Co$A#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |669|
 :pattern ( (|$Eq#_module.Co| |_module.Co$A#l@@1| |_module.Co$A#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((_module.Co$A@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Co.Cobalt| (Tclass._module.Co _module.Co$A@@0))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($Is DatatypeTypeType |#_module.Co.Cobalt| (Tclass._module.Co _module.Co$A@@0)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k@@1 T@U) ) (!  (=> ($HeapSucc h k@@1) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k@@1))
)))
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
(assert (forall ((d T@U) ) (! (= (_module.Co.Cobalt_q d) (= (DatatypeCtorId d) |##_module.Co.Cobalt|))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.Co.Cobalt_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Co.Continues_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Co.Continues|))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( (_module.Co.Continues_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Co.Cobalt_q d@@1) (= d@@1 |#_module.Co.Cobalt|))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (_module.Co.Cobalt_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Co.Continues_q d@@2) (exists ((|a#4#0#0| T@U) ) (! (= d@@2 (|#_module.Co.Continues| |a#4#0#0|))
 :qid |TypeMembersdfy.125:39|
 :skolemid |659|
)))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( (_module.Co.Continues_q d@@2))
)))
(assert (forall ((h@@0 T@U) (k@@2 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@2) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@2)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@2) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((_module.Co$A@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Co _module.Co$A@@1)) Tagclass._module.Co) (= (TagFamily (Tclass._module.Co _module.Co$A@@1)) tytagFamily$Co))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (Tclass._module.Co _module.Co$A@@1))
)))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@2))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@2 p@@0)) (|ORD#IsNat| o@@2)) (= (|ORD#Offset| (|ORD#Minus| o@@2 p@@0)) (- (|ORD#Offset| o@@2) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@2 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Co| d@@3) (or (_module.Co.Cobalt_q d@@3) (_module.Co.Continues_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (|$IsA#_module.Co| d@@3))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
(assert (forall ((_module.Co$A@@2 T@U) (|a#5#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Co.Continues| |a#5#0#0|) (Tclass._module.Co _module.Co$A@@2) $h@@0) ($IsAlloc DatatypeTypeType |a#5#0#0| (Tclass._module.Co _module.Co$A@@2) $h@@0)))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Co.Continues| |a#5#0#0|) (Tclass._module.Co _module.Co$A@@2) $h@@0))
)))
(assert (forall ((_module.Co$A@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Co _module.Co$A@@3)) (or (_module.Co.Cobalt_q d@@4) (_module.Co.Continues_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (_module.Co.Continues_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Co _module.Co$A@@3)))
 :pattern ( (_module.Co.Cobalt_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Co _module.Co$A@@3)))
)))
(assert (forall ((|_module.Co$A#l@@2| T@U) (|_module.Co$A#r@@2| T@U) (k@@3 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Co |_module.Co$A#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Co |_module.Co$A#r@@2|))) (= (|$PrefixEq#_module.Co| |_module.Co$A#l@@2| |_module.Co$A#r@@2| k@@3 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@3)) (or (and (_module.Co.Cobalt_q d0@@2) (_module.Co.Cobalt_q d1@@2)) (and (and (_module.Co.Continues_q d0@@2) (_module.Co.Continues_q d1@@2)) (=> (and (_module.Co.Continues_q d0@@2) (_module.Co.Continues_q d1@@2)) (|$PrefixEq#_module.Co| |_module.Co$A#l@@2| |_module.Co$A#r@@2| (|ORD#Minus| k@@3 (|ORD#FromNat| 1)) ly@@2 (_module.Co.next d0@@2) (_module.Co.next d1@@2)))))) (=> (and (or (not (= k@@3 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@3) 0)) (|$Eq#_module.Co| |_module.Co$A#l@@2| |_module.Co$A#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l@@2| |_module.Co$A#r@@2| k@@3 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((_module.Co$A@@4 T@U) ) (! (= (Tclass._module.Co_0 (Tclass._module.Co _module.Co$A@@4)) _module.Co$A@@4)
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (Tclass._module.Co _module.Co$A@@4))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Co.Continues| |a#3#0#0|)) |##_module.Co.Continues|)
 :qid |TypeMembersdfy.125:39|
 :skolemid |657|
 :pattern ( (|#_module.Co.Continues| |a#3#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (_module.Co.next (|#_module.Co.Continues| |a#6#0#0|)) |a#6#0#0|)
 :qid |TypeMembersdfy.125:39|
 :skolemid |664|
 :pattern ( (|#_module.Co.Continues| |a#6#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@2) (or (not (= o@@5 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@5 p@@2))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@5 p@@2) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@5 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@2))
)))
(assert (forall ((|_module.Co$A#l@@3| T@U) (|_module.Co$A#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (! (= (|$Eq#_module.Co| |_module.Co$A#l@@3| |_module.Co$A#r@@3| ($LS ly@@3) d0@@3 d1@@3) (forall ((k@@4 T@U) ) (! (|$PrefixEq#_module.Co| |_module.Co$A#l@@3| |_module.Co$A#r@@3| k@@4 ($LS ly@@3) d0@@3 d1@@3)
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l@@3| |_module.Co$A#r@@3| k@@4 ($LS ly@@3) d0@@3 d1@@3))
)))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( (|$Eq#_module.Co| |_module.Co$A#l@@3| |_module.Co$A#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |785|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_module.Co$A#l@@4| T@U) (|_module.Co$A#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@4 (Tclass._module.Co |_module.Co$A#l@@4|)) ($Is DatatypeTypeType d1@@4 (Tclass._module.Co |_module.Co$A#r@@4|))) (= (|$Eq#_module.Co| |_module.Co$A#l@@4| |_module.Co$A#r@@4| ($LS ly@@4) d0@@4 d1@@4)  (or (and (_module.Co.Cobalt_q d0@@4) (_module.Co.Cobalt_q d1@@4)) (and (and (_module.Co.Continues_q d0@@4) (_module.Co.Continues_q d1@@4)) (=> (and (_module.Co.Continues_q d0@@4) (_module.Co.Continues_q d1@@4)) (|$Eq#_module.Co| |_module.Co$A#l@@4| |_module.Co$A#r@@4| ly@@4 (_module.Co.next d0@@4) (_module.Co.next d1@@4)))))))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (|$Eq#_module.Co| |_module.Co$A#l@@4| |_module.Co$A#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((_module.Co$A@@5 T@U) (|a#5#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Co.Continues| |a#5#0#0@@0|) (Tclass._module.Co _module.Co$A@@5)) ($Is DatatypeTypeType |a#5#0#0@@0| (Tclass._module.Co _module.Co$A@@5)))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( ($Is DatatypeTypeType (|#_module.Co.Continues| |a#5#0#0@@0|) (Tclass._module.Co _module.Co$A@@5)))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@5 T@U) (_module.Co$A@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Co.Continues_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Co _module.Co$A@@6) $h@@1))) ($IsAlloc DatatypeTypeType (_module.Co.next d@@5) (Tclass._module.Co _module.Co$A@@6) $h@@1))
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Co.next d@@5) (Tclass._module.Co _module.Co$A@@6) $h@@1))
)))
(assert (forall ((o@@7 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@7))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@3) o@@7)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@3) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@3))
)))
(assert (forall ((|_module.Co$A#l@@5| T@U) (|_module.Co$A#r@@5| T@U) (k@@5 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@5 m@@5) (|$PrefixEq#_module.Co| |_module.Co$A#l@@5| |_module.Co$A#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Co| |_module.Co$A#l@@5| |_module.Co$A#r@@5| k@@5 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l@@5| |_module.Co$A#r@@5| k@@5 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Co| |_module.Co$A#l@@5| |_module.Co$A#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Co$A#l@@6| T@U) (|_module.Co$A#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Co| |_module.Co$A#l@@6| |_module.Co$A#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Co| |_module.Co$A#l@@6| |_module.Co$A#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (|$Eq#_module.Co| |_module.Co$A#l@@6| |_module.Co$A#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((|_module.Co$A#l@@7| T@U) (|_module.Co$A#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@6 Int) ) (!  (=> (<= 0 k@@6) (|$PrefixEq#_module.Co| |_module.Co$A#l@@7| |_module.Co$A#r@@7| (|ORD#FromNat| k@@6) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (|$PrefixEq#_module.Co| |_module.Co$A#l@@7| |_module.Co$A#r@@7| (|ORD#FromNat| k@@6) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Co| |_module.Co$A#l@@7| |_module.Co$A#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( (|$Eq#_module.Co| |_module.Co$A#l@@7| |_module.Co$A#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$_module.Co.M)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
