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
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass.ReadsGenerics.Cl? () T@U)
(declare-fun Tagclass.ReadsGenerics.Cl () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun tytagFamily$Cl () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun ReadsGenerics.Cl.g2 (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |ReadsGenerics.Cl.g2#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ReadsGenerics.Cl (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.ReadsGenerics.Cl? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |ReadsGenerics.Cl.g2#Handle| (T@U T@U T@U T@U) T@U)
(declare-fun |ReadsGenerics.Cl.g2#requires| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |ReadsGenerics.Cl.h#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun ReadsGenerics.Cl.h (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.ReadsGenerics.Cl?_0 (T@U) T@U)
(declare-fun Tclass.ReadsGenerics.Cl_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.___hFunc2 Tagclass.ReadsGenerics.Cl? Tagclass.ReadsGenerics.Cl |tytagFamily$_tuple#2| |tytagFamily$_#Func2| tytagFamily$Cl)
)
(assert  (and (= (Ctor refType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A T@U) (ReadsGenerics.Cl.g2$B T@U) ($ly T@U) (this T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.g2#canCall| ReadsGenerics.Cl$A ReadsGenerics.Cl.g2$B this |a#0| |b#0|) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A))) ($IsBox |a#0| ReadsGenerics.Cl$A)) ($IsBox |b#0| ReadsGenerics.Cl.g2$B)))) ($Is DatatypeTypeType (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A ReadsGenerics.Cl.g2$B $ly this |a#0| |b#0|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A ReadsGenerics.Cl.g2$B)))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A ReadsGenerics.Cl.g2$B $ly this |a#0| |b#0|))
))))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |2186|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |2187|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((ReadsGenerics.Cl$A@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@0) $h) ($IsAlloc refType |c#0| (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2293|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@0) $h))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2174|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1831|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |2185|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((ReadsGenerics.Cl$A@@1 T@U) (ReadsGenerics.Cl.g2$B@@0 T@U) ($ly@@0 T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) ) (! (= (Requires2 ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0) $heap (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0 $ly@@0 $self) |$fh$0x#0| |$fh$0x#1|) (|ReadsGenerics.Cl.g2#requires| ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0 $ly@@0 $self |$fh$0x#0| |$fh$0x#1|))
 :qid |unknown.0:0|
 :skolemid |2279|
 :pattern ( (Requires2 ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0) $heap (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@1 ReadsGenerics.Cl.g2$B@@0 $ly@@0 $self) |$fh$0x#0| |$fh$0x#1|))
)))
(assert (= (Ctor HandleTypeType) 5))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2162|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((ReadsGenerics.Cl$A@@2 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@2) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2238|
 :pattern ( ($IsAlloc refType $o (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@2) $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A@@3 T@U) (ReadsGenerics.Cl.g2$B@@1 T@U) ($ly@@1 T@U) ($Heap T@U) (this@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.g2#canCall| ReadsGenerics.Cl$A@@3 ReadsGenerics.Cl.g2$B@@1 this@@0 |a#0@@0| |b#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@3)) ($IsAlloc refType this@@0 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@3) $Heap)))) ($IsBox |a#0@@0| ReadsGenerics.Cl$A@@3)) ($IsBox |b#0@@0| ReadsGenerics.Cl.g2$B@@1)))) (and (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@3 ReadsGenerics.Cl.g2$B@@1 $Heap this@@0 |a#0@@0| |b#0@@0|) (= (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@3 ReadsGenerics.Cl.g2$B@@1 ($LS $ly@@1) this@@0 |a#0@@0| |b#0@@0|) (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@3 ReadsGenerics.Cl.g2$B@@1 $ly@@1 $Heap this@@0 |a#0@@0| |b#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |2275|
 :pattern ( (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@3 ReadsGenerics.Cl.g2$B@@1 ($LS $ly@@1) this@@0 |a#0@@0| |b#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1721|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |2163|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2155|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((ReadsGenerics.Cl$A@@4 T@U) (ReadsGenerics.Cl.g2$B@@2 T@U) ($ly@@2 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (Apply2 ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2) $heap@@0 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2 $ly@@2 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0|) ($Box DatatypeTypeType (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2 $ly@@2 $self@@0 |$fh$0x#0@@0| |$fh$0x#1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2278|
 :pattern ( (Apply2 ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2) $heap@@0 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@4 ReadsGenerics.Cl.g2$B@@2 $ly@@2 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0|))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1732|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((ReadsGenerics.Cl$A@@5 T@U) (ReadsGenerics.Cl.h$B T@U) ($ly@@3 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (! (= (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@5 ReadsGenerics.Cl.h$B ($LS $ly@@3) $Heap@@0 this@@1 |a#0@@1| |b#0@@1|) (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@5 ReadsGenerics.Cl.h$B $ly@@3 $Heap@@0 this@@1 |a#0@@1| |b#0@@1|))
 :qid |unknown.0:0|
 :skolemid |2283|
 :pattern ( (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@5 ReadsGenerics.Cl.h$B ($LS $ly@@3) $Heap@@0 this@@1 |a#0@@1| |b#0@@1|))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2156|
)))
 :qid |unknown.0:0|
 :skolemid |2157|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A@@6 T@U) (ReadsGenerics.Cl.h$B@@0 T@U) ($ly@@4 T@U) ($Heap@@1 T@U) (this@@2 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@6 ReadsGenerics.Cl.h$B@@0 $Heap@@1 this@@2 |a#0@@2| |b#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@1) (or (not (= this@@2 null)) (not true))) ($IsAlloc refType this@@2 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@6) $Heap@@1)) (and ($IsBox |a#0@@2| ReadsGenerics.Cl$A@@6) ($IsAllocBox |a#0@@2| ReadsGenerics.Cl$A@@6 $Heap@@1))) (and ($IsBox |b#0@@2| ReadsGenerics.Cl.h$B@@0) ($IsAllocBox |b#0@@2| ReadsGenerics.Cl.h$B@@0 $Heap@@1))))) ($IsAlloc DatatypeTypeType (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@6 ReadsGenerics.Cl.h$B@@0 $ly@@4 $Heap@@1 this@@2 |a#0@@2| |b#0@@2|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@6 ReadsGenerics.Cl.h$B@@0) $Heap@@1))
 :qid |unknown.0:0|
 :skolemid |2288|
 :pattern ( ($IsAlloc DatatypeTypeType (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@6 ReadsGenerics.Cl.h$B@@0 $ly@@4 $Heap@@1 this@@2 |a#0@@2| |b#0@@2|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@6 ReadsGenerics.Cl.h$B@@0) $Heap@@1))
))))
(assert (forall ((ReadsGenerics.Cl$A@@7 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@7))  (and ($Is refType |c#0@@0| (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@7)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2292|
 :pattern ( ($Is refType |c#0@@0| (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@7)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@7)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1745|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((ReadsGenerics.Cl$A@@8 T@U) (ReadsGenerics.Cl.g2$B@@3 T@U) ($ly@@5 T@U) (this@@3 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (! (= (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@8 ReadsGenerics.Cl.g2$B@@3 ($LS $ly@@5) this@@3 |a#0@@3| |b#0@@3|) (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@8 ReadsGenerics.Cl.g2$B@@3 $ly@@5 this@@3 |a#0@@3| |b#0@@3|))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@8 ReadsGenerics.Cl.g2$B@@3 ($LS $ly@@5) this@@3 |a#0@@3| |b#0@@3|))
)))
(assert (forall ((ReadsGenerics.Cl$A@@9 T@U) (ReadsGenerics.Cl.g2$B@@4 T@U) ($ly@@6 T@U) ($Heap@@2 T@U) (this@@4 T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@9)) ($IsAlloc refType this@@4 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@9) $Heap@@2)))) ($IsBox |a#0@@4| ReadsGenerics.Cl$A@@9)) ($IsBox |b#0@@4| ReadsGenerics.Cl.g2$B@@4)) (= (|ReadsGenerics.Cl.g2#requires| ReadsGenerics.Cl$A@@9 ReadsGenerics.Cl.g2$B@@4 $ly@@6 this@@4 |a#0@@4| |b#0@@4|) true))
 :qid |unknown.0:0|
 :skolemid |2274|
 :pattern ( (|ReadsGenerics.Cl.g2#requires| ReadsGenerics.Cl$A@@9 ReadsGenerics.Cl.g2$B@@4 $ly@@6 this@@4 |a#0@@4| |b#0@@4|) ($IsGoodHeap $Heap@@2))
)))
(assert (forall ((ReadsGenerics.Cl$A@@10 T@U) ) (!  (and (= (Tag (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@10)) Tagclass.ReadsGenerics.Cl?) (= (TagFamily (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@10)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2234|
 :pattern ( (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@10))
)))
(assert (forall ((ReadsGenerics.Cl$A@@11 T@U) ) (!  (and (= (Tag (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@11)) Tagclass.ReadsGenerics.Cl) (= (TagFamily (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@11)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@11))
)))
(assert (forall ((ReadsGenerics.Cl$A@@12 T@U) (ReadsGenerics.Cl.g2$B@@5 T@U) ($ly@@7 T@U) (this@@5 T@U) ) (! (= (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@12 ReadsGenerics.Cl.g2$B@@5 ($LS $ly@@7) this@@5) (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@12 ReadsGenerics.Cl.g2$B@@5 $ly@@7 this@@5))
 :qid |unknown.0:0|
 :skolemid |2277|
 :pattern ( (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@12 ReadsGenerics.Cl.g2$B@@5 ($LS $ly@@7) this@@5))
)))
(assert (forall ((ReadsGenerics.Cl$A@@13 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@13))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@13))))
 :qid |unknown.0:0|
 :skolemid |2237|
 :pattern ( ($Is refType $o@@0 (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@13)))
)))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0) (forall ((bx0 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h@@0)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h@@0))) (Requires2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2213|
 :pattern ( (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2214|
 :pattern ( (Apply2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
 :pattern ( (Reads2 t0@@0 t1@@0 t2 h@@0 f bx0 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |2215|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A@@14 T@U) (ReadsGenerics.Cl.h$B@@1 T@U) ($ly@@8 T@U) ($Heap@@3 T@U) (this@@6 T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@14 ReadsGenerics.Cl.h$B@@1 $Heap@@3 this@@6 |a#0@@5| |b#0@@5|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@14)) ($IsAlloc refType this@@6 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@14) $Heap@@3)))) ($IsBox |a#0@@5| ReadsGenerics.Cl$A@@14)) ($IsBox |b#0@@5| ReadsGenerics.Cl.h$B@@1)))) (= (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@14 ReadsGenerics.Cl.h$B@@1 ($LS $ly@@8) $Heap@@3 this@@6 |a#0@@5| |b#0@@5|) (|#_System._tuple#2._#Make2| |a#0@@5| |b#0@@5|)))
 :qid |unknown.0:0|
 :skolemid |2290|
 :pattern ( (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@14 ReadsGenerics.Cl.h$B@@1 ($LS $ly@@8) $Heap@@3 this@@6 |a#0@@5| |b#0@@5|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((f@@0 T@U) (t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)) (forall ((h@@1 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1))) (Requires2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0)) ($IsBox (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2207|
 :pattern ( (Apply2 t0@@1 t1@@1 t2@@0 h@@1 f@@0 bx0@@0 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |2208|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1856|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((ReadsGenerics.Cl$A@@15 T@U) (ReadsGenerics.Cl.g2$B@@6 T@U) ($ly@@9 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) ) (! (= (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@15 ReadsGenerics.Cl.g2$B@@6 $ly@@9 $self@@1 |$fh$0x#0@@1| |$fh$0x#1@@1|) ($Unbox DatatypeTypeType (Apply2 ReadsGenerics.Cl$A@@15 ReadsGenerics.Cl.g2$B@@6 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@15 ReadsGenerics.Cl.g2$B@@6) $heap@@1 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@15 ReadsGenerics.Cl.g2$B@@6 $ly@@9 $self@@1) |$fh$0x#0@@1| |$fh$0x#1@@1|)))
 :qid |unknown.0:0|
 :skolemid |2281|
 :pattern ( (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@15 ReadsGenerics.Cl.g2$B@@6 $ly@@9 $self@@1 |$fh$0x#0@@1| |$fh$0x#1@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap T@U) (f@@1 T@U) (bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and ($IsBox bx0@@1 t0@@2) ($IsBox bx1@@1 t1@@2)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@2 t1@@2 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2205|
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@1 bx0@@1 bx1@@1) ($IsGoodHeap heap))
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 heap f@@1 bx0@@1 bx1@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (ReadsGenerics.Cl$A@@16 T@U) (ReadsGenerics.Cl.g2$B@@7 T@U) ($ly@@10 T@U) (this@@7 T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) ) (!  (=> (and (or (|ReadsGenerics.Cl.g2#canCall| ReadsGenerics.Cl$A@@16 ReadsGenerics.Cl.g2$B@@7 this@@7 |a#0@@6| |b#0@@6|) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this@@7 null)) (not true)) ($IsAlloc refType this@@7 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@16) $Heap@@4)) (and ($IsBox |a#0@@6| ReadsGenerics.Cl$A@@16) ($IsAllocBox |a#0@@6| ReadsGenerics.Cl$A@@16 $Heap@@4))) (and ($IsBox |b#0@@6| ReadsGenerics.Cl.g2$B@@7) ($IsAllocBox |b#0@@6| ReadsGenerics.Cl.g2$B@@7 $Heap@@4))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@16 ReadsGenerics.Cl.g2$B@@7 $ly@@10 this@@7 |a#0@@6| |b#0@@6|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@16 ReadsGenerics.Cl.g2$B@@7) $Heap@@4))
 :qid |Nakeddfy.63:20|
 :skolemid |2273|
 :pattern ( ($IsAlloc DatatypeTypeType (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@16 ReadsGenerics.Cl.g2$B@@7 $ly@@10 this@@7 |a#0@@6| |b#0@@6|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@16 ReadsGenerics.Cl.g2$B@@7) $Heap@@4))
))))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2)) (forall ((bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@2 t0@@3 h@@2) ($IsAllocBox bx1@@2 t1@@3 h@@2)) (Requires2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2)) ($IsAllocBox (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2) t2@@2 h@@2))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( (Apply2 t0@@3 t1@@3 t2@@2 h@@2 f@@2 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |2217|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@2))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1744|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2154|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2159|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2160|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2169|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2171|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((ReadsGenerics.Cl$A@@17 T@U) ) (! (= (Tclass.ReadsGenerics.Cl?_0 (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@17)) ReadsGenerics.Cl$A@@17)
 :qid |unknown.0:0|
 :skolemid |2235|
 :pattern ( (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@17))
)))
(assert (forall ((ReadsGenerics.Cl$A@@18 T@U) ) (! (= (Tclass.ReadsGenerics.Cl_0 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@18)) ReadsGenerics.Cl$A@@18)
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@18))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1731|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (heap@@0 T@U) (f@@3 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and ($IsBox bx0@@3 t0@@4) ($IsBox bx1@@3 t1@@4)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@4 t1@@4 t2@@3)))) (|Set#Equal| (Reads2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |2206|
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 $OneHeap f@@3 bx0@@3 bx1@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires2 t0@@4 t1@@4 t2@@3 heap@@0 f@@3 bx0@@3 bx1@@3))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2170|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2172|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((f@@4 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@0) ($IsBox bx@@0 t0@@5))
 :qid |unknown.0:0|
 :skolemid |2209|
 :pattern ( ($IsBox bx@@0 u0@@0))
 :pattern ( ($IsBox bx@@0 t0@@5))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u1@@0) ($IsBox bx@@1 t1@@5))
 :qid |unknown.0:0|
 :skolemid |2210|
 :pattern ( ($IsBox bx@@1 u1@@0))
 :pattern ( ($IsBox bx@@1 t1@@5))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t2@@4) ($IsBox bx@@2 u2))
 :qid |unknown.0:0|
 :skolemid |2211|
 :pattern ( ($IsBox bx@@2 t2@@4))
 :pattern ( ($IsBox bx@@2 u2))
))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
 :qid |unknown.0:0|
 :skolemid |2212|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A@@19 T@U) (ReadsGenerics.Cl.g2$B@@8 T@U) ($ly@@11 T@U) ($Heap@@5 T@U) (this@@8 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.g2#canCall| ReadsGenerics.Cl$A@@19 ReadsGenerics.Cl.g2$B@@8 (Lit refType this@@8) (Lit BoxType |a#0@@7|) (Lit BoxType |b#0@@7|)) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@19)) ($IsAlloc refType this@@8 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@19) $Heap@@5)))) ($IsBox |a#0@@7| ReadsGenerics.Cl$A@@19)) ($IsBox |b#0@@7| ReadsGenerics.Cl.g2$B@@8)))) (and (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@19 ReadsGenerics.Cl.g2$B@@8 $Heap@@5 (Lit refType this@@8) (Lit BoxType |a#0@@7|) (Lit BoxType |b#0@@7|)) (= (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@19 ReadsGenerics.Cl.g2$B@@8 ($LS $ly@@11) (Lit refType this@@8) (Lit BoxType |a#0@@7|) (Lit BoxType |b#0@@7|)) (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@19 ReadsGenerics.Cl.g2$B@@8 ($LS $ly@@11) $Heap@@5 (Lit refType this@@8) (Lit BoxType |a#0@@7|) (Lit BoxType |b#0@@7|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2276|
 :pattern ( (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@19 ReadsGenerics.Cl.g2$B@@8 ($LS $ly@@11) (Lit refType this@@8) (Lit BoxType |a#0@@7|) (Lit BoxType |b#0@@7|)) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2161|
 :pattern ( ($IsBox bx@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@6 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@6 t2@@5 (MapType1Store t0@@6 t1@@6 t2@@5 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2852|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2158|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1790|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((ReadsGenerics.Cl$A@@20 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@20)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@20))))
 :qid |unknown.0:0|
 :skolemid |2236|
 :pattern ( ($IsBox bx@@4 (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@20)))
)))
(assert (forall ((ReadsGenerics.Cl$A@@21 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@21)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@21))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsBox bx@@5 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@21)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ReadsGenerics.Cl$A@@22 T@U) (ReadsGenerics.Cl.h$B@@2 T@U) ($ly@@12 T@U) ($Heap@@6 T@U) (this@@9 T@U) (|a#0@@8| T@U) (|b#0@@8| T@U) ) (!  (=> (or (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@22 ReadsGenerics.Cl.h$B@@2 $Heap@@6 this@@9 |a#0@@8| |b#0@@8|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@22)) ($IsAlloc refType this@@9 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@22) $Heap@@6)))) (and ($IsBox |a#0@@8| ReadsGenerics.Cl$A@@22) ($IsAllocBox |a#0@@8| ReadsGenerics.Cl$A@@22 $Heap@@6))) (and ($IsBox |b#0@@8| ReadsGenerics.Cl.h$B@@2) ($IsAllocBox |b#0@@8| ReadsGenerics.Cl.h$B@@2 $Heap@@6))))) ($Is DatatypeTypeType (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@22 ReadsGenerics.Cl.h$B@@2 $ly@@12 $Heap@@6 this@@9 |a#0@@8| |b#0@@8|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@22 ReadsGenerics.Cl.h$B@@2)))
 :qid |unknown.0:0|
 :skolemid |2287|
 :pattern ( (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@22 ReadsGenerics.Cl.h$B@@2 $ly@@12 $Heap@@6 this@@9 |a#0@@8| |b#0@@8|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1854|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1855|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |2164|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |2165|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@2))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |2166|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |2167|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2168|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1722|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall (($bx T@U) (ReadsGenerics.Cl$A@@23 T@U) (ReadsGenerics.Cl.g2$B@@9 T@U) ($ly@@13 T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (|Set#IsMember| (Reads2 ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9) $heap@@2 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9 $ly@@13 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |2280|
 :pattern ( (|Set#IsMember| (Reads2 ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9) $heap@@2 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@23 ReadsGenerics.Cl.g2$B@@9 $ly@@13 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2|) $bx))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@10 () T@U)
(declare-fun ReadsGenerics.Cl$A@@24 () T@U)
(declare-fun $Heap@@7 () T@U)
(declare-fun |a#0@@9| () T@U)
(declare-fun |b#0@@9| () T@U)
(declare-fun ReadsGenerics.Cl.g2$B@@10 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$ReadsGenerics.Cl.g2)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (=> (and (and ($IsAllocBox ($Box refType this@@10) (Tclass.ReadsGenerics.Cl? ReadsGenerics.Cl$A@@24) $Heap@@7) ($IsAllocBox |a#0@@9| ReadsGenerics.Cl$A@@24 $Heap@@7)) (and ($IsAllocBox |b#0@@9| ReadsGenerics.Cl.g2$B@@10 $Heap@@7) (= |b$reqreads#0@0| (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@2) alloc)))) (|Set#IsMember| (Reads2 ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10) $Heap@@7 (|ReadsGenerics.Cl.g2#Handle| ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 ($LS $LZ) this@@10) |a#0@@9| |b#0@@9|) ($Box refType $o@@2))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@0)))
 :qid |Nakeddfy.64:7|
 :skolemid |2282|
))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (and (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 $Heap@@7 this@@10 |a#0@@9| |b#0@@9|) (_System.Tuple2.___hMake2_q (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 ($LS $LZ) $Heap@@7 this@@10 |a#0@@9| |b#0@@9|))) (=> (and (and (= (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 ($LS $LZ) this@@10 |a#0@@9| |b#0@@9|) (ReadsGenerics.Cl.h ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 ($LS $LZ) $Heap@@7 this@@10 |a#0@@9| |b#0@@9|)) (|ReadsGenerics.Cl.h#canCall| ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 $Heap@@7 this@@10 |a#0@@9| |b#0@@9|)) (and ($Is DatatypeTypeType (ReadsGenerics.Cl.g2 ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10 ($LS $LZ) this@@10 |a#0@@9| |b#0@@9|) (Tclass._System.Tuple2 ReadsGenerics.Cl$A@@24 ReadsGenerics.Cl.g2$B@@10)) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@0|))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@7 alloc false)) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@24)) ($IsAlloc refType this@@10 (Tclass.ReadsGenerics.Cl ReadsGenerics.Cl$A@@24) $Heap@@7)))) (and (and ($IsBox |a#0@@9| ReadsGenerics.Cl$A@@24) ($IsBox |b#0@@9| ReadsGenerics.Cl.g2$B@@10)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 6) 5)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
