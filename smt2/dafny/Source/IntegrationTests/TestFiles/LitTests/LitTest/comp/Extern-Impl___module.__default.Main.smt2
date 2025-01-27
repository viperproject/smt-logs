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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2GO._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2GO () T@U)
(declare-fun |##_System._tuple#3OGG._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3OGG () T@U)
(declare-fun Tagclass.Library.Mixed () T@U)
(declare-fun Tagclass.Library.Mixed? () T@U)
(declare-fun Tagclass.Wrappers.Option () T@U)
(declare-fun Tagclass.Wrappers.Pair () T@U)
(declare-fun Tagclass.Library.MyInt () T@U)
(declare-fun Tagclass.Library.ErasableWrapper () T@U)
(declare-fun Tagclass.Library.Ghost () T@U)
(declare-fun |##Wrappers.Pair.Pair| () T@U)
(declare-fun |##Library.ErasableWrapper.ErasableWrapper| () T@U)
(declare-fun |##Library.Ghost.Uninitialized| () T@U)
(declare-fun |##Library.Ghost.Something| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2GO| () T@U)
(declare-fun |tytagFamily$_tuple#3OGG| () T@U)
(declare-fun tytagFamily$Mixed () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$Pair () T@U)
(declare-fun tytagFamily$MyInt () T@U)
(declare-fun tytagFamily$ErasableWrapper () T@U)
(declare-fun tytagFamily$Ghost () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Library.MyInt () T@U)
(declare-fun |#_System._tuple#3OGG._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3OGG (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3OGG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OGG_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OGG_2 (T@U) T@U)
(declare-fun _System.Tuple3OGG._0 (T@U) T@U)
(declare-fun _System.Tuple3OGG._1 (T@U) T@U)
(declare-fun _System.Tuple3OGG._2 (T@U) T@U)
(declare-fun _System.Tuple2GO.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2GO (T@U T@U) T@U)
(declare-fun Wrappers.Pair.Pair_q (T@U) Bool)
(declare-fun Tclass.Wrappers.Pair (T@U T@U) T@U)
(declare-fun |#Library.Ghost.Uninitialized| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.Library.Mixed? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Library.Mixed () T@U)
(declare-fun Library.AllDafny.Seven () Int)
(declare-fun LitInt (Int) Int)
(declare-fun Library.Mixed.Seven () Int)
(declare-fun Library.AllExtern.Seven () Int)
(declare-fun Library.ErasableWrapper.ErasableWrapper_q (T@U) Bool)
(declare-fun Tclass.Library.ErasableWrapper () T@U)
(declare-fun Tclass.Library.Ghost (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2GO._#Make2| (T@U T@U) T@U)
(declare-fun |#Wrappers.Pair.Pair| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _System.Tuple3OGG.___hMake3_q (T@U) Bool)
(declare-fun Library.Ghost.Uninitialized_q (T@U) Bool)
(declare-fun Library.Ghost.Something_q (T@U) Bool)
(declare-fun |#Library.ErasableWrapper.ErasableWrapper| (Int) T@U)
(declare-fun |#Library.Ghost.Something| (T@U) T@U)
(declare-fun Tclass.Wrappers.Option (T@U) T@U)
(declare-fun Library.AllExtern.IntPair () T@U)
(declare-fun Library.AllExtern.MaybeInt () T@U)
(declare-fun Tclass._System.Tuple2GO_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2GO_1 (T@U) T@U)
(declare-fun _System.Tuple2GO._0 (T@U) T@U)
(declare-fun _System.Tuple2GO._1 (T@U) T@U)
(declare-fun Tclass.Wrappers.Pair_0 (T@U) T@U)
(declare-fun Tclass.Wrappers.Pair_1 (T@U) T@U)
(declare-fun Wrappers.Pair.first (T@U) T@U)
(declare-fun Wrappers.Pair.second (T@U) T@U)
(declare-fun Tclass.Wrappers.Option_0 (T@U) T@U)
(declare-fun Tclass.Library.Ghost_0 (T@U) T@U)
(declare-fun Library.ErasableWrapper.x (T@U) Int)
(declare-fun Library.Ghost.x (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.object? Tagclass._System.object |##_System._tuple#2GO._#Make2| Tagclass._System.Tuple2GO |##_System._tuple#3OGG._#Make3| Tagclass._System.Tuple3OGG Tagclass.Library.Mixed Tagclass.Library.Mixed? Tagclass.Wrappers.Option Tagclass.Wrappers.Pair Tagclass.Library.MyInt Tagclass.Library.ErasableWrapper Tagclass.Library.Ghost |##Wrappers.Pair.Pair| |##Library.ErasableWrapper.ErasableWrapper| |##Library.Ghost.Uninitialized| |##Library.Ghost.Something| tytagFamily$object |tytagFamily$_tuple#2GO| |tytagFamily$_tuple#3OGG| tytagFamily$Mixed tytagFamily$Option tytagFamily$Pair tytagFamily$MyInt tytagFamily$ErasableWrapper tytagFamily$Ghost)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.Library.MyInt $h)
 :qid |unknown.0:0|
 :skolemid |1856|
 :pattern ( ($IsAlloc intType |x#0| Tclass.Library.MyInt $h))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3OGG._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |##_System._tuple#3OGG._#Make3|)
 :qid |unknown.0:0|
 :skolemid |1761|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|_System._tuple#3OGG$T0| T@U) (|_System._tuple#3OGG$T1| T@U) (|_System._tuple#3OGG$T2| T@U) ) (! (= (Tclass._System.Tuple3OGG_0 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0| |_System._tuple#3OGG$T1| |_System._tuple#3OGG$T2|)) |_System._tuple#3OGG$T0|)
 :qid |unknown.0:0|
 :skolemid |1766|
 :pattern ( (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0| |_System._tuple#3OGG$T1| |_System._tuple#3OGG$T2|))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@0| T@U) (|_System._tuple#3OGG$T1@@0| T@U) (|_System._tuple#3OGG$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3OGG_1 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@0| |_System._tuple#3OGG$T1@@0| |_System._tuple#3OGG$T2@@0|)) |_System._tuple#3OGG$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |1767|
 :pattern ( (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@0| |_System._tuple#3OGG$T1@@0| |_System._tuple#3OGG$T2@@0|))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@1| T@U) (|_System._tuple#3OGG$T1@@1| T@U) (|_System._tuple#3OGG$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3OGG_2 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@1| |_System._tuple#3OGG$T1@@1| |_System._tuple#3OGG$T2@@1|)) |_System._tuple#3OGG$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |1768|
 :pattern ( (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@1| |_System._tuple#3OGG$T1@@1| |_System._tuple#3OGG$T2@@1|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) ) (! (= (_System.Tuple3OGG._0 (|#_System._tuple#3OGG._#Make3| |a#24#0#0| |a#24#1#0| |a#24#2#0|)) |a#24#0#0|)
 :qid |unknown.0:0|
 :skolemid |1779|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#24#0#0| |a#24#1#0| |a#24#2#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (_System.Tuple3OGG._1 (|#_System._tuple#3OGG._#Make3| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#1#0|)
 :qid |unknown.0:0|
 :skolemid |1781|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ) (! (= (_System.Tuple3OGG._2 (|#_System._tuple#3OGG._#Make3| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |unknown.0:0|
 :skolemid |1783|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2GO$T0| T@U) (|_System._tuple#2GO$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2GO |_System._tuple#2GO$T0| |_System._tuple#2GO$T1|)) (_System.Tuple2GO.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1758|
 :pattern ( (_System.Tuple2GO.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2GO |_System._tuple#2GO$T0| |_System._tuple#2GO$T1|)))
)))
(assert (forall ((Wrappers.Pair$A T@U) (Wrappers.Pair$B T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.Wrappers.Pair Wrappers.Pair$A Wrappers.Pair$B)) (Wrappers.Pair.Pair_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( (Wrappers.Pair.Pair_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.Wrappers.Pair Wrappers.Pair$A Wrappers.Pair$B)))
)))
(assert (= (DatatypeCtorId |#Library.Ghost.Uninitialized|) |##Library.Ghost.Uninitialized|))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Library.Mixed?)  (or (= $o null) (= (dtype $o) Tclass.Library.Mixed?)))
 :qid |unknown.0:0|
 :skolemid |1873|
 :pattern ( ($Is refType $o Tclass.Library.Mixed?))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@2| T@U) (|_System._tuple#3OGG$T1@@2| T@U) (|_System._tuple#3OGG$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@2| |_System._tuple#3OGG$T1@@2| |_System._tuple#3OGG$T2@@2|)) Tagclass._System.Tuple3OGG) (= (TagFamily (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@2| |_System._tuple#3OGG$T1@@2| |_System._tuple#3OGG$T2@@2|)) |tytagFamily$_tuple#3OGG|))
 :qid |unknown.0:0|
 :skolemid |1765|
 :pattern ( (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@2| |_System._tuple#3OGG$T1@@2| |_System._tuple#3OGG$T2@@2|))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@3| T@U) (|_System._tuple#3OGG$T1@@3| T@U) (|_System._tuple#3OGG$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@3| |_System._tuple#3OGG$T1@@3| |_System._tuple#3OGG$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@3| |_System._tuple#3OGG$T1@@3| |_System._tuple#3OGG$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |1769|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@3| |_System._tuple#3OGG$T1@@3| |_System._tuple#3OGG$T2@@3|)))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1610|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Library.Mixed $h@@1) ($IsAlloc refType |c#0@@0| Tclass.Library.Mixed? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Library.Mixed $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Library.Mixed? $h@@1))
)))
(assert (= Library.AllDafny.Seven (LitInt 7)))
(assert (= Library.AllDafny.Seven (LitInt 7)))
(assert (= Library.Mixed.Seven (LitInt 7)))
(assert (= Library.Mixed.Seven (LitInt 7)))
(assert (= Library.AllExtern.Seven (LitInt 7)))
(assert (= Library.AllExtern.Seven (LitInt 7)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.Library.ErasableWrapper) (Library.ErasableWrapper.ErasableWrapper_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.Library.ErasableWrapper))
)))
(assert (forall ((Library.Ghost$X T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#Library.Ghost.Uninitialized| (Tclass.Library.Ghost Library.Ghost$X) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1909|
 :pattern ( ($IsAlloc DatatypeTypeType |#Library.Ghost.Uninitialized| (Tclass.Library.Ghost Library.Ghost$X) $h@@2))
)))
(assert (forall ((|_System._tuple#2GO$T0@@0| T@U) (|_System._tuple#2GO$T1@@0| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#14#0#0| |a#14#1#0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@0| |_System._tuple#2GO$T1@@0|))  (and ($IsBox |a#14#0#0| |_System._tuple#2GO$T0@@0|) ($IsBox |a#14#1#0| |_System._tuple#2GO$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1746|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#14#0#0| |a#14#1#0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@0| |_System._tuple#2GO$T1@@0|)))
)))
(assert (forall ((Wrappers.Pair$A@@0 T@U) (Wrappers.Pair$B@@0 T@U) (|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Wrappers.Pair.Pair| |a#12#0#0| |a#12#1#0|) (Tclass.Wrappers.Pair Wrappers.Pair$A@@0 Wrappers.Pair$B@@0))  (and ($IsBox |a#12#0#0| Wrappers.Pair$A@@0) ($IsBox |a#12#1#0| Wrappers.Pair$B@@0)))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is DatatypeTypeType (|#Wrappers.Pair.Pair| |a#12#0#0| |a#12#1#0|) (Tclass.Wrappers.Pair Wrappers.Pair$A@@0 Wrappers.Pair$B@@0)))
)))
(assert (forall ((Library.Ghost$X@@0 T@U) ) (! ($Is DatatypeTypeType |#Library.Ghost.Uninitialized| (Tclass.Library.Ghost Library.Ghost$X@@0))
 :qid |unknown.0:0|
 :skolemid |1908|
 :pattern ( ($Is DatatypeTypeType |#Library.Ghost.Uninitialized| (Tclass.Library.Ghost Library.Ghost$X@@0)))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1607|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Library.Mixed? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Library.Mixed? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1377|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1378|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1276|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1274|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2GO$T0@@1| T@U) (|_System._tuple#2GO$T1@@1| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@1| |_System._tuple#2GO$T1@@1|) $h@@5)  (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#2GO$T0@@1| $h@@5) ($IsAllocBox |a#14#1#0@@0| |_System._tuple#2GO$T1@@1| $h@@5))))
 :qid |unknown.0:0|
 :skolemid |1747|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@1| |_System._tuple#2GO$T1@@1|) $h@@5))
)))
(assert (forall ((Wrappers.Pair$A@@1 T@U) (Wrappers.Pair$B@@1 T@U) (|a#12#0#0@@0| T@U) (|a#12#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Wrappers.Pair.Pair| |a#12#0#0@@0| |a#12#1#0@@0|) (Tclass.Wrappers.Pair Wrappers.Pair$A@@1 Wrappers.Pair$B@@1) $h@@6)  (and ($IsAllocBox |a#12#0#0@@0| Wrappers.Pair$A@@1 $h@@6) ($IsAllocBox |a#12#1#0@@0| Wrappers.Pair$B@@1 $h@@6))))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Wrappers.Pair.Pair| |a#12#0#0@@0| |a#12#1#0@@0|) (Tclass.Wrappers.Pair Wrappers.Pair$A@@1 Wrappers.Pair$B@@1) $h@@6))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2GO.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2GO._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1739|
 :pattern ( (_System.Tuple2GO.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple3OGG.___hMake3_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#3OGG._#Make3|))
 :qid |unknown.0:0|
 :skolemid |1762|
 :pattern ( (_System.Tuple3OGG.___hMake3_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (Wrappers.Pair.Pair_q d@@4) (= (DatatypeCtorId d@@4) |##Wrappers.Pair.Pair|))
 :qid |unknown.0:0|
 :skolemid |1837|
 :pattern ( (Wrappers.Pair.Pair_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (Library.ErasableWrapper.ErasableWrapper_q d@@5) (= (DatatypeCtorId d@@5) |##Library.ErasableWrapper.ErasableWrapper|))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (Library.Ghost.Uninitialized_q d@@6) (= (DatatypeCtorId d@@6) |##Library.Ghost.Uninitialized|))
 :qid |unknown.0:0|
 :skolemid |1906|
 :pattern ( (Library.Ghost.Uninitialized_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (Library.Ghost.Something_q d@@7) (= (DatatypeCtorId d@@7) |##Library.Ghost.Something|))
 :qid |unknown.0:0|
 :skolemid |1911|
 :pattern ( (Library.Ghost.Something_q d@@7))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1285|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_System.Tuple3OGG.___hMake3_q d@@8) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@8 (|#_System._tuple#3OGG._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |unknown.0:0|
 :skolemid |1763|
)))
 :qid |unknown.0:0|
 :skolemid |1764|
 :pattern ( (_System.Tuple3OGG.___hMake3_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_System.Tuple2GO.___hMake2_q d@@9) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@9 (|#_System._tuple#2GO._#Make2| |a#13#0#0| |a#13#1#0|))
 :qid |unknown.0:0|
 :skolemid |1740|
)))
 :qid |unknown.0:0|
 :skolemid |1741|
 :pattern ( (_System.Tuple2GO.___hMake2_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (Wrappers.Pair.Pair_q d@@10) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= d@@10 (|#Wrappers.Pair.Pair| |a#11#0#0| |a#11#1#0|))
 :qid |Externdfy.40:30|
 :skolemid |1838|
)))
 :qid |unknown.0:0|
 :skolemid |1839|
 :pattern ( (Wrappers.Pair.Pair_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (Library.Ghost.Uninitialized_q d@@11) (= d@@11 |#Library.Ghost.Uninitialized|))
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( (Library.Ghost.Uninitialized_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (Library.ErasableWrapper.ErasableWrapper_q d@@12) (exists ((|a#1#0#0| Int) ) (! (= d@@12 (|#Library.ErasableWrapper.ErasableWrapper| |a#1#0#0|))
 :qid |Externdfy.77:46|
 :skolemid |1895|
)))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (Library.Ghost.Something_q d@@13) (exists ((|a#10#0#0| T@U) ) (! (= d@@13 (|#Library.Ghost.Something| |a#10#0#0|))
 :qid |Externdfy.79:55|
 :skolemid |1912|
)))
 :qid |unknown.0:0|
 :skolemid |1913|
 :pattern ( (Library.Ghost.Something_q d@@13))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.Library.MyInt)  (and (<= (LitInt (- 0 100)) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 2147483648)))
 :qid |unknown.0:0|
 :skolemid |1855|
 :pattern ( ($Is intType |x#0@@0| Tclass.Library.MyInt))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@4| T@U) (|_System._tuple#3OGG$T1@@4| T@U) (|_System._tuple#3OGG$T2@@4| T@U) (|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3OGG._#Make3| |a#22#0#0| |a#22#1#0| |a#22#2#0|) (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@4| |_System._tuple#3OGG$T1@@4| |_System._tuple#3OGG$T2@@4|) $h@@7)  (and (and ($IsAllocBox |a#22#0#0| |_System._tuple#3OGG$T0@@4| $h@@7) ($IsAllocBox |a#22#1#0| |_System._tuple#3OGG$T1@@4| $h@@7)) ($IsAllocBox |a#22#2#0| |_System._tuple#3OGG$T2@@4| $h@@7))))
 :qid |unknown.0:0|
 :skolemid |1771|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3OGG._#Make3| |a#22#0#0| |a#22#1#0| |a#22#2#0|) (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@4| |_System._tuple#3OGG$T1@@4| |_System._tuple#3OGG$T2@@4|) $h@@7))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1298|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1370|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1369|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((Wrappers.Option$T T@U) ) (!  (and (= (Tag (Tclass.Wrappers.Option Wrappers.Option$T)) Tagclass.Wrappers.Option) (= (TagFamily (Tclass.Wrappers.Option Wrappers.Option$T)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1802|
 :pattern ( (Tclass.Wrappers.Option Wrappers.Option$T))
)))
(assert (forall ((Library.Ghost$X@@1 T@U) ) (!  (and (= (Tag (Tclass.Library.Ghost Library.Ghost$X@@1)) Tagclass.Library.Ghost) (= (TagFamily (Tclass.Library.Ghost Library.Ghost$X@@1)) tytagFamily$Ghost))
 :qid |unknown.0:0|
 :skolemid |1813|
 :pattern ( (Tclass.Library.Ghost Library.Ghost$X@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1605|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1608|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Library.Mixed) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Library.Mixed)))
 :qid |unknown.0:0|
 :skolemid |1797|
 :pattern ( ($IsBox bx@@3 Tclass.Library.Mixed))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Library.Mixed?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Library.Mixed?)))
 :qid |unknown.0:0|
 :skolemid |1800|
 :pattern ( ($IsBox bx@@4 Tclass.Library.Mixed?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Library.MyInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass.Library.MyInt)))
 :qid |unknown.0:0|
 :skolemid |1809|
 :pattern ( ($IsBox bx@@5 Tclass.Library.MyInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Library.ErasableWrapper) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.Library.ErasableWrapper)))
 :qid |unknown.0:0|
 :skolemid |1811|
 :pattern ( ($IsBox bx@@6 Tclass.Library.ErasableWrapper))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#2#0#0|) Tclass.Library.ErasableWrapper) ($Is intType (int_2_U |a#2#0#0|) Tclass.Library.MyInt))
 :qid |Externdfy.77:46|
 :skolemid |1897|
 :pattern ( ($Is DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#2#0#0|) Tclass.Library.ErasableWrapper))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1609|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Library.Mixed)  (and ($Is refType |c#0@@2| Tclass.Library.Mixed?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($Is refType |c#0@@2| Tclass.Library.Mixed))
 :pattern ( ($Is refType |c#0@@2| Tclass.Library.Mixed?))
)))
(assert (forall ((|_System._tuple#3OGG$T0@@5| T@U) (|_System._tuple#3OGG$T1@@5| T@U) (|_System._tuple#3OGG$T2@@5| T@U) (d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@5| |_System._tuple#3OGG$T1@@5| |_System._tuple#3OGG$T2@@5|)) (_System.Tuple3OGG.___hMake3_q d@@14))
 :qid |unknown.0:0|
 :skolemid |1786|
 :pattern ( (_System.Tuple3OGG.___hMake3_q d@@14) ($Is DatatypeTypeType d@@14 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@5| |_System._tuple#3OGG$T1@@5| |_System._tuple#3OGG$T2@@5|)))
)))
(assert (forall ((Library.Ghost$X@@2 T@U) (|a#11#0#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#Library.Ghost.Something| |a#11#0#0@@0|) (Tclass.Library.Ghost Library.Ghost$X@@2) $h@@8) ($IsAllocBox |a#11#0#0@@0| Library.Ghost$X@@2 $h@@8)))
 :qid |unknown.0:0|
 :skolemid |1915|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Library.Ghost.Something| |a#11#0#0@@0|) (Tclass.Library.Ghost Library.Ghost$X@@2) $h@@8))
)))
(assert ($Is DatatypeTypeType Library.AllExtern.IntPair (Tclass.Wrappers.Pair TInt TInt)))
(assert (forall ((|_System._tuple#3OGG$T0@@6| T@U) (|_System._tuple#3OGG$T1@@6| T@U) (|_System._tuple#3OGG$T2@@6| T@U) (|a#22#0#0@@0| T@U) (|a#22#1#0@@0| T@U) (|a#22#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3OGG._#Make3| |a#22#0#0@@0| |a#22#1#0@@0| |a#22#2#0@@0|) (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@6| |_System._tuple#3OGG$T1@@6| |_System._tuple#3OGG$T2@@6|))  (and (and ($IsBox |a#22#0#0@@0| |_System._tuple#3OGG$T0@@6|) ($IsBox |a#22#1#0@@0| |_System._tuple#3OGG$T1@@6|)) ($IsBox |a#22#2#0@@0| |_System._tuple#3OGG$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |1770|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3OGG._#Make3| |a#22#0#0@@0| |a#22#1#0@@0| |a#22#2#0@@0|) (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@6| |_System._tuple#3OGG$T1@@6| |_System._tuple#3OGG$T2@@6|)))
)))
(assert ($Is DatatypeTypeType Library.AllExtern.MaybeInt (Tclass.Wrappers.Option TInt)))
(assert (forall ((Library.Ghost$X@@3 T@U) (d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 (Tclass.Library.Ghost Library.Ghost$X@@3)) (or (Library.Ghost.Uninitialized_q d@@15) (Library.Ghost.Something_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |1921|
 :pattern ( (Library.Ghost.Something_q d@@15) ($Is DatatypeTypeType d@@15 (Tclass.Library.Ghost Library.Ghost$X@@3)))
 :pattern ( (Library.Ghost.Uninitialized_q d@@15) ($Is DatatypeTypeType d@@15 (Tclass.Library.Ghost Library.Ghost$X@@3)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1376|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1297|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|a#12#0#0@@1| T@U) (|a#12#1#0@@1| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2GO._#Make2| |a#12#0#0@@1| |a#12#1#0@@1|)) |##_System._tuple#2GO._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1738|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#12#0#0@@1| |a#12#1#0@@1|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@2| T@U) (|_System._tuple#2GO$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2GO_0 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@2| |_System._tuple#2GO$T1@@2|)) |_System._tuple#2GO$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1743|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@2| |_System._tuple#2GO$T1@@2|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@3| T@U) (|_System._tuple#2GO$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2GO_1 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@3| |_System._tuple#2GO$T1@@3|)) |_System._tuple#2GO$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1744|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@3| |_System._tuple#2GO$T1@@3|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_System.Tuple2GO._0 (|#_System._tuple#2GO._#Make2| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |1753|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (_System.Tuple2GO._1 (|#_System._tuple#2GO._#Make2| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |1755|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((Wrappers.Pair$A@@2 T@U) (Wrappers.Pair$B@@2 T@U) ) (! (= (Tclass.Wrappers.Pair_0 (Tclass.Wrappers.Pair Wrappers.Pair$A@@2 Wrappers.Pair$B@@2)) Wrappers.Pair$A@@2)
 :qid |unknown.0:0|
 :skolemid |1806|
 :pattern ( (Tclass.Wrappers.Pair Wrappers.Pair$A@@2 Wrappers.Pair$B@@2))
)))
(assert (forall ((Wrappers.Pair$A@@3 T@U) (Wrappers.Pair$B@@3 T@U) ) (! (= (Tclass.Wrappers.Pair_1 (Tclass.Wrappers.Pair Wrappers.Pair$A@@3 Wrappers.Pair$B@@3)) Wrappers.Pair$B@@3)
 :qid |unknown.0:0|
 :skolemid |1807|
 :pattern ( (Tclass.Wrappers.Pair Wrappers.Pair$A@@3 Wrappers.Pair$B@@3))
)))
(assert (forall ((|a#10#0#0@@0| T@U) (|a#10#1#0| T@U) ) (! (= (DatatypeCtorId (|#Wrappers.Pair.Pair| |a#10#0#0@@0| |a#10#1#0|)) |##Wrappers.Pair.Pair|)
 :qid |Externdfy.40:30|
 :skolemid |1836|
 :pattern ( (|#Wrappers.Pair.Pair| |a#10#0#0@@0| |a#10#1#0|))
)))
(assert (forall ((|a#14#0#0@@1| T@U) (|a#14#1#0@@1| T@U) ) (! (= (Wrappers.Pair.first (|#Wrappers.Pair.Pair| |a#14#0#0@@1| |a#14#1#0@@1|)) |a#14#0#0@@1|)
 :qid |Externdfy.40:30|
 :skolemid |1847|
 :pattern ( (|#Wrappers.Pair.Pair| |a#14#0#0@@1| |a#14#1#0@@1|))
)))
(assert (forall ((|a#16#0#0@@0| T@U) (|a#16#1#0@@0| T@U) ) (! (= (Wrappers.Pair.second (|#Wrappers.Pair.Pair| |a#16#0#0@@0| |a#16#1#0@@0|)) |a#16#1#0@@0|)
 :qid |Externdfy.40:30|
 :skolemid |1849|
 :pattern ( (|#Wrappers.Pair.Pair| |a#16#0#0@@0| |a#16#1#0@@0|))
)))
(assert (forall (($o@@2 T@U) ) (! ($Is refType $o@@2 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1606|
 :pattern ( ($Is refType $o@@2 Tclass._System.object?))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#_System._tuple#3OGG._#Make3| (Lit BoxType |a#23#0#0|) (Lit BoxType |a#23#1#0|) (Lit BoxType |a#23#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3OGG._#Make3| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1778|
 :pattern ( (|#_System._tuple#3OGG._#Make3| (Lit BoxType |a#23#0#0|) (Lit BoxType |a#23#1#0|) (Lit BoxType |a#23#2#0|)))
)))
(assert (forall ((Wrappers.Option$T@@0 T@U) ) (! (= (Tclass.Wrappers.Option_0 (Tclass.Wrappers.Option Wrappers.Option$T@@0)) Wrappers.Option$T@@0)
 :qid |unknown.0:0|
 :skolemid |1803|
 :pattern ( (Tclass.Wrappers.Option Wrappers.Option$T@@0))
)))
(assert (forall ((Library.Ghost$X@@4 T@U) ) (! (= (Tclass.Library.Ghost_0 (Tclass.Library.Ghost Library.Ghost$X@@4)) Library.Ghost$X@@4)
 :qid |unknown.0:0|
 :skolemid |1814|
 :pattern ( (Tclass.Library.Ghost Library.Ghost$X@@4))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#Library.ErasableWrapper.ErasableWrapper| |a#0#0#0|)) |##Library.ErasableWrapper.ErasableWrapper|)
 :qid |Externdfy.77:46|
 :skolemid |1893|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (Library.ErasableWrapper.x (|#Library.ErasableWrapper.ErasableWrapper| |a#4#0#0|)) |a#4#0#0|)
 :qid |Externdfy.77:46|
 :skolemid |1900|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| |a#4#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (DatatypeCtorId (|#Library.Ghost.Something| |a#9#0#0|)) |##Library.Ghost.Something|)
 :qid |Externdfy.79:55|
 :skolemid |1910|
 :pattern ( (|#Library.Ghost.Something| |a#9#0#0|))
)))
(assert (forall ((|a#13#0#0@@0| T@U) ) (! (= (Library.Ghost.x (|#Library.Ghost.Something| |a#13#0#0@@0|)) |a#13#0#0@@0|)
 :qid |Externdfy.79:55|
 :skolemid |1918|
 :pattern ( (|#Library.Ghost.Something| |a#13#0#0@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1284|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) ) (! (< (BoxRank |a#25#0#0|) (DtRank (|#_System._tuple#3OGG._#Make3| |a#25#0#0| |a#25#1#0| |a#25#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1780|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#25#0#0| |a#25#1#0| |a#25#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (< (BoxRank |a#27#1#0|) (DtRank (|#_System._tuple#3OGG._#Make3| |a#27#0#0| |a#27#1#0| |a#27#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1782|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (< (BoxRank |a#29#2#0|) (DtRank (|#_System._tuple#3OGG._#Make3| |a#29#0#0| |a#29#1#0| |a#29#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1784|
 :pattern ( (|#_System._tuple#3OGG._#Make3| |a#29#0#0| |a#29#1#0| |a#29#2#0|))
)))
(assert (forall ((Library.Ghost$X@@5 T@U) (|a#11#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#Library.Ghost.Something| |a#11#0#0@@1|) (Tclass.Library.Ghost Library.Ghost$X@@5)) ($IsBox |a#11#0#0@@1| Library.Ghost$X@@5))
 :qid |unknown.0:0|
 :skolemid |1914|
 :pattern ( ($Is DatatypeTypeType (|#Library.Ghost.Something| |a#11#0#0@@1|) (Tclass.Library.Ghost Library.Ghost$X@@5)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#2GO._#Make2| |a#17#0#0| |a#17#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1754|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#2GO._#Make2| |a#19#0#0| |a#19#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (< (BoxRank |a#15#0#0|) (DtRank (|#Wrappers.Pair.Pair| |a#15#0#0| |a#15#1#0|)))
 :qid |Externdfy.40:30|
 :skolemid |1848|
 :pattern ( (|#Wrappers.Pair.Pair| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#17#0#0@@0| T@U) (|a#17#1#0@@0| T@U) ) (! (< (BoxRank |a#17#1#0@@0|) (DtRank (|#Wrappers.Pair.Pair| |a#17#0#0@@0| |a#17#1#0@@0|)))
 :qid |Externdfy.40:30|
 :skolemid |1850|
 :pattern ( (|#Wrappers.Pair.Pair| |a#17#0#0@@0| |a#17#1#0@@0|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@4| T@U) (|_System._tuple#2GO$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1745|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|)))
)))
(assert (forall ((Wrappers.Pair$A@@4 T@U) (Wrappers.Pair$B@@4 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Wrappers.Pair Wrappers.Pair$A@@4 Wrappers.Pair$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass.Wrappers.Pair Wrappers.Pair$A@@4 Wrappers.Pair$B@@4))))
 :qid |unknown.0:0|
 :skolemid |1808|
 :pattern ( ($IsBox bx@@9 (Tclass.Wrappers.Pair Wrappers.Pair$A@@4 Wrappers.Pair$B@@4)))
)))
(assert (forall ((|a#14#0#0@@2| T@U) ) (! (< (BoxRank |a#14#0#0@@2|) (DtRank (|#Library.Ghost.Something| |a#14#0#0@@2|)))
 :qid |Externdfy.79:55|
 :skolemid |1919|
 :pattern ( (|#Library.Ghost.Something| |a#14#0#0@@2|))
)))
(assert (forall ((d@@16 T@U) (Library.Ghost$X@@6 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (Library.Ghost.Something_q d@@16) ($IsAlloc DatatypeTypeType d@@16 (Tclass.Library.Ghost Library.Ghost$X@@6) $h@@9))) ($IsAllocBox (Library.Ghost.x d@@16) Library.Ghost$X@@6 $h@@9))
 :qid |unknown.0:0|
 :skolemid |1916|
 :pattern ( ($IsAllocBox (Library.Ghost.x d@@16) Library.Ghost$X@@6 $h@@9))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1934|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|_System._tuple#2GO$T0@@5| T@U) (|_System._tuple#2GO$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|)) Tagclass._System.Tuple2GO) (= (TagFamily (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|)) |tytagFamily$_tuple#2GO|))
 :qid |unknown.0:0|
 :skolemid |1742|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|))
)))
(assert (forall ((Wrappers.Pair$A@@5 T@U) (Wrappers.Pair$B@@5 T@U) ) (!  (and (= (Tag (Tclass.Wrappers.Pair Wrappers.Pair$A@@5 Wrappers.Pair$B@@5)) Tagclass.Wrappers.Pair) (= (TagFamily (Tclass.Wrappers.Pair Wrappers.Pair$A@@5 Wrappers.Pair$B@@5)) tytagFamily$Pair))
 :qid |unknown.0:0|
 :skolemid |1805|
 :pattern ( (Tclass.Wrappers.Pair Wrappers.Pair$A@@5 Wrappers.Pair$B@@5))
)))
(assert (forall ((d@@17 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@17)) (DtRank d@@17))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1343|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@17)))
)))
(assert (forall ((Wrappers.Option$T@@1 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.Wrappers.Option Wrappers.Option$T@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass.Wrappers.Option Wrappers.Option$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1804|
 :pattern ( ($IsBox bx@@10 (Tclass.Wrappers.Option Wrappers.Option$T@@1)))
)))
(assert (forall ((Library.Ghost$X@@7 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.Library.Ghost Library.Ghost$X@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass.Library.Ghost Library.Ghost$X@@7))))
 :qid |unknown.0:0|
 :skolemid |1815|
 :pattern ( ($IsBox bx@@11 (Tclass.Library.Ghost Library.Ghost$X@@7)))
)))
(assert (forall ((d@@18 T@U) (|_System._tuple#3OGG$T0@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple3OGG.___hMake3_q d@@18) (exists ((|_System._tuple#3OGG$T1@@7| T@U) (|_System._tuple#3OGG$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@7| |_System._tuple#3OGG$T1@@7| |_System._tuple#3OGG$T2@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |1772|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@7| |_System._tuple#3OGG$T1@@7| |_System._tuple#3OGG$T2@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple3OGG._0 d@@18) |_System._tuple#3OGG$T0@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |1773|
 :pattern ( ($IsAllocBox (_System.Tuple3OGG._0 d@@18) |_System._tuple#3OGG$T0@@7| $h@@10))
)))
(assert (forall ((d@@19 T@U) (|_System._tuple#3OGG$T1@@8| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple3OGG.___hMake3_q d@@19) (exists ((|_System._tuple#3OGG$T0@@8| T@U) (|_System._tuple#3OGG$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@8| |_System._tuple#3OGG$T1@@8| |_System._tuple#3OGG$T2@@8|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |1774|
 :pattern ( ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@8| |_System._tuple#3OGG$T1@@8| |_System._tuple#3OGG$T2@@8|) $h@@11))
)))) ($IsAllocBox (_System.Tuple3OGG._1 d@@19) |_System._tuple#3OGG$T1@@8| $h@@11))
 :qid |unknown.0:0|
 :skolemid |1775|
 :pattern ( ($IsAllocBox (_System.Tuple3OGG._1 d@@19) |_System._tuple#3OGG$T1@@8| $h@@11))
)))
(assert (forall ((d@@20 T@U) (|_System._tuple#3OGG$T2@@9| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple3OGG.___hMake3_q d@@20) (exists ((|_System._tuple#3OGG$T0@@9| T@U) (|_System._tuple#3OGG$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@9| |_System._tuple#3OGG$T1@@9| |_System._tuple#3OGG$T2@@9|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |1776|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple3OGG |_System._tuple#3OGG$T0@@9| |_System._tuple#3OGG$T1@@9| |_System._tuple#3OGG$T2@@9|) $h@@12))
)))) ($IsAllocBox (_System.Tuple3OGG._2 d@@20) |_System._tuple#3OGG$T2@@9| $h@@12))
 :qid |unknown.0:0|
 :skolemid |1777|
 :pattern ( ($IsAllocBox (_System.Tuple3OGG._2 d@@20) |_System._tuple#3OGG$T2@@9| $h@@12))
)))
(assert (forall ((d@@21 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@21 Tclass.Library.ErasableWrapper)) ($IsAlloc DatatypeTypeType d@@21 Tclass.Library.ErasableWrapper $h@@13))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass.Library.ErasableWrapper $h@@13))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Library.Mixed) Tagclass.Library.Mixed))
(assert (= (TagFamily Tclass.Library.Mixed) tytagFamily$Mixed))
(assert (= (Tag Tclass.Library.Mixed?) Tagclass.Library.Mixed?))
(assert (= (TagFamily Tclass.Library.Mixed?) tytagFamily$Mixed))
(assert (= (Tag Tclass.Library.MyInt) Tagclass.Library.MyInt))
(assert (= (TagFamily Tclass.Library.MyInt) tytagFamily$MyInt))
(assert (= (Tag Tclass.Library.ErasableWrapper) Tagclass.Library.ErasableWrapper))
(assert (= (TagFamily Tclass.Library.ErasableWrapper) tytagFamily$ErasableWrapper))
(assert (= |#Library.Ghost.Uninitialized| (Lit DatatypeTypeType |#Library.Ghost.Uninitialized|)))
(assert (forall ((d@@22 T@U) (|_System._tuple#2GO$T0@@6| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple2GO.___hMake2_q d@@22) (exists ((|_System._tuple#2GO$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@22 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@6| |_System._tuple#2GO$T1@@6|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |1748|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@6| |_System._tuple#2GO$T1@@6|) $h@@14))
)))) ($IsAllocBox (_System.Tuple2GO._0 d@@22) |_System._tuple#2GO$T0@@6| $h@@14))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( ($IsAllocBox (_System.Tuple2GO._0 d@@22) |_System._tuple#2GO$T0@@6| $h@@14))
)))
(assert (forall ((d@@23 T@U) (|_System._tuple#2GO$T1@@7| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple2GO.___hMake2_q d@@23) (exists ((|_System._tuple#2GO$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@7| |_System._tuple#2GO$T1@@7|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@7| |_System._tuple#2GO$T1@@7|) $h@@15))
)))) ($IsAllocBox (_System.Tuple2GO._1 d@@23) |_System._tuple#2GO$T1@@7| $h@@15))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAllocBox (_System.Tuple2GO._1 d@@23) |_System._tuple#2GO$T1@@7| $h@@15))
)))
(assert (forall ((d@@24 T@U) (Wrappers.Pair$A@@6 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (Wrappers.Pair.Pair_q d@@24) (exists ((Wrappers.Pair$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@24 (Tclass.Wrappers.Pair Wrappers.Pair$A@@6 Wrappers.Pair$B@@6) $h@@16)
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 (Tclass.Wrappers.Pair Wrappers.Pair$A@@6 Wrappers.Pair$B@@6) $h@@16))
)))) ($IsAllocBox (Wrappers.Pair.first d@@24) Wrappers.Pair$A@@6 $h@@16))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAllocBox (Wrappers.Pair.first d@@24) Wrappers.Pair$A@@6 $h@@16))
)))
(assert (forall ((d@@25 T@U) (Wrappers.Pair$B@@7 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (Wrappers.Pair.Pair_q d@@25) (exists ((Wrappers.Pair$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@25 (Tclass.Wrappers.Pair Wrappers.Pair$A@@7 Wrappers.Pair$B@@7) $h@@17)
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 (Tclass.Wrappers.Pair Wrappers.Pair$A@@7 Wrappers.Pair$B@@7) $h@@17))
)))) ($IsAllocBox (Wrappers.Pair.second d@@25) Wrappers.Pair$B@@7 $h@@17))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( ($IsAllocBox (Wrappers.Pair.second d@@25) Wrappers.Pair$B@@7 $h@@17))
)))
(assert (forall ((d@@26 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (Library.ErasableWrapper.ErasableWrapper_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass.Library.ErasableWrapper $h@@18))) ($IsAlloc intType (int_2_U (Library.ErasableWrapper.x d@@26)) Tclass.Library.MyInt $h@@18))
 :qid |unknown.0:0|
 :skolemid |1898|
 :pattern ( ($IsAlloc intType (int_2_U (Library.ErasableWrapper.x d@@26)) Tclass.Library.MyInt $h@@18))
)))
(assert (forall ((|a#15#0#0@@0| T@U) (|a#15#1#0@@0| T@U) ) (! (= (|#_System._tuple#2GO._#Make2| (Lit BoxType |a#15#0#0@@0|) (Lit BoxType |a#15#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#15#0#0@@0| |a#15#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1752|
 :pattern ( (|#_System._tuple#2GO._#Make2| (Lit BoxType |a#15#0#0@@0|) (Lit BoxType |a#15#1#0@@0|)))
)))
(assert (forall ((|a#13#0#0@@1| T@U) (|a#13#1#0@@0| T@U) ) (! (= (|#Wrappers.Pair.Pair| (Lit BoxType |a#13#0#0@@1|) (Lit BoxType |a#13#1#0@@0|)) (Lit DatatypeTypeType (|#Wrappers.Pair.Pair| |a#13#0#0@@1| |a#13#1#0@@0|)))
 :qid |Externdfy.40:30|
 :skolemid |1846|
 :pattern ( (|#Wrappers.Pair.Pair| (Lit BoxType |a#13#0#0@@1|) (Lit BoxType |a#13#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1277|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#Library.ErasableWrapper.ErasableWrapper| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#3#0#0|)))
 :qid |Externdfy.77:46|
 :skolemid |1899|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#12#0#0@@2| T@U) ) (! (= (|#Library.Ghost.Something| (Lit BoxType |a#12#0#0@@2|)) (Lit DatatypeTypeType (|#Library.Ghost.Something| |a#12#0#0@@2|)))
 :qid |Externdfy.79:55|
 :skolemid |1917|
 :pattern ( (|#Library.Ghost.Something| (Lit BoxType |a#12#0#0@@2|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1275|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1320|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1299|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Library.AllDafny.Seven#canCall| () Bool)
(declare-fun |Library.Mixed.Seven#canCall| () Bool)
(declare-fun |Library.AllExtern.Seven#canCall| () Bool)
(declare-fun |Library.AllExtern.MaybeInt#canCall| () Bool)
(declare-fun |maybeInt#0@0| () T@U)
(declare-fun |Library.AllExtern.IntPair#canCall| () Bool)
(declare-fun |intPair#0@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |a##0@0| () T@U)
(declare-fun |call2formal@b#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@b#0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |a##1@0| () T@U)
(declare-fun |call2formal@b#0@@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |call2formal@b#0@0@@0| () T@U)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |a##2@0| () T@U)
(declare-fun |call2formal@b#0@@1| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call2formal@b#0@0@@1| () T@U)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |x##1@0| () Int)
(declare-fun |b##0@0| () Bool)
(declare-fun |call3formal@y#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |call3formal@y#0@0| () Int)
(declare-fun |call1formal@w#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call1formal@w#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |Library.Mixed.F#canCall| () Bool)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |Library.Mixed.IF#canCall| (T@U) Bool)
(declare-fun |z#0| () Int)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0| () T@U)
(declare-fun |defass#m#0| () Bool)
(declare-fun |m#0| () T@U)
(declare-fun |maybeInt#0| () T@U)
(declare-fun |intPair#0| () T@U)
(declare-fun |singleton#0| () T@U)
(declare-fun |noWrapper#0| () T@U)
(declare-fun |ghostWrapper#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon2_correct  (=> (and (and |Library.AllDafny.Seven#canCall| |Library.Mixed.Seven#canCall|) (=> (= (LitInt Library.AllDafny.Seven) (LitInt Library.Mixed.Seven)) (and |Library.Mixed.Seven#canCall| |Library.AllExtern.Seven#canCall|))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (= (LitInt Library.AllDafny.Seven) (LitInt Library.Mixed.Seven))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (= (LitInt Library.Mixed.Seven) (LitInt Library.AllExtern.Seven))) (=> (and (= (LitInt Library.AllDafny.Seven) (LitInt Library.Mixed.Seven)) (= (LitInt Library.Mixed.Seven) (LitInt Library.AllExtern.Seven))) (=> (and (and (and |Library.AllExtern.MaybeInt#canCall| |Library.AllExtern.MaybeInt#canCall|) (and (= |maybeInt#0@0| Library.AllExtern.MaybeInt) |Library.AllExtern.IntPair#canCall|)) (and (and (Wrappers.Pair.Pair_q Library.AllExtern.IntPair) |Library.AllExtern.IntPair#canCall|) (and (= |intPair#0@0| Library.AllExtern.IntPair) (= |newtype$check#1@0| (LitInt 10))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= (LitInt (- 0 100)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648)) (=> (= |newtype$check#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= (LitInt (- 0 100)) |newtype$check#2@0|) (< |newtype$check#2@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#2@0|) (< |newtype$check#2@0| 2147483648)) (=> (= |a##0@0| (Lit DatatypeTypeType (|#_System._tuple#2GO._#Make2| ($Box intType (int_2_U (LitInt 10))) ($Box intType (int_2_U (LitInt 2)))))) (=> (and ($Is DatatypeTypeType |call2formal@b#0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |call2formal@b#0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt) $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (< (U_2_int ($Unbox intType (_System.Tuple2GO._1 |a##0@0|))) 2147483647)) (=> (< (U_2_int ($Unbox intType (_System.Tuple2GO._1 |a##0@0|))) 2147483647) (=> (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and ($Is DatatypeTypeType |call2formal@b#0@0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |call2formal@b#0@0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt) $Heap@8))) (=> (and (and (and (_System.Tuple3OGG.___hMake3_q |call2formal@b#0@0|) (_System.Tuple2GO.___hMake2_q |a##0@0|)) (= (U_2_int ($Unbox intType (_System.Tuple3OGG._0 |call2formal@b#0@0|))) (+ (U_2_int ($Unbox intType (_System.Tuple2GO._1 |a##0@0|))) 1))) (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@4)))
 :qid |Externdfy.83:38|
 :skolemid |1928|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@4))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (_System.Tuple3OGG.___hMake3_q |call2formal@b#0@0|) (= |newtype$check#3@0| (LitInt 3))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= (LitInt (- 0 100)) |newtype$check#3@0|) (< |newtype$check#3@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#3@0|) (< |newtype$check#3@0| 2147483648)) (=> (_System.Tuple3OGG.___hMake3_q |call2formal@b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= (U_2_int ($Unbox intType (_System.Tuple3OGG._0 |call2formal@b#0@0|))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (_System.Tuple3OGG._0 |call2formal@b#0@0|))) (LitInt 3)) (=> (= |newtype$check#4@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt (- 0 100)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648)) (=> (= |a##1@0| (Lit DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| (LitInt 2)))) (=> (and ($Is DatatypeTypeType |call2formal@b#0@@0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |call2formal@b#0@@0| Tclass.Library.ErasableWrapper $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< (Library.ErasableWrapper.x |a##1@0|) 2147483647)) (=> (< (Library.ErasableWrapper.x |a##1@0|) 2147483647) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and ($Is DatatypeTypeType |call2formal@b#0@0@@0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |call2formal@b#0@0@@0| Tclass.Library.ErasableWrapper $Heap@9))) (=> (and (and (and (Library.ErasableWrapper.ErasableWrapper_q |call2formal@b#0@0@@0|) (Library.ErasableWrapper.ErasableWrapper_q |a##1@0|)) (= (Library.ErasableWrapper.x |call2formal@b#0@0@@0|) (+ (Library.ErasableWrapper.x |a##1@0|) 1))) (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@5)))
 :qid |Externdfy.86:38|
 :skolemid |1929|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@5))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (Library.ErasableWrapper.ErasableWrapper_q |call2formal@b#0@0@@0|) (= |newtype$check#5@0| (LitInt 3))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= (LitInt (- 0 100)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648)) (=> (Library.ErasableWrapper.ErasableWrapper_q |call2formal@b#0@0@@0|) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= (Library.ErasableWrapper.x |call2formal@b#0@0@@0|) (LitInt 3))) (=> (= (Library.ErasableWrapper.x |call2formal@b#0@0@@0|) (LitInt 3)) (=> (= |newtype$check#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= (LitInt (- 0 100)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648)) (=> (= |a##2@0| (Lit DatatypeTypeType (|#Library.Ghost.Something| ($Box intType (int_2_U (LitInt 2)))))) (=> (and ($Is DatatypeTypeType |call2formal@b#0@@1| (Tclass.Library.Ghost Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |call2formal@b#0@@1| (Tclass.Library.Ghost Tclass.Library.MyInt) $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (Library.Ghost.Something_q |a##2@0|)) (=> (Library.Ghost.Something_q |a##2@0|) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< (U_2_int ($Unbox intType (Library.Ghost.x |a##2@0|))) 2147483647)) (=> (< (U_2_int ($Unbox intType (Library.Ghost.x |a##2@0|))) 2147483647) (=> (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and ($Is DatatypeTypeType |call2formal@b#0@0@@1| (Tclass.Library.Ghost Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |call2formal@b#0@0@@1| (Tclass.Library.Ghost Tclass.Library.MyInt) $Heap@10))) (and (and (Library.Ghost.Something_q |call2formal@b#0@0@@1|) (= (U_2_int ($Unbox intType (Library.Ghost.x |call2formal@b#0@0@@1|))) (+ (U_2_int ($Unbox intType (Library.Ghost.x |a##2@0|))) 1))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@6)))
 :qid |Externdfy.89:38|
 :skolemid |1930|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@6))
)) ($HeapSucc $Heap@9 $Heap@10)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (Library.Ghost.Something_q |call2formal@b#0@0@@1|)) (=> (Library.Ghost.Something_q |call2formal@b#0@0@@1|) (=> (= |newtype$check#7@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt (- 0 100)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (U_2_int ($Unbox intType (Library.Ghost.x |call2formal@b#0@0@@1|))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (Library.Ghost.x |call2formal@b#0@0@@1|))) (LitInt 3)) (=> (_System.Tuple3OGG.___hMake3_q |call2formal@b#0@0|) (=> (and (and (_System.Tuple3OGG.___hMake3_q |call2formal@b#0@0|) (Library.ErasableWrapper.ErasableWrapper_q |call2formal@b#0@0@@0|)) (and (Library.ErasableWrapper.ErasableWrapper_q |call2formal@b#0@0@@0|) (= (ControlFlow 0 2) (- 0 1)))) (Library.Ghost.Something_q |call2formal@b#0@0@@1|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon3_Else_correct  (=> (and (or (not (= (LitInt Library.AllDafny.Seven) (LitInt Library.Mixed.Seven))) (not true)) (= (ControlFlow 0 21) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (and (= (LitInt Library.AllDafny.Seven) (LitInt Library.Mixed.Seven)) |Library.Mixed.Seven#canCall|) (and |Library.AllExtern.Seven#canCall| (= (ControlFlow 0 20) 2))) anon2_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (LitInt 30))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7)))
 :qid |Externdfy.49:29|
 :skolemid |1860|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0@0| (LitInt 44)))) (and (=> (= (ControlFlow 0 22) (- 0 28)) (and (<= (LitInt (- 0 100)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648)) (=> (and (= |x##1@0| (LitInt 44)) (= |b##0@0| (U_2_bool (Lit boolType (bool_2_U true))))) (=> (and (and (and (and (<= (LitInt (- 0 100)) |call3formal@y#0|) (< |call3formal@y#0| 2147483648)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (<= (LitInt (- 0 100)) |call3formal@y#0@0|) (< |call3formal@y#0@0| 2147483648)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)))
 :qid |Externdfy.50:29|
 :skolemid |1861|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (and (and ($Is refType |call1formal@w#0| Tclass._System.object) ($IsAlloc refType |call1formal@w#0| Tclass._System.object $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($Is refType |call1formal@w#0@0| Tclass._System.object) ($IsAlloc refType |call1formal@w#0@0| Tclass._System.object $Heap@2)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9)))
 :qid |Externdfy.51:69|
 :skolemid |1862|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 22) (- 0 27)) true) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10)))
 :qid |Externdfy.56:19|
 :skolemid |1869|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10))
)) ($HeapSucc $Heap@2 $Heap@3)) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (=> (and (and (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11)))
 :qid |Externdfy.61:19|
 :skolemid |1876|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@11))
)) ($HeapSucc $Heap@3 $Heap@4)) (and |Library.Mixed.F#canCall| |Library.Mixed.F#canCall|)) (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.Library.Mixed) ($IsAlloc refType call1formal@this Tclass.Library.Mixed $Heap))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)))) (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.Library.Mixed) ($IsAlloc refType call1formal@this@0 Tclass.Library.Mixed $Heap@5))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) alloc))))) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12)))
 :qid |Externdfy.59:5|
 :skolemid |1875|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@12))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 22) (- 0 26)) true) (and (=> (= (ControlFlow 0 22) (- 0 25)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13)))
 :qid |Externdfy.63:12|
 :skolemid |1877|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@13))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 22) (- 0 24)) true) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= call1formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call1formal@this@0) Tclass.Library.Mixed? $Heap@6) (=> (and (and (and (|Library.Mixed.IF#canCall| call1formal@this@0) (|Library.Mixed.IF#canCall| call1formal@this@0)) (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7))) (and (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@14)))
 :qid |Externdfy.72:29|
 :skolemid |1889|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@14))
)) ($HeapSucc $Heap@6 $Heap@7)) (and |Library.AllDafny.Seven#canCall| |Library.Mixed.Seven#canCall|))) (and (=> (= (ControlFlow 0 22) 20) anon3_Then_correct) (=> (= (ControlFlow 0 22) 21) anon3_Else_correct))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and (<= (LitInt (- 0 100)) |z#0|) (< |z#0| 2147483648)) true) (and (and (=> |defass#w#0| (and ($Is refType |w#0| Tclass._System.object) ($IsAlloc refType |w#0| Tclass._System.object $Heap))) true) (and (=> |defass#m#0| (and ($Is refType |m#0| Tclass.Library.Mixed) ($IsAlloc refType |m#0| Tclass.Library.Mixed $Heap))) true))) (and (and (and ($Is DatatypeTypeType |maybeInt#0| (Tclass.Wrappers.Option TInt)) ($IsAlloc DatatypeTypeType |maybeInt#0| (Tclass.Wrappers.Option TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |intPair#0| (Tclass.Wrappers.Pair TInt TInt)) ($IsAlloc DatatypeTypeType |intPair#0| (Tclass.Wrappers.Pair TInt TInt) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |singleton#0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |singleton#0| (Tclass._System.Tuple3OGG Tclass.Library.MyInt Tclass.Library.MyInt Tclass.Library.MyInt) $Heap)) true) (and (and ($Is DatatypeTypeType |noWrapper#0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |noWrapper#0| Tclass.Library.ErasableWrapper $Heap)) true)) (and (and (and ($Is DatatypeTypeType |ghostWrapper#0| (Tclass.Library.Ghost Tclass.Library.MyInt)) ($IsAlloc DatatypeTypeType |ghostWrapper#0| (Tclass.Library.Ghost Tclass.Library.MyInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 29) 22))))) anon0_correct))))
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
