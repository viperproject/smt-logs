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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Region () T@U)
(declare-fun Tagclass._module.Memory () T@U)
(declare-fun Tagclass._module.Memory? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun |##_module.Region.Frozen| () T@U)
(declare-fun |##_module.Region.Heap| () T@U)
(declare-fun |##_module.Region.Stack| () T@U)
(declare-fun |##_module.Region.Frame| () T@U)
(declare-fun |##_module.Region.Isolate| () T@U)
(declare-fun |##_module.Edge.Edge| () T@U)
(declare-fun Tagclass._module.Edge () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun tytagFamily$Memory () T@U)
(declare-fun tytagFamily$Edge () T@U)
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
(declare-fun |#_module.Edge.Edge| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Edge () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Object () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.region (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Region () T@U)
(declare-fun |_module.Region#Equal| (T@U T@U) Bool)
(declare-fun _module.Region.Heap_q (T@U) Bool)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun _module.Region.Stack_q (T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Edge.f (T@U) T@U)
(declare-fun _module.Edge.n (T@U) T@U)
(declare-fun _module.Edge.t (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Memory.justHeapExternalEdges (T@U T@U) T@U)
(declare-fun |_module.Memory.justHeapExternalEdges#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Memory () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$IsA#_module.Region| (T@U) Bool)
(declare-fun _module.Edge.Edge_q (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#76| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun Tclass._module.Memory? () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Region.Frozen_q (T@U) Bool)
(declare-fun _module.Region.Isolate_q (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass._module.Object Tagclass._module.Region Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Object? |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| |##_module.Edge.Edge| Tagclass._module.Edge tytagFamily$Object tytagFamily$Region tytagFamily$Memory tytagFamily$Edge)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#6#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#1#0| i))) (DtRank (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |817|
 :pattern ( (|Seq#Index| |a#6#1#0| i) (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
)))
(assert  (and (= (Ctor refType) 4) (= (Ctor SeqType) 5)))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) (|a#2#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge)  (and (and ($Is refType |a#2#0#0| Tclass._module.Object) ($Is SeqType |a#2#1#0| (TSeq TChar))) ($Is refType |a#2#2#0| Tclass._module.Object)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |809|
 :pattern ( ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.Object?)) ($Is DatatypeTypeType (_module.Object.region $o) Tclass._module.Region))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Object.region $o))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Region.Heap_q a) (_module.Region.Heap_q b)) (= (|_module.Region#Equal| a b) (= (_module.Region.region a) (_module.Region.region b))))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q a))
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Region.Stack_q a@@0) (_module.Region.Stack_q b@@0)) (= (|_module.Region#Equal| a@@0 b@@0) (= (_module.Region.region a@@0) (_module.Region.region b@@0))))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q a@@0))
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Region.Frame_q a@@1) (_module.Region.Frame_q b@@1)) (= (|_module.Region#Equal| a@@1 b@@1) (= (_module.Region.prev a@@1) (_module.Region.prev b@@1))))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q a@@1))
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) (|a#0#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|)) |##_module.Edge.Edge|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |804|
 :pattern ( (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (_module.Edge.f (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |a#4#0#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |815|
 :pattern ( (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= (_module.Edge.n (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|)) |a#5#1#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |816|
 :pattern ( (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Edge.t (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#2#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |819|
 :pattern ( (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
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
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert (= (Ctor SetType) 9))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this T@U) (|edges#0| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this |edges#0|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Memory)) ($Is SetType |edges#0| (TSet Tclass._module.Edge))))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0| ($Box DatatypeTypeType |e#0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#0|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#0|)))) (and (_module.Edge.Edge_q |e#0|) (_module.Edge.Edge_q |e#0|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#0|)) (_module.Object.region (_module.Edge.t |e#0|)))) (_module.Edge.Edge_q |e#0|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1012|
 :pattern ( (_module.Edge.t |e#0|))
 :pattern ( (_module.Edge.f |e#0|))
 :pattern ( (|Set#IsMember| |edges#0| ($Box DatatypeTypeType |e#0|)))
)) (= (_module.Memory.justHeapExternalEdges this |edges#0|) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge |edges#0|)))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1013|
 :pattern ( (_module.Memory.justHeapExternalEdges this |edges#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Region.Frozen|) |##_module.Region.Frozen|))
(assert (= (DatatypeCtorId |#_module.Region.Isolate|) |##_module.Region.Isolate|))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Object?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o@@1 Tclass._module.Object?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Memory?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($Is refType $o@@2 Tclass._module.Memory?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
)))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Edge) (_module.Edge.Edge_q d))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.Edge.Edge_q d) ($Is DatatypeTypeType d Tclass._module.Edge))
)))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
)))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Memory? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Memory? $h@@5))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.Region#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@2 b@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@0 T@U) (|edges#0@@0| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| (Lit refType this@@0) (Lit SetType |edges#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Memory)) ($Is SetType |edges#0@@0| (TSet Tclass._module.Edge))))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@0|) ($Box DatatypeTypeType |e#2|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#2|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#2|)))) (and (_module.Edge.Edge_q |e#2|) (_module.Edge.Edge_q |e#2|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#2|)) (_module.Object.region (_module.Edge.t |e#2|)))) (_module.Edge.Edge_q |e#2|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1016|
 :pattern ( (_module.Edge.t |e#2|))
 :pattern ( (_module.Edge.f |e#2|))
 :pattern ( (|Set#IsMember| |edges#0@@0| ($Box DatatypeTypeType |e#2|)))
)) (= (_module.Memory.justHeapExternalEdges (Lit refType this@@0) (Lit SetType |edges#0@@0|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@0|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1017|
 :pattern ( (_module.Memory.justHeapExternalEdges (Lit refType this@@0) (Lit SetType |edges#0@@0|)))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Subset| a@@3 b@@3) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a@@3 o) (|Set#IsMember| b@@3 o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@3 o))
 :pattern ( (|Set#IsMember| b@@3 o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@3 b@@3))
)))
(assert (forall ((|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) (|a#2#2#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) Tclass._module.Edge $h@@6)  (and (and ($IsAlloc refType |a#2#0#0@@0| Tclass._module.Object $h@@6) ($IsAlloc SeqType |a#2#1#0@@0| (TSeq TChar) $h@@6)) ($IsAlloc refType |a#2#2#0@@0| Tclass._module.Object $h@@6))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |810|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) Tclass._module.Edge $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Region.Frozen_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Region.Frozen_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Region.Heap_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Region.Heap|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.Region.Heap_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Region.Stack_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Region.Stack|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Region.Stack_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Region.Frame_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Region.Frame|))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Region.Frame_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Region.Isolate_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Region.Isolate_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Edge.Edge_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Edge.Edge|))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( (_module.Edge.Edge_q d@@5))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Edge.Edge_q d@@6) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) (|a#1#2#0| T@U) ) (! (= d@@6 (|#_module.Edge.Edge| |a#1#0#0| |a#1#1#0| |a#1#2#0|))
 :qid |gitissue3855dfy.149:22|
 :skolemid |806|
)))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.Edge.Edge_q d@@6))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#76| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0|) (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f ($Unbox DatatypeTypeType |$y#0|))) (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))) (_module.Region.Heap_q (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1421|
 :pattern ( (MapType0Select BoxType boolType (|lambda#76| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Region.Frozen_q d@@7) (= d@@7 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Region.Isolate_q d@@8) (= d@@8 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@8))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Region.Heap_q d@@9) (exists ((|a#25#0#0| T@U) ) (! (= d@@9 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Region.Stack_q d@@10) (exists ((|a#30#0#0| T@U) ) (! (= d@@10 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.Region.Frame_q d@@11) (exists ((|a#35#0#0| T@U) ) (! (= d@@11 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@11))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@1 Tclass._module.Object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Region) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Region)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@2 Tclass._module.Region))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Memory) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Memory)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@3 Tclass._module.Memory))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Memory?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@4 Tclass._module.Memory?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Edge) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Edge)))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( ($IsBox bx@@6 Tclass._module.Edge))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region) ($Is refType |a#26#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:33|
 :skolemid |704|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region) ($Is refType |a#31#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:58|
 :skolemid |713|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region) ($Is refType |a#36#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:84|
 :skolemid |722|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@1 T@U) (|edges#0@@1| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@1 |edges#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Memory)) ($Is SetType |edges#0@@1| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.justHeapExternalEdges this@@1 |edges#0@@1|) |edges#0@@1|) ($Is SetType (_module.Memory.justHeapExternalEdges this@@1 |edges#0@@1|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1009|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@1 |edges#0@@1|))
))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Object)  (and ($Is refType |c#0@@1| Tclass._module.Object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Memory)  (and ($Is refType |c#0@@2| Tclass._module.Memory?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory?))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@7) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@7)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@7))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@8) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@8)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@8))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@9) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@9)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (this@@2 T@U) (|edges#0@@2| T@U) ) (!  (=> (and (or (|_module.Memory.justHeapExternalEdges#canCall| this@@2 |edges#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($IsAlloc refType this@@2 Tclass._module.Memory $Heap)) (and ($Is SetType |edges#0@@2| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@2| (TSet Tclass._module.Edge) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@2 |edges#0@@2|) (TSet Tclass._module.Edge) $Heap))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1010|
 :pattern ( ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@2 |edges#0@@2|) (TSet Tclass._module.Edge) $Heap))
))))
(assert (= (Ctor charType) 10))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@4) (_module.Region.Frozen_q b@@4)) (|_module.Region#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@4 b@@4) (_module.Region.Frozen_q a@@4))
 :pattern ( (|_module.Region#Equal| a@@4 b@@4) (_module.Region.Frozen_q b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@5) (_module.Region.Isolate_q b@@5)) (|_module.Region#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@5 b@@5) (_module.Region.Isolate_q a@@5))
 :pattern ( (|_module.Region#Equal| a@@5 b@@5) (_module.Region.Isolate_q b@@5))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| T@U) ) (! (= (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)) (Lit DatatypeTypeType (|#_module.Edge.Edge| |a#3#0#0| |a#3#1#0| |a#3#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |814|
 :pattern ( (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Heap| |a#24#0#0|)) |##_module.Region.Heap|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |700|
 :pattern ( (|#_module.Region.Heap| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Heap| |a#28#0#0|)) |a#28#0#0|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |708|
 :pattern ( (|#_module.Region.Heap| |a#28#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Stack| |a#29#0#0|)) |##_module.Region.Stack|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |709|
 :pattern ( (|#_module.Region.Stack| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Stack| |a#33#0#0|)) |a#33#0#0|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |717|
 :pattern ( (|#_module.Region.Stack| |a#33#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Frame| |a#34#0#0|)) |##_module.Region.Frame|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |718|
 :pattern ( (|#_module.Region.Frame| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (_module.Region.prev (|#_module.Region.Frame| |a#38#0#0|)) |a#38#0#0|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |726|
 :pattern ( (|#_module.Region.Frame| |a#38#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (< (|Seq#Rank| |a#7#1#0|) (DtRank (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |818|
 :pattern ( (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@3 T@U) (|edges#0@@3| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@3 (Lit SetType |edges#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Memory)) ($Is SetType |edges#0@@3| (TSet Tclass._module.Edge))))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@3|) ($Box DatatypeTypeType |e#1|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#1|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#1|)))) (and (_module.Edge.Edge_q |e#1|) (_module.Edge.Edge_q |e#1|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#1|)) (_module.Object.region (_module.Edge.t |e#1|)))) (_module.Edge.Edge_q |e#1|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1014|
 :pattern ( (_module.Edge.t |e#1|))
 :pattern ( (_module.Edge.f |e#1|))
 :pattern ( (|Set#IsMember| |edges#0@@3| ($Box DatatypeTypeType |e#1|)))
)) (= (_module.Memory.justHeapExternalEdges this@@3 (Lit SetType |edges#0@@3|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@3|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1015|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@3 (Lit SetType |edges#0@@3|)))
))))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (|$IsA#_module.Region| d@@12) (or (or (or (or (_module.Region.Frozen_q d@@12) (_module.Region.Heap_q d@@12)) (_module.Region.Stack_q d@@12)) (_module.Region.Frame_q d@@12)) (_module.Region.Isolate_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$IsA#_module.Region| d@@12))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((bx@@10 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@6)))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Region) Tagclass._module.Region))
(assert (= (TagFamily Tclass._module.Region) tytagFamily$Region))
(assert (= (Tag Tclass._module.Memory) Tagclass._module.Memory))
(assert (= (TagFamily Tclass._module.Memory) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Memory?) Tagclass._module.Memory?))
(assert (= (TagFamily Tclass._module.Memory?) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Edge) Tagclass._module.Edge))
(assert (= (TagFamily Tclass._module.Edge) tytagFamily$Edge))
(assert (= |#_module.Region.Frozen| (Lit DatatypeTypeType |#_module.Region.Frozen|)))
(assert (= |#_module.Region.Isolate| (Lit DatatypeTypeType |#_module.Region.Isolate|)))
(assert (forall ((d@@13 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Edge.Edge_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Edge $h@@10))) ($IsAlloc SeqType (_module.Edge.n d@@13) (TSeq TChar) $h@@10))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($IsAlloc SeqType (_module.Edge.n d@@13) (TSeq TChar) $h@@10))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@14) (_module.Region.Heap_q d@@14)) (_module.Region.Stack_q d@@14)) (_module.Region.Frame_q d@@14)) (_module.Region.Isolate_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
)))
(assert (forall ((d@@15 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Region.Heap_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Region $h@@11))) ($IsAlloc refType (_module.Region.region d@@15) Tclass._module.Object $h@@11))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@15) Tclass._module.Object $h@@11))
)))
(assert (forall ((d@@16 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Region.Stack_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Region $h@@12))) ($IsAlloc refType (_module.Region.region d@@16) Tclass._module.Object $h@@12))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@16) Tclass._module.Object $h@@12))
)))
(assert (forall ((d@@17 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Region.Frame_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Region $h@@13))) ($IsAlloc refType (_module.Region.prev d@@17) Tclass._module.Object $h@@13))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@17) Tclass._module.Object $h@@13))
)))
(assert (forall ((d@@18 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Edge.Edge_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Edge $h@@14))) ($IsAlloc refType (_module.Edge.f d@@18) Tclass._module.Object $h@@14))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsAlloc refType (_module.Edge.f d@@18) Tclass._module.Object $h@@14))
)))
(assert (forall ((d@@19 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.Edge.Edge_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Edge $h@@15))) ($IsAlloc refType (_module.Edge.t d@@19) Tclass._module.Object $h@@15))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType (_module.Edge.t d@@19) Tclass._module.Object $h@@15))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#_module.Region.Heap| (Lit refType |a#27#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Heap| |a#27#0#0|)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |707|
 :pattern ( (|#_module.Region.Heap| (Lit refType |a#27#0#0|)))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (|#_module.Region.Stack| (Lit refType |a#32#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Stack| |a#32#0#0|)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |716|
 :pattern ( (|#_module.Region.Stack| (Lit refType |a#32#0#0|)))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (|#_module.Region.Frame| (Lit refType |a#37#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Frame| |a#37#0#0|)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |725|
 :pattern ( (|#_module.Region.Frame| (Lit refType |a#37#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |rs#0| () T@U)
(declare-fun |edges#0@@4| () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |e#3@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Memory.justHeapExternalEdges)
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
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|Set#Subset| |rs#0| |edges#0@@4|))))
(let ((anon9_correct  (=> (= (_module.Memory.justHeapExternalEdges this@@4 |edges#0@@4|) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge |edges#0@@4|))) (=> (and (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#4|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#4|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#4|)))) (and (_module.Edge.Edge_q |e#4|) (_module.Edge.Edge_q |e#4|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#4|)) (_module.Object.region (_module.Edge.t |e#4|)))) (_module.Edge.Edge_q |e#4|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1018|
 :pattern ( (_module.Edge.t |e#4|))
 :pattern ( (_module.Edge.f |e#4|))
 :pattern ( (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#4|)))
)) ($Is SetType (_module.Memory.justHeapExternalEdges this@@4 |edges#0@@4|) (TSet Tclass._module.Edge))) (and (= (_module.Memory.justHeapExternalEdges this@@4 |edges#0@@4|) |rs#0|) (= (ControlFlow 0 4) 3))) GeneratedUnifiedExit_correct))))
(let ((anon15_Else_correct  (=> (and (not (and (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#3@0|)) (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#3@0|)) (_module.Object.region (_module.Edge.t |e#3@0|)))) (_module.Region.Heap_q (_module.Object.region (_module.Edge.t |e#3@0|)))))) (= (ControlFlow 0 7) 4)) anon9_correct)))
(let ((anon15_Then_correct  (=> (and (and (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#3@0|)) (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#3@0|)) (_module.Object.region (_module.Edge.t |e#3@0|)))) (_module.Region.Heap_q (_module.Object.region (_module.Edge.t |e#3@0|))))) (= (ControlFlow 0 6) 4)) anon9_correct)))
(let ((anon14_Else_correct  (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#3@0|)) (_module.Object.region (_module.Edge.t |e#3@0|))) (and (=> (= (ControlFlow 0 11) 6) anon15_Then_correct) (=> (= (ControlFlow 0 11) 7) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#3@0|)) (_module.Object.region (_module.Edge.t |e#3@0|)))) (_module.Edge.Edge_q |e#3@0|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= (_module.Edge.t |e#3@0|) null)) (not true))) (=> (or (not (= (_module.Edge.t |e#3@0|) null)) (not true)) (and (=> (= (ControlFlow 0 9) 6) anon15_Then_correct) (=> (= (ControlFlow 0 9) 7) anon15_Else_correct)))))))
(let ((anon13_Then_correct  (=> (and (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#3@0|)) (_module.Edge.Edge_q |e#3@0|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (not (= (_module.Edge.f |e#3@0|) null)) (not true))) (=> (or (not (= (_module.Edge.f |e#3@0|) null)) (not true)) (=> (_module.Edge.Edge_q |e#3@0|) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= (_module.Edge.t |e#3@0|) null)) (not true))) (=> (or (not (= (_module.Edge.t |e#3@0|) null)) (not true)) (and (=> (= (ControlFlow 0 12) 9) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (not (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#3@0|))) (and (=> (= (ControlFlow 0 8) 6) anon15_Then_correct) (=> (= (ControlFlow 0 8) 7) anon15_Else_correct)))))
(let ((anon12_Then_correct  (=> (and ($Is DatatypeTypeType |e#3@0| Tclass._module.Edge) ($IsAlloc DatatypeTypeType |e#3@0| Tclass._module.Edge $Heap@@0)) (and (=> (= (ControlFlow 0 15) 12) anon13_Then_correct) (=> (= (ControlFlow 0 15) 8) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |e#3@0| Tclass._module.Edge) ($IsAlloc DatatypeTypeType |e#3@0| Tclass._module.Edge $Heap@@0))) (= (ControlFlow 0 5) 4)) anon9_correct)))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon11_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Then_correct)) (=> (= (ControlFlow 0 16) 5) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Memory) ($IsAlloc refType this@@4 Tclass._module.Memory $Heap@@0))) ($Is SetType |edges#0@@4| (TSet Tclass._module.Edge))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
