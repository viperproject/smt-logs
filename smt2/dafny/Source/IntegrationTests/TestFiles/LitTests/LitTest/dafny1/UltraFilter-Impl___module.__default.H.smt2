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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o)  (and (|Set#IsMember| a@@3 o) (not (|Set#IsMember| b@@3 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@4 b@@4) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@0) (|Set#IsMember| b@@4 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@0))
 :pattern ( (|Set#IsMember| b@@4 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@5 b@@5) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@5 o@@1)) (not (|Set#IsMember| b@@5 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@5 o@@1))
 :pattern ( (|Set#IsMember| b@@5 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@5 b@@5))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) |$y#0|)) (exists ((|Y#0| T@U) (|X#2| T@U) ) (!  (and (and (and ($Is SetType |Y#0| |l#0|) ($Is SetType |X#2| |l#1|)) (and (and (|Set#IsMember| |l#2| ($Box SetType |Y#0|)) (|Set#Subset| |X#2| |Y#0|)) (|Set#Equal| (|Set#Union| |l#3| |X#2|) |Y#0|))) (= |$y#0| ($Box SetType |X#2|)))
 :qid |UltraFilterdfy.39:14|
 :skolemid |582|
 :pattern ( (|Set#Union| |l#4| |X#2|) (|Set#IsMember| |l#5| ($Box SetType |Y#0|)))
 :pattern ( (|Set#Subset| |X#2| |Y#0|))
)))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) |$y#0|))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@2)  (or (|Set#IsMember| a@@6 o@@2) (|Set#IsMember| b@@6 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@6 b@@6) o@@2))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@7 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@7 b@@7) a@@7) b@@7) (= (|Set#Difference| (|Set#Union| a@@7 b@@7) b@@7) a@@7)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@7 b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@8 b@@8))
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
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1))
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
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)) (|Set#Union| a@@9 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |653|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@10 o@@3) (|Set#IsMember| b@@10 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@3))
 :pattern ( (|Set#IsMember| b@@10 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |h#0@0| () T@U)
(declare-fun |X#0_0@0| () T@U)
(declare-fun |f#0| () T@U)
(declare-fun |M#0| () T@U)
(declare-fun |Y#0_0_1_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |Y#0_0_0_0@0| () T@U)
(declare-fun |Y#1@0| () T@U)
(declare-fun |X#3@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |S#0| () T@U)
(declare-fun |h#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.H)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon17_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (= (|Set#IsMember| |h#0@0| ($Box SetType |X#0_0@0|)) (exists ((|Y#0_0_0_1| T@U) ) (!  (and ($Is SetType |Y#0_0_0_1| (TSet Tclass._module.G)) (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_1|)) (|Set#Subset| |X#0_0@0| |Y#0_0_0_1|)) (|Set#Equal| (|Set#Union| |M#0| |X#0_0@0|) |Y#0_0_0_1|)))
 :qid |UltraFilterdfy.43:14|
 :skolemid |586|
 :pattern ( (|Set#Subset| |X#0_0@0| |Y#0_0_0_1|))
 :pattern ( (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_1|)))
))))))
(let ((anon36_Else_correct  (=> (and (not (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_1_0@0|)) (|Set#Subset| |X#0_0@0| |Y#0_0_1_0@0|))) (= (ControlFlow 0 20) 17)) anon17_correct)))
(let ((anon36_Then_correct  (=> (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_1_0@0|)) (|Set#Subset| |X#0_0@0| |Y#0_0_1_0@0|)) (= (ControlFlow 0 19) 17)) anon17_correct)))
(let ((anon35_Else_correct  (=> (not (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_1_0@0|))) (and (=> (= (ControlFlow 0 22) 19) anon36_Then_correct) (=> (= (ControlFlow 0 22) 20) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_1_0@0|)) (and (=> (= (ControlFlow 0 21) 19) anon36_Then_correct) (=> (= (ControlFlow 0 21) 20) anon36_Else_correct)))))
(let ((anon34_Then_correct  (=> (and ($Is SetType |Y#0_0_1_0@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#0_0_1_0@0| (TSet Tclass._module.G) $Heap)) (and (=> (= (ControlFlow 0 23) 21) anon35_Then_correct) (=> (= (ControlFlow 0 23) 22) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (not (and ($Is SetType |Y#0_0_1_0@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#0_0_1_0@0| (TSet Tclass._module.G) $Heap))) (= (ControlFlow 0 18) 17)) anon17_correct)))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 24) 23) anon34_Then_correct) (=> (= (ControlFlow 0 24) 18) anon34_Else_correct))))
(let ((anon23_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= (exists ((|Y#0_0_0_1@@0| T@U) ) (!  (and ($Is SetType |Y#0_0_0_1@@0| (TSet Tclass._module.G)) (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_1@@0|)) (|Set#Subset| |X#0_0@0| |Y#0_0_0_1@@0|)) (|Set#Equal| (|Set#Union| |M#0| |X#0_0@0|) |Y#0_0_0_1@@0|)))
 :qid |UltraFilterdfy.43:14|
 :skolemid |584|
 :pattern ( (|Set#Subset| |X#0_0@0| |Y#0_0_0_1@@0|))
 :pattern ( (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_1@@0|)))
)) (|Set#IsMember| |f#0| ($Box SetType (|Set#Union| |M#0| |X#0_0@0|)))))))
(let ((anon40_Else_correct  (=> (and (not (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_0@0|)) (|Set#Subset| |X#0_0@0| |Y#0_0_0_0@0|))) (= (ControlFlow 0 12) 9)) anon23_correct)))
(let ((anon40_Then_correct  (=> (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_0@0|)) (|Set#Subset| |X#0_0@0| |Y#0_0_0_0@0|)) (= (ControlFlow 0 11) 9)) anon23_correct)))
(let ((anon39_Else_correct  (=> (not (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_0@0|))) (and (=> (= (ControlFlow 0 14) 11) anon40_Then_correct) (=> (= (ControlFlow 0 14) 12) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (|Set#IsMember| |f#0| ($Box SetType |Y#0_0_0_0@0|)) (and (=> (= (ControlFlow 0 13) 11) anon40_Then_correct) (=> (= (ControlFlow 0 13) 12) anon40_Else_correct)))))
(let ((anon38_Then_correct  (=> (and ($Is SetType |Y#0_0_0_0@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#0_0_0_0@0| (TSet Tclass._module.G) $Heap)) (and (=> (= (ControlFlow 0 15) 13) anon39_Then_correct) (=> (= (ControlFlow 0 15) 14) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and ($Is SetType |Y#0_0_0_0@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#0_0_0_0@0| (TSet Tclass._module.G) $Heap))) (= (ControlFlow 0 10) 9)) anon23_correct)))
(let ((anon37_Else_correct  (=> (and (= (|Set#IsMember| |h#0@0| ($Box SetType |X#0_0@0|)) (|Set#IsMember| |f#0| ($Box SetType (|Set#Union| |M#0| |X#0_0@0|)))) (= (ControlFlow 0 7) (- 0 6))) (= (|Set#IsMember| |h#0@0| ($Box SetType |X#0_0@0|)) (|Set#IsMember| |f#0| ($Box SetType (|Set#Union| |M#0| |X#0_0@0|)))))))
(let ((anon32_Then_correct true))
(let ((anon31_Then_correct true))
(let ((anon30_Then_correct  (=> ($Is SetType |X#0_0@0| (TSet Tclass._module.G)) (and (and (and (and (and (=> (= (ControlFlow 0 25) 4) anon31_Then_correct) (=> (= (ControlFlow 0 25) 5) anon32_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon33_Then_correct)) (=> (= (ControlFlow 0 25) 7) anon37_Else_correct)) (=> (= (ControlFlow 0 25) 15) anon38_Then_correct)) (=> (= (ControlFlow 0 25) 10) anon38_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|X#1| T@U) ) (!  (=> ($Is SetType |X#1| (TSet Tclass._module.G)) (= (|Set#IsMember| |h#0@0| ($Box SetType |X#1|)) (|Set#IsMember| |f#0| ($Box SetType (|Set#Union| |M#0| |X#1|)))))
 :qid |UltraFilterdfy.37:18|
 :skolemid |581|
 :pattern ( (|Set#Union| |M#0| |X#1|))
 :pattern ( (|Set#IsMember| |h#0@0| ($Box SetType |X#1|)))
)))))
(let ((anon30_Else_correct  (=> (and (forall ((|X#0_1| T@U) ) (!  (=> (and ($Is SetType |X#0_1| (TSet Tclass._module.G)) (U_2_bool (Lit boolType (bool_2_U true)))) (= (|Set#IsMember| |h#0@0| ($Box SetType |X#0_1|)) (|Set#IsMember| |f#0| ($Box SetType (|Set#Union| |M#0| |X#0_1|)))))
 :qid |UltraFilterdfy.40:10|
 :skolemid |587|
 :pattern ( (|Set#Union| |M#0| |X#0_1|))
 :pattern ( (|Set#IsMember| |h#0@0| ($Box SetType |X#0_1|)))
)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon7_correct  (=> (= |h#0@0| (|Set#FromBoogieMap| (|lambda#2| (TSet Tclass._module.G) (TSet Tclass._module.G) |f#0| |M#0| |M#0| |f#0|))) (and (=> (= (ControlFlow 0 26) 25) anon30_Then_correct) (=> (= (ControlFlow 0 26) 3) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (not (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|)) (|Set#Subset| |X#3@0| |Y#1@0|)) (|Set#Equal| (|Set#Union| |M#0| |X#3@0|) |Y#1@0|))) (= (ControlFlow 0 29) 26)) anon7_correct)))
(let ((anon29_Then_correct  (=> (and (and (and (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|)) (|Set#Subset| |X#3@0| |Y#1@0|)) (|Set#Equal| (|Set#Union| |M#0| |X#3@0|) |Y#1@0|)) (= (ControlFlow 0 28) 26)) anon7_correct)))
(let ((anon28_Else_correct  (=> (not (and (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|)) (|Set#Subset| |X#3@0| |Y#1@0|))) (and (=> (= (ControlFlow 0 31) 28) anon29_Then_correct) (=> (= (ControlFlow 0 31) 29) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (and (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|)) (|Set#Subset| |X#3@0| |Y#1@0|)) (and (=> (= (ControlFlow 0 30) 28) anon29_Then_correct) (=> (= (ControlFlow 0 30) 29) anon29_Else_correct)))))
(let ((anon27_Else_correct  (=> (not (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|))) (and (=> (= (ControlFlow 0 33) 30) anon28_Then_correct) (=> (= (ControlFlow 0 33) 31) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (|Set#IsMember| |f#0| ($Box SetType |Y#1@0|)) (and (=> (= (ControlFlow 0 32) 30) anon28_Then_correct) (=> (= (ControlFlow 0 32) 31) anon28_Else_correct)))))
(let ((anon26_Then_correct  (=> (and (and ($Is SetType |Y#1@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#1@0| (TSet Tclass._module.G) $Heap)) (and ($Is SetType |X#3@0| (TSet Tclass._module.G)) ($IsAlloc SetType |X#3@0| (TSet Tclass._module.G) $Heap))) (and (=> (= (ControlFlow 0 34) 32) anon27_Then_correct) (=> (= (ControlFlow 0 34) 33) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and (and ($Is SetType |Y#1@0| (TSet Tclass._module.G)) ($IsAlloc SetType |Y#1@0| (TSet Tclass._module.G) $Heap)) (and ($Is SetType |X#3@0| (TSet Tclass._module.G)) ($IsAlloc SetType |X#3@0| (TSet Tclass._module.G) $Heap)))) (= (ControlFlow 0 27) 26)) anon7_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 35) 34) anon26_Then_correct) (=> (= (ControlFlow 0 35) 27) anon26_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |f#0| (TSet (TSet Tclass._module.G))) ($IsAlloc SetType |f#0| (TSet (TSet Tclass._module.G)) $Heap))) (=> (and (and (and ($Is SetType |S#0| (TSet Tclass._module.G)) ($IsAlloc SetType |S#0| (TSet Tclass._module.G) $Heap)) (and ($Is SetType |M#0| (TSet Tclass._module.G)) ($IsAlloc SetType |M#0| (TSet Tclass._module.G) $Heap))) (and (and ($Is SetType |h#0| (TSet (TSet Tclass._module.G))) ($IsAlloc SetType |h#0| (TSet (TSet Tclass._module.G)) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 36) 35)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
