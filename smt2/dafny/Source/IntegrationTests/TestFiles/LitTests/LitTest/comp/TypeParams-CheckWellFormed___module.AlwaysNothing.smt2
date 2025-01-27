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
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._module.IList () T@U)
(declare-fun |##_module.IList.ICons| () T@U)
(declare-fun |##_module.IList.INil| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$IList () T@U)
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
(declare-fun |$PrefixEq#_module.IList| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.__default.FauxEvva (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun |#_module.IList.INil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.IList (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun |$Eq#_module.IList| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.IList.ICons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.IList.ICons_q (T@U) Bool)
(declare-fun _module.IList.INil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.IList._h5 (T@U) T@U)
(declare-fun _module.IList._h6 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.FauxEvva#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.IList| (T@U) Bool)
(declare-fun Tclass._module.IList_0 (T@U) T@U)
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
(assert (distinct alloc |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._module.IList |##_module.IList.ICons| |##_module.IList.INil| |tytagFamily$_tuple#0| tytagFamily$IList)
)
(assert (forall ((|_module.IList$G#l| T@U) (|_module.IList$G#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.IList| |_module.IList$G#l| |_module.IList$G#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.IList| |_module.IList$G#l| |_module.IList$G#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |898|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l| |_module.IList$G#r| k ($LS ly) d0 d1))
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
(assert (forall ((_module._default.FauxEvva$G T@U) ($ly T@U) (|g#0| T@U) ) (! (= (_module.__default.FauxEvva _module._default.FauxEvva$G ($LS $ly) |g#0|) (_module.__default.FauxEvva _module._default.FauxEvva$G $ly |g#0|))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( (_module.__default.FauxEvva _module._default.FauxEvva$G ($LS $ly) |g#0|))
)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (DatatypeCtorId |#_module.IList.INil|) |##_module.IList.INil|))
(assert (forall ((|_module.IList$G#l@@0| T@U) (|_module.IList$G#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.IList| |_module.IList$G#l@@0| |_module.IList$G#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l@@0| |_module.IList$G#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.IList$G T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.IList.INil| (Tclass._module.IList _module.IList$G) $h))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.IList.INil| (Tclass._module.IList _module.IList$G) $h))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall ((|_module.IList$G#l@@1| T@U) (|_module.IList$G#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.IList| |_module.IList$G#l@@1| |_module.IList$G#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |896|
 :pattern ( (|$Eq#_module.IList| |_module.IList$G#l@@1| |_module.IList$G#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((_module.IList$G@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.IList.INil| (Tclass._module.IList _module.IList$G@@0))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( ($Is DatatypeTypeType |#_module.IList.INil| (Tclass._module.IList _module.IList$G@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.IList$G@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IList.ICons| |a#2#0#0| |a#2#1#0|) (Tclass._module.IList _module.IList$G@@1))  (and ($IsBox |a#2#0#0| _module.IList$G@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.IList _module.IList$G@@1))))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($Is DatatypeTypeType (|#_module.IList.ICons| |a#2#0#0| |a#2#1#0|) (Tclass._module.IList _module.IList$G@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.IList.ICons_q d) (= (DatatypeCtorId d) |##_module.IList.ICons|))
 :qid |unknown.0:0|
 :skolemid |879|
 :pattern ( (_module.IList.ICons_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.IList.INil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.IList.INil|))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( (_module.IList.INil_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((|_module.IList$G#l@@2| T@U) (|_module.IList$G#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.IList |_module.IList$G#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.IList |_module.IList$G#r@@2|))) (= (|$Eq#_module.IList| |_module.IList$G#l@@2| |_module.IList$G#r@@2| ($LS ly@@2) d0@@2 d1@@2)  (or (and (and (_module.IList.ICons_q d0@@2) (_module.IList.ICons_q d1@@2)) (=> (and (_module.IList.ICons_q d0@@2) (_module.IList.ICons_q d1@@2)) (and (= (_module.IList._h5 d0@@2) (_module.IList._h5 d1@@2)) (|$Eq#_module.IList| |_module.IList$G#l@@2| |_module.IList$G#r@@2| ly@@2 (_module.IList._h6 d0@@2) (_module.IList._h6 d1@@2))))) (and (_module.IList.INil_q d0@@2) (_module.IList.INil_q d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( (|$Eq#_module.IList| |_module.IList$G#l@@2| |_module.IList$G#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.IList.ICons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_module.IList.ICons| |a#1#0#0| |a#1#1#0|))
 :qid |TypeParamsdfy.145:29|
 :skolemid |880|
)))
 :qid |unknown.0:0|
 :skolemid |881|
 :pattern ( (_module.IList.ICons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.IList.INil_q d@@2) (= d@@2 |#_module.IList.INil|))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( (_module.IList.INil_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.FauxEvva$G@@0 T@U) ($ly@@0 T@U) (|g#0@@0| T@U) ) (!  (=> (or (|_module.__default.FauxEvva#canCall| _module._default.FauxEvva$G@@0 |g#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@0| _module._default.FauxEvva$G@@0))) (and (|_module.__default.FauxEvva#canCall| _module._default.FauxEvva$G@@0 |g#0@@0|) (= (_module.__default.FauxEvva _module._default.FauxEvva$G@@0 ($LS $ly@@0) |g#0@@0|) (|#_module.IList.ICons| |g#0@@0| (_module.__default.FauxEvva _module._default.FauxEvva$G@@0 $ly@@0 |g#0@@0|)))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.__default.FauxEvva _module._default.FauxEvva$G@@0 ($LS $ly@@0) |g#0@@0|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.IList$G@@2 T@U) ) (!  (and (= (Tag (Tclass._module.IList _module.IList$G@@2)) Tagclass._module.IList) (= (TagFamily (Tclass._module.IList _module.IList$G@@2)) tytagFamily$IList))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( (Tclass._module.IList _module.IList$G@@2))
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
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx Tclass._System.Tuple0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.IList| d@@3) (or (_module.IList.ICons_q d@@3) (_module.IList.INil_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( (|$IsA#_module.IList| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((_module.IList$G@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.IList _module.IList$G@@3)) (or (_module.IList.ICons_q d@@4) (_module.IList.INil_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( (_module.IList.INil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.IList _module.IList$G@@3)))
 :pattern ( (_module.IList.ICons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.IList _module.IList$G@@3)))
)))
(assert (forall ((|_module.IList$G#l@@3| T@U) (|_module.IList$G#r@@3| T@U) (k@@1 T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.IList |_module.IList$G#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.IList |_module.IList$G#r@@3|))) (= (|$PrefixEq#_module.IList| |_module.IList$G#l@@3| |_module.IList$G#r@@3| k@@1 ($LS ly@@3) d0@@3 d1@@3)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (and (_module.IList.ICons_q d0@@3) (_module.IList.ICons_q d1@@3)) (=> (and (_module.IList.ICons_q d0@@3) (_module.IList.ICons_q d1@@3)) (and (= (_module.IList._h5 d0@@3) (_module.IList._h5 d1@@3)) (|$PrefixEq#_module.IList| |_module.IList$G#l@@3| |_module.IList$G#r@@3| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@3 (_module.IList._h6 d0@@3) (_module.IList._h6 d1@@3))))) (and (_module.IList.INil_q d0@@3) (_module.IList.INil_q d1@@3)))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.IList| |_module.IList$G#l@@3| |_module.IList$G#r@@3| ly@@3 d0@@3 d1@@3)))))
 :qid |unknown.0:0|
 :skolemid |897|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l@@3| |_module.IList$G#r@@3| k@@1 ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.FauxEvva$G@@1 T@U) ($ly@@1 T@U) (|g#0@@1| T@U) ) (!  (=> (or (|_module.__default.FauxEvva#canCall| _module._default.FauxEvva$G@@1 |g#0@@1|) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@1| _module._default.FauxEvva$G@@1))) ($Is DatatypeTypeType (_module.__default.FauxEvva _module._default.FauxEvva$G@@1 $ly@@1 |g#0@@1|) (Tclass._module.IList _module._default.FauxEvva$G@@1)))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.__default.FauxEvva _module._default.FauxEvva$G@@1 $ly@@1 |g#0@@1|))
))))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.IList.ICons| |a#0#0#0| |a#0#1#0|)) |##_module.IList.ICons|)
 :qid |TypeParamsdfy.145:29|
 :skolemid |878|
 :pattern ( (|#_module.IList.ICons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.IList._h5 (|#_module.IList.ICons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |TypeParamsdfy.145:29|
 :skolemid |886|
 :pattern ( (|#_module.IList.ICons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.IList._h6 (|#_module.IList.ICons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |TypeParamsdfy.145:29|
 :skolemid |887|
 :pattern ( (|#_module.IList.ICons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((_module.IList$G@@4 T@U) ) (! (= (Tclass._module.IList_0 (Tclass._module.IList _module.IList$G@@4)) _module.IList$G@@4)
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (Tclass._module.IList _module.IList$G@@4))
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
(assert (forall ((|_module.IList$G#l@@4| T@U) (|_module.IList$G#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.IList| |_module.IList$G#l@@4| |_module.IList$G#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.IList| |_module.IList$G#l@@4| |_module.IList$G#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l@@4| |_module.IList$G#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (|$Eq#_module.IList| |_module.IList$G#l@@4| |_module.IList$G#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@5 T@U) (_module.IList$G@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.IList.ICons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.IList _module.IList$G@@5) $h@@0))) ($IsAllocBox (_module.IList._h5 d@@5) _module.IList$G@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( ($IsAllocBox (_module.IList._h5 d@@5) _module.IList$G@@5 $h@@0))
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
 :skolemid |1005|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.IList$G@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.IList _module.IList$G@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.IList _module.IList$G@@6))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($IsBox bx@@0 (Tclass._module.IList _module.IList$G@@6)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@6 T@U) (_module.IList$G@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.IList.ICons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.IList _module.IList$G@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.IList._h6 d@@6) (Tclass._module.IList _module.IList$G@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.IList._h6 d@@6) (Tclass._module.IList _module.IList$G@@7) $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@7 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@7 Tclass._System.Tuple0 $h@@2))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._System.Tuple0 $h@@2))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.FauxEvva$G@@2 T@U) ($ly@@2 T@U) (|g#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.FauxEvva#canCall| _module._default.FauxEvva$G@@2 |g#0@@2|) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0@@2| _module._default.FauxEvva$G@@2) ($IsAllocBox |g#0@@2| _module._default.FauxEvva$G@@2 $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.FauxEvva _module._default.FauxEvva$G@@2 $ly@@2 |g#0@@2|) (Tclass._module.IList _module._default.FauxEvva$G@@2) $Heap))
 :qid |TypeParamsdfy.153:10|
 :skolemid |698|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.FauxEvva _module._default.FauxEvva$G@@2 $ly@@2 |g#0@@2|) (Tclass._module.IList _module._default.FauxEvva$G@@2) $Heap))
))))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.IList$G#l@@5| T@U) (|_module.IList$G#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.IList| |_module.IList$G#l@@5| |_module.IList$G#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.IList| |_module.IList$G#l@@5| |_module.IList$G#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |903|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l@@5| |_module.IList$G#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.IList| |_module.IList$G#l@@5| |_module.IList$G#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.IList$G#l@@6| T@U) (|_module.IList$G#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.IList| |_module.IList$G#l@@6| |_module.IList$G#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.IList| |_module.IList$G#l@@6| |_module.IList$G#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( (|$Eq#_module.IList| |_module.IList$G#l@@6| |_module.IList$G#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|_module.IList$G#l@@7| T@U) (|_module.IList$G#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.IList| |_module.IList$G#l@@7| |_module.IList$G#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (|$PrefixEq#_module.IList| |_module.IList$G#l@@7| |_module.IList$G#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.IList| |_module.IList$G#l@@7| |_module.IList$G#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( (|$Eq#_module.IList| |_module.IList$G#l@@7| |_module.IList$G#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((_module.IList$G@@8 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.IList.ICons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.IList _module.IList$G@@8) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| _module.IList$G@@8 $h@@3) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.IList _module.IList$G@@8) $h@@3))))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.IList.ICons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.IList _module.IList$G@@8) $h@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##g#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.AlwaysNothing)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon6_Then_correct  (=> (= |##g#0@0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)) (=> (and ($IsAlloc DatatypeTypeType |##g#0@0| Tclass._System.Tuple0 $Heap@@0) (|_module.__default.FauxEvva#canCall| Tclass._System.Tuple0 ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))) (=> (and (and (|$IsA#_module.IList| (Lit DatatypeTypeType (_module.__default.FauxEvva Tclass._System.Tuple0 ($LS $LZ) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))))) (|_module.__default.FauxEvva#canCall| Tclass._System.Tuple0 ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))) (= (ControlFlow 0 3) (- 0 2))) (not (|$Eq#_module.IList| Tclass._System.Tuple0 Tclass._System.Tuple0 ($LS ($LS $LZ)) (_module.__default.FauxEvva Tclass._System.Tuple0 ($LS ($LS $LZ)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))) |#_module.IList.INil|)))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
