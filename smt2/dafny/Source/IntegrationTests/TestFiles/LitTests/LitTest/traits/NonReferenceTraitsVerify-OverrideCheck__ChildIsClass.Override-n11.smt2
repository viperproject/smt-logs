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
(declare-fun Tagclass.ChildIsClass.Trait () T@U)
(declare-fun Tagclass.ChildIsClass.Trait? () T@U)
(declare-fun Tagclass.ChildIsClass.OverrideErrors? () T@U)
(declare-fun Tagclass.ChildIsClass.OverrideErrors () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$OverrideErrors () T@U)
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
(declare-fun ChildIsClass.OverrideErrors.F (T@U Int) Int)
(declare-fun |ChildIsClass.OverrideErrors.F#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ChildIsClass.OverrideErrors () T@U)
(declare-fun ChildIsClass.Trait.yy (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.ChildIsClass.Trait () T@U)
(declare-fun Tclass.ChildIsClass.Trait? () T@U)
(declare-fun Tclass.ChildIsClass.OverrideErrors? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ChildIsClass.Trait (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$ChildIsClass.OverrideErrors (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.ChildIsClass.Trait Tagclass.ChildIsClass.Trait? Tagclass.ChildIsClass.OverrideErrors? Tagclass.ChildIsClass.OverrideErrors tytagFamily$nat tytagFamily$Trait tytagFamily$OverrideErrors)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|umpa#0| Int) ) (!  (=> (or (|ChildIsClass.OverrideErrors.F#canCall| this |umpa#0|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ChildIsClass.OverrideErrors)) (< (ChildIsClass.Trait.yy this) 200)))) (and (< (ChildIsClass.OverrideErrors.F this |umpa#0|) (+ (ChildIsClass.Trait.yy this) 100)) (<= (LitInt 0) (ChildIsClass.OverrideErrors.F this |umpa#0|))))
 :qid |NonReferenceTraitsVerifydfy.189:14|
 :skolemid |1669|
 :pattern ( (ChildIsClass.OverrideErrors.F this |umpa#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1477|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|umpa#0@@0| Int) ) (!  (=> (or (|ChildIsClass.OverrideErrors.F#canCall| this@@0 (LitInt |umpa#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.ChildIsClass.OverrideErrors)) (< (ChildIsClass.Trait.yy this@@0) 200)))) (= (ChildIsClass.OverrideErrors.F this@@0 (LitInt |umpa#0@@0|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.189:14|
 :weight 3
 :skolemid |1672|
 :pattern ( (ChildIsClass.OverrideErrors.F this@@0 (LitInt |umpa#0@@0|)))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ChildIsClass.Trait $h@@0) ($IsAlloc refType |c#0| Tclass.ChildIsClass.Trait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ChildIsClass.Trait $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ChildIsClass.Trait? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ChildIsClass.OverrideErrors $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ChildIsClass.OverrideErrors? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsClass.OverrideErrors $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsClass.OverrideErrors? $h@@1))
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
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass.ChildIsClass.Trait? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1620|
 :pattern ( ($IsAlloc refType $o Tclass.ChildIsClass.Trait? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.ChildIsClass.OverrideErrors? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1667|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.ChildIsClass.OverrideErrors? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1250|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1251|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1149|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1147|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1158|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1476|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1242|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@4 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass.ChildIsClass.Trait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))) ($IsAlloc intType (int_2_U (ChildIsClass.Trait.yy $o@@1)) Tclass._System.nat $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1622|
 :pattern ( (ChildIsClass.Trait.yy $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass.ChildIsClass.Trait?)) ($Is intType (int_2_U (ChildIsClass.Trait.yy $o@@2)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |1621|
 :pattern ( (ChildIsClass.Trait.yy $o@@2))
))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.ChildIsClass.Trait)  (and ($Is refType |c#0@@1| Tclass.ChildIsClass.Trait?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1627|
 :pattern ( ($Is refType |c#0@@1| Tclass.ChildIsClass.Trait))
 :pattern ( ($Is refType |c#0@@1| Tclass.ChildIsClass.Trait?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.ChildIsClass.OverrideErrors)  (and ($Is refType |c#0@@2| Tclass.ChildIsClass.OverrideErrors?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1682|
 :pattern ( ($Is refType |c#0@@2| Tclass.ChildIsClass.OverrideErrors))
 :pattern ( ($Is refType |c#0@@2| Tclass.ChildIsClass.OverrideErrors?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.ChildIsClass.OverrideErrors? $heap) ($IsAlloc refType $o@@3 Tclass.ChildIsClass.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ChildIsClass.OverrideErrors? $heap))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|umpa#0@@1| Int) ) (!  (=> (or (|ChildIsClass.OverrideErrors.F#canCall| (Lit refType this@@1) (LitInt |umpa#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.ChildIsClass.OverrideErrors)) (< (ChildIsClass.Trait.yy (Lit refType this@@1)) 200)))) (= (ChildIsClass.OverrideErrors.F (Lit refType this@@1) (LitInt |umpa#0@@1|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.189:14|
 :weight 3
 :skolemid |1673|
 :pattern ( (ChildIsClass.OverrideErrors.F (Lit refType this@@1) (LitInt |umpa#0@@1|)))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1249|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1157|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass.ChildIsClass.OverrideErrors?) ($Is refType $o@@4 Tclass.ChildIsClass.Trait?))
 :qid |unknown.0:0|
 :skolemid |1694|
 :pattern ( ($Is refType $o@@4 Tclass.ChildIsClass.OverrideErrors?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.ChildIsClass.Trait) Tagclass.ChildIsClass.Trait))
(assert (= (TagFamily Tclass.ChildIsClass.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.ChildIsClass.Trait?) Tagclass.ChildIsClass.Trait?))
(assert (= (TagFamily Tclass.ChildIsClass.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass.ChildIsClass.OverrideErrors?) Tagclass.ChildIsClass.OverrideErrors?))
(assert (= (TagFamily Tclass.ChildIsClass.OverrideErrors?) tytagFamily$OverrideErrors))
(assert (= (Tag Tclass.ChildIsClass.OverrideErrors) Tagclass.ChildIsClass.OverrideErrors))
(assert (= (TagFamily Tclass.ChildIsClass.OverrideErrors) tytagFamily$OverrideErrors))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.ChildIsClass.Trait?)  (or (= $o@@5 null) (implements$ChildIsClass.Trait (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |1619|
 :pattern ( ($Is refType $o@@5 Tclass.ChildIsClass.Trait?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass.ChildIsClass.OverrideErrors?)  (or (= $o@@6 null) (implements$ChildIsClass.OverrideErrors (dtype $o@@6))))
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( ($Is refType $o@@6 Tclass.ChildIsClass.OverrideErrors?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1150|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1148|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|umpa#0@@2| Int) ) (!  (=> (or (|ChildIsClass.OverrideErrors.F#canCall| this@@2 |umpa#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.ChildIsClass.OverrideErrors)) (< (ChildIsClass.Trait.yy this@@2) 200)))) (= (ChildIsClass.OverrideErrors.F this@@2 |umpa#0@@2|) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.189:14|
 :skolemid |1671|
 :pattern ( (ChildIsClass.OverrideErrors.F this@@2 |umpa#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |p#0| () Int)
(set-info :boogie-vc-id OverrideCheck$$ChildIsClass.OverrideErrors.M)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (< (ChildIsClass.Trait.yy this@@3) 100) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< (ChildIsClass.Trait.yy this@@3) 150)) (=> (< (ChildIsClass.Trait.yy this@@3) 150) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@7 T@U) ($f T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.196:12|
 :skolemid |1677|
))) (=> (forall (($o@@8 T@U) ($f@@0 T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.196:12|
 :skolemid |1677|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@9 T@U) ($f@@1 T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.196:12|
 :skolemid |1678|
))) (=> (forall (($o@@10 T@U) ($f@@2 T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.196:12|
 :skolemid |1678|
)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@11)))
 :qid |NonReferenceTraitsVerifydfy.196:12|
 :skolemid |1679|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11))
)) ($HeapSucc $Heap $Heap@0)) (and (< |p#0| (+ (+ (ChildIsClass.Trait.yy this@@3) (ChildIsClass.OverrideErrors.F this@@3 (LitInt 5))) 1200)) (= (ControlFlow 0 2) (- 0 1)))) (< |p#0| (+ (+ (ChildIsClass.Trait.yy this@@3) (ChildIsClass.OverrideErrors.F this@@3 (LitInt 5))) 900))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.ChildIsClass.OverrideErrors) ($IsAlloc refType this@@3 Tclass.ChildIsClass.OverrideErrors $Heap))) (<= (LitInt 0) |p#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
