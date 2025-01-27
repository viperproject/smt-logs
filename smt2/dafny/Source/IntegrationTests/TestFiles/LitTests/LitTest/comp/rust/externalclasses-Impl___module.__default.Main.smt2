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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalClass () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalPartialClass () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalPartialClass2 () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.NonShareableBox () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.NonShareableBox? () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalClass? () T@U)
(declare-fun Tagclass.ExternalClassContainer.GetValueHolder? () T@U)
(declare-fun Tagclass.ExternalClassContainer.GetValueHolder () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalPartialClass? () T@U)
(declare-fun Tagclass.ExternalClassContainer.ExternalPartialClass2? () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule () T@U)
(declare-fun tytagFamily$ExternalClass () T@U)
(declare-fun tytagFamily$ExternalPartialClass () T@U)
(declare-fun tytagFamily$ExternalPartialClass2 () T@U)
(declare-fun tytagFamily$NonShareableBox () T@U)
(declare-fun tytagFamily$GetValueHolder () T@U)
(declare-fun tytagFamily$TraitDefinedInModule () T@U)
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
(declare-fun implements$ExternalClassContainer.GetValueHolder (T@U) Bool)
(declare-fun Tclass.ExternalClassContainer.ExternalPartialClass? () T@U)
(declare-fun Tclass.ExternalClassContainer.ExternalPartialClass2? () T@U)
(declare-fun implements$ExternModuleWithOneClassToImport.TraitDefinedInModule (T@U) Bool)
(declare-fun Tclass.ExternModuleWithOneClassToImport.NonShareableBox? () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ExternalClassContainer.ExternalClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.ExternalClassContainer.GetValueHolder? () T@U)
(declare-fun Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.ExternalClassContainer.ExternalClass () T@U)
(declare-fun Tclass.ExternalClassContainer.GetValueHolder () T@U)
(declare-fun Tclass.ExternalClassContainer.ExternalPartialClass () T@U)
(declare-fun Tclass.ExternalClassContainer.ExternalPartialClass2 () T@U)
(declare-fun Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule () T@U)
(declare-fun Tclass.ExternModuleWithOneClassToImport.NonShareableBox () T@U)
(declare-fun ExternButEverythingImplemented.__default.test () Int)
(declare-fun LitInt (Int) Int)
(declare-fun ExternModuleWithOneClassToImport.NonShareableBox.GetOpt (T@U T@U) T@U)
(declare-fun |ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| (T@U T@U) Bool)
(declare-fun |ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun ExternModuleWithOneClassToImport.NonShareableBox.Get (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass.ExternalClassContainer.ExternalClass Tagclass.ExternalClassContainer.ExternalPartialClass Tagclass.ExternalClassContainer.ExternalPartialClass2 Tagclass.ExternModuleWithOneClassToImport.NonShareableBox Tagclass.ExternModuleWithOneClassToImport.NonShareableBox? Tagclass.ExternalClassContainer.ExternalClass? Tagclass.ExternalClassContainer.GetValueHolder? Tagclass.ExternalClassContainer.GetValueHolder Tagclass.ExternalClassContainer.ExternalPartialClass? Tagclass.ExternalClassContainer.ExternalPartialClass2? Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule tytagFamily$ExternalClass tytagFamily$ExternalPartialClass tytagFamily$ExternalPartialClass2 tytagFamily$NonShareableBox tytagFamily$GetValueHolder tytagFamily$TraitDefinedInModule)
)
(assert (= (Tag TChar) TagChar))
(assert (implements$ExternalClassContainer.GetValueHolder Tclass.ExternalClassContainer.ExternalPartialClass?))
(assert (implements$ExternalClassContainer.GetValueHolder Tclass.ExternalClassContainer.ExternalPartialClass2?))
(assert (implements$ExternModuleWithOneClassToImport.TraitDefinedInModule Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.ExternalClassContainer.ExternalClass?)  (or (= $o null) (= (dtype $o) Tclass.ExternalClassContainer.ExternalClass?)))
 :qid |unknown.0:0|
 :skolemid |3004|
 :pattern ( ($Is refType $o Tclass.ExternalClassContainer.ExternalClass?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.ExternalClassContainer.ExternalPartialClass?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.ExternalClassContainer.ExternalPartialClass?)))
 :qid |unknown.0:0|
 :skolemid |3018|
 :pattern ( ($Is refType $o@@0 Tclass.ExternalClassContainer.ExternalPartialClass?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.ExternalClassContainer.ExternalPartialClass2?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.ExternalClassContainer.ExternalPartialClass2?)))
 :qid |unknown.0:0|
 :skolemid |3028|
 :pattern ( ($Is refType $o@@1 Tclass.ExternalClassContainer.ExternalPartialClass2?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)))
 :qid |unknown.0:0|
 :skolemid |3050|
 :pattern ( ($Is refType $o@@2 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.ExternalClassContainer.ExternalPartialClass? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass.ExternalClassContainer.GetValueHolder? $h))
 :qid |unknown.0:0|
 :skolemid |3070|
 :pattern ( ($IsAllocBox bx Tclass.ExternalClassContainer.ExternalPartialClass? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass.ExternalClassContainer.GetValueHolder? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3074|
 :pattern ( ($IsAllocBox bx@@0 Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3078|
 :pattern ( ($IsAllocBox bx@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ExternalClassContainer.ExternalClass $h@@2) ($IsAlloc refType |c#0| Tclass.ExternalClassContainer.ExternalClass? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3008|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExternalClassContainer.ExternalClass $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExternalClassContainer.ExternalClass? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ExternalClassContainer.GetValueHolder $h@@3) ($IsAlloc refType |c#0@@0| Tclass.ExternalClassContainer.GetValueHolder? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3016|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ExternalClassContainer.GetValueHolder $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ExternalClassContainer.GetValueHolder? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ExternalClassContainer.ExternalPartialClass $h@@4) ($IsAlloc refType |c#0@@1| Tclass.ExternalClassContainer.ExternalPartialClass? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3026|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ExternalClassContainer.ExternalPartialClass $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ExternalClassContainer.ExternalPartialClass? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.ExternalClassContainer.ExternalPartialClass2 $h@@5) ($IsAlloc refType |c#0@@2| Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3038|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ExternalClassContainer.ExternalPartialClass2 $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule $h@@6) ($IsAlloc refType |c#0@@3| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@6))
 :qid |unknown.0:0|
 :skolemid |3049|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@6))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.ExternModuleWithOneClassToImport.NonShareableBox $h@@7) ($IsAlloc refType |c#0@@4| Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3065|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.ExternModuleWithOneClassToImport.NonShareableBox $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@7))
)))
(assert (= ExternButEverythingImplemented.__default.test (LitInt 1)))
(assert (= ExternButEverythingImplemented.__default.test (LitInt 1)))
(assert (= (Ctor charType) 4))
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap this) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType this Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap))))) (and (and (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap this) (=> (not (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap this) |Seq#Empty|)) (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap this))) (= (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $Heap this) (ite (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap this) |Seq#Empty|) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 78))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) (|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 40))) (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap this)) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41))))))))
 :qid |externalclassesdfy.74:14|
 :skolemid |3063|
 :pattern ( (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $Heap this) ($IsGoodHeap $Heap))
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
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.ExternalClassContainer.ExternalClass? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3005|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ExternalClassContainer.ExternalClass? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.ExternalClassContainer.GetValueHolder? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3011|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.ExternalClassContainer.GetValueHolder? $h@@9))
)))
(assert (forall (($o@@5 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.ExternalClassContainer.ExternalPartialClass? $h@@10)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3019|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.ExternalClassContainer.ExternalPartialClass? $h@@10))
)))
(assert (forall (($o@@6 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@11)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3029|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ExternalClassContainer.ExternalPartialClass2? $h@@11))
)))
(assert (forall (($o@@7 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@12)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3042|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@12))
)))
(assert (forall (($o@@8 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@13)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3051|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@13))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@@0 this@@0) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType this@@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@@0))))) ($Is SeqType (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@@0 this@@0) (TSeq TChar)))
 :qid |externalclassesdfy.67:24|
 :skolemid |3055|
 :pattern ( (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@@0 this@@0))
)))
(assert (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap@@1 this@@1) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType this@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@@1))))) ($Is SeqType (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $Heap@@1 this@@1) (TSeq TChar)))
 :qid |externalclassesdfy.74:14|
 :skolemid |3061|
 :pattern ( (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $Heap@@1 this@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2623|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2624|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2522|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2520|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2763|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |2744|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |2745|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2531|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2729|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2544|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@1 h@@1) ($IsAllocBox bx@@3 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2616|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2615|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |2731|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.ExternalClassContainer.ExternalClass) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.ExternalClassContainer.ExternalClass)))
 :qid |unknown.0:0|
 :skolemid |2988|
 :pattern ( ($IsBox bx@@4 Tclass.ExternalClassContainer.ExternalClass))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.ExternalClassContainer.ExternalPartialClass) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.ExternalClassContainer.ExternalPartialClass)))
 :qid |unknown.0:0|
 :skolemid |2991|
 :pattern ( ($IsBox bx@@5 Tclass.ExternalClassContainer.ExternalPartialClass))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.ExternalClassContainer.ExternalPartialClass2) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.ExternalClassContainer.ExternalPartialClass2)))
 :qid |unknown.0:0|
 :skolemid |2994|
 :pattern ( ($IsBox bx@@6 Tclass.ExternalClassContainer.ExternalPartialClass2))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.ExternModuleWithOneClassToImport.NonShareableBox)))
 :qid |unknown.0:0|
 :skolemid |2998|
 :pattern ( ($IsBox bx@@7 Tclass.ExternModuleWithOneClassToImport.NonShareableBox))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)))
 :qid |unknown.0:0|
 :skolemid |3000|
 :pattern ( ($IsBox bx@@8 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.ExternalClassContainer.ExternalClass?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.ExternalClassContainer.ExternalClass?)))
 :qid |unknown.0:0|
 :skolemid |3003|
 :pattern ( ($IsBox bx@@9 Tclass.ExternalClassContainer.ExternalClass?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.ExternalClassContainer.GetValueHolder?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.ExternalClassContainer.GetValueHolder?)))
 :qid |unknown.0:0|
 :skolemid |3009|
 :pattern ( ($IsBox bx@@10 Tclass.ExternalClassContainer.GetValueHolder?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.ExternalClassContainer.GetValueHolder) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass.ExternalClassContainer.GetValueHolder)))
 :qid |unknown.0:0|
 :skolemid |3012|
 :pattern ( ($IsBox bx@@11 Tclass.ExternalClassContainer.GetValueHolder))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.ExternalClassContainer.ExternalPartialClass?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass.ExternalClassContainer.ExternalPartialClass?)))
 :qid |unknown.0:0|
 :skolemid |3017|
 :pattern ( ($IsBox bx@@12 Tclass.ExternalClassContainer.ExternalPartialClass?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.ExternalClassContainer.ExternalPartialClass2?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass.ExternalClassContainer.ExternalPartialClass2?)))
 :qid |unknown.0:0|
 :skolemid |3027|
 :pattern ( ($IsBox bx@@13 Tclass.ExternalClassContainer.ExternalPartialClass2?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?)))
 :qid |unknown.0:0|
 :skolemid |3040|
 :pattern ( ($IsBox bx@@14 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule)))
 :qid |unknown.0:0|
 :skolemid |3044|
 :pattern ( ($IsBox bx@@15 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.ExternalClassContainer.ExternalClass)  (and ($Is refType |c#0@@5| Tclass.ExternalClassContainer.ExternalClass?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3007|
 :pattern ( ($Is refType |c#0@@5| Tclass.ExternalClassContainer.ExternalClass))
 :pattern ( ($Is refType |c#0@@5| Tclass.ExternalClassContainer.ExternalClass?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.ExternalClassContainer.GetValueHolder)  (and ($Is refType |c#0@@6| Tclass.ExternalClassContainer.GetValueHolder?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3015|
 :pattern ( ($Is refType |c#0@@6| Tclass.ExternalClassContainer.GetValueHolder))
 :pattern ( ($Is refType |c#0@@6| Tclass.ExternalClassContainer.GetValueHolder?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass.ExternalClassContainer.ExternalPartialClass)  (and ($Is refType |c#0@@7| Tclass.ExternalClassContainer.ExternalPartialClass?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3025|
 :pattern ( ($Is refType |c#0@@7| Tclass.ExternalClassContainer.ExternalPartialClass))
 :pattern ( ($Is refType |c#0@@7| Tclass.ExternalClassContainer.ExternalPartialClass?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass.ExternalClassContainer.ExternalPartialClass2)  (and ($Is refType |c#0@@8| Tclass.ExternalClassContainer.ExternalPartialClass2?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3037|
 :pattern ( ($Is refType |c#0@@8| Tclass.ExternalClassContainer.ExternalPartialClass2))
 :pattern ( ($Is refType |c#0@@8| Tclass.ExternalClassContainer.ExternalPartialClass2?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule)  (and ($Is refType |c#0@@9| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3048|
 :pattern ( ($Is refType |c#0@@9| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
 :pattern ( ($Is refType |c#0@@9| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass.ExternModuleWithOneClassToImport.NonShareableBox)  (and ($Is refType |c#0@@10| Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3064|
 :pattern ( ($Is refType |c#0@@10| Tclass.ExternModuleWithOneClassToImport.NonShareableBox))
 :pattern ( ($Is refType |c#0@@10| Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2730|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall (($o@@9 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@9 Tclass.ExternalClassContainer.ExternalPartialClass? $heap) ($IsAlloc refType $o@@9 Tclass.ExternalClassContainer.GetValueHolder? $heap))
 :qid |unknown.0:0|
 :skolemid |3072|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.ExternalClassContainer.ExternalPartialClass? $heap))
)))
(assert (forall (($o@@10 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@10 Tclass.ExternalClassContainer.ExternalPartialClass2? $heap@@0) ($IsAlloc refType $o@@10 Tclass.ExternalClassContainer.GetValueHolder? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3076|
 :pattern ( ($IsAlloc refType $o@@10 Tclass.ExternalClassContainer.ExternalPartialClass2? $heap@@0))
)))
(assert (forall (($o@@11 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $heap@@1) ($IsAlloc refType $o@@11 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3080|
 :pattern ( ($IsAlloc refType $o@@11 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $heap@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |2746|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2622|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 TChar) (and (= ($Box charType ($Unbox charType bx@@16)) bx@@16) ($Is charType ($Unbox charType bx@@16) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2535|
 :pattern ( ($IsBox bx@@16 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2543|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2726|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2578|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2579|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2512|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2513|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2530|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |2526|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3084|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2728|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.ExternModuleWithOneClassToImport.NonShareableBox))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@13 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (= $o@@13 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@13) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |3053|
)) (= (ExternModuleWithOneClassToImport.NonShareableBox.Get $h0 this@@2) (ExternModuleWithOneClassToImport.NonShareableBox.Get $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3054|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ExternModuleWithOneClassToImport.NonShareableBox.Get $h1 this@@2))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.ExternModuleWithOneClassToImport.NonShareableBox))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@14 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (= $o@@14 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@14) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@14) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |3059|
)) (= (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $h0@@0 this@@3) (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3060|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $h1@@0 this@@3))
)))
(assert (forall ((bx@@17 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@17 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@17)) bx@@17) ($Is SeqType ($Unbox SeqType bx@@17) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2540|
 :pattern ( ($IsBox bx@@17 (TSeq t@@6)))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass.ExternalClassContainer.ExternalPartialClass?) ($Is refType $o@@15 Tclass.ExternalClassContainer.GetValueHolder?))
 :qid |unknown.0:0|
 :skolemid |3071|
 :pattern ( ($Is refType $o@@15 Tclass.ExternalClassContainer.ExternalPartialClass?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass.ExternalClassContainer.ExternalPartialClass?) ($IsBox bx@@18 Tclass.ExternalClassContainer.GetValueHolder?))
 :qid |unknown.0:0|
 :skolemid |3069|
 :pattern ( ($IsBox bx@@18 Tclass.ExternalClassContainer.ExternalPartialClass?))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass.ExternalClassContainer.ExternalPartialClass2?) ($Is refType $o@@16 Tclass.ExternalClassContainer.GetValueHolder?))
 :qid |unknown.0:0|
 :skolemid |3075|
 :pattern ( ($Is refType $o@@16 Tclass.ExternalClassContainer.ExternalPartialClass2?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass.ExternalClassContainer.ExternalPartialClass2?) ($IsBox bx@@19 Tclass.ExternalClassContainer.GetValueHolder?))
 :qid |unknown.0:0|
 :skolemid |3073|
 :pattern ( ($IsBox bx@@19 Tclass.ExternalClassContainer.ExternalPartialClass2?))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) ($Is refType $o@@17 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
 :qid |unknown.0:0|
 :skolemid |3079|
 :pattern ( ($Is refType $o@@17 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) ($IsBox bx@@20 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
 :qid |unknown.0:0|
 :skolemid |3077|
 :pattern ( ($IsBox bx@@20 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |2527|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalClass) Tagclass.ExternalClassContainer.ExternalClass))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalClass) tytagFamily$ExternalClass))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalPartialClass) Tagclass.ExternalClassContainer.ExternalPartialClass))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalPartialClass) tytagFamily$ExternalPartialClass))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalPartialClass2) Tagclass.ExternalClassContainer.ExternalPartialClass2))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalPartialClass2) tytagFamily$ExternalPartialClass2))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.NonShareableBox) Tagclass.ExternModuleWithOneClassToImport.NonShareableBox))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.NonShareableBox) tytagFamily$NonShareableBox))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) Tagclass.ExternModuleWithOneClassToImport.NonShareableBox?))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) tytagFamily$NonShareableBox))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalClass?) Tagclass.ExternalClassContainer.ExternalClass?))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalClass?) tytagFamily$ExternalClass))
