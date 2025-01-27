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
(declare-fun Tagclass._module.FunctionHandle () T@U)
(declare-fun Tagclass._module.LList () T@U)
(declare-fun |##_module.LList.Nil| () T@U)
(declare-fun |##_module.LList.Cons| () T@U)
(declare-fun |##_module.FunctionHandle.FH| () T@U)
(declare-fun tytagFamily$FunctionHandle () T@U)
(declare-fun tytagFamily$LList () T@U)
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
(declare-fun |$PrefixEq#_module.LList| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#_module.FunctionHandle| (T@U) Bool)
(declare-fun _module.FunctionHandle.FH_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.LList.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.FunctionHandle (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.LList (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$Eq#_module.LList| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.LList.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Lappend (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Lappend#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.LList.Nil_q (T@U) Bool)
(declare-fun _module.LList.tail (T@U) T@U)
(declare-fun _module.LList.head (T@U) T@U)
(declare-fun _module.LList.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.FunctionHandle.FH| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.LList| (T@U) Bool)
(declare-fun _module.__default.Apply (T@U T@U T@U) T@U)
(declare-fun |_module.__default.Apply#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.Lmap (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Lmap#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass._module.FunctionHandle_0 (T@U) T@U)
(declare-fun Tclass._module.LList_0 (T@U) T@U)
(declare-fun _module.FunctionHandle._h0 (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.FunctionHandle Tagclass._module.LList |##_module.LList.Nil| |##_module.LList.Cons| |##_module.FunctionHandle.FH| tytagFamily$FunctionHandle tytagFamily$LList)
)
(assert (forall ((|_module.LList$T#l| T@U) (|_module.LList$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.LList| |_module.LList$T#l| |_module.LList$T#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.LList| |_module.LList$T#l| |_module.LList$T#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l| |_module.LList$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.FunctionHandle| d) (_module.FunctionHandle.FH_q d))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (|$IsA#_module.FunctionHandle| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.LList.Nil|) |##_module.LList.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.FunctionHandle$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.FunctionHandle _module.FunctionHandle$T)) (_module.FunctionHandle.FH_q d@@0))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (_module.FunctionHandle.FH_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.FunctionHandle _module.FunctionHandle$T)))
)))
(assert (forall ((|_module.LList$T#l@@0| T@U) (|_module.LList$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.LList| |_module.LList$T#l@@0| |_module.LList$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l@@0| |_module.LList$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((_module.LList$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.LList.Nil| (Tclass._module.LList _module.LList$T) $h))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.LList.Nil| (Tclass._module.LList _module.LList$T) $h))
)))
(assert (forall ((|_module.LList$T#l@@1| T@U) (|_module.LList$T#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.LList| |_module.LList$T#l@@1| |_module.LList$T#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (|$Eq#_module.LList| |_module.LList$T#l@@1| |_module.LList$T#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((_module.LList$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.LList.Nil| (Tclass._module.LList _module.LList$T@@0))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is DatatypeTypeType |#_module.LList.Nil| (Tclass._module.LList _module.LList$T@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.LList$T@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.LList.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.LList _module.LList$T@@1))  (and ($IsBox |a#5#0#0| _module.LList$T@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.LList _module.LList$T@@1))))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($Is DatatypeTypeType (|#_module.LList.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.LList _module.LList$T@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Lappend$_T0 T@U) ($ly T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Lappend#canCall| _module._default.Lappend$_T0 |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| (Tclass._module.LList _module._default.Lappend$_T0)) ($Is DatatypeTypeType |b#0| (Tclass._module.LList _module._default.Lappend$_T0))))) (and (=> (not (_module.LList.Nil_q |a#0|)) (let ((|xs#1| (_module.LList.tail |a#0|)))
(|_module.__default.Lappend#canCall| _module._default.Lappend$_T0 |xs#1| |b#0|))) (= (_module.__default.Lappend _module._default.Lappend$_T0 ($LS $ly) |a#0| |b#0|) (ite (_module.LList.Nil_q |a#0|) |b#0| (let ((|xs#0| (_module.LList.tail |a#0|)))
(let ((|x#0| (_module.LList.head |a#0|)))
(|#_module.LList.Cons| |x#0| (_module.__default.Lappend _module._default.Lappend$_T0 $ly |xs#0| |b#0|))))))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (_module.__default.Lappend _module._default.Lappend$_T0 ($LS $ly) |a#0| |b#0|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_module.LList.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.LList.Nil|))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( (_module.LList.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.LList.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.LList.Cons|))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( (_module.LList.Cons_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.FunctionHandle.FH_q d@@3) (= (DatatypeCtorId d@@3) |##_module.FunctionHandle.FH|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.FunctionHandle.FH_q d@@3))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.LList.Cons_q d@@4) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@4 (|#_module.LList.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |Paulsondfy.8:34|
 :skolemid |676|
)))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( (_module.LList.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.LList.Nil_q d@@5) (= d@@5 |#_module.LList.Nil|))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (_module.LList.Nil_q d@@5))
)))
(assert (forall ((|_module.LList$T#l@@2| T@U) (|_module.LList$T#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.LList |_module.LList$T#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.LList |_module.LList$T#r@@2|))) (= (|$PrefixEq#_module.LList| |_module.LList$T#l@@2| |_module.LList$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.LList.Nil_q d0@@2) (_module.LList.Nil_q d1@@2)) (and (and (_module.LList.Cons_q d0@@2) (_module.LList.Cons_q d1@@2)) (=> (and (_module.LList.Cons_q d0@@2) (_module.LList.Cons_q d1@@2)) (and (= (_module.LList.head d0@@2) (_module.LList.head d1@@2)) (|$PrefixEq#_module.LList| |_module.LList$T#l@@2| |_module.LList$T#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.LList.tail d0@@2) (_module.LList.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.LList| |_module.LList$T#l@@2| |_module.LList$T#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l@@2| |_module.LList$T#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.FunctionHandle.FH_q d@@6) (exists ((|a#9#0#0| T@U) ) (! (= d@@6 (|#_module.FunctionHandle.FH| |a#9#0#0|))
 :qid |Paulsondfy.11:33|
 :skolemid |699|
)))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.FunctionHandle.FH_q d@@6))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.FunctionHandle$T@@0 T@U) ) (!  (and (= (Tag (Tclass._module.FunctionHandle _module.FunctionHandle$T@@0)) Tagclass._module.FunctionHandle) (= (TagFamily (Tclass._module.FunctionHandle _module.FunctionHandle$T@@0)) tytagFamily$FunctionHandle))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (Tclass._module.FunctionHandle _module.FunctionHandle$T@@0))
)))
(assert (forall ((_module.LList$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.LList _module.LList$T@@2)) Tagclass._module.LList) (= (TagFamily (Tclass._module.LList _module.LList$T@@2)) tytagFamily$LList))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (Tclass._module.LList _module.LList$T@@2))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((_module.FunctionHandle$T@@1 T@U) (|a#10#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.FunctionHandle.FH| |a#10#0#0|) (Tclass._module.FunctionHandle _module.FunctionHandle$T@@1) $h@@0) ($IsAllocBox |a#10#0#0| _module.FunctionHandle$T@@1 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.FunctionHandle.FH| |a#10#0#0|) (Tclass._module.FunctionHandle _module.FunctionHandle$T@@1) $h@@0))
)))
(assert (forall ((|_module.LList$T#l@@3| T@U) (|_module.LList$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.LList |_module.LList$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.LList |_module.LList$T#r@@3|))) (= (|$Eq#_module.LList| |_module.LList$T#l@@3| |_module.LList$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.LList.Nil_q d0@@3) (_module.LList.Nil_q d1@@3)) (and (and (_module.LList.Cons_q d0@@3) (_module.LList.Cons_q d1@@3)) (=> (and (_module.LList.Cons_q d0@@3) (_module.LList.Cons_q d1@@3)) (and (= (_module.LList.head d0@@3) (_module.LList.head d1@@3)) (|$Eq#_module.LList| |_module.LList$T#l@@3| |_module.LList$T#r@@3| ly@@3 (_module.LList.tail d0@@3) (_module.LList.tail d1@@3))))))))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (|$Eq#_module.LList| |_module.LList$T#l@@3| |_module.LList$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.LList| d@@7) (or (_module.LList.Nil_q d@@7) (_module.LList.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (|$IsA#_module.LList| d@@7))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Apply$T T@U) (|f#0| T@U) (|argument#0| T@U) ) (!  (=> (or (|_module.__default.Apply#canCall| _module._default.Apply$T |f#0| |argument#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |f#0| (Tclass._module.FunctionHandle _module._default.Apply$T)) ($IsBox |argument#0| _module._default.Apply$T)))) ($IsBox (_module.__default.Apply _module._default.Apply$T |f#0| |argument#0|) _module._default.Apply$T))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.__default.Apply _module._default.Apply$T |f#0| |argument#0|))
))))
(assert (forall ((_module.LList$T@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._module.LList _module.LList$T@@3)) (or (_module.LList.Nil_q d@@8) (_module.LList.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (_module.LList.Cons_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.LList _module.LList$T@@3)))
 :pattern ( (_module.LList.Nil_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.LList _module.LList$T@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Apply$T@@0 T@U) (|f#0@@0| T@U) (|argument#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.Apply#canCall| _module._default.Apply$T@@0 |f#0@@0| |argument#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |f#0@@0| (Tclass._module.FunctionHandle _module._default.Apply$T@@0)) ($IsAlloc DatatypeTypeType |f#0@@0| (Tclass._module.FunctionHandle _module._default.Apply$T@@0) $Heap)) (and ($IsBox |argument#0@@0| _module._default.Apply$T@@0) ($IsAllocBox |argument#0@@0| _module._default.Apply$T@@0 $Heap))))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.Apply _module._default.Apply$T@@0 |f#0@@0| |argument#0@@0|) _module._default.Apply$T@@0 $Heap))
 :qid |Paulsondfy.12:16|
 :skolemid |585|
 :pattern ( ($IsAllocBox (_module.__default.Apply _module._default.Apply$T@@0 |f#0@@0| |argument#0@@0|) _module._default.Apply$T@@0 $Heap))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.LList.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.LList.Cons|)
 :qid |Paulsondfy.8:34|
 :skolemid |674|
 :pattern ( (|#_module.LList.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.LList.head (|#_module.LList.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |Paulsondfy.8:34|
 :skolemid |682|
 :pattern ( (|#_module.LList.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.LList.tail (|#_module.LList.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |Paulsondfy.8:34|
 :skolemid |683|
 :pattern ( (|#_module.LList.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Lappend$_T0@@0 T@U) ($ly@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Lappend#canCall| _module._default.Lappend$_T0@@0 |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.LList _module._default.Lappend$_T0@@0)) ($Is DatatypeTypeType |b#0@@0| (Tclass._module.LList _module._default.Lappend$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.Lappend _module._default.Lappend$_T0@@0 $ly@@0 |a#0@@0| |b#0@@0|) (Tclass._module.LList _module._default.Lappend$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (_module.__default.Lappend _module._default.Lappend$_T0@@0 $ly@@0 |a#0@@0| |b#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Lmap$_T0 T@U) ($ly@@1 T@U) (|f#0@@1| T@U) (|a#0@@1| T@U) ) (!  (=> (or (|_module.__default.Lmap#canCall| _module._default.Lmap$_T0 |f#0@@1| |a#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |f#0@@1| (Tclass._module.FunctionHandle _module._default.Lmap$_T0)) ($Is DatatypeTypeType |a#0@@1| (Tclass._module.LList _module._default.Lmap$_T0))))) ($Is DatatypeTypeType (_module.__default.Lmap _module._default.Lmap$_T0 $ly@@1 |f#0@@1| |a#0@@1|) (Tclass._module.LList _module._default.Lmap$_T0)))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( (_module.__default.Lmap _module._default.Lmap$_T0 $ly@@1 |f#0@@1| |a#0@@1|))
))))
(assert (forall ((_module.FunctionHandle$T@@2 T@U) ) (! (= (Tclass._module.FunctionHandle_0 (Tclass._module.FunctionHandle _module.FunctionHandle$T@@2)) _module.FunctionHandle$T@@2)
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (Tclass._module.FunctionHandle _module.FunctionHandle$T@@2))
)))
(assert (forall ((_module.LList$T@@4 T@U) ) (! (= (Tclass._module.LList_0 (Tclass._module.LList _module.LList$T@@4)) _module.LList$T@@4)
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (Tclass._module.LList _module.LList$T@@4))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.FunctionHandle.FH| |a#8#0#0|)) |##_module.FunctionHandle.FH|)
 :qid |Paulsondfy.11:33|
 :skolemid |697|
 :pattern ( (|#_module.FunctionHandle.FH| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (_module.FunctionHandle._h0 (|#_module.FunctionHandle.FH| |a#12#0#0|)) |a#12#0#0|)
 :qid |Paulsondfy.11:33|
 :skolemid |705|
 :pattern ( (|#_module.FunctionHandle.FH| |a#12#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((_module.FunctionHandle$T@@3 T@U) (|a#10#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.FunctionHandle.FH| |a#10#0#0@@0|) (Tclass._module.FunctionHandle _module.FunctionHandle$T@@3)) ($IsBox |a#10#0#0@@0| _module.FunctionHandle$T@@3))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($Is DatatypeTypeType (|#_module.FunctionHandle.FH| |a#10#0#0@@0|) (Tclass._module.FunctionHandle _module.FunctionHandle$T@@3)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.Lmap$_T0@@0 T@U) ($ly@@2 T@U) (|f#0@@2| T@U) (|a#0@@2| T@U) ) (!  (=> (or (|_module.__default.Lmap#canCall| _module._default.Lmap$_T0@@0 |f#0@@2| |a#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |f#0@@2| (Tclass._module.FunctionHandle _module._default.Lmap$_T0@@0)) ($Is DatatypeTypeType |a#0@@2| (Tclass._module.LList _module._default.Lmap$_T0@@0))))) (and (=> (not (_module.LList.Nil_q |a#0@@2|)) (let ((|xs#1@@0| (_module.LList.tail |a#0@@2|)))
(let ((|x#1| (_module.LList.head |a#0@@2|)))
 (and (|_module.__default.Apply#canCall| _module._default.Lmap$_T0@@0 |f#0@@2| |x#1|) (|_module.__default.Lmap#canCall| _module._default.Lmap$_T0@@0 |f#0@@2| |xs#1@@0|))))) (= (_module.__default.Lmap _module._default.Lmap$_T0@@0 ($LS $ly@@2) |f#0@@2| |a#0@@2|) (ite (_module.LList.Nil_q |a#0@@2|) |#_module.LList.Nil| (let ((|xs#0@@0| (_module.LList.tail |a#0@@2|)))
(let ((|x#0@@0| (_module.LList.head |a#0@@2|)))
(|#_module.LList.Cons| (_module.__default.Apply _module._default.Lmap$_T0@@0 |f#0@@2| |x#0@@0|) (_module.__default.Lmap _module._default.Lmap$_T0@@0 $ly@@2 |f#0@@2| |xs#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (_module.__default.Lmap _module._default.Lmap$_T0@@0 ($LS $ly@@2) |f#0@@2| |a#0@@2|))
))))
(assert (forall ((|_module.LList$T#l@@4| T@U) (|_module.LList$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.LList| |_module.LList$T#l@@4| |_module.LList$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.LList| |_module.LList$T#l@@4| |_module.LList$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l@@4| |_module.LList$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( (|$Eq#_module.LList| |_module.LList$T#l@@4| |_module.LList$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (< (BoxRank |a#13#0#0|) (DtRank (|#_module.FunctionHandle.FH| |a#13#0#0|)))
 :qid |Paulsondfy.11:33|
 :skolemid |706|
 :pattern ( (|#_module.FunctionHandle.FH| |a#13#0#0|))
)))
(assert (forall ((d@@9 T@U) (_module.LList$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.LList.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.LList _module.LList$T@@5) $h@@1))) ($IsAllocBox (_module.LList.head d@@9) _module.LList$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsAllocBox (_module.LList.head d@@9) _module.LList$T@@5 $h@@1))
)))
(assert (forall ((d@@10 T@U) (_module.FunctionHandle$T@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.FunctionHandle.FH_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.FunctionHandle _module.FunctionHandle$T@@4) $h@@2))) ($IsAllocBox (_module.FunctionHandle._h0 d@@10) _module.FunctionHandle$T@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($IsAllocBox (_module.FunctionHandle._h0 d@@10) _module.FunctionHandle$T@@4 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
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
 :skolemid |711|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.Lappend$_T0@@1 T@U) ($ly@@3 T@U) (|a#0@@3| T@U) (|b#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.Lappend#canCall| _module._default.Lappend$_T0@@1 |a#0@@3| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |a#0@@3| (Tclass._module.LList _module._default.Lappend$_T0@@1)) ($IsAlloc DatatypeTypeType |a#0@@3| (Tclass._module.LList _module._default.Lappend$_T0@@1) $Heap@@0)) (and ($Is DatatypeTypeType |b#0@@1| (Tclass._module.LList _module._default.Lappend$_T0@@1)) ($IsAlloc DatatypeTypeType |b#0@@1| (Tclass._module.LList _module._default.Lappend$_T0@@1) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.Lappend _module._default.Lappend$_T0@@1 $ly@@3 |a#0@@3| |b#0@@1|) (Tclass._module.LList _module._default.Lappend$_T0@@1) $Heap@@0))
 :qid |Paulsondfy.26:16|
 :skolemid |604|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Lappend _module._default.Lappend$_T0@@1 $ly@@3 |a#0@@3| |b#0@@1|) (Tclass._module.LList _module._default.Lappend$_T0@@1) $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.Lmap$_T0@@1 T@U) ($ly@@4 T@U) (|f#0@@3| T@U) (|a#0@@4| T@U) ) (!  (=> (and (or (|_module.__default.Lmap#canCall| _module._default.Lmap$_T0@@1 |f#0@@3| |a#0@@4|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |f#0@@3| (Tclass._module.FunctionHandle _module._default.Lmap$_T0@@1)) ($IsAlloc DatatypeTypeType |f#0@@3| (Tclass._module.FunctionHandle _module._default.Lmap$_T0@@1) $Heap@@1)) (and ($Is DatatypeTypeType |a#0@@4| (Tclass._module.LList _module._default.Lmap$_T0@@1)) ($IsAlloc DatatypeTypeType |a#0@@4| (Tclass._module.LList _module._default.Lmap$_T0@@1) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.Lmap _module._default.Lmap$_T0@@1 $ly@@4 |f#0@@3| |a#0@@4|) (Tclass._module.LList _module._default.Lmap$_T0@@1) $Heap@@1))
 :qid |Paulsondfy.19:16|
 :skolemid |596|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Lmap _module._default.Lmap$_T0@@1 $ly@@4 |f#0@@3| |a#0@@4|) (Tclass._module.LList _module._default.Lmap$_T0@@1) $Heap@@1))
))))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((_module._default.Lmap$_T0@@2 T@U) ($ly@@5 T@U) (|f#0@@4| T@U) (|a#0@@5| T@U) ) (! (= (_module.__default.Lmap _module._default.Lmap$_T0@@2 ($LS $ly@@5) |f#0@@4| |a#0@@5|) (_module.__default.Lmap _module._default.Lmap$_T0@@2 $ly@@5 |f#0@@4| |a#0@@5|))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.__default.Lmap _module._default.Lmap$_T0@@2 ($LS $ly@@5) |f#0@@4| |a#0@@5|))
)))
(assert (forall ((_module._default.Lappend$_T0@@2 T@U) ($ly@@6 T@U) (|a#0@@6| T@U) (|b#0@@2| T@U) ) (! (= (_module.__default.Lappend _module._default.Lappend$_T0@@2 ($LS $ly@@6) |a#0@@6| |b#0@@2|) (_module.__default.Lappend _module._default.Lappend$_T0@@2 $ly@@6 |a#0@@6| |b#0@@2|))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.Lappend _module._default.Lappend$_T0@@2 ($LS $ly@@6) |a#0@@6| |b#0@@2|))
)))
(assert (forall ((_module.FunctionHandle$T@@5 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.FunctionHandle _module.FunctionHandle$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.FunctionHandle _module.FunctionHandle$T@@5))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsBox bx (Tclass._module.FunctionHandle _module.FunctionHandle$T@@5)))
)))
(assert (forall ((_module.LList$T@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.LList _module.LList$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.LList _module.LList$T@@6))))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx@@0 (Tclass._module.LList _module.LList$T@@6)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@12 T@U) (_module.LList$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.LList.Cons_q d@@12) ($IsAlloc DatatypeTypeType d@@12 (Tclass._module.LList _module.LList$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.LList.tail d@@12) (Tclass._module.LList _module.LList$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.LList.tail d@@12) (Tclass._module.LList _module.LList$T@@7) $h@@3))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.LList$T#l@@5| T@U) (|_module.LList$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.LList| |_module.LList$T#l@@5| |_module.LList$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.LList| |_module.LList$T#l@@5| |_module.LList$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l@@5| |_module.LList$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.LList| |_module.LList$T#l@@5| |_module.LList$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.LList$T#l@@6| T@U) (|_module.LList$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.LList| |_module.LList$T#l@@6| |_module.LList$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.LList| |_module.LList$T#l@@6| |_module.LList$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (|$Eq#_module.LList| |_module.LList$T#l@@6| |_module.LList$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (|#_module.FunctionHandle.FH| (Lit BoxType |a#11#0#0|)) (Lit DatatypeTypeType (|#_module.FunctionHandle.FH| |a#11#0#0|)))
 :qid |Paulsondfy.11:33|
 :skolemid |704|
 :pattern ( (|#_module.FunctionHandle.FH| (Lit BoxType |a#11#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|_module.LList$T#l@@7| T@U) (|_module.LList$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.LList| |_module.LList$T#l@@7| |_module.LList$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( (|$PrefixEq#_module.LList| |_module.LList$T#l@@7| |_module.LList$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.LList| |_module.LList$T#l@@7| |_module.LList$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( (|$Eq#_module.LList| |_module.LList$T#l@@7| |_module.LList$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((_module.LList$T@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.LList.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.LList _module.LList$T@@8) $h@@4)  (and ($IsAllocBox |a#5#0#0@@0| _module.LList$T@@8 $h@@4) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.LList _module.LList$T@@8) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.LList.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.LList _module.LList$T@@8) $h@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module._default.Example8#$A| () T@U)
(declare-fun |_k#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |f#1| () T@U)
(declare-fun |M#1| () T@U)
(declare-fun |N#1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Example8_h)
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
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.LList.Nil_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.Nil_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))))))) (=> (or (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.LList.Nil_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.Nil_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.LList.Cons_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (and (_module.LList.Cons_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))) (and (= (_module.LList.head (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.head (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))) (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.LList.tail (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.tail (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))))))))) (=> (or (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.LList.Cons_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (and (_module.LList.Cons_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))) (and (= (_module.LList.head (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.head (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))) (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.LList.tail (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.tail (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|))) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (and (=> (_module.LList.Nil_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.Nil_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))) (=> (_module.LList.Cons_q (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (and (_module.LList.Cons_q (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))) (and (= (_module.LList.head (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.head (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|)))) (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.LList.tail (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) |M#1| |N#1|))) (_module.LList.tail (_module.__default.Lappend |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS ($LS $LZ)) |f#1| |N#1|))))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#1| |N#1|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |M#1|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#1| |N#1|)))))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#0| T@U) (|f#2| T@U) (|M#2| T@U) (|N#2| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |f#2| (Tclass._module.FunctionHandle |_module._default.Example8#$A|)) ($Is DatatypeTypeType |M#2| (Tclass._module.LList |_module._default.Example8#$A|))) ($Is DatatypeTypeType |N#2| (Tclass._module.LList |_module._default.Example8#$A|))) (|ORD#Less| |_k'#0| |_k#0|)) (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |_k'#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#2| |N#2|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| |M#2|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| |N#2|))))
 :qid |Paulsondfy.163:16|
 :skolemid |667|
 :pattern ( (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| |M#2|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| |N#2|)) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |f#2| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |M#2| |N#2|)) (|ORD#Less| |_k'#0| |_k#0|))
)) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0|)) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (|$IsA#_module.FunctionHandle| |f#1|)) (and (|$IsA#_module.LList| |M#1|) (|$IsA#_module.LList| |N#1|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@2 $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#f0#0| T@U) (|$ih#M0#0| T@U) (|$ih#N0#0| T@U) ) (!  (=> (and (and (and (and ($Is DatatypeTypeType |$ih#f0#0| (Tclass._module.FunctionHandle |_module._default.Example8#$A|)) ($Is DatatypeTypeType |$ih#M0#0| (Tclass._module.LList |_module._default.Example8#$A|))) ($Is DatatypeTypeType |$ih#N0#0| (Tclass._module.LList |_module._default.Example8#$A|))) (U_2_bool (Lit boolType (bool_2_U true)))) (or (|ORD#Less| |$ih#_k0#0| |_k#0|) (and (= |$ih#_k0#0| |_k#0|) (< (DtRank |$ih#f0#0|) (DtRank |f#1|))))) (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |$ih#M0#0| |$ih#N0#0|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| |$ih#M0#0|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| |$ih#N0#0|))))
 :qid |Paulsondfy.163:16|
 :skolemid |666|
 :pattern ( (|$PrefixEq#_module.LList| |_module._default.Example8#$A| |_module._default.Example8#$A| |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) |$ih#M0#0| |$ih#N0#0|)) (_module.__default.Lappend |_module._default.Example8#$A| ($LS $LZ) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| |$ih#M0#0|) (_module.__default.Lmap |_module._default.Example8#$A| ($LS $LZ) |$ih#f0#0| |$ih#N0#0|))))
))))) (and (=> (= (ControlFlow 0 7) 5) anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (and ($Is DatatypeTypeType |f#1| (Tclass._module.FunctionHandle |_module._default.Example8#$A|)) ($IsAlloc DatatypeTypeType |f#1| (Tclass._module.FunctionHandle |_module._default.Example8#$A|) $Heap@@2)) (|$IsA#_module.FunctionHandle| |f#1|)) (and (and ($Is DatatypeTypeType |M#1| (Tclass._module.LList |_module._default.Example8#$A|)) ($IsAlloc DatatypeTypeType |M#1| (Tclass._module.LList |_module._default.Example8#$A|) $Heap@@2)) (|$IsA#_module.LList| |M#1|))) (and (and (and ($Is DatatypeTypeType |N#1| (Tclass._module.LList |_module._default.Example8#$A|)) ($IsAlloc DatatypeTypeType |N#1| (Tclass._module.LList |_module._default.Example8#$A|) $Heap@@2)) (|$IsA#_module.LList| |N#1|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 8) 7)))) anon0_correct))))
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
