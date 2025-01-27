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
(declare-fun Tagclass.ModuleContainTraitAndClass.Trait? () T@U)
(declare-fun Tagclass.ModuleContainTraitAndClass.Class? () T@U)
(declare-fun Tagclass.ModuleContainTraitAndClass.Trait () T@U)
(declare-fun Tagclass.ModuleContainTraitAndClass.Class () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$Class () T@U)
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
(declare-fun ModuleContainTraitAndClass.Class.c0 (T@U) Int)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ModuleContainTraitAndClass.Class? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun ModuleContainTraitAndClass.Trait.t0 (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.ModuleContainTraitAndClass.Trait? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$ModuleContainTraitAndClass.Trait (T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ModuleContainTraitAndClass.Trait () T@U)
(declare-fun Tclass.ModuleContainTraitAndClass.Class () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.object? Tagclass._System.object Tagclass.ModuleContainTraitAndClass.Trait? Tagclass.ModuleContainTraitAndClass.Class? Tagclass.ModuleContainTraitAndClass.Trait Tagclass.ModuleContainTraitAndClass.Class tytagFamily$object tytagFamily$Trait tytagFamily$Class)
)
(assert (= (Tag TInt) TagInt))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.ModuleContainTraitAndClass.Class?)) ($Is intType (int_2_U (ModuleContainTraitAndClass.Class.c0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |4971|
 :pattern ( (ModuleContainTraitAndClass.Class.c0 $o))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 Tclass.ModuleContainTraitAndClass.Trait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc intType (int_2_U (ModuleContainTraitAndClass.Trait.t0 $o@@0)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4962|
 :pattern ( (ModuleContainTraitAndClass.Trait.t0 $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
)))
(assert (implements$ModuleContainTraitAndClass.Trait Tclass.ModuleContainTraitAndClass.Class?))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.ModuleContainTraitAndClass.Class?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.ModuleContainTraitAndClass.Class?)))
 :qid |unknown.0:0|
 :skolemid |4968|
 :pattern ( ($Is refType $o@@1 Tclass.ModuleContainTraitAndClass.Class?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |4819|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ModuleContainTraitAndClass.Trait $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ModuleContainTraitAndClass.Trait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |4967|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ModuleContainTraitAndClass.Trait $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ModuleContainTraitAndClass.Trait? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ModuleContainTraitAndClass.Class $h@@2) ($IsAlloc refType |c#0@@1| Tclass.ModuleContainTraitAndClass.Class? $h@@2))
 :qid |unknown.0:0|
 :skolemid |4977|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ModuleContainTraitAndClass.Class $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ModuleContainTraitAndClass.Class? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4816|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.ModuleContainTraitAndClass.Trait? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4959|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ModuleContainTraitAndClass.Trait? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.ModuleContainTraitAndClass.Class? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4969|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.ModuleContainTraitAndClass.Class? $h@@5))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4485|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4483|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4494|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((this T@U) ) (! (= (ModuleContainTraitAndClass.Trait.t0 this) (LitInt 18))
 :qid |Modules1dfy.160:11|
 :skolemid |4955|
 :pattern ( (ModuleContainTraitAndClass.Trait.t0 this))
)))
(assert (forall ((this@@0 T@U) ) (! (= (ModuleContainTraitAndClass.Class.c0 this@@0) (LitInt 20))
 :qid |Modules1dfy.167:11|
 :skolemid |4956|
 :pattern ( (ModuleContainTraitAndClass.Class.c0 this@@0))
)))
(assert (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass.ModuleContainTraitAndClass.Trait?)) ($Is intType (int_2_U (ModuleContainTraitAndClass.Trait.t0 $o@@5)) TInt))
 :qid |unknown.0:0|
 :skolemid |4961|
 :pattern ( (ModuleContainTraitAndClass.Trait.t0 $o@@5))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4818|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.ModuleContainTraitAndClass.Trait)  (and ($Is refType |c#0@@3| Tclass.ModuleContainTraitAndClass.Trait?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4966|
 :pattern ( ($Is refType |c#0@@3| Tclass.ModuleContainTraitAndClass.Trait))
 :pattern ( ($Is refType |c#0@@3| Tclass.ModuleContainTraitAndClass.Trait?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.ModuleContainTraitAndClass.Class)  (and ($Is refType |c#0@@4| Tclass.ModuleContainTraitAndClass.Class?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4976|
 :pattern ( ($Is refType |c#0@@4| Tclass.ModuleContainTraitAndClass.Class))
 :pattern ( ($Is refType |c#0@@4| Tclass.ModuleContainTraitAndClass.Class?))
)))
(assert (forall (($o@@6 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass.ModuleContainTraitAndClass.Trait? $heap) ($IsAlloc refType $o@@6 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |4981|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ModuleContainTraitAndClass.Trait? $heap))
)))
(assert (forall (($o@@7 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass.ModuleContainTraitAndClass.Class? $heap@@0) ($IsAlloc refType $o@@7 Tclass.ModuleContainTraitAndClass.Trait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |4985|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.ModuleContainTraitAndClass.Class? $heap@@0))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |4815|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4493|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall (($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.ModuleContainTraitAndClass.Class?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (ModuleContainTraitAndClass.Class.c0 $o@@9)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4972|
 :pattern ( (ModuleContainTraitAndClass.Class.c0 $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@10 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6114|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass.ModuleContainTraitAndClass.Trait?) ($Is refType $o@@11 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |4980|
 :pattern ( ($Is refType $o@@11 Tclass.ModuleContainTraitAndClass.Trait?))
)))
(assert (forall (($o@@12 T@U) ) (!  (=> ($Is refType $o@@12 Tclass.ModuleContainTraitAndClass.Class?) ($Is refType $o@@12 Tclass.ModuleContainTraitAndClass.Trait?))
 :qid |unknown.0:0|
 :skolemid |4984|
 :pattern ( ($Is refType $o@@12 Tclass.ModuleContainTraitAndClass.Class?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ModuleContainTraitAndClass.Trait?) Tagclass.ModuleContainTraitAndClass.Trait?))
(assert (= (TagFamily Tclass.ModuleContainTraitAndClass.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass.ModuleContainTraitAndClass.Class?) Tagclass.ModuleContainTraitAndClass.Class?))
(assert (= (TagFamily Tclass.ModuleContainTraitAndClass.Class?) tytagFamily$Class))
(assert (= (Tag Tclass.ModuleContainTraitAndClass.Trait) Tagclass.ModuleContainTraitAndClass.Trait))
(assert (= (TagFamily Tclass.ModuleContainTraitAndClass.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.ModuleContainTraitAndClass.Class) Tagclass.ModuleContainTraitAndClass.Class))
(assert (= (TagFamily Tclass.ModuleContainTraitAndClass.Class) tytagFamily$Class))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass.ModuleContainTraitAndClass.Trait?)  (or (= $o@@13 null) (implements$ModuleContainTraitAndClass.Trait (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |4958|
 :pattern ( ($Is refType $o@@13 Tclass.ModuleContainTraitAndClass.Trait?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4486|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4484|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4529|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4508|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ModuleImportingTraitAndClassX.__default.Tests1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |t#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (ModuleContainTraitAndClass.Trait.t0 |t#0|) (LitInt 18))) (=> (= (ModuleContainTraitAndClass.Trait.t0 |t#0|) (LitInt 18)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |c#0@@5| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (ModuleContainTraitAndClass.Trait.t0 |c#0@@5|) (LitInt 18))) (=> (= (ModuleContainTraitAndClass.Trait.t0 |c#0@@5|) (LitInt 18)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |c#0@@5| null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (= (ModuleContainTraitAndClass.Class.c0 |c#0@@5|) (LitInt 20)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |t#0| Tclass.ModuleContainTraitAndClass.Trait?) ($IsAlloc refType |t#0| Tclass.ModuleContainTraitAndClass.Trait? $Heap)) (and ($Is refType |c#0@@5| Tclass.ModuleContainTraitAndClass.Class?) ($IsAlloc refType |c#0@@5| Tclass.ModuleContainTraitAndClass.Class? $Heap))) (and (and (= 0 $FunctionContextHeight) (or (not (= |t#0| null)) (not true))) (and (or (not (= |c#0@@5| null)) (not true)) (= (ControlFlow 0 8) 2)))) anon0_correct))))
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