(assert (= (Tag Tclass.ExternalClassContainer.GetValueHolder?) Tagclass.ExternalClassContainer.GetValueHolder?))
(assert (= (TagFamily Tclass.ExternalClassContainer.GetValueHolder?) tytagFamily$GetValueHolder))
(assert (= (Tag Tclass.ExternalClassContainer.GetValueHolder) Tagclass.ExternalClassContainer.GetValueHolder))
(assert (= (TagFamily Tclass.ExternalClassContainer.GetValueHolder) tytagFamily$GetValueHolder))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalPartialClass?) Tagclass.ExternalClassContainer.ExternalPartialClass?))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalPartialClass?) tytagFamily$ExternalPartialClass))
(assert (= (Tag Tclass.ExternalClassContainer.ExternalPartialClass2?) Tagclass.ExternalClassContainer.ExternalPartialClass2?))
(assert (= (TagFamily Tclass.ExternalClassContainer.ExternalPartialClass2?) tytagFamily$ExternalPartialClass2))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) tytagFamily$TraitDefinedInModule))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) tytagFamily$TraitDefinedInModule))
(assert (forall (($o@@18 T@U) ) (! (= ($Is refType $o@@18 Tclass.ExternalClassContainer.GetValueHolder?)  (or (= $o@@18 null) (implements$ExternalClassContainer.GetValueHolder (dtype $o@@18))))
 :qid |unknown.0:0|
 :skolemid |3010|
 :pattern ( ($Is refType $o@@18 Tclass.ExternalClassContainer.GetValueHolder?))
)))
(assert (forall (($o@@19 T@U) ) (! (= ($Is refType $o@@19 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?)  (or (= $o@@19 null) (implements$ExternModuleWithOneClassToImport.TraitDefinedInModule (dtype $o@@19))))
 :qid |unknown.0:0|
 :skolemid |3041|
 :pattern ( ($Is refType $o@@19 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@0 Int) ) (!  (and (=> (< n@@0 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@0) (|Seq#Index| s0@@1 n@@0))) (=> (<= (|Seq#Length| s0@@1) n@@0) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@0) (|Seq#Index| s1@@1 (- n@@0 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |2732|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2523|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2521|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2727|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2569|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@4))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2558|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2559|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2548|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@9 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call2formal@res#0@0| () Int)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |i##1@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |call1formal@i#0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |path##0@0| () T@U)
(declare-fun |call2formal@res#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call2formal@res#0@0@@0| () T@U)
(declare-fun call1formal@this@@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call1formal@this@0@@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun call1formal@this@@1 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call1formal@this@0@@1 () T@U)
(declare-fun |ExternButEverythingImplemented.__default.test#canCall| () Bool)
(declare-fun |defass#j#0| () Bool)
(declare-fun |j#0| () T@U)
(declare-fun |message#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@11| () T@U)
(declare-fun |defass#c2#0| () Bool)
(declare-fun |c2#0| () T@U)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon24_Else_correct true))
(let ((anon24_Then_correct true))
(let ((anon23_Else_correct  (=> (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@9 call1formal@this@0) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) true) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= call1formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call1formal@this@0) Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $Heap@9) (=> (and (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap@9 call1formal@this@0) (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap@9 call1formal@this@0)) (and (=> (= (ControlFlow 0 10) 8) anon24_Then_correct) (=> (= (ControlFlow 0 10) 9) anon24_Else_correct)))))))))
(let ((anon23_Then_correct true))
(let ((anon22_Else_correct  (=> (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.GetOpt $Heap@8 call1formal@this@0) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 78))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) true) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |s##0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (forall (($o@@20 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@20) alloc)))) (= $o@@20 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@20 $f@@2)))
 :qid |externalclassesdfy.99:8|
 :skolemid |3001|
))) (=> (forall (($o@@21 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@21) alloc)))) (= $o@@21 call1formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@21 $f@@3)))
 :qid |externalclassesdfy.99:8|
 :skolemid |3001|
)) (=> (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (=> (and (and (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@9 call1formal@this@0) (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@9 call1formal@this@0) |s##0@0|)) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@22) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@22)) (= $o@@22 call1formal@this@0)))
 :qid |externalclassesdfy.70:31|
 :skolemid |3058|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@22))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= call1formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call1formal@this@0) Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $Heap@9) (=> (and (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@9 call1formal@this@0) (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@9 call1formal@this@0)) (and (=> (= (ControlFlow 0 13) 7) anon23_Then_correct) (=> (= (ControlFlow 0 13) 10) anon23_Else_correct)))))))))))))))))
