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
(declare-fun Tagclass.Methods.Class () T@U)
(declare-fun Tagclass.Methods.Class? () T@U)
(declare-fun Tagclass.Methods.Trait () T@U)
(declare-fun Tagclass.Methods.UberTrait () T@U)
(declare-fun Tagclass.Methods.InBetween () T@U)
(declare-fun Tagclass.Methods.Datatype () T@U)
(declare-fun |##Methods.Datatype.Dt0| () T@U)
(declare-fun Tagclass.Methods.UberTrait? () T@U)
(declare-fun Tagclass.Methods.InBetween? () T@U)
(declare-fun Tagclass.Methods.Trait? () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$UberTrait () T@U)
(declare-fun tytagFamily$InBetween () T@U)
(declare-fun tytagFamily$Datatype () T@U)
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
(declare-fun implements$Methods.Trait (T@U T@U) Bool)
(declare-fun Tclass.Methods.Class? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Methods.UberTrait (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait? (T@U) T@U)
(declare-fun Tclass.Methods.InBetween (T@U) T@U)
(declare-fun Tclass.Methods.InBetween? (T@U) T@U)
(declare-fun Tclass.Methods.Trait (T@U) T@U)
(declare-fun Tclass.Methods.Trait? (T@U) T@U)
(declare-fun Tclass.Methods.Class (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Methods.Datatype.Dt0| () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Methods.Datatype (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Methods.Class_0 (T@U) T@U)
(declare-fun Tclass.Methods.Class?_0 (T@U) T@U)
(declare-fun Tclass.Methods.Trait_0 (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait_0 (T@U) T@U)
(declare-fun Tclass.Methods.InBetween_0 (T@U) T@U)
(declare-fun Tclass.Methods.Datatype_0 (T@U) T@U)
(declare-fun Tclass.Methods.UberTrait?_0 (T@U) T@U)
(declare-fun Tclass.Methods.InBetween?_0 (T@U) T@U)
(declare-fun Tclass.Methods.Trait?_0 (T@U) T@U)
(declare-fun implements$Methods.UberTrait (T@U T@U) Bool)
(declare-fun implements$Methods.InBetween (T@U T@U) Bool)
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
(assert (distinct alloc Tagclass.Methods.Class Tagclass.Methods.Class? Tagclass.Methods.Trait Tagclass.Methods.UberTrait Tagclass.Methods.InBetween Tagclass.Methods.Datatype |##Methods.Datatype.Dt0| Tagclass.Methods.UberTrait? Tagclass.Methods.InBetween? Tagclass.Methods.Trait? tytagFamily$Class tytagFamily$Trait tytagFamily$UberTrait tytagFamily$InBetween tytagFamily$Datatype)
)
(assert (forall ((Methods.Class$Ac T@U) ) (! (implements$Methods.Trait (Tclass.Methods.Class? Methods.Class$Ac) Methods.Class$Ac)
 :qid |unknown.0:0|
 :skolemid |792|
)))
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
(assert (forall ((Methods.Class$Ac@@0 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.Methods.Class Methods.Class$Ac@@0) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.Methods.Class? Methods.Class$Ac@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Methods.Class Methods.Class$Ac@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Methods.Class? Methods.Class$Ac@@0) $h@@2))
)))
(assert (= (DatatypeCtorId |#Methods.Datatype.Dt0|) |##Methods.Datatype.Dt0|))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((Methods.Datatype$Ad T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#Methods.Datatype.Dt0| (Tclass.Methods.Datatype Methods.Datatype$Ad) $h@@3))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc DatatypeTypeType |#Methods.Datatype.Dt0| (Tclass.Methods.Datatype Methods.Datatype$Ad) $h@@3))
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
(assert (forall ((Methods.UberTrait$Au@@0 T@U) ($o T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@0) $h@@4)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( ($IsAlloc refType $o (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@0) $h@@4))
)))
(assert (forall ((Methods.InBetween$Ai@@0 T@U) ($o@@0 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@0) $h@@5)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@0) $h@@5))
)))
(assert (forall ((Methods.Trait$At@@0 T@U) ($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Methods.Trait? Methods.Trait$At@@0) $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Methods.Trait? Methods.Trait$At@@0) $h@@6))
)))
(assert (forall ((Methods.Class$Ac@@1 T@U) ($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.Methods.Class? Methods.Class$Ac@@1) $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |791|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.Methods.Class? Methods.Class$Ac@@1) $h@@7))
)))
(assert (forall ((Methods.InBetween$Ai@@1 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@1)) ($Is refType $o@@3 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@1)))
 :qid |unknown.0:0|
 :skolemid |822|
 :pattern ( ($Is refType $o@@3 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@1)))
)))
(assert (forall ((Methods.InBetween$Ai@@2 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.Methods.InBetween? Methods.InBetween$Ai@@2)) ($IsBox bx (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@2)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($IsBox bx (Tclass.Methods.InBetween? Methods.InBetween$Ai@@2)))
)))
(assert (forall ((Methods.Trait$At@@1 T@U) ($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 (Tclass.Methods.Trait? Methods.Trait$At@@1)) ($Is refType $o@@4 (Tclass.Methods.InBetween? Methods.Trait$At@@1)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( ($Is refType $o@@4 (Tclass.Methods.Trait? Methods.Trait$At@@1)))
)))
(assert (forall ((Methods.Trait$At@@2 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Methods.Trait? Methods.Trait$At@@2)) ($IsBox bx@@0 (Tclass.Methods.InBetween? Methods.Trait$At@@2)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsBox bx@@0 (Tclass.Methods.Trait? Methods.Trait$At@@2)))
)))
(assert (forall ((Methods.Class$Ac@@2 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass.Methods.Class? Methods.Class$Ac@@2)) ($Is refType $o@@5 (Tclass.Methods.Trait? Methods.Class$Ac@@2)))
 :qid |unknown.0:0|
 :skolemid |830|
 :pattern ( ($Is refType $o@@5 (Tclass.Methods.Class? Methods.Class$Ac@@2)))
)))
(assert (forall ((Methods.Class$Ac@@3 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.Methods.Class? Methods.Class$Ac@@3)) ($IsBox bx@@1 (Tclass.Methods.Trait? Methods.Class$Ac@@3)))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( ($IsBox bx@@1 (Tclass.Methods.Class? Methods.Class$Ac@@3)))
)))
(assert (forall ((Methods.Datatype$Ad@@0 T@U) ) (! ($Is DatatypeTypeType |#Methods.Datatype.Dt0| (Tclass.Methods.Datatype Methods.Datatype$Ad@@0))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($Is DatatypeTypeType |#Methods.Datatype.Dt0| (Tclass.Methods.Datatype Methods.Datatype$Ad@@0)))
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
(assert (forall ((Methods.UberTrait$Au@@1 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Methods.UberTrait Methods.UberTrait$Au@@1))  (and ($Is refType |c#0@@3| (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@1)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Methods.UberTrait Methods.UberTrait$Au@@1)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@1)))
)))
(assert (forall ((Methods.InBetween$Ai@@3 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.Methods.InBetween Methods.InBetween$Ai@@3))  (and ($Is refType |c#0@@4| (Tclass.Methods.InBetween? Methods.InBetween$Ai@@3)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($Is refType |c#0@@4| (Tclass.Methods.InBetween Methods.InBetween$Ai@@3)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.Methods.InBetween? Methods.InBetween$Ai@@3)))
)))
(assert (forall ((Methods.Trait$At@@3 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass.Methods.Trait Methods.Trait$At@@3))  (and ($Is refType |c#0@@5| (Tclass.Methods.Trait? Methods.Trait$At@@3)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($Is refType |c#0@@5| (Tclass.Methods.Trait Methods.Trait$At@@3)))
 :pattern ( ($Is refType |c#0@@5| (Tclass.Methods.Trait? Methods.Trait$At@@3)))
)))
(assert (forall ((Methods.Class$Ac@@4 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass.Methods.Class Methods.Class$Ac@@4))  (and ($Is refType |c#0@@6| (Tclass.Methods.Class? Methods.Class$Ac@@4)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($Is refType |c#0@@6| (Tclass.Methods.Class Methods.Class$Ac@@4)))
 :pattern ( ($Is refType |c#0@@6| (Tclass.Methods.Class? Methods.Class$Ac@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((Methods.Class$Ac@@5 T@U) ) (!  (and (= (Tag (Tclass.Methods.Class Methods.Class$Ac@@5)) Tagclass.Methods.Class) (= (TagFamily (Tclass.Methods.Class Methods.Class$Ac@@5)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (Tclass.Methods.Class Methods.Class$Ac@@5))
)))
(assert (forall ((Methods.Class$Ac@@6 T@U) ) (!  (and (= (Tag (Tclass.Methods.Class? Methods.Class$Ac@@6)) Tagclass.Methods.Class?) (= (TagFamily (Tclass.Methods.Class? Methods.Class$Ac@@6)) tytagFamily$Class))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( (Tclass.Methods.Class? Methods.Class$Ac@@6))
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
(assert (forall ((Methods.Datatype$Ad@@1 T@U) ) (!  (and (= (Tag (Tclass.Methods.Datatype Methods.Datatype$Ad@@1)) Tagclass.Methods.Datatype) (= (TagFamily (Tclass.Methods.Datatype Methods.Datatype$Ad@@1)) tytagFamily$Datatype))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( (Tclass.Methods.Datatype Methods.Datatype$Ad@@1))
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
(assert (forall ((Methods.Class$Ac@@7 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.Methods.Class? Methods.Class$Ac@@7))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.Methods.Class? Methods.Class$Ac@@7))))
 :qid |unknown.0:0|
 :skolemid |790|
 :pattern ( ($Is refType $o@@6 (Tclass.Methods.Class? Methods.Class$Ac@@7)))
)))
(assert (forall ((Methods.InBetween$Ai@@6 T@U) (bx@@3 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@6) $h@@8) ($IsGoodHeap $h@@8)) ($IsAllocBox bx@@3 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@6) $h@@8))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( ($IsAllocBox bx@@3 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@6) $h@@8))
)))
(assert (forall ((Methods.Trait$At@@6 T@U) (bx@@4 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 (Tclass.Methods.Trait? Methods.Trait$At@@6) $h@@9) ($IsGoodHeap $h@@9)) ($IsAllocBox bx@@4 (Tclass.Methods.InBetween? Methods.Trait$At@@6) $h@@9))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAllocBox bx@@4 (Tclass.Methods.Trait? Methods.Trait$At@@6) $h@@9))
)))
(assert (forall ((Methods.Class$Ac@@8 T@U) (bx@@5 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsAllocBox bx@@5 (Tclass.Methods.Class? Methods.Class$Ac@@8) $h@@10) ($IsGoodHeap $h@@10)) ($IsAllocBox bx@@5 (Tclass.Methods.Trait? Methods.Class$Ac@@8) $h@@10))
 :qid |unknown.0:0|
 :skolemid |829|
 :pattern ( ($IsAllocBox bx@@5 (Tclass.Methods.Class? Methods.Class$Ac@@8) $h@@10))
)))
(assert (forall ((Methods.InBetween$Ai@@7 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@7) $heap) ($IsAlloc refType $o@@7 (Tclass.Methods.UberTrait? Methods.InBetween$Ai@@7) $heap))
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@7) $heap))
)))
(assert (forall ((Methods.Trait$At@@7 T@U) ($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 (Tclass.Methods.Trait? Methods.Trait$At@@7) $heap@@0) ($IsAlloc refType $o@@8 (Tclass.Methods.InBetween? Methods.Trait$At@@7) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass.Methods.Trait? Methods.Trait$At@@7) $heap@@0))
)))
(assert (forall ((Methods.Class$Ac@@9 T@U) ($o@@9 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@9 (Tclass.Methods.Class? Methods.Class$Ac@@9) $heap@@1) ($IsAlloc refType $o@@9 (Tclass.Methods.Trait? Methods.Class$Ac@@9) $heap@@1))
 :qid |unknown.0:0|
 :skolemid |831|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass.Methods.Class? Methods.Class$Ac@@9) $heap@@1))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((Methods.Class$Ac@@10 T@U) ) (! (= (Tclass.Methods.Class_0 (Tclass.Methods.Class Methods.Class$Ac@@10)) Methods.Class$Ac@@10)
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (Tclass.Methods.Class Methods.Class$Ac@@10))
)))
(assert (forall ((Methods.Class$Ac@@11 T@U) ) (! (= (Tclass.Methods.Class?_0 (Tclass.Methods.Class? Methods.Class$Ac@@11)) Methods.Class$Ac@@11)
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (Tclass.Methods.Class? Methods.Class$Ac@@11))
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
(assert (forall ((Methods.Datatype$Ad@@2 T@U) ) (! (= (Tclass.Methods.Datatype_0 (Tclass.Methods.Datatype Methods.Datatype$Ad@@2)) Methods.Datatype$Ad@@2)
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (Tclass.Methods.Datatype Methods.Datatype$Ad@@2))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((Methods.UberTrait$Au@@6 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@6))  (or (= $o@@10 null) (implements$Methods.UberTrait (dtype $o@@10) Methods.UberTrait$Au@@6)))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( ($Is refType $o@@10 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@6)))
)))
(assert (forall ((Methods.InBetween$Ai@@10 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@10))  (or (= $o@@11 null) (implements$Methods.InBetween (dtype $o@@11) Methods.InBetween$Ai@@10)))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($Is refType $o@@11 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@10)))
)))
(assert (forall ((Methods.Trait$At@@10 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass.Methods.Trait? Methods.Trait$At@@10))  (or (= $o@@12 null) (implements$Methods.Trait (dtype $o@@12) Methods.Trait$At@@10)))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType $o@@12 (Tclass.Methods.Trait? Methods.Trait$At@@10)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5453|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((Methods.Class$Ac@@12 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Methods.Class Methods.Class$Ac@@12)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.Methods.Class Methods.Class$Ac@@12))))
 :qid |unknown.0:0|
 :skolemid |669|
 :pattern ( ($IsBox bx@@6 (Tclass.Methods.Class Methods.Class$Ac@@12)))
)))
(assert (forall ((Methods.Class$Ac@@13 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.Methods.Class? Methods.Class$Ac@@13)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.Methods.Class? Methods.Class$Ac@@13))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsBox bx@@7 (Tclass.Methods.Class? Methods.Class$Ac@@13)))
)))
(assert (forall ((Methods.Trait$At@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.Methods.Trait Methods.Trait$At@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.Methods.Trait Methods.Trait$At@@11))))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsBox bx@@8 (Tclass.Methods.Trait Methods.Trait$At@@11)))
)))
(assert (forall ((Methods.UberTrait$Au@@7 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7))))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($IsBox bx@@9 (Tclass.Methods.UberTrait Methods.UberTrait$Au@@7)))
)))
(assert (forall ((Methods.InBetween$Ai@@11 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.Methods.InBetween Methods.InBetween$Ai@@11)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.Methods.InBetween Methods.InBetween$Ai@@11))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsBox bx@@10 (Tclass.Methods.InBetween Methods.InBetween$Ai@@11)))
)))
(assert (forall ((Methods.Datatype$Ad@@3 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.Methods.Datatype Methods.Datatype$Ad@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass.Methods.Datatype Methods.Datatype$Ad@@3))))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( ($IsBox bx@@11 (Tclass.Methods.Datatype Methods.Datatype$Ad@@3)))
)))
(assert (forall ((Methods.UberTrait$Au@@8 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8))))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( ($IsBox bx@@12 (Tclass.Methods.UberTrait? Methods.UberTrait$Au@@8)))
)))
(assert (forall ((Methods.InBetween$Ai@@12 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12))))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($IsBox bx@@13 (Tclass.Methods.InBetween? Methods.InBetween$Ai@@12)))
)))
(assert (forall ((Methods.Trait$At@@12 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.Methods.Trait? Methods.Trait$At@@12)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass.Methods.Trait? Methods.Trait$At@@12))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( ($IsBox bx@@14 (Tclass.Methods.Trait? Methods.Trait$At@@12)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= |#Methods.Datatype.Dt0| (Lit DatatypeTypeType |#Methods.Datatype.Dt0|)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun Methods._default.Test$X () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |d#0@0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |n#0@0| () Int)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun Methods._default.Test$Y () T@U)
(declare-fun |call4formal@bb#0| () T@U)
(declare-fun call0formal@Methods.Newtype.InstanceN$Bn () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call4formal@bb#0@0| () T@U)
(declare-fun |call3formal@bb#0| () T@U)
(declare-fun call0formal@Methods.Newtype.StaticN$Bn () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@bb#0@0| () T@U)
(declare-fun |call6formal@aa#0| () T@U)
(declare-fun call0formal@Methods.Datatype$Ad () T@U)
(declare-fun |call7formal@bb#0| () T@U)
(declare-fun call1formal@Methods.Datatype.InstanceD$Bd () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call6formal@aa#0@0| () T@U)
(declare-fun |call7formal@bb#0@0| () T@U)
(declare-fun |call5formal@aa#0| () T@U)
(declare-fun call0formal@Methods.Datatype$Ad@@0 () T@U)
(declare-fun |call6formal@bb#0| () T@U)
(declare-fun call1formal@Methods.Datatype.StaticD$Bd () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call5formal@aa#0@0| () T@U)
(declare-fun |call6formal@bb#0@0| () T@U)
(declare-fun |call6formal@aa#0@@0| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au () T@U)
(declare-fun |call7formal@bb#0@@0| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU0$Bu () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call6formal@aa#0@0@@0| () T@U)
(declare-fun |call7formal@bb#0@0@@0| () T@U)
(declare-fun |call6formal@aa#0@@1| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@0 () T@U)
(declare-fun |call7formal@bb#0@@1| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU1$Bu () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call6formal@aa#0@0@@1| () T@U)
(declare-fun |call7formal@bb#0@0@@1| () T@U)
(declare-fun |call6formal@aa#0@@2| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@1 () T@U)
(declare-fun |call7formal@bb#0@@2| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU2$Bu () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call6formal@aa#0@0@@2| () T@U)
(declare-fun |call7formal@bb#0@0@@2| () T@U)
(declare-fun |call6formal@aa#0@@3| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@2 () T@U)
(declare-fun |call7formal@bb#0@@3| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU3$Bu () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call6formal@aa#0@0@@3| () T@U)
(declare-fun |call7formal@bb#0@0@@3| () T@U)
(declare-fun |call6formal@aa#0@@4| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@3 () T@U)
(declare-fun |call7formal@bb#0@@4| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU0$Bu@@0 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |call6formal@aa#0@0@@4| () T@U)
(declare-fun |call7formal@bb#0@0@@4| () T@U)
(declare-fun |call6formal@aa#0@@5| () T@U)
(declare-fun call0formal@Methods.InBetween$Ai () T@U)
(declare-fun |call7formal@bb#0@@5| () T@U)
(declare-fun call1formal@Methods.InBetween.InstanceU1$Bi () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call6formal@aa#0@0@@5| () T@U)
(declare-fun |call7formal@bb#0@0@@5| () T@U)
(declare-fun |call6formal@aa#0@@6| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@4 () T@U)
(declare-fun |call7formal@bb#0@@6| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU2$Bu@@0 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |call6formal@aa#0@0@@6| () T@U)
(declare-fun |call7formal@bb#0@0@@6| () T@U)
(declare-fun |call6formal@aa#0@@7| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@5 () T@U)
(declare-fun |call7formal@bb#0@@7| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU3$Bu@@0 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |call6formal@aa#0@0@@7| () T@U)
(declare-fun |call7formal@bb#0@0@@7| () T@U)
(declare-fun |call6formal@aa#0@@8| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@6 () T@U)
(declare-fun |call7formal@bb#0@@8| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU0$Bu@@1 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |call6formal@aa#0@0@@8| () T@U)
(declare-fun |call7formal@bb#0@0@@8| () T@U)
(declare-fun |call6formal@aa#0@@9| () T@U)
(declare-fun call0formal@Methods.InBetween$Ai@@0 () T@U)
(declare-fun |call7formal@bb#0@@9| () T@U)
(declare-fun call1formal@Methods.InBetween.InstanceU1$Bi@@0 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |call6formal@aa#0@0@@9| () T@U)
(declare-fun |call7formal@bb#0@0@@9| () T@U)
(declare-fun |call6formal@aa#0@@10| () T@U)
(declare-fun call0formal@Methods.Trait$At () T@U)
(declare-fun |call7formal@bb#0@@10| () T@U)
(declare-fun call1formal@Methods.Trait.InstanceU2$Bt () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |call6formal@aa#0@0@@10| () T@U)
(declare-fun |call7formal@bb#0@0@@10| () T@U)
(declare-fun |call6formal@aa#0@@11| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@7 () T@U)
(declare-fun |call7formal@bb#0@@11| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU3$Bu@@1 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |call6formal@aa#0@0@@11| () T@U)
(declare-fun |call7formal@bb#0@0@@11| () T@U)
(declare-fun |call6formal@aa#0@@12| () T@U)
(declare-fun call0formal@Methods.Trait$At@@0 () T@U)
(declare-fun |call7formal@bb#0@@12| () T@U)
(declare-fun call1formal@Methods.Trait.InstanceT$Bt () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |call6formal@aa#0@0@@12| () T@U)
(declare-fun |call7formal@bb#0@0@@12| () T@U)
(declare-fun |call6formal@aa#0@@13| () T@U)
(declare-fun call0formal@Methods.Trait$At@@1 () T@U)
(declare-fun |call7formal@bb#0@@13| () T@U)
(declare-fun call1formal@Methods.Trait.InstanceTBody$Bt () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |call6formal@aa#0@0@@13| () T@U)
(declare-fun |call7formal@bb#0@0@@13| () T@U)
(declare-fun |call5formal@aa#0@@0| () T@U)
(declare-fun call0formal@Methods.Trait$At@@2 () T@U)
(declare-fun |call6formal@bb#0@@0| () T@U)
(declare-fun call1formal@Methods.Trait.StaticT$Bt () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |call5formal@aa#0@0@@0| () T@U)
(declare-fun |call6formal@bb#0@0@@0| () T@U)
(declare-fun |call6formal@aa#0@@14| () T@U)
(declare-fun call0formal@Methods.UberTrait$Au@@8 () T@U)
(declare-fun |call7formal@bb#0@@14| () T@U)
(declare-fun call1formal@Methods.UberTrait.InstanceU0$Bu@@2 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |call6formal@aa#0@0@@14| () T@U)
(declare-fun |call7formal@bb#0@0@@14| () T@U)
(declare-fun |call6formal@aa#0@@15| () T@U)
(declare-fun call0formal@Methods.InBetween$Ai@@1 () T@U)
(declare-fun |call7formal@bb#0@@15| () T@U)
(declare-fun call1formal@Methods.InBetween.InstanceU1$Bi@@1 () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun |call6formal@aa#0@0@@15| () T@U)
(declare-fun |call7formal@bb#0@0@@15| () T@U)
(declare-fun |call6formal@aa#0@@16| () T@U)
(declare-fun call0formal@Methods.Trait$At@@3 () T@U)
(declare-fun |call7formal@bb#0@@16| () T@U)
(declare-fun call1formal@Methods.Trait.InstanceU2$Bt@@0 () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |call6formal@aa#0@0@@16| () T@U)
(declare-fun |call7formal@bb#0@0@@16| () T@U)
(declare-fun |call6formal@aa#0@@17| () T@U)
(declare-fun call0formal@Methods.Class$Ac () T@U)
(declare-fun |call7formal@bb#0@@17| () T@U)
(declare-fun call1formal@Methods.Class.InstanceU3$Bc () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun |call6formal@aa#0@0@@17| () T@U)
(declare-fun |call7formal@bb#0@0@@17| () T@U)
(declare-fun |call6formal@aa#0@@18| () T@U)
(declare-fun call0formal@Methods.Class$Ac@@0 () T@U)
(declare-fun |call7formal@bb#0@@18| () T@U)
(declare-fun call1formal@Methods.Class.InstanceT$Bc () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun |call6formal@aa#0@0@@18| () T@U)
(declare-fun |call7formal@bb#0@0@@18| () T@U)
(declare-fun |call6formal@aa#0@@19| () T@U)
(declare-fun call0formal@Methods.Trait$At@@4 () T@U)
(declare-fun |call7formal@bb#0@@19| () T@U)
(declare-fun call1formal@Methods.Trait.InstanceTBody$Bt@@0 () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun |call6formal@aa#0@0@@19| () T@U)
(declare-fun |call7formal@bb#0@0@@19| () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@7| () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |defass#u#0| () Bool)
(declare-fun |u#0| () T@U)
(declare-fun |defass#v#0| () Bool)
(declare-fun |v#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |n#0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Methods.__default.Test)
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
 (=> (= (ControlFlow 0 0) 48) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass.Methods.Class? Methods._default.Test$X))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 47)) true) (and (=> (= (ControlFlow 0 2) (- 0 46)) true) (and (=> (= (ControlFlow 0 2) (- 0 45)) true) (=> (and (= |d#0@0| (Lit DatatypeTypeType |#Methods.Datatype.Dt0|)) (= |newtype$check#0@0| (LitInt 100))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 500))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 500)) (=> (= |n#0@0| (LitInt 100)) (=> (and (and ($IsBox |a#0@0| Methods._default.Test$X) ($IsAllocBox |a#0@0| Methods._default.Test$X $Heap@0)) (and ($IsBox |b#0@0| Methods._default.Test$Y) ($IsAllocBox |b#0@0| Methods._default.Test$Y $Heap@0))) (=> (and (and (and ($IsBox |call4formal@bb#0| call0formal@Methods.Newtype.InstanceN$Bn) ($IsAllocBox |call4formal@bb#0| call0formal@Methods.Newtype.InstanceN$Bn $Heap)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($IsBox |call4formal@bb#0@0| Methods._default.Test$Y) ($IsAllocBox |call4formal@bb#0@0| Methods._default.Test$Y $Heap@1)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14)))
 :qid |MoreAutoInitdfy.13:12|
 :skolemid |716|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14))
)) ($HeapSucc $Heap@0 $Heap@1)))) (=> (and (and (and (and (and ($IsBox |call3formal@bb#0| call0formal@Methods.Newtype.StaticN$Bn) ($IsAllocBox |call3formal@bb#0| call0formal@Methods.Newtype.StaticN$Bn $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($IsBox |call3formal@bb#0@0| Methods._default.Test$Y) ($IsAllocBox |call3formal@bb#0@0| Methods._default.Test$Y $Heap@2)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@15)))
 :qid |MoreAutoInitdfy.14:19|
 :skolemid |719|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (and (and ($IsBox |call6formal@aa#0| call0formal@Methods.Datatype$Ad) ($IsAllocBox |call6formal@aa#0| call0formal@Methods.Datatype$Ad $Heap)) (and ($IsBox |call7formal@bb#0| call1formal@Methods.Datatype.InstanceD$Bd) ($IsAllocBox |call7formal@bb#0| call1formal@Methods.Datatype.InstanceD$Bd $Heap))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and ($IsBox |call6formal@aa#0@0| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0| Methods._default.Test$X $Heap@3))))) (and (and (and (and ($IsBox |call7formal@bb#0@0| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0| Methods._default.Test$Y $Heap@3)) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@16)))
 :qid |MoreAutoInitdfy.18:12|
 :skolemid |735|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@16))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and ($IsBox |call5formal@aa#0| call0formal@Methods.Datatype$Ad@@0) ($IsAllocBox |call5formal@aa#0| call0formal@Methods.Datatype$Ad@@0 $Heap)) (and ($IsBox |call6formal@bb#0| call1formal@Methods.Datatype.StaticD$Bd) ($IsAllocBox |call6formal@bb#0| call1formal@Methods.Datatype.StaticD$Bd $Heap)))) (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and ($IsBox |call5formal@aa#0@0| Methods._default.Test$X) ($IsAllocBox |call5formal@aa#0@0| Methods._default.Test$X $Heap@4))) (and (and ($IsBox |call6formal@bb#0@0| Methods._default.Test$Y) ($IsAllocBox |call6formal@bb#0@0| Methods._default.Test$Y $Heap@4)) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@17)))
 :qid |MoreAutoInitdfy.19:19|
 :skolemid |738|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@17))
)) ($HeapSucc $Heap@3 $Heap@4)))))) (and (=> (= (ControlFlow 0 2) (- 0 43)) true) (and (=> (= (ControlFlow 0 2) (- 0 42)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@0| call0formal@Methods.UberTrait$Au) ($IsAllocBox |call6formal@aa#0@@0| call0formal@Methods.UberTrait$Au $Heap)) (and ($IsBox |call7formal@bb#0@@0| call1formal@Methods.UberTrait.InstanceU0$Bu) ($IsAllocBox |call7formal@bb#0@@0| call1formal@Methods.UberTrait.InstanceU0$Bu $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and ($IsBox |call6formal@aa#0@0@@0| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@0| Methods._default.Test$X $Heap@5))) (and (and ($IsBox |call7formal@bb#0@0@@0| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@0| Methods._default.Test$Y $Heap@5)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18)))
 :qid |MoreAutoInitdfy.23:12|
 :skolemid |746|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 41)) true) (and (=> (= (ControlFlow 0 2) (- 0 40)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@1| call0formal@Methods.UberTrait$Au@@0) ($IsAllocBox |call6formal@aa#0@@1| call0formal@Methods.UberTrait$Au@@0 $Heap)) (and ($IsBox |call7formal@bb#0@@1| call1formal@Methods.UberTrait.InstanceU1$Bu) ($IsAllocBox |call7formal@bb#0@@1| call1formal@Methods.UberTrait.InstanceU1$Bu $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and ($IsBox |call6formal@aa#0@0@@1| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@1| Methods._default.Test$X $Heap@6))) (and (and ($IsBox |call7formal@bb#0@0@@1| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@1| Methods._default.Test$Y $Heap@6)) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19)))
 :qid |MoreAutoInitdfy.24:12|
 :skolemid |749|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@19))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 39)) true) (and (=> (= (ControlFlow 0 2) (- 0 38)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@2| call0formal@Methods.UberTrait$Au@@1) ($IsAllocBox |call6formal@aa#0@@2| call0formal@Methods.UberTrait$Au@@1 $Heap)) (and ($IsBox |call7formal@bb#0@@2| call1formal@Methods.UberTrait.InstanceU2$Bu) ($IsAllocBox |call7formal@bb#0@@2| call1formal@Methods.UberTrait.InstanceU2$Bu $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and ($IsBox |call6formal@aa#0@0@@2| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@2| Methods._default.Test$X $Heap@7))) (and (and ($IsBox |call7formal@bb#0@0@@2| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@2| Methods._default.Test$Y $Heap@7)) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@20)))
 :qid |MoreAutoInitdfy.25:12|
 :skolemid |751|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@20))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 2) (- 0 37)) true) (and (=> (= (ControlFlow 0 2) (- 0 36)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@3| call0formal@Methods.UberTrait$Au@@2) ($IsAllocBox |call6formal@aa#0@@3| call0formal@Methods.UberTrait$Au@@2 $Heap)) (and ($IsBox |call7formal@bb#0@@3| call1formal@Methods.UberTrait.InstanceU3$Bu) ($IsAllocBox |call7formal@bb#0@@3| call1formal@Methods.UberTrait.InstanceU3$Bu $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and ($IsBox |call6formal@aa#0@0@@3| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@3| Methods._default.Test$X $Heap@8))) (and (and ($IsBox |call7formal@bb#0@0@@3| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@3| Methods._default.Test$Y $Heap@8)) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21)))
 :qid |MoreAutoInitdfy.26:12|
 :skolemid |753|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@21))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 2) (- 0 35)) true) (and (=> (= (ControlFlow 0 2) (- 0 34)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@4| call0formal@Methods.UberTrait$Au@@3) ($IsAllocBox |call6formal@aa#0@@4| call0formal@Methods.UberTrait$Au@@3 $Heap)) (and ($IsBox |call7formal@bb#0@@4| call1formal@Methods.UberTrait.InstanceU0$Bu@@0) ($IsAllocBox |call7formal@bb#0@@4| call1formal@Methods.UberTrait.InstanceU0$Bu@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and ($IsBox |call6formal@aa#0@0@@4| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@4| Methods._default.Test$X $Heap@9))) (and (and ($IsBox |call7formal@bb#0@0@@4| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@4| Methods._default.Test$Y $Heap@9)) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@22)))
 :qid |MoreAutoInitdfy.23:12|
 :skolemid |746|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@22))
)) ($HeapSucc $Heap@8 $Heap@9)))) (and (=> (= (ControlFlow 0 2) (- 0 33)) true) (and (=> (= (ControlFlow 0 2) (- 0 32)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@5| call0formal@Methods.InBetween$Ai) ($IsAllocBox |call6formal@aa#0@@5| call0formal@Methods.InBetween$Ai $Heap)) (and ($IsBox |call7formal@bb#0@@5| call1formal@Methods.InBetween.InstanceU1$Bi) ($IsAllocBox |call7formal@bb#0@@5| call1formal@Methods.InBetween.InstanceU1$Bi $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and ($IsBox |call6formal@aa#0@0@@5| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@5| Methods._default.Test$X $Heap@10))) (and (and ($IsBox |call7formal@bb#0@0@@5| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@5| Methods._default.Test$Y $Heap@10)) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@23)))
 :qid |MoreAutoInitdfy.30:12|
 :skolemid |765|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@23))
)) ($HeapSucc $Heap@9 $Heap@10)))) (and (=> (= (ControlFlow 0 2) (- 0 31)) true) (and (=> (= (ControlFlow 0 2) (- 0 30)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@6| call0formal@Methods.UberTrait$Au@@4) ($IsAllocBox |call6formal@aa#0@@6| call0formal@Methods.UberTrait$Au@@4 $Heap)) (and ($IsBox |call7formal@bb#0@@6| call1formal@Methods.UberTrait.InstanceU2$Bu@@0) ($IsAllocBox |call7formal@bb#0@@6| call1formal@Methods.UberTrait.InstanceU2$Bu@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and ($IsBox |call6formal@aa#0@0@@6| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@6| Methods._default.Test$X $Heap@11))) (and (and ($IsBox |call7formal@bb#0@0@@6| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@6| Methods._default.Test$Y $Heap@11)) (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@24)))
 :qid |MoreAutoInitdfy.25:12|
 :skolemid |751|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@24))
)) ($HeapSucc $Heap@10 $Heap@11)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) true) (and (=> (= (ControlFlow 0 2) (- 0 28)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@7| call0formal@Methods.UberTrait$Au@@5) ($IsAllocBox |call6formal@aa#0@@7| call0formal@Methods.UberTrait$Au@@5 $Heap)) (and ($IsBox |call7formal@bb#0@@7| call1formal@Methods.UberTrait.InstanceU3$Bu@@0) ($IsAllocBox |call7formal@bb#0@@7| call1formal@Methods.UberTrait.InstanceU3$Bu@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and ($IsBox |call6formal@aa#0@0@@7| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@7| Methods._default.Test$X $Heap@12))) (and (and ($IsBox |call7formal@bb#0@0@@7| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@7| Methods._default.Test$Y $Heap@12)) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@25)))
 :qid |MoreAutoInitdfy.26:12|
 :skolemid |753|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@25))
)) ($HeapSucc $Heap@11 $Heap@12)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) true) (and (=> (= (ControlFlow 0 2) (- 0 26)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@8| call0formal@Methods.UberTrait$Au@@6) ($IsAllocBox |call6formal@aa#0@@8| call0formal@Methods.UberTrait$Au@@6 $Heap)) (and ($IsBox |call7formal@bb#0@@8| call1formal@Methods.UberTrait.InstanceU0$Bu@@1) ($IsAllocBox |call7formal@bb#0@@8| call1formal@Methods.UberTrait.InstanceU0$Bu@@1 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and ($IsBox |call6formal@aa#0@0@@8| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@8| Methods._default.Test$X $Heap@13))) (and (and ($IsBox |call7formal@bb#0@0@@8| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@8| Methods._default.Test$Y $Heap@13)) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@26)))
 :qid |MoreAutoInitdfy.23:12|
 :skolemid |746|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@26))
)) ($HeapSucc $Heap@12 $Heap@13)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) true) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@9| call0formal@Methods.InBetween$Ai@@0) ($IsAllocBox |call6formal@aa#0@@9| call0formal@Methods.InBetween$Ai@@0 $Heap)) (and ($IsBox |call7formal@bb#0@@9| call1formal@Methods.InBetween.InstanceU1$Bi@@0) ($IsAllocBox |call7formal@bb#0@@9| call1formal@Methods.InBetween.InstanceU1$Bi@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (and ($IsBox |call6formal@aa#0@0@@9| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@9| Methods._default.Test$X $Heap@14))) (and (and ($IsBox |call7formal@bb#0@0@@9| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@9| Methods._default.Test$Y $Heap@14)) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@27)))
 :qid |MoreAutoInitdfy.30:12|
 :skolemid |765|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@27))
)) ($HeapSucc $Heap@13 $Heap@14)))) (and (=> (= (ControlFlow 0 2) (- 0 23)) true) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@10| call0formal@Methods.Trait$At) ($IsAllocBox |call6formal@aa#0@@10| call0formal@Methods.Trait$At $Heap)) (and ($IsBox |call7formal@bb#0@@10| call1formal@Methods.Trait.InstanceU2$Bt) ($IsAllocBox |call7formal@bb#0@@10| call1formal@Methods.Trait.InstanceU2$Bt $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (and ($IsBox |call6formal@aa#0@0@@10| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@10| Methods._default.Test$X $Heap@15))) (and (and ($IsBox |call7formal@bb#0@0@@10| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@10| Methods._default.Test$Y $Heap@15)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@28)))
 :qid |MoreAutoInitdfy.34:12|
 :skolemid |778|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@28))
)) ($HeapSucc $Heap@14 $Heap@15)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) true) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@11| call0formal@Methods.UberTrait$Au@@7) ($IsAllocBox |call6formal@aa#0@@11| call0formal@Methods.UberTrait$Au@@7 $Heap)) (and ($IsBox |call7formal@bb#0@@11| call1formal@Methods.UberTrait.InstanceU3$Bu@@1) ($IsAllocBox |call7formal@bb#0@@11| call1formal@Methods.UberTrait.InstanceU3$Bu@@1 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (and ($IsBox |call6formal@aa#0@0@@11| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@11| Methods._default.Test$X $Heap@16))) (and (and ($IsBox |call7formal@bb#0@0@@11| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@11| Methods._default.Test$Y $Heap@16)) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@29)))
 :qid |MoreAutoInitdfy.26:12|
 :skolemid |753|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@29))
)) ($HeapSucc $Heap@15 $Heap@16)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (and (=> (= (ControlFlow 0 2) (- 0 18)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@12| call0formal@Methods.Trait$At@@0) ($IsAllocBox |call6formal@aa#0@@12| call0formal@Methods.Trait$At@@0 $Heap)) (and ($IsBox |call7formal@bb#0@@12| call1formal@Methods.Trait.InstanceT$Bt) ($IsAllocBox |call7formal@bb#0@@12| call1formal@Methods.Trait.InstanceT$Bt $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and ($IsBox |call6formal@aa#0@0@@12| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@12| Methods._default.Test$X $Heap@17))) (and (and ($IsBox |call7formal@bb#0@0@@12| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@12| Methods._default.Test$Y $Heap@17)) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@30)))
 :qid |MoreAutoInitdfy.35:12|
 :skolemid |781|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@30))
)) ($HeapSucc $Heap@16 $Heap@17)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and (and ($IsBox |call6formal@aa#0@@13| call0formal@Methods.Trait$At@@1) ($IsAllocBox |call6formal@aa#0@@13| call0formal@Methods.Trait$At@@1 $Heap)) (and ($IsBox |call7formal@bb#0@@13| call1formal@Methods.Trait.InstanceTBody$Bt) ($IsAllocBox |call7formal@bb#0@@13| call1formal@Methods.Trait.InstanceTBody$Bt $Heap))) (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (and ($IsBox |call6formal@aa#0@0@@13| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@13| Methods._default.Test$X $Heap@18)))) (=> (and (and (and (and ($IsBox |call7formal@bb#0@0@@13| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@13| Methods._default.Test$Y $Heap@18)) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@31)))
 :qid |MoreAutoInitdfy.36:12|
 :skolemid |783|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@31))
)) ($HeapSucc $Heap@17 $Heap@18))) (and (and ($IsBox |call5formal@aa#0@@0| call0formal@Methods.Trait$At@@2) ($IsAllocBox |call5formal@aa#0@@0| call0formal@Methods.Trait$At@@2 $Heap)) (and ($IsBox |call6formal@bb#0@@0| call1formal@Methods.Trait.StaticT$Bt) ($IsAllocBox |call6formal@bb#0@@0| call1formal@Methods.Trait.StaticT$Bt $Heap)))) (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (and ($IsBox |call5formal@aa#0@0@@0| Methods._default.Test$X) ($IsAllocBox |call5formal@aa#0@0@@0| Methods._default.Test$X $Heap@19))) (and (and ($IsBox |call6formal@bb#0@0@@0| Methods._default.Test$Y) ($IsAllocBox |call6formal@bb#0@0@@0| Methods._default.Test$Y $Heap@19)) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@32)))
 :qid |MoreAutoInitdfy.37:19|
 :skolemid |786|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@32))
)) ($HeapSucc $Heap@18 $Heap@19))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@14| call0formal@Methods.UberTrait$Au@@8) ($IsAllocBox |call6formal@aa#0@@14| call0formal@Methods.UberTrait$Au@@8 $Heap)) (and ($IsBox |call7formal@bb#0@@14| call1formal@Methods.UberTrait.InstanceU0$Bu@@2) ($IsAllocBox |call7formal@bb#0@@14| call1formal@Methods.UberTrait.InstanceU0$Bu@@2 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (and ($IsBox |call6formal@aa#0@0@@14| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@14| Methods._default.Test$X $Heap@20))) (and (and ($IsBox |call7formal@bb#0@0@@14| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@14| Methods._default.Test$Y $Heap@20)) (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@33)))
 :qid |MoreAutoInitdfy.23:12|
 :skolemid |746|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@33))
)) ($HeapSucc $Heap@19 $Heap@20)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@15| call0formal@Methods.InBetween$Ai@@1) ($IsAllocBox |call6formal@aa#0@@15| call0formal@Methods.InBetween$Ai@@1 $Heap)) (and ($IsBox |call7formal@bb#0@@15| call1formal@Methods.InBetween.InstanceU1$Bi@@1) ($IsAllocBox |call7formal@bb#0@@15| call1formal@Methods.InBetween.InstanceU1$Bi@@1 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (and ($IsBox |call6formal@aa#0@0@@15| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@15| Methods._default.Test$X $Heap@21))) (and (and ($IsBox |call7formal@bb#0@0@@15| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@15| Methods._default.Test$Y $Heap@21)) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@34)))
 :qid |MoreAutoInitdfy.30:12|
 :skolemid |765|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@34))
)) ($HeapSucc $Heap@20 $Heap@21)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@16| call0formal@Methods.Trait$At@@3) ($IsAllocBox |call6formal@aa#0@@16| call0formal@Methods.Trait$At@@3 $Heap)) (and ($IsBox |call7formal@bb#0@@16| call1formal@Methods.Trait.InstanceU2$Bt@@0) ($IsAllocBox |call7formal@bb#0@@16| call1formal@Methods.Trait.InstanceU2$Bt@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)) (and ($IsBox |call6formal@aa#0@0@@16| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@16| Methods._default.Test$X $Heap@22))) (and (and ($IsBox |call7formal@bb#0@0@@16| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@16| Methods._default.Test$Y $Heap@22)) (and (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@35)))
 :qid |MoreAutoInitdfy.34:12|
 :skolemid |778|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@35))
)) ($HeapSucc $Heap@21 $Heap@22)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@17| call0formal@Methods.Class$Ac) ($IsAllocBox |call6formal@aa#0@@17| call0formal@Methods.Class$Ac $Heap)) (and ($IsBox |call7formal@bb#0@@17| call1formal@Methods.Class.InstanceU3$Bc) ($IsAllocBox |call7formal@bb#0@@17| call1formal@Methods.Class.InstanceU3$Bc $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)) (and ($IsBox |call6formal@aa#0@0@@17| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@17| Methods._default.Test$X $Heap@23))) (and (and ($IsBox |call7formal@bb#0@0@@17| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@17| Methods._default.Test$Y $Heap@23)) (and (forall (($o@@36 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@36) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@36) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@36)))
 :qid |MoreAutoInitdfy.41:12|
 :skolemid |797|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@36))
)) ($HeapSucc $Heap@22 $Heap@23)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@18| call0formal@Methods.Class$Ac@@0) ($IsAllocBox |call6formal@aa#0@@18| call0formal@Methods.Class$Ac@@0 $Heap)) (and ($IsBox |call7formal@bb#0@@18| call1formal@Methods.Class.InstanceT$Bc) ($IsAllocBox |call7formal@bb#0@@18| call1formal@Methods.Class.InstanceT$Bc $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (and ($IsBox |call6formal@aa#0@0@@18| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@18| Methods._default.Test$X $Heap@24))) (and (and ($IsBox |call7formal@bb#0@0@@18| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@18| Methods._default.Test$Y $Heap@24)) (and (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@37) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@37) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@37)))
 :qid |MoreAutoInitdfy.42:12|
 :skolemid |803|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@37))
)) ($HeapSucc $Heap@23 $Heap@24)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsBox |call6formal@aa#0@@19| call0formal@Methods.Trait$At@@4) ($IsAllocBox |call6formal@aa#0@@19| call0formal@Methods.Trait$At@@4 $Heap)) (and ($IsBox |call7formal@bb#0@@19| call1formal@Methods.Trait.InstanceTBody$Bt@@0) ($IsAllocBox |call7formal@bb#0@@19| call1formal@Methods.Trait.InstanceTBody$Bt@@0 $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (and ($IsBox |call6formal@aa#0@0@@19| Methods._default.Test$X) ($IsAllocBox |call6formal@aa#0@0@@19| Methods._default.Test$X $Heap@25))) (and (and ($IsBox |call7formal@bb#0@0@@19| Methods._default.Test$Y) ($IsAllocBox |call7formal@bb#0@0@@19| Methods._default.Test$Y $Heap@25)) (and (forall (($o@@38 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@38) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@38) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@38)))
 :qid |MoreAutoInitdfy.36:12|
 :skolemid |783|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@38))
)) ($HeapSucc $Heap@24 $Heap@25)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($IsBox |x#0| Methods._default.Test$X) ($IsAllocBox |x#0| Methods._default.Test$X $Heap)) (and ($IsBox |y#0| Methods._default.Test$Y) ($IsAllocBox |y#0| Methods._default.Test$Y $Heap))) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@7| (Tclass.Methods.Class Methods._default.Test$X)) ($IsAlloc refType |c#0@@7| (Tclass.Methods.Class Methods._default.Test$X) $Heap))) true) (and (=> |defass#t#0| (and ($Is refType |t#0| (Tclass.Methods.Trait Methods._default.Test$X)) ($IsAlloc refType |t#0| (Tclass.Methods.Trait Methods._default.Test$X) $Heap))) true))) (and (and (and (=> |defass#u#0| (and ($Is refType |u#0| (Tclass.Methods.UberTrait Methods._default.Test$X)) ($IsAlloc refType |u#0| (Tclass.Methods.UberTrait Methods._default.Test$X) $Heap))) true) (and (=> |defass#v#0| (and ($Is refType |v#0| (Tclass.Methods.InBetween Methods._default.Test$X)) ($IsAlloc refType |v#0| (Tclass.Methods.InBetween Methods._default.Test$X) $Heap))) true)) (and (and ($Is DatatypeTypeType |d#0| (Tclass.Methods.Datatype Methods._default.Test$X)) ($IsAlloc DatatypeTypeType |d#0| (Tclass.Methods.Datatype Methods._default.Test$X) $Heap)) true))) (and (and (and (and (<= (LitInt 0) |n#0|) (< |n#0| 500)) true) (and (and ($IsBox |a#0| Methods._default.Test$X) ($IsAllocBox |a#0| Methods._default.Test$X $Heap)) true)) (and (and (and ($IsBox |b#0| Methods._default.Test$Y) ($IsAllocBox |b#0| Methods._default.Test$Y $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 48) 2))))) anon0_correct))))
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
