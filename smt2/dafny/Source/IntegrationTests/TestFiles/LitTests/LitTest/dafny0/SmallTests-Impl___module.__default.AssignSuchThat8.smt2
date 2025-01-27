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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Lindgren () T@U)
(declare-fun |##_module.Lindgren.Pippi| () T@U)
(declare-fun |##_module.Lindgren.Longstocking| () T@U)
(declare-fun |##_module.Lindgren.HerrNilsson| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Lindgren () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Lindgren.Longstocking| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |_module.Lindgren#Equal| (T@U T@U) Bool)
(declare-fun _module.Lindgren.Pippi_q (T@U) Bool)
(declare-fun _module.Lindgren._h0 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Lindgren () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Lindgren.HerrNilsson| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Node () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Lindgren.Longstocking_q (T@U) Bool)
(declare-fun _module.Lindgren.HerrNilsson_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Lindgren.Pippi| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Lindgren._h1 (T@U) T@U)
(declare-fun _module.Lindgren._h2 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |$IsA#_module.Lindgren| (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Node Tagclass._module.Node? Tagclass._module.Lindgren |##_module.Lindgren.Pippi| |##_module.Lindgren.Longstocking| |##_module.Lindgren.HerrNilsson| tytagFamily$object tytagFamily$Node tytagFamily$Lindgren)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i))) (DtRank (|#_module.Lindgren.Longstocking| |a#10#0#0| |a#10#1#0|))))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3476|
 :pattern ( (|Seq#Index| |a#10#0#0| i) (|#_module.Lindgren.Longstocking| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |2868|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Lindgren.Pippi_q a) (_module.Lindgren.Pippi_q b)) (= (|_module.Lindgren#Equal| a b) (= (_module.Lindgren._h0 a) (_module.Lindgren._h0 b))))
 :qid |unknown.0:0|
 :skolemid |3485|
 :pattern ( (|_module.Lindgren#Equal| a b) (_module.Lindgren.Pippi_q a))
 :pattern ( (|_module.Lindgren#Equal| a b) (_module.Lindgren.Pippi_q b))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Lindgren.Longstocking| |a#7#0#0| |a#7#1#0|) Tclass._module.Lindgren)  (and ($Is SeqType |a#7#0#0| (TSeq Tclass._System.object)) ($Is DatatypeTypeType |a#7#1#0| Tclass._module.Lindgren)))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3470|
 :pattern ( ($Is DatatypeTypeType (|#_module.Lindgren.Longstocking| |a#7#0#0| |a#7#1#0|) Tclass._module.Lindgren))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |2866|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Lindgren.HerrNilsson|) |##_module.Lindgren.HerrNilsson|))
(assert (= (Ctor refType) 5))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3289|
 :pattern ( ($Is refType $o Tclass._module.Node?))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Lindgren.Longstocking| |a#7#0#0@@0| |a#7#1#0@@0|) Tclass._module.Lindgren $h)  (and ($IsAlloc SeqType |a#7#0#0@@0| (TSeq Tclass._System.object) $h) ($IsAlloc DatatypeTypeType |a#7#1#0@@0| Tclass._module.Lindgren $h))))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3471|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Lindgren.Longstocking| |a#7#0#0@@0| |a#7#1#0@@0|) Tclass._module.Lindgren $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2985|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Node $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3325|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Node? $h@@1))
)))
(assert ($Is DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3482|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren $h@@2))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2982|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3290|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@4))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Lindgren#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |3488|
 :pattern ( (|_module.Lindgren#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2651|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2892|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Lindgren.Pippi_q d) (= (DatatypeCtorId d) |##_module.Lindgren.Pippi|))
 :qid |unknown.0:0|
 :skolemid |3458|
 :pattern ( (_module.Lindgren.Pippi_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Lindgren.Longstocking_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Lindgren.Longstocking|))
 :qid |unknown.0:0|
 :skolemid |3467|
 :pattern ( (_module.Lindgren.Longstocking_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Lindgren.HerrNilsson_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Lindgren.HerrNilsson|))
 :qid |unknown.0:0|
 :skolemid |3480|
 :pattern ( (_module.Lindgren.HerrNilsson_q d@@1))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |2873|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |2874|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Lindgren.Longstocking_q d@@2) (exists ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= d@@2 (|#_module.Lindgren.Longstocking| |a#6#0#0| |a#6#1#0|))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3468|
)))
 :qid |unknown.0:0|
 :skolemid |3469|
 :pattern ( (_module.Lindgren.Longstocking_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Lindgren.HerrNilsson_q d@@3) (= d@@3 |#_module.Lindgren.HerrNilsson|))
 :qid |unknown.0:0|
 :skolemid |3481|
 :pattern ( (_module.Lindgren.HerrNilsson_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Lindgren.Pippi_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#_module.Lindgren.Pippi| |a#1#0#0|))
 :qid |SmallTestsdfy.263:9|
 :skolemid |3459|
)))
 :qid |unknown.0:0|
 :skolemid |3460|
 :pattern ( (_module.Lindgren.Pippi_q d@@4))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2858|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2980|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2983|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( ($IsBox bx@@2 Tclass._module.Node))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsBox bx@@3 Tclass._module.Node?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Lindgren) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Lindgren)))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsBox bx@@4 Tclass._module.Lindgren))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Lindgren.Pippi| |a#2#0#0|) Tclass._module.Lindgren) ($Is refType |a#2#0#0| Tclass._module.Node))
 :qid |SmallTestsdfy.263:9|
 :skolemid |3461|
 :pattern ( ($Is DatatypeTypeType (|#_module.Lindgren.Pippi| |a#2#0#0|) Tclass._module.Lindgren))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2984|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Node)  (and ($Is refType |c#0@@2| Tclass._module.Node?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3324|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Node?))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@2 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0) v@@2)) (=> (or (not (= i@@0 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0) (|Seq#Index| s@@2 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2859|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0))
)))
(assert (forall ((s@@3 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@3 x@@7) (exists ((i@@1 Int) ) (!  (and (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@1) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |2864|
 :pattern ( (|Seq#Index| s@@3 i@@1))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |2865|
 :pattern ( (|Seq#Contains| s@@3 x@@7))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |2875|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((|a#2#0#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Lindgren.Pippi| |a#2#0#0@@0|) Tclass._module.Lindgren $h@@5) ($IsAlloc refType |a#2#0#0@@0| Tclass._module.Node $h@@5)))
 :qid |SmallTestsdfy.263:9|
 :skolemid |3462|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Lindgren.Pippi| |a#2#0#0@@0|) Tclass._module.Lindgren $h@@5))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2661|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Lindgren.Longstocking_q a@@2) (_module.Lindgren.Longstocking_q b@@2)) (= (|_module.Lindgren#Equal| a@@2 b@@2)  (and (|Seq#Equal| (_module.Lindgren._h1 a@@2) (_module.Lindgren._h1 b@@2)) (|_module.Lindgren#Equal| (_module.Lindgren._h2 a@@2) (_module.Lindgren._h2 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |3486|
 :pattern ( (|_module.Lindgren#Equal| a@@2 b@@2) (_module.Lindgren.Longstocking_q a@@2))
 :pattern ( (|_module.Lindgren#Equal| a@@2 b@@2) (_module.Lindgren.Longstocking_q b@@2))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2855|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Lindgren.HerrNilsson_q a@@3) (_module.Lindgren.HerrNilsson_q b@@3)) (|_module.Lindgren#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |3487|
 :pattern ( (|_module.Lindgren#Equal| a@@3 b@@3) (_module.Lindgren.HerrNilsson_q a@@3))
 :pattern ( (|_module.Lindgren#Equal| a@@3 b@@3) (_module.Lindgren.HerrNilsson_q b@@3))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Lindgren.Longstocking| |a#5#0#0| |a#5#1#0|)) |##_module.Lindgren.Longstocking|)
 :qid |SmallTestsdfy.264:16|
 :skolemid |3466|
 :pattern ( (|#_module.Lindgren.Longstocking| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (_module.Lindgren._h1 (|#_module.Lindgren.Longstocking| |a#9#0#0| |a#9#1#0|)) |a#9#0#0|)
 :qid |SmallTestsdfy.264:16|
 :skolemid |3475|
 :pattern ( (|#_module.Lindgren.Longstocking| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (_module.Lindgren._h2 (|#_module.Lindgren.Longstocking| |a#12#0#0| |a#12#1#0|)) |a#12#1#0|)
 :qid |SmallTestsdfy.264:16|
 :skolemid |3478|
 :pattern ( (|#_module.Lindgren.Longstocking| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall (($o@@2 T@U) ) (! ($Is refType $o@@2 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2981|
 :pattern ( ($Is refType $o@@2 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@0) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@2) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2707|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2708|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2641|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2642|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Lindgren.Pippi| |a#0#0#0|)) |##_module.Lindgren.Pippi|)
 :qid |SmallTestsdfy.263:9|
 :skolemid |3457|
 :pattern ( (|#_module.Lindgren.Pippi| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Lindgren._h0 (|#_module.Lindgren.Pippi| |a#4#0#0|)) |a#4#0#0|)
 :qid |SmallTestsdfy.263:9|
 :skolemid |3465|
 :pattern ( (|#_module.Lindgren.Pippi| |a#4#0#0|))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.Lindgren| d@@5) (or (or (_module.Lindgren.Pippi_q d@@5) (_module.Lindgren.Longstocking_q d@@5)) (_module.Lindgren.HerrNilsson_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |3483|
 :pattern ( (|$IsA#_module.Lindgren| d@@5))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#_module.Lindgren.Longstocking| |a#11#0#0| |a#11#1#0|)))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3477|
 :pattern ( (|#_module.Lindgren.Longstocking| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (< (DtRank |a#13#1#0|) (DtRank (|#_module.Lindgren.Longstocking| |a#13#0#0| |a#13#1#0|)))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3479|
 :pattern ( (|#_module.Lindgren.Longstocking| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((u T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |2919|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |3849|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2857|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.Lindgren) (or (or (_module.Lindgren.Pippi_q d@@6) (_module.Lindgren.Longstocking_q d@@6)) (_module.Lindgren.HerrNilsson_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |3484|
 :pattern ( (_module.Lindgren.HerrNilsson_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Lindgren))
 :pattern ( (_module.Lindgren.Longstocking_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Lindgren))
 :pattern ( (_module.Lindgren.Pippi_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.Lindgren))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |2907|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |2908|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) (u@@0 T@U) (|u'| T@U) (v@@5 T@U) ) (!  (and (=> (= |u'| u@@0) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@5 u@@0 v@@5)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@5 u@@0 v@@5)) |u'|) v@@5))) (=> (or (not (= |u'| u@@0)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@5 u@@0 v@@5)) |u'|) (|Set#IsMember| (|Map#Domain| m@@5) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@5 u@@0 v@@5)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@5) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |2924|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@5 u@@0 v@@5)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@5 u@@0 v@@5)) |u'|))
)))
(assert (forall ((bx@@6 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2669|
 :pattern ( ($IsBox bx@@6 (TSeq t@@4)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Lindgren) Tagclass._module.Lindgren))
(assert (= (TagFamily Tclass._module.Lindgren) tytagFamily$Lindgren))
(assert (= |#_module.Lindgren.HerrNilsson| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
(assert (forall ((d@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Lindgren.Pippi_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Lindgren $h@@6))) ($IsAlloc refType (_module.Lindgren._h0 d@@7) Tclass._module.Node $h@@6))
 :qid |unknown.0:0|
 :skolemid |3463|
 :pattern ( ($IsAlloc refType (_module.Lindgren._h0 d@@7) Tclass._module.Node $h@@6))
)))
(assert (forall ((d@@8 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Lindgren.Longstocking_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Lindgren $h@@7))) ($IsAlloc DatatypeTypeType (_module.Lindgren._h2 d@@8) Tclass._module.Lindgren $h@@7))
 :qid |unknown.0:0|
 :skolemid |3473|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Lindgren._h2 d@@8) Tclass._module.Lindgren $h@@7))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (|#_module.Lindgren.Longstocking| (Lit SeqType |a#8#0#0|) (Lit DatatypeTypeType |a#8#1#0|)) (Lit DatatypeTypeType (|#_module.Lindgren.Longstocking| |a#8#0#0| |a#8#1#0|)))
 :qid |SmallTestsdfy.264:16|
 :skolemid |3474|
 :pattern ( (|#_module.Lindgren.Longstocking| (Lit SeqType |a#8#0#0|) (Lit DatatypeTypeType |a#8#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2652|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Lindgren.Pippi| (Lit refType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Lindgren.Pippi| |a#3#0#0|)))
 :qid |SmallTestsdfy.263:9|
 :skolemid |3464|
 :pattern ( (|#_module.Lindgren.Pippi| (Lit refType |a#3#0#0|)))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2856|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((d@@9 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Lindgren.Longstocking_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Lindgren $h@@8))) ($IsAlloc SeqType (_module.Lindgren._h1 d@@9) (TSeq Tclass._System.object) $h@@8))
 :qid |unknown.0:0|
 :skolemid |3472|
 :pattern ( ($IsAlloc SeqType (_module.Lindgren._h1 d@@9) (TSeq Tclass._System.object) $h@@8))
)))
(assert (forall ((h@@1 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2695|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@1))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2687|
 :pattern ( (|Seq#Index| v@@7 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2688|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@7 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@7))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@4))) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |2901|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@4))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2674|
 :pattern ( ($Is intType v@@8 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@6| () Int)
(declare-fun |n#0| () Int)
(declare-fun |x#0@5| () Int)
(declare-fun |x#0@4| () Int)
(declare-fun |x#0@3| () Int)
(declare-fun $Heap () T@U)
(declare-fun |y#0@1| () T@U)
(declare-fun |y#2@0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |y#1@0| () T@U)
(declare-fun |x#0@2| () Int)
(declare-fun |x#0@1| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#y#0| () Bool)
(declare-fun |y#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.AssignSuchThat8)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon27_Else_correct true))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| |Seq#Empty| ($Box intType (int_2_U 0)))) (exists ((|$as#x6#0| T@U) ) (! (|Seq#Contains| |Seq#Empty| ($Box intType |$as#x6#0|))
 :qid |SmallTestsdfy.664:3|
 :skolemid |3246|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| |Seq#Empty| ($Box intType (int_2_U 0)))) (exists ((|$as#x6#0@@0| Int) ) (! (|Seq#Contains| |Seq#Empty| ($Box intType (int_2_U |$as#x6#0@@0|)))
 :qid |SmallTestsdfy.664:3|
 :skolemid |3246|
))) (=> (and (|Seq#Contains| |Seq#Empty| ($Box intType (int_2_U |x#0@6|))) (= (ControlFlow 0 8) (- 0 7))) true)))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 2)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 0)))) (exists ((|$as#x5#0| T@U) ) (! (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType |$as#x5#0|))
 :qid |SmallTestsdfy.663:3|
 :skolemid |3245|
))))))) (=> (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 2)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 0)))) (exists ((|$as#x5#0@@0| Int) ) (! (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |$as#x5#0@@0|)))
 :qid |SmallTestsdfy.663:3|
 :skolemid |3245|
)))))) (=> (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |x#0@5|))) (and (=> (= (ControlFlow 0 11) 8) anon27_Then_correct) (=> (= (ControlFlow 0 11) 10) anon27_Else_correct)))))))
(let ((anon26_Else_correct true))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U 0)))) (exists ((|$as#x4#0| T@U) ) (! (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType |$as#x4#0|))
 :qid |SmallTestsdfy.662:3|
 :skolemid |3244|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U 0)))) (exists ((|$as#x4#0@@0| Int) ) (! (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U |$as#x4#0@@0|)))
 :qid |SmallTestsdfy.662:3|
 :skolemid |3244|
))) (=> (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U |x#0@4|))) (and (=> (= (ControlFlow 0 13) 11) anon26_Then_correct) (=> (= (ControlFlow 0 13) 6) anon26_Else_correct)))))))
(let ((anon25_Else_correct true))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (or (or (or (= (LitInt 2) (LitInt 3)) (= (LitInt 2) (LitInt 3))) (= (LitInt 2) (LitInt 2))) (= (LitInt 2) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 3))) (= (LitInt 0) (LitInt 2))) (= (LitInt 0) (LitInt 3)))) (exists ((|$as#x3#0| Int) ) (!  (or (or (or (= |$as#x3#0| (LitInt 3)) (= |$as#x3#0| (LitInt 3))) (= |$as#x3#0| (LitInt 2))) (= |$as#x3#0| (LitInt 3)))
 :qid |SmallTestsdfy.661:3|
 :skolemid |3243|
)))))))) (=> (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (or (or (or (= (LitInt 2) (LitInt 3)) (= (LitInt 2) (LitInt 3))) (= (LitInt 2) (LitInt 2))) (= (LitInt 2) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 3))) (= (LitInt 0) (LitInt 2))) (= (LitInt 0) (LitInt 3)))) (exists ((|$as#x3#0@@0| Int) ) (!  (or (or (or (= |$as#x3#0@@0| (LitInt 3)) (= |$as#x3#0@@0| (LitInt 3))) (= |$as#x3#0@@0| (LitInt 2))) (= |$as#x3#0@@0| (LitInt 3)))
 :qid |SmallTestsdfy.661:3|
 :skolemid |3243|
))))))) (=> (or (or (or (= |x#0@3| (LitInt 3)) (= |x#0@3| (LitInt 3))) (= |x#0@3| (LitInt 2))) (= |x#0@3| (LitInt 3))) (and (=> (= (ControlFlow 0 15) 13) anon25_Then_correct) (=> (= (ControlFlow 0 15) 5) anon25_Else_correct)))))))
(let ((anon24_Else_correct true))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (|_module.Lindgren#Equal| |#_module.Lindgren.HerrNilsson| |#_module.Lindgren.HerrNilsson|)) (exists ((|$as#y1#0| T@U) ) (!  (and (and ($Is DatatypeTypeType |$as#y1#0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |$as#y1#0| Tclass._module.Lindgren $Heap)) (|_module.Lindgren#Equal| |$as#y1#0| |$as#y1#0|))
 :qid |SmallTestsdfy.660:3|
 :skolemid |3242|
)))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (|_module.Lindgren#Equal| |#_module.Lindgren.HerrNilsson| |#_module.Lindgren.HerrNilsson|)) (exists ((|$as#y1#0@@0| T@U) ) (!  (and (and ($Is DatatypeTypeType |$as#y1#0@@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |$as#y1#0@@0| Tclass._module.Lindgren $Heap)) (|_module.Lindgren#Equal| |$as#y1#0@@0| |$as#y1#0@@0|))
 :qid |SmallTestsdfy.660:3|
 :skolemid |3242|
))) (=> (and (=> true (and ($Is DatatypeTypeType |y#0@1| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#0@1| Tclass._module.Lindgren $Heap))) (|_module.Lindgren#Equal| |y#0@1| |y#0@1|)) (and (=> (= (ControlFlow 0 17) 15) anon24_Then_correct) (=> (= (ControlFlow 0 17) 4) anon24_Else_correct)))))))
(let ((anon23_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |y#2@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#2@0| Tclass._module.Lindgren $Heap))) (= (ControlFlow 0 20) 17)) anon10_correct)))
(let ((anon23_Then_correct  (=> (and ($Is DatatypeTypeType |y#2@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#2@0| Tclass._module.Lindgren $Heap)) (=> (and (and (|$IsA#_module.Lindgren| |y#2@0|) (|$IsA#_module.Lindgren| |y#2@0|)) (= (ControlFlow 0 19) 17)) anon10_correct))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (exists ((|$as#y0#0| T@U) ) (!  (and ($Is DatatypeTypeType |$as#y0#0| Tclass._module.Lindgren) (= |$as#y0#0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
 :qid |SmallTestsdfy.659:3|
 :skolemid |3241|
))))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (exists ((|$as#y0#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |$as#y0#0@@0| Tclass._module.Lindgren) (= |$as#y0#0@@0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
 :qid |SmallTestsdfy.659:3|
 :skolemid |3241|
)))) (=> (and (=> true (and ($Is DatatypeTypeType |y#0@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#0@0| Tclass._module.Lindgren $Heap))) (= |y#0@0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (and (=> (= (ControlFlow 0 21) 19) anon23_Then_correct) (=> (= (ControlFlow 0 21) 20) anon23_Else_correct)))))))
(let ((anon22_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |y#1@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#1@0| Tclass._module.Lindgren $Heap))) (= (ControlFlow 0 24) 21)) anon8_correct)))
(let ((anon22_Then_correct  (=> (and (and ($Is DatatypeTypeType |y#1@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#1@0| Tclass._module.Lindgren $Heap)) (= (ControlFlow 0 23) 21)) anon8_correct)))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (and ($Is intType (int_2_U (+ |n#0| 12)) TInt) (= (+ |n#0| 12) (+ |n#0| 12))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (+ |n#0| 12))) (exists ((|$as#x2#0| Int) ) (! (= |$as#x2#0| (+ |n#0| 12))
 :qid |SmallTestsdfy.658:3|
 :skolemid |3240|
))))) (=> (or (and ($Is intType (int_2_U (+ |n#0| 12)) TInt) (= (+ |n#0| 12) (+ |n#0| 12))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (+ |n#0| 12))) (exists ((|$as#x2#0@@0| Int) ) (! (= |$as#x2#0@@0| (+ |n#0| 12))
 :qid |SmallTestsdfy.658:3|
 :skolemid |3240|
)))) (=> (= |x#0@2| (+ |n#0| 12)) (and (=> (= (ControlFlow 0 25) 23) anon22_Then_correct) (=> (= (ControlFlow 0 25) 24) anon22_Else_correct)))))))
(let ((anon21_Else_correct true))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (and ($Is intType (int_2_U (LitInt 11)) TInt) (or (or (= (LitInt 11) (LitInt 3)) (= (LitInt 11) (LitInt 7))) (= (LitInt 11) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 7)) TInt) (or (or (= (LitInt 7) (LitInt 3)) (= (LitInt 7) (LitInt 7))) (= (LitInt 7) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 7))) (= (LitInt 3) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 7))) (= (LitInt 0) (LitInt 11)))) (exists ((|$as#x1#0| Int) ) (!  (or (or (= |$as#x1#0| (LitInt 3)) (= |$as#x1#0| (LitInt 7))) (= |$as#x1#0| (LitInt 11)))
 :qid |SmallTestsdfy.657:3|
 :skolemid |3239|
))))))) (=> (or (and ($Is intType (int_2_U (LitInt 11)) TInt) (or (or (= (LitInt 11) (LitInt 3)) (= (LitInt 11) (LitInt 7))) (= (LitInt 11) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 7)) TInt) (or (or (= (LitInt 7) (LitInt 3)) (= (LitInt 7) (LitInt 7))) (= (LitInt 7) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 7))) (= (LitInt 3) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 7))) (= (LitInt 0) (LitInt 11)))) (exists ((|$as#x1#0@@0| Int) ) (!  (or (or (= |$as#x1#0@@0| (LitInt 3)) (= |$as#x1#0@@0| (LitInt 7))) (= |$as#x1#0@@0| (LitInt 11)))
 :qid |SmallTestsdfy.657:3|
 :skolemid |3239|
)))))) (=> (or (or (= |x#0@1| (LitInt 3)) (= |x#0@1| (LitInt 7))) (= |x#0@1| (LitInt 11))) (and (=> (= (ControlFlow 0 27) 25) anon21_Then_correct) (=> (= (ControlFlow 0 27) 3) anon21_Else_correct)))))))
(let ((anon20_Else_correct true))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (and ($Is intType (int_2_U (LitInt 1)) TInt) (= (LitInt 1) (LitInt 1))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (LitInt 1))) (exists ((|$as#x0#0| Int) ) (! (= |$as#x0#0| (LitInt 1))
 :qid |SmallTestsdfy.656:3|
 :skolemid |3238|
))))) (=> (or (and ($Is intType (int_2_U (LitInt 1)) TInt) (= (LitInt 1) (LitInt 1))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (LitInt 1))) (exists ((|$as#x0#0@@0| Int) ) (! (= |$as#x0#0@@0| (LitInt 1))
 :qid |SmallTestsdfy.656:3|
 :skolemid |3238|
)))) (=> (= |x#0@0| (LitInt 1)) (and (=> (= (ControlFlow 0 29) 27) anon20_Then_correct) (=> (= (ControlFlow 0 29) 2) anon20_Else_correct)))))))
(let ((anon19_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 31) 29) anon19_Then_correct) (=> (= (ControlFlow 0 31) 1) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> |defass#y#0| (and ($Is DatatypeTypeType |y#0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#0| Tclass._module.Lindgren $Heap)))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 32) 31))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 9))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
