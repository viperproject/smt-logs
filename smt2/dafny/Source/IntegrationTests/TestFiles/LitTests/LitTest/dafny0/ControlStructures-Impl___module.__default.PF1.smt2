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
(declare-fun Tagclass._module.D () T@U)
(declare-fun |##_module.D.Green| () T@U)
(declare-fun |##_module.D.Blue| () T@U)
(declare-fun |##_module.D.Red| () T@U)
(declare-fun |##_module.D.Purple| () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.D.Green| () T@U)
(declare-fun |#_module.D.Blue| () T@U)
(declare-fun |#_module.D.Red| () T@U)
(declare-fun |#_module.D.Purple| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.D () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |_module.D#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.D.Green_q (T@U) Bool)
(declare-fun _module.D.Blue_q (T@U) Bool)
(declare-fun _module.D.Red_q (T@U) Bool)
(declare-fun _module.D.Purple_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.D| (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.D |##_module.D.Green| |##_module.D.Blue| |##_module.D.Red| |##_module.D.Purple| tytagFamily$D)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (DatatypeCtorId |#_module.D.Green|) |##_module.D.Green|))
(assert (= (DatatypeCtorId |#_module.D.Blue|) |##_module.D.Blue|))
(assert (= (DatatypeCtorId |#_module.D.Red|) |##_module.D.Red|))
(assert (= (DatatypeCtorId |#_module.D.Purple|) |##_module.D.Purple|))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.D.Green| Tclass._module.D))
(assert ($Is DatatypeTypeType |#_module.D.Blue| Tclass._module.D))
(assert ($Is DatatypeTypeType |#_module.D.Red| Tclass._module.D))
(assert ($Is DatatypeTypeType |#_module.D.Purple| Tclass._module.D))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|_module.D#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (|_module.D#Equal| a@@10 b@@7))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Subset| a@@11 b@@8) (forall ((o@@4 T@U) ) (!  (=> (|Set#IsMember| a@@11 o@@4) (|Set#IsMember| b@@8 o@@4))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@11 o@@4))
 :pattern ( (|Set#IsMember| b@@8 o@@4))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@11 b@@8))
)))
(assert (forall ((d T@U) ) (! (= (_module.D.Green_q d) (= (DatatypeCtorId d) |##_module.D.Green|))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( (_module.D.Green_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.D.Blue_q d@@0) (= (DatatypeCtorId d@@0) |##_module.D.Blue|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.D.Blue_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.D.Red_q d@@1) (= (DatatypeCtorId d@@1) |##_module.D.Red|))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.D.Red_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.D.Purple_q d@@2) (= (DatatypeCtorId d@@2) |##_module.D.Purple|))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( (_module.D.Purple_q d@@2))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Disjoint| a@@12 b@@9) (forall ((o@@5 T@U) ) (!  (or (not (|Set#IsMember| a@@12 o@@5)) (not (|Set#IsMember| b@@9 o@@5)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@12 o@@5))
 :pattern ( (|Set#IsMember| b@@9 o@@5))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@12 b@@9))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.D.Green_q d@@3) (= d@@3 |#_module.D.Green|))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.D.Green_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.D.Blue_q d@@4) (= d@@4 |#_module.D.Blue|))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (_module.D.Blue_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.D.Red_q d@@5) (= d@@5 |#_module.D.Red|))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.D.Red_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.D.Purple_q d@@6) (= d@@6 |#_module.D.Purple|))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( (_module.D.Purple_q d@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@1 T@U) ) (!  (=> ($HeapSuccGhost h@@1 k@@1) (and ($HeapSucc h@@1 k@@1) (forall ((o@@6 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@6) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@6) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@6) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@1 k@@1))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (o@@7 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@13 b@@10) o@@7)  (or (|Set#IsMember| a@@13 o@@7) (|Set#IsMember| b@@10 o@@7)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@13 b@@10) o@@7))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Set#Disjoint| a@@14 b@@11) (and (= (|Set#Difference| (|Set#Union| a@@14 b@@11) a@@14) b@@11) (= (|Set#Difference| (|Set#Union| a@@14 b@@11) b@@11) a@@14)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) (c T@U) ) (!  (=> (or (not (= a@@15 c)) (not true)) (=> (and ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c)) ($HeapSucc a@@15 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@16 b@@13)) (|Set#Card| (|Set#Difference| b@@13 a@@16))) (|Set#Card| (|Set#Intersection| a@@16 b@@13))) (|Set#Card| (|Set#Union| a@@16 b@@13))) (= (|Set#Card| (|Set#Difference| a@@16 b@@13)) (- (|Set#Card| a@@16) (|Set#Card| (|Set#Intersection| a@@16 b@@13)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@16 b@@13)))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (=> (and (_module.D.Green_q a@@17) (_module.D.Green_q b@@14)) (|_module.D#Equal| a@@17 b@@14))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (|_module.D#Equal| a@@17 b@@14) (_module.D.Green_q a@@17))
 :pattern ( (|_module.D#Equal| a@@17 b@@14) (_module.D.Green_q b@@14))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (_module.D.Blue_q a@@18) (_module.D.Blue_q b@@15)) (|_module.D#Equal| a@@18 b@@15))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( (|_module.D#Equal| a@@18 b@@15) (_module.D.Blue_q a@@18))
 :pattern ( (|_module.D#Equal| a@@18 b@@15) (_module.D.Blue_q b@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (and (_module.D.Red_q a@@19) (_module.D.Red_q b@@16)) (|_module.D#Equal| a@@19 b@@16))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (|_module.D#Equal| a@@19 b@@16) (_module.D.Red_q a@@19))
 :pattern ( (|_module.D#Equal| a@@19 b@@16) (_module.D.Red_q b@@16))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (and (_module.D.Purple_q a@@20) (_module.D.Purple_q b@@17)) (|_module.D#Equal| a@@20 b@@17))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (|_module.D#Equal| a@@20 b@@17) (_module.D.Purple_q a@@20))
 :pattern ( (|_module.D#Equal| a@@20 b@@17) (_module.D.Purple_q b@@17))
)))
(assert (forall ((x@@9 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@9))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (! (= (|Set#Union| a@@21 (|Set#Union| a@@21 b@@18)) (|Set#Union| a@@21 b@@18))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@21 (|Set#Union| a@@21 b@@18)))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (! (= (|Set#Intersection| a@@22 (|Set#Intersection| a@@22 b@@19)) (|Set#Intersection| a@@22 b@@19))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@22 (|Set#Intersection| a@@22 b@@19)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |715|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@23 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@23 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@23 x@@10)) (|Set#Card| a@@23)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@23 x@@10)))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass._module.D)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.D $h))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.D $h))
)))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= |#_module.D.Green| (Lit DatatypeTypeType |#_module.D.Green|)))
(assert (= |#_module.D.Blue| (Lit DatatypeTypeType |#_module.D.Blue|)))
(assert (= |#_module.D.Red| (Lit DatatypeTypeType |#_module.D.Red|)))
(assert (= |#_module.D.Purple| (Lit DatatypeTypeType |#_module.D.Purple|)))
(assert (forall ((d@@8 T@U) ) (!  (=> (|$IsA#_module.D| d@@8) (or (or (or (_module.D.Green_q d@@8) (_module.D.Blue_q d@@8)) (_module.D.Red_q d@@8)) (_module.D.Purple_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (|$IsA#_module.D| d@@8))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@12)) (Lit BoxType ($Box T@@3 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@12)))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.D) (or (or (or (_module.D.Green_q d@@9) (_module.D.Blue_q d@@9)) (_module.D.Red_q d@@9)) (_module.D.Purple_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( (_module.D.Purple_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.D))
 :pattern ( (_module.D.Red_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.D))
 :pattern ( (_module.D.Blue_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.D))
 :pattern ( (_module.D.Green_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.D))
)))
(assert (forall ((a@@24 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@24 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@24 x@@13)) (+ (|Set#Card| a@@24) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@24 x@@13)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |d#0| () T@U)
(declare-fun |$decr$loop#20@1| () Int)
(declare-fun |$w$loop#2@0| () Bool)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#20@0| () Int)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.PF1)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon38_Else_correct true))
(let ((anon38_Then_correct  (=> (and (= |d#0| |#_module.D.Green|) (= (ControlFlow 0 49) (- 0 48))) false)))
(let ((anon37_Else_correct  (=> (or (not (= |d#0| |#_module.D.Blue|)) (not true)) (and (=> (= (ControlFlow 0 51) 49) anon38_Then_correct) (=> (= (ControlFlow 0 51) 50) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (= |d#0| |#_module.D.Blue|) (= (ControlFlow 0 47) (- 0 46))) false)))
(let ((anon36_Else_correct  (=> (or (not (= |d#0| |#_module.D.Red|)) (not true)) (and (=> (= (ControlFlow 0 52) 47) anon37_Then_correct) (=> (= (ControlFlow 0 52) 51) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (= |d#0| |#_module.D.Red|) (= (ControlFlow 0 45) (- 0 44))) false)))
(let ((anon35_Else_correct  (=> (or (not (= |d#0| |#_module.D.Purple|)) (not true)) (and (=> (= (ControlFlow 0 53) 45) anon36_Then_correct) (=> (= (ControlFlow 0 53) 52) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (= |d#0| |#_module.D.Purple|) (= (ControlFlow 0 43) (- 0 42))) false)))
(let ((anon34_Then_correct  (=> (not (|_module.D#Equal| |d#0| |#_module.D.Green|)) (and (=> (= (ControlFlow 0 54) 43) anon35_Then_correct) (=> (= (ControlFlow 0 54) 53) anon35_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (= |$decr$loop#20@1| (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (<= 0 |$decr$loop#20@1|) (= (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) |$decr$loop#20@1|))) (=> (or (<= 0 |$decr$loop#20@1|) (= (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) |$decr$loop#20@1|)) (=> (= (ControlFlow 0 19) (- 0 18)) (< (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) |$decr$loop#20@1|)))))))))
(let ((anon50_Then_correct true))
(let ((anon49_Else_correct  (=> |$w$loop#2@0| (and (=> (= (ControlFlow 0 22) 17) anon50_Then_correct) (=> (= (ControlFlow 0 22) 19) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (not |$w$loop#2@0|) (=> (and (= |newtype$check#0@0| (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (= (ControlFlow 0 16) (- 0 15))) (<= (LitInt 0) |newtype$check#0@0|)))))
(let ((anon48_LoopBody_correct  (and (=> (= (ControlFlow 0 23) 16) anon49_Then_correct) (=> (= (ControlFlow 0 23) 22) anon49_Else_correct))))
(let ((anon48_LoopDone_correct true))
(let ((anon48_LoopHead_correct  (=> (and (and (and (and (not false) |$w$loop#0@0|) (= |$decr_init$loop#10@0| 1)) |$w$loop#1@0|) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ControlStructuresdfy.287:3|
 :skolemid |620|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSuccGhost $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |ControlStructuresdfy.287:3|
 :skolemid |621|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))))) |$decr_init$loop#20@0|)))) (and (=> (= (ControlFlow 0 24) 14) anon48_LoopDone_correct) (=> (= (ControlFlow 0 24) 23) anon48_LoopBody_correct)))))
(let ((anon47_Then_correct  (=> (|_module.D#Equal| |d#0| |#_module.D.Green|) (=> (and (= |$decr_init$loop#20@0| (|Set#Card| (|Set#Difference| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3))))))) (= (ControlFlow 0 25) 24)) anon48_LoopHead_correct))))
(let ((anon47_Else_correct  (=> (and (not (|_module.D#Equal| |d#0| |#_module.D.Green|)) (= |$decr$loop#10@1| (LitInt 1))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (<= 0 |$decr$loop#10@1|) (= (LitInt 1) |$decr$loop#10@1|))) (=> (or (<= 0 |$decr$loop#10@1|) (= (LitInt 1) |$decr$loop#10@1|)) (=> (= (ControlFlow 0 11) (- 0 10)) (< (LitInt 1) |$decr$loop#10@1|)))))))))
(let ((anon46_Else_correct  (=> (and |$w$loop#1@0| (|$IsA#_module.D| |d#0|)) (and (=> (= (ControlFlow 0 26) 25) anon47_Then_correct) (=> (= (ControlFlow 0 26) 11) anon47_Else_correct)))))
(let ((anon46_Then_correct true))
(let ((anon45_LoopBody_correct  (and (=> (= (ControlFlow 0 27) 9) anon46_Then_correct) (=> (= (ControlFlow 0 27) 26) anon46_Else_correct))))
(let ((anon45_LoopDone_correct true))
(let ((anon45_LoopHead_correct  (=> (and (and (and (not false) |$w$loop#0@0|) (= |$decr_init$loop#10@0| 1)) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |ControlStructuresdfy.282:3|
 :skolemid |618|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
)) ($HeapSuccGhost $Heap $Heap)) (and (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |ControlStructuresdfy.282:3|
 :skolemid |619|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
)) (<= (LitInt 1) |$decr_init$loop#10@0|)))) (and (=> (= (ControlFlow 0 28) 8) anon45_LoopDone_correct) (=> (= (ControlFlow 0 28) 27) anon45_LoopBody_correct)))))
(let ((anon44_Then_correct  (=> (|_module.D#Equal| |d#0| |#_module.D.Green|) (=> (and (= |$decr_init$loop#10@0| (LitInt 1)) (= (ControlFlow 0 29) 28)) anon45_LoopHead_correct))))
(let ((anon44_Else_correct  (=> (not (|_module.D#Equal| |d#0| |#_module.D.Green|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 6) (- 0 5)) false))))))
(let ((anon43_Else_correct  (=> (and |$w$loop#0@0| (|$IsA#_module.D| |d#0|)) (and (=> (= (ControlFlow 0 30) 29) anon44_Then_correct) (=> (= (ControlFlow 0 30) 6) anon44_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((anon42_LoopBody_correct  (and (=> (= (ControlFlow 0 31) 4) anon43_Then_correct) (=> (= (ControlFlow 0 31) 30) anon43_Else_correct))))
(let ((anon42_LoopDone_correct true))
(let ((anon16_correct  (=> (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |ControlStructuresdfy.279:3|
 :skolemid |616|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4))
)) (=> (and ($HeapSuccGhost $Heap $Heap) (forall (($o@@5 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@5 $f@@2))))
 :qid |ControlStructuresdfy.279:3|
 :skolemid |617|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2))
))) (and (=> (= (ControlFlow 0 32) 3) anon42_LoopDone_correct) (=> (= (ControlFlow 0 32) 31) anon42_LoopBody_correct))))))
(let ((anon41_Else_correct  (=> (and (not (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))))) (= (ControlFlow 0 35) 32)) anon16_correct)))
(let ((anon41_Then_correct  (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 33) 32) anon16_correct))))))
(let ((anon13_correct  (and (=> (= (ControlFlow 0 36) 33) anon41_Then_correct) (=> (= (ControlFlow 0 36) 35) anon41_Else_correct))))
(let ((anon40_Then_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (= (ControlFlow 0 39) 36) anon13_correct)))))
(let ((anon39_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U false))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 37) 36) anon13_correct))))))
(let ((anon40_Else_correct  (=> (and (and (not (U_2_bool (Lit boolType (bool_2_U false)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon34_Else_correct  (=> (|_module.D#Equal| |d#0| |#_module.D.Green|) (and (and (=> (= (ControlFlow 0 41) 37) anon39_Then_correct) (=> (= (ControlFlow 0 41) 39) anon40_Then_correct)) (=> (= (ControlFlow 0 41) 2) anon40_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.D| |d#0|)) (and (=> (= (ControlFlow 0 55) 54) anon34_Then_correct) (=> (= (ControlFlow 0 55) 41) anon34_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |d#0| Tclass._module.D) ($IsAlloc DatatypeTypeType |d#0| Tclass._module.D $Heap)) (|$IsA#_module.D| |d#0|)) (= 1 $FunctionContextHeight)) (and (|_module.D#Equal| |d#0| |#_module.D.Green|) (= (ControlFlow 0 56) 55))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