(let ((anon22_Then_correct true))
(let ((anon21_Else_correct  (=> (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@8 call1formal@this@0) |Seq#Empty|) (and (=> (= (ControlFlow 0 19) (- 0 21)) true) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= call1formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call1formal@this@0) Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $Heap@8) (=> (and (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap@8 call1formal@this@0) (|ExternModuleWithOneClassToImport.NonShareableBox.GetOpt#canCall| $Heap@8 call1formal@this@0)) (and (=> (= (ControlFlow 0 19) 6) anon22_Then_correct) (=> (= (ControlFlow 0 19) 13) anon22_Else_correct)))))))))
(let ((anon21_Then_correct true))
(let ((anon20_Else_correct  (=> (= call1formal@this@0 call1formal@this@0) (and (=> (= (ControlFlow 0 22) (- 0 24)) true) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= call1formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call1formal@this@0) Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $Heap@8) (=> (and (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@8 call1formal@this@0) (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@8 call1formal@this@0)) (and (=> (= (ControlFlow 0 22) 5) anon21_Then_correct) (=> (= (ControlFlow 0 22) 19) anon21_Else_correct)))))))))
(let ((anon20_Then_correct true))
(let ((anon19_Else_correct  (=> (= |call2formal@res#0@0| (LitInt 2)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType call1formal@this Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@@2))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType call1formal@this@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@8))) (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap@8 call1formal@this@0)) (and (and (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@8 call1formal@this@0) |Seq#Empty|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) alloc))))) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@23)))
 :qid |externalclassesdfy.64:5|
 :skolemid |3052|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@23))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 25) (- 0 28)) true) (and (=> (= (ControlFlow 0 25) (- 0 27)) ($Is refType call1formal@this@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox)) (=> ($Is refType call1formal@this@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) (and (=> (= (ControlFlow 0 25) (- 0 26)) true) (and (=> (= (ControlFlow 0 25) 4) anon20_Then_correct) (=> (= (ControlFlow 0 25) 22) anon20_Else_correct)))))))))))
