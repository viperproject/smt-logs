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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.Maybe.M () T@U)
(declare-fun |##Maybe.M.Just| () T@U)
(declare-fun |##Maybe.M.Nothing| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$M () T@U)
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
(declare-fun |Maybe.M#Equal| (T@U T@U) Bool)
(declare-fun Maybe.M.Just_q (T@U) Bool)
(declare-fun Maybe.M._h1 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Maybe.__default.Bind (T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Maybe.__default.Bind#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Maybe.M (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |#Maybe.M.Nothing| () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Maybe.__default.Return (T@U T@U) T@U)
(declare-fun |Maybe.__default.Return#canCall| (T@U T@U) Bool)
(declare-fun |#Maybe.M.Just| (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Maybe.M.Nothing_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Maybe.__default.Return#Handle| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |$IsA#Maybe.M| (T@U) Bool)
(declare-fun |Maybe.__default.Return#requires| (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.Maybe.M_0 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.Maybe.M |##Maybe.M.Just| |##Maybe.M.Nothing| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$M)
)
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (Maybe.M.Just_q a) (Maybe.M.Just_q b)) (= (|Maybe.M#Equal| a b) (= (Maybe.M._h1 a) (Maybe.M._h1 b))))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( (|Maybe.M#Equal| a b) (Maybe.M.Just_q a))
 :pattern ( (|Maybe.M#Equal| a b) (Maybe.M.Just_q b))
)))
(assert  (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor HandleTypeType) 4)) (= (Ctor BoxType) 5)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Bind$A T@U) (Maybe._default.Bind$B T@U) ($Heap T@U) (|m#0| T@U) (|f#0| T@U) ) (!  (=> (or (|Maybe.__default.Bind#canCall| Maybe._default.Bind$A Maybe._default.Bind$B (Lit DatatypeTypeType |m#0|) (Lit HandleTypeType |f#0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |m#0| (Tclass.Maybe.M Maybe._default.Bind$A))) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A (Tclass.Maybe.M Maybe._default.Bind$B)))))) (= (Maybe.__default.Bind Maybe._default.Bind$A Maybe._default.Bind$B (Lit DatatypeTypeType |m#0|) (Lit HandleTypeType |f#0|)) (ite (Maybe.M.Just_q (Lit DatatypeTypeType |m#0|)) (let ((|x#4| (Lit BoxType (Maybe.M._h1 (Lit DatatypeTypeType |m#0|)))))
($Unbox DatatypeTypeType (Apply1 Maybe._default.Bind$A (Tclass.Maybe.M Maybe._default.Bind$B) $Heap (Lit HandleTypeType |f#0|) |x#4|))) |#Maybe.M.Nothing|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1646|
 :pattern ( (Maybe.__default.Bind Maybe._default.Bind$A Maybe._default.Bind$B (Lit DatatypeTypeType |m#0|) (Lit HandleTypeType |f#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1230|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#Maybe.M.Nothing|) |##Maybe.M.Nothing|))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |1496|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((Maybe.M$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#Maybe.M.Nothing| (Tclass.Maybe.M Maybe.M$A) $h))
 :qid |unknown.0:0|
 :skolemid |1669|
 :pattern ( ($IsAlloc DatatypeTypeType |#Maybe.M.Nothing| (Tclass.Maybe.M Maybe.M$A) $h))
)))
(assert (forall ((Maybe.M$A@@0 T@U) ) (! ($Is DatatypeTypeType |#Maybe.M.Nothing| (Tclass.Maybe.M Maybe.M$A@@0))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( ($Is DatatypeTypeType |#Maybe.M.Nothing| (Tclass.Maybe.M Maybe.M$A@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Return$A T@U) (|x#0| T@U) ) (!  (=> (or (|Maybe.__default.Return#canCall| Maybe._default.Return$A (Lit BoxType |x#0|)) (and (< 1 $FunctionContextHeight) ($IsBox |x#0| Maybe._default.Return$A))) (= (Maybe.__default.Return Maybe._default.Return$A (Lit BoxType |x#0|)) (Lit DatatypeTypeType (|#Maybe.M.Just| (Lit BoxType |x#0|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1640|
 :pattern ( (Maybe.__default.Return Maybe._default.Return$A (Lit BoxType |x#0|)))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Maybe.M#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1674|
 :pattern ( (|Maybe.M#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1120|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Return$A@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|Maybe.__default.Return#canCall| Maybe._default.Return$A@@0 |x#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |x#0@@0| Maybe._default.Return$A@@0))) ($Is DatatypeTypeType (Maybe.__default.Return Maybe._default.Return$A@@0 |x#0@@0|) (Tclass.Maybe.M Maybe._default.Return$A@@0)))
 :qid |unknown.0:0|
 :skolemid |1636|
 :pattern ( (Maybe.__default.Return Maybe._default.Return$A@@0 |x#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (Maybe.M.Just_q d) (= (DatatypeCtorId d) |##Maybe.M.Just|))
 :qid |unknown.0:0|
 :skolemid |1657|
 :pattern ( (Maybe.M.Just_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Maybe.M.Nothing_q d@@0) (= (DatatypeCtorId d@@0) |##Maybe.M.Nothing|))
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( (Maybe.M.Nothing_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1131|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Maybe.M.Nothing_q d@@1) (= d@@1 |#Maybe.M.Nothing|))
 :qid |unknown.0:0|
 :skolemid |1667|
 :pattern ( (Maybe.M.Nothing_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Maybe.M.Just_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#Maybe.M.Just| |a#1#0#0|))
 :qid |Monadsdfy.54:24|
 :skolemid |1658|
)))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( (Maybe.M.Just_q d@@2))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1144|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall (($bx T@U) (Maybe._default.Return$A@@1 T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (|Set#IsMember| (Reads1 Maybe._default.Return$A@@1 (Tclass.Maybe.M Maybe._default.Return$A@@1) $heap (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@1) |$fh$0x#0|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1649|
 :pattern ( (|Set#IsMember| (Reads1 Maybe._default.Return$A@@1 (Tclass.Maybe.M Maybe._default.Return$A@@1) $heap (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@1) |$fh$0x#0|) $bx))
)))
(assert (forall ((Maybe.M$A@@1 T@U) ) (!  (and (= (Tag (Tclass.Maybe.M Maybe.M$A@@1)) Tagclass.Maybe.M) (= (TagFamily (Tclass.Maybe.M Maybe.M$A@@1)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |1633|
 :pattern ( (Tclass.Maybe.M Maybe.M$A@@1))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1515|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
)))
(assert (forall ((Maybe.M$A@@2 T@U) (|a#2#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Maybe.M.Just| |a#2#0#0|) (Tclass.Maybe.M Maybe.M$A@@2) $h@@2) ($IsAllocBox |a#2#0#0| Maybe.M$A@@2 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1661|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Maybe.M.Just| |a#2#0#0|) (Tclass.Maybe.M Maybe.M$A@@2) $h@@2))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |1500|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Bind$A@@0 T@U) (Maybe._default.Bind$B@@0 T@U) ($Heap@@0 T@U) (|m#0@@0| T@U) (|f#0@@2| T@U) ) (!  (=> (or (|Maybe.__default.Bind#canCall| Maybe._default.Bind$A@@0 Maybe._default.Bind$B@@0 (Lit DatatypeTypeType |m#0@@0|) |f#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |m#0@@0| (Tclass.Maybe.M Maybe._default.Bind$A@@0))) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A@@0 (Tclass.Maybe.M Maybe._default.Bind$B@@0)))))) (= (Maybe.__default.Bind Maybe._default.Bind$A@@0 Maybe._default.Bind$B@@0 (Lit DatatypeTypeType |m#0@@0|) |f#0@@2|) (ite (Maybe.M.Just_q (Lit DatatypeTypeType |m#0@@0|)) (let ((|x#2| (Lit BoxType (Maybe.M._h1 (Lit DatatypeTypeType |m#0@@0|)))))
($Unbox DatatypeTypeType (Apply1 Maybe._default.Bind$A@@0 (Tclass.Maybe.M Maybe._default.Bind$B@@0) $Heap@@0 |f#0@@2| |x#2|))) |#Maybe.M.Nothing|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1645|
 :pattern ( (Maybe.__default.Bind Maybe._default.Bind$A@@0 Maybe._default.Bind$B@@0 (Lit DatatypeTypeType |m#0@@0|) |f#0@@2|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#Maybe.M| d@@3) (or (Maybe.M.Just_q d@@3) (Maybe.M.Nothing_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1670|
 :pattern ( (|$IsA#Maybe.M| d@@3))
)))
(assert (forall ((Maybe._default.Return$A@@2 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Maybe._default.Return$A@@2 (Tclass.Maybe.M Maybe._default.Return$A@@2) $heap@@0 (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@2) |$fh$0x#0@@0|) (|Maybe.__default.Return#requires| Maybe._default.Return$A@@2 |$fh$0x#0@@0|))
 :qid |unknown.0:0|
 :skolemid |1648|
 :pattern ( (Requires1 Maybe._default.Return$A@@2 (Tclass.Maybe.M Maybe._default.Return$A@@2) $heap@@0 (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@2) |$fh$0x#0@@0|))
)))
(assert (forall ((Maybe._default.Return$A@@3 T@U) (|x#0@@1| T@U) ) (!  (=> ($IsBox |x#0@@1| Maybe._default.Return$A@@3) (= (|Maybe.__default.Return#requires| Maybe._default.Return$A@@3 |x#0@@1|) true))
 :qid |unknown.0:0|
 :skolemid |1638|
 :pattern ( (|Maybe.__default.Return#requires| Maybe._default.Return$A@@3 |x#0@@1|))
)))
(assert (forall ((Maybe.M$A@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass.Maybe.M Maybe.M$A@@3)) (or (Maybe.M.Just_q d@@4) (Maybe.M.Nothing_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1671|
 :pattern ( (Maybe.M.Nothing_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.Maybe.M Maybe.M$A@@3)))
 :pattern ( (Maybe.M.Just_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.Maybe.M Maybe.M$A@@3)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1255|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((Maybe._default.Return$A@@4 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Maybe.__default.Return Maybe._default.Return$A@@4 |$fh$0x#0@@1|) ($Unbox DatatypeTypeType (Apply1 Maybe._default.Return$A@@4 (Tclass.Maybe.M Maybe._default.Return$A@@4) $heap@@1 (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@4) |$fh$0x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |1650|
 :pattern ( (Maybe.__default.Return Maybe._default.Return$A@@4 |$fh$0x#0@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1492|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1143|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Maybe.M.Nothing_q a@@2) (Maybe.M.Nothing_q b@@2)) (|Maybe.M#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1673|
 :pattern ( (|Maybe.M#Equal| a@@2 b@@2) (Maybe.M.Nothing_q a@@2))
 :pattern ( (|Maybe.M#Equal| a@@2 b@@2) (Maybe.M.Nothing_q b@@2))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |1473|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |1511|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((Maybe.M$A@@4 T@U) ) (! (= (Tclass.Maybe.M_0 (Tclass.Maybe.M Maybe.M$A@@4)) Maybe.M$A@@4)
 :qid |unknown.0:0|
 :skolemid |1634|
 :pattern ( (Tclass.Maybe.M Maybe.M$A@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#Maybe.M.Just| |a#0#0#0|)) |##Maybe.M.Just|)
 :qid |Monadsdfy.54:24|
 :skolemid |1656|
 :pattern ( (|#Maybe.M.Just| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (Maybe.M._h1 (|#Maybe.M.Just| |a#4#0#0|)) |a#4#0#0|)
 :qid |Monadsdfy.54:24|
 :skolemid |1664|
 :pattern ( (|#Maybe.M.Just| |a#4#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1130|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((Maybe.M$A@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Maybe.M.Just| |a#2#0#0@@0|) (Tclass.Maybe.M Maybe.M$A@@5)) ($IsBox |a#2#0#0@@0| Maybe.M$A@@5))
 :qid |unknown.0:0|
 :skolemid |1660|
 :pattern ( ($Is DatatypeTypeType (|#Maybe.M.Just| |a#2#0#0@@0|) (Tclass.Maybe.M Maybe.M$A@@5)))
)))
(assert (forall ((Maybe._default.Return$A@@5 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Maybe._default.Return$A@@5 (Tclass.Maybe.M Maybe._default.Return$A@@5) $heap@@2 (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@5) |$fh$0x#0@@2|) ($Box DatatypeTypeType (Maybe.__default.Return Maybe._default.Return$A@@5 |$fh$0x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( (Apply1 Maybe._default.Return$A@@5 (Tclass.Maybe.M Maybe._default.Return$A@@5) $heap@@2 (|Maybe.__default.Return#Handle| Maybe._default.Return$A@@5) |$fh$0x#0@@2|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@3| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |1513|
))))
 :qid |unknown.0:0|
 :skolemid |1514|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@4| T@U) ) (! (= ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@4| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |1506|
))))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (and (and (and (and (and (and (= (Ctor refType) 6) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |1498|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |1499|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#Maybe.M.Just| |a#5#0#0|)))
 :qid |Monadsdfy.54:24|
 :skolemid |1665|
 :pattern ( (|#Maybe.M.Just| |a#5#0#0|))
)))
(assert (forall ((d@@5 T@U) (Maybe.M$A@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Maybe.M.Just_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.Maybe.M Maybe.M$A@@6) $h@@3))) ($IsAllocBox (Maybe.M._h1 d@@5) Maybe.M$A@@6 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1662|
 :pattern ( ($IsAllocBox (Maybe.M._h1 d@@5) Maybe.M$A@@6 $h@@3))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2324|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1471|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |1509|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1189|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((Maybe.M$A@@7 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Maybe.M Maybe.M$A@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass.Maybe.M Maybe.M$A@@7))))
 :qid |unknown.0:0|
 :skolemid |1635|
 :pattern ( ($IsBox bx@@4 (Tclass.Maybe.M Maybe.M$A@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (Maybe._default.Bind$A@@1 T@U) (Maybe._default.Bind$B@@1 T@U) (|m#0@@1| T@U) (|f#0@@5| T@U) ) (!  (=> (and (or (|Maybe.__default.Bind#canCall| Maybe._default.Bind$A@@1 Maybe._default.Bind$B@@1 |m#0@@1| |f#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |m#0@@1| (Tclass.Maybe.M Maybe._default.Bind$A@@1)) ($IsAlloc DatatypeTypeType |m#0@@1| (Tclass.Maybe.M Maybe._default.Bind$A@@1) $Heap@@1)) (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A@@1 (Tclass.Maybe.M Maybe._default.Bind$B@@1))) ($IsAlloc HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A@@1 (Tclass.Maybe.M Maybe._default.Bind$B@@1)) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (Maybe.__default.Bind Maybe._default.Bind$A@@1 Maybe._default.Bind$B@@1 |m#0@@1| |f#0@@5|) (Tclass.Maybe.M Maybe._default.Bind$B@@1) $Heap@@1))
 :qid |Monadsdfy.59:12|
 :skolemid |1642|
 :pattern ( ($IsAlloc DatatypeTypeType (Maybe.__default.Bind Maybe._default.Bind$A@@1 Maybe._default.Bind$B@@1 |m#0@@1| |f#0@@5|) (Tclass.Maybe.M Maybe._default.Bind$B@@1) $Heap@@1))
))))
(assert (= |#Maybe.M.Nothing| (Lit DatatypeTypeType |#Maybe.M.Nothing|)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@3 o@@0) (|Set#IsMember| b@@3 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1253|
 :pattern ( (|Set#IsMember| a@@3 o@@0))
 :pattern ( (|Set#IsMember| b@@3 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1254|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Bind$A@@2 T@U) (Maybe._default.Bind$B@@2 T@U) ($Heap@@2 T@U) (|m#0@@2| T@U) (|f#0@@6| T@U) ) (!  (=> (or (|Maybe.__default.Bind#canCall| Maybe._default.Bind$A@@2 Maybe._default.Bind$B@@2 |m#0@@2| |f#0@@6|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |m#0@@2| (Tclass.Maybe.M Maybe._default.Bind$A@@2))) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A@@2 (Tclass.Maybe.M Maybe._default.Bind$B@@2)))))) (= (Maybe.__default.Bind Maybe._default.Bind$A@@2 Maybe._default.Bind$B@@2 |m#0@@2| |f#0@@6|) (ite (Maybe.M.Just_q |m#0@@2|) (let ((|x#0@@2| (Maybe.M._h1 |m#0@@2|)))
($Unbox DatatypeTypeType (Apply1 Maybe._default.Bind$A@@2 (Tclass.Maybe.M Maybe._default.Bind$B@@2) $Heap@@2 |f#0@@6| |x#0@@2|))) |#Maybe.M.Nothing|)))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( (Maybe.__default.Bind Maybe._default.Bind$A@@2 Maybe._default.Bind$B@@2 |m#0@@2| |f#0@@6|) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Return$A@@6 T@U) (|x#0@@3| T@U) ) (!  (=> (or (|Maybe.__default.Return#canCall| Maybe._default.Return$A@@6 |x#0@@3|) (and (< 1 $FunctionContextHeight) ($IsBox |x#0@@3| Maybe._default.Return$A@@6))) (= (Maybe.__default.Return Maybe._default.Return$A@@6 |x#0@@3|) (|#Maybe.M.Just| |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |1639|
 :pattern ( (Maybe.__default.Return Maybe._default.Return$A@@6 |x#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (Maybe._default.Return$A@@7 T@U) (|x#0@@4| T@U) ) (!  (=> (and (or (|Maybe.__default.Return#canCall| Maybe._default.Return$A@@7 |x#0@@4|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@4| Maybe._default.Return$A@@7) ($IsAllocBox |x#0@@4| Maybe._default.Return$A@@7 $Heap@@3)))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (Maybe.__default.Return Maybe._default.Return$A@@7 |x#0@@4|) (Tclass.Maybe.M Maybe._default.Return$A@@7) $Heap@@3))
 :qid |Monadsdfy.56:12|
 :skolemid |1637|
 :pattern ( ($IsAlloc DatatypeTypeType (Maybe.__default.Return Maybe._default.Return$A@@7 |x#0@@4|) (Tclass.Maybe.M Maybe._default.Return$A@@7) $Heap@@3))
))))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Maybe.M.Just| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#Maybe.M.Just| |a#3#0#0|)))
 :qid |Monadsdfy.54:24|
 :skolemid |1663|
 :pattern ( (|#Maybe.M.Just| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1121|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Maybe._default.Bind$A@@3 T@U) (Maybe._default.Bind$B@@3 T@U) (|m#0@@3| T@U) (|f#0@@7| T@U) ) (!  (=> (or (|Maybe.__default.Bind#canCall| Maybe._default.Bind$A@@3 Maybe._default.Bind$B@@3 |m#0@@3| |f#0@@7|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |m#0@@3| (Tclass.Maybe.M Maybe._default.Bind$A@@3)) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 Maybe._default.Bind$A@@3 (Tclass.Maybe.M Maybe._default.Bind$B@@3)))))) ($Is DatatypeTypeType (Maybe.__default.Bind Maybe._default.Bind$A@@3 Maybe._default.Bind$B@@3 |m#0@@3| |f#0@@7|) (Tclass.Maybe.M Maybe._default.Bind$B@@3)))
 :qid |unknown.0:0|
 :skolemid |1641|
 :pattern ( (Maybe.__default.Bind Maybe._default.Bind$A@@3 Maybe._default.Bind$B@@3 |m#0@@3| |f#0@@7|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |m#0@@4| () T@U)
(declare-fun Maybe._default.RightIdentity$A () T@U)
(set-info :boogie-vc-id CheckWellFormed$$Maybe.__default.RightIdentity)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@4 $Heap@0)) (and ($IsAlloc DatatypeTypeType |m#0@@4| (Tclass.Maybe.M Maybe._default.RightIdentity$A) $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= 1 $FunctionContextHeight)) (not true))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (and ($Is DatatypeTypeType |m#0@@4| (Tclass.Maybe.M Maybe._default.RightIdentity$A)) ($IsAlloc DatatypeTypeType |m#0@@4| (Tclass.Maybe.M Maybe._default.RightIdentity$A) $Heap@@4)) (|$IsA#Maybe.M| |m#0@@4|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
