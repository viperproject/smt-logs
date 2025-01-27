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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.XX () T@U)
(declare-fun Tagclass._module.XX? () T@U)
(declare-fun Tagclass._module.XA? () T@U)
(declare-fun Tagclass._module.XB? () T@U)
(declare-fun Tagclass._module.XC? () T@U)
(declare-fun Tagclass._module.XD? () T@U)
(declare-fun Tagclass._module.XE? () T@U)
(declare-fun Tagclass._module.XA () T@U)
(declare-fun Tagclass._module.XB () T@U)
(declare-fun Tagclass._module.XC () T@U)
(declare-fun Tagclass._module.XD () T@U)
(declare-fun Tagclass._module.XE () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$XX () T@U)
(declare-fun tytagFamily$XA () T@U)
(declare-fun tytagFamily$XB () T@U)
(declare-fun tytagFamily$XC () T@U)
(declare-fun tytagFamily$XD () T@U)
(declare-fun tytagFamily$XE () T@U)
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
(declare-fun implements$_module.XD (T@U) Bool)
(declare-fun Tclass._module.XX? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.XA () T@U)
(declare-fun Tclass._module.XA? () T@U)
(declare-fun Tclass._module.XB () T@U)
(declare-fun Tclass._module.XB? () T@U)
(declare-fun Tclass._module.XC () T@U)
(declare-fun Tclass._module.XC? () T@U)
(declare-fun Tclass._module.XD () T@U)
(declare-fun Tclass._module.XD? () T@U)
(declare-fun Tclass._module.XE () T@U)
(declare-fun Tclass._module.XE? () T@U)
(declare-fun Tclass._module.XX () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.XA (T@U) Bool)
(declare-fun implements$_module.XB (T@U) Bool)
(declare-fun implements$_module.XC (T@U) Bool)
(declare-fun implements$_module.XE (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.XX Tagclass._module.XX? Tagclass._module.XA? Tagclass._module.XB? Tagclass._module.XC? Tagclass._module.XD? Tagclass._module.XE? Tagclass._module.XA Tagclass._module.XB Tagclass._module.XC Tagclass._module.XD Tagclass._module.XE tytagFamily$object tytagFamily$XX tytagFamily$XA tytagFamily$XB tytagFamily$XC tytagFamily$XD tytagFamily$XE)
)
(assert (implements$_module.XD Tclass._module.XX?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.XX?)  (or (= $o null) (= (dtype $o) Tclass._module.XX?)))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($Is refType $o Tclass._module.XX?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.XA $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.XA? $h@@0))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.XA $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.XA? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.XB $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.XB? $h@@1))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.XB $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.XB? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.XC $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.XC? $h@@2))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.XC $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.XC? $h@@2))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.XD $h@@3) ($IsAlloc refType |c#0@@3| Tclass._module.XD? $h@@3))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.XD $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.XD? $h@@3))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.XE $h@@4) ($IsAlloc refType |c#0@@4| Tclass._module.XE? $h@@4))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.XE $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.XE? $h@@4))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.XX $h@@5) ($IsAlloc refType |c#0@@5| Tclass._module.XX? $h@@5))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.XX $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.XX? $h@@5))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@6)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@1 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.XA? $h@@7)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.XA? $h@@7))
)))
(assert (forall (($o@@2 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.XB? $h@@8)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.XB? $h@@8))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.XC? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.XC? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.XD? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.XD? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.XE? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.XE? $h@@11))
)))
(assert (forall (($o@@6 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.XX? $h@@12)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.XX? $h@@12))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.XA)  (and ($Is refType |c#0@@7| Tclass._module.XA?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.XA))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.XA?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.XB)  (and ($Is refType |c#0@@8| Tclass._module.XB?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.XB))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.XB?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.XC)  (and ($Is refType |c#0@@9| Tclass._module.XC?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.XC))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.XC?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.XD)  (and ($Is refType |c#0@@10| Tclass._module.XD?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.XD))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.XD?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.XE)  (and ($Is refType |c#0@@11| Tclass._module.XE?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.XE))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.XE?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.XX)  (and ($Is refType |c#0@@12| Tclass._module.XX?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.XX))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.XX?))
)))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.XA? $heap) ($IsAlloc refType $o@@7 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.XA? $heap))
)))
(assert (forall (($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass._module.XB? $heap@@0) ($IsAlloc refType $o@@8 Tclass._System.object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.XB? $heap@@0))
)))
(assert (forall (($o@@9 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@9 Tclass._module.XC? $heap@@1) ($IsAlloc refType $o@@9 Tclass._module.XA? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.XC? $heap@@1))
)))
(assert (forall (($o@@10 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass._module.XC? $heap@@2) ($IsAlloc refType $o@@10 Tclass._module.XB? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.XC? $heap@@2))
)))
(assert (forall (($o@@11 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.XD? $heap@@3) ($IsAlloc refType $o@@11 Tclass._module.XC? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.XD? $heap@@3))
)))
(assert (forall (($o@@12 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.XE? $heap@@4) ($IsAlloc refType $o@@12 Tclass._System.object? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.XE? $heap@@4))
)))
(assert (forall (($o@@13 T@U) ($heap@@5 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.XX? $heap@@5) ($IsAlloc refType $o@@13 Tclass._module.XD? $heap@@5))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.XX? $heap@@5))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@15 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f))  (=> (and (or (not (= $o@@15 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@15) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |786|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.XA?) ($Is refType $o@@16 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( ($Is refType $o@@16 Tclass._module.XA?))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.XB?) ($Is refType $o@@17 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($Is refType $o@@17 Tclass._module.XB?))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> ($Is refType $o@@18 Tclass._module.XC?) ($Is refType $o@@18 Tclass._module.XA?))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( ($Is refType $o@@18 Tclass._module.XC?))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> ($Is refType $o@@19 Tclass._module.XC?) ($Is refType $o@@19 Tclass._module.XB?))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType $o@@19 Tclass._module.XC?))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> ($Is refType $o@@20 Tclass._module.XD?) ($Is refType $o@@20 Tclass._module.XC?))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( ($Is refType $o@@20 Tclass._module.XD?))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> ($Is refType $o@@21 Tclass._module.XE?) ($Is refType $o@@21 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |780|
 :pattern ( ($Is refType $o@@21 Tclass._module.XE?))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.XX?) ($Is refType $o@@22 Tclass._module.XD?))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( ($Is refType $o@@22 Tclass._module.XX?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.XX) Tagclass._module.XX))
