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
(declare-fun Tagclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.A? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.K () T@U)
(declare-fun tytagFamily$Odd () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$K () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.Odd () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.TraitsExtendingTraits.K (T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.K? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TraitsExtendingTraits.A (T@U T@U) T@U)
(declare-fun Tclass.TraitsExtendingTraits.A? (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
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
(assert (distinct alloc Tagclass.TraitsExtendingTraits.Odd Tagclass.TraitsExtendingTraits.A Tagclass.TraitsExtendingTraits.A? Tagclass.TraitsExtendingTraits.K? Tagclass.TraitsExtendingTraits.K tytagFamily$Odd tytagFamily$A tytagFamily$K)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2685|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2686|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h)
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TraitsExtendingTraits.Odd $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2684|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TraitsExtendingTraits.K$Y T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0) ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
 :qid |unknown.0:0|
 :skolemid |3187|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y) $h@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2681|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
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
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2573|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2571|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2702|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2703|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0 T@U) (TraitsExtendingTraits.A$Y1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1))  (and ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0 TraitsExtendingTraits.A$Y1)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@1))  (and ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3186|
 :pattern ( ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@1)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@2 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)) Tagclass.TraitsExtendingTraits.K?) (= (TagFamily (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@2))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@3 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3)) Tagclass.TraitsExtendingTraits.K) (= (TagFamily (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3)) tytagFamily$K))
 :qid |unknown.0:0|
 :skolemid |3173|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@3))
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
(assert (forall ((TraitsExtendingTraits.A$Y0@@0 T@U) (TraitsExtendingTraits.A$Y1@@0 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@0 TraitsExtendingTraits.A$Y1@@0) $h@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 1)))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($Is intType |x#0@@0| Tclass.TraitsExtendingTraits.Odd))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@1 T@U) (TraitsExtendingTraits.A$Y1@@1 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@1 TraitsExtendingTraits.A$Y1@@1) $h@@3))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@4 T@U) ($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4) $heap) ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@4 Tclass.TraitsExtendingTraits.Odd) $heap))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@4) $heap))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@2 T@U) (TraitsExtendingTraits.A$Y1@@2 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_0 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2)) TraitsExtendingTraits.A$Y0@@2)
 :qid |unknown.0:0|
 :skolemid |3112|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@2 TraitsExtendingTraits.A$Y1@@2))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@3 T@U) (TraitsExtendingTraits.A$Y1@@3 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A_1 (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3)) TraitsExtendingTraits.A$Y1@@3)
 :qid |unknown.0:0|
 :skolemid |3113|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@3 TraitsExtendingTraits.A$Y1@@3))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@4 T@U) (TraitsExtendingTraits.A$Y1@@4 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_0 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4)) TraitsExtendingTraits.A$Y0@@4)
 :qid |unknown.0:0|
 :skolemid |3116|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@4 TraitsExtendingTraits.A$Y1@@4))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@5 T@U) (TraitsExtendingTraits.A$Y1@@5 T@U) ) (! (= (Tclass.TraitsExtendingTraits.A?_1 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5)) TraitsExtendingTraits.A$Y1@@5)
 :qid |unknown.0:0|
 :skolemid |3117|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@5 TraitsExtendingTraits.A$Y1@@5))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@6 T@U) (TraitsExtendingTraits.A$Y1@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6))  (or (= $o@@3 null) (implements$TraitsExtendingTraits.A (dtype $o@@3) TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)))
 :qid |unknown.0:0|
 :skolemid |3131|
 :pattern ( ($Is refType $o@@3 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@6 TraitsExtendingTraits.A$Y1@@6)))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@5 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K?_0 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5)) TraitsExtendingTraits.K$Y@@5)
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@5))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@6 T@U) ) (! (= (Tclass.TraitsExtendingTraits.K_0 (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@6)) TraitsExtendingTraits.K$Y@@6)
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@6))
)))
(assert (forall ((x@@8 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@1 x@@8))
)))
(assert (forall ((TraitsExtendingTraits.K$Y@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@7))  (or (= $o@@4 null) (implements$TraitsExtendingTraits.K (dtype $o@@4) TraitsExtendingTraits.K$Y@@7)))
 :qid |unknown.0:0|
 :skolemid |3170|
 :pattern ( ($Is refType $o@@4 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@7)))
)))
(assert (forall ((x@@9 Int) (y@@0 Int) ) (! (= (Mod x@@9 y@@0) (mod x@@9 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2896|
 :pattern ( (Mod x@@9 y@@0))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@7 T@U) (TraitsExtendingTraits.A$Y1@@7 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)) Tagclass.TraitsExtendingTraits.A) (= (TagFamily (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3111|
 :pattern ( (Tclass.TraitsExtendingTraits.A TraitsExtendingTraits.A$Y0@@7 TraitsExtendingTraits.A$Y1@@7))
)))
(assert (forall ((TraitsExtendingTraits.A$Y0@@8 T@U) (TraitsExtendingTraits.A$Y1@@8 T@U) ) (!  (and (= (Tag (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)) Tagclass.TraitsExtendingTraits.A?) (= (TagFamily (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8)) tytagFamily$A))
 :qid |unknown.0:0|
 :skolemid |3115|
 :pattern ( (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.A$Y0@@8 TraitsExtendingTraits.A$Y1@@8))
)))
(assert (= (Tag Tclass.TraitsExtendingTraits.Odd) Tagclass.TraitsExtendingTraits.Odd))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.Odd) tytagFamily$Odd))
(assert (forall ((TraitsExtendingTraits.K$Y@@8 T@U) ($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8)) ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.A? TraitsExtendingTraits.K$Y@@8 Tclass.TraitsExtendingTraits.Odd)))
 :qid |unknown.0:0|
 :skolemid |3233|
 :pattern ( ($Is refType $o@@5 (Tclass.TraitsExtendingTraits.K? TraitsExtendingTraits.K$Y@@8)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@11)) (Lit BoxType ($Box T@@2 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2572|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@11)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TraitsExtendingTraits.A$Y0@@9 () T@U)
(declare-fun TraitsExtendingTraits.K$Y@@9 () T@U)
(declare-fun TraitsExtendingTraits.A$Y1@@9 () T@U)
(declare-fun this () T@U)
(declare-fun K_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$TraitsExtendingTraits.K.GetY_k)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= TraitsExtendingTraits.A$Y0@@9 TraitsExtendingTraits.K$Y@@9) (= TraitsExtendingTraits.A$Y1@@9 Tclass.TraitsExtendingTraits.Odd)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this)) (|Set#UnionOne| |Set#Empty| ($Box refType this)))) (=> (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this)) (|Set#UnionOne| |Set#Empty| ($Box refType this))) (=> (and (= K_$_ReadsFrame@0 (|lambda#2| null $Heap alloc this)) (= (ControlFlow 0 2) (- 0 1))) (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= $o@@6 this)) (= $o@@6 this))
 :qid |TraitCompiledfy.424:14|
 :skolemid |3185|
))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9)) ($IsAlloc refType this (Tclass.TraitsExtendingTraits.K TraitsExtendingTraits.K$Y@@9) $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
