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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.TypeDescriptorTests.XT? () T@U)
(declare-fun Tagclass.TypeDescriptorTests.XT () T@U)
(declare-fun Tagclass.TypeDescriptorTests.YT? () T@U)
(declare-fun Tagclass.TypeDescriptorTests.YT () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$XT () T@U)
(declare-fun tytagFamily$YT () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TypeDescriptorTests.YT? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TypeDescriptorTests.YT () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.TypeDescriptorTests.XT? (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.XT (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun implements$TypeDescriptorTests.XT (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.XT?_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.XT?_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.XT_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.XT_1 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.TypeDescriptorTests.XT? Tagclass.TypeDescriptorTests.XT Tagclass.TypeDescriptorTests.YT? Tagclass.TypeDescriptorTests.YT |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$XT tytagFamily$YT)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3400|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TypeDescriptorTests.YT?)  (or (= $o null) (= (dtype $o) Tclass.TypeDescriptorTests.YT?)))
 :qid |unknown.0:0|
 :skolemid |3944|
 :pattern ( ($Is refType $o Tclass.TypeDescriptorTests.YT?))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |3680|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |3681|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |3682|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.TypeDescriptorTests.YT $h) ($IsAlloc refType |c#0| Tclass.TypeDescriptorTests.YT? $h))
 :qid |unknown.0:0|
 :skolemid |3979|
 :pattern ( ($IsAlloc refType |c#0| Tclass.TypeDescriptorTests.YT $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.TypeDescriptorTests.YT? $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.TypeDescriptorTests.YT? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3945|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.TypeDescriptorTests.YT? $h@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> ($Is refType $o@@1 Tclass.TypeDescriptorTests.YT?) ($Is refType $o@@1 (Tclass.TypeDescriptorTests.XT? (Tclass._System.___hTotalFunc1 TInt TInt) TInt)))
 :qid |unknown.0:0|
 :skolemid |4015|
 :pattern ( ($Is refType $o@@1 Tclass.TypeDescriptorTests.YT?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.TypeDescriptorTests.YT?) ($IsBox bx@@1 (Tclass.TypeDescriptorTests.XT? (Tclass._System.___hTotalFunc1 TInt TInt) TInt)))
 :qid |unknown.0:0|
 :skolemid |4013|
 :pattern ( ($IsBox bx@@1 Tclass.TypeDescriptorTests.YT?))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |3676|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3301|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((TypeDescriptorTests.XT$U T@U) (TypeDescriptorTests.XT$W T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U TypeDescriptorTests.XT$W))  (and ($Is refType |c#0@@0| (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U TypeDescriptorTests.XT$W)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3941|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U TypeDescriptorTests.XT$W)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U TypeDescriptorTests.XT$W)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h) ($IsAlloc T@@0 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3314|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h))
)))
(assert (implements$TypeDescriptorTests.XT Tclass.TypeDescriptorTests.YT? (Tclass._System.___hTotalFunc1 TInt TInt) TInt))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |3694|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |3701|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@0 T@U) (TypeDescriptorTests.XT$W@@0 T@U) (|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@0 TypeDescriptorTests.XT$W@@0) $h@@3) ($IsAlloc refType |c#0@@1| (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@0 TypeDescriptorTests.XT$W@@0) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3942|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@0 TypeDescriptorTests.XT$W@@0) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@0 TypeDescriptorTests.XT$W@@0) $h@@3))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.TypeDescriptorTests.YT?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.TypeDescriptorTests.YT?)))
 :qid |unknown.0:0|
 :skolemid |3943|
 :pattern ( ($IsBox bx@@2 Tclass.TypeDescriptorTests.YT?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.TypeDescriptorTests.YT) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.TypeDescriptorTests.YT)))
 :qid |unknown.0:0|
 :skolemid |3947|
 :pattern ( ($IsBox bx@@3 Tclass.TypeDescriptorTests.YT))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.YT)  (and ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.YT?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3978|
 :pattern ( ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.YT))
 :pattern ( ($Is refType |c#0@@2| Tclass.TypeDescriptorTests.YT?))
)))
(assert (forall ((bx@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass.TypeDescriptorTests.YT? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@4 (Tclass.TypeDescriptorTests.XT? (Tclass._System.___hTotalFunc1 TInt TInt) TInt) $h@@4))
 :qid |unknown.0:0|
 :skolemid |4014|
 :pattern ( ($IsAllocBox bx@@4 Tclass.TypeDescriptorTests.YT? $h@@4))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@2 h@@0) (Requires1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0) t1@@2 h@@0))
 :qid |unknown.0:0|
 :skolemid |3686|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |3687|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@1 T@U) (TypeDescriptorTests.XT$W@@1 T@U) ($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@1 TypeDescriptorTests.XT$W@@1) $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3910|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@1 TypeDescriptorTests.XT$W@@1) $h@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3425|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@3)) (Requires1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1) t1@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3678|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |3679|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3302|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3313|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |3658|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |3659|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |3689|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |3690|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |3696|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |3697|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@2 T@U) (TypeDescriptorTests.XT$W@@2 T@U) ) (! (= (Tclass.TypeDescriptorTests.XT?_0 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@2 TypeDescriptorTests.XT$W@@2)) TypeDescriptorTests.XT$U@@2)
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@2 TypeDescriptorTests.XT$W@@2))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@3 T@U) (TypeDescriptorTests.XT$W@@3 T@U) ) (! (= (Tclass.TypeDescriptorTests.XT?_1 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@3 TypeDescriptorTests.XT$W@@3)) TypeDescriptorTests.XT$W@@3)
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@3 TypeDescriptorTests.XT$W@@3))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@4 T@U) (TypeDescriptorTests.XT$W@@4 T@U) ) (! (= (Tclass.TypeDescriptorTests.XT_0 (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@4 TypeDescriptorTests.XT$W@@4)) TypeDescriptorTests.XT$U@@4)
 :qid |unknown.0:0|
 :skolemid |3845|
 :pattern ( (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@4 TypeDescriptorTests.XT$W@@4))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@5 T@U) (TypeDescriptorTests.XT$W@@5 T@U) ) (! (= (Tclass.TypeDescriptorTests.XT_1 (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@5 TypeDescriptorTests.XT$W@@5)) TypeDescriptorTests.XT$W@@5)
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@5 TypeDescriptorTests.XT$W@@5))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@6 T@U) (TypeDescriptorTests.XT$W@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@6 TypeDescriptorTests.XT$W@@6))  (or (= $o@@3 null) (implements$TypeDescriptorTests.XT (dtype $o@@3) TypeDescriptorTests.XT$U@@6 TypeDescriptorTests.XT$W@@6)))
 :qid |unknown.0:0|
 :skolemid |3909|
 :pattern ( ($Is refType $o@@3 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@6 TypeDescriptorTests.XT$W@@6)))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3300|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |3699|
))))
 :qid |unknown.0:0|
 :skolemid |3700|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |3692|
))))
 :qid |unknown.0:0|
 :skolemid |3693|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |3683|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |3684|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |3685|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |3660|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |3691|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |3698|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@7 T@U) (TypeDescriptorTests.XT$W@@7 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@7 TypeDescriptorTests.XT$W@@7)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@7 TypeDescriptorTests.XT$W@@7))))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsBox bx@@9 (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@7 TypeDescriptorTests.XT$W@@7)))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@8 T@U) (TypeDescriptorTests.XT$W@@8 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@8 TypeDescriptorTests.XT$W@@8)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@8 TypeDescriptorTests.XT$W@@8))))
 :qid |unknown.0:0|
 :skolemid |3847|
 :pattern ( ($IsBox bx@@10 (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@8 TypeDescriptorTests.XT$W@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8401|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |3657|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |3688|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |3695|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@9 T@U) (TypeDescriptorTests.XT$W@@9 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@9 TypeDescriptorTests.XT$W@@9)) Tagclass.TypeDescriptorTests.XT?) (= (TagFamily (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@9 TypeDescriptorTests.XT$W@@9)) tytagFamily$XT))
 :qid |unknown.0:0|
 :skolemid |3839|
 :pattern ( (Tclass.TypeDescriptorTests.XT? TypeDescriptorTests.XT$U@@9 TypeDescriptorTests.XT$W@@9))
)))
(assert (forall ((TypeDescriptorTests.XT$U@@10 T@U) (TypeDescriptorTests.XT$W@@10 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@10 TypeDescriptorTests.XT$W@@10)) Tagclass.TypeDescriptorTests.XT) (= (TagFamily (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@10 TypeDescriptorTests.XT$W@@10)) tytagFamily$XT))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( (Tclass.TypeDescriptorTests.XT TypeDescriptorTests.XT$U@@10 TypeDescriptorTests.XT$W@@10))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |3677|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (= (Tag Tclass.TypeDescriptorTests.YT?) Tagclass.TypeDescriptorTests.YT?))
(assert (= (TagFamily Tclass.TypeDescriptorTests.YT?) tytagFamily$YT))
(assert (= (Tag Tclass.TypeDescriptorTests.YT) Tagclass.TypeDescriptorTests.YT))
(assert (= (TagFamily Tclass.TypeDescriptorTests.YT) tytagFamily$YT))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3423|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3424|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.TypeDescriptorTests.YT? $heap) ($IsAlloc refType $o@@5 (Tclass.TypeDescriptorTests.XT? (Tclass._System.___hTotalFunc1 TInt TInt) TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |4016|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.TypeDescriptorTests.YT? $heap))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3336|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3315|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TypeDescriptorTests.XT$U@@11 () T@U)
(declare-fun TypeDescriptorTests.XT$W@@11 () T@U)
(declare-fun YT_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |uu#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$TypeDescriptorTests.YT.G)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= TypeDescriptorTests.XT$U@@11 (Tclass._System.___hTotalFunc1 TInt TInt)) (= TypeDescriptorTests.XT$W@@11 TInt)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= YT_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |TraitCompiledfy.539:14|
 :skolemid |3956|
)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.TypeDescriptorTests.YT) ($IsAlloc refType this Tclass.TypeDescriptorTests.YT $Heap))) ($Is HandleTypeType |uu#0| (Tclass._System.___hTotalFunc1 TInt TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
