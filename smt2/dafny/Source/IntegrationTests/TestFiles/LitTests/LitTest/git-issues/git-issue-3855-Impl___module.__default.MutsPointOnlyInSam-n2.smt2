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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Region () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun |##_module.Region.Frozen| () T@U)
(declare-fun |##_module.Region.Heap| () T@U)
(declare-fun |##_module.Region.Stack| () T@U)
(declare-fun |##_module.Region.Frame| () T@U)
(declare-fun |##_module.Region.Isolate| () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
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
(declare-fun _module.__default.VeniceReferenceOK (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun |_module.__default.VeniceReferenceOK#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun _module.Region.Frozen_q (T@U) Bool)
(declare-fun _module.Object.region (T@U) T@U)
(declare-fun _module.Region.Heap_q (T@U) Bool)
(declare-fun _module.Region.Isolate_q (T@U) Bool)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Region () T@U)
(declare-fun |_module.Region#Equal| (T@U T@U) Bool)
(declare-fun _module.Region.Stack_q (T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Object Tagclass._module.Region Tagclass._module.Object? |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| tytagFamily$Object tytagFamily$Region)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| (Lit refType |f#0|) (Lit refType |t#0|)) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0| Tclass._module.Object) ($Is refType |t#0| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK (Lit refType |f#0|) (Lit refType |t#0|)) (ite (_module.Region.Frozen_q (_module.Object.region (Lit refType |t#0|))) true (ite (_module.Region.Heap_q (_module.Object.region (Lit refType |f#0|)))  (or (_module.Region.Isolate_q (_module.Object.region (Lit refType |t#0|))) (and (_module.Region.Heap_q (_module.Object.region (Lit refType |t#0|))) (= (_module.Region.region (_module.Object.region (Lit refType |t#0|))) (_module.Region.region (_module.Object.region (Lit refType |f#0|)))))) (ite (_module.Region.Isolate_q (_module.Object.region (Lit refType |f#0|)))  (or (_module.Region.Isolate_q (_module.Object.region (Lit refType |t#0|))) (and (_module.Region.Heap_q (_module.Object.region (Lit refType |t#0|))) (= (_module.Region.region (_module.Object.region (Lit refType |t#0|))) (Lit refType |f#0|)))) false)))))
 :qid |gitissue3855dfy.38:29|
 :weight 3
 :skolemid |594|
 :pattern ( (_module.__default.VeniceReferenceOK (Lit refType |f#0|) (Lit refType |t#0|)))
))))
(assert (= (Ctor DatatypeTypeType) 4))
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
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert (= (DatatypeCtorId |#_module.Region.Frozen|) |##_module.Region.Frozen|))
(assert (= (DatatypeCtorId |#_module.Region.Isolate|) |##_module.Region.Isolate|))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Object?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o@@1 Tclass._module.Object?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert (forall (($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@1))
)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Object? $h@@3))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.Region#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@2 b@@2))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Object)  (and ($Is refType |c#0@@0| Tclass._module.Object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object?))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@4) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@4)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@4))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@5) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@5)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@5))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@6) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@6)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@6))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@3) (_module.Region.Frozen_q b@@3)) (|_module.Region#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@3 b@@3) (_module.Region.Frozen_q a@@3))
 :pattern ( (|_module.Region#Equal| a@@3 b@@3) (_module.Region.Frozen_q b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@4) (_module.Region.Isolate_q b@@4)) (|_module.Region#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@4 b@@4) (_module.Region.Isolate_q a@@4))
 :pattern ( (|_module.Region#Equal| a@@4 b@@4) (_module.Region.Isolate_q b@@4))
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
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
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
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Region) Tagclass._module.Region))
(assert (= (TagFamily Tclass._module.Region) tytagFamily$Region))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0@@0| T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| |f#0@@0| |t#0@@0|) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0@@0| Tclass._module.Object) ($Is refType |t#0@@0| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@0|) (ite (_module.Region.Frozen_q (_module.Object.region |t#0@@0|)) true (ite (_module.Region.Heap_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@0|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@0|)) (= (_module.Region.region (_module.Object.region |t#0@@0|)) (_module.Region.region (_module.Object.region |f#0@@0|))))) (ite (_module.Region.Isolate_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@0|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@0|)) (= (_module.Region.region (_module.Object.region |t#0@@0|)) |f#0@@0|))) false)))))
 :qid |gitissue3855dfy.38:29|
 :skolemid |593|
 :pattern ( (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@0|))
))))
(assert (forall ((d@@10 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Region.Heap_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Region $h@@7))) ($IsAlloc refType (_module.Region.region d@@10) Tclass._module.Object $h@@7))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@10) Tclass._module.Object $h@@7))
)))
(assert (forall ((d@@11 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Region.Stack_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Region $h@@8))) ($IsAlloc refType (_module.Region.region d@@11) Tclass._module.Object $h@@8))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@11) Tclass._module.Object $h@@8))
)))
(assert (forall ((d@@12 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Region.Frame_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Region $h@@9))) ($IsAlloc refType (_module.Region.prev d@@12) Tclass._module.Object $h@@9))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@12) Tclass._module.Object $h@@9))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |f#0@@1| () T@U)
(declare-fun |t#0@@1| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.MutsPointOnlyInSameRegion)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (|_module.Region#Equal| (_module.Object.region |f#0@@1|) (_module.Object.region |t#0@@1|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |f#0@@1| Tclass._module.Object) ($IsAlloc refType |f#0@@1| Tclass._module.Object $Heap))) (=> (and (and (and (and ($Is refType |t#0@@1| Tclass._module.Object) ($IsAlloc refType |t#0@@1| Tclass._module.Object $Heap)) (= 4 $FunctionContextHeight)) (and (_module.Region.Heap_q (_module.Object.region |f#0@@1|)) (_module.Region.Heap_q (_module.Object.region |t#0@@1|)))) (and (and (|_module.__default.VeniceReferenceOK#canCall| |f#0@@1| |t#0@@1|) (and (_module.__default.VeniceReferenceOK |f#0@@1| |t#0@@1|) (ite (_module.Region.Frozen_q (_module.Object.region |t#0@@1|)) true (ite (_module.Region.Heap_q (_module.Object.region |f#0@@1|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@1|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@1|)) (= (_module.Region.region (_module.Object.region |t#0@@1|)) (_module.Region.region (_module.Object.region |f#0@@1|))))) (ite (_module.Region.Isolate_q (_module.Object.region |f#0@@1|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@1|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@1|)) (= (_module.Region.region (_module.Object.region |t#0@@1|)) |f#0@@1|))) false))))) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
