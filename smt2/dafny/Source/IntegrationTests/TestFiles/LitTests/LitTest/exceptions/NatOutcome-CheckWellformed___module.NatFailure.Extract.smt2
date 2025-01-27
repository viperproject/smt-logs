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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Option () T@U)
(declare-fun Tagclass._module.NatOutcome () T@U)
(declare-fun |##_module.Option.None| () T@U)
(declare-fun |##_module.Option.Some| () T@U)
(declare-fun Tagclass._module.NatOutcome? () T@U)
(declare-fun Tagclass._module.NatFailure? () T@U)
(declare-fun Tagclass._module.NatFailure () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$NatOutcome () T@U)
(declare-fun tytagFamily$NatFailure () T@U)
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
(declare-fun _module.NatFailure.Extract (T@U) Int)
(declare-fun |_module.NatFailure.Extract#canCall| (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.NatFailure () T@U)
(declare-fun _module.NatFailure.IsFailure (T@U) Bool)
(declare-fun |_module.__default.Unreachable#canCall| (T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.__default.Unreachable (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun implements$_module.NatOutcome (T@U) Bool)
(declare-fun Tclass._module.NatFailure? () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Option.None| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.NatOutcome? () T@U)
(declare-fun Tclass._module.NatOutcome () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Option (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Option.None_q (T@U) Bool)
(declare-fun _module.Option.Some_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Option.Some| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Option.get (T@U) T@U)
(declare-fun Tclass._module.Option_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.NatFailure.IsFailure#canCall| (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._module.Option Tagclass._module.NatOutcome |##_module.Option.None| |##_module.Option.Some| Tagclass._module.NatOutcome? Tagclass._module.NatFailure? Tagclass._module.NatFailure tytagFamily$nat tytagFamily$Option tytagFamily$NatOutcome tytagFamily$NatFailure)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.NatFailure.Extract#canCall| this) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.NatFailure)) (not (_module.NatFailure.IsFailure this))))) (and (|_module.__default.Unreachable#canCall| Tclass._System.nat) (= (_module.NatFailure.Extract this) (LitInt (U_2_int ($Unbox intType (_module.__default.Unreachable Tclass._System.nat)))))))
 :qid |NatOutcomedfy.48:14|
 :skolemid |587|
 :pattern ( (_module.NatFailure.Extract this))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Unreachable$R T@U) ) (!  (=> (and (or (|_module.__default.Unreachable#canCall| _module._default.Unreachable$R) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U false))))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.Unreachable _module._default.Unreachable$R) _module._default.Unreachable$R $Heap))
 :qid |NatOutcomedfy.7:10|
 :skolemid |480|
 :pattern ( ($IsAllocBox (_module.__default.Unreachable _module._default.Unreachable$R) _module._default.Unreachable$R $Heap))
))))
(assert (implements$_module.NatOutcome Tclass._module.NatFailure?))
(assert (= (DatatypeCtorId |#_module.Option.None|) |##_module.Option.None|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.NatFailure?)  (or (= $o null) (= (dtype $o) Tclass._module.NatFailure?)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($Is refType $o Tclass._module.NatFailure?))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.NatFailure? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.NatOutcome? $h@@0))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsAllocBox bx Tclass._module.NatFailure? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.NatOutcome $h@@1) ($IsAlloc refType |c#0| Tclass._module.NatOutcome? $h@@1))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NatOutcome $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NatOutcome? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.NatFailure $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.NatFailure? $h@@2))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NatFailure $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NatFailure? $h@@2))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.Option$T T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T) $h@@3))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T) $h@@3))
)))
(assert (forall ((_module.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@0)))
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
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.NatOutcome? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.NatOutcome? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.NatFailure? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.NatFailure? $h@@5))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.NatFailure.Extract#canCall| (Lit refType this@@0)) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.NatFailure)) (not (U_2_bool (Lit boolType (bool_2_U (_module.NatFailure.IsFailure (Lit refType this@@0))))))))) (and (|_module.__default.Unreachable#canCall| Tclass._System.nat) (= (_module.NatFailure.Extract (Lit refType this@@0)) (LitInt (U_2_int ($Unbox intType (_module.__default.Unreachable Tclass._System.nat)))))))
 :qid |NatOutcomedfy.48:14|
 :weight 3
 :skolemid |588|
 :pattern ( (_module.NatFailure.Extract (Lit refType this@@0)))
))))
(assert (forall ((d T@U) ) (! (= (_module.Option.None_q d) (= (DatatypeCtorId d) |##_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (_module.Option.None_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Option.Some_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.Option.Some_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Option.None_q d@@1) (= d@@1 |#_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.Option.None_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Option.Some_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.Option.Some| |a#5#0#0|))
 :qid |NatOutcomedfy.5:34|
 :skolemid |502|
)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Option.Some_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Option _module.Option$T@@1)) Tagclass._module.Option) (= (TagFamily (Tclass._module.Option _module.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.Option _module.Option$T@@1))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.NatOutcome) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.NatOutcome)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@1 Tclass._module.NatOutcome))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.NatOutcome?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.NatOutcome?)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@2 Tclass._module.NatOutcome?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.NatFailure?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.NatFailure?)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@3 Tclass._module.NatFailure?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.NatFailure) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.NatFailure)))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsBox bx@@4 Tclass._module.NatFailure))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.NatOutcome)  (and ($Is refType |c#0@@1| Tclass._module.NatOutcome?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.NatOutcome))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.NatOutcome?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.NatFailure)  (and ($Is refType |c#0@@2| Tclass._module.NatFailure?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NatFailure))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NatFailure?))
)))
(assert (forall ((_module.Option$T@@2 T@U) (|a#6#0#0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#6#0#0|) (Tclass._module.Option _module.Option$T@@2) $h@@6) ($IsAllocBox |a#6#0#0| _module.Option$T@@2 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#6#0#0|) (Tclass._module.Option _module.Option$T@@2) $h@@6))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.NatFailure? $heap) ($IsAlloc refType $o@@2 Tclass._module.NatOutcome? $heap))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.NatFailure? $heap))
)))
(assert (forall ((_module.Option$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$T@@3)) (or (_module.Option.None_q d@@3) (_module.Option.Some_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (_module.Option.Some_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$T@@3)))
 :pattern ( (_module.Option.None_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$T@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Unreachable$R@@0 T@U) ) (!  (=> (or (|_module.__default.Unreachable#canCall| _module._default.Unreachable$R@@0) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U false))))) (= (_module.__default.Unreachable _module._default.Unreachable$R@@0) (let ((|o#0| (Lit DatatypeTypeType |#_module.Option.None|)))
(Lit BoxType (_module.Option.get |o#0|)))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_module.__default.Unreachable _module._default.Unreachable$R@@0))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Unreachable$R@@1 T@U) ) (!  (=> (or (|_module.__default.Unreachable#canCall| _module._default.Unreachable$R@@1) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U false))))) (= (_module.__default.Unreachable _module._default.Unreachable$R@@1) (let ((|o#1| (Lit DatatypeTypeType |#_module.Option.None|)))
(Lit BoxType (_module.Option.get |o#1|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.Unreachable _module._default.Unreachable$R@@1))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((_module.Option$T@@4 T@U) ) (! (= (Tclass._module.Option_0 (Tclass._module.Option _module.Option$T@@4)) _module.Option$T@@4)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Option _module.Option$T@@4))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Option.Some| |a#4#0#0|)) |##_module.Option.Some|)
 :qid |NatOutcomedfy.5:34|
 :skolemid |500|
 :pattern ( (|#_module.Option.Some| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Option.get (|#_module.Option.Some| |a#8#0#0|)) |a#8#0#0|)
 :qid |NatOutcomedfy.5:34|
 :skolemid |508|
 :pattern ( (|#_module.Option.Some| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Option$T@@5 T@U) (|a#6#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Option.Some| |a#6#0#0@@0|) (Tclass._module.Option _module.Option$T@@5)) ($IsBox |a#6#0#0@@0| _module.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is DatatypeTypeType (|#_module.Option.Some| |a#6#0#0@@0|) (Tclass._module.Option _module.Option$T@@5)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.Option.Some| |a#9#0#0|)))
 :qid |NatOutcomedfy.5:34|
 :skolemid |509|
 :pattern ( (|#_module.Option.Some| |a#9#0#0|))
)))
(assert (forall ((d@@4 T@U) (_module.Option$T@@6 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Option.Some_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Option _module.Option$T@@6) $h@@7))) ($IsAllocBox (_module.Option.get d@@4) _module.Option$T@@6 $h@@7))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsAllocBox (_module.Option.get d@@4) _module.Option$T@@6 $h@@7))
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
 :skolemid |603|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.NatFailure.IsFailure#canCall| this@@1) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.NatFailure)))) (= (_module.NatFailure.IsFailure this@@1) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |NatOutcomedfy.42:15|
 :skolemid |573|
 :pattern ( (_module.NatFailure.IsFailure this@@1))
))))
(assert (forall ((_module.Option$T@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Option _module.Option$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Option _module.Option$T@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Option _module.Option$T@@7)))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.NatFailure?) ($Is refType $o@@4 Tclass._module.NatOutcome?))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($Is refType $o@@4 Tclass._module.NatFailure?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.NatFailure?) ($IsBox bx@@6 Tclass._module.NatOutcome?))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@6 Tclass._module.NatFailure?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Unreachable$R@@2 T@U) ) (!  (=> (or (|_module.__default.Unreachable#canCall| _module._default.Unreachable$R@@2) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U false))))) ($IsBox (_module.__default.Unreachable _module._default.Unreachable$R@@2) _module._default.Unreachable$R@@2))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (_module.__default.Unreachable _module._default.Unreachable$R@@2))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.NatOutcome) Tagclass._module.NatOutcome))
(assert (= (TagFamily Tclass._module.NatOutcome) tytagFamily$NatOutcome))
(assert (= (Tag Tclass._module.NatOutcome?) Tagclass._module.NatOutcome?))
(assert (= (TagFamily Tclass._module.NatOutcome?) tytagFamily$NatOutcome))
(assert (= (Tag Tclass._module.NatFailure?) Tagclass._module.NatFailure?))
(assert (= (TagFamily Tclass._module.NatFailure?) tytagFamily$NatFailure))
(assert (= (Tag Tclass._module.NatFailure) Tagclass._module.NatFailure))
(assert (= (TagFamily Tclass._module.NatFailure) tytagFamily$NatFailure))
(assert (= |#_module.Option.None| (Lit DatatypeTypeType |#_module.Option.None|)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.NatOutcome?)  (or (= $o@@5 null) (implements$_module.NatOutcome (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType $o@@5 Tclass._module.NatOutcome?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Option.Some| (Lit BoxType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Option.Some| |a#7#0#0|)))
 :qid |NatOutcomedfy.5:34|
 :skolemid |507|
 :pattern ( (|#_module.Option.Some| (Lit BoxType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.NatFailure.IsFailure#canCall| (Lit refType this@@2)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.NatFailure)))) (= (_module.NatFailure.IsFailure (Lit refType this@@2)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |NatOutcomedfy.42:15|
 :weight 3
 :skolemid |574|
 :pattern ( (_module.NatFailure.IsFailure (Lit refType this@@2)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|_module.NatFailure.Extract#canCall| this@@3) (and (< 2 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.NatFailure)) (not (_module.NatFailure.IsFailure this@@3))))) (<= (LitInt 0) (_module.NatFailure.Extract this@@3)))
 :qid |NatOutcomedfy.48:14|
 :skolemid |585|
 :pattern ( (_module.NatFailure.Extract this@@3))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.NatFailure.Extract)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) ($IsAllocBox ($Box refType this@@4) Tclass._module.NatFailure? $Heap@@0)) (and (|_module.NatFailure.IsFailure#canCall| this@@4) (not (_module.NatFailure.IsFailure this@@4)))) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.NatFailure) ($IsAlloc refType this@@4 Tclass._module.NatFailure $Heap@@0))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
