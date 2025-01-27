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
(declare-fun Tagclass.Methods.Trait () T@U)
(declare-fun Tagclass.Methods.UberTrait () T@U)
(declare-fun Tagclass.Methods.InBetween () T@U)
(declare-fun Tagclass.Methods.UberTrait? () T@U)
(declare-fun Tagclass.Methods.InBetween? () T@U)
(declare-fun Tagclass.Methods.Trait? () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$UberTrait () T@U)
(declare-fun tytagFamily$InBetween () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Methods.UberTrait (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait? (T@U) T@U)
(declare-fun Tclass.Methods.InBetween (T@U) T@U)
(declare-fun Tclass.Methods.InBetween? (T@U) T@U)
(declare-fun Tclass.Methods.Trait (T@U) T@U)
(declare-fun Tclass.Methods.Trait? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.Methods.Trait_0 (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait_0 (T@U) T@U)
(declare-fun Tclass.Methods.InBetween_0 (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait?_0 (T@U) T@U)
(declare-fun Tclass.Methods.InBetween?_0 (T@U) T@U)
(declare-fun Tclass.Methods.Trait?_0 (T@U) T@U)
(declare-fun implements$Methods.UberTrait (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$Methods.InBetween (T@U T@U) Bool)
(declare-fun implements$Methods.Trait (T@U T@U) Bool)
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
(assert (distinct alloc Tagclass.Methods.Trait Tagclass.Methods.UberTrait Tagclass.Methods.InBetween Tagclass.Methods.UberTrait? Tagclass.Methods.InBetween? Tagclass.Methods.Trait? tytagFamily$Trait tytagFamily$UberTrait tytagFamily$InBetween)
)
(assert (= (Ctor refType) 3))
(assert (forall ((Methods.UberTrait$Au T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Methods.UberTrait Methods.UberTrait$Au) $h) ($IsAlloc refType |c#0| (Tclass.Methods.UberTrait? Methods.UberTrait$Au) $h))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Methods.UberTrait Methods.UberTrait$Au) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Methods.UberTrait? Methods.UberTrait$Au) $h))
)))
(assert (forall ((Methods.InBetween$Ai T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.Methods.InBetween Methods.InBetween$Ai) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.Methods.InBetween? Methods.InBetween$Ai) $h@@0))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Methods.InBetween Methods.InBetween$Ai) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.Methods.InBetween? Methods.InBetween$Ai) $h@@0))
)))
(assert (forall ((Methods.Trait$At T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.Methods.Trait Methods.Trait$At) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.Methods.Trait? Methods.Trait$At) $h@@1))
 :qid |unknown.0:0|
 :skolemid |789|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Methods.Trait Methods.Trait$At) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Methods.Trait? Methods.Trait$At) $h@@1))
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
(assert (forall ((Methods.UberTrait$Au@@0 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@0) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( ($IsAlloc refType $o (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@0) $h@@2))
)))
(assert (forall ((Methods.InBetween$Ai@@0 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@0) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@0) $h@@3))
)))
(assert (forall ((Methods.Trait$At@@0 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Methods.Trait? Methods.Trait$At@@0) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Methods.Trait? Methods.Trait$At@@0) $h@@4))
)))
(assert (forall ((Methods.InBetween$Ai@@1 T@U) ($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@1)) ($Is refType $o@@2 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@1)))
 :qid |unknown.0:0|
 :skolemid |822|
 :pattern ( ($Is refType $o@@2 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@1)))
)))
(assert (forall ((Methods.InBetween$Ai@@2 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.Methods.InBetween? Methods.InBetween$Ai@@2)) ($IsBox bx (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@2)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($IsBox bx (Tclass.Methods.InBetween? Methods.InBetween$Ai@@2)))
)))
(assert (forall ((Methods.Trait$At@@1 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.Methods.Trait? Methods.Trait$At@@1)) ($Is refType $o@@3 (Tclass.Methods.InBetween? Methods.Trait$At@@1)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( ($Is refType $o@@3 (Tclass.Methods.Trait? Methods.Trait$At@@1)))
)))
(assert (forall ((Methods.Trait$At@@2 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Methods.Trait? Methods.Trait$At@@2)) ($IsBox bx@@0 (Tclass.Methods.InBetween? Methods.Trait$At@@2)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsBox bx@@0 (Tclass.Methods.Trait? Methods.Trait$At@@2)))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((Methods.UberTrait$Au@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.Methods.UberTrait Methods.UberTrait$Au@@1))  (and ($Is refType |c#0@@2| (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($Is refType |c#0@@2| (Tclass.Methods.UberTrait Methods.UberTrait$Au@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@1)))
)))
(assert (forall ((Methods.InBetween$Ai@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Methods.InBetween Methods.InBetween$Ai@@3))  (and ($Is refType |c#0@@3| (Tclass.Methods.InBetween? Methods.InBetween$Ai@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Methods.InBetween Methods.InBetween$Ai@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Methods.InBetween? Methods.InBetween$Ai@@3)))
)))
(assert (forall ((Methods.Trait$At@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.Methods.Trait Methods.Trait$At@@3))  (and ($Is refType |c#0@@4| (Tclass.Methods.Trait? Methods.Trait$At@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($Is refType |c#0@@4| (Tclass.Methods.Trait Methods.Trait$At@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.Methods.Trait? Methods.Trait$At@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((Methods.Trait$At@@4 T@U) ) (!  (and (= (Tag (Tclass.Methods.Trait Methods.Trait$At@@4)) Tagclass.Methods.Trait) (= (TagFamily (Tclass.Methods.Trait Methods.Trait$At@@4)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( (Tclass.Methods.Trait Methods.Trait$At@@4))
)))
(assert (forall ((Methods.UberTrait$Au@@2 T@U) ) (!  (and (= (Tag (Tclass.Methods.UberTrait Methods.UberTrait$Au@@2)) Tagclass.Methods.UberTrait) (= (TagFamily (Tclass.Methods.UberTrait Methods.UberTrait$Au@@2)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (Tclass.Methods.UberTrait Methods.UberTrait$Au@@2))
)))
(assert (forall ((Methods.InBetween$Ai@@4 T@U) ) (!  (and (= (Tag (Tclass.Methods.InBetween Methods.InBetween$Ai@@4)) Tagclass.Methods.InBetween) (= (TagFamily (Tclass.Methods.InBetween Methods.InBetween$Ai@@4)) tytagFamily$InBetween))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (Tclass.Methods.InBetween Methods.InBetween$Ai@@4))
)))
(assert (forall ((Methods.UberTrait$Au@@3 T@U) ) (!  (and (= (Tag (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@3)) Tagclass.Methods.UberTrait?) (= (TagFamily (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@3)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@3))
)))
(assert (forall ((Methods.InBetween$Ai@@5 T@U) ) (!  (and (= (Tag (Tclass.Methods.InBetween? Methods.InBetween$Ai@@5)) Tagclass.Methods.InBetween?) (= (TagFamily (Tclass.Methods.InBetween? Methods.InBetween$Ai@@5)) tytagFamily$InBetween))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( (Tclass.Methods.InBetween? Methods.InBetween$Ai@@5))
)))
(assert (forall ((Methods.Trait$At@@5 T@U) ) (!  (and (= (Tag (Tclass.Methods.Trait? Methods.Trait$At@@5)) Tagclass.Methods.Trait?) (= (TagFamily (Tclass.Methods.Trait? Methods.Trait$At@@5)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( (Tclass.Methods.Trait? Methods.Trait$At@@5))
)))
(assert (forall ((Methods.InBetween$Ai@@6 T@U) (bx@@2 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@6) $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@2 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@6) $h@@5))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( ($IsAllocBox bx@@2 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@6) $h@@5))
)))
(assert (forall ((Methods.Trait$At@@6 T@U) (bx@@3 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 (Tclass.Methods.Trait? Methods.Trait$At@@6) $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx@@3 (Tclass.Methods.InBetween? Methods.Trait$At@@6) $h@@6))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAllocBox bx@@3 (Tclass.Methods.Trait? Methods.Trait$At@@6) $h@@6))
)))
(assert (forall ((Methods.InBetween$Ai@@7 T@U) ($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@7) $heap) ($IsAlloc refType $o@@4 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@7) $heap))
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@7) $heap))
)))
(assert (forall ((Methods.Trait$At@@7 T@U) ($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 (Tclass.Methods.Trait? Methods.Trait$At@@7) $heap@@0) ($IsAlloc refType $o@@5 (Tclass.Methods.InBetween? Methods.Trait$At@@7) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.Methods.Trait? Methods.Trait$At@@7) $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((Methods.Trait$At@@8 T@U) ) (! (= (Tclass.Methods.Trait_0 (Tclass.Methods.Trait Methods.Trait$At@@8)) Methods.Trait$At@@8)
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (Tclass.Methods.Trait Methods.Trait$At@@8))
)))
(assert (forall ((Methods.UberTrait$Au@@4 T@U) ) (! (= (Tclass.Methods.UberTrait_0 (Tclass.Methods.UberTrait Methods.UberTrait$Au@@4)) Methods.UberTrait$Au@@4)
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( (Tclass.Methods.UberTrait Methods.UberTrait$Au@@4))
)))
(assert (forall ((Methods.InBetween$Ai@@8 T@U) ) (! (= (Tclass.Methods.InBetween_0 (Tclass.Methods.InBetween Methods.InBetween$Ai@@8)) Methods.InBetween$Ai@@8)
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (Tclass.Methods.InBetween Methods.InBetween$Ai@@8))
)))
(assert (forall ((Methods.UberTrait$Au@@5 T@U) ) (! (= (Tclass.Methods.UberTrait?_0 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@5)) Methods.UberTrait$Au@@5)
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@5))
)))
(assert (forall ((Methods.InBetween$Ai@@9 T@U) ) (! (= (Tclass.Methods.InBetween?_0 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@9)) Methods.InBetween$Ai@@9)
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (Tclass.Methods.InBetween? Methods.InBetween$Ai@@9))
)))
(assert (forall ((Methods.Trait$At@@9 T@U) ) (! (= (Tclass.Methods.Trait?_0 (Tclass.Methods.Trait? Methods.Trait$At@@9)) Methods.Trait$At@@9)
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( (Tclass.Methods.Trait? Methods.Trait$At@@9))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((Methods.UberTrait$Au@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@6))  (or (= $o@@6 null) (implements$Methods.UberTrait (dtype $o@@6) Methods.UberTrait$Au@@6)))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( ($Is refType $o@@6 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@6)))
)))
(assert (forall ((Methods.InBetween$Ai@@10 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@10))  (or (= $o@@7 null) (implements$Methods.InBetween (dtype $o@@7) Methods.InBetween$Ai@@10)))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($Is refType $o@@7 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@10)))
)))
(assert (forall ((Methods.Trait$At@@10 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass.Methods.Trait? Methods.Trait$At@@10))  (or (= $o@@8 null) (implements$Methods.Trait (dtype $o@@8) Methods.Trait$At@@10)))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType $o@@8 (Tclass.Methods.Trait? Methods.Trait$At@@10)))
)))
(assert (forall ((Methods.Trait$At@@11 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Methods.Trait Methods.Trait$At@@11)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.Methods.Trait Methods.Trait$At@@11))))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsBox bx@@4 (Tclass.Methods.Trait Methods.Trait$At@@11)))
)))
(assert (forall ((Methods.UberTrait$Au@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7))))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($IsBox bx@@5 (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7)))
)))
(assert (forall ((Methods.InBetween$Ai@@11 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Methods.InBetween Methods.InBetween$Ai@@11)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.Methods.InBetween Methods.InBetween$Ai@@11))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsBox bx@@6 (Tclass.Methods.InBetween Methods.InBetween$Ai@@11)))
)))
(assert (forall ((Methods.UberTrait$Au@@8 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8))))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( ($IsBox bx@@7 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8)))
)))
(assert (forall ((Methods.InBetween$Ai@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12))))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($IsBox bx@@8 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12)))
)))
(assert (forall ((Methods.Trait$At@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Methods.Trait? Methods.Trait$At@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.Methods.Trait? Methods.Trait$At@@12))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( ($IsBox bx@@9 (Tclass.Methods.Trait? Methods.Trait$At@@12)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Methods.UberTrait$Au@@9 () T@U)
(declare-fun Methods.Trait$At@@13 () T@U)
(declare-fun Methods.UberTrait.InstanceU2$Bu () T@U)
(declare-fun Methods.Trait.InstanceU2$Bt () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$Methods.Trait.InstanceU2)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (= Methods.UberTrait$Au@@9 Methods.Trait$At@@13) (= Methods.UberTrait.InstanceU2$Bu Methods.Trait.InstanceU2$Bt)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@9 T@U) ($f T@U) ) (! true
 :qid |MoreAutoInitdfy.34:12|
 :skolemid |775|
))) (=> (forall (($o@@10 T@U) ($f@@0 T@U) ) (! true
 :qid |MoreAutoInitdfy.34:12|
 :skolemid |775|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@11 T@U) ($f@@1 T@U) ) (! true
 :qid |MoreAutoInitdfy.34:12|
 :skolemid |776|
)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.Methods.Trait Methods.Trait$At@@13)) ($IsAlloc refType this (Tclass.Methods.Trait Methods.Trait$At@@13) $Heap))) (and ($IsBox |a#0| Methods.Trait$At@@13) ($IsAllocBox |a#0| Methods.Trait$At@@13 $Heap))) (=> (and (and (and ($IsBox |b#0| Methods.Trait.InstanceU2$Bt) ($IsAllocBox |b#0| Methods.Trait.InstanceU2$Bt $Heap)) (and ($IsBox |aa#0| Methods.Trait$At@@13) ($IsAllocBox |aa#0| Methods.Trait$At@@13 $Heap))) (and (and ($IsBox |bb#0| Methods.Trait.InstanceU2$Bt) ($IsAllocBox |bb#0| Methods.Trait.InstanceU2$Bt $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))) anon0_correct)))))
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
