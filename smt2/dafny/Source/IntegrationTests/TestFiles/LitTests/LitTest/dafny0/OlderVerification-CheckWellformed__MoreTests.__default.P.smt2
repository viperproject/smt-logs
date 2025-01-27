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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.MoreTests.C () T@U)
(declare-fun Tagclass.MoreTests.List () T@U)
(declare-fun Tagclass.MoreTests.C? () T@U)
(declare-fun |##MoreTests.List.Nil| () T@U)
(declare-fun |##MoreTests.List.Cons| () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#MoreTests.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.MoreTests.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.MoreTests.C () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.MoreTests.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#MoreTests.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MoreTests.List.Nil_q (T@U) Bool)
(declare-fun MoreTests.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun MoreTests.__default.P (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |MoreTests.__default.P#canCall| (T@U T@U) Bool)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun MoreTests.List._h18 (T@U) T@U)
(declare-fun MoreTests.List._h17 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.MoreTests.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass.MoreTests.C Tagclass.MoreTests.List Tagclass.MoreTests.C? |##MoreTests.List.Nil| |##MoreTests.List.Cons| tytagFamily$C tytagFamily$List)
)
(assert (= (Tag TBool) TagBool))
(assert (= (DatatypeCtorId |#MoreTests.List.Nil|) |##MoreTests.List.Nil|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.MoreTests.C?)  (or (= $o null) (= (dtype $o) Tclass.MoreTests.C?)))
 :qid |unknown.0:0|
 :skolemid |6031|
 :pattern ( ($Is refType $o Tclass.MoreTests.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.MoreTests.C $h) ($IsAlloc refType |c#0| Tclass.MoreTests.C? $h))
 :qid |unknown.0:0|
 :skolemid |6034|
 :pattern ( ($IsAlloc refType |c#0| Tclass.MoreTests.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.MoreTests.C? $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((MoreTests.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#MoreTests.List.Nil| (Tclass.MoreTests.List MoreTests.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |6038|
 :pattern ( ($IsAlloc DatatypeTypeType |#MoreTests.List.Nil| (Tclass.MoreTests.List MoreTests.List$T) $h@@0))
)))
(assert (forall ((MoreTests.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#MoreTests.List.Nil| (Tclass.MoreTests.List MoreTests.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |6037|
 :pattern ( ($Is DatatypeTypeType |#MoreTests.List.Nil| (Tclass.MoreTests.List MoreTests.List$T@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.MoreTests.C? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6032|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.MoreTests.C? $h@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5309|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((MoreTests.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#MoreTests.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.MoreTests.List MoreTests.List$T@@1))  (and ($IsBox |a#6#0#0| MoreTests.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.MoreTests.List MoreTests.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |6043|
 :pattern ( ($Is DatatypeTypeType (|#MoreTests.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.MoreTests.List MoreTests.List$T@@1)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |5440|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |5441|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((d T@U) ) (! (= (MoreTests.List.Nil_q d) (= (DatatypeCtorId d) |##MoreTests.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |6035|
 :pattern ( (MoreTests.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (MoreTests.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##MoreTests.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |6040|
 :pattern ( (MoreTests.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5320|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (MoreTests.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#MoreTests.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6041|
)))
 :qid |unknown.0:0|
 :skolemid |6042|
 :pattern ( (MoreTests.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (MoreTests.List.Nil_q d@@2) (= d@@2 |#MoreTests.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |6036|
 :pattern ( (MoreTests.List.Nil_q d@@2))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5340|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5341|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall (($ly T@U) (|x#0| T@U) (|y#0| T@U) ) (! (= (MoreTests.__default.P ($LS $ly) |x#0| |y#0|) (MoreTests.__default.P $ly |x#0| |y#0|))
 :qid |OlderVerificationdfy.238:19|
 :skolemid |5993|
 :pattern ( (MoreTests.__default.P ($LS $ly) |x#0| |y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5333|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((MoreTests.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.MoreTests.List MoreTests.List$T@@2)) Tagclass.MoreTests.List) (= (TagFamily (Tclass.MoreTests.List MoreTests.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |5996|
 :pattern ( (Tclass.MoreTests.List MoreTests.List$T@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.MoreTests.C) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.MoreTests.C)))
 :qid |unknown.0:0|
 :skolemid |5995|
 :pattern ( ($IsBox bx@@0 Tclass.MoreTests.C))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.MoreTests.C?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.MoreTests.C?)))
 :qid |unknown.0:0|
 :skolemid |6030|
 :pattern ( ($IsBox bx@@1 Tclass.MoreTests.C?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.MoreTests.C)  (and ($Is refType |c#0@@0| Tclass.MoreTests.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6033|
 :pattern ( ($Is refType |c#0@@0| Tclass.MoreTests.C))
 :pattern ( ($Is refType |c#0@@0| Tclass.MoreTests.C?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|MoreTests.__default.P#canCall| |x#0@@0| |y#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| (Tclass.MoreTests.List Tclass.MoreTests.C)) ($Is SetType |y#0@@0| (TSet Tclass.MoreTests.C))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (MoreTests.__default.P $ly@@0 |x#0@@0| |y#0@@0|) ($IsAlloc SetType |y#0@@0| (TSet Tclass.MoreTests.C) $olderHeap))) ($IsAlloc DatatypeTypeType |x#0@@0| (Tclass.MoreTests.List Tclass.MoreTests.C) $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5999|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |OlderVerificationdfy.238:19|
 :skolemid |6000|
 :pattern ( (MoreTests.__default.P $ly@@0 |x#0@@0| |y#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|MoreTests.__default.P#canCall| |x#0@@1| |y#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| (Tclass.MoreTests.List Tclass.MoreTests.C)) ($Is SetType |y#0@@1| (TSet Tclass.MoreTests.C))))) (and (=> (not (MoreTests.List.Nil_q |x#0@@1|)) (let ((|tail#1| (MoreTests.List._h18 |x#0@@1|)))
(let ((|head#1| ($Unbox refType (MoreTests.List._h17 |x#0@@1|))))
 (=> (|Set#IsMember| |y#0@@1| ($Box refType |head#1|)) (|MoreTests.__default.P#canCall| |tail#1| |y#0@@1|))))) (= (MoreTests.__default.P ($LS $ly@@1) |x#0@@1| |y#0@@1|) (ite (MoreTests.List.Nil_q |x#0@@1|) true (let ((|tail#0| (MoreTests.List._h18 |x#0@@1|)))
(let ((|head#0| ($Unbox refType (MoreTests.List._h17 |x#0@@1|))))
 (and (|Set#IsMember| |y#0@@1| ($Box refType |head#0|)) (MoreTests.__default.P $ly@@1 |tail#0| |y#0@@1|))))))))
 :qid |OlderVerificationdfy.238:19|
 :skolemid |6002|
 :pattern ( (MoreTests.__default.P ($LS $ly@@1) |x#0@@1| |y#0@@1|))
))))
(assert (forall ((MoreTests.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.MoreTests.List MoreTests.List$T@@3)) (or (MoreTests.List.Nil_q d@@3) (MoreTests.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |6053|
 :pattern ( (MoreTests.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.MoreTests.List MoreTests.List$T@@3)))
 :pattern ( (MoreTests.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.MoreTests.List MoreTests.List$T@@3)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |5323|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5332|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@2| T@U) (|y#0@@2| T@U) ) (!  (=> (or (|MoreTests.__default.P#canCall| (Lit DatatypeTypeType |x#0@@2|) (Lit SetType |y#0@@2|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| (Tclass.MoreTests.List Tclass.MoreTests.C)) ($Is SetType |y#0@@2| (TSet Tclass.MoreTests.C))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (MoreTests.List.Nil_q (Lit DatatypeTypeType |x#0@@2|)))))) (let ((|tail#3| (Lit DatatypeTypeType (MoreTests.List._h18 (Lit DatatypeTypeType |x#0@@2|)))))
(let ((|head#3| (Lit refType ($Unbox refType (MoreTests.List._h17 (Lit DatatypeTypeType |x#0@@2|))))))
 (=> (|Set#IsMember| (Lit SetType |y#0@@2|) ($Box refType |head#3|)) (|MoreTests.__default.P#canCall| |tail#3| (Lit SetType |y#0@@2|)))))) (= (MoreTests.__default.P ($LS $ly@@2) (Lit DatatypeTypeType |x#0@@2|) (Lit SetType |y#0@@2|)) (ite (MoreTests.List.Nil_q (Lit DatatypeTypeType |x#0@@2|)) true (let ((|tail#2| (Lit DatatypeTypeType (MoreTests.List._h18 (Lit DatatypeTypeType |x#0@@2|)))))
(let ((|head#2| (Lit refType ($Unbox refType (MoreTests.List._h17 (Lit DatatypeTypeType |x#0@@2|))))))
 (and (|Set#IsMember| (Lit SetType |y#0@@2|) ($Box refType |head#2|)) (MoreTests.__default.P ($LS $ly@@2) |tail#2| (Lit SetType |y#0@@2|)))))))))
 :qid |OlderVerificationdfy.238:19|
 :weight 3
 :skolemid |6003|
 :pattern ( (MoreTests.__default.P ($LS $ly@@2) (Lit DatatypeTypeType |x#0@@2|) (Lit SetType |y#0@@2|)))
))))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5361|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5362|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#MoreTests.List.Cons| |a#4#0#0| |a#4#1#0|)) |##MoreTests.List.Cons|)
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6039|
 :pattern ( (|#MoreTests.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (MoreTests.List._h17 (|#MoreTests.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6048|
 :pattern ( (|#MoreTests.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (MoreTests.List._h18 (|#MoreTests.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6050|
 :pattern ( (|#MoreTests.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |5295|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |5296|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((MoreTests.List$T@@4 T@U) ) (! (= (Tclass.MoreTests.List_0 (Tclass.MoreTests.List MoreTests.List$T@@4)) MoreTests.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |5997|
 :pattern ( (Tclass.MoreTests.List MoreTests.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5319|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#MoreTests.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6049|
 :pattern ( (|#MoreTests.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#MoreTests.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6051|
 :pattern ( (|#MoreTests.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (MoreTests.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (MoreTests.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.MoreTests.List MoreTests.List$T@@5) $h@@2))) ($IsAllocBox (MoreTests.List._h17 d@@4) MoreTests.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |6045|
 :pattern ( ($IsAllocBox (MoreTests.List._h17 d@@4) MoreTests.List$T@@5 $h@@2))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8038|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5378|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |5326|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (forall ((MoreTests.List$T@@6 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.MoreTests.List MoreTests.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass.MoreTests.List MoreTests.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |5998|
 :pattern ( ($IsBox bx@@5 (Tclass.MoreTests.List MoreTests.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (MoreTests.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (MoreTests.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.MoreTests.List MoreTests.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (MoreTests.List._h18 d@@6) (Tclass.MoreTests.List MoreTests.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |6046|
 :pattern ( ($IsAlloc DatatypeTypeType (MoreTests.List._h18 d@@6) (Tclass.MoreTests.List MoreTests.List$T@@7) $h@@3))
)))
(assert (= (Tag Tclass.MoreTests.C) Tagclass.MoreTests.C))
(assert (= (TagFamily Tclass.MoreTests.C) tytagFamily$C))
(assert (= (Tag Tclass.MoreTests.C?) Tagclass.MoreTests.C?))
(assert (= (TagFamily Tclass.MoreTests.C?) tytagFamily$C))
(assert (= |#MoreTests.List.Nil| (Lit DatatypeTypeType |#MoreTests.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#MoreTests.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#MoreTests.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |OlderVerificationdfy.234:33|
 :skolemid |6047|
 :pattern ( (|#MoreTests.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5310|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |5357|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((MoreTests.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#MoreTests.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.MoreTests.List MoreTests.List$T@@8) $h@@4)  (and ($IsAllocBox |a#6#0#0@@0| MoreTests.List$T@@8 $h@@4) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.MoreTests.List MoreTests.List$T@@8) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |6044|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MoreTests.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.MoreTests.List MoreTests.List$T@@8) $h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |5336|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun |y#0@@3| () T@U)
(declare-fun |head#Z#0@0| () T@U)
(declare-fun |tail#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$MoreTests.__default.P)
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
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall (($olderHeap@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap@@0) ($OlderTag $olderHeap@@0)) (and (MoreTests.__default.P ($LS $LZ) |x#0@@3| |y#0@@3|) ($IsAlloc SetType |y#0@@3| (TSet Tclass.MoreTests.C) $olderHeap@@0))) ($IsAlloc DatatypeTypeType |x#0@@3| (Tclass.MoreTests.List Tclass.MoreTests.C) $olderHeap@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6004|
 :pattern ( ($OlderTag $olderHeap@@0))
)))))
(let ((anon7_correct  (=> (and (and (= (MoreTests.__default.P ($LS $LZ) |x#0@@3| |y#0@@3|)  (and (|Set#IsMember| |y#0@@3| ($Box refType |head#Z#0@0|)) (MoreTests.__default.P ($LS $LZ) |tail#Z#0@0| |y#0@@3|))) (=> (|Set#IsMember| |y#0@@3| ($Box refType |head#Z#0@0|)) (|MoreTests.__default.P#canCall| |tail#Z#0@0| |y#0@@3|))) (and ($Is boolType (bool_2_U (MoreTests.__default.P ($LS $LZ) |x#0@@3| |y#0@@3|)) TBool) (= (ControlFlow 0 6) 4))) GeneratedUnifiedExit_correct)))
(let ((anon13_Else_correct  (=> (and (not (|Set#IsMember| |y#0@@3| ($Box refType |head#Z#0@0|))) (= (ControlFlow 0 9) 6)) anon7_correct)))
(let ((anon13_Then_correct  (=> (|Set#IsMember| |y#0@@3| ($Box refType |head#Z#0@0|)) (=> (and ($IsAlloc DatatypeTypeType |tail#Z#0@0| (Tclass.MoreTests.List Tclass.MoreTests.C) $Heap) ($IsAlloc SetType |y#0@@3| (TSet Tclass.MoreTests.C) $Heap)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (< (DtRank |tail#Z#0@0|) (DtRank |x#0@@3|)) (and (= (DtRank |tail#Z#0@0|) (DtRank |x#0@@3|)) (and (|Set#Subset| |y#0@@3| |y#0@@3|) (not (|Set#Subset| |y#0@@3| |y#0@@3|)))))) (=> (or (< (DtRank |tail#Z#0@0|) (DtRank |x#0@@3|)) (and (= (DtRank |tail#Z#0@0|) (DtRank |x#0@@3|)) (and (|Set#Subset| |y#0@@3| |y#0@@3|) (not (|Set#Subset| |y#0@@3| |y#0@@3|))))) (=> (and (|MoreTests.__default.P#canCall| |tail#Z#0@0| |y#0@@3|) (= (ControlFlow 0 7) 6)) anon7_correct)))))))
(let ((anon12_Then_correct  (=> (= |x#0@@3| (|#MoreTests.List.Cons| ($Box refType |_mcc#0#0|) |_mcc#1#0|)) (=> (and (and (and ($Is refType |_mcc#0#0| Tclass.MoreTests.C) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.MoreTests.List Tclass.MoreTests.C))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.MoreTests.List Tclass.MoreTests.C)))) (and (and (= |tail#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($Is refType |let#1#0#0| Tclass.MoreTests.C) (= |head#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 10) 7) anon13_Then_correct) (=> (= (ControlFlow 0 10) 9) anon13_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (and (= |x#0@@3| |#MoreTests.List.Nil|) (= (MoreTests.__default.P ($LS $LZ) |x#0@@3| |y#0@@3|) (U_2_bool (Lit boolType (bool_2_U true))))) (and ($Is boolType (bool_2_U (MoreTests.__default.P ($LS $LZ) |x#0@@3| |y#0@@3|)) TBool) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct)))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |x#0@@3| |#MoreTests.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon12_Then_correct) (=> (= (ControlFlow 0 11) 2) anon12_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 12) 1) anon10_Then_correct) (=> (= (ControlFlow 0 12) 5) anon11_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |x#0@@3| (Tclass.MoreTests.List Tclass.MoreTests.C)) ($Is SetType |y#0@@3| (TSet Tclass.MoreTests.C))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
