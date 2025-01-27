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
(declare-fun Tagclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K? () T@U)
(declare-fun class.TraitsExtendingTraits.A? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K () T@U)
(declare-fun tytagFamily$Odd () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$K () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.TraitsExtendingTraits.K (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TraitsExtendingTraits.A.y0 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TraitsExtendingTraits.K.GetY_k (T@U T@U T@U) T@U)
(declare-fun |TraitsExtendingTraits.K.GetY_k#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.A (T@U T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A? (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A_1 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A?_1 (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.A (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K?_0 (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K_0 (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.K (T@U T@U) Bool)
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
(assert (distinct alloc allocName Tagclass.TraitsExtendingTraits.Odd Tagclass.TraitsExtendingTraits.A Tagclass.TraitsExtendingTraits.A? Tagclass.TraitsExtendingTraits.K? class.TraitsExtendingTraits.A? Tagclass.TraitsExtendingTraits.K tytagFamily$Odd tytagFamily$A tytagFamily$K field$y0)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h)
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TraitsExtendingTraits.K$Y T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0) ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
 :qid |unknown.0:0|
 :skolemid |3187|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
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
(assert (forall ((TraitsExtendingTraits.K$Y@@0 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@0) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3171|
 :pattern ( ($IsAlloc refType $o (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@0) $h@@1))
)))
(assert (= (FDim TraitsExtendingTraits.A.y0) 0))
(assert (= (FieldOfDecl class.TraitsExtendingTraits.A? field$y0) TraitsExtendingTraits.A.y0))
(assert  (not ($IsGhostField TraitsExtendingTraits.A.y0)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2573|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2571|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@1 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@1 $Heap this) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (or (not (= this null)) (not true))) ($IsAlloc refType this (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@1) $Heap)))) ($IsAllocBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@1 $Heap this) TraitsExtendingTraits.K$Y@@1 $Heap))
 :qid |unknown.0:0|
 :skolemid |3181|
 :pattern ( ($IsAllocBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@1 $Heap this) TraitsExtendingTraits.K$Y@@1 $Heap))
))))
(assert (forall ((TraitsExtendingTraits.A$Y0 T@U) (TraitsExtendingTraits.A$Y1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1))  (and ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((TraitsExtendingTraits.K$Y@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@2))  (and ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3186|
 :pattern ( ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2595|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@0 T@U) (TraitsExtendingTraits.A$Y1@@0 T@U) ($h@@2 T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@0))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@3 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@3)) Tagclass.TraitsExtendingTraits.K?) (= (TagFamily (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@3)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@3))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@4 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@4)) Tagclass.TraitsExtendingTraits.K) (= (TagFamily (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@4)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3173|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (= $o@@1 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8403|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@1 T@U) (TraitsExtendingTraits.A$Y1@@1 T@U) (|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3) ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.TraitsExtendingTraits.Odd) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3110|
 :pattern ( ($IsBox bx Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 1)))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@2 T@U) (TraitsExtendingTraits.A$Y1@@2 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2) $h@@4))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@5 T@U) (bx@@0 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5) $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@5 Tclass.TraitsExtendingTraits.Odd) $h@@5))
 :qid |unknown.0:0|
 :skolemid |3232|
 :pattern ( ($IsAllocBox bx@@0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5) $h@@5))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@6 T@U) ($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@6) $heap) ($IsAlloc refType $o@@3 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@6 Tclass.TraitsExtendingTraits.Odd) $heap))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@6) $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@7 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@7 $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@7)) ($IsAlloc refType this@@0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@7) $Heap@@0)))))) (= (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@7 $Heap@@0 this@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) TraitsExtendingTraits.A.y0)))
 :qid |unknown.0:0|
 :skolemid |3183|
 :pattern ( (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@7 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2663|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2594|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@3 T@U) (TraitsExtendingTraits.A$Y1@@3 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3)) TraitsExtendingTraits.A$Y0@@3)
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@4 T@U) (TraitsExtendingTraits.A$Y1@@4 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4)) TraitsExtendingTraits.A$Y1@@4)
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@5 T@U) (TraitsExtendingTraits.A$Y1@@5 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5)) TraitsExtendingTraits.A$Y0@@5)
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@6 T@U) (TraitsExtendingTraits.A$Y1@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)) TraitsExtendingTraits.A$Y1@@6)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@7 T@U) (TraitsExtendingTraits.A$Y1@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7))  (or (= $o@@4 null) (implements$TraitsExtendingTraits.A (dtype $o@@4) TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@8 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K?_0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8)) TraitsExtendingTraits.K$Y@@8)
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@9 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K_0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9)) TraitsExtendingTraits.K$Y@@9)
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@8 T@U) (TraitsExtendingTraits.A$Y1@@8 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) TraitsExtendingTraits.A.y0) TraitsExtendingTraits.A$Y0@@8 $h@@6))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) TraitsExtendingTraits.A.y0) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@9 T@U) (TraitsExtendingTraits.A$Y1@@9 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9))))
 :qid |unknown.0:0|
 :skolemid |3114|
 :pattern ( ($IsBox bx@@1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.A$Y1@@9)))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@10 T@U) (TraitsExtendingTraits.A$Y1@@10 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10))))
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( ($IsBox bx@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@10 TraitsExtendingTraits.A$Y1@@10)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@10 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@10))  (or (= $o@@6 null) (implements$TraitsExtendingTraits.K (dtype $o@@6) TraitsExtendingTraits.K$Y@@10)))
 :qid |unknown.0:0|
 :skolemid |3170|
 :pattern ( ($Is refType $o@@6 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@10)))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2896|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@11 T@U) (TraitsExtendingTraits.A$Y1@@11 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)) Tagclass.TraitsExtendingTraits.A) (= (TagFamily (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@11 TraitsExtendingTraits.A$Y1@@11))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@12 T@U) (TraitsExtendingTraits.A$Y1@@12 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)) Tagclass.TraitsExtendingTraits.A?) (= (TagFamily (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3115|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@12 TraitsExtendingTraits.A$Y1@@12))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@11))))
 :qid |unknown.0:0|
 :skolemid |3121|
 :pattern ( ($IsBox bx@@3 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@11)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@12))))
 :qid |unknown.0:0|
 :skolemid |3175|
 :pattern ( ($IsBox bx@@4 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@12)))
)))
(assert (= (Tag Tclass.TraitsExtendingTraits.Odd) Tagclass.TraitsExtendingTraits.Odd))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.Odd) tytagFamily$Odd))
(assert (forall ((TraitsExtendingTraits.K$Y@@13 T@U) ($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@13)) ($Is refType $o@@7 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@13 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3233|
 :pattern ( ($Is refType $o@@7 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@13)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@14 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@14)) ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@14 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3231|
 :pattern ( ($IsBox bx@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@14)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2572|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TraitsExtendingTraits.K$Y@@15 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|TraitsExtendingTraits.K.GetY_k#canCall| TraitsExtendingTraits.K$Y@@15 $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@15)) ($IsAlloc refType this@@1 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@15) $Heap@@1)))))) ($IsBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@15 $Heap@@1 this@@1) TraitsExtendingTraits.K$Y@@15))
 :qid |unknown.0:0|
 :skolemid |3180|
 :pattern ( (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@15 $Heap@@1 this@@1))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun TraitsExtendingTraits.K$Y@@16 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TraitsExtendingTraits.K.GetY_k)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 TraitsExtendingTraits.A.y0))) (= (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@16 $Heap@@2 this@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) TraitsExtendingTraits.A.y0))) (and ($IsBox (TraitsExtendingTraits.K.GetY_k TraitsExtendingTraits.K$Y@@16 $Heap@@2 this@@2) TraitsExtendingTraits.K$Y@@16) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@0|)))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@2 alloc this@@2)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@16)) ($IsAlloc refType this@@2 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@16) $Heap@@2))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
