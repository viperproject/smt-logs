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
(declare-fun TagSet () T@U)
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
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun tytagFamily$Memory () T@U)
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
(declare-fun _module.Object.region (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Region () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun Tclass._module.Memory? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Memory () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Region.Frozen_q (T@U) Bool)
(declare-fun _module.Region.Heap_q (T@U) Bool)
(declare-fun _module.Region.Stack_q (T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.Isolate_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
(declare-fun _module.Memory.justTheIsos (T@U T@U T@U) T@U)
(declare-fun |_module.Memory.justTheIsos#canCall| (T@U T@U T@U) Bool)
(declare-fun |lambda#38| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#34| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._module.Object Tagclass._module.Region Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Object? |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| tytagFamily$Object tytagFamily$Region tytagFamily$Memory)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.Object?)) ($Is DatatypeTypeType (_module.Object.region $o) Tclass._module.Region))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Object.region $o))
))))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Region.Frozen_q d) (= (DatatypeCtorId d) |##_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Region.Frozen_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Region.Heap_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Region.Heap|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.Region.Heap_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Region.Stack_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Region.Stack|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Region.Stack_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Region.Frame_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Region.Frame|))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Region.Frame_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Region.Isolate_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Region.Isolate_q d@@3))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Region.Frozen_q d@@4) (= d@@4 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Region.Isolate_q d@@5) (= d@@5 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@5))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Region.Heap_q d@@6) (exists ((|a#25#0#0| T@U) ) (! (= d@@6 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Region.Stack_q d@@7) (exists ((|a#30#0#0| T@U) ) (! (= d@@7 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Region.Frame_q d@@8) (exists ((|a#35#0#0| T@U) ) (! (= d@@8 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|os#0| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap this |os#0|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (or (not (= this null)) (not true))) ($IsAlloc refType this Tclass._module.Memory $Heap)) (and ($Is SetType |os#0| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0| (TSet Tclass._module.Object) $Heap))))) ($IsAlloc SetType (_module.Memory.justTheIsos $Heap this |os#0|) (TSet Tclass._module.Object) $Heap))
 :qid |gitissue3855dfy.235:12|
 :skolemid |891|
 :pattern ( ($IsAlloc SetType (_module.Memory.justTheIsos $Heap this |os#0|) (TSet Tclass._module.Object) $Heap))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#38| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0|) (_module.Region.Isolate_q (_module.Object.region ($Unbox refType |$y#0|))))))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1414|
 :pattern ( (MapType0Select BoxType boolType (|lambda#38| |l#0| |l#1|) |$y#0|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) (|os#0@@0| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@0 this@@0 |os#0@@0|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Memory) ($IsAlloc refType this@@0 Tclass._module.Memory $Heap@@0)))) ($Is SetType |os#0@@0| (TSet Tclass._module.Object))))) (= (_module.Memory.justTheIsos $Heap@@0 this@@0 |os#0@@0|) (|Set#FromBoogieMap| (|lambda#38| Tclass._module.Object |os#0@@0|))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |893|
 :pattern ( (_module.Memory.justTheIsos $Heap@@0 this@@0 |os#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@6) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@6)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@6))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@7) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@7)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@7))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@8) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@8)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@8))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) (|os#0@@1| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@1 this@@1 |os#0@@1|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Memory) ($IsAlloc refType this@@1 Tclass._module.Memory $Heap@@1)))) (and ($Is SetType |os#0@@1| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@1| (TSet Tclass._module.Object) $Heap@@1))))) (and (and (and (forall ((|r#0| T@U) ) (!  (=> (and ($Is refType |r#0| Tclass._module.Object) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) ($Box refType |r#0|))) (_module.Region.Isolate_q (_module.Object.region |r#0|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |888|
 :pattern ( (_module.Object.region |r#0|))
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) ($Box refType |r#0|)))
)) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| |os#0@@1| ($Box refType |o#0|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#0|)) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) ($Box refType |o#0|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |889|
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) ($Box refType |o#0|)))
 :pattern ( (_module.Object.region |o#0|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0|)))
))) (=> (|Set#Equal| |os#0@@1| |Set#Empty|) (|Set#Equal| (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) |Set#Empty|))) ($Is SetType (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|) (TSet Tclass._module.Object))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |890|
 :pattern ( (_module.Memory.justTheIsos $Heap@@1 this@@1 |os#0@@1|))
))))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@3)))
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
(assert (= |#_module.Region.Frozen| (Lit DatatypeTypeType |#_module.Region.Frozen|)))
(assert (= |#_module.Region.Isolate| (Lit DatatypeTypeType |#_module.Region.Isolate|)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@9) (_module.Region.Heap_q d@@9)) (_module.Region.Stack_q d@@9)) (_module.Region.Frame_q d@@9)) (_module.Region.Isolate_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.Region))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@10 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Region.Heap_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Region $h@@9))) ($IsAlloc refType (_module.Region.region d@@10) Tclass._module.Object $h@@9))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@10) Tclass._module.Object $h@@9))
)))
(assert (forall ((d@@11 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Region.Stack_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Region $h@@10))) ($IsAlloc refType (_module.Region.region d@@11) Tclass._module.Object $h@@10))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@11) Tclass._module.Object $h@@10))
)))
(assert (forall ((d@@12 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Region.Frame_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Region $h@@11))) ($IsAlloc refType (_module.Region.prev d@@12) Tclass._module.Object $h@@11))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@12) Tclass._module.Object $h@@11))
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
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#34| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@5) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@5))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1412|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#34| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@5 $f))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |os#0@@2| () T@U)
(declare-fun |rs#0| () T@U)
(declare-fun |o#3@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |r#2@0| () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |o#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Memory.justTheIsos)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon13_correct true))
(let ((anon25_Else_correct  (=> (and (=> (|Set#Equal| |os#0@@2| |Set#Empty|) (|Set#Equal| |rs#0| |Set#Empty|)) (= (ControlFlow 0 15) 13)) anon13_correct)))
(let ((anon25_Then_correct  (=> (|Set#Equal| |os#0@@2| |Set#Empty|) (=> (and (|Set#Equal| |rs#0| |Set#Empty|) (= (ControlFlow 0 14) 13)) anon13_correct))))
(let ((anon10_correct  (=> (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| |os#0@@2| ($Box refType |o#2|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#2|)) (|Set#IsMember| |rs#0| ($Box refType |o#2|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |897|
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |o#2|)))
 :pattern ( (_module.Object.region |o#2|))
 :pattern ( (|Set#IsMember| |os#0@@2| ($Box refType |o#2|)))
)) (and (=> (= (ControlFlow 0 16) 14) anon25_Then_correct) (=> (= (ControlFlow 0 16) 15) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (=> (_module.Region.Isolate_q (_module.Object.region |o#3@0|)) (|Set#IsMember| |rs#0| ($Box refType |o#3@0|))) (= (ControlFlow 0 20) 16)) anon10_correct)))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |o#3@0| null)) (not true))) (=> (or (not (= |o#3@0| null)) (not true)) (=> (_module.Region.Isolate_q (_module.Object.region |o#3@0|)) (=> (and (|Set#IsMember| |rs#0| ($Box refType |o#3@0|)) (= (ControlFlow 0 18) 16)) anon10_correct))))))
(let ((anon23_Then_correct  (=> (|Set#IsMember| |os#0@@2| ($Box refType |o#3@0|)) (and (=> (= (ControlFlow 0 21) 18) anon24_Then_correct) (=> (= (ControlFlow 0 21) 20) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (=> (|Set#IsMember| |os#0@@2| ($Box refType |o#3@0|)) (=> (_module.Region.Isolate_q (_module.Object.region |o#3@0|)) (|Set#IsMember| |rs#0| ($Box refType |o#3@0|)))) (= (ControlFlow 0 17) 16)) anon10_correct)))
(let ((anon5_correct  (=> (forall ((|r#1| T@U) ) (!  (=> (and ($Is refType |r#1| Tclass._module.Object) (|Set#IsMember| |rs#0| ($Box refType |r#1|))) (_module.Region.Isolate_q (_module.Object.region |r#1|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |896|
 :pattern ( (_module.Object.region |r#1|))
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |r#1|)))
)) (=> (and ($Is refType |o#3@0| Tclass._module.Object) ($IsAlloc refType |o#3@0| Tclass._module.Object $Heap@@2)) (and (=> (= (ControlFlow 0 22) 21) anon23_Then_correct) (=> (= (ControlFlow 0 22) 17) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (=> (|Set#IsMember| |rs#0| ($Box refType |r#2@0|)) (_module.Region.Isolate_q (_module.Object.region |r#2@0|))) (= (ControlFlow 0 25) 22)) anon5_correct)))
(let ((anon22_Then_correct  (=> (|Set#IsMember| |rs#0| ($Box refType |r#2@0|)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= |r#2@0| null)) (not true))) (=> (or (not (= |r#2@0| null)) (not true)) (=> (and (_module.Region.Isolate_q (_module.Object.region |r#2@0|)) (= (ControlFlow 0 23) 22)) anon5_correct))))))
(let ((anon21_Then_correct  (=> (and (and ($Is SetType (_module.Memory.justTheIsos $Heap@@2 this@@2 |os#0@@2|) (TSet Tclass._module.Object)) ($Is SetType |rs#0| (TSet Tclass._module.Object))) (and ($Is refType |r#2@0| Tclass._module.Object) ($IsAlloc refType |r#2@0| Tclass._module.Object $Heap@@2))) (and (=> (= (ControlFlow 0 26) 23) anon22_Then_correct) (=> (= (ControlFlow 0 26) 25) anon22_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((|r#1@@0| T@U) ) (!  (=> (and ($Is refType |r#1@@0| Tclass._module.Object) (|Set#IsMember| |rs#0| ($Box refType |r#1@@0|))) (_module.Region.Isolate_q (_module.Object.region |r#1@@0|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |894|
 :pattern ( (_module.Object.region |r#1@@0|))
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |r#1@@0|)))
))) (=> (forall ((|r#1@@1| T@U) ) (!  (=> (and ($Is refType |r#1@@1| Tclass._module.Object) (|Set#IsMember| |rs#0| ($Box refType |r#1@@1|))) (_module.Region.Isolate_q (_module.Object.region |r#1@@1|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |894|
 :pattern ( (_module.Object.region |r#1@@1|))
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |r#1@@1|)))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| |os#0@@2| ($Box refType |o#2@@0|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#2@@0|)) (|Set#IsMember| |rs#0| ($Box refType |o#2@@0|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |895|
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |o#2@@0|)))
 :pattern ( (_module.Object.region |o#2@@0|))
 :pattern ( (|Set#IsMember| |os#0@@2| ($Box refType |o#2@@0|)))
))) (=> (forall ((|o#2@@1| T@U) ) (!  (=> (and ($Is refType |o#2@@1| Tclass._module.Object) (|Set#IsMember| |os#0@@2| ($Box refType |o#2@@1|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#2@@1|)) (|Set#IsMember| |rs#0| ($Box refType |o#2@@1|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |895|
 :pattern ( (|Set#IsMember| |rs#0| ($Box refType |o#2@@1|)))
 :pattern ( (_module.Object.region |o#2@@1|))
 :pattern ( (|Set#IsMember| |os#0@@2| ($Box refType |o#2@@1|)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|Set#Equal| |os#0@@2| |Set#Empty|) (|Set#Equal| |rs#0| |Set#Empty|)))))))))
(let ((anon19_correct  (=> (and (and (= (_module.Memory.justTheIsos $Heap@@2 this@@2 |os#0@@2|) (|Set#FromBoogieMap| (|lambda#38| Tclass._module.Object |os#0@@2|))) ($Is SetType (_module.Memory.justTheIsos $Heap@@2 this@@2 |os#0@@2|) (TSet Tclass._module.Object))) (and (= (_module.Memory.justTheIsos $Heap@@2 this@@2 |os#0@@2|) |rs#0|) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct)))
(let ((anon28_Else_correct  (=> (and (not (and (|Set#IsMember| |os#0@@2| ($Box refType |o#4@0|)) (_module.Region.Isolate_q (_module.Object.region |o#4@0|)))) (= (ControlFlow 0 8) 5)) anon19_correct)))
(let ((anon28_Then_correct  (=> (and (and (|Set#IsMember| |os#0@@2| ($Box refType |o#4@0|)) (_module.Region.Isolate_q (_module.Object.region |o#4@0|))) (= (ControlFlow 0 7) 5)) anon19_correct)))
(let ((anon27_Else_correct  (=> (not (|Set#IsMember| |os#0@@2| ($Box refType |o#4@0|))) (and (=> (= (ControlFlow 0 11) 7) anon28_Then_correct) (=> (= (ControlFlow 0 11) 8) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (|Set#IsMember| |os#0@@2| ($Box refType |o#4@0|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= |o#4@0| null)) (not true))) (=> (or (not (= |o#4@0| null)) (not true)) (and (=> (= (ControlFlow 0 9) 7) anon28_Then_correct) (=> (= (ControlFlow 0 9) 8) anon28_Else_correct)))))))
(let ((anon26_Then_correct  (=> (and ($Is refType |o#4@0| Tclass._module.Object) ($IsAlloc refType |o#4@0| Tclass._module.Object $Heap@@2)) (and (=> (= (ControlFlow 0 12) 9) anon27_Then_correct) (=> (= (ControlFlow 0 12) 11) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and ($Is refType |o#4@0| Tclass._module.Object) ($IsAlloc refType |o#4@0| Tclass._module.Object $Heap@@2))) (= (ControlFlow 0 6) 5)) anon19_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#34| null $Heap@@2 alloc |os#0@@2|)) (and (and (=> (= (ControlFlow 0 27) 26) anon21_Then_correct) (=> (= (ControlFlow 0 27) 12) anon26_Then_correct)) (=> (= (ControlFlow 0 27) 6) anon26_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Memory) ($IsAlloc refType this@@2 Tclass._module.Memory $Heap@@2))) ($Is SetType |os#0@@2| (TSet Tclass._module.Object))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 28) 27))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
