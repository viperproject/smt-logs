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
(declare-fun allocName () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A? () T@U)
(declare-fun class.TraitsExtendingTraits.A? () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun field$y0 () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TraitsExtendingTraits.A.GetY (T@U T@U T@U T@U) T@U)
(declare-fun |TraitsExtendingTraits.A.GetY#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TraitsExtendingTraits.A (T@U T@U) T@U)
(declare-fun TraitsExtendingTraits.A.y0 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.A? (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_1 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_1 (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.A (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass.TraitsExtendingTraits.A Tagclass.TraitsExtendingTraits.A? class.TraitsExtendingTraits.A? tytagFamily$A field$y0)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0 T@U) (TraitsExtendingTraits.A$Y1 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (or (not (= this null)) (not true))) ($IsAlloc refType this (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1) $Heap)))) ($IsAllocBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) TraitsExtendingTraits.A$Y0 $Heap))
 :qid |unknown.0:0|
 :skolemid |3143|
 :pattern ( ($IsAllocBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1 $Heap this) TraitsExtendingTraits.A$Y0 $Heap))
))))
(assert (= (FDim TraitsExtendingTraits.A.y0) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.A? field$y0) TraitsExtendingTraits.A.y0))
(assert  (not ($IsGhostField TraitsExtendingTraits.A.y0)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@0 T@U) (TraitsExtendingTraits.A$Y1@@0 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0))  (and ($Is refType |c#0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Is refType |c#0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0)))
 :pattern ( ($Is refType |c#0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h) ($IsAlloc T@@0 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2595|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h))
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
(assert (forall ((TraitsExtendingTraits.A$Y0@@1 T@U) (TraitsExtendingTraits.A$Y1@@1 T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@1))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (= $o@@0 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@2 T@U) (TraitsExtendingTraits.A$Y1@@2 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@0))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@3 T@U) (TraitsExtendingTraits.A$Y1@@3 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3 $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3)) ($IsAlloc refType this@@0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3) $Heap@@0)))))) (= (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3 $Heap@@0 this@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) TraitsExtendingTraits.A.y0)))
 :qid |unknown.0:0|
 :skolemid |3145|
 :pattern ( (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((TraitsExtendingTraits.A$Y0@@4 T@U) (TraitsExtendingTraits.A$Y1@@4 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4) $h@@1))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2663|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2594|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@5 T@U) (TraitsExtendingTraits.A$Y1@@5 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5)) TraitsExtendingTraits.A$Y0@@5)
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@6 T@U) (TraitsExtendingTraits.A$Y1@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)) TraitsExtendingTraits.A$Y1@@6)
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@7 T@U) (TraitsExtendingTraits.A$Y1@@7 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)) TraitsExtendingTraits.A$Y0@@7)
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@8 T@U) (TraitsExtendingTraits.A$Y1@@8 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)) TraitsExtendingTraits.A$Y1@@8)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@9 T@U) (TraitsExtendingTraits.A$Y1@@9 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9))  (or (= $o@@2 null) (implements$TraitsExtendingTraits.A (dtype $o@@2) TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( ($Is refType $o@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@10 T@U) (TraitsExtendingTraits.A$Y1@@10 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@10 $h@@2))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@11 T@U) (TraitsExtendingTraits.A$Y1@@11 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11))))
 :qid |unknown.0:0|
 :skolemid |3114|
 :pattern ( ($IsBox bx (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@12 T@U) (TraitsExtendingTraits.A$Y1@@12 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12))))
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( ($IsBox bx@@0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@13 T@U) (TraitsExtendingTraits.A$Y1@@13 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)) Tagclass.TraitsExtendingTraits.A) (= (TagFamily (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@13 TraitsExtendingTraits.A$Y1@@13))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@14 T@U) (TraitsExtendingTraits.A$Y1@@14 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) Tagclass.TraitsExtendingTraits.A?) (= (TagFamily (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3115|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@14 TraitsExtendingTraits.A$Y1@@14))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.A$Y0@@15 T@U) (TraitsExtendingTraits.A$Y1@@15 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|TraitsExtendingTraits.A.GetY#canCall| TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15 $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15)) ($IsAlloc refType this@@1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15) $Heap@@1)))))) ($IsBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15 $Heap@@1 this@@1) TraitsExtendingTraits.A$Y0@@15))
 :qid |unknown.0:0|
 :skolemid |3142|
 :pattern ( (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@15 TraitsExtendingTraits.A$Y1@@15 $Heap@@1 this@@1))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun TraitsExtendingTraits.A$Y0@@16 () T@U)
(declare-fun TraitsExtendingTraits.A$Y1@@16 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TraitsExtendingTraits.A.GetY)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 TraitsExtendingTraits.A.y0))) (= (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16 $Heap@@2 this@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) TraitsExtendingTraits.A.y0))) (and ($IsBox (TraitsExtendingTraits.A.GetY TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16 $Heap@@2 this@@2) TraitsExtendingTraits.A$Y0@@16) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@0|)))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@2 alloc this@@2)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16)) ($IsAlloc refType this@@2 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@16 TraitsExtendingTraits.A$Y1@@16) $Heap@@2))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