(assert (= (TagFamily Tclass._module.XX) tytagFamily$XX))
(assert (= (Tag Tclass._module.XX?) Tagclass._module.XX?))
(assert (= (TagFamily Tclass._module.XX?) tytagFamily$XX))
(assert (= (Tag Tclass._module.XA?) Tagclass._module.XA?))
(assert (= (TagFamily Tclass._module.XA?) tytagFamily$XA))
(assert (= (Tag Tclass._module.XB?) Tagclass._module.XB?))
(assert (= (TagFamily Tclass._module.XB?) tytagFamily$XB))
(assert (= (Tag Tclass._module.XC?) Tagclass._module.XC?))
(assert (= (TagFamily Tclass._module.XC?) tytagFamily$XC))
(assert (= (Tag Tclass._module.XD?) Tagclass._module.XD?))
(assert (= (TagFamily Tclass._module.XD?) tytagFamily$XD))
(assert (= (Tag Tclass._module.XE?) Tagclass._module.XE?))
(assert (= (TagFamily Tclass._module.XE?) tytagFamily$XE))
(assert (= (Tag Tclass._module.XA) Tagclass._module.XA))
(assert (= (TagFamily Tclass._module.XA) tytagFamily$XA))
(assert (= (Tag Tclass._module.XB) Tagclass._module.XB))
(assert (= (TagFamily Tclass._module.XB) tytagFamily$XB))
(assert (= (Tag Tclass._module.XC) Tagclass._module.XC))
(assert (= (TagFamily Tclass._module.XC) tytagFamily$XC))
(assert (= (Tag Tclass._module.XD) Tagclass._module.XD))
(assert (= (TagFamily Tclass._module.XD) tytagFamily$XD))
(assert (= (Tag Tclass._module.XE) Tagclass._module.XE))
(assert (= (TagFamily Tclass._module.XE) tytagFamily$XE))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass._module.XA?)  (or (= $o@@23 null) (implements$_module.XA (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( ($Is refType $o@@23 Tclass._module.XA?))
)))
(assert (forall (($o@@24 T@U) ) (! (= ($Is refType $o@@24 Tclass._module.XB?)  (or (= $o@@24 null) (implements$_module.XB (dtype $o@@24))))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($Is refType $o@@24 Tclass._module.XB?))
)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass._module.XC?)  (or (= $o@@25 null) (implements$_module.XC (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($Is refType $o@@25 Tclass._module.XC?))
)))
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass._module.XD?)  (or (= $o@@26 null) (implements$_module.XD (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($Is refType $o@@26 Tclass._module.XD?))
)))
(assert (forall (($o@@27 T@U) ) (! (= ($Is refType $o@@27 Tclass._module.XE?)  (or (= $o@@27 null) (implements$_module.XE (dtype $o@@27))))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($Is refType $o@@27 Tclass._module.XE?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () T@U)
(declare-fun |c#0@4| () Int)
(declare-fun |c#0@3| () Int)
(declare-fun |c#0@2| () Int)
(declare-fun |c#0@1| () Int)
(declare-fun |c#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#o#0| () Bool)
(declare-fun |o#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestFromTraits2)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon15_correct true))
(let ((anon20_Else_correct  (=> (and (not ($Is refType |x#0| Tclass._module.XE?)) (= (ControlFlow 0 3) 1)) anon15_correct)))
(let ((anon20_Then_correct  (=> (and ($Is refType |x#0| Tclass._module.XE?) (= (ControlFlow 0 2) 1)) anon15_correct)))
(let ((anon12_correct  (=> (= |c#0@4| (+ |c#0@3| (ite ($Is refType |x#0| Tclass._module.XD?) 1 0))) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (and (=> (= (ControlFlow 0 4) 2) anon20_Then_correct) (=> (= (ControlFlow 0 4) 3) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not ($Is refType |x#0| Tclass._module.XD?)) (= (ControlFlow 0 7) 4)) anon12_correct)))
(let ((anon19_Then_correct  (=> (and ($Is refType |x#0| Tclass._module.XD?) (= (ControlFlow 0 6) 4)) anon12_correct)))
(let ((anon9_correct  (=> (= |c#0@3| (+ |c#0@2| (ite ($Is refType |x#0| Tclass._module.XC?) 1 0))) (and (=> (= (ControlFlow 0 8) (- 0 9)) true) (and (=> (= (ControlFlow 0 8) 6) anon19_Then_correct) (=> (= (ControlFlow 0 8) 7) anon19_Else_correct))))))
(let ((anon18_Else_correct  (=> (and (not ($Is refType |x#0| Tclass._module.XC?)) (= (ControlFlow 0 11) 8)) anon9_correct)))
(let ((anon18_Then_correct  (=> (and ($Is refType |x#0| Tclass._module.XC?) (= (ControlFlow 0 10) 8)) anon9_correct)))
(let ((anon6_correct  (=> (= |c#0@2| (+ |c#0@1| (ite ($Is refType |x#0| Tclass._module.XB?) 1 0))) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (and (=> (= (ControlFlow 0 12) 10) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (and (not ($Is refType |x#0| Tclass._module.XB?)) (= (ControlFlow 0 15) 12)) anon6_correct)))
(let ((anon17_Then_correct  (=> (and ($Is refType |x#0| Tclass._module.XB?) (= (ControlFlow 0 14) 12)) anon6_correct)))
(let ((anon3_correct  (=> (= |c#0@1| (+ |c#0@0| (ite ($Is refType |x#0| Tclass._module.XA?) 1 0))) (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (and (=> (= (ControlFlow 0 16) 14) anon17_Then_correct) (=> (= (ControlFlow 0 16) 15) anon17_Else_correct))))))
(let ((anon16_Else_correct  (=> (and (not ($Is refType |x#0| Tclass._module.XA?)) (= (ControlFlow 0 19) 16)) anon3_correct)))
(let ((anon16_Then_correct  (=> (and ($Is refType |x#0| Tclass._module.XA?) (= (ControlFlow 0 18) 16)) anon3_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |c#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 20) (- 0 21)) true) (and (=> (= (ControlFlow 0 20) 18) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |x#0| Tclass._module.XX) ($IsAlloc refType |x#0| Tclass._module.XX $Heap))) (and (and (=> |defass#o#0| (and ($Is refType |o#0| Tclass._System.object) ($IsAlloc refType |o#0| Tclass._System.object $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 22) 20)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
