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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.G () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IsFilter (T@U T@U) Bool)
(declare-fun |_module.__default.IsFilter#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc)
)
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert ($AlwaysAllocated Tclass._module.G))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@2 b@@2) o@@0)  (and (|Set#IsMember| a@@2 o@@0) (|Set#IsMember| b@@2 o@@0)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@2 b@@2) o@@0))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@3 b@@3) b@@3) (|Set#Union| a@@3 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@4 b@@4) b@@4) (|Set#Intersection| a@@4 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Subset| a@@6 b@@6) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@6 o@@2) (|Set#IsMember| b@@6 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@6 o@@2))
 :pattern ( (|Set#IsMember| b@@6 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@6 b@@6))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@7) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@7 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@7))
)))
(assert (= (Ctor SetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@8 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@4))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@9) a@@9) b@@9) (= (|Set#Difference| (|Set#Union| a@@9 b@@9) b@@9) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|f#0| T@U) (|S#0| T@U) ) (!  (=> (or (|_module.__default.IsFilter#canCall| |f#0| |S#0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |f#0| (TSet (TSet Tclass._module.G))) ($Is SetType |S#0| (TSet Tclass._module.G))))) (= (_module.__default.IsFilter |f#0| |S#0|)  (and (and (and (forall ((|A#0| T@U) (|B#0| T@U) ) (!  (=> (and ($Is SetType |A#0| (TSet Tclass._module.G)) ($Is SetType |B#0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0| ($Box SetType |A#0|)) (|Set#Subset| |A#0| |B#0|)) (|Set#IsMember| |f#0| ($Box SetType |B#0|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |530|
 :pattern ( (|Set#IsMember| |f#0| ($Box SetType |B#0|)) (|Set#IsMember| |f#0| ($Box SetType |A#0|)))
 :pattern ( (|Set#Subset| |A#0| |B#0|))
)) (forall ((|C#0| T@U) (|D#0| T@U) ) (!  (=> (and ($Is SetType |C#0| (TSet Tclass._module.G)) ($Is SetType |D#0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0| ($Box SetType |C#0|)) (|Set#IsMember| |f#0| ($Box SetType |D#0|))) (|Set#IsMember| |f#0| ($Box SetType (|Set#Intersection| |C#0| |D#0|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |531|
 :pattern ( (|Set#Intersection| |C#0| |D#0|))
))) (|Set#IsMember| |f#0| ($Box SetType |S#0|))) (not (|Set#IsMember| |f#0| ($Box SetType (Lit SetType |Set#Empty|)))))))
 :qid |UltraFilterdfy.8:26|
 :skolemid |534|
 :pattern ( (_module.__default.IsFilter |f#0| |S#0|))
))))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@0) ($IsAllocBox bx@@0 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@0))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@11)) (|Set#Union| a@@11 b@@11))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@11)))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|Set#Intersection| a@@12 (|Set#Intersection| a@@12 b@@12)) (|Set#Intersection| a@@12 b@@12))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@12 (|Set#Intersection| a@@12 b@@12)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|f#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|_module.__default.IsFilter#canCall| (Lit SetType |f#0@@0|) (Lit SetType |S#0@@0|)) (and (< 0 $FunctionContextHeight) (and ($Is SetType |f#0@@0| (TSet (TSet Tclass._module.G))) ($Is SetType |S#0@@0| (TSet Tclass._module.G))))) (= (_module.__default.IsFilter (Lit SetType |f#0@@0|) (Lit SetType |S#0@@0|))  (and (and (and (forall ((|A#1| T@U) (|B#1| T@U) ) (!  (=> (and ($Is SetType |A#1| (TSet Tclass._module.G)) ($Is SetType |B#1| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType |A#1|)) (|Set#Subset| |A#1| |B#1|)) (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType |B#1|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |535|
 :pattern ( (|Set#IsMember| |f#0@@0| ($Box SetType |B#1|)) (|Set#IsMember| |f#0@@0| ($Box SetType |A#1|)))
 :pattern ( (|Set#Subset| |A#1| |B#1|))
)) (forall ((|C#1| T@U) (|D#1| T@U) ) (!  (=> (and ($Is SetType |C#1| (TSet Tclass._module.G)) ($Is SetType |D#1| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType |C#1|)) (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType |D#1|))) (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType (|Set#Intersection| |C#1| |D#1|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |536|
 :pattern ( (|Set#Intersection| |C#1| |D#1|))
))) (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType (Lit SetType |S#0@@0|)))) (not (|Set#IsMember| (Lit SetType |f#0@@0|) ($Box SetType (Lit SetType |Set#Empty|)))))))
 :qid |UltraFilterdfy.8:26|
 :weight 3
 :skolemid |539|
 :pattern ( (_module.__default.IsFilter (Lit SetType |f#0@@0|) (Lit SetType |S#0@@0|)))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |653|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@1)) bx@@1) ($Is SetType ($Unbox SetType bx@@1) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@1 (TSet t@@3)))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|Set#Equal| a@@13 b@@13) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@13 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@13 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@13))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |M#0| () T@U)
(declare-fun |A#0_0@0| () T@U)
(declare-fun |B#0_0@0| () T@U)
(declare-fun |h#0| () T@U)
(declare-fun |C#1_0@0| () T@U)
(declare-fun |D#1_0@0| () T@U)
(declare-fun |S#0@@1| () T@U)
(declare-fun |f#0@@1| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Lemma__HIsFilter)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (|Set#Subset| (|Set#Union| |M#0| |A#0_0@0|) (|Set#Union| |M#0| |B#0_0@0|))) (=> (|Set#Subset| (|Set#Union| |M#0| |A#0_0@0|) (|Set#Union| |M#0| |B#0_0@0|)) (=> (= (ControlFlow 0 29) (- 0 28)) (|Set#IsMember| |h#0| ($Box SetType |B#0_0@0|)))))))
(let ((anon17_Then_correct true))
(let ((anon3_correct  (=> (and (|Set#IsMember| |h#0| ($Box SetType |A#0_0@0|)) (|Set#Subset| |A#0_0@0| |B#0_0@0|)) (and (=> (= (ControlFlow 0 31) 27) anon17_Then_correct) (=> (= (ControlFlow 0 31) 29) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (not (|Set#IsMember| |h#0| ($Box SetType |A#0_0@0|))) (= (ControlFlow 0 33) 31)) anon3_correct)))
(let ((anon16_Then_correct  (=> (and (|Set#IsMember| |h#0| ($Box SetType |A#0_0@0|)) (= (ControlFlow 0 32) 31)) anon3_correct)))
(let ((anon15_Then_correct  (=> (and ($Is SetType |A#0_0@0| (TSet Tclass._module.G)) ($Is SetType |B#0_0@0| (TSet Tclass._module.G))) (and (=> (= (ControlFlow 0 34) 32) anon16_Then_correct) (=> (= (ControlFlow 0 34) 33) anon16_Else_correct)))))
(let ((anon20_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (|Set#Equal| (|Set#Intersection| (|Set#Union| |M#0| |C#1_0@0|) (|Set#Union| |M#0| |D#1_0@0|)) (|Set#Union| |M#0| (|Set#Intersection| |C#1_0@0| |D#1_0@0|)))) (=> (|Set#Equal| (|Set#Intersection| (|Set#Union| |M#0| |C#1_0@0|) (|Set#Union| |M#0| |D#1_0@0|)) (|Set#Union| |M#0| (|Set#Intersection| |C#1_0@0| |D#1_0@0|))) (=> (= (ControlFlow 0 20) (- 0 19)) (|Set#IsMember| |h#0| ($Box SetType (|Set#Intersection| |C#1_0@0| |D#1_0@0|))))))))
(let ((anon20_Then_correct true))
(let ((anon10_correct  (=> (and (|Set#IsMember| |h#0| ($Box SetType |C#1_0@0|)) (|Set#IsMember| |h#0| ($Box SetType |D#1_0@0|))) (and (=> (= (ControlFlow 0 22) 18) anon20_Then_correct) (=> (= (ControlFlow 0 22) 20) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not (|Set#IsMember| |h#0| ($Box SetType |C#1_0@0|))) (= (ControlFlow 0 24) 22)) anon10_correct)))
(let ((anon19_Then_correct  (=> (and (|Set#IsMember| |h#0| ($Box SetType |C#1_0@0|)) (= (ControlFlow 0 23) 22)) anon10_correct)))
(let ((anon18_Then_correct  (=> (and ($Is SetType |C#1_0@0| (TSet Tclass._module.G)) ($Is SetType |D#1_0@0| (TSet Tclass._module.G))) (and (=> (= (ControlFlow 0 25) 23) anon19_Then_correct) (=> (= (ControlFlow 0 25) 24) anon19_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (forall ((|A#3| T@U) (|B#3| T@U) ) (!  (=> (and ($Is SetType |A#3| (TSet Tclass._module.G)) ($Is SetType |B#3| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |h#0| ($Box SetType |A#3|)) (|Set#Subset| |A#3| |B#3|)) (|Set#IsMember| |h#0| ($Box SetType |B#3|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |603|
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |B#3|)) (|Set#IsMember| |h#0| ($Box SetType |A#3|)))
 :pattern ( (|Set#Subset| |A#3| |B#3|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (forall ((|A#3@@0| T@U) (|B#3@@0| T@U) ) (!  (=> (and ($Is SetType |A#3@@0| (TSet Tclass._module.G)) ($Is SetType |B#3@@0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |h#0| ($Box SetType |A#3@@0|)) (|Set#Subset| |A#3@@0| |B#3@@0|)) (|Set#IsMember| |h#0| ($Box SetType |B#3@@0|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |603|
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |B#3@@0|)) (|Set#IsMember| |h#0| ($Box SetType |A#3@@0|)))
 :pattern ( (|Set#Subset| |A#3@@0| |B#3@@0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (forall ((|C#3| T@U) (|D#3| T@U) ) (!  (=> (and ($Is SetType |C#3| (TSet Tclass._module.G)) ($Is SetType |D#3| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |h#0| ($Box SetType |C#3|)) (|Set#IsMember| |h#0| ($Box SetType |D#3|))) (|Set#IsMember| |h#0| ($Box SetType (|Set#Intersection| |C#3| |D#3|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |604|
 :pattern ( (|Set#Intersection| |C#3| |D#3|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (forall ((|C#3@@0| T@U) (|D#3@@0| T@U) ) (!  (=> (and ($Is SetType |C#3@@0| (TSet Tclass._module.G)) ($Is SetType |D#3@@0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |h#0| ($Box SetType |C#3@@0|)) (|Set#IsMember| |h#0| ($Box SetType |D#3@@0|))) (|Set#IsMember| |h#0| ($Box SetType (|Set#Intersection| |C#3@@0| |D#3@@0|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |604|
 :pattern ( (|Set#Intersection| |C#3@@0| |D#3@@0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (|Set#IsMember| |h#0| ($Box SetType |S#0@@1|))))) (=> (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (|Set#IsMember| |h#0| ($Box SetType |S#0@@1|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.IsFilter#canCall| |h#0| |S#0@@1|) (or (_module.__default.IsFilter |h#0| |S#0@@1|) (not (|Set#IsMember| |h#0| ($Box SetType (Lit SetType |Set#Empty|)))))))))))))))
(let ((anon18_Else_correct  (=> (forall ((|C#1_1| T@U) (|D#1_1| T@U) ) (!  (=> (and (and ($Is SetType |C#1_1| (TSet Tclass._module.G)) ($Is SetType |D#1_1| (TSet Tclass._module.G))) (and (|Set#IsMember| |h#0| ($Box SetType |C#1_1|)) (|Set#IsMember| |h#0| ($Box SetType |D#1_1|)))) (|Set#IsMember| |h#0| ($Box SetType (|Set#Intersection| |C#1_1| |D#1_1|))))
 :qid |UltraFilterdfy.61:10|
 :skolemid |608|
 :pattern ( (|Set#Intersection| |C#1_1| |D#1_1|))
)) (and (=> (= (ControlFlow 0 6) (- 0 17)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|A#0@@0| T@U) (|B#0@@0| T@U) ) (!  (=> (and ($Is SetType |A#0@@0| (TSet Tclass._module.G)) ($Is SetType |B#0@@0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@0|)) (|Set#Subset| |A#0@@0| |B#0@@0|)) (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@0|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |612|
 :pattern ( (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@0|)) (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@0|)))
 :pattern ( (|Set#Subset| |A#0@@0| |B#0@@0|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|A#0@@1| T@U) (|B#0@@1| T@U) ) (!  (=> (and ($Is SetType |A#0@@1| (TSet Tclass._module.G)) ($Is SetType |B#0@@1| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@1|)) (|Set#Subset| |A#0@@1| |B#0@@1|)) (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@1|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |612|
 :pattern ( (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@1|)) (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@1|)))
 :pattern ( (|Set#Subset| |A#0@@1| |B#0@@1|))
)))) (and (=> (= (ControlFlow 0 6) (- 0 16)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|C#0@@0| T@U) (|D#0@@0| T@U) ) (!  (=> (and ($Is SetType |C#0@@0| (TSet Tclass._module.G)) ($Is SetType |D#0@@0| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |C#0@@0|)) (|Set#IsMember| |f#0@@1| ($Box SetType |D#0@@0|))) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Intersection| |C#0@@0| |D#0@@0|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |613|
 :pattern ( (|Set#Intersection| |C#0@@0| |D#0@@0|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|C#0@@1| T@U) (|D#0@@1| T@U) ) (!  (=> (and ($Is SetType |C#0@@1| (TSet Tclass._module.G)) ($Is SetType |D#0@@1| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |C#0@@1|)) (|Set#IsMember| |f#0@@1| ($Box SetType |D#0@@1|))) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Intersection| |C#0@@1| |D#0@@1|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |613|
 :pattern ( (|Set#Intersection| |C#0@@1| |D#0@@1|))
)))) (and (=> (= (ControlFlow 0 6) (- 0 15)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (|Set#IsMember| |f#0@@1| ($Box SetType |S#0@@1|))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (|Set#IsMember| |f#0@@1| ($Box SetType |S#0@@1|)))) (and (=> (= (ControlFlow 0 6) (- 0 14)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (not (|Set#IsMember| |f#0@@1| ($Box SetType (Lit SetType |Set#Empty|))))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (not (|Set#IsMember| |f#0@@1| ($Box SetType (Lit SetType |Set#Empty|)))))) (and (=> (= (ControlFlow 0 6) (- 0 13)) (forall ((|X#1| T@U) ) (!  (=> ($Is SetType |X#1| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0| ($Box SetType |X#1|)) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Union| |M#0| |X#1|)))))
 :qid |UltraFilterdfy.74:19|
 :skolemid |616|
 :pattern ( (|Set#Union| |M#0| |X#1|))
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |X#1|)))
))) (=> (forall ((|X#1@@0| T@U) ) (!  (=> ($Is SetType |X#1@@0| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0| ($Box SetType |X#1@@0|)) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Union| |M#0| |X#1@@0|)))))
 :qid |UltraFilterdfy.74:19|
 :skolemid |616|
 :pattern ( (|Set#Union| |M#0| |X#1@@0|))
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |X#1@@0|)))
)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (|Set#IsMember| |h#0| ($Box SetType |S#0@@1|)) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 6) (- 0 12)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|A#0@@2| T@U) (|B#0@@2| T@U) ) (!  (=> (and ($Is SetType |A#0@@2| (TSet Tclass._module.G)) ($Is SetType |B#0@@2| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@2|)) (|Set#Subset| |A#0@@2| |B#0@@2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@2|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |623|
 :pattern ( (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@2|)))
 :pattern ( (|Set#Subset| |A#0@@2| |B#0@@2|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|A#0@@3| T@U) (|B#0@@3| T@U) ) (!  (=> (and ($Is SetType |A#0@@3| (TSet Tclass._module.G)) ($Is SetType |B#0@@3| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@3|)) (|Set#Subset| |A#0@@3| |B#0@@3|)) (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@3|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |623|
 :pattern ( (|Set#IsMember| |f#0@@1| ($Box SetType |B#0@@3|)) (|Set#IsMember| |f#0@@1| ($Box SetType |A#0@@3|)))
 :pattern ( (|Set#Subset| |A#0@@3| |B#0@@3|))
)))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|C#0@@2| T@U) (|D#0@@2| T@U) ) (!  (=> (and ($Is SetType |C#0@@2| (TSet Tclass._module.G)) ($Is SetType |D#0@@2| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |C#0@@2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |D#0@@2|))) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Intersection| |C#0@@2| |D#0@@2|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |624|
 :pattern ( (|Set#Intersection| |C#0@@2| |D#0@@2|))
))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (forall ((|C#0@@3| T@U) (|D#0@@3| T@U) ) (!  (=> (and ($Is SetType |C#0@@3| (TSet Tclass._module.G)) ($Is SetType |D#0@@3| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |C#0@@3|)) (|Set#IsMember| |f#0@@1| ($Box SetType |D#0@@3|))) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Intersection| |C#0@@3| |D#0@@3|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |624|
 :pattern ( (|Set#Intersection| |C#0@@3| |D#0@@3|))
)))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (|Set#IsMember| |f#0@@1| ($Box SetType |S#0@@1|))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (|Set#IsMember| |f#0@@1| ($Box SetType |S#0@@1|)))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (not (|Set#IsMember| |f#0@@1| ($Box SetType (Lit SetType |Set#Empty|))))))) (=> (=> (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (or (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (not (|Set#IsMember| |f#0@@1| ($Box SetType (Lit SetType |Set#Empty|)))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall ((|X#1@@1| T@U) ) (!  (=> ($Is SetType |X#1@@1| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0| ($Box SetType |X#1@@1|)) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Union| |M#0| |X#1@@1|)))))
 :qid |UltraFilterdfy.85:19|
 :skolemid |627|
 :pattern ( (|Set#Union| |M#0| |X#1@@1|))
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |X#1@@1|)))
))) (=> (forall ((|X#1@@2| T@U) ) (!  (=> ($Is SetType |X#1@@2| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0| ($Box SetType |X#1@@2|)) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Union| |M#0| |X#1@@2|)))))
 :qid |UltraFilterdfy.85:19|
 :skolemid |627|
 :pattern ( (|Set#Union| |M#0| |X#1@@2|))
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |X#1@@2|)))
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (|Set#IsMember| |f#0@@1| ($Box SetType |M#0|)))) (=> (not (|Set#IsMember| |f#0@@1| ($Box SetType |M#0|))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (not (|Set#IsMember| |h#0| ($Box SetType (Lit SetType |Set#Empty|))))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (forall ((|A#0_1| T@U) (|B#0_1| T@U) ) (!  (=> (and (and ($Is SetType |A#0_1| (TSet Tclass._module.G)) ($Is SetType |B#0_1| (TSet Tclass._module.G))) (and (|Set#IsMember| |h#0| ($Box SetType |A#0_1|)) (|Set#Subset| |A#0_1| |B#0_1|))) (|Set#IsMember| |h#0| ($Box SetType |B#0_1|)))
 :qid |UltraFilterdfy.55:10|
 :skolemid |607|
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |B#0_1|)) (|Set#IsMember| |h#0| ($Box SetType |A#0_1|)))
 :pattern ( (|Set#Subset| |A#0_1| |B#0_1|))
)) (and (=> (= (ControlFlow 0 26) 25) anon18_Then_correct) (=> (= (ControlFlow 0 26) 6) anon18_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 35) 34) anon15_Then_correct) (=> (= (ControlFlow 0 35) 26) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |h#0| (TSet (TSet Tclass._module.G))) ($IsAlloc SetType |h#0| (TSet (TSet Tclass._module.G)) $Heap))) (=> (and (and (and (and ($Is SetType |f#0@@1| (TSet (TSet Tclass._module.G))) ($IsAlloc SetType |f#0@@1| (TSet (TSet Tclass._module.G)) $Heap)) (and ($Is SetType |S#0@@1| (TSet Tclass._module.G)) ($IsAlloc SetType |S#0@@1| (TSet Tclass._module.G) $Heap))) (and (and ($Is SetType |M#0| (TSet Tclass._module.G)) ($IsAlloc SetType |M#0| (TSet Tclass._module.G) $Heap)) (= 2 $FunctionContextHeight))) (and (and (and (|_module.__default.IsFilter#canCall| |f#0@@1| |S#0@@1|) (and (_module.__default.IsFilter |f#0@@1| |S#0@@1|) (and (and (and (forall ((|A#2| T@U) (|B#2| T@U) ) (!  (=> (and ($Is SetType |A#2| (TSet Tclass._module.G)) ($Is SetType |B#2| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |A#2|)) (|Set#Subset| |A#2| |B#2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |B#2|))))
 :qid |UltraFilterdfy.10:11|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |f#0@@1| ($Box SetType |B#2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |A#2|)))
 :pattern ( (|Set#Subset| |A#2| |B#2|))
)) (forall ((|C#2| T@U) (|D#2| T@U) ) (!  (=> (and ($Is SetType |C#2| (TSet Tclass._module.G)) ($Is SetType |D#2| (TSet Tclass._module.G))) (=> (and (|Set#IsMember| |f#0@@1| ($Box SetType |C#2|)) (|Set#IsMember| |f#0@@1| ($Box SetType |D#2|))) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Intersection| |C#2| |D#2|)))))
 :qid |UltraFilterdfy.11:11|
 :skolemid |601|
 :pattern ( (|Set#Intersection| |C#2| |D#2|))
))) (|Set#IsMember| |f#0@@1| ($Box SetType |S#0@@1|))) (not (|Set#IsMember| |f#0@@1| ($Box SetType (Lit SetType |Set#Empty|))))))) (forall ((|X#1@@3| T@U) ) (!  (=> ($Is SetType |X#1@@3| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0| ($Box SetType |X#1@@3|)) (|Set#IsMember| |f#0@@1| ($Box SetType (|Set#Union| |M#0| |X#1@@3|)))))
 :qid |UltraFilterdfy.51:19|
 :skolemid |602|
 :pattern ( (|Set#Union| |M#0| |X#1@@3|))
 :pattern ( (|Set#IsMember| |h#0| ($Box SetType |X#1@@3|)))
))) (and (not (|Set#IsMember| |f#0@@1| ($Box SetType |M#0|))) (= (ControlFlow 0 36) 35)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
