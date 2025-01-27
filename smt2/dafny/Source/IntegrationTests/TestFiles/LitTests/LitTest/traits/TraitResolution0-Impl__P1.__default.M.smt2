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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.P1.Cl () T@U)
(declare-fun class.P1.TrX? () T@U)
(declare-fun Tagclass.P1.TrX? () T@U)
(declare-fun Tagclass.P1.TrX () T@U)
(declare-fun Tagclass.P1.Tr? () T@U)
(declare-fun Tagclass.P1.Tr () T@U)
(declare-fun Tagclass.P1.Cl? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$TrX () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun field$w () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.P1.TrX (T@U) T@U)
(declare-fun Tclass.P1.TrX? (T@U) T@U)
(declare-fun Tclass.P1.Tr (T@U) T@U)
(declare-fun Tclass.P1.Tr? (T@U) T@U)
(declare-fun Tclass.P1.Cl (T@U) T@U)
(declare-fun Tclass.P1.Cl? (T@U) T@U)
(declare-fun implements$P1.Tr (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun P1.TrX.w () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Tclass.P1.Cl_0 (T@U) T@U)
(declare-fun Tclass.P1.TrX?_0 (T@U) T@U)
(declare-fun Tclass.P1.TrX_0 (T@U) T@U)
(declare-fun Tclass.P1.Tr?_0 (T@U) T@U)
(declare-fun Tclass.P1.Tr_0 (T@U) T@U)
(declare-fun Tclass.P1.Cl?_0 (T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun implements$P1.TrX (T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.Tuple2 Tagclass.P1.Cl class.P1.TrX? Tagclass.P1.TrX? Tagclass.P1.TrX Tagclass.P1.Tr? Tagclass.P1.Tr Tagclass.P1.Cl? |tytagFamily$_tuple#2| tytagFamily$Cl tytagFamily$TrX tytagFamily$Tr field$w)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((P1.TrX$X T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.P1.TrX P1.TrX$X) $h) ($IsAlloc refType |c#0| (Tclass.P1.TrX? P1.TrX$X) $h))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.P1.TrX P1.TrX$X) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.P1.TrX? P1.TrX$X) $h))
)))
(assert (forall ((P1.Tr$X T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.P1.Tr P1.Tr$X) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.P1.Tr? P1.Tr$X) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.P1.Tr P1.Tr$X) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.P1.Tr? P1.Tr$X) $h@@0))
)))
(assert (forall ((P1.Cl$Y T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.P1.Cl P1.Cl$Y) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.P1.Cl? P1.Cl$Y) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2830|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.P1.Cl P1.Cl$Y) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.P1.Cl? P1.Cl$Y) $h@@1))
)))
(assert (forall ((P1.Cl$Y@@0 T@U) ) (! (implements$P1.Tr (Tclass.P1.Cl? P1.Cl$Y@@0) (Tclass._System.Tuple2 P1.Cl$Y@@0 P1.Cl$Y@@0))
 :qid |unknown.0:0|
 :skolemid |2828|
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
(assert (forall ((P1.TrX$X@@0 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass.P1.TrX? P1.TrX$X@@0) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2805|
 :pattern ( ($IsAlloc refType $o (Tclass.P1.TrX? P1.TrX$X@@0) $h@@2))
)))
(assert (forall ((P1.Tr$X@@0 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.P1.Tr? P1.Tr$X@@0) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2817|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.P1.Tr? P1.Tr$X@@0) $h@@3))
)))
(assert (forall ((P1.Cl$Y@@1 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.P1.Cl? P1.Cl$Y@@1) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2827|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.P1.Cl? P1.Cl$Y@@1) $h@@4))
)))
(assert (= (FDim P1.TrX.w) 0))
(assert (= (FieldOfDecl class.P1.TrX? field$w) P1.TrX.w))
(assert  (not ($IsGhostField P1.TrX.w)))
(assert (forall ((P1.Tr$X@@1 T@U) ($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 (Tclass.P1.Tr? P1.Tr$X@@1)) ($Is refType $o@@2 (Tclass.P1.TrX? P1.Tr$X@@1)))
 :qid |unknown.0:0|
 :skolemid |2833|
 :pattern ( ($Is refType $o@@2 (Tclass.P1.Tr? P1.Tr$X@@1)))
)))
(assert (forall ((P1.Tr$X@@2 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.P1.Tr? P1.Tr$X@@2)) ($IsBox bx (Tclass.P1.TrX? P1.Tr$X@@2)))
 :qid |unknown.0:0|
 :skolemid |2831|
 :pattern ( ($IsBox bx (Tclass.P1.Tr? P1.Tr$X@@2)))
)))
(assert (forall ((P1.Cl$Y@@2 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.P1.Cl? P1.Cl$Y@@2)) ($Is refType $o@@3 (Tclass.P1.Tr? (Tclass._System.Tuple2 P1.Cl$Y@@2 P1.Cl$Y@@2))))
 :qid |unknown.0:0|
 :skolemid |2837|
 :pattern ( ($Is refType $o@@3 (Tclass.P1.Cl? P1.Cl$Y@@2)))
)))
(assert (forall ((P1.Cl$Y@@3 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.P1.Cl? P1.Cl$Y@@3)) ($IsBox bx@@0 (Tclass.P1.Tr? (Tclass._System.Tuple2 P1.Cl$Y@@3 P1.Cl$Y@@3))))
 :qid |unknown.0:0|
 :skolemid |2835|
 :pattern ( ($IsBox bx@@0 (Tclass.P1.Cl? P1.Cl$Y@@3)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2292|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((P1.TrX$X@@1 T@U) ($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 (Tclass.P1.TrX? P1.TrX$X@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) P1.TrX.w) P1.TrX$X@@1 $h@@5))
 :qid |unknown.0:0|
 :skolemid |2807|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) P1.TrX.w) (Tclass.P1.TrX? P1.TrX$X@@1))
)))
(assert ($IsGhostField alloc))
(assert (forall ((P1.TrX$X@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.P1.TrX P1.TrX$X@@2))  (and ($Is refType |c#0@@2| (Tclass.P1.TrX? P1.TrX$X@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( ($Is refType |c#0@@2| (Tclass.P1.TrX P1.TrX$X@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.P1.TrX? P1.TrX$X@@2)))
)))
(assert (forall ((P1.Tr$X@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.P1.Tr P1.Tr$X@@3))  (and ($Is refType |c#0@@3| (Tclass.P1.Tr? P1.Tr$X@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($Is refType |c#0@@3| (Tclass.P1.Tr P1.Tr$X@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.P1.Tr? P1.Tr$X@@3)))
)))
(assert (forall ((P1.Cl$Y@@4 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.P1.Cl P1.Cl$Y@@4))  (and ($Is refType |c#0@@4| (Tclass.P1.Cl? P1.Cl$Y@@4)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2829|
 :pattern ( ($Is refType |c#0@@4| (Tclass.P1.Cl P1.Cl$Y@@4)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.P1.Cl? P1.Cl$Y@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h) ($IsAlloc T@@0 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2305|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h))
)))
(assert (forall ((P1.Cl$Y@@5 T@U) ) (!  (and (= (Tag (Tclass.P1.Cl P1.Cl$Y@@5)) Tagclass.P1.Cl) (= (TagFamily (Tclass.P1.Cl P1.Cl$Y@@5)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2798|
 :pattern ( (Tclass.P1.Cl P1.Cl$Y@@5))
)))
(assert (forall ((P1.TrX$X@@3 T@U) ) (!  (and (= (Tag (Tclass.P1.TrX? P1.TrX$X@@3)) Tagclass.P1.TrX?) (= (TagFamily (Tclass.P1.TrX? P1.TrX$X@@3)) tytagFamily$TrX))
 :qid |unknown.0:0|
 :skolemid |2801|
 :pattern ( (Tclass.P1.TrX? P1.TrX$X@@3))
)))
(assert (forall ((P1.TrX$X@@4 T@U) ) (!  (and (= (Tag (Tclass.P1.TrX P1.TrX$X@@4)) Tagclass.P1.TrX) (= (TagFamily (Tclass.P1.TrX P1.TrX$X@@4)) tytagFamily$TrX))
 :qid |unknown.0:0|
 :skolemid |2808|
 :pattern ( (Tclass.P1.TrX P1.TrX$X@@4))
)))
(assert (forall ((P1.Tr$X@@4 T@U) ) (!  (and (= (Tag (Tclass.P1.Tr? P1.Tr$X@@4)) Tagclass.P1.Tr?) (= (TagFamily (Tclass.P1.Tr? P1.Tr$X@@4)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( (Tclass.P1.Tr? P1.Tr$X@@4))
)))
(assert (forall ((P1.Tr$X@@5 T@U) ) (!  (and (= (Tag (Tclass.P1.Tr P1.Tr$X@@5)) Tagclass.P1.Tr) (= (TagFamily (Tclass.P1.Tr P1.Tr$X@@5)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( (Tclass.P1.Tr P1.Tr$X@@5))
)))
(assert (forall ((P1.Cl$Y@@6 T@U) ) (!  (and (= (Tag (Tclass.P1.Cl? P1.Cl$Y@@6)) Tagclass.P1.Cl?) (= (TagFamily (Tclass.P1.Cl? P1.Cl$Y@@6)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( (Tclass.P1.Cl? P1.Cl$Y@@6))
)))
(assert (forall ((P1.TrX$X@@5 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 (Tclass.P1.TrX? P1.TrX$X@@5)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) P1.TrX.w) P1.TrX$X@@5))
 :qid |unknown.0:0|
 :skolemid |2806|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) P1.TrX.w) (Tclass.P1.TrX? P1.TrX$X@@5))
)))
(assert (forall ((P1.Cl$Y@@7 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.P1.Cl? P1.Cl$Y@@7))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.P1.Cl? P1.Cl$Y@@7))))
 :qid |unknown.0:0|
 :skolemid |2826|
 :pattern ( ($Is refType $o@@6 (Tclass.P1.Cl? P1.Cl$Y@@7)))
)))
(assert (forall ((P1.Tr$X@@6 T@U) (bx@@1 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 (Tclass.P1.Tr? P1.Tr$X@@6) $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@1 (Tclass.P1.TrX? P1.Tr$X@@6) $h@@7))
 :qid |unknown.0:0|
 :skolemid |2832|
 :pattern ( ($IsAllocBox bx@@1 (Tclass.P1.Tr? P1.Tr$X@@6) $h@@7))
)))
(assert (forall ((P1.Tr$X@@7 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.P1.Tr? P1.Tr$X@@7) $heap) ($IsAlloc refType $o@@7 (Tclass.P1.TrX? P1.Tr$X@@7) $heap))
 :qid |unknown.0:0|
 :skolemid |2834|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.P1.Tr? P1.Tr$X@@7) $heap))
)))
(assert (forall ((P1.Cl$Y@@8 T@U) (bx@@2 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 (Tclass.P1.Cl? P1.Cl$Y@@8) $h@@8) ($IsGoodHeap $h@@8)) ($IsAllocBox bx@@2 (Tclass.P1.Tr? (Tclass._System.Tuple2 P1.Cl$Y@@8 P1.Cl$Y@@8)) $h@@8))
 :qid |unknown.0:0|
 :skolemid |2836|
 :pattern ( ($IsAllocBox bx@@2 (Tclass.P1.Cl? P1.Cl$Y@@8) $h@@8))
)))
(assert (forall ((P1.Cl$Y@@9 T@U) ($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 (Tclass.P1.Cl? P1.Cl$Y@@9) $heap@@0) ($IsAlloc refType $o@@8 (Tclass.P1.Tr? (Tclass._System.Tuple2 P1.Cl$Y@@9 P1.Cl$Y@@9)) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass.P1.Cl? P1.Cl$Y@@9) $heap@@0))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2373|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2293|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2304|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) |_System._tuple#2$T0|)
 :qid |unknown.0:0|
 :skolemid |2723|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |2724|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((P1.Cl$Y@@10 T@U) ) (! (= (Tclass.P1.Cl_0 (Tclass.P1.Cl P1.Cl$Y@@10)) P1.Cl$Y@@10)
 :qid |unknown.0:0|
 :skolemid |2799|
 :pattern ( (Tclass.P1.Cl P1.Cl$Y@@10))
)))
(assert (forall ((P1.TrX$X@@6 T@U) ) (! (= (Tclass.P1.TrX?_0 (Tclass.P1.TrX? P1.TrX$X@@6)) P1.TrX$X@@6)
 :qid |unknown.0:0|
 :skolemid |2802|
 :pattern ( (Tclass.P1.TrX? P1.TrX$X@@6))
)))
(assert (forall ((P1.TrX$X@@7 T@U) ) (! (= (Tclass.P1.TrX_0 (Tclass.P1.TrX P1.TrX$X@@7)) P1.TrX$X@@7)
 :qid |unknown.0:0|
 :skolemid |2809|
 :pattern ( (Tclass.P1.TrX P1.TrX$X@@7))
)))
(assert (forall ((P1.Tr$X@@8 T@U) ) (! (= (Tclass.P1.Tr?_0 (Tclass.P1.Tr? P1.Tr$X@@8)) P1.Tr$X@@8)
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( (Tclass.P1.Tr? P1.Tr$X@@8))
)))
(assert (forall ((P1.Tr$X@@9 T@U) ) (! (= (Tclass.P1.Tr_0 (Tclass.P1.Tr P1.Tr$X@@9)) P1.Tr$X@@9)
 :qid |unknown.0:0|
 :skolemid |2819|
 :pattern ( (Tclass.P1.Tr P1.Tr$X@@9))
)))
(assert (forall ((P1.Cl$Y@@11 T@U) ) (! (= (Tclass.P1.Cl?_0 (Tclass.P1.Cl? P1.Cl$Y@@11)) P1.Cl$Y@@11)
 :qid |unknown.0:0|
 :skolemid |2824|
 :pattern ( (Tclass.P1.Cl? P1.Cl$Y@@11))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2291|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))))
 :qid |unknown.0:0|
 :skolemid |2725|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)))
)))
(assert (forall ((P1.TrX$X@@8 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass.P1.TrX? P1.TrX$X@@8))  (or (= $o@@9 null) (implements$P1.TrX (dtype $o@@9) P1.TrX$X@@8)))
 :qid |unknown.0:0|
 :skolemid |2804|
 :pattern ( ($Is refType $o@@9 (Tclass.P1.TrX? P1.TrX$X@@8)))
)))
(assert (forall ((P1.Tr$X@@10 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass.P1.Tr? P1.Tr$X@@10))  (or (= $o@@10 null) (implements$P1.Tr (dtype $o@@10) P1.Tr$X@@10)))
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( ($Is refType $o@@10 (Tclass.P1.Tr? P1.Tr$X@@10)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@11 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3422|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2722|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((P1.Cl$Y@@12 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.P1.Cl P1.Cl$Y@@12)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.P1.Cl P1.Cl$Y@@12))))
 :qid |unknown.0:0|
 :skolemid |2800|
 :pattern ( ($IsBox bx@@5 (Tclass.P1.Cl P1.Cl$Y@@12)))
)))
(assert (forall ((P1.TrX$X@@9 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.P1.TrX? P1.TrX$X@@9)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.P1.TrX? P1.TrX$X@@9))))
 :qid |unknown.0:0|
 :skolemid |2803|
 :pattern ( ($IsBox bx@@6 (Tclass.P1.TrX? P1.TrX$X@@9)))
)))
(assert (forall ((P1.TrX$X@@10 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.P1.TrX P1.TrX$X@@10)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass.P1.TrX P1.TrX$X@@10))))
 :qid |unknown.0:0|
 :skolemid |2810|
 :pattern ( ($IsBox bx@@7 (Tclass.P1.TrX P1.TrX$X@@10)))
)))
(assert (forall ((P1.Tr$X@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.P1.Tr? P1.Tr$X@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.P1.Tr? P1.Tr$X@@11))))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( ($IsBox bx@@8 (Tclass.P1.Tr? P1.Tr$X@@11)))
)))
(assert (forall ((P1.Tr$X@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.P1.Tr P1.Tr$X@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.P1.Tr P1.Tr$X@@12))))
 :qid |unknown.0:0|
 :skolemid |2820|
 :pattern ( ($IsBox bx@@9 (Tclass.P1.Tr P1.Tr$X@@12)))
)))
(assert (forall ((P1.Cl$Y@@13 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.P1.Cl? P1.Cl$Y@@13)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.P1.Cl? P1.Cl$Y@@13))))
 :qid |unknown.0:0|
 :skolemid |2825|
 :pattern ( ($IsBox bx@@10 (Tclass.P1.Cl? P1.Cl$Y@@13)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2327|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2306|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$P1.__default.M)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |c#0@@5| null)) (not true)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |c#0@@5| (Tclass.P1.Cl TInt)) ($IsAlloc refType |c#0@@5| (Tclass.P1.Cl TInt) $Heap))) (=> (and (and (and ($Is DatatypeTypeType |x#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |x#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
