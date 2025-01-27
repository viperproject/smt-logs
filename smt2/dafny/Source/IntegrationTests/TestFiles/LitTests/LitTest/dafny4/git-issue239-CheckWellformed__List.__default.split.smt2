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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.List.list () T@U)
(declare-fun |##List.list.Nil| () T@U)
(declare-fun |##List.list.Cons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$list () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#List.list.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.List.list (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#List.list.Cons| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun List.list.Nil_q (T@U) Bool)
(declare-fun List.list.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun List.__default.split (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |List.__default.split#canCall| (T@U T@U T@U) Bool)
(declare-fun List.list._h1 (T@U) T@U)
(declare-fun List.list._h0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Tclass.List.list_0 (T@U) T@U)
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
(assert (distinct alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.List.list |##List.list.Nil| |##List.list.Cons| |tytagFamily$_tuple#2| tytagFamily$list)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (DatatypeCtorId |#List.list.Nil|) |##List.list.Nil|))
(assert (forall ((List.list$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#List.list.Nil| (Tclass.List.list List.list$A) $h))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsAlloc DatatypeTypeType |#List.list.Nil| (Tclass.List.list List.list$A) $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((List.list$A@@0 T@U) ) (! ($Is DatatypeTypeType |#List.list.Nil| (Tclass.List.list List.list$A@@0))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Is DatatypeTypeType |#List.list.Nil| (Tclass.List.list List.list$A@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((List.list$A@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#List.list.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.List.list List.list$A@@1))  (and ($IsBox |a#6#0#0| List.list$A@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass.List.list List.list$A@@1))))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Is DatatypeTypeType (|#List.list.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.List.list List.list$A@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (List.list.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##List.list.Nil|))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (List.list.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (List.list.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##List.list.Cons|))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (List.list.Cons_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (List.list.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#List.list.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |gitissue239dfy.5:33|
 :skolemid |496|
)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (List.list.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (List.list.Nil_q d@@5) (= d@@5 |#List.list.Nil|))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (List.list.Nil_q d@@5))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((List.list$A@@2 T@U) ) (!  (and (= (Tag (Tclass.List.list List.list$A@@2)) Tagclass.List.list) (= (TagFamily (Tclass.List.list List.list$A@@2)) tytagFamily$list))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass.List.list List.list$A@@2))
)))
(assert (forall ((List._default.split$A T@U) (List._default.split$B T@U) ($ly T@U) (|l#0| T@U) ) (! (= (List.__default.split List._default.split$A List._default.split$B ($LS $ly) |l#0|) (List.__default.split List._default.split$A List._default.split$B $ly |l#0|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (List.__default.split List._default.split$A List._default.split$B ($LS $ly) |l#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.split$A@@0 T@U) (List._default.split$B@@0 T@U) ($ly@@0 T@U) (|l#0@@0| T@U) ) (!  (=> (or (|List.__default.split#canCall| List._default.split$A@@0 List._default.split$B@@0 |l#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@0| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@0 List._default.split$B@@0))))) (and (=> (not (List.list.Nil_q |l#0@@0|)) (let ((|xys#1| (List.list._h1 |l#0@@0|)))
 (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (List.list._h0 |l#0@@0|))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (List.list._h0 |l#0@@0|))) (|List.__default.split#canCall| List._default.split$A@@0 List._default.split$B@@0 |xys#1|))))) (= (List.__default.split List._default.split$A@@0 List._default.split$B@@0 ($LS $ly@@0) |l#0@@0|) (ite (List.list.Nil_q |l#0@@0|) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#List.list.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#List.list.Nil|))) (let ((|xys#0| (List.list._h1 |l#0@@0|)))
(let ((|y#0| (_System.Tuple2._1 ($Unbox DatatypeTypeType (List.list._h0 |l#0@@0|)))))
(let ((|x#0| (_System.Tuple2._0 ($Unbox DatatypeTypeType (List.list._h0 |l#0@@0|)))))
(let ((|ys#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (List.__default.split List._default.split$A@@0 List._default.split$B@@0 $ly@@0 |xys#0|)))))
(let ((|xs#0| ($Unbox DatatypeTypeType (_System.Tuple2._0 (List.__default.split List._default.split$A@@0 List._default.split$B@@0 $ly@@0 |xys#0|)))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#List.list.Cons| |x#0| |xs#0|)) ($Box DatatypeTypeType (|#List.list.Cons| |y#0| |ys#0|))))))))))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (List.__default.split List._default.split$A@@0 List._default.split$B@@0 ($LS $ly@@0) |l#0@@0|))
))))
(assert (forall ((List.list$A@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.List.list List.list$A@@3)) (or (List.list.Nil_q d@@6) (List.list.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (List.list.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.List.list List.list$A@@3)))
 :pattern ( (List.list.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.List.list List.list$A@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#List.list.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##List.list.Cons|)
 :qid |gitissue239dfy.5:33|
 :skolemid |494|
 :pattern ( (|#List.list.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (List.list._h0 (|#List.list.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |gitissue239dfy.5:33|
 :skolemid |503|
 :pattern ( (|#List.list.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (List.list._h1 (|#List.list.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue239dfy.5:33|
 :skolemid |505|
 :pattern ( (|#List.list.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((List.list$A@@4 T@U) ) (! (= (Tclass.List.list_0 (Tclass.List.list List.list$A@@4)) List.list$A@@4)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass.List.list List.list$A@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#List.list.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |gitissue239dfy.5:33|
 :skolemid |504|
 :pattern ( (|#List.list.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#List.list.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |gitissue239dfy.5:33|
 :skolemid |506|
 :pattern ( (|#List.list.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@7 T@U) (List.list$A@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (List.list.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.List.list List.list$A@@5) $h@@1))) ($IsAllocBox (List.list._h0 d@@7) List.list$A@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAllocBox (List.list._h0 d@@7) List.list$A@@5 $h@@1))
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
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |512|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.split$A@@1 T@U) (List._default.split$B@@1 T@U) ($ly@@1 T@U) (|l#0@@2| T@U) ) (!  (=> (or (|List.__default.split#canCall| List._default.split$A@@1 List._default.split$B@@1 |l#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@2| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@1 List._default.split$B@@1))))) ($Is DatatypeTypeType (List.__default.split List._default.split$A@@1 List._default.split$B@@1 $ly@@1 |l#0@@2|) (Tclass._System.Tuple2 (Tclass.List.list List._default.split$A@@1) (Tclass.List.list List._default.split$B@@1))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (List.__default.split List._default.split$A@@1 List._default.split$B@@1 $ly@@1 |l#0@@2|))
))))
(assert (forall ((d@@8 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@8)) (DtRank d@@8))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@8)))
)))
(assert (forall ((List.list$A@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.List.list List.list$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.List.list List.list$A@@6))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass.List.list List.list$A@@6)))
)))
(assert (forall ((d@@9 T@U) (List.list$A@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (List.list.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass.List.list List.list$A@@7) $h@@2))) ($IsAlloc DatatypeTypeType (List.list._h1 d@@9) (Tclass.List.list List.list$A@@7) $h@@2))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc DatatypeTypeType (List.list._h1 d@@9) (Tclass.List.list List.list$A@@7) $h@@2))
)))
(assert (= |#List.list.Nil| (Lit DatatypeTypeType |#List.list.Nil|)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#List.list.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#List.list.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |gitissue239dfy.5:33|
 :skolemid |502|
 :pattern ( (|#List.list.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.split$A@@2 T@U) (List._default.split$B@@2 T@U) ($ly@@2 T@U) (|l#0@@3| T@U) ) (!  (=> (or (|List.__default.split#canCall| List._default.split$A@@2 List._default.split$B@@2 (Lit DatatypeTypeType |l#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@3| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@2 List._default.split$B@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (List.list.Nil_q (Lit DatatypeTypeType |l#0@@3|)))))) (let ((|xys#3| (Lit DatatypeTypeType (List.list._h1 (Lit DatatypeTypeType |l#0@@3|)))))
 (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (List.list._h0 (Lit DatatypeTypeType |l#0@@3|))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (List.list._h0 (Lit DatatypeTypeType |l#0@@3|))))) (|List.__default.split#canCall| List._default.split$A@@2 List._default.split$B@@2 |xys#3|))))) (= (List.__default.split List._default.split$A@@2 List._default.split$B@@2 ($LS $ly@@2) (Lit DatatypeTypeType |l#0@@3|)) (ite (List.list.Nil_q (Lit DatatypeTypeType |l#0@@3|)) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |#List.list.Nil|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |#List.list.Nil|))) (let ((|xys#2| (Lit DatatypeTypeType (List.list._h1 (Lit DatatypeTypeType |l#0@@3|)))))
(let ((|y#2| (Lit BoxType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (List.list._h0 (Lit DatatypeTypeType |l#0@@3|))))))))
(let ((|x#2| (Lit BoxType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (List.list._h0 (Lit DatatypeTypeType |l#0@@3|))))))))
(let ((|ys#2| ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (List.__default.split List._default.split$A@@2 List._default.split$B@@2 ($LS $ly@@2) |xys#2|))))))
(let ((|xs#2| ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (List.__default.split List._default.split$A@@2 List._default.split$B@@2 ($LS $ly@@2) |xys#2|))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#List.list.Cons| |x#2| |xs#2|)) ($Box DatatypeTypeType (|#List.list.Cons| |y#2| |ys#2|))))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |488|
 :pattern ( (List.__default.split List._default.split$A@@2 List._default.split$B@@2 ($LS $ly@@2) (Lit DatatypeTypeType |l#0@@3|)))
))))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (List._default.split$A@@3 T@U) (List._default.split$B@@3 T@U) ($ly@@3 T@U) (|l#0@@4| T@U) ) (!  (=> (and (or (|List.__default.split#canCall| List._default.split$A@@3 List._default.split$B@@3 |l#0@@4|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0@@4| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@3 List._default.split$B@@3))) ($IsAlloc DatatypeTypeType |l#0@@4| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@3 List._default.split$B@@3)) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (List.__default.split List._default.split$A@@3 List._default.split$B@@3 $ly@@3 |l#0@@4|) (Tclass._System.Tuple2 (Tclass.List.list List._default.split$A@@3) (Tclass.List.list List._default.split$B@@3)) $Heap))
 :qid |gitissue239dfy.7:12|
 :skolemid |485|
 :pattern ( ($IsAlloc DatatypeTypeType (List.__default.split List._default.split$A@@3 List._default.split$B@@3 $ly@@3 |l#0@@4|) (Tclass._System.Tuple2 (Tclass.List.list List._default.split$A@@3) (Tclass.List.list List._default.split$B@@3)) $Heap))
))))
(assert (forall ((List.list$A@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#List.list.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass.List.list List.list$A@@8) $h@@5)  (and ($IsAllocBox |a#6#0#0@@1| List.list$A@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass.List.list List.list$A@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc DatatypeTypeType (|#List.list.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass.List.list List.list$A@@8) $h@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun List._default.split$A@@4 () T@U)
(declare-fun List._default.split$B@@4 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |xys#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |y#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |l#0@@5| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$List.__default.split)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon13_Else_correct true))
(let ((anon13_Then_correct  (=> (and (= |_mcc#0#0| (|#_System._tuple#2._#Make2| |_mcc#2#0| |_mcc#3#0|)) ($IsBox |_mcc#2#0| List._default.split$A@@4)) (=> (and (and ($IsBox |_mcc#3#0| List._default.split$B@@4) (= |let#0#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@4 List._default.split$B@@4))) (= |xys#Z#0@0| |let#0#0#0|))) (=> (and (and (and (= |let#1#0#0| |_mcc#3#0|) ($IsBox |let#1#0#0| List._default.split$B@@4)) (and (= |y#Z#0@0| |let#1#0#0|) (= |let#2#0#0| |_mcc#2#0|))) (and (and ($IsBox |let#2#0#0| List._default.split$A@@4) (= |x#Z#0@0| |let#2#0#0|)) (and ($IsAlloc DatatypeTypeType |xys#Z#0@0| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@4 List._default.split$B@@4)) $Heap@@0) (= (ControlFlow 0 5) (- 0 4))))) (< (DtRank |xys#Z#0@0|) (DtRank |l#0@@5|)))))))
(let ((anon12_Then_correct  (=> (= |l#0@@5| (|#List.list.Cons| ($Box DatatypeTypeType |_mcc#0#0|) |_mcc#1#0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0| (Tclass._System.Tuple2 List._default.split$A@@4 List._default.split$B@@4)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@4 List._default.split$B@@4)))) (and (=> (= (ControlFlow 0 7) 5) anon13_Then_correct) (=> (= (ControlFlow 0 7) 6) anon13_Else_correct))))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |l#0@@5| |#List.list.Nil|)) (not true)) (and (=> (= (ControlFlow 0 8) 7) anon12_Then_correct) (=> (= (ControlFlow 0 8) 3) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon10_Then_correct) (=> (= (ControlFlow 0 9) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is DatatypeTypeType |l#0@@5| (Tclass.List.list (Tclass._System.Tuple2 List._default.split$A@@4 List._default.split$B@@4)))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
