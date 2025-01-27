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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.M1.Container? () T@U)
(declare-fun Tagclass.M1.Container? () T@U)
(declare-fun Tagclass.M1.Container () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Container () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.Container (T@U) T@U)
(declare-fun Tclass.M1.Container? (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M1.Container.Valid (T@U T@U T@U) Bool)
(declare-fun |M1.Container.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun M1.Container.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M1.Container.Contents () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.M1.Container?_0 (T@U) T@U)
(declare-fun Tclass.M1.Container_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |M1.Container.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun M1.Container.Valid_k (T@U T@U T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.M1.Container? Tagclass.M1.Container? Tagclass.M1.Container tytagFamily$object tytagFamily$Container field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((M1.Container$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.M1.Container M1.Container$T) $h) ($IsAlloc refType |c#0| (Tclass.M1.Container? M1.Container$T) $h))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M1.Container M1.Container$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M1.Container? M1.Container$T) $h))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M1.Container$T@@0 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|M1.Container.Valid#canCall| M1.Container$T@@0 $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.M1.Container M1.Container$T@@0)) ($IsAlloc refType this (Tclass.M1.Container M1.Container$T@@0) $Heap)))))) (=> (M1.Container.Valid M1.Container$T@@0 $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M1.Container.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( (M1.Container.Valid M1.Container$T@@0 $Heap this))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim M1.Container.Repr) 0))
(assert (= (FieldOfDecl class.M1.Container? field$Repr) M1.Container.Repr))
(assert ($IsGhostField M1.Container.Repr))
(assert (= (FDim M1.Container.Contents) 0))
(assert (= (FieldOfDecl class.M1.Container? field$Contents) M1.Container.Contents))
(assert ($IsGhostField M1.Container.Contents))
(assert (forall ((M1.Container$T@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.M1.Container? M1.Container$T@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsAlloc refType $o (Tclass.M1.Container? M1.Container$T@@1) $h@@1))
)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |875|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |553|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |573|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |574|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((M1.Container$T@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.M1.Container M1.Container$T@@2))  (and ($Is refType |c#0@@1| (Tclass.M1.Container? M1.Container$T@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($Is refType |c#0@@1| (Tclass.M1.Container M1.Container$T@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.M1.Container? M1.Container$T@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |566|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((M1.Container$T@@3 T@U) ) (!  (and (= (Tag (Tclass.M1.Container? M1.Container$T@@3)) Tagclass.M1.Container?) (= (TagFamily (Tclass.M1.Container? M1.Container$T@@3)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (Tclass.M1.Container? M1.Container$T@@3))
)))
(assert (forall ((M1.Container$T@@4 T@U) ) (!  (and (= (Tag (Tclass.M1.Container M1.Container$T@@4)) Tagclass.M1.Container) (= (TagFamily (Tclass.M1.Container M1.Container$T@@4)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Tclass.M1.Container M1.Container$T@@4))
)))
(assert (forall ((M1.Container$T@@5 T@U) ($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass.M1.Container? M1.Container$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) M1.Container.Contents)) (TSet M1.Container$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) M1.Container.Contents)) (Tclass.M1.Container? M1.Container$T@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |873|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |876|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((M1.Container$T@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.M1.Container? M1.Container$T@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.M1.Container? M1.Container$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( ($Is refType $o@@2 (Tclass.M1.Container? M1.Container$T@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((M1.Container$T@@7 T@U) ($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.M1.Container? M1.Container$T@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M1.Container.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M1.Container.Repr)) (Tclass.M1.Container? M1.Container$T@@7))
)))
(assert (forall ((M1.Container$T@@8 T@U) ($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.M1.Container? M1.Container$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Container.Repr)) (TSet Tclass._System.object?) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Container.Repr)) (Tclass.M1.Container? M1.Container$T@@8))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |677|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |634|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |565|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |594|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |595|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |874|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |528|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |529|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((M1.Container$T@@9 T@U) ) (! (= (Tclass.M1.Container?_0 (Tclass.M1.Container? M1.Container$T@@9)) M1.Container$T@@9)
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (Tclass.M1.Container? M1.Container$T@@9))
)))
(assert (forall ((M1.Container$T@@10 T@U) ) (! (= (Tclass.M1.Container_0 (Tclass.M1.Container M1.Container$T@@10)) M1.Container$T@@10)
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (Tclass.M1.Container M1.Container$T@@10))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |552|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((M1.Container$T@@11 T@U) ($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.M1.Container? M1.Container$T@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M1.Container.Contents)) (TSet M1.Container$T@@11)))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) M1.Container.Contents)) (Tclass.M1.Container? M1.Container$T@@11))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |559|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((M1.Container$T@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.M1.Container? M1.Container$T@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.M1.Container? M1.Container$T@@12))))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( ($IsBox bx@@4 (Tclass.M1.Container? M1.Container$T@@12)))
)))
(assert (forall ((M1.Container$T@@13 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.M1.Container M1.Container$T@@13)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.M1.Container M1.Container$T@@13))))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( ($IsBox bx@@5 (Tclass.M1.Container M1.Container$T@@13)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o T@U) ) (! (= (|Set#IsMember| a@@0 o) (|Set#IsMember| b@@0 o))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |675|
 :pattern ( (|Set#IsMember| a@@0 o))
 :pattern ( (|Set#IsMember| b@@0 o))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |676|
 :pattern ( (|Set#Equal| a@@0 b@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@7))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3876|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((M1.Container$T@@14 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|M1.Container.Valid#canCall| M1.Container$T@@14 $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.M1.Container M1.Container$T@@14)) ($IsAlloc refType this@@0 (Tclass.M1.Container M1.Container$T@@14) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Container.Repr)) ($Box refType this@@0)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Container.Repr)) ($Box refType null))) (|M1.Container.Valid_k#canCall| M1.Container$T@@14 $Heap@@0 this@@0))) (= (M1.Container.Valid M1.Container$T@@14 $Heap@@0 this@@0)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Container.Repr)) ($Box refType this@@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M1.Container.Repr)) ($Box refType null)))) (M1.Container.Valid_k M1.Container$T@@14 $Heap@@0 this@@0)))))
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( (M1.Container.Valid M1.Container$T@@14 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun M1.Container$T@@15 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b#0@1| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$M1.Container.Contains)
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
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType this@@1))))) (=> (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType this@@1)))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType null)))))) (=> (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (M1.Container.Valid_k M1.Container$T@@15 $Heap@@1 this@@1)))) (=> (=> (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (or (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (M1.Container.Valid_k M1.Container$T@@15 $Heap@@1 this@@1))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (forall (($o@@8 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@8)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@8)))) (or (not (= $o@@8 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |1047|
 :pattern (  (or (not (= $o@@8 null)) (not true)))
)) (forall (($o@@9 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@9)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@9)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@9) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |1048|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@9) alloc)))
)))) (=> (and (forall (($o@@10 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@10)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@10)))) (or (not (= $o@@10 null)) (not true)))
 :qid |CachedContainerdfy.46:12|
 :skolemid |1047|
 :pattern (  (or (not (= $o@@10 null)) (not true)))
)) (forall (($o@@11 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@11)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType $o@@11)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))))
 :qid |CachedContainerdfy.46:12|
 :skolemid |1048|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents)))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents))) (=> (= (ControlFlow 0 3) (- 0 2)) (= |b#0@1| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents)) |t#0|)))))))))))))))
(let ((anon3_Then_correct  (=> (= |b#0@0| (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Contents)) |t#0|)) (=> (and (= |b#0@1| |b#0@0|) (= (ControlFlow 0 9) 3)) GeneratedUnifiedExit_correct))))
(let ((anon3_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)))) (and (=> (= (ControlFlow 0 10) 9) anon3_Then_correct) (=> (= (ControlFlow 0 10) 1) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.M1.Container M1.Container$T@@15)) ($IsAlloc refType this@@1 (Tclass.M1.Container M1.Container$T@@15) $Heap@@1)))) (=> (and (and (and ($IsBox |t#0| M1.Container$T@@15) ($IsAllocBox |t#0| M1.Container$T@@15 $Heap@@1)) (= 2 $FunctionContextHeight)) (and (and (|M1.Container.Valid#canCall| M1.Container$T@@15 $Heap@@1 this@@1) (and (M1.Container.Valid M1.Container$T@@15 $Heap@@1 this@@1) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) M1.Container.Repr)) ($Box refType null)))) (M1.Container.Valid_k M1.Container$T@@15 $Heap@@1 this@@1)))) (= (ControlFlow 0 11) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
