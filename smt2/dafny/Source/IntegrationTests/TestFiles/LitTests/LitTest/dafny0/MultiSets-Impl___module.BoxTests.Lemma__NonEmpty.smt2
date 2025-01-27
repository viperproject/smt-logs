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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.BoxTests? () T@U)
(declare-fun Tagclass._module.BoxTests () T@U)
(declare-fun tytagFamily$BoxTests () T@U)
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
(declare-fun refType () T@T)
(declare-fun Tclass._module.BoxTests (T@U) T@U)
(declare-fun Tclass._module.BoxTests? (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.BoxTests?_0 (T@U) T@U)
(declare-fun Tclass._module.BoxTests_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._module.BoxTests? Tagclass._module.BoxTests tytagFamily$BoxTests)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.BoxTests$G T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.BoxTests _module.BoxTests$G) $h) ($IsAlloc refType |c#0| (Tclass._module.BoxTests? _module.BoxTests$G) $h))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BoxTests _module.BoxTests$G) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BoxTests? _module.BoxTests$G) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a T@U) (b T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a b) o@@0)  (and (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a b) o@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@0 b@@0) b@@0) (|Set#Intersection| a@@0 b@@0))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@0 b@@0) b@@0))
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
(assert (forall ((_module.BoxTests$G@@0 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BoxTests? _module.BoxTests$G@@0) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BoxTests? _module.BoxTests$G@@0) $h@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Disjoint| a@@1 b@@1) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@1 o@@1)) (not (|Set#IsMember| b@@1 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@1 b@@1))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((_module.BoxTests$G@@1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BoxTests _module.BoxTests$G@@1))  (and ($Is refType |c#0@@0| (Tclass._module.BoxTests? _module.BoxTests$G@@1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BoxTests _module.BoxTests$G@@1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BoxTests? _module.BoxTests$G@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((_module.BoxTests$G@@2 T@U) ) (!  (and (= (Tag (Tclass._module.BoxTests? _module.BoxTests$G@@2)) Tagclass._module.BoxTests?) (= (TagFamily (Tclass._module.BoxTests? _module.BoxTests$G@@2)) tytagFamily$BoxTests))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (Tclass._module.BoxTests? _module.BoxTests$G@@2))
)))
(assert (forall ((_module.BoxTests$G@@3 T@U) ) (!  (and (= (Tag (Tclass._module.BoxTests _module.BoxTests$G@@3)) Tagclass._module.BoxTests) (= (TagFamily (Tclass._module.BoxTests _module.BoxTests$G@@3)) tytagFamily$BoxTests))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (Tclass._module.BoxTests _module.BoxTests$G@@3))
)))
(assert (forall ((_module.BoxTests$G@@4 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BoxTests? _module.BoxTests$G@@4))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BoxTests? _module.BoxTests$G@@4))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BoxTests? _module.BoxTests$G@@4)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
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
(assert (forall ((_module.BoxTests$G@@5 T@U) ) (! (= (Tclass._module.BoxTests?_0 (Tclass._module.BoxTests? _module.BoxTests$G@@5)) _module.BoxTests$G@@5)
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (Tclass._module.BoxTests? _module.BoxTests$G@@5))
)))
(assert (forall ((_module.BoxTests$G@@6 T@U) ) (! (= (Tclass._module.BoxTests_0 (Tclass._module.BoxTests _module.BoxTests$G@@6)) _module.BoxTests$G@@6)
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BoxTests _module.BoxTests$G@@6))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Intersection| a@@3 (|Set#Intersection| a@@3 b@@3)) (|Set#Intersection| a@@3 b@@3))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@3 (|Set#Intersection| a@@3 b@@3)))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |656|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((_module.BoxTests$G@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.BoxTests? _module.BoxTests$G@@7)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.BoxTests? _module.BoxTests$G@@7))))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsBox bx@@3 (Tclass._module.BoxTests? _module.BoxTests$G@@7)))
)))
(assert (forall ((_module.BoxTests$G@@8 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.BoxTests _module.BoxTests$G@@8)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.BoxTests _module.BoxTests$G@@8))))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@4 (Tclass._module.BoxTests _module.BoxTests$G@@8)))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@4 b@@4) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@4))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun _module.BoxTests$G@@9 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.BoxTests.Lemma__NonEmpty)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|Set#Disjoint| |x#0| |y#0|))))
(let ((anon3_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((|k#1| Int) ) (!  (not (|Set#IsMember| (|Set#Intersection| |x#0| |y#0|) ($Box intType (int_2_U |k#1|))))
 :qid |MultiSetsdfy.144:19|
 :skolemid |635|
 :pattern ( (|Set#IsMember| (|Set#Intersection| |x#0| |y#0|) ($Box intType (int_2_U |k#1|))))
))) (=> (forall ((|k#1@@0| T@U) ) (!  (not (|Set#IsMember| (|Set#Intersection| |x#0| |y#0|) ($Box intType |k#1@@0|)))
 :qid |MultiSetsdfy.144:19|
 :skolemid |635|
 :pattern ( (|Set#IsMember| (|Set#Intersection| |x#0| |y#0|) ($Box intType |k#1@@0|)))
)) (=> (= (ControlFlow 0 4) 3) GeneratedUnifiedExit_correct)))))
(let ((anon3_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 1) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.BoxTests _module.BoxTests$G@@9)) ($IsAlloc refType this (Tclass._module.BoxTests _module.BoxTests$G@@9) $Heap))) (and ($Is SetType |x#0| (TSet TInt)) ($IsAlloc SetType |x#0| (TSet TInt) $Heap))) (=> (and (and (and ($Is SetType |y#0| (TSet TInt)) ($IsAlloc SetType |y#0| (TSet TInt) $Heap)) (= 0 $FunctionContextHeight)) (and (|Set#Equal| (|Set#Intersection| |x#0| |y#0|) |Set#Empty|) (= (ControlFlow 0 7) 6))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