(let ((anon19_Then_correct true))
(let ((anon18_Else_correct  (=> (and (= (LitInt ExternButEverythingImplemented.__default.test) (LitInt 1)) (= |i##1@0| (LitInt 1))) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@24)))
 :qid |externalclassesdfy.50:20|
 :skolemid |3039|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@24))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 29) 3) anon19_Then_correct) (=> (= (ControlFlow 0 29) 25) anon19_Else_correct))))))
(let ((anon18_Then_correct true))
(let ((anon17_Else_correct  (=> (= |call1formal@i#0@0| (LitInt 2)) (=> (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.ExternalClassContainer.ExternalClass) ($IsAlloc refType call2formal@this Tclass.ExternalClassContainer.ExternalClass $Heap@@2))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.ExternalClassContainer.ExternalClass) ($IsAlloc refType call2formal@this@0 Tclass.ExternalClassContainer.ExternalClass $Heap@1)))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) alloc)))) (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25)))
 :qid |externalclassesdfy.7:5|
 :skolemid |3006|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |path##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 121))))))) (and (and ($Is SeqType |call2formal@res#0| (TSeq TChar)) ($IsAlloc SeqType |call2formal@res#0| (TSeq TChar) $Heap@@2)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (=> (and (and (and (and ($Is SeqType |call2formal@res#0@0@@0| (TSeq TChar)) ($IsAlloc SeqType |call2formal@res#0@0@@0| (TSeq TChar) $Heap@2)) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26)))
 :qid |externalclassesdfy.33:10|
 :skolemid |3066|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (and (or (not (= call1formal@this@@0 null)) (not true)) (and ($Is refType call1formal@this@@0 Tclass.ExternalClassContainer.ExternalPartialClass) ($IsAlloc refType call1formal@this@@0 Tclass.ExternalClassContainer.ExternalPartialClass $Heap@@2))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (and (and (and (or (not (= call1formal@this@0@@0 null)) (not true)) (and ($Is refType call1formal@this@0@@0 Tclass.ExternalClassContainer.ExternalPartialClass) ($IsAlloc refType call1formal@this@0@@0 Tclass.ExternalClassContainer.ExternalPartialClass $Heap@3))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@0) alloc))))) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27)))
 :qid |externalclassesdfy.15:5|
 :skolemid |3020|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@27))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 30) (- 0 34)) true) (and (=> (= (ControlFlow 0 30) (- 0 33)) (or (not (= call1formal@this@0@@0 null)) (not true))) (=> (or (not (= call1formal@this@0@@0 null)) (not true)) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28)))
 :qid |externalclassesdfy.17:12|
 :skolemid |3024|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@28))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (and (or (not (= call1formal@this@@1 null)) (not true)) (and ($Is refType call1formal@this@@1 Tclass.ExternalClassContainer.ExternalPartialClass2) ($IsAlloc refType call1formal@this@@1 Tclass.ExternalClassContainer.ExternalPartialClass2 $Heap@@2))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)))) (and (and (and (or (not (= call1formal@this@0@@1 null)) (not true)) (and ($Is refType call1formal@this@0@@1 Tclass.ExternalClassContainer.ExternalPartialClass2) ($IsAlloc refType call1formal@this@0@@1 Tclass.ExternalClassContainer.ExternalPartialClass2 $Heap@5))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0@@1) alloc))))) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@29)))
 :qid |externalclassesdfy.22:5|
 :skolemid |3030|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@29))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 30) (- 0 32)) true) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= call1formal@this@0@@1 null)) (not true))) (=> (or (not (= call1formal@this@0@@1 null)) (not true)) (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@30)))
 :qid |externalclassesdfy.26:12|
 :skolemid |3036|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@30))
)) ($HeapSucc $Heap@5 $Heap@6)) (and |ExternButEverythingImplemented.__default.test#canCall| |ExternButEverythingImplemented.__default.test#canCall|)) (and (=> (= (ControlFlow 0 30) 2) anon18_Then_correct) (=> (= (ControlFlow 0 30) 29) anon18_Else_correct))))))))))))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@31)))
 :qid |externalclassesdfy.9:20|
 :skolemid |3002|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31))
)) ($HeapSucc $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 35) 1) anon17_Then_correct) (=> (= (ControlFlow 0 35) 30) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (=> |defass#j#0| (and ($Is refType |j#0| Tclass.ExternalClassContainer.ExternalClass) ($IsAlloc refType |j#0| Tclass.ExternalClassContainer.ExternalClass $Heap@@2))) true)) (and (and ($Is SeqType |message#0| (TSeq TChar)) ($IsAlloc SeqType |message#0| (TSeq TChar) $Heap@@2)) true)) (and (and (and (=> |defass#c#0| (and ($Is refType |c#0@@11| Tclass.ExternalClassContainer.ExternalPartialClass) ($IsAlloc refType |c#0@@11| Tclass.ExternalClassContainer.ExternalPartialClass $Heap@@2))) true) (and (=> |defass#c2#0| (and ($Is refType |c2#0| Tclass.ExternalClassContainer.ExternalPartialClass2) ($IsAlloc refType |c2#0| Tclass.ExternalClassContainer.ExternalPartialClass2 $Heap@@2))) true)) (and (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType |n#0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@@2))) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 36) 35))))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
